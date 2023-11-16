Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100937EE0AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 13:30:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ADF440BFE;
	Thu, 16 Nov 2023 12:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ADF440BFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700137831;
	bh=bbJ3dXkF+6PLTnmzIsL2YMMWEK2oJFb7tKAS6zQmuEs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vtvPgvDyi7MDnauEFGnQVWsaxGfSfunCxbvART8ythUmJw/RLn2mXFsMA/3kynWTF
	 bfCnf3Sd5FF8WNnpz2RE7JbXllKFwytZYdBnLOGzGpWW/ExcQgJqH21sjyjQr+036g
	 9kDz2PwQPRcOIdkW+9FD1ajo/618EV/HwCeF/2T3ZyuHZTRNvmQHQz4RKEqLUD1HX4
	 Lk+FaHB5ROChRdQkw5cxj1uG/i58UeZl7n/WVE2ZOheQGbTdntjJpebkEpKBkFP6tr
	 dpPdpXCHB9q8PbWSSFO8EFwMv7uZhBhcrUMINHilyc3GZD3H8J5uyVs3oaTm2nChcs
	 TJ3ULbjN3KapQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8v3hgPfZmqI; Thu, 16 Nov 2023 12:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BC1240B67;
	Thu, 16 Nov 2023 12:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BC1240B67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAEE1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52A5861090
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52A5861090
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3-UnzoioFO-C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 12:30:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D0F66106D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 12:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D0F66106D
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="376124122"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="376124122"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:30:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="13104740"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Nov 2023 04:30:19 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Nov 2023 13:27:30 +0100
Message-Id: <20231116122730.1213286-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700137821; x=1731673821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C6wPRr8z5NSnZIjkmhUN8oGKbjfcUkyQC6F4mZwPDxY=;
 b=WJfpIYCiIqgWqpTeuVv23k+E/ONVGwR5aGHyEjikClQ97WltkUcyIy4A
 tlvhWjkvTS6EBFD7rN36auv1tNHpr1cEKUJGT8lBUMod1e9Qg17qveQLH
 zJ1ZLvR+0emHevnBESS0JhtCDWwJz9yIuTLFhU8TeKPE/m0HhEiO/6J50
 YSffxaKl6od9eaKG/Puz2eJUNmEC11jTqEx/szVsQ+Q+CewEQhcTSF+Xs
 JhVDVmBWAm0fe9ACDNRnSmBrWFIVJudcOME3Ad4TaE5caBT7raOxUSvNe
 j1B7mNn5xh2Z7D1hV5XVmmAhN99RseH8QGyZCeKU/59jDh7zJF0NebWqx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WJfpIYCi
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add CGU info to devlink
 info callback
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If Clock Generation Unit is present on NIC board user shall know its
details.
Provide the devlink info callback with a new:
- fixed type object (cgu.id) indicating hardware variant of onboard CGU,
- running type object (fw.cgu) consisting of CGU id, config and firmware
versions.
These information shall be known for debugging purposes.

Test (on NIC board with CGU)
$ devlink dev info <bus_name>/<dev_name> | grep cgu
        cgu.id 36
        fw.cgu 8032.16973825.6021

Test (on NIC board without CGU)
$ devlink dev info <bus_name>/<dev_name> | grep cgu -c
0

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 Documentation/networking/devlink/ice.rst     |  9 +++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c | 20 ++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 2f60e34ab926..7f30ebd5debb 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -38,6 +38,10 @@ The ``ice`` driver reports the following versions
       - fixed
       - K65390-000
       - The Product Board Assembly (PBA) identifier of the board.
+    * - ``cgu.id``
+      - fixed
+      - 36
+      - The Clock Generation Unit (CGU) hardware revision identifier.
     * - ``fw.mgmt``
       - running
       - 2.1.7
@@ -104,6 +108,11 @@ The ``ice`` driver reports the following versions
       - running
       - 0xee16ced7
       - The first 4 bytes of the hash of the netlist module contents.
+    * - ``fw.cgu``
+      - running
+      - 8032.16973825.6021
+      - The version of Clock Generation Unit (CGU). Format:
+        <CGU type>.<configuration version>.<firmware version>.
 
 Flash Update
 ============
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index f4e24d11ebd0..65be56f2af9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -193,6 +193,24 @@ ice_info_pending_netlist_build(struct ice_pf __always_unused *pf,
 		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
 }
 
+static void ice_info_cgu_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	u32 id, cfg_ver, fw_ver;
+
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return;
+	if (ice_aq_get_cgu_info(&pf->hw, &id, &cfg_ver, &fw_ver))
+		return;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u", id, cfg_ver, fw_ver);
+}
+
+static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
+{
+	if (!ice_is_feature_supported(pf, ICE_F_CGU))
+		return;
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u", pf->hw.cgu_part_number);
+}
+
 #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter, NULL }
 #define running(key, getter) { ICE_VERSION_RUNNING, key, getter, NULL }
 #define stored(key, getter, fallback) { ICE_VERSION_STORED, key, getter, fallback }
@@ -235,6 +253,8 @@ static const struct ice_devlink_version {
 	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
 	combined("fw.netlist", ice_info_netlist_ver, ice_info_pending_netlist_ver),
 	combined("fw.netlist.build", ice_info_netlist_build, ice_info_pending_netlist_build),
+	fixed("cgu.id", ice_info_cgu_id),
+	running("fw.cgu", ice_info_cgu_fw_build),
 };
 
 /**
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
