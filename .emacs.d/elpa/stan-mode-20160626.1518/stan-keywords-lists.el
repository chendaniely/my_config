;;; stan-keywords-lists.el -- variables used by `stan-mode'

;;; Commentary:

;; DO NOT EDIT! file auto generated by create_stan_keywords_lists.py

;;; Code:

(defconst stan-language-version "2.10.0"
  "Stan modeling language version supported by `stan-mode'.")

(defvar stan-types-list
  '(
    "cholesky_factor_corr"
    "cholesky_factor_cov"
    "corr_matrix"
    "cov_matrix"
    "int"
    "matrix"
    "ordered"
    "positive_ordered"
    "real"
    "row_vector"
    "simplex"
    "unit_vector"
    "vector"
    )
  "List of data types in Stan.

   This includes both variable declariations and function return types.")

(defvar stan-function-return-types-list
  '(
    "int"
    "matrix"
    "real"
    "row_vector"
    "vector"
    "void"
    )
  "List of return types of Stan functions.")

(defvar stan-blocks-list
  '(
    "data"
    "functions"
    "generated quantities"
    "model"
    "parameters"
    "transformed data"
    "transformed parameters"
    )
  "List of the names of blocks in Stan.")

(defvar stan-range-constraints-list
  '(
    "lower"
    "upper"
    )
  "List of range constraint keywords in Stan.")

(defvar stan-keywords-list
  '(
    "else"
    "for"
    "if"
    "in"
    "increment_log_prob"
    "integrate_ode"
    "integrate_ode_bdf"
    "integrate_ode_rk45"
    "log_prob"
    "print"
    "reject"
    "return"
    "target"
    "while"
    )
  "List of keywords in Stan.")

