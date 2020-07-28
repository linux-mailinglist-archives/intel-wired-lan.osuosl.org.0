Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB44B231646
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 01:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C9A387660;
	Tue, 28 Jul 2020 23:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yodCjygf7NSm; Tue, 28 Jul 2020 23:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3EDE87695;
	Tue, 28 Jul 2020 23:38:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C337B1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD1DC8867E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MeiUvW0Y9mn3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E77FD883A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:15 +0000 (UTC)
IronPort-SDR: EVrv5pYE5m3ZeJ8Wx/vTYwXl/Zva0yXmRSjMSsYZvOL+H/Q6+vLEQf5WRWVQEGKIiDcPKE8o/4
 NMQetNmnziag==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150501219"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="150501219"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 16:38:15 -0700
IronPort-SDR: VuHUP0DtLF87SJxcieg4xpiUC9avPg9AXzUkDlXSgAuebNDjMZGusPECnEmQx4Mty6D03X5Rv7
 ibr8MXmGmLkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="328484693"
Received: from dpavlopo-mobl2.amr.corp.intel.com ([10.251.22.240])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2020 16:38:15 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jul 2020 16:37:51 -0700
Message-Id: <20200728233754.65747-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728233754.65747-1-andre.guedes@intel.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_TSYNCTXCTL_VALID macro
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

This patch renames the IGC_TSYNCTXCTL_VALID macro to IGC_TSYNCTXCTL_
TXTT_0 so it matches the datasheet.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 1c032c1ce4d3..28885be15ee8 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -409,7 +409,7 @@
 #define IGC_IMIREXT_SIZE_BP	0x00001000  /* Packet size bypass */
 
 /* Time Sync Transmit Control bit definitions */
-#define IGC_TSYNCTXCTL_VALID			0x00000001  /* Tx timestamp valid */
+#define IGC_TSYNCTXCTL_TXTT_0			0x00000001  /* Tx timestamp reg 0 valid */
 #define IGC_TSYNCTXCTL_ENABLED			0x00000010  /* enable Tx timestamping */
 #define IGC_TSYNCTXCTL_MAX_ALLOWED_DLY_MASK	0x0000F000  /* max delay */
 #define IGC_TSYNCTXCTL_SYNC_COMP_ERR		0x20000000  /* sync err */
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index e67d4655b47e..79802fb4ea83 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -410,7 +410,7 @@ static void igc_ptp_tx_work(struct work_struct *work)
 	}
 
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
-	if (tsynctxctl & IGC_TSYNCTXCTL_VALID)
+	if (tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)
 		igc_ptp_tx_hwtstamp(adapter);
 	else
 		/* reschedule to check later */
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
