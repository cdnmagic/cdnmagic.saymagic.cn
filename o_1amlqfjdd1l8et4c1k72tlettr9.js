angular.module("fvotes",["fvoteServices"]).config(["$routeProvider",function($routeProvider){$routeProvider.when("/fvotes",{templateUrl:"snippet/all.html",controller:FVoteListCtrl}).when("/fvote/:fvoteId",{templateUrl:"snippet/detail.html",controller:FVoteItemCtrl}).when("/new",{templateUrl:"snippet/create.html",controller:FVoteNewCtrl}).otherwise({redirectTo:"/fvotes"})}]);