(defvar stan-functions-list
  '(
    "Phi"
    "Phi_approx"
    "abs"
    "acos"
    "acosh"
    "append_col"
    "append_row"
    "asin"
    "asinh"
    "atan"
    "atan2"
    "atanh"
    "bernoulli_cdf"
    "bernoulli_cdf_log"
    "bernoulli_lccdf"
    "bernoulli_lcdf"
    "bernoulli_logit_lpmf"
    "bernoulli_lpmf"
    "bernoulli_rng"
    "bessel_first_kind"
    "bessel_second_kind"
    "beta_binomial_cdf"
    "beta_binomial_cdf_log"
    "beta_binomial_lccdf"
    "beta_binomial_lcdf"
    "beta_binomial_lpmf"
    "beta_binomial_rng"
    "beta_cdf"
    "beta_cdf_log"
    "beta_lccdf"
    "beta_lcdf"
    "beta_lpdf"
    "beta_rng"
    "binary_log_loss"
    "binomial_cdf"
    "binomial_cdf_log"
    "binomial_coefficient_log"
    "binomial_lccdf"
    "binomial_lcdf"
    "binomial_logit_lpmf"
    "binomial_lpmf"
    "binomial_rng"
    "block"
    "categorical_logit_lpmf"
    "categorical_lpmf"
    "categorical_rng"
    "cauchy_cdf"
    "cauchy_cdf_log"
    "cauchy_lccdf"
    "cauchy_lcdf"
    "cauchy_lpdf"
    "cauchy_rng"
    "cbrt"
    "ceil"
    "chi_square_cdf"
    "chi_square_cdf_log"
    "chi_square_lccdf"
    "chi_square_lcdf"
    "chi_square_lpdf"
    "chi_square_rng"
    "cholesky_decompose"
    "col"
    "cols"
    "columns_dot_product"
    "columns_dot_self"
    "cos"
    "cosh"
    "crossprod"
    "csr_extract_u"
    "csr_extract_v"
    "csr_extract_w"
    "csr_matrix_times_vector"
    "csr_to_dense_matrix"
    "cumulative_sum"
    "determinant"
    "diag_matrix"
    "diag_post_multiply"
    "diag_pre_multiply"
    "diagonal"
    "digamma"
    "dims"
    "dirichlet_lpdf"
    "dirichlet_rng"
    "distance"
    "dot_product"
    "dot_self"
    "double_exponential_cdf"
    "double_exponential_cdf_log"
    "double_exponential_lccdf"
    "double_exponential_lcdf"
    "double_exponential_lpdf"
    "double_exponential_rng"
    "e"
    "eigenvalues_sym"
    "eigenvectors_sym"
    "erf"
    "erfc"
    "exp"
    "exp2"
    "exp_mod_normal_cdf"
    "exp_mod_normal_cdf_log"
    "exp_mod_normal_lccdf"
    "exp_mod_normal_lcdf"
    "exp_mod_normal_lpdf"
    "exp_mod_normal_rng"
    "expm1"
    "exponential_cdf"
    "exponential_cdf_log"
    "exponential_lccdf"
    "exponential_lcdf"
    "exponential_lpdf"
    "exponential_rng"
    "fabs"
    "falling_factorial"
    "fdim"
    "floor"
    "fma"
    "fmax"
    "fmin"
    "fmod"
    "frechet_cdf"
    "frechet_cdf_log"
    "frechet_lccdf"
    "frechet_lcdf"
    "frechet_lpdf"
    "frechet_rng"
    "gamma_cdf"
    "gamma_cdf_log"
    "gamma_lccdf"
    "gamma_lcdf"
    "gamma_lpdf"
    "gamma_p"
    "gamma_q"
    "gamma_rng"
    "gaussian_dlm_obs_lpdf"
    "get_lp"
    "gumbel_cdf"
    "gumbel_cdf_log"
    "gumbel_lccdf"
    "gumbel_lcdf"
    "gumbel_lpdf"
    "gumbel_rng"
    "head"
    "hypergeometric_lpmf"
    "hypergeometric_rng"
    "hypot"
    "if_else"
    "inc_beta"
    "int_step"
    "inv"
    "inv_chi_square_cdf"
    "inv_chi_square_cdf_log"
    "inv_chi_square_lccdf"
    "inv_chi_square_lcdf"
    "inv_chi_square_lpdf"
    "inv_chi_square_rng"
    "inv_cloglog"
    "inv_gamma_cdf"
    "inv_gamma_cdf_log"
    "inv_gamma_lccdf"
    "inv_gamma_lcdf"
    "inv_gamma_lpdf"
    "inv_gamma_rng"
    "inv_logit"
    "inv_phi"
    "inv_sqrt"
    "inv_square"
    "inv_wishart_lpdf"
    "inv_wishart_rng"
    "inverse"
    "inverse_spd"
    "is_inf"
    "is_nan"
    "lbeta"
    "lchoose"
    "lgamma"
    "lkj_corr_cholesky_lpdf"
    "lkj_corr_cholesky_rng"
    "lkj_corr_lpdf"
    "lkj_corr_rng"
    "lmgamma"
    "lmultiply"
    "log"
    "log10"
    "log1m"
    "log1m_exp"
    "log1m_inv_logit"
    "log1p"
    "log1p_exp"
    "log2"
    "log_determinant"
    "log_diff_exp"
    "log_falling_factorial"
    "log_inv_logit"
    "log_mix"
    "log_rising_factorial"
    "log_softmax"
    "log_sum_exp"
    "logistic_cdf"
    "logistic_cdf_log"
    "logistic_lccdf"
    "logistic_lcdf"
    "logistic_lpdf"
    "logistic_rng"
    "logit"
    "lognormal_cdf"
    "lognormal_cdf_log"
    "lognormal_lccdf"
    "lognormal_lcdf"
    "lognormal_lpdf"
    "lognormal_rng"
    "machine_precision"
    "max"
    "mdivide_left_tri_low"
    "mdivide_right_tri_low"
    "mean"
    "min"
    "modified_bessel_first_kind"
    "modified_bessel_second_kind"
    "multi_gp_cholesky_lpdf"
    "multi_gp_lpdf"
    "multi_normal_cholesky_lpdf"
    "multi_normal_cholesky_rng"
    "multi_normal_lpdf"
    "multi_normal_prec_lpdf"
    "multi_normal_rng"
    "multi_student_t_lpdf"
    "multi_student_t_rng"
    "multinomial_lpmf"
    "multinomial_rng"
    "multiply_log"
    "multiply_lower_tri_self_transpose"
    "neg_binomial_2_cdf"
    "neg_binomial_2_cdf_log"
    "neg_binomial_2_lccdf"
    "neg_binomial_2_lcdf"
    "neg_binomial_2_log_lpmf"
    "neg_binomial_2_log_rng"
    "neg_binomial_2_lpmf"
    "neg_binomial_2_rng"
    "neg_binomial_cdf"
    "neg_binomial_cdf_log"
    "neg_binomial_lccdf"
    "neg_binomial_lcdf"
    "neg_binomial_lpmf"
    "neg_binomial_rng"
    "negative_infinity"
    "normal_cdf"
    "normal_cdf_log"
    "normal_lccdf"
    "normal_lcdf"
    "normal_lpdf"
    "normal_rng"
    "not_a_number"
    "num_elements"
    "ordered_logistic_lpmf"
    "ordered_logistic_rng"
    "owens_t"
    "pareto_cdf"
    "pareto_cdf_log"
    "pareto_lccdf"
    "pareto_lcdf"
    "pareto_lpdf"
    "pareto_rng"
    "pareto_type_2_cdf"
    "pareto_type_2_cdf_log"
    "pareto_type_2_lccdf"
    "pareto_type_2_lcdf"
    "pareto_type_2_lpdf"
    "pareto_type_2_rng"
    "pi"
    "poisson_cdf"
    "poisson_cdf_log"
    "poisson_lccdf"
    "poisson_lcdf"
    "poisson_log_lpmf"
    "poisson_log_rng"
    "poisson_lpmf"
    "poisson_rng"
    "positive_infinity"
    "pow"
    "prod"
    "qr_Q"
    "qr_R"
    "quad_form"
    "quad_form_diag"
    "quad_form_sym"
    "rank"
    "rayleigh_cdf"
    "rayleigh_cdf_log"
    "rayleigh_lccdf"
    "rayleigh_lcdf"
    "rayleigh_lpdf"
    "rayleigh_rng"
    "rep_array"
    "rep_matrix"
    "rep_row_vector"
    "rep_vector"
    "rising_factorial"
    "round"
    "row"
    "rows"
    "rows_dot_product"
    "rows_dot_self"
    "scaled_inv_chi_square_cdf"
    "scaled_inv_chi_square_cdf_log"
    "scaled_inv_chi_square_lccdf"
    "scaled_inv_chi_square_lcdf"
    "scaled_inv_chi_square_lpdf"
    "scaled_inv_chi_square_rng"
    "sd"
    "segment"
    "sin"
    "singular_values"
    "sinh"
    "size"
    "skew_normal_cdf"
    "skew_normal_cdf_log"
    "skew_normal_lccdf"
    "skew_normal_lcdf"
    "skew_normal_lpdf"
    "skew_normal_rng"
    "softmax"
    "sort_asc"
    "sort_desc"
    "sort_indices_asc"
    "sort_indices_desc"
    "sqrt"
    "sqrt2"
    "square"
    "squared_distance"
    "step"
    "student_t_cdf"
    "student_t_cdf_log"
    "student_t_lccdf"
    "student_t_lcdf"
    "student_t_lpdf"
    "student_t_rng"
    "sub_col"
    "sub_row"
    "sum"
    "tail"
    "tan"
    "tanh"
    "tcrossprod"
    "tgamma"
    "to_array_1d"
    "to_array_2d"
    "to_matrix"
    "to_row_vector"
    "to_vector"
    "trace"
    "trace_gen_quad_form"
    "trace_quad_form"
    "trigamma"
    "trunc"
    "uniform_cdf"
    "uniform_cdf_log"
    "uniform_lccdf"
    "uniform_lcdf"
    "uniform_lpdf"
    "uniform_rng"
    "variance"
    "von_mises_lpdf"
    "von_mises_rng"
    "weibull_cdf"
    "weibull_cdf_log"
    "weibull_lccdf"
    "weibull_lcdf"
    "weibull_lpdf"
    "weibull_rng"
    "wiener_lpdf"
    "wishart_lpdf"
    "wishart_rng"
    )
  "List of functions in Stan.")

