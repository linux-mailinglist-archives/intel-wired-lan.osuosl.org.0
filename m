Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C9C872532
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 18:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED4424178F;
	Tue,  5 Mar 2024 17:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tgzioiPfO7i; Tue,  5 Mar 2024 17:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D31E400A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709658512;
	bh=c/y2F9S93y0axH0tvC63BbABM8KhLgQzljVKPuaA6zc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zqz9WQHzpG8jJpGZVG9nCSAVKNZzzwWHkvR6VaEFY9/LT5zeHnPgM4HcAQf0IvihN
	 Y9AlcLpyYvYBJ2kVqr83+UQRVhB0axOwWX0FbO85gkoP7BshPo/re79FfOd3cwtvRX
	 v4Z9eCrh/z5mqdKmPnL2b5lSQwEzp0VBNd65ULWbcaiPzaPccCAlmdrUaPaoN8Yhvb
	 RzmBeY2cbU/4kmjg2kBxjdYlRBK7WDbpDb4dnhsfigkNVU2PDpRQdbqzWOh610VdU0
	 hQLXSyF7bT8+oy0dDAPRayaAIVEb1i/RsUghw24nH39y4SsYSWsE49okrp9V+Mm8k0
	 BvUVzbGH8+2fw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D31E400A6;
	Tue,  5 Mar 2024 17:08:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D03751BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBDBD40A3E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JorTgPhnYrTU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 17:08:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78D87400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78D87400A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78D87400A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:08:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4084865"
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; 
   d="scan'208";a="4084865"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 09:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="40323563"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 05 Mar 2024 09:07:34 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D757A38195;
 Tue,  5 Mar 2024 14:47:43 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Mar 2024 09:39:37 -0500
Message-Id: <20240305143942.23757-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
References: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709658509; x=1741194509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhJ3ncDf6xUNkb2Vke5fsShq5luvh3cagA98/sV480c=;
 b=WfdzVZUlLSPjiViozOVFG/AGKtxG2GWLR6YFA5U+7Jj0kPAOzouAJjI8
 hc3v3LIjRQtFot7Sv8j4gsWyQR4c4xY+oKRyg4DN5ak/lg2pYHgfbd/aU
 pVKzjYCMny6hV929n/lk70/JDBw8qxQ+CkqcUwFP0FQhMqi/M5QOmuF3O
 2vHvHhi8RkcuTknRjaaLWYDfCg5ofeESb7+PDIrmWLTOpELY8isrVA6uz
 3oqWhnv8xRjyJGJ2x6rR1zSSmaX5Sb3ATBpWOKI4YrzpB3it5/XMulkhm
 swIK1XKazZWGekCw4U6xzIRo8xk8qDck4Qhp161uXhSvp9Bu/uFaljn0b
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WfdzVZUl
Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/6] devlink: extend
 devlink_param *set pointer
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend devlink_param *set function pointer to take extack as a param.
Sometimes it is needed to pass information to the end user from set
function. It is more proper to use for that netlink instead of passing
message to dmesg.

Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  6 ++--
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 36 +++++++++----------
 drivers/net/ethernet/mellanox/mlx4/main.c     |  6 ++--
 .../net/ethernet/mellanox/mlx5/core/eswitch.c |  3 +-
 .../mellanox/mlx5/core/eswitch_offloads.c     |  3 +-
 .../net/ethernet/mellanox/mlx5/core/fs_core.c |  3 +-
 .../ethernet/mellanox/mlx5/core/fw_reset.c    |  3 +-
 .../mellanox/mlxsw/spectrum_acl_tcam.c        |  3 +-
 .../ethernet/netronome/nfp/devlink_param.c    |  3 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  3 +-
 drivers/net/wwan/iosm/iosm_ipc_devlink.c      |  3 +-
 include/net/devlink.h                         |  3 +-
 include/net/dsa.h                             |  3 +-
 net/devlink/param.c                           |  7 ++--
 net/dsa/devlink.c                             |  3 +-
 15 files changed, 50 insertions(+), 38 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
