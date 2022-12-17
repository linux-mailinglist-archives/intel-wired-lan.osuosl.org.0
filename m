Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC1764F7BA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 06:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E798741BDD;
	Sat, 17 Dec 2022 05:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E798741BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671253667;
	bh=zDdN3+yhCod452rxxipHaA5HGgCVaTe0ZAdf5q6mdOM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wZdi1X5KGGaVbjXyjetfaLfomGBjd9Wxj6xkag+IgmkHnh0zAb+xVHAimWy0kr9ag
	 C7s7DsM53mK/4z20rfh9TV4GhwgJO4MypZroZ0/1l6kt5jYteWYBZrmzal/3j41zsb
	 J07STF0lDIUG0ufyZxs3VsjlLHBlVVJX6QHz3hhDScfbywMK7+I9kYOaM0rlDkLIBZ
	 IRm07vg4mZvlfmI/I2QdGnqVtoaRfKnluUkdE9arI5Unp1X5Jgn6ZpMuY172K9KK8H
	 a/RsTpjPmJxPwlPEXYhF3a/bG5X9doMqTTdTufYf8jU6i/vPVilZZ7njIGNvE6GXK9
	 qkYeSlOw0ni1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcq7cee6kkUR; Sat, 17 Dec 2022 05:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B58D41BC1;
	Sat, 17 Dec 2022 05:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B58D41BC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523BB1BF38B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7610D611A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7610D611A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R0h7pPfhhYKG for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80BC2611A4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80BC2611A4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="316741934"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="316741934"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="643479302"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="643479302"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.163.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:22 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 21:07:13 -0800
Message-Id: <20221217050714.314-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
References: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671253643; x=1702789643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oKN2XJmBMW2hQsY8Osk6sCk5ma6r/YWNH5v5WfjbiKA=;
 b=Ry1Mv1XoGkXl9rk+HpdDtI9MBHgMfVJPH0RqpRDoX4IzK3VvZV04EYnh
 F1FqUs6bzk02s6dcjN0MlG+/vheBDDd4eLqGxSdxzlA62aXf6CX2nzOTE
 Mv9DtiUsuUuTQpjfuUP4YwggaegV8dO/MvdNhLYeEU15cJQLujUGy9LJh
 FaUrK+uO7+iKOahVkrGrmyv3fTy/ZTBWm+YcLHIwRAzZgMN0v5Bo8NbFZ
 YAmmvBD2aQ6KKJ9cDw3bwr0wGDq7VUIeHr8Y0GD91rrcZfBKwM8OCu+tI
 EinZklZ7LkUY0w3vzUE10NTWNcqkdeKUXZBvqlzEgIBBRGNtmyZ0azJHB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ry1Mv1Xo
Subject: [Intel-wired-lan] [PATCH net-next v4 4/5] ice: disable FW logging
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
