Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF6B75AE38
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 14:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7282682100;
	Thu, 20 Jul 2023 12:21:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7282682100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689855718;
	bh=lzb9xgHW7a1zVVlYJ6SXBfsA6rtZcLiLrgubF56FOec=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qKrAx+hOrKUj9Izh6Gwj44u5BHjHVyKiHBsY5bRvpIKAPguu84GJbBoM7rHOGWtp3
	 VCtHfz4Au+j85XPKGayG33w6BbsvgNuBXCPUxQl39MsXpCY1eEyzTyXZNegV6TdsDg
	 5caxl4yrZNSHLoQr2e7INgS1EJ2SoSZ5XJrOe85Xc86RJbfOQ6EVmSPXRAAjPtZme9
	 YanHVodo9koCopkXf2lbiy8wIds5FXg5GzGdy4Ys/Arn5hhzd+HlbNdBIu8ggf/Rp/
	 hHdb1Pc6nMt1U4svPUtjJYvA1qhXeSlUZIzQg874iXbPhpG+ZWwxJfNYTWYBdI++bk
	 iyL1FcUPueYnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiqvTsMH7O3I; Thu, 20 Jul 2023 12:21:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61F0280FA6;
	Thu, 20 Jul 2023 12:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61F0280FA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 059B31BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 618E6417AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 618E6417AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFQ8QRZVFq8S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 12:21:46 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E29D41B98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E29D41B98
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="366742990"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="366742990"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="718368016"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="718368016"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2023 05:14:20 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jul 2023 14:13:56 +0200
Message-Id: <20230720121357.26739-3-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230720121357.26739-1-michal.michalik@intel.com>
References: <20230720121357.26739-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689855706; x=1721391706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Bvz7a9ISuLKyUY7GHVUMsJVxpxijKWoAn6sAxRT4Z98=;
 b=YvIYS3oUZQ/4+lPtyu1FC5nmYZFigX/kDDM7HnjimxkZcWUuIP/M6q2J
 iUizcHPN6V+C0i4wm3htgkaHkb2XMRGAdCdTyyl9/NkfbBdOKP5ps7pxv
 Ems7nvAL7Abkw7nJ0ZpboKmxXZY24OG6RIqOc3R7d4TEY8Zwe95dUI6A9
 NBiM4lJJRaCNyFWnocNPkUEqaQDR2i7lOJH48mus5Yx4Vp6TTe15/twfi
 V98ar8MZCu8OIEoNNi4/BvLcDGMKI4slOLAyjAU+k3rpJOm0vGeX0JpMy
 2958d/eSmOdhJ+H9ZaDjFcIo8qJiWitmQpJiysBeo0NUNLBVcuFSfns6l
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YvIYS3oU
Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] ice: Use PTP auxbus for
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9a2cd038..7fced6e 100644
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
+	if (!ice_is_e810(hw))
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
