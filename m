Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4E08AA9F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 10:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A0F780E13;
	Fri, 19 Apr 2024 08:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ljTXCi6BXYfb; Fri, 19 Apr 2024 08:18:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08FD880D20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713514723;
	bh=tNiI5LRKfRK2uJ/cbK8dBgVLktlhj2Coe8K3K0BjuF4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=swucMzE/KWHp9wLfdHHZlkTUqvPpHiaQm1THeOysU7SUjnk4j9oPGFxBA49Iq5Zui
	 g1O0x1KGzwjvNopPNb37HLGFbTOPLn/PD3I/fCFZYtNletu2h1hj8CJHUVlGMf/tH+
	 Y4PVKMoUGrq3bMahHwcMhGscXLqFv6l+6Cn3bpx6BnsFOoNyZznFqbXV3gDrOBLrmx
	 YRE61MMqO+CD1lB/XTErYlCnTWDozMH4V4MH9UESPbWJJtaM5bnZYtLgC0dSyGt0Y2
	 nBinr4VB2ZH0FAZUCam/1eZSKducq18maLFei5s5IzAuR5rtyXtXffcgmF1meFCKfO
	 xtdUzwhhGq5tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08FD880D20;
	Fri, 19 Apr 2024 08:18:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A21131BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BEBB40437
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0YnsO5RVnN0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 08:18:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E38BE400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E38BE400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E38BE400BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 08:18:38 +0000 (UTC)
X-CSE-ConnectionGUID: +xtvLt6rR/aPHsYAwuTQ9A==
X-CSE-MsgGUID: TEPctth0RBKpjyKsTjXzQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9028068"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9028068"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 01:18:39 -0700
X-CSE-ConnectionGUID: PssL+y/zSqeKCFHcowNuPA==
X-CSE-MsgGUID: a+sNLIPERb+JnIc/jPIpBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23244454"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 19 Apr 2024 01:18:35 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E015E28169;
 Fri, 19 Apr 2024 09:18:23 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Apr 2024 04:08:49 -0400
Message-Id: <20240419080854.10000-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240419080854.10000-1-mateusz.polchlopek@intel.com>
References: <20240419080854.10000-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713514720; x=1745050720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cYy+wZ9Nc/Vhs56UfWUooS7am9nOJiCPVO4Ylsc6+ig=;
 b=PQmXTpnQWyHLQq5Z6JHrHVxEXcImsOhyg9wjnWYQMCRjjr+u8NUUSdTY
 HNLpl4LtCfJNOjw963rrvhdoN4NLcgnscXr14dpu/z8DZdfR2nGdKBZ08
 UVqNELa09+pntBTiyZy0jJjJ7Wgm4v71Pj+Ok4Pk7syMpgVOoU3vZHRoA
 G43J+Wy5sUpc+I3M/2SbTdEgmRMmttCCsLxyXxSYw5Z/+cXOXaoOjWGav
 EYPZsN486Yza5QOQazPBkIBzsFdu9cZtBZQY34ehy6OW9Ohry0tzFETcc
 QGu1nu0fBV35Rjq60dWvXcKvHJsmqbqHfVfomHEUeOUw2gEL+jLvi5Q0B
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PQmXTpnQ
Subject: [Intel-wired-lan] [PATCH net-next v10 1/6] devlink: extend
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
 lukasz.czapnik@intel.com, victor.raj@intel.com, Jiri Pirko <jiri@nvidia.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend devlink_param *set function pointer to take extack as a param.
Sometimes it is needed to pass information to the end user from set
function. It is more proper to use for that netlink instead of passing
message to dmesg.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c  |  9 ++++++---
 drivers/net/ethernet/amd/pds_core/core.h             |  3 ++-
 drivers/net/ethernet/amd/pds_core/devlink.c          |  3 ++-
 drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c    |  6 ++++--
 drivers/net/ethernet/intel/ice/devlink/devlink.c     | 12 ++++++------
 .../net/ethernet/marvell/octeontx2/af/rvu_devlink.c  | 12 ++++++++----
 .../ethernet/marvell/octeontx2/nic/otx2_devlink.c    |  3 ++-
 drivers/net/ethernet/mellanox/mlx4/main.c            |  6 ++++--
 drivers/net/ethernet/mellanox/mlx5/core/eswitch.c    |  3 ++-
 .../ethernet/mellanox/mlx5/core/eswitch_offloads.c   |  3 ++-
 drivers/net/ethernet/mellanox/mlx5/core/fs_core.c    |  3 ++-
 drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c   |  3 ++-
 .../net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c  |  3 ++-
 drivers/net/ethernet/netronome/nfp/devlink_param.c   |  3 ++-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c        |  3 ++-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c             |  3 ++-
 drivers/net/ethernet/ti/cpsw_new.c                   |  6 ++++--
 drivers/net/wwan/iosm/iosm_ipc_devlink.c             |  3 ++-
 include/net/devlink.h                                |  3 ++-
 include/net/dsa.h                                    |  3 ++-
 net/devlink/param.c                                  |  7 ++++---
 net/dsa/devlink.c                                    |  3 ++-
 22 files changed, 66 insertions(+), 37 deletions(-)

