Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91581C32E8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 08:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 800E2887D4;
	Mon,  4 May 2020 06:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvB+5RJNnAdI; Mon,  4 May 2020 06:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77F5B88731;
	Mon,  4 May 2020 06:29:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D79661BF425
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 06:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2F62876AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 06:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OM7TsqYEYlyi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 06:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A201C8680B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 06:29:26 +0000 (UTC)
IronPort-SDR: qCmWFuEmSU9vdxkSif34fP1HRzbyg2HtUSmOrx4OX1OR9oquDpOzwoExboxCUmOSrl5Edl3CU/
 VJ0OzfeYQngQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 23:29:26 -0700
IronPort-SDR: 0aKdA9v1sheEJJliJuf7X8SWvQQebcfuwW6ONFMlb5XFmcoFmBuS/77Rvr+Zmz3XVP+RYnJLp3
 drNBz3CJPBgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="283805137"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga004.fm.intel.com with ESMTP; 03 May 2020 23:29:25 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 May 2020 09:29:25 +0300
Message-Id: <20200504062925.18819-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused descriptor's
 flags
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

Enable Tidv register, Report Packet Sent, Report Status and
Ethernet CRC flags not in use.
This patch comes to clean up these flags.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 95de1eb515cb..aa1d012b3e2a 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -265,13 +265,9 @@
 #define IGC_TXD_POPTS_IXSM	0x01       /* Insert IP checksum */
 #define IGC_TXD_POPTS_TXSM	0x02       /* Insert TCP/UDP checksum */
 #define IGC_TXD_CMD_EOP		0x01000000 /* End of Packet */
-#define IGC_TXD_CMD_IFCS	0x02000000 /* Insert FCS (Ethernet CRC) */
 #define IGC_TXD_CMD_IC		0x04000000 /* Insert Checksum */
-#define IGC_TXD_CMD_RS		0x08000000 /* Report Status */
-#define IGC_TXD_CMD_RPS		0x10000000 /* Report Packet Sent */
 #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
 #define IGC_TXD_CMD_VLE		0x40000000 /* Add VLAN tag */
-#define IGC_TXD_CMD_IDE		0x80000000 /* Enable Tidv register */
 #define IGC_TXD_STAT_DD		0x00000001 /* Descriptor Done */
 #define IGC_TXD_STAT_EC		0x00000002 /* Excess Collisions */
 #define IGC_TXD_STAT_LC		0x00000004 /* Late Collisions */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
