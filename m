Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6694D64F7A7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 05:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3214821C9;
	Sat, 17 Dec 2022 04:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3214821C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671253150;
	bh=zDdN3+yhCod452rxxipHaA5HGgCVaTe0ZAdf5q6mdOM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iVCnQ0ldJmSY8Gd9rUfhoW5e6QUGItAlfeSIT0AQbAN8PQlcxU0yPkS9GSWPGOYCq
	 tw9j5bO3BSQAzBTA6p9XtEGuqZN92rgmboIRHIQlEpVhDajqaeInf2s1XTv3eCAF4q
	 disSkVm3wiUL+2vRKGL2+IrykhBJiNFOnvVlJF6zOAeShqR0gx371S3UXSHOJO+LSs
	 jQaRNk44JwBxfU6uhJeyOhZIPmJWoJiFmhd286fvn+pi+Wr+0XkdiYSvjOAptnvIBn
	 yQ8+ecMiRJLDR9HNMYL5dcwLIGPmD8dMGA1qlNI6CvGj8/Ut5JM4+TwmUcr4ikXzeQ
	 S2JQqus53HaKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gVtBNwrz_Dqo; Sat, 17 Dec 2022 04:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABCC4821C0;
	Sat, 17 Dec 2022 04:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABCC4821C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 571D51BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C3A8611A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C3A8611A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1wMj75td1NUv for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 04:59:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52BD611A1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C52BD611A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:59:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="317795020"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="317795020"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 20:58:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="627772685"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="627772685"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.163.232])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 20:58:58 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 20:58:27 -0800
Message-Id: <20221217045828.222-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221217045828.222-1-paul.m.stillwell.jr@intel.com>
References: <20221217045828.222-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671253140; x=1702789140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oKN2XJmBMW2hQsY8Osk6sCk5ma6r/YWNH5v5WfjbiKA=;
 b=aZLQRPpjZcem95mDDlsyXgUKUqaW+0j8pxGY94h/ZHIKtlhQMJyMrFFh
 QvwWyrAgaDXhPVVVjt9+ZhoOCVN6jONtkEXvkv3dljJFvv36DOOZwHKH/
 kjlwWfLHBZWD4JTeWmWQ9/gL77BfausYEE1i9wODHAgW9bHpn+Zd+ZARX
 j2XRpEueXJvUa/MFSObAjkIYoIvLFxnkSBaPAOBTTmhbYQIMpATAoMhLV
 iPAo5s4oH1MDgsEjq+gSd2UsN+O9HGZ2314zH9dMR7MdeMqrulHexotC2
 HZ5gj2UZToO6Gi9sG21HMRLqFf+1Q+x8gIx5+SwL66p77z2ETH8Pk5Ewz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aZLQRPpj
Subject: [Intel-wired-lan] [PATCH net-next v3 4/5] ice: disable FW logging
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
index 297dd960b30c..79c77211c690 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4619,6 +4619,33 @@ static int ice_register_netdev(struct ice_pf *pf)
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
@@ -5067,6 +5094,8 @@ static void ice_remove(struct pci_dev *pdev)
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
