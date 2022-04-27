const rootRoute = "/";

const OverViewPageDisplayname = "OverView";
const overViewPageRoute = "/overview";

const DriversPageDisplayname = "Drivers";
const driversPageRoute = "/drivers";

const ClientsPageDisplayname = "Clients";
const clientsPageRoute = "/clients";

const AuthenticationDisplayname = "Log Out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String? name;
  final String? route;
  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayname, overViewPageRoute),
  MenuItem(DriversPageDisplayname, driversPageRoute),
  MenuItem(ClientsPageDisplayname, clientsPageRoute),
  MenuItem(AuthenticationDisplayname, authenticationPageRoute),
];
