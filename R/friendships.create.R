


##' Follow a user.
##' 
##' @title Follow a user.
##' @param roauth A OAuth object created by \code{\link{createOAuth}}.
##' @param uid User ID to be followed.
##' @param screen_name User nickname to be followed.
##' @param ... Other request parameters for this API.
##' @export
##' @note You must provide a parameter either uid or screen_name.
##' @return 
##'  A list of user, which contains: 
##'  \item{id}{User ID}
##'  \item{screen_name}{User nickname}
##'  \item{name}{Friendly displayed name}
##'  \item{province}{Province ID user located}
##'  \item{city}{City ID user located}
##'  \item{location}{Address user located}
##'  \item{description}{User description}
##'  \item{url}{Url of the user's blog}
##'  \item{profile_image_url}{Profile image}
##'  \item{domain}{The user's personalized weibo url}
##'  \item{gender}{Gender, m : male; f : female; n : unknown}
##'  \item{followers_count}{Followers count}
##'  \item{friends_count}{Friends count}
##'  \item{statuses_count}{Weibo count}
##'  \item{favourites_count}{Favorites count}
##'  \item{created_at}{Created time}
##'  \item{following}{Whether the current user is following the user}
##'  \item{allow_all_act_msg}{Whether all the people can send direct message to the user}
##'  \item{geo_enabled}{Whether can have the geography information}
##'  \item{verified}{Whether the user is verified by his real identity, marked with "V"}
##'  \item{allow_all_comment}{Whether all the people can comment the user's weibo}
##'  \item{avatar_large}{Profile large image}
##'  \item{verified_reason}{verification reason}
##'  \item{follow_me}{Whether the user is following the current user}
##'  \item{online_status}{Whether the user is online, 0 : offline, 1 : online}
##'  \item{bi_followers_count}{The count of the users that are following the user and are being followed by the user}
##'  \item{status}{The latest weibo of the user}
##'  
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @references \url{http://open.weibo.com/wiki/2/friendships/create}
##' @keywords Friendships
##' @examples \dontrun{
##' 
##' friendships.create(roauth, screen_name = "lijian001")
##' }

friendships.create <- function(roauth, uid, screen_name, ...) {
	requestURL <- "https://api.weibo.com/2/friendships/create.json"
	funCall <- match.call()
	params <- as.list(funCall)
	params[[1]] <- NULL
	params[["roauth"]] <- NULL
	
	returnthis <- .post(requestURL, roauth$oauthToken, params=params)
	roauth$oauthLimits$RemainingHits[6] = roauth$oauthLimits$RemainingHits[6] - 1
	roauth$oauthLimits$RemainingHits[7] = roauth$oauthLimits$RemainingHits[7] - 1
	roauth$oauthLimits$RemainingHits[4] = roauth$oauthLimits$RemainingHits[4] - 1
	roauth$oauthLimits$RemainingHits[5] = roauth$oauthLimits$RemainingHits[5] - 1
	return(returnthis)
}