diff --git a/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c b/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
index d2b8d26db968..215a1a8ba7e9 100644
--- a/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
+++ b/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
@@ -4,7 +4,8 @@
 #include "otx2_cpt_devlink.h"
 
 static int otx2_cpt_dl_egrp_create(struct devlink *dl, u32 id,
-				   struct devlink_param_gset_ctx *ctx)
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
 {
 	struct otx2_cpt_devlink *cpt_dl = devlink_priv(dl);
 	struct otx2_cptpf_dev *cptpf = cpt_dl->cptpf;
@@ -13,7 +14,8 @@ static int otx2_cpt_dl_egrp_create(struct devlink *dl, u32 id,
 }
 
 static int otx2_cpt_dl_egrp_delete(struct devlink *dl, u32 id,
-				   struct devlink_param_gset_ctx *ctx)
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
 {
 	struct otx2_cpt_devlink *cpt_dl = devlink_priv(dl);
 	struct otx2_cptpf_dev *cptpf = cpt_dl->cptpf;
@@ -45,7 +47,8 @@ static int otx2_cpt_dl_t106_mode_get(struct devlink *dl, u32 id,
 }
 
 static int otx2_cpt_dl_t106_mode_set(struct devlink *dl, u32 id,
-				     struct devlink_param_gset_ctx *ctx)
+				     struct devlink_param_gset_ctx *ctx,
+				     struct netlink_ext_ack *extack)
 {
 	struct otx2_cpt_devlink *cpt_dl = devlink_priv(dl);
 	struct otx2_cptpf_dev *cptpf = cpt_dl->cptpf;
diff --git a/drivers/net/ethernet/amd/pds_core/core.h b/drivers/net/ethernet/amd/pds_core/core.h
index a3e17a0c187a..14522d6d5f86 100644
--- a/drivers/net/ethernet/amd/pds_core/core.h
+++ b/drivers/net/ethernet/amd/pds_core/core.h
@@ -256,7 +256,8 @@ int pdsc_dl_flash_update(struct devlink *dl,
 int pdsc_dl_enable_get(struct devlink *dl, u32 id,
 		       struct devlink_param_gset_ctx *ctx);
 int pdsc_dl_enable_set(struct devlink *dl, u32 id,
-		       struct devlink_param_gset_ctx *ctx);
+		       struct devlink_param_gset_ctx *ctx,
+		       struct netlink_ext_ack *extack);
 int pdsc_dl_enable_validate(struct devlink *dl, u32 id,
 			    union devlink_param_value val,
 			    struct netlink_ext_ack *extack);
diff --git a/drivers/net/ethernet/amd/pds_core/devlink.c b/drivers/net/ethernet/amd/pds_core/devlink.c
index 54864f27c87a..2681889162a2 100644
--- a/drivers/net/ethernet/amd/pds_core/devlink.c
+++ b/drivers/net/ethernet/amd/pds_core/devlink.c
@@ -37,7 +37,8 @@ int pdsc_dl_enable_get(struct devlink *dl, u32 id,
 }
 
 int pdsc_dl_enable_set(struct devlink *dl, u32 id,
-		       struct devlink_param_gset_ctx *ctx)
+		       struct devlink_param_gset_ctx *ctx,
+		       struct netlink_ext_ack *extack)
 {
 	struct pdsc *pdsc = devlink_priv(dl);
 	struct pdsc_viftype *vt_entry;
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
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index be9244bb8bbc..acbace240977 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1144,9 +1144,9 @@ ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
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
@@ -1195,9 +1195,9 @@ ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
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
diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
index 96c04f7d93f8..7498ab429963 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
@@ -1202,7 +1202,8 @@ static int rvu_af_dl_dwrr_mtu_validate(struct devlink *devlink, u32 id,
 }
 
 static int rvu_af_dl_dwrr_mtu_set(struct devlink *devlink, u32 id,
-				  struct devlink_param_gset_ctx *ctx)
+				  struct devlink_param_gset_ctx *ctx,
+				  struct netlink_ext_ack *extack)
 {
 	struct rvu_devlink *rvu_dl = devlink_priv(devlink);
 	struct rvu *rvu = rvu_dl->rvu;
@@ -1256,7 +1257,8 @@ static int rvu_af_npc_exact_feature_get(struct devlink *devlink, u32 id,
 }
 
 static int rvu_af_npc_exact_feature_disable(struct devlink *devlink, u32 id,
-					    struct devlink_param_gset_ctx *ctx)
+					    struct devlink_param_gset_ctx *ctx,
+					    struct netlink_ext_ack *extack)
 {
 	struct rvu_devlink *rvu_dl = devlink_priv(devlink);
 	struct rvu *rvu = rvu_dl->rvu;
@@ -1310,7 +1312,8 @@ static int rvu_af_dl_npc_mcam_high_zone_percent_get(struct devlink *devlink, u32
 }
 
 static int rvu_af_dl_npc_mcam_high_zone_percent_set(struct devlink *devlink, u32 id,
-						    struct devlink_param_gset_ctx *ctx)
+						    struct devlink_param_gset_ctx *ctx,
+						    struct netlink_ext_ack *extack)
 {
 	struct rvu_devlink *rvu_dl = devlink_priv(devlink);
 	struct rvu *rvu = rvu_dl->rvu;
@@ -1367,7 +1370,8 @@ static int rvu_af_dl_nix_maxlf_get(struct devlink *devlink, u32 id,
 }
 
 static int rvu_af_dl_nix_maxlf_set(struct devlink *devlink, u32 id,
-				   struct devlink_param_gset_ctx *ctx)
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
 {
 	struct rvu_devlink *rvu_dl = devlink_priv(devlink);
 	struct rvu *rvu = rvu_dl->rvu;
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
index 4e1130496573..99ddf31269d9 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
@@ -32,7 +32,8 @@ static int otx2_dl_mcam_count_validate(struct devlink *devlink, u32 id,
 }
 
 static int otx2_dl_mcam_count_set(struct devlink *devlink, u32 id,
-				  struct devlink_param_gset_ctx *ctx)
+				  struct devlink_param_gset_ctx *ctx,
+				  struct netlink_ext_ack *extack)
 {
 	struct otx2_devlink *otx2_dl = devlink_priv(devlink);
 	struct otx2_nic *pfvf = otx2_dl->pfvf;
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
index 1789800faaeb..17f78091ad30 100644
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
index 8a359d283bb2..99e6752ea1a5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
@@ -2413,7 +2413,8 @@ static int esw_offloads_init_reps(struct mlx5_eswitch *esw)
 }
 
 static int esw_port_metadata_set(struct devlink *devlink, u32 id,
-				 struct devlink_param_gset_ctx *ctx)
+				 struct devlink_param_gset_ctx *ctx,
+				 struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 	struct mlx5_eswitch *esw = dev->priv.eswitch;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
index cf085a478e3e..32cdacc34a0d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
@@ -3332,7 +3332,8 @@ static int mlx5_fs_mode_validate(struct devlink *devlink, u32 id,
 }
 
 static int mlx5_fs_mode_set(struct devlink *devlink, u32 id,
-			    struct devlink_param_gset_ctx *ctx)
+			    struct devlink_param_gset_ctx *ctx,
+			    struct netlink_ext_ack *extack)
 {
 	struct mlx5_core_dev *dev = devlink_priv(devlink);
 	enum mlx5_flow_steering_mode mode;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c b/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
index 2911aa34a5be..979c49ae6b5c 100644
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
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index bfba883d4fc4..4565ea18cf1c 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -3055,7 +3055,8 @@ static void am65_cpsw_init_port_switch_ale(struct am65_cpsw_port *port)
 }
 
 static int am65_cpsw_dl_switch_mode_set(struct devlink *dl, u32 id,
-					struct devlink_param_gset_ctx *ctx)
+					struct devlink_param_gset_ctx *ctx,
+					struct netlink_ext_ack *extack)
 {
 	struct am65_cpsw_devlink *dl_priv = devlink_priv(dl);
 	struct am65_cpsw_common *cpsw = dl_priv->common;
diff --git a/drivers/net/ethernet/ti/cpsw_new.c b/drivers/net/ethernet/ti/cpsw_new.c
index 087dcb67505a..2baa198ebfa0 100644
--- a/drivers/net/ethernet/ti/cpsw_new.c
+++ b/drivers/net/ethernet/ti/cpsw_new.c
@@ -1625,7 +1625,8 @@ static int cpsw_dl_switch_mode_get(struct devlink *dl, u32 id,
 }
 
 static int cpsw_dl_switch_mode_set(struct devlink *dl, u32 id,
-				   struct devlink_param_gset_ctx *ctx)
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
 {
 	struct cpsw_devlink *dl_priv = devlink_priv(dl);
 	struct cpsw_common *cpsw = dl_priv->cpsw;
@@ -1762,7 +1763,8 @@ static int cpsw_dl_ale_ctrl_get(struct devlink *dl, u32 id,
 }
 
 static int cpsw_dl_ale_ctrl_set(struct devlink *dl, u32 id,
-				struct devlink_param_gset_ctx *ctx)
+				struct devlink_param_gset_ctx *ctx,
+				struct netlink_ext_ack *extack)
 {
 	struct cpsw_devlink *dl_priv = devlink_priv(dl);
 	struct cpsw_common *cpsw = dl_priv->cpsw;
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
index d31769a116ce..35eb0f884386 100644
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
index 7edfd8de8882..a6ef7e4c503f 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -1258,7 +1258,8 @@ struct dsa_switch_ops {
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

