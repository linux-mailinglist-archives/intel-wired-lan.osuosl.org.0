Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88495765557
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23F7441F37;
	Thu, 27 Jul 2023 13:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23F7441F37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690465896;
	bh=rKd5dboCpfFsq6ioXiMVfhxYW5TUAM7gGWkHW1ZpqnA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r2aLO0V9TRJJxsNZb0cq52orGkRbpyogxbxr6lb8cBN7BiJLb1XkbJBNRXf6cVCx7
	 VcYrpFRN4gjPSY7m6SWlSDuCl1JRYRMTrWXvaySCGOPJO1Chl7M0Av8Z68czBElVOl
	 S1XY0zG2PTKKUOfpT7PurP3JXN5Gi7XleI6KX265NklMTa8EvDDJEMY0BIv39OG8iV
	 BHpBqLa6BRR4kLhFVBOqMN6RWnsr4wiUCTj+Es+f7Ja5Hc9fOJ7uKdLfOrTNfmJvG4
	 REvSoCifihiNMfHD1rStHi33kiqvkWAN6lRmHMRybRSXWOP+OQWF8DUVhyY8rGerEK
	 zgMXXP3wzDuBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXoureZ8acCQ; Thu, 27 Jul 2023 13:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA32541C22;
	Thu, 27 Jul 2023 13:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA32541C22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 534C51BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A1BC40217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A1BC40217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nUvahyllwGjp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:51:22 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EF61400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EF61400D0
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399249099"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="399249099"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730271418"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="730271418"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 06:51:21 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 15:50:35 +0200
Message-Id: <20230727135037.28472-3-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230727135037.28472-1-michal.michalik@intel.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690465882; x=1722001882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=PWk/neYMB8BO/95V3+np8u9QsRh8PxxOHVAFWn4l11w=;
 b=ilpkDjIn9XvOi59J7sZdmUwxY8A5QFpYJt4tf2Sb9BP8iGStHS1DSvp8
 uRrx6wj7QRS0m3LPXfHKPB+cLNYfAF6OanBiP+8tth11+o8hVuF3OJOph
 Cxn/DxTiUkVk/w8y3gtAJqBmzRHJwZRqOtonw8tNe+MRVNa4qT2SQJdI+
 29jDDh1tNszLigQaBEOg0xSlDUHewl9Tk65CmK5wT7WKm6U3zKrui6QT6
 DtgtZ+XuZDrJ1mCyx94pflxtDN2iTprxGmHhff9Rt5zNJQ4apeLZbPI3v
 uqHqvlz8yBFoRbxuJ12j+hVoGdkilIgjNxEiT/cff9H6vQr1qwzf91cOB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ilpkDjIn
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ice: Use PTP auxbus for
 all PHYs restart in E822
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The E822 (and other devices based on the same PHY) is having issue while
setting the PHC timer - the PHY timers are drifting from the PHC. After
such a set all PHYs need to be restarted and resynchronised - do it
using auxiliary bus.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
v2 -> v3:
* use phy_model instead of ice_is_e8**

 drivers/net/ethernet/intel/ice/ice_ptp.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 941946e..30b532b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1491,6 +1491,24 @@ static void ice_ptp_reset_phy_timestamping(struct ice_pf *pf)
 }
 
 /**
+ * ice_ptp_restart_all_phy - Restart all PHYs to recalibrate timestamping
+ * @pf: Board private structure
+ */
+static void ice_ptp_restart_all_phy(struct ice_pf *pf)
+{
+	struct list_head *entry;
+
+	list_for_each(entry, &pf->ptp.ports_owner.ports) {
+		struct ice_ptp_port *port = list_entry(entry,
+						       struct ice_ptp_port,
+						       list_member);
+
+		if (port->link_up)
+			ice_ptp_port_phy_restart(port);
+	}
+}
+
+/**
  * ice_ptp_adjfine - Adjust clock increment rate
  * @info: the driver's PTP info structure
  * @scaled_ppm: Parts per million with 16-bit fractional field
@@ -1927,9 +1945,9 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	/* Reenable periodic outputs */
 	ice_ptp_enable_all_clkout(pf);
 
-	/* Recalibrate and re-enable timestamp block */
-	if (pf->ptp.port.link_up)
-		ice_ptp_port_phy_restart(&pf->ptp.port);
+	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
+	if (hw->phy_model == ICE_PHY_E822)
+		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
-- 
2.9.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
