% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renal_function.R
\name{estimate_gfr_ckdepi}
\alias{estimate_gfr_ckdepi}
\title{Estimate creatinine clearance and glomerular filtration rate using the
CKD-EPI formula}
\usage{
estimate_gfr_ckdepi(creatinine, age, is_female, is_african_american)
}
\arguments{
\item{creatinine}{Creatinine (\eqn{\text{μmol} \text{l}^{-1}}).}

\item{age}{Age (years).}

\item{is_female}{\code{TRUE} if patient is female, \code{FALSE} if patient is
male.}

\item{is_african_american}{\code{TRUE} if patient is African-American,
\code{FALSE} if patient is not.}
}
\value{
eGFR (\eqn{\text{ml} \text{min}^{-1} 1.73 \text{m}^{-2}}), or \code{NA} if any parameters are \code{NA}.
}
\description{
The CKD-EPI formula is calculated in two stages. First, \eqn{Z =
\frac{\text{creatinine}}{\kappa}}, where \eqn{\kappa} is 61.9 for females and 79.6 for males.
Then, if \eqn{Z < 1}, use \eqn{141 \times Z^(\alpha) \times 1^{-1.209} \times
0.993^{\text{age}} \times S \times A}, where \eqn{\alpha} is -0.329 in females and -0.411 in
males, \eqn{S} is 1.018 in females and 1 in males, and \eqn{A} is 1.159 for
African-Americans and 1 for non-African-Americans. However, if \eqn{Z > 1},
use \eqn{141 \times 1^{\alpha} \times Z^{-1.209} \times 0.993^{\text{age}} \times S
\times A}, where \eqn{\alpha} is -0.329 in females and -0.411 in males, \eqn{S} is 1.018
in females and 1 in males, and \eqn{A} is 1.159 for African-Americans and 1 for
non-African-Americans.
}
\section{Caveats}{
 This is the formula for when cystatine C values are
unavailable. The factor 'African-American' was published as black/non-black.
I do not know if this is an acceptable/usable generalisation for all
people with a black skin tone (or for people of other non-Caucasian,
non-African-American descent for that matter).
}

\references{
\href{https://doi.org/10.7326/0003-4819-150-9-200905050-00006}{Levey, A. S. et al. A New Equation to Estimate Glomerular Filtration Rate. Ann Intern Med 150, 604 (2009).}
}
\seealso{
\code{\link[units:set_units]{units::set_units()}}, \code{\link[units:drop_units]{units::drop_units()}}
}
