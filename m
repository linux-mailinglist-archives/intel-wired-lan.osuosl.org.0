Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06993419E1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 20:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91EC160641;
	Mon, 27 Sep 2021 18:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1vk1KMNup3P; Mon, 27 Sep 2021 18:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E7C16060E;
	Mon, 27 Sep 2021 18:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97D471BF484
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93C50404D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ln0Ux0DcMWlx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 18:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DAA6F404D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 18:24:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310086161"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="310086161"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="706109863"
Received: from bcreeley-st-desk.jf.intel.com ([10.166.244.126])
 by fmsmga006.fm.intel.com with ESMTP; 27 Sep 2021 11:24:27 -0700
From: Brett Creeley <brett.creeley@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 Sep 2021 11:21:50 -0700
Message-Id: <20210927182150.234879-1-brett.creeley@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Print the api_patch as part of
 the fw.mgmt.api
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

Currently when a user uses "devlink dev info", the fw.mgmt.api will be
the major.minor numbers as shown below:

devlink dev info pci/0000:3b:00.0
pci/0000:3b:00.0:
  driver ice
  serial_number 00-01-00-ff-ff-00-00-00
  versions:
      fixed:
        board.id K91258-000
      running:
        fw.mgmt 6.1.2
        fw.mgmt.api 1.7 <--- No patch number included
        fw.mgmt.build 0xd75e7d06
        fw.mgmt.srev 5
        fw.undi 1.2992.0
        fw.undi.srev 5
        fw.psid.api 3.10
        fw.bundle_id 0x800085cc
        fw.app.name ICE OS Default Package
        fw.app 1.3.27.0
        fw.app.bundle_id 0xc0000001
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x2a76e110
      stored:
        fw.mgmt.srev 5
        fw.undi 1.2992.0
        fw.undi.srev 5
        fw.psid.api 3.10
        fw.bundle_id 0x800085cc
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x2a76e110

There are many features in the driver that depend on the major, minor,
and patch version of the FW. Without the patch number in the output for
fw.mgmt.api debugging issues related to the FW API version is difficult.
Also, using major.minor.patch aligns with the existing firmware version
which uses a 3 digit value.

Fix this by making the fw.mgmt.api print the major.minor.patch
versions. Shown below is the result:

devlink dev info pci/0000:3b:00.0
pci/0000:3b:00.0:
  driver ice
  serial_number 00-01-00-ff-ff-00-00-00
  versions:
      fixed:
        board.id K91258-000
      running:
        fw.mgmt 6.1.2
        fw.mgmt.api 1.7.9 <--- patch number included
        fw.mgmt.build 0xd75e7d06
        fw.mgmt.srev 5
        fw.undi 1.2992.0
        fw.undi.srev 5
        fw.psid.api 3.10
        fw.bundle_id 0x800085cc
        fw.app.name ICE OS Default Package
        fw.app 1.3.27.0
        fw.app.bundle_id 0xc0000001
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x2a76e110
      stored:
        fw.mgmt.srev 5
        fw.undi 1.2992.0
        fw.undi.srev 5
        fw.psid.api 3.10
        fw.bundle_id 0x800085cc
        fw.netlist 3.10.2000-3.1e.0
        fw.netlist.build 0x2a76e110

Fixes: ff2e5c700e08 ("ice: add basic handler for devlink .info_get")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 Documentation/networking/devlink/ice.rst     | 9 +++++----
 drivers/net/ethernet/intel/ice/ice_devlink.c | 3 ++-
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index a432dc419fa4..5d97cee9457b 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -30,10 +30,11 @@ The ``ice`` driver reports the following versions
         PHY, link, etc.
     * - ``fw.mgmt.api``
       - running
-      - 1.5
-      - 2-digit version number of the API exported over the AdminQ by the
-        management firmware. Used by the driver to identify what commands
-        are supported.
+      - 1.5.1
+      - 3-digit version number (major.minor.patch) of the API exported over
+        the AdminQ by the management firmware. Used by the driver to
+        identify what commands are supported. Historical versions of the
+        kernel only displayed a 2-digit version number (major.minor).
     * - ``fw.mgmt.build``
       - running
       - 0x305d955f
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 14afce82ef63..da7288bdc9a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -63,7 +63,8 @@ static int ice_info_fw_api(struct ice_pf *pf, struct ice_info_ctx *ctx)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u", hw->api_maj_ver, hw->api_min_ver);
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", hw->api_maj_ver,
+		 hw->api_min_ver, hw->api_patch);
 
 	return 0;
 }
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
