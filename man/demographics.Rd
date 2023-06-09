% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rdf.R
\docType{data}
\name{demographics}
\alias{demographics}
\title{Demographics}
\format{
A tibble.
\describe{
\item{year}{The year (e.g. 2020).}
\item{coo_name}{Country of origin name.}
\item{coo}{Country of origin UNHCR code.}
\item{coo_iso}{Country of origin ISO code.}
\item{coa_name}{Country of asylum name.}
\item{coa}{Country of asylum UNHCR code.}
\item{coa_iso}{Country of asylum ISO code.}
\item{f_0_4}{The number of female children aged 0 to 4 inclusive.}
\item{f_5_11}{The number of female children aged 5 to 11 inclusive.}
\item{f_12_17}{The number of female children aged 12 to 17 inclusive.}
\item{f_18_59}{The number of female adults aged 18 to 59 inclusive.}
\item{f_60}{The number of female adults aged 60 or more.}
\item{f_other}{The number of females for whom age disaggregation is unavailable.}
\item{f_total}{The total number of females (where disaggregation by sex is available).}
\item{m_0_4}{The number of male children aged 0 to 4 inclusive.}
\item{m_5_11}{The number of male children aged 5 to 11 inclusive.}
\item{m_12_17}{The number of male children aged 12 to 17 inclusive.}
\item{m_18_59}{The number of male adults aged 18 to 59 inclusive.}
\item{m_60}{The number of male adults aged 60 or more.}
\item{m_other}{The number of males for whom age disaggregation is unavailable.}
\item{m_total}{The total number of males (where disaggregation by sex is available).}
\item{total}{The total number of persons.}
}
}
\source{
\href{https://www.unhcr.org/refugee-statistics/}{UNHCR Refugee Data Finder}.
}
\usage{
demographics
}
\description{
Demographic and sub-national data, where such disaggregation is available.
UNHCR collects this information for all population types, as well as two durable solutions (returned IDPs and refugees).
Demographics are also available for IDMC and UNRWA datasets.
}
\details{
See the notes on the data structure in the
\href{https://www.unhcr.org/refugee-statistics/methodology/}{methodology pages} for more details.
}
\examples{
demographics
}
\keyword{datasets}
