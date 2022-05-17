SELECT * 
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 3,4

--SELECT *
--FROM PortfolioProject..CovidVaccinations
--ORDER BY 3,4

-- Select Data that we are going to be using

SELECT LOCATION, DATE,total_cases, new_cases, total_deaths, POPULATION
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 1,2

-- Looking at Total Cases vs Total Deaths
-- Shows Likelihood of dying if contracting COVID-19 in Canada
SELECT LOCATION, DATE,total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
WHERE LOCATION like '%Canada%'
AND continent IS NOT NULL
ORDER BY 1,2

-- Looking at Total Cases vs Population
-- Shows what Percentage of the Canadian population got COVID

SELECT LOCATION, DATE, POPULATION, total_cases,  (total_cases/POPULATION)*100 as PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
WHERE LOCATION like '%Canada%'
ORDER BY 1,2

-- Looking at Countries with Highest Infectioon Rate compared to Population

SELECT LOCATION, POPULATION, MAX(total_cases) AS HighestInfectionCount,  MAX((total_cases/POPULATION))*100 as PercentPopulationInfected
FROM PortfolioProject..CovidDeaths
GROUP BY LOCATION, POPULATION
ORDER BY PercentPopulationInfected DESC

-- Canada is Rank 109 in the Data at 9.90596726434675 or %9.91 infection rate

-- Showing Countries with Highest Death Count per Population



SELECT LOCATION, MAX(CAST(Total_deaths AS INT)) AS TotalDeathCount
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
GROUP BY LOCATION
ORDER BY TotalDeathCount DESC

-- In this query I filtered out empty continents datapoints.
-- Reduces redundancy for having continent and location being the same as well
-- For total deaths, Canada is in 26th place at 39.338

-- LET'S BREAK THINGS DOWN BY CONTINENT


-- Showing continents with the highest death count per population

SELECT continent, MAX(CAST(Total_deaths AS INT)) AS TotalDeathCount
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
GROUP BY continent
ORDER BY TotalDeathCount DESC

-- Global Numbers

SELECT DATE, SUM(new_cases) AS total_cases, SUM(CAST(new_deaths AS INT)) AS total_deat, SUM(CAST(new_deaths AS INT))/SUM(new_cases)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
GROUP BY DATE
ORDER BY 1,2


-- Global Death percentage

SELECT SUM(new_cases) AS total_cases, SUM(CAST(new_deaths AS INT)) AS total_deat, SUM(CAST(new_deaths AS INT))/SUM(new_cases)*100 AS DeathPercentage
FROM PortfolioProject..CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 1,2

--Joining Covid deaths and Covid Vaccination tables by location

SELECT dea.continent, dea.location, dea.date, dea.population
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
	WHERE dea.continent IS NOT NULL
ORDER BY 1,2,3

	

