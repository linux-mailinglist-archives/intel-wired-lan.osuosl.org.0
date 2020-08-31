Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B107C2578B9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Aug 2020 13:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58A1987941;
	Mon, 31 Aug 2020 11:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTH1i31x-JRW; Mon, 31 Aug 2020 11:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E305C87987;
	Mon, 31 Aug 2020 11:53:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA4941BF477
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Aug 2020 11:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3379847DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Aug 2020 11:53:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5aGlypHrBk89 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Aug 2020 11:53:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2499845C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Aug 2020 11:53:35 +0000 (UTC)
IronPort-SDR: JDuOYDELmomxMkGdFgcQKe12E/H44zNRHOww+5wqiVvTwgL7YOk/vYJIcId3khIq0azp7+xG71
 6z+8Ad0S+xPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="154479238"
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="154479238"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 04:53:35 -0700
IronPort-SDR: yJKm+X7PIh1IXxsQSIQb7NiT6rjhBAC+gEj3smOiLwOAEinND7vik+13Kepy6OVgJZ08XYGu2W
 MB39cQFlZNiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="296901143"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.161.198])
 by orsmga003.jf.intel.com with ESMTP; 31 Aug 2020 04:53:33 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Aug 2020 14:53:29 +0300
Message-Id: <20200831115329.1238812-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.18.4
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove reset disable flag
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Boolean reset disable flag not applicable for i225 device and
could be removed.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index b70253fb8ebc..17d6669959db 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -158,7 +158,6 @@ struct igc_phy_info {
 	u8 mdix;
 
 	bool is_mdix;
-	bool reset_disable;
 	bool speed_downgraded;
 	bool autoneg_wait_to_complete;
 };
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
