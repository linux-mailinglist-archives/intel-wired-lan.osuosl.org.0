Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6050B6761A2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 00:35:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B969612DF;
	Fri, 20 Jan 2023 23:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B969612DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674257729;
	bh=UWXhdRY74yVctyZdZVyW3GMJzZ/SYF/ULTAONjwHGJ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g0+2Mv3xjHhSEVSZDxD57L9Ni3W+S8iJm0Z/atdm8IqOgio20lvb+TMvtgFjDHsN2
	 qxydElUR1Jfs/BpAt/ZTusp99riHEqFc7CPVkn7WKZeurkNmLQGkNBQUH5StzmL0+i
	 G0/mPIdMJO3aJqDl/tn3V+NTbblWSOp1YpXPXrfu3/PqQrpDmcvQMxsz2v2yR8pZni
	 f3yWJABMSETuV6Vu2xKS+vAp1MGP99u+IX/M3l8va9Z0iVOFzjrQpysIAx9BffxFEJ
	 OI7xIclmEmg5qodeq6p4gwkMvQPRmDXZk4HutDPGfxFGR1JMdkdjovrllRNIFBZQW1
	 G0hQm+hybPKyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfERx9HVW0UZ; Fri, 20 Jan 2023 23:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37E9F612CF;
	Fri, 20 Jan 2023 23:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37E9F612CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 910951BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72AB2416E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72AB2416E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BOQt2wK8pMup for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 23:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B856E416D5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B856E416D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327813070"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="327813070"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="784714857"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="784714857"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.130.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:20 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Jan 2023 15:35:10 -0800
Message-Id: <20230120233511.131-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
References: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674257721; x=1705793721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JijWtclPVDSYlHjj/7Yt8TraH6ix3A7jYktuaepZLCI=;
 b=X+LoA0KCR05Wb6S9Qty73oxN3imy/Zi3b4VSfkTqm8ihTnfnfSYK7mhM
 /7R5KILUrQneUtv2v+XhnTYTs9RkUQviY/jfQKKgkovY95oyjiO78Q2OD
 O+n/QHOkNJHPxvklgcbEWrsI63oUjzuHkKTcWTcaLbwtgYHBqNuua8txp
 d+ZcR7BxtSm+rz/DDyT4T1dVYg1fWlSRp7o8oRvIbalzLhaY070YqmWbf
 I+7GVAYF/MfJkxe+vrQMtBhHfHR/J+CYAAv20GZqAY81CKFmUL3lSuXGB
 /MbfSI4s+fh4f81/lVmcRPUJaOTvpapEq1Txw9F8RX01LYgtyaMJUTPLJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X+LoA0KC
Subject: [Intel-wired-lan] [PATCH net-next v7 4/5] ice: disable FW logging
 on driver unload
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

The FW is running in it's own context irregardless of what the driver
is doing. In this case, if the driver previously registered for FW
log events and then the driver unloads without informing the FW to
unregister for FW log events then the FW still has a timer running to
output FW logs.

The next time the driver loads and tries to register for FW log events
then the FW returns an error, but still enables the continued
outputting of FW logs. This causes an IO error to devlink which isn't
intuitive since the logs are still being output.

Fix this by disabling FW logging when the driver is being unloaded.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 03598d8d7a8c..c7aa47cea8b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4679,6 +4679,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
 	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
 }
 
+/**
+ * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
+ * @pf: pointer to the PF struct
+ */
+static void ice_pf_fwlog_deinit(struct ice_pf *pf)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	/* make sure FW logging is disabled to not put the FW in a weird state
+	 * for the next driver load
+	 */
+	if (hw->fwlog_ena) {
+		int status;
+
+		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
+		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
+		if (status)
+			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
+				 status);
+
+		status = ice_fwlog_unregister(hw);
+		if (status)
+			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
+				 status);
+	}
+}
+
 /**
  * ice_cfg_netdev - Allocate, configure and register a netdev
  * @vsi: the VSI associated with the new netdev
@@ -5416,6 +5443,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_pf_fwlog_deinit(pf);
+
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
