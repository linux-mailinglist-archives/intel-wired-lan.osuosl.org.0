Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 690422AFBD4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24DF986C98;
	Thu, 12 Nov 2020 00:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdZz-o9E4q5k; Thu, 12 Nov 2020 00:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 926B786C7F;
	Thu, 12 Nov 2020 00:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08EA01BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 028C922BCC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJgmfyz2aOgY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:45:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 374F32037A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:45:09 +0000 (UTC)
IronPort-SDR: JzyUV50vT2zlRX5GkCAcWk4i1HGNYfJIy7dG/zxDKDR39kgIsfpuzpeHgjDJx0poutdZHl0C0V
 7xmPpmAbt3rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="170406219"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="170406219"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:05 -0800
IronPort-SDR: VDCuRdKw+0RYQ3c+lw7+kd6l7b+RsaPJGnOpiWvPzkUovkOH2VsbyU5vlC1W0B7FT+0iDDTn4h
 qFzWlv/XuieQ==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="309015599"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:45:05 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 16:43:24 -0800
Message-Id: <20201112004330.2896993-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201112004330.2896993-1-jacob.e.keller@intel.com>
References: <20201112004330.2896993-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 1/7] ice: introduce context
 struct for info report
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver uses an array of structures which link an info name with
a function that formats the associated version data into a string.

All existing format functions simply format already captured static data
from the driver hw structure. Future changes will introduce format
functions for reporting the versions of flash sections stored but not
yet applied. This type of version data is not stored as a member of the
hw structure. This is because (a) it might not yet exist in the case
there is no pending flash update, and (b) even if it does, it might
change such as if an update is canceled or replaced by a new update
before finalizing.

We could simply have each format function gather its own data upon being
called. However, in some cases the raw binary version data is
a combination of multiple different reported fields. Additionally, the
current interface doesn't have a way for the function to indicate that
the version doesn't exist.

Refactor this function interface to take a new ice_info_ctx structure
instead of the buffer pointer and length. This context structure allows
for future extensions to pre-gather version data that is stored within
the context struct instead of the hw struct.

Allocate this context structure initially at the start of
ice_devlink_info_get. We use dynamic allocation instead of a local stack
variable in order to avoid using too much kernel stack once we extend it
with additional data structures.

Modify the main loop that drives the info reporting so that the version
buffer string is always cleared between each format. Explicitly check
that the format function actually filled in a version string of non-zero
length. If the string is not provided, simply skip this version without
reporting an error. This allows for introducing format functions of
versions which may or may not be present, such as the version of
a pending update that has not yet been activated.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 117 ++++++++++++-------
 1 file changed, 72 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 4fd117757ee9..31cbb0fbd429 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -6,144 +6,159 @@
 #include "ice_devlink.h"
 #include "ice_fw_update.h"
 
-static void ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
+/* context for devlink info version reporting */
+struct ice_info_ctx {
+	char buf[128];
+};
+
+/* The following functions are used to format specific strings for various
+ * devlink info versions. The ctx parameter is used to provide the storage
+ * buffer, as well as any ancillary information calculated when the info
+ * request was made.
+ *
+ * If a version does not exist, for example a "stored" version that does not
+ * exist because no update is pending, the function should leave the buffer in
+ * the ctx structure empty and return 0.
+ */
+
+static void ice_info_get_dsn(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	u8 dsn[8];
 
 	/* Copy the DSN into an array in Big Endian format */
 	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
 
-	snprintf(buf, len, "%8phD", dsn);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%8phD", dsn);
 }
 
-static int ice_info_pba(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 	enum ice_status status;
 
-	status = ice_read_pba_string(hw, (u8 *)buf, len);
+	status = ice_read_pba_string(hw, (u8 *)ctx->buf, sizeof(ctx->buf));
 	if (status)
 		return -EIO;
 
 	return 0;
 }
 
