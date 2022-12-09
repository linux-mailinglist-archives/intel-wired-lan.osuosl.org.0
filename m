Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB19648B57
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Dec 2022 00:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B140741BA8;
	Fri,  9 Dec 2022 23:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B140741BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670628497;
	bh=+kdHW6vzkTsboPmuu1IRu1KC5Ffnmpw0kpnVNtDtZ6Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jrW9uwNvDAmtLOY4cgKSR8iARRKT84Y+T30RoOjrh0sanSZdQVX2JoOenw1YqwIeR
	 T/iHAJnHpqy2Cq9n9ZUSrVU4v93lSsdGwCQuWjImFQ+1DJE2lQfNw1LX4O3lv8nIWK
	 jMlNns9Oq5EGatk/dMGbBcaXP36Q+9as1kyuSnsGErFGyEf0lHIpBZ+5/DZzKEpj4t
	 vPdW4QligQXAYFztXKahctzyLkWxqJNoCZ0thODmq9HUMyqIpooqN0MOCXcDd+e6He
	 FcvXQQRvQEIgeBY7z4XsyijmP+mlZFtPR4O6P5qZeSQy4vsA8bWnerN1ZRl0JHHFoH
	 bsEhS30zzeE/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1l__TDi6WC4; Fri,  9 Dec 2022 23:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56BC841BA6;
	Fri,  9 Dec 2022 23:28:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56BC841BA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 110D91BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 23:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DD5460B0D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 23:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DD5460B0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L0Rg6yu4uqmg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Dec 2022 23:28:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D6E460B74
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D6E460B74
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Dec 2022 23:28:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="300990265"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="300990265"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 15:28:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="649712497"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="649712497"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.43.75])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 15:28:01 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Dec 2022 15:27:47 -0800
Message-Id: <20221209232748.189-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221209232748.189-1-paul.m.stillwell.jr@intel.com>
References: <20221209232748.189-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670628483; x=1702164483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGgDMFFirbnvGyhaO1585mJ/c6iOibE2MV/w/2wsMz4=;
 b=eiL5S8RKM6jDYq7f01uz4PkaWodokGos6UE5nBX5+380d1GgGqfOndCu
 E3dKPGFhC1VL3ph9osiWnenXsgOo8cxd/5WG5ueimQFfleJ0Os7Z+7MGH
 sdjEInRdau0A8VNVn72D8eIpBUTjrCaqC1EEIaamesT5HR+ukRCiEgj2W
 7HBcK/SlqzDfisrd5r8g5uvoyMxw7ErljBU7X7ngIveJOBBEv+34oyEIj
 shIHgc+NHiHrI0ycqKCfGqaxgg/oFZvwN4lnp/pPIo0citi6JTg/rR5Ig
 WofBClQrNTDgqJsFcgspDNS5nEpjB6nazatckqX7VFxhTZKfAoASzFqyq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eiL5S8RK
Subject: [Intel-wired-lan] [PATCH net-next v2 4/5] ice: disable FW logging
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
index cf0041a2b228..ecc890429550 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4688,6 +4688,33 @@ static int ice_register_netdev(struct ice_pf *pf)
 	return err;
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
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -5139,6 +5166,8 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	ice_pf_fwlog_deinit(pf);
+
 	ice_tc_indir_block_remove(pf);
 
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
