Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5095363B46B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 22:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ECA740A20;
	Mon, 28 Nov 2022 21:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ECA740A20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669672080;
	bh=9efej+XLTl5SER+eANMCq0yALdtHuJ3tsBz0t0yFRgE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MKUtMNCVeosDOnptAGDQNPK4FdQYxUVoGYUlM+Gq84X0S1NcuPuBx+snRua+NZfaL
	 ip07RB7CcpAr7nesTF5eq+fohGwfG/B37diYO6vMItONRm3kka//5i+2hpg6tsXERR
	 +eL2Lj34pvqW0qTRwAGsos2EOr3rEHMEt0YvlkGnWk9X45NhHVBkYPAcv3JdD9cpBj
	 ZNG62rAXtUlA/tffl9byGJoimrEHqx93yYKkDn7rpTZMY2Of/apOwOPwz/5eFUjkbg
	 NTZQjdE4Yq3E3L0XWji+d7b5W+jDypx1H3oglS0shHxNsQAn4Cw5tVB0UcX9p5wfzF
	 8QXiLvKm75odA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZT2pMOm78ELo; Mon, 28 Nov 2022 21:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E96F40A15;
	Mon, 28 Nov 2022 21:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E96F40A15
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 227BD1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0960B60B10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0960B60B10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2u53OCtBjPLS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 21:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB7C60AED
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB7C60AED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401240390"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401240390"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972430289"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="972430289"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.170.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:51 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 13:47:48 -0800
Message-Id: <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669672073; x=1701208073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NDkdnVl2vOniivHPJbd/kMED4+CaVOnlvRC0mOy6kyo=;
 b=l9/EdsIVg7ZBwN4bWk5H2PysIYoB0l5cKb/0H9DIO8TUmdgaaiaFwDic
 Ctutauk6R8j49tXEkAQ6PRMwyX6ytS9/v7BYqRapMKshjDjuonV0CIo8k
 yb4pIpuPOwkd5HcVFCfaRc5hvmMlJAdSIQkgh3ESe1m4nb/iIBdFQP+jn
 /VGRFqycWX/WeowXOz97tREi8nq4OIZvYot0T9hrttr5po9vuAV4i4lqw
 qK7hOfTU6GQCyAoAxlVySU2okVQ1ra0dNPANLddrO1R81iDc85dYp0Q9P
 Ms/QXTC7H0thYIaoMgGpe23JOX2dKG8U1DUwWkJ4MUaYKaZs7M7PumdQb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l9/EdsIV
Subject: [Intel-wired-lan] [PATCH net-next 4/5] ice: disable FW logging on
 driver unload
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
 drivers/net/ethernet/intel/ice/ice_devlink.c | 32 +++++++++++++++-----
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index ca67f2741f83..923556e6ae79 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -378,6 +378,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
 enum ice_devlink_param_id {
 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
 	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
+	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
+	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
+	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
+	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
 };
 
 /**
@@ -1484,14 +1488,6 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
-enum ice_devlink_param_id {
-	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
-	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
-	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
-	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
-	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
-};
-
 static int
 ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
 				struct devlink_param_gset_ctx *ctx)
@@ -1743,6 +1739,26 @@ void ice_devlink_register(struct ice_pf *pf)
  */
 void ice_devlink_unregister(struct ice_pf *pf)
 {
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
+
 	devlink_unregister(priv_to_devlink(pf));
 }
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
