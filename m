Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE7442B6F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 08:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1492C40103;
	Wed, 13 Oct 2021 06:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Ldi2umGqD0A; Wed, 13 Oct 2021 06:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6424401E5;
	Wed, 13 Oct 2021 06:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19E6F1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 06:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0CC8240792
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 06:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lKqr2lQrHuF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 06:19:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5790540604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 06:19:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227317167"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="227317167"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 23:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="441526413"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.56])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2021 23:19:30 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Oct 2021 09:19:26 +0300
Message-Id: <20211013061926.464744-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused _I_PHY_ID define
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

_I_PHY_ID not in use. Clean up the code accordingly,
and get rid of the unused define

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index fad27a4fea78..910ad1a0d375 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -605,9 +605,6 @@
 #define PHY_1000T_CTRL		0x09 /* 1000Base-T Control Reg */
 #define PHY_1000T_STATUS	0x0A /* 1000Base-T Status Reg */
 
-/* Bit definitions for valid PHY IDs. I = Integrated E = External */
-#define I225_I_PHY_ID		0x67C9DC00
-
 /* MDI Control */
 #define IGC_MDIC_DATA_MASK	0x0000FFFF
 #define IGC_MDIC_REG_MASK	0x001F0000
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
