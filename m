Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DA624A8CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 23:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D832486341;
	Wed, 19 Aug 2020 21:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23M904LW7-8A; Wed, 19 Aug 2020 21:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A11086308;
	Wed, 19 Aug 2020 21:59:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 831261BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C9D3226A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r6aKEGlOtOH1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 21:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id A1328226B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:54 +0000 (UTC)
IronPort-SDR: vH7ioyYI2Oj5aBWPeSGoyh/R8WRED143pnncqKGKrDHOaB+79KqbCu8lxmxnYjaKB8Z8uD8kST
 fNmzb5iAEZxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="216734395"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="216734395"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 14:58:53 -0700
IronPort-SDR: MSMkjxabQlcfmKDJfwPAes2y1yeIGF0bbkxpujmGmBkv5IY4Il9JIx0h4UsDw6DB7JqyYxo445
 inTxRw8Jgz9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="329469946"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2020 14:58:53 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 19 Aug 2020 14:58:37 -0700
Message-Id: <20200819215838.3834786-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
In-Reply-To: <20200819215838.3834786-1-jacob.e.keller@intel.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/3] ice: add the DDP Track ID to devlink
 info
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

Add "fw.app.bundle_id" to display the DDP Track ID of the active DDP
package. This id is similar to "fw.bundle_id" and is a unique identifier
for the DDP package that is loaded in the device. Each new DDP has
a unique Track ID generated for it, and the ID can be used to identify
and track the DDP package.

Add documentation for the new devlink info version.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/ice.rst     | 5 +++++
 drivers/net/ethernet/intel/ice/ice_devlink.c | 8 ++++++++
 2 files changed, 13 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 237848d56f9b..aca5c009c0aa 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -69,6 +69,11 @@ The ``ice`` driver reports the following versions
       - The version of the DDP package that is active in the device. Note
         that both the name (as reported by ``fw.app.name``) and version are
         required to uniquely identify the package.
+    * - ``fw.app.bundle_id``
+      - 0xc0000001
+      - Unique identifier for the DDP package loaded in the device. Also
+        referred to as the DDP Track ID. Can be used to uniquely identify
+        the specific DDP package.
     * - ``fw.netlist``
       - running
       - 1.1.2000-6.7.0
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index d8ccf177190e..e1ec724c38c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -102,6 +102,13 @@ static int ice_info_ddp_pkg_version(struct ice_pf *pf, char *buf, size_t len)
 	return 0;
 }
 
+static int ice_info_ddp_pkg_bundle_id(struct ice_pf *pf, char *buf, size_t len)
+{
+	snprintf(buf, len, "0x%08x", pf->hw.active_track_id);
+
+	return 0;
+}
+
 static int ice_info_netlist_ver(struct ice_pf *pf, char *buf, size_t len)
 {
 	struct ice_netlist_ver_info *netlist = &pf->hw.netlist_ver;
@@ -146,6 +153,7 @@ static const struct ice_devlink_version {
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, ice_info_eetrack),
 	running("fw.app.name", ice_info_ddp_pkg_name),
 	running(DEVLINK_INFO_VERSION_GENERIC_FW_APP, ice_info_ddp_pkg_version),
+	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
 	running("fw.netlist", ice_info_netlist_ver),
 	running("fw.netlist.build", ice_info_netlist_build),
 };
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
