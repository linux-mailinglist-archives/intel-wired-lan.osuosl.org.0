Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6403F2F1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 17:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F8F0818CA;
	Fri, 20 Aug 2021 15:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MEeL7G_S4Jh; Fri, 20 Aug 2021 15:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFB4E816F5;
	Fri, 20 Aug 2021 15:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD3D1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AD5940708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DdQqadsyuUUt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 15:22:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 516DC404D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 15:22:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="238917664"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="238917664"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 08:22:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="452809301"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga007.fm.intel.com with ESMTP; 20 Aug 2021 08:22:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Aug 2021 08:09:50 -0700
Message-Id: <20210820150950.24529-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: refactor devlink
 getter/fallback functions to void
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

After commit a8f89fa27773 ("ice: do not abort devlink info if board
identifier can't be found"), the getter/fallback() functions no longer
report an error. Convert the interface to a void so that it is no
longer possible to add a version field that is fatal. This makes
sense, because we should not fail to report other versions just
because one of the version pieces could not be found.

Finally, clean up the getter functions line wrapping so that none of
them take more than 80 columns, as is the usual style for networking
files.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 133 +++++++------------
 1 file changed, 50 insertions(+), 83 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 965d911073d1..ee018f249432 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -23,7 +23,7 @@ struct ice_info_ctx {
  *
  * If a version does not exist, for example when attempting to get the
  * inactive version of flash when there is no pending update, the function
- * should leave the buffer in the ctx structure empty and return 0.
+ * should leave the buffer in the ctx structure empty.
  */
 
 static void ice_info_get_dsn(struct ice_pf *pf, struct ice_info_ctx *ctx)
@@ -36,7 +36,7 @@ static void ice_info_get_dsn(struct ice_pf *pf, struct ice_info_ctx *ctx)
 	snprintf(ctx->buf, sizeof(ctx->buf), "%8phD", dsn);
 }
 
-static int ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 	enum ice_status status;
@@ -46,148 +46,127 @@ static int ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 		/* We failed to locate the PBA, so just skip this entry */
 		dev_dbg(ice_pf_to_dev(pf), "Failed to read Product Board Assembly string, status %s\n",
 			ice_stat_str(status));
-
-	return 0;
 }
 
-static int ice_info_fw_mgmt(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_fw_mgmt(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", hw->fw_maj_ver, hw->fw_min_ver,
-		 hw->fw_patch);
-
-	return 0;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
+		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch);
 }
 
-static int ice_info_fw_api(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_fw_api(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u", hw->api_maj_ver, hw->api_min_ver);
-
-	return 0;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u",
+		 hw->api_maj_ver, hw->api_min_ver);
 }
 
-static int ice_info_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", hw->fw_build);
-
-	return 0;
 }
 
-static int ice_info_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &pf->hw.flash.orom;
 
-	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", orom->major, orom->build, orom->patch);
-
-	return 0;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
+		 orom->major, orom->build, orom->patch);
 }
 
-static int
-ice_info_pending_orom_ver(struct ice_pf __always_unused *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_pending_orom_ver(struct ice_pf __always_unused *pf,
+			  struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &ctx->pending_orom;
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_orom)
 		snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
 			 orom->major, orom->build, orom->patch);
-
-	return 0;
 }
 
-static int ice_info_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
-
-	return 0;
 }
 
-static int
-ice_info_pending_nvm_ver(struct ice_pf __always_unused *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_pending_nvm_ver(struct ice_pf __always_unused *pf,
+			 struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &ctx->pending_nvm;
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
-		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
-
-	return 0;
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x",
+			 nvm->major, nvm->minor);
 }
 
-static int ice_info_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm->eetrack);
-
-	return 0;
 }
 
-static int
-ice_info_pending_eetrack(struct ice_pf __always_unused *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_pending_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &ctx->pending_nvm;
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
 		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm->eetrack);
-
-	return 0;
 }
 
