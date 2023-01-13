Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A04F366A5E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:23:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FDBB61159;
	Fri, 13 Jan 2023 22:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FDBB61159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673648618;
	bh=QwvkA7cpVHiy5JxGTis8mui90zaJcF7EW9tcjqXMREE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8AtlDOXrkm7fCw4ZVcv3zzbqMkECGsxodr1VIIa9sKXu5nq1Tb1xy4ILIM6ImDSFk
	 YBZX0gTecrPTo3LA7qb1Z2VS/nPH695ehg/UWNQDxKF3XeN1li4vg3ihGkQhDSwJG5
	 OjpD8lIfvq4ezm5AqPO5jyTZDxFN+BG+gX+m8/OgFkSmtRQEvbgAlxLQCneRtX2qx4
	 A9hRhWZKd23DBxUA7oTmVnplmVh4JKtdjeCRe2Xb77ebsFfEjwsTZFWjlhGY09jCkU
	 c8xM7ORnJgTLxfY2pLykPVdKJRip7lf0YXTlWZ5kHmfTwIQ7ZHm+xY/qTkj1Zt4isN
	 jthUL1HKTJ0fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqGsoDRLBB-T; Fri, 13 Jan 2023 22:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45A0F60093;
	Fri, 13 Jan 2023 22:23:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45A0F60093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBEDA1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9764940185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9764940185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02imIJN2DMV0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC911400C8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC911400C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="325372723"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="325372723"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="635919492"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="635919492"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.185.209])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:26 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Jan 2023 14:23:18 -0800
Message-Id: <20230113222319.111-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673648607; x=1705184607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8MAReFaH0OvbGBWVRE7WzE9MQnlZ4qThWJzG0RWOdLc=;
 b=Ns/ZQYSH73HKRb0CHEc1HGVs/Po6wF94o5FwaL83SCuRzpotBQDXHoy5
 v3Z3+5Pjj6n8qzzquzKLfl5Ha3ZKWX7IOMLu47X9+fpLHp/wvbjYNexsU
 F6I7ne8VKC6ZK03fjJRE0k/xl6oK/McIVaxuYkipyvh/qwZUnU9ZinL0c
 ZAh2QHjZCyUxTBlwqIYFdHVQIJ2RESf+sxhhU4XGTE4dMljEAK0tlP25u
 zrqRkNbrQdv5KeWi+31KARJIBNzl8WehQBF0VSPlXO8OzR6yzQ1u03kIX
 IEuG6v8yrd09Uu8ciplj/A06HeGLKsM+oVJKQaAHpienvL6e4xEgyskDK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ns/ZQYSH
Subject: [Intel-wired-lan] [PATCH net-next v6 4/5] ice: disable FW logging
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
index 9e610827966f..f24693e42e35 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4497,6 +4497,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
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
@@ -5234,6 +5261,8 @@ static void ice_remove(struct pci_dev *pdev)
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
