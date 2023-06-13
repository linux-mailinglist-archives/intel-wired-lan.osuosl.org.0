Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4A772E1C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 13:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A35754063D;
	Tue, 13 Jun 2023 11:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A35754063D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686656166;
	bh=paZJNG3jygmGv4lGXHWtkKvR5RM/UCpq2uatkNpiFzQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Lmc8GWgfDDeGTNwIFYe3Qb5X/ntllmrZMs0oC0+SlF+eXkU7Er0nMr9l6gWud+LEq
	 oNm+Kj/Glqyl4F6zfphtSN2jJ1keXiFkoGcCp+TKPD4RVpQYTjP5RSrTeU47CLQ7Xo
	 apqkpsmmplUUt8B9eWUfhTmZx3cRCQm5+1U9eZO1c+TTiqzw9xsODjTg5gIM33yUXB
	 8BS3jnP3nUqqBniSlx0nmdoFQ7LDOjnrBkSn1Y5bliWIK8j1KPP/PYwGUdZYz58asQ
	 exp6VQU6gSMxF1B4Nt3LVGrWWzaGdn45oGbTHSJqc2EtM7rvUZus4hOVBZ9t/y5tVt
	 H7xwt1seKq7Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SuuiX1FJQ4yG; Tue, 13 Jun 2023 11:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DB0C408CB;
	Tue, 13 Jun 2023 11:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DB0C408CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A729D1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 11:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 767C4409FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 11:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 767C4409FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Zp4poli__Mi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 11:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D304D409F3
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D304D409F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 11:35:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="421900066"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="421900066"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 04:35:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="801439221"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="801439221"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2023 04:35:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 13:35:52 +0200
Message-Id: <20230613113552.336520-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686656158; x=1718192158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Av+c/b633S9bk+xfV7TrmvsJOzSsUmzTjPEr5rXGgJA=;
 b=P0bspMSX61LpX4H8yRpUCHVoL7YNcB8NyNuTBf4FMOjve1aZSvaOJ1r0
 qiy+05hJZta4xdsRdpHib+CpVG/6W8WRH7xFixt0NOl7SqW2fTbqLzSBW
 qXwr6Gx/vu+jZGImfdewSTtVrlehLy8VekiFmj6B+BxMqJyfDLjoGZO0b
 ALSsySoFks3fSKDUChGQzIEm9bNzqd4+/RXmzB95fp3VEGxi0NO2v2GqM
 Xgb0fn7nB6HGm1erfc6FBPohrpTF6OrO+ht5Pv4RIOnrbvdHwTGZ6f0Np
 YTB+f0TTFWzx5afxrwF/Dh2cawiDJsUJYV7fcmx97kiKqkMUe7HADNxDA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P0bspMSX
Subject: [Intel-wired-lan] [PATCH v2 iwl-next] ice: use ice_down_up() where
 applicable
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_change_mtu() is currently using a separate ice_down() and ice_up()
calls to reflect changed MTU. ice_down_up() serves this purpose, so do
the refactoring here.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---

v1->v2:
- avoid setting ICE_VSI_DOWN bit as ice_down_up() covers it [Przemek]

 drivers/net/ethernet/intel/ice/ice_main.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..8f7c6ef3c487 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7631,21 +7631,9 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	}
 
 	netdev->mtu = (unsigned int)new_mtu;
-
-	/* if VSI is up, bring it down and then back up */
-	if (!test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
-		err = ice_down(vsi);
-		if (err) {
-			netdev_err(netdev, "change MTU if_down err %d\n", err);
-			return err;
-		}
-
-		err = ice_up(vsi);
-		if (err) {
-			netdev_err(netdev, "change MTU if_up err %d\n", err);
-			return err;
-		}
-	}
+	err = ice_down_up(vsi);
+	if (err)
+		return err;
 
 	netdev_dbg(netdev, "changed MTU to %d\n", new_mtu);
 	set_bit(ICE_FLAG_MTU_CHANGED, pf->flags);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