(defvar stan-distribution-list
  '(
    "bernoulli_logit_lpmf"
    "bernoulli_lpmf"
    "beta_binomial_lpmf"
    "beta_lpdf"
    "binomial_logit_lpmf"
    "binomial_lpmf"
    "categorical_logit_lpmf"
    "categorical_lpmf"
    "cauchy_lpdf"
    "chi_square_lpdf"
    "dirichlet_lpdf"
    "double_exponential_lpdf"
    "exp_mod_normal_lpdf"
    "exponential_lpdf"
    "frechet_lpdf"
    "gamma_lpdf"
    "gaussian_dlm_obs_lpdf"
    "gumbel_lpdf"
    "hypergeometric_lpmf"
    "inv_chi_square_lpdf"
    "inv_gamma_lpdf"
    "inv_wishart_lpdf"
    "lkj_corr_cholesky_lpdf"
    "lkj_corr_lpdf"
    "logistic_lpdf"
    "lognormal_lpdf"
    "multi_gp_cholesky_lpdf"
    "multi_gp_lpdf"
    "multi_normal_cholesky_lpdf"
    "multi_normal_lpdf"
    "multi_normal_prec_lpdf"
    "multi_student_t_lpdf"
    "multinomial_lpmf"
    "neg_binomial_2_log_lpmf"
    "neg_binomial_2_lpmf"
    "neg_binomial_lpmf"
    "normal_lpdf"
    "ordered_logistic_lpmf"
    "pareto_lpdf"
    "pareto_type_2_lpdf"
    "poisson_log_lpmf"
    "poisson_lpmf"
    "rayleigh_lpdf"
    "scaled_inv_chi_square_lpdf"
    "skew_normal_lpdf"
    "student_t_lpdf"
    "uniform_lpdf"
    "von_mises_lpdf"
    "weibull_lpdf"
    "wiener_lpdf"
    "wishart_lpdf"
    )
  "List of distributions in Stan.")

