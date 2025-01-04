# FAANG Salary Analysis Challenge - Problem Statement and Solution Explanation

## English Version

### Problem Statement
A FAANG company wants to analyze employee salaries to determine whether the average salary in each department is higher, lower, or the same as the company's overall average salary for March 2024. The results should include the department ID, the payment month (in MM-YYYY format), and the comparison result.

### SQL Solution Explanation
1. **Calculate Department Average Salaries:**
   - We use a Common Table Expression (CTE) to compute the average salary for each department, filtering for salaries paid in March 2024.

2. **Calculate Overall Company Average Salary:**
   - Another CTE calculates the company's average salary for the same period.

3. **Comparison Logic:**
   - We join the results of both CTEs and use a `CASE` statement to classify each department's average salary as 'higher', 'lower', or 'same' compared to the company's average salary.

4. **Output Format:**
   - The output includes the department ID, the payment month ('03-2024'), and the classification result.

### Example Input and Output
**Input:**
Employee Table:
| employee_id | name             | salary | department_id | manager_id |
|-------------|------------------|--------|---------------|------------|
| 1           | Emma Thompson    | 3800   | 1             | 6          |
| 2           | Daniel Rodriguez | 2230   | 1             | 7          |

Salary Table:
| salary_id | employee_id | amount | payment_date          |
|-----------|-------------|--------|-----------------------|
| 1         | 1           | 3800   | 2024-03-01 00:00:00   |
| 2         | 2           | 2230   | 2024-03-01 00:00:00   |

**Output:**
| department_id | payment_date | comparison |
|---------------|--------------|------------|
| 1             | 03-2024      | lower      |

---

## Versão em Português

### Descrição do Problema
Uma empresa FAANG deseja analisar os salários dos funcionários para determinar se a média salarial de cada departamento é maior, menor ou igual à média salarial geral da empresa em março de 2024. Os resultados devem incluir o ID do departamento, o mês de pagamento (no formato MM-AAAA) e o resultado da comparação.

### Explicação da Solução SQL
1. **Cálculo das Médias Salariais por Departamento:**
   - Utilizamos uma CTE (Expressão de Tabela Comum) para calcular a média salarial de cada departamento, filtrando para os salários pagos em março de 2024.

2. **Cálculo da Média Salarial Geral da Empresa:**
   - Outra CTE calcula a média salarial geral para o mesmo período.

3. **Lógica de Comparação:**
   - Unimos os resultados das CTEs e utilizamos uma cláusula `CASE` para classificar a média salarial de cada departamento como 'maior', 'menor' ou 'igual' em relação à média geral da empresa.

4. **Formato de Saída:**
   - A saída inclui o ID do departamento, o mês de pagamento ('03-2024') e o resultado da classificação.

### Exemplo de Entrada e Saída
**Entrada:**
Tabela de Funcionários:
| employee_id | nome              | salario | department_id | manager_id |
|-------------|-------------------|---------|---------------|------------|
| 1           | Emma Thompson     | 3800    | 1             | 6          |
| 2           | Daniel Rodriguez  | 2230    | 1             | 7          |

Tabela de Salários:
| salary_id | employee_id | amount | payment_date          |
|-----------|-------------|--------|-----------------------|
| 1         | 1           | 3800   | 2024-03-01 00:00:00   |
| 2         | 2           | 2230   | 2024-03-01 00:00:00   |

**Saída:**
| department_id | payment_date | comparison |
|---------------|--------------|------------|
| 1             | 03-2024      | menor      |

