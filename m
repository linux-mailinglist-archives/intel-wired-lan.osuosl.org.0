Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB0A523320
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 14:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB19F6063B;
	Wed, 11 May 2022 12:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lX3a7Y7fWaBE; Wed, 11 May 2022 12:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B16A3610D1;
	Wed, 11 May 2022 12:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8481BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 642644049D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odrP7uBCumgT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 12:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1865940180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 12:29:11 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.101.196.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id E29D83F616; 
 Wed, 11 May 2022 12:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1652272143;
 bh=BmDFlIfQNeKeHtrDmolTavZYGTvT+TUesJSYirKtAaI=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=ERQih4Y3mFWFLZjpVZZlfw3n4PzKo5NAB/s8126P5SHo+sXYQ1blcPlSPNR+suBUM
 Za5ott4oG9OtIZkfIXF0/pPjYbhu2qIvRiRCush0P4RWmhsgQNmOAFbD7Qt4l4cTEn
 tQVLI8nyCBY8uYzamON/EI/TX1jPYhosRV2hxfBnCUxJ1UfWrMln9V/3Fy+f9IVqap
 5EDnPcKXnCyKtsEN5xrzmVCVgI9SoHNrwLqYlswCgKpLyr3RuK8fio3CqV+zyhf5X4
 lnOACtB0VjI033GbmDPLeHlVcIC1eSzVFpz/OcHg2G9qYjd6gKCR2GbUNojGCryHoL
 laBC9RbMCbMLA==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Wed, 11 May 2022 20:28:04 +0800
Message-Id: <20220511122806.2146847-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] igb: Remove duplicate defines
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's no need to define same thing twice.

Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/igb/e1000_defines.h | 3 ---
 drivers/net/ethernet/intel/igb/e1000_regs.h    | 1 -
 2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
index ca5429774994e..fa028928482fc 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -1033,9 +1033,6 @@
 #define E1000_VFTA_ENTRY_MASK                0x7F
 #define E1000_VFTA_ENTRY_BIT_SHIFT_MASK      0x1F
 
-/* DMA Coalescing register fields */
-#define E1000_PCIEMISC_LX_DECISION      0x00000080 /* Lx power on DMA coal */
-
 /* Tx Rate-Scheduler Config fields */
 #define E1000_RTTBCNRC_RS_ENA		0x80000000
 #define E1000_RTTBCNRC_RF_DEC_MASK	0x00003FFF
diff --git a/drivers/net/ethernet/intel/igb/e1000_regs.h b/drivers/net/ethernet/intel/igb/e1000_regs.h
index 9cb49980ec2d1..eb9f6da9208a6 100644
--- a/drivers/net/ethernet/intel/igb/e1000_regs.h
+++ b/drivers/net/ethernet/intel/igb/e1000_regs.h
@@ -116,7 +116,6 @@
 #define E1000_DMCRTRH	0x05DD0 /* Receive Packet Rate Threshold */
 #define E1000_DMCCNT	0x05DD4 /* Current Rx Count */
 #define E1000_FCRTC	0x02170 /* Flow Control Rx high watermark */
-#define E1000_PCIEMISC	0x05BB8 /* PCIE misc config register */
 
 /* TX Rate Limit Registers */
 #define E1000_RTTDQSEL	0x3604 /* Tx Desc Plane Queue Select - WO */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
