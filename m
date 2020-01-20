Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5975F142323
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2020 07:18:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB30F86CD3;
	Mon, 20 Jan 2020 06:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id StCb7yxSv6Nn; Mon, 20 Jan 2020 06:18:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 635CC86FB0;
	Mon, 20 Jan 2020 06:18:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A37681BF48B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 06:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DBD885085
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 06:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNmwAacaeEJE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2020 06:18:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED6D985081
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 06:18:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 22:18:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,340,1574150400"; d="scan'208";a="258596334"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2020 22:17:59 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Jan 2020 08:17:58 +0200
Message-Id: <20200120061758.25650-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2] igc: Fix the typo in comment
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

Fix the typo and comment to correspond to the i225 device
v1->v2:
Address community comment

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 5d38d0faeced..cb1362188c2a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -112,7 +112,7 @@ extern char igc_driver_version[];
 #define IGC_RX_HDR_LEN			IGC_RXBUFFER_256
 
 /* Transmit and receive latency (for PTP timestamps) */
-/* FIXME: These values were estimated using the ones that i210 has as
+/* FIXME: These values were estimated using the ones that i225 has as
  * basis, they seem to provide good numbers with ptp4l/phc2sys, but we
  * need to confirm them.
  */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
