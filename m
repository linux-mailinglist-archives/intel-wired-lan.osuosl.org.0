Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D167D210A4E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jul 2020 13:30:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66F008AA49;
	Wed,  1 Jul 2020 11:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbE7G05It8wn; Wed,  1 Jul 2020 11:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C13A98ABBC;
	Wed,  1 Jul 2020 11:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5113D1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 11:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4785A2E10C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 11:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vVBRIwTZZPFN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 11:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F7432E009
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 11:30:45 +0000 (UTC)
IronPort-SDR: dFMNeYFwsTFP8hajiVK+MSunZlrWJM+JG7SK2pcgknKUFpJYXZ6K6WWfBgK+ynuRjmbsxS0HQA
 3Kq9YqnoxRjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="126166666"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="126166666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 04:30:44 -0700
IronPort-SDR: bf5ZW3f6NR/mVMbmJ17Gd4Ms7KKyztLk0mmxbXMlYCsrHHYZ5V2o2a2Caw0TXZdm/RWiHEUBDm
 VWymt39DUzbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="356085183"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 04:30:43 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Jul 2020 14:30:43 +0300
Message-Id: <20200701113043.9053-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove ledctl_ fields from
 the mac_info structure
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

LED control currently not implemented.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 2ab7d9fab6af..8066749a55d0 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -83,9 +83,6 @@ struct igc_mac_info {
 	enum igc_mac_type type;
 
 	u32 collision_delta;
-	u32 ledctl_default;
-	u32 ledctl_mode1;
-	u32 ledctl_mode2;
 	u32 mc_filter_type;
 	u32 tx_packet_delta;
 	u32 txcw;
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
