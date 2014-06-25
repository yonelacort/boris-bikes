Boris Bikes
===========

### Makers Academy - Week 3

This task was set by Enrique Comba Riepenhausen
[@ecomba](http://twitter.com/ecomba) whilst learning to code at
[Makers Academy](http://www.makersacademy.com). The purpose was to build
an object oriented model based on the Travel for London Cycle Hire scheme.

We started by writing CRC cards (Class, Responsibilities, Collaborators) with pen and paper. Then we used RSpec to develop our model using TDD.

#### Class Bike

| Responsibilities                 | Collaborators |
| :-------------------             | :------------ |
| is not broken on initialization  | Person        |
| can break                        | Van           |
| can be fixed                     | Station       |
|                                  | Garage        |

#### Class Person

| Responsibilities                   | Collaborators |
| :--------------------------------- | :------------ |
| has  a name                        | Station       |
| rent a Bike from a Station         | Bike          |
| return a Bike to a Station         |               |
| break a Bike                       |               |

#### Class DockingStation

| Responsibilities                                 | Collaborators |
| :----------------------------------------------- | :------------ |
| can accept bikes                                 | Person        |
| can dock a broken bike                           | Van           |
| has a capacity of 20 bikes                       | Garage        |
| will sort through the bikes to ensure a working  |               |
| bike is loaned instead of a broken bike          |               |
| knows how many bikes are docked                  |               |
| can dock a broken bike                           |               |
| allow the Van to collect broken Bikes            |               |

#### Class Garage

| Responsibilities                                 | Collaborators |
| :----------------------------------------------- | :------------ |
| receive reports of broken Bikes from Stations    | Van           |
| order the Van to collect broken Bikes            | Station       |
| receive broken Bikes from the Van                | Bike          |
| fix broken Bikes                                 |               |
| have a stock of Bikes                            |               |
| put working Bikes on the Van                     |               |
| send the Van out to Stations with working Bikes  |               |

#### Class TransitVan

| Responsibilities                                     | Collaborators  |
| :--------------------------------------------------- | :------------  |
| has 20 bikes after docking 20 single bikes           | Garage         |
| has 1 bike after docking 1 single bike               | DockingStation |
| has bikes after docking array                        | Bike           |

![Boris Bikes](/images/logo.jpg)

How to use
---------------

```
clone git@github.com:apostoiis/boris-bikes.git
cd boris-bikes
rspec
```
