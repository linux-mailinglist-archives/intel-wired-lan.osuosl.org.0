Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D04E1D99FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 16:36:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7C332268D;
	Tue, 19 May 2020 14:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CEfdmDZsHq6x; Tue, 19 May 2020 14:36:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 121D722844;
	Tue, 19 May 2020 14:36:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B10A71BF46D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 14:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F88D84ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 14:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4HHokBv+B2MD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 14:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B0D7A8834C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 14:36:35 +0000 (UTC)
IronPort-SDR: u5sXKqIoGjrK/k1QECnjTyHmK86QoQY2e6zuCdlh2DGP+/R/+DQJQPD6FG0xzAzYV59FwErHEz
 CIrouu8o+/Tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 07:36:35 -0700
IronPort-SDR: j2y8RGE7QiHYp3n+svPB6QScRrDDCakWo3kuJw/upnBHWb6mRekzcdH0sxO/1KPE0DuGoG44RB
 ZhPVk4hE4whw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="300120482"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga008.jf.intel.com with ESMTP; 19 May 2020 07:36:34 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 17:36:34 +0300
Message-Id: <20200519143634.12765-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove symbol error counter
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

Accordance to the i225 datasheet symbol error counter does not
applicable to the i225 device.
This patch comes to clean up this counter.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 89445ab02a98..9de70a24cb9e 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -235,7 +235,6 @@ s32 igc_force_mac_fc(struct igc_hw *hw)
 void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 {
 	rd32(IGC_CRCERRS);
-	rd32(IGC_SYMERRS);
 	rd32(IGC_MPC);
 	rd32(IGC_SCC);
 	rd32(IGC_ECOL);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 26dc437fa9da..aac004944f99 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3706,7 +3706,6 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.prc511 += rd32(IGC_PRC511);
 	adapter->stats.prc1023 += rd32(IGC_PRC1023);
 	adapter->stats.prc1522 += rd32(IGC_PRC1522);
-	adapter->stats.symerrs += rd32(IGC_SYMERRS);
 	adapter->stats.sec += rd32(IGC_SEC);
 
 	mpc = rd32(IGC_MPC);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 9970242d0d75..f50a7bf6a793 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -127,7 +127,6 @@
 /* Statistics Register Descriptions */
 #define IGC_CRCERRS	0x04000  /* CRC Error Count - R/clr */
 #define IGC_ALGNERRC	0x04004  /* Alignment Error Count - R/clr */
-#define IGC_SYMERRS	0x04008  /* Symbol Error Count - R/clr */
 #define IGC_RXERRC	0x0400C  /* Receive Error Count - R/clr */
 #define IGC_MPC		0x04010  /* Missed Packet Count - R/clr */
 #define IGC_SCC		0x04014  /* Single Collision Count - R/clr */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
