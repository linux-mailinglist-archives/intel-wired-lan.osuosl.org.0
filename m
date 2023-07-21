Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2C475CC9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 717F9613A9;
	Fri, 21 Jul 2023 15:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 717F9613A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689954719;
	bh=/y9j8QYD38k+fj+yk4g9/KzxS75y78zAi2dZHaTd5nY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=avy1Be2Ua409LmUIBL0b2ty6vXORHlZLaU786VnK/TrhmjjQpuWyvALNoZVO22O8r
	 g96Nd0HwH2s3K0Z5JNTgnD/Grg0VA9uxpsu/gbuNBr6bU+FvTsztke8uaAWsts3XDj
	 y44mJHWbWH39OfwgBhjpicH1NX5wj30dXYD9Nwn9keb0nHFhskAp8QfCZtPz936+tw
	 M8QQX+eIhIFS5ceI+XxYLm8dN33jZPFUn1zuSjTOuJcQ9T/kyzKfpdaqd+rSn7gFeM
	 knaK2ZiR32yUhNOdBx93+7u9o77kiTJwlladO3jknYHTcune2kaYiyiCxKGymTy5dv
	 kGuv+1q/irCjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chHSrngEktem; Fri, 21 Jul 2023 15:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61DE361369;
	Fri, 21 Jul 2023 15:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61DE361369
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23BF21BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A7948227F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A7948227F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nAze932q1r6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:51:45 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 539ED82272
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 539ED82272
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="369721915"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="369721915"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:44:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="815005781"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="815005781"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2023 08:44:38 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Jul 2023 17:44:23 +0200
Message-Id: <20230721154424.11834-3-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230721154424.11834-1-michal.michalik@intel.com>
References: <20230721154424.11834-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689954705; x=1721490705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Sm2PMAMZytlSL1hzsQgX9U5Ak/vQwq5Qf9WwVlsqNYo=;
 b=WYjA3w87hy3ufnClGWd5k2oPS3krWpUSTQElC5/kjvyU9XhpjXp1tave
 SipWlg3I0vjZkg+c4JXk6TyrBefrJsXjs6+2rmerlWU6mQjt3+S2pYgVs
 cRUJzGhWnl8W+aeIlf6jMj9/7cs8gCWl2OYFNAGuHr5X/K1lxSpLZBfPS
 DNarirZg4c5ijZ7/UH7haHraqr/iiUx4bBI2XCBVol/EdNJnG+A/3sB21
 QCJ4VGpw+F91Sz/YWckdIq8Ag4uTQr/vzBgD75A8fgcmXOUH2roYYpxwf
 Z8/cbJCqnCtLdVGl7+ijZ/LF7wkLiNsEZzJHJ9K5r8yEQ/1O53ga1+4gl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WYjA3w87
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Use PTP auxbus for
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
index e144978..69a2bd0 100644
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
