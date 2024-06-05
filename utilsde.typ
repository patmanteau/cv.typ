// Helper Functions
#let monthname(n, display: "short") = {
    n = int(n)
    let month = ""

    if n == 1 { month = "Januar" }
    else if n == 3 { month = "März" }
    else if n == 2 { month = "Februar" }
    else if n == 4 { month = "April" }
    else if n == 5 { month = "Mai" }
    else if n == 6 { month = "Juni" }
    else if n == 7 { month = "Juli" }
    else if n == 8 { month = "August" }
    else if n == 9 { month = "September" }
    else if n == 10 { month = "Oktober" }
    else if n == 11 { month = "November" }
    else if n == 12 { month = "Dezember" }
    else { result = none }
    if month != none {
        if display == "short" {
            month = month.slice(0, 3)
        } else {
            month
        }
    }
    month
}

#let strpdate(isodate) = {
    let date = ""
    if lower(isodate) != "present" {
        date = datetime(
            year: int(isodate.slice(0, 4)),
            month: int(isodate.slice(5, 7)),
            day: int(isodate.slice(8, 10))
        )
        date = date.display("[month repr:short]") + " " + date.display("[year repr:full]")
    } else if lower(isodate) == "present" {
        date = "heute"
    }
    return date
}
