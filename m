Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB50A60DA03
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Oct 2022 05:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2136060BC1;
	Wed, 26 Oct 2022 03:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2136060BC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666755894;
	bh=UpCwCfHYoMitp5v2DYZkE+b5v0P5yIR4sO0YiGd3NJg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mhJILgrcL7H6GmZJP4lot8Rmd1SU0qr6OxiM9kCJg4mJqlYM16u0DecUEbLdXlKMY
	 qLUKcR6H8n9U/gRsD1vWgwRPldJEiJ2fNOm9ls5ssgJMQdW1TKRTMMeoTt3puQh8F5
	 qVv7lpYpnNb3Ou98tNtvOpvLk/oB27NEiGlXJ3gbHVFALX/CXpU+J3lUeFF+tDtx8S
	 48PCNQmRvpSZE2bqKPExSoJL/jrPGyf9tW/1XQLyAAAN3Sd8xLpwU+7RHbdCpEMQ4V
	 JK6L6Pa2xmRE6r03LdvAdGx17/o7eMrWbbcM+YTPQ61KzA41LVlpWU5gxLh9vqla3o
	 zWwRWte57ytAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FhdlU6i4zvFc; Wed, 26 Oct 2022 03:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BCC860BAC;
	Wed, 26 Oct 2022 03:44:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BCC860BAC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C2451BF41A
 for <intel-wired-lan@osuosl.org>; Wed, 26 Oct 2022 03:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76D5340260
 for <intel-wired-lan@osuosl.org>; Wed, 26 Oct 2022 03:44:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76D5340260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLJU8ve2Ss5a for <intel-wired-lan@osuosl.org>;
 Wed, 26 Oct 2022 03:44:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2FF94000B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2FF94000B
 for <intel-wired-lan@osuosl.org>; Wed, 26 Oct 2022 03:44:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="287569111"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="287569111"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 20:44:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609808355"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="609808355"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2022 20:44:36 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 26 Oct 2022 11:42:55 +0800
Message-Id: <20221026034255.12999-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666755886; x=1698291886;
 h=from:to:cc:subject:date:message-id;
 bh=+XEyJ4KavpOdA/VEElYKTb+tMorsPJL60sg6WoEa8U0=;
 b=SSpdgaK4EQRVgpQ45gK1Dks5q9o3wYHTF0vWG5LZuq+auPTKA/KakzDw
 wXYXonBtxoUd+Sa0NZuIiRcEFsBlkgBJl6glt32XyHD35AkHwtvwETlpi
 8sh3Ki1VqRoQ5B4SxLRYm56i8Ftr3I4IvsYSvZ02VtiYZFKkyHChR3ki0
 s961v6Te7JEvvXYctGR+vcTV9q0PiUpE15mg8EnPrxP8wu3n6kKk6Vggx
 GiF0L2vPARkjWy4WfeytCfJsKMvjl9Y20LcKRz+yDrEMMPceIdOyHgz9p
 8Vw4flvUx4tRAf1KW5Sd4l5Kir7x/Yt4DI2Ps7L6jwMdRMSj6IDd+UgWw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SSpdgaK4
Subject: [Intel-wired-lan] [PATCH v1] igc: Use strict cycles for Qbv
 scheduling
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
Cc: muhammad.husaini.zulkifli@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Configuring strict cycle mode in the controller forces more well
behaved transmissions when taprio is offloaded.

When set this strict_cycle and strict_end, transmission is not
enabled if the whole packet cannot be completed before end of
the Qbv cycle.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f975ed807da1..684aedd4d088 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -140,15 +140,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		wr32(IGC_STQT(i), ring->start_time);
 		wr32(IGC_ENDQT(i), ring->end_time);
 
-		if (adapter->base_time) {
-			/* If we have a base_time we are in "taprio"
-			 * mode and we need to be strict about the
-			 * cycles: only transmit a packet if it can be
-			 * completed during that cycle.
-			 */
-			txqctl |= IGC_TXQCTL_STRICT_CYCLE |
-				IGC_TXQCTL_STRICT_END;
-		}
+		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
+			IGC_TXQCTL_STRICT_END;
 
 		if (ring->launchtime_enable)
 			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