(defvar stan-reserved-list
  '(
    "STAN_MAJOR"
    "STAN_MATH_MAJOR"
    "STAN_MATH_MINOR"
    "STAN_MATH_PATCH"
    "STAN_MINOR"
    "STAN_PATCH"
    "alignas"
    "alignof"
    "and"
    "and_eq"
    "asm"
    "auto"
    "bitand"
    "bitor"
    "bool"
    "break"
    "case"
    "catch"
    "char"
    "char16_t"
    "char32_t"
    "class"
    "compl"
    "const"
    "const_cast"
    "constexpr"
    "continue"
    "decltype"
    "default"
    "delete"
    "do"
    "double"
    "dynamic_cast"
    "else"
    "enum"
    "explicit"
    "export"
    "extern"
    "false"
    "float"
    "for"
    "friend"
    "fvar"
    "goto"
    "if"
    "in"
    "inline"
    "int"
    "long"
    "lp__"
    "mutable"
    "namespace"
    "new"
    "noexcept"
    "not"
    "not_eq"
    "nullptr"
    "operator"
    "or"
    "or_eq"
    "private"
    "protected"
    "public"
    "register"
    "reinterpret_cast"
    "repeat"
    "return"
    "short"
    "signed"
    "sizeof"
    "static"
    "static_assert"
    "static_cast"
    "struct"
    "switch"
    "template"
    "then"
    "this"
    "thread_local"
    "throw"
    "true"
    "try"
    "typedef"
    "typeid"
    "typename"
    "union"
    "unsigned"
    "until"
    "using"
    "var"
    "virtual"
    "void"
    "volatile"
    "wchar_t"
    "while"
    "xor"
    "xor_eq"
    )
  "List of reserved keywords in Stan.")

(provide 'stan-keywords-lists)

;;; stan-keywords-lists.el ends here
