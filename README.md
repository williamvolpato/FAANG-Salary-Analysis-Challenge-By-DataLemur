# FAANG Salary Analysis Challenge

## English Version

### Overview
This repository contains a SQL solution for a data analysis challenge focused on evaluating average salaries in different departments compared to the company's overall average salary for March 2024.

### Challenge Description
The goal is to determine whether the average salary in each department is **higher**, **lower**, or the **same** as the company's overall average salary for March 2024.

### Schema Information
- **employee table**:
  - `employee_id` (integer): Unique ID of the employee.
  - `name` (string): Employee's name.
  - `salary` (integer): Employee's salary.
  - `department_id` (integer): ID of the department where the employee works.
  - `manager_id` (integer): ID of the employee's manager.

- **salary table**:
  - `salary_id` (integer): Unique ID for each salary record.
  - `employee_id` (integer): Unique ID of the employee.
  - `amount` (integer): The salary amount paid.
  - `payment_date` (datetime): The date the salary was paid.

### Solution Summary
1. **Calculate department averages:**
   - Determine the average salary for each department.
2. **Calculate company average:**
   - Compute the company's overall average salary for March 2024.
3. **Comparison:**
   - Compare the department averages to the company's average and classify as 'higher', 'lower', or 'same'.


---

## Versão em Português

### Visão Geral
Este repositório contém uma solução em SQL para um desafio de análise de dados focado em avaliar os salários médios em diferentes departamentos em comparação com a média geral da empresa para março de 2024.

### Descrição do Desafio
O objetivo é determinar se o salário médio de cada departamento é **maior**, **menor** ou **igual** ao salário médio geral da empresa para março de 2024.

### Informações do Esquema
- **Tabela employee**:
  - `employee_id` (integer): ID único do funcionário.
  - `name` (string): Nome do funcionário.
  - `salary` (integer): Salário do funcionário.
  - `department_id` (integer): ID do departamento do funcionário.
  - `manager_id` (integer): ID do gerente do funcionário.

- **Tabela salary**:
  - `salary_id` (integer): ID único para cada registro de salário.
  - `employee_id` (integer): ID único do funcionário.
  - `amount` (integer): Valor do salário pago.
  - `payment_date` (datetime): Data em que o salário foi pago.

### Resumo da Solução
1. **Calcular médias por departamento:**
   - Determinar a média salarial de cada departamento.
2. **Calcular média da empresa:**
   - Calcular a média geral da empresa para março de 2024.
3. **Comparação:**
   - Comparar as médias dos departamentos com a média da empresa e classificá-las como 'maior', 'menor' ou 'igual'.

