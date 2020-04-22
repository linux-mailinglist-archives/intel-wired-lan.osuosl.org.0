Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6528A1B3A72
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 10:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12A6F20002;
	Wed, 22 Apr 2020 08:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SxR0S5KXuGx4; Wed, 22 Apr 2020 08:41:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5930C22008;
	Wed, 22 Apr 2020 08:41:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F07CB1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 08:41:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E40FE8758F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 08:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajx0-10IHsXZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2020 08:41:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFBC185E14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 08:41:56 +0000 (UTC)
IronPort-SDR: jnEiKOLNfAglqT/ElCL3ExhnbG8z4AlQuN9yDAz3kafddoJQvCDKM5eAPVSIEmk0U0Ex4tD1zu
 fxDEqQAAZhDA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 01:41:56 -0700
IronPort-SDR: AVLUdilt7uxum+NOoy2XF7jppl+6fHK2UnPH84FW2vkQDJOgk4pSk9hbvbWbHngh9VOFO7iMaG
 DgKuPsvob3kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,413,1580803200"; d="scan'208";a="273814595"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga002.jf.intel.com with ESMTP; 22 Apr 2020 01:41:55 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Apr 2020 11:41:55 +0300
Message-Id: <20200422084155.36971-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove header redirection
 register
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

Header redirection missed packet counter not applicable for i225 device.
This patch comes to clean up this register.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index f2654f379d88..79bd104363ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -199,7 +199,6 @@
 #define IGC_HGOTCL	0x04130  /* Host Good Octets Transmit Count Low */
 #define IGC_HGOTCH	0x04134  /* Host Good Octets Transmit Count High */
 #define IGC_LENERRS	0x04138  /* Length Errors Count */
-#define IGC_HRMPC	0x0A018  /* Header Redirection Missed Packet Count */
 
 /* Time sync registers */
 #define IGC_TSICR	0x0B66C  /* Time Sync Interrupt Cause */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