-static int ice_info_fw_mgmt(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_fw_mgmt(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(buf, len, "%u.%u.%u", hw->fw_maj_ver, hw->fw_min_ver,
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", hw->fw_maj_ver, hw->fw_min_ver,
 		 hw->fw_patch);
 
 	return 0;
 }
 
-static int ice_info_fw_api(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_fw_api(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(buf, len, "%u.%u", hw->api_maj_ver, hw->api_min_ver);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u", hw->api_maj_ver, hw->api_min_ver);
 
 	return 0;
 }
 
-static int ice_info_fw_build(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(buf, len, "0x%08x", hw->fw_build);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", hw->fw_build);
 
 	return 0;
 }
 
-static int ice_info_fw_srev(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_fw_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
-	snprintf(buf, len, "%u", nvm->srev);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
 
 	return 0;
 }
 
-static int ice_info_orom_ver(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_orom_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &pf->hw.flash.orom;
 
-	snprintf(buf, len, "%u.%u.%u", orom->major, orom->build, orom->patch);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", orom->major, orom->build, orom->patch);
 
 	return 0;
 }
 
-static int ice_info_orom_srev(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_orom_srev(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_orom_info *orom = &pf->hw.flash.orom;
 
-	snprintf(buf, len, "%u", orom->srev);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
 
 	return 0;
 }
 
-static int ice_info_nvm_ver(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_nvm_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
-	snprintf(buf, len, "%x.%02x", nvm->major, nvm->minor);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
 
 	return 0;
 }
 
-static int ice_info_eetrack(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_eetrack(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_nvm_info *nvm = &pf->hw.flash.nvm;
 
-	snprintf(buf, len, "0x%08x", nvm->eetrack);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm->eetrack);
 
 	return 0;
 }
 
-static int ice_info_ddp_pkg_name(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_ddp_pkg_name(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(buf, len, "%s", hw->active_pkg_name);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%s", hw->active_pkg_name);
 
 	return 0;
 }
 
-static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_ddp_pkg_version(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_pkg_ver *pkg = &pf->hw.active_pkg_ver;
 
-	snprintf(buf, len, "%u.%u.%u.%u", pkg->major, pkg->minor, pkg->update,
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u.%u", pkg->major, pkg->minor, pkg->update,
 		 pkg->draft);
 
 	return 0;
 }
 
-static int ice_info_ddp_pkg_bundle_id(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_ddp_pkg_bundle_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
-	snprintf(buf, len, "0x%08x", pf->hw.active_track_id);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", pf->hw.active_track_id);
 
 	return 0;
 }
 
-static int ice_info_netlist_ver(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_netlist_ver(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
 	/* The netlist version fields are BCD formatted */
-	snprintf(buf, len, "%x.%x.%x-%x.%x.%x", netlist->major, netlist->minor,
+	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x", netlist->major, netlist->minor,
 		 netlist->type >> 16, netlist->type & 0xFFFF, netlist->rev,
 		 netlist->cust_ver);
 
 	return 0;
 }
 
-static int ice_info_netlist_build(struct ice_pf *pf, char *buf, size_t len)
+static int ice_info_netlist_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_netlist_info *netlist = &pf->hw.flash.netlist;
 
-	snprintf(buf, len, "0x%08x", netlist->hash);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
 
 	return 0;
 }
@@ -160,7 +175,7 @@ enum ice_version_type {
 static const struct ice_devlink_version {
 	enum ice_version_type type;
 	const char *key;
-	int (*getter)(struct ice_pf *pf, char *buf, size_t len);
+	int (*getter)(struct ice_pf *pf, struct ice_info_ctx *ctx);
 } ice_devlink_versions[] = {
 	fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
@@ -194,60 +209,72 @@ static int ice_devlink_info_get(struct devlink *devlink,
 				struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
-	char buf[100];
+	struct ice_info_ctx *ctx;
 	size_t i;
 	int err;
 
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
 	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Unable to set driver name");
-		return err;
+		goto out_free_ctx;
 	}
 
-	ice_info_get_dsn(pf, buf, sizeof(buf));
+	ice_info_get_dsn(pf, ctx);
 
-	err = devlink_info_serial_number_put(req, buf);
+	err = devlink_info_serial_number_put(req, ctx->buf);
 	if (err) {
 		NL_SET_ERR_MSG_MOD(extack, "Unable to set serial number");
-		return err;
+		goto out_free_ctx;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(ice_devlink_versions); i++) {
 		enum ice_version_type type = ice_devlink_versions[i].type;
 		const char *key = ice_devlink_versions[i].key;
 
-		err = ice_devlink_versions[i].getter(pf, buf, sizeof(buf));
+		memset(ctx->buf, 0, sizeof(ctx->buf));
+
+		err = ice_devlink_versions[i].getter(pf, ctx);
 		if (err) {
 			NL_SET_ERR_MSG_MOD(extack, "Unable to obtain version info");
-			return err;
+			goto out_free_ctx;
 		}
 
+		/* Do not report missing versions */
+		if (ctx->buf[0] == '\0')
+			continue;
+
 		switch (type) {
 		case ICE_VERSION_FIXED:
-			err = devlink_info_version_fixed_put(req, key, buf);
+			err = devlink_info_version_fixed_put(req, key, ctx->buf);
 			if (err) {
 				NL_SET_ERR_MSG_MOD(extack, "Unable to set fixed version");
-				return err;
+				goto out_free_ctx;
 			}
 			break;
 		case ICE_VERSION_RUNNING:
-			err = devlink_info_version_running_put(req, key, buf);
+			err = devlink_info_version_running_put(req, key, ctx->buf);
 			if (err) {
 				NL_SET_ERR_MSG_MOD(extack, "Unable to set running version");
-				return err;
+				goto out_free_ctx;
 			}
 			break;
 		case ICE_VERSION_STORED:
-			err = devlink_info_version_stored_put(req, key, buf);
+			err = devlink_info_version_stored_put(req, key, ctx->buf);
 			if (err) {
 				NL_SET_ERR_MSG_MOD(extack, "Unable to set stored version");
-				return err;
+				goto out_free_ctx;
 			}
 			break;
 		}
 	}
 
-	return 0;
+out_free_ctx:
+	kfree(ctx);
+	return err;
 }
 
 enum ice_devlink_param_id {
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
