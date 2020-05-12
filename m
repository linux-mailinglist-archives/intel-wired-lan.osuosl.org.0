Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E661CFC48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 19:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0AE1886FB;
	Tue, 12 May 2020 17:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sdYdippOGxsL; Tue, 12 May 2020 17:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A5D0883FD;
	Tue, 12 May 2020 17:36:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89FBA1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A19420C45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id min8DXPVGQ-w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 17:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D15220BF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:03 +0000 (UTC)
IronPort-SDR: af9mTT5S3xrArrJqmeH4V6snq0zcUOcPxPWlvJBlMMZ47aPtN3EeQ3RvtLioOb71bVdHNXZMRT
 X99r8I+NuX7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:36:03 -0700
IronPort-SDR: 07ixHc3/+1PpJenTHdaug8mDec3HtyxASnx/gknDyZid5iQMHaTgi1Tj8v3lcxmiuWuktPQ6/R
 16xDLlBuo2Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="298094586"
Received: from ksengupt-mobl1.amr.corp.intel.com ([10.254.97.57])
 by orsmga008.jf.intel.com with ESMTP; 12 May 2020 10:36:02 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 May 2020 10:35:53 -0700
Message-Id: <20200512173553.39460-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512173553.39460-1-andre.guedes@intel.com>
References: <20200512173553.39460-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/2] igc: Fix IGC_MAX_RXNFC_RULES
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

IGC supports a total of 32 rules. 16 MAC address based, 8 VLAN priority
based, and 8 ethertype based. This patch fixes IGC_MAX_RXNFC_RULES
accordingly.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 14f9edaaaf83..5dbc5a156626 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -457,7 +457,10 @@ struct igc_nfc_rule {
 	u16 action;
 };
 
-#define IGC_MAX_RXNFC_RULES		16
+/* IGC supports a total of 32 NFC rules: 16 MAC address based,, 8 VLAN priority
+ * based, and 8 ethertype based.
+ */
+#define IGC_MAX_RXNFC_RULES		32
 
 /* igc_desc_unused - calculate if we have unused descriptors */
 static inline u16 igc_desc_unused(const struct igc_ring *ring)
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