index ae4529c043f0..d9ea6fa23923 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
@@ -1096,7 +1096,8 @@ static int bnxt_dl_nvm_param_get(struct devlink *dl, u32 id,
 }
 
 static int bnxt_dl_nvm_param_set(struct devlink *dl, u32 id,
-				 struct devlink_param_gset_ctx *ctx)
+				 struct devlink_param_gset_ctx *ctx,
+				 struct netlink_ext_ack *extack)
 {
 	struct bnxt *bp = bnxt_get_bp_from_dl(dl);
 	struct hwrm_nvm_set_variable_input *req;
@@ -1145,7 +1146,8 @@ static int bnxt_remote_dev_reset_get(struct devlink *dl, u32 id,
 }
 
 static int bnxt_remote_dev_reset_set(struct devlink *dl, u32 id,
-				     struct devlink_param_gset_ctx *ctx)
+				     struct devlink_param_gset_ctx *ctx,
+				     struct netlink_ext_ack *extack)
 {
 	struct bnxt *bp = bnxt_get_bp_from_dl(dl);
 	int rc;
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index b516e42b41f0..c0a89a1b4e88 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1380,9 +1380,8 @@ static const struct devlink_ops ice_devlink_ops = {
 	.rate_node_parent_set = ice_devlink_set_parent,
 };
 
-static int
-ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
-			    struct devlink_param_gset_ctx *ctx)
+static int ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
+				       struct devlink_param_gset_ctx *ctx)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 
@@ -1391,9 +1390,9 @@ ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
 	return 0;
 }
 
-static int
-ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
-			    struct devlink_param_gset_ctx *ctx)
+static int ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
+				       struct devlink_param_gset_ctx *ctx,
+				       struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 	bool roce_ena = ctx->val.vbool;
@@ -1413,10 +1412,9 @@ ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
 	return ret;
 }
 
-static int
-ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
-				 union devlink_param_value val,
-				 struct netlink_ext_ack *extack)
+static int ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
+					    union devlink_param_value val,
+					    struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 
@@ -1431,9 +1429,8 @@ ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
-static int
-ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
-			  struct devlink_param_gset_ctx *ctx)
+static int ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 
@@ -1442,9 +1439,9 @@ ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
 	return 0;
 }
 
-static int
-ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
-			  struct devlink_param_gset_ctx *ctx)
+static int ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
+				     struct devlink_param_gset_ctx *ctx,
+				     struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 	bool iw_ena = ctx->val.vbool;
@@ -1464,10 +1461,9 @@ ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
 	return ret;
 }
 
-static int
-ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
-			       union devlink_param_value val,
-			       struct netlink_ext_ack *extack)
+static int ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
+					  union devlink_param_value val,
+					  struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
 
diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
index 7b02ff61126d..98688e4dbec5 100644
--- a/drivers/net/ethernet/mellanox/mlx4/main.c
+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
@@ -185,7 +185,8 @@ static int mlx4_devlink_ierr_reset_get(struct devlink *devlink, u32 id,
 }
 
 static int mlx4_devlink_ierr_reset_set(struct devlink *devlink, u32 id,
-				       struct devlink_param_gset_ctx *ctx)
+				       struct devlink_param_gset_ctx *ctx,
+				       struct netlink_ext_ack *extack)
 {
 	mlx4_internal_err_reset = ctx->val.vbool;
 	return 0;
@@ -202,7 +203,8 @@ static int mlx4_devlink_crdump_snapshot_get(struct devlink *devlink, u32 id,
 }
 
 static int mlx4_devlink_crdump_snapshot_set(struct devlink *devlink, u32 id,
-					    struct devlink_param_gset_ctx *ctx)
+					    struct devlink_param_gset_ctx *ctx,
+					    struct netlink_ext_ack *extack)
 {
 	struct mlx4_priv *priv = devlink_priv(devlink);
 	struct mlx4_dev *dev = &priv->dev;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
index 3047d7015c52..a86f9c335b6b 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
@@ -1805,7 +1805,8 @@ static int mlx5_esw_vports_init(struct mlx5_eswitch *esw)
 }
 
 static int mlx5_devlink_esw_multiport_set(struct devlink *devlink, u32 id,
-					  struct devlink_param_gset_ctx *ctx)
+					  struct devlink_param_gset_ctx *ctx,
+					  struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
index b0455134c98e..3d8b3ca681d0 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
@@ -2405,7 +2405,8 @@ static int esw_offloads_init_reps(struct mlx5_eswitch *esw)
 }
 
 static int esw_port_metadata_set(struct devlink *devlink, u32 id,
-				 struct devlink_param_gset_ctx *ctx)
+				 struct devlink_param_gset_ctx *ctx,
+				 struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 	struct mlx5_eswitch *esw = dev->priv.eswitch;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
index e6bfa7e4f146..8a941c0b4497 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
@@ -3321,7 +3321,8 @@ static int mlx5_fs_mode_validate(struct devlink *devlink, u32 id,
 }
 
 static int mlx5_fs_mode_set(struct devlink *devlink, u32 id,
-			    struct devlink_param_gset_ctx *ctx)
+			    struct devlink_param_gset_ctx *ctx,
+			    struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 	enum mlx5_flow_steering_mode mode;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c b/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
index f27eab6e4929..1237b7fb5cef 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
@@ -52,7 +52,8 @@ static void mlx5_set_fw_rst_ack(struct mlx5_core_dev *dev)
 }
 
 static int mlx5_fw_reset_enable_remote_dev_reset_set(struct devlink *devlink, u32 id,
-						     struct devlink_param_gset_ctx *ctx)
+						     struct devlink_param_gset_ctx *ctx,
+						     struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 	struct mlx5_fw_reset *fw_reset;
diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
index f20052776b3f..baedf0d45e85 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
@@ -1465,7 +1465,8 @@ mlxsw_sp_acl_tcam_region_rehash_intrvl_get(struct devlink *devlink, u32 id,
 
 static int
 mlxsw_sp_acl_tcam_region_rehash_intrvl_set(struct devlink *devlink, u32 id,
-					   struct devlink_param_gset_ctx *ctx)
+					   struct devlink_param_gset_ctx *ctx,
+					   struct netlink_ext_ack *extack)
 {
 	struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
 	struct mlxsw_sp_acl_tcam_vregion *vregion;
diff --git a/drivers/net/ethernet/netronome/nfp/devlink_param.c b/drivers/net/ethernet/netronome/nfp/devlink_param.c
index a655f9e69a7b..0e1a3800f371 100644
--- a/drivers/net/ethernet/netronome/nfp/devlink_param.c
+++ b/drivers/net/ethernet/netronome/nfp/devlink_param.c
@@ -132,7 +132,8 @@ nfp_devlink_param_u8_get(struct devlink *devlink, u32 id,
 
 static int
 nfp_devlink_param_u8_set(struct devlink *devlink, u32 id,
-			 struct devlink_param_gset_ctx *ctx)
+			 struct devlink_param_gset_ctx *ctx,
+			 struct netlink_ext_ack *extack)
 {
 	const struct nfp_devlink_param_u8_arg *arg;
 	struct nfp_pf *pf = devlink_priv(devlink);
diff --git a/drivers/net/ethernet/qlogic/qed/qed_devlink.c b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
index dad8e617c393..1adc7fbb3f2f 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_devlink.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
@@ -132,7 +132,8 @@ static int qed_dl_param_get(struct devlink *dl, u32 id,
 }
 
 static int qed_dl_param_set(struct devlink *dl, u32 id,
-			    struct devlink_param_gset_ctx *ctx)
+			    struct devlink_param_gset_ctx *ctx,
+			    struct netlink_ext_ack *extack)
 {
 	struct qed_devlink *qed_dl = devlink_priv(dl);
 	struct qed_dev *cdev;
diff --git a/drivers/net/wwan/iosm/iosm_ipc_devlink.c b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
index 2fe724d623c0..bef6819986e9 100644
--- a/drivers/net/wwan/iosm/iosm_ipc_devlink.c
+++ b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
@@ -33,7 +33,8 @@ static int ipc_devlink_get_param(struct devlink *dl, u32 id,
 
 /* Set the param values for the specific param ID's */
 static int ipc_devlink_set_param(struct devlink *dl, u32 id,
-				 struct devlink_param_gset_ctx *ctx)
+				 struct devlink_param_gset_ctx *ctx,
+				 struct netlink_ext_ack *extack)
 {
 	struct iosm_devlink *ipc_devlink = devlink_priv(dl);
 
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 9ac394bdfbe4..12f14be44e53 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -483,7 +483,8 @@ struct devlink_param {
 	int (*get)(struct devlink *devlink, u32 id,
 		   struct devlink_param_gset_ctx *ctx);
 	int (*set)(struct devlink *devlink, u32 id,
-		   struct devlink_param_gset_ctx *ctx);
+		   struct devlink_param_gset_ctx *ctx,
+		   struct netlink_ext_ack *extack);
 	int (*validate)(struct devlink *devlink, u32 id,
 			union devlink_param_value val,
 			struct netlink_ext_ack *extack);
diff --git a/include/net/dsa.h b/include/net/dsa.h
index 7c0da9effe4e..140b80e1a88c 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -1247,7 +1247,8 @@ struct dsa_switch_ops {
 int dsa_devlink_param_get(struct devlink *dl, u32 id,
 			  struct devlink_param_gset_ctx *ctx);
 int dsa_devlink_param_set(struct devlink *dl, u32 id,
-			  struct devlink_param_gset_ctx *ctx);
+			  struct devlink_param_gset_ctx *ctx,
+			  struct netlink_ext_ack *extack);
 int dsa_devlink_params_register(struct dsa_switch *ds,
 				const struct devlink_param *params,
 				size_t params_count);
diff --git a/net/devlink/param.c b/net/devlink/param.c
index 22bc3b500518..dcf0d1ccebba 100644
--- a/net/devlink/param.c
+++ b/net/devlink/param.c
@@ -158,11 +158,12 @@ static int devlink_param_get(struct devlink *devlink,
 
 static int devlink_param_set(struct devlink *devlink,
 			     const struct devlink_param *param,
-			     struct devlink_param_gset_ctx *ctx)
+			     struct devlink_param_gset_ctx *ctx,
+			     struct netlink_ext_ack *extack)
 {
 	if (!param->set)
 		return -EOPNOTSUPP;
-	return param->set(devlink, param->id, ctx);
+	return param->set(devlink, param->id, ctx, extack);
 }
 
 static int
@@ -571,7 +572,7 @@ static int __devlink_nl_cmd_param_set_doit(struct devlink *devlink,
 			return -EOPNOTSUPP;
 		ctx.val = value;
 		ctx.cmode = cmode;
-		err = devlink_param_set(devlink, param, &ctx);
+		err = devlink_param_set(devlink, param, &ctx, info->extack);
 		if (err)
 			return err;
 	}
diff --git a/net/dsa/devlink.c b/net/dsa/devlink.c
index 431bf52290a1..0aac887d0098 100644
--- a/net/dsa/devlink.c
+++ b/net/dsa/devlink.c
@@ -194,7 +194,8 @@ int dsa_devlink_param_get(struct devlink *dl, u32 id,
 EXPORT_SYMBOL_GPL(dsa_devlink_param_get);
 
 int dsa_devlink_param_set(struct devlink *dl, u32 id,
-			  struct devlink_param_gset_ctx *ctx)
+			  struct devlink_param_gset_ctx *ctx,
+			  struct netlink_ext_ack *extack)
 {
 	struct dsa_switch *ds = dsa_devlink_to_ds(dl);
 
-- 
2.38.1