-static int ice_info_ddp_pkg_name(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_ddp_pkg_name(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "%s", hw->active_pkg_name);
-
-	return 0;
 }
 
-static int ice_info_ddp_pkg_version(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_ddp_pkg_version(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_pkg_ver *pkg = &pf->hw.active_pkg_ver;
 
-	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u.%u", pkg->major, pkg->minor, pkg->update,
-		 pkg->draft);
-
-	return 0;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u.%u",
+		 pkg->major, pkg->minor, pkg->update, pkg->draft);
 }
 
-static int ice_info_ddp_pkg_bundle_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_ddp_pkg_bundle_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", pf->hw.active_track_id);
-
-	return 0;
 }
 
-static int ice_info_netlist_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_netlist_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
 	/* The netlist version fields are BCD formatted */
-	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x", netlist->major, netlist->minor,
-		 netlist->type >> 16, netlist->type & 0xFFFF, netlist->rev,
-		 netlist->cust_ver);
-
-	return 0;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
+		 netlist->major, netlist->minor,
+		 netlist->type >> 16, netlist->type & 0xFFFF,
+		 netlist->rev, netlist->cust_ver);
 }
 
-static int ice_info_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
+static void ice_info_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
-
-	return 0;
 }
 
-static int
-ice_info_pending_netlist_ver(struct ice_pf __always_unused *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_pending_netlist_ver(struct ice_pf __always_unused *pf,
+			     struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &ctx->pending_netlist;
 
@@ -195,21 +174,18 @@ ice_info_pending_netlist_ver(struct ice_pf __always_unused *pf, struct ice_info_
 	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
 		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
 			 netlist->major, netlist->minor,
-			 netlist->type >> 16, netlist->type & 0xFFFF, netlist->rev,
-			 netlist->cust_ver);
-
-	return 0;
+			 netlist->type >> 16, netlist->type & 0xFFFF,
+			 netlist->rev, netlist->cust_ver);
 }
 
-static int
-ice_info_pending_netlist_build(struct ice_pf __always_unused *pf, struct ice_info_ctx *ctx)
+static void
+ice_info_pending_netlist_build(struct ice_pf __always_unused *pf,
+			       struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &ctx->pending_netlist;
 
 	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
 		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
-
-	return 0;
 }
 
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter, NULL }
@@ -239,8 +215,8 @@ enum ice_version_type {
 static const struct ice_devlink_version {
 	enum ice_version_type type;
 	const char *key;
-	int (*getter)(struct ice_pf *pf, struct ice_info_ctx *ctx);
-	int (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);
+	void (*getter)(struct ice_pf *pf, struct ice_info_ctx *ctx);
+	void (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);
 } ice_devlink_versions[] = {
 	fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
@@ -352,24 +328,15 @@ static int ice_devlink_info_get(struct devlink *devlink,
 
 		memset(ctx->buf, 0, sizeof(ctx->buf));
 
-		err = ice_devlink_versions[i].getter(pf, ctx);
-		if (err) {
-			NL_SET_ERR_MSG_MOD(extack, "Unable to obtain version info");
-			goto out_free_ctx;
-		}
+		ice_devlink_versions[i].getter(pf, ctx);
 
 		/* If the default getter doesn't report a version, use the
 		 * fallback function. This is primarily useful in the case of
 		 * "stored" versions that want to report the same value as the
 		 * running version in the normal case of no pending update.
 		 */
-		if (ctx->buf[0] == '\0' && ice_devlink_versions[i].fallback) {
-			err = ice_devlink_versions[i].fallback(pf, ctx);
-			if (err) {
-				NL_SET_ERR_MSG_MOD(extack, "Unable to obtain version info");
-				goto out_free_ctx;
-			}
-		}
+		if (ctx->buf[0] == '\0' && ice_devlink_versions[i].fallback)
+			ice_devlink_versions[i].fallback(pf, ctx);
 
 		/* Do not report missing versions */
 		if (ctx->buf[0] == '\0')
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
