Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCBCAB6182
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 06:31:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBFBE82ED1;
	Wed, 14 May 2025 04:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SamT321F8k4m; Wed, 14 May 2025 04:31:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24CD980B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747197072;
	bh=MzXAVg5OhGaiOvMZbRIo0QzxcDvzYtmy3CC5KTldcJ8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Z5VI2p15IThezsK9BBdvKJxapbkWlMn2ivjKr0amSXDirRNmg5f4WaJvO919Iibb
	 2ogC/tvrQ/BLZiuSxOnlo1VX+WoNj4Qehw7fOBni5G0FBOjDFIkzLK1iiv+bKjPFRk
	 Q9ru2a7sO/rskhgspWTpP4LzlEC1gBgK0ILNwPu1ibm6h6t2X0+vj8UIciLTDELjtZ
	 lCmLDtDuTXzoUAd6KdGNlV/+V0hWmOOLHNOAb9HbIrN/LHZ6IworcCR/4+H5RrVCqt
	 NFpRCzdfouadY6UFIBEzjQ0YK0KbDjx1T4Q6fXQ9EVOAsZKrUhoj9BRLbGuL0+0BHo
	 M2wmSD5ud4ODw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24CD980B8F;
	Wed, 14 May 2025 04:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AED012A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87BDB402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nhVJTM3fKGJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 04:31:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D881740159
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D881740159
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D881740159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:07 +0000 (UTC)
X-CSE-ConnectionGUID: V+kIqZ2URVeuDcWQrU7zfg==
X-CSE-MsgGUID: uAYipR2FR9CFivx1rKsZQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36699076"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36699076"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 21:31:07 -0700
X-CSE-ConnectionGUID: IvBvaiAWRNGXLM849mgvWQ==
X-CSE-MsgGUID: N4EeITTsS/ap9aLIIGnbcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="142861787"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa004.jf.intel.com with ESMTP; 13 May 2025 21:31:04 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Wed, 14 May 2025 00:29:38 -0400
Message-Id: <20250514042945.2685273-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747197067; x=1778733067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VHExT5zAhe3qyyN0VLyKjJJKmfIjQUC6t+Aknf3J+gc=;
 b=EbVlkZno7sEvEgwmFBm7ef5mXUDsHqGr4UzR6nuKvKNB5V5EqjzW7/5s
 IV/KOTu4aFSbd8frZZFqLOoJFgrWyW5XTBtBWzQRqMEZ0gOu2BMkPif0T
 VHdvu7Bz+Uj1U+QdsQ3htEiRsOZeXJOmn151m5diUS9uWLQvkeIBrxO90
 BzqXcnv1AqhPobOn/rANxwAXXRihcGTBUFP7jwi4b/AWt1mIY6Zp1ka49
 mDxGP4c9UlU9o3beyn5B+kfrHCUwJ+iv2Pp+3hqQbdDCod3yrtmt5cRtB
 z6dOqFtGmhR2Zqa3V/onfhyli4/MXUap241CAVy0oppFYJTSK4obEkb84
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EbVlkZno
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/8] igc: move TXDCTL and
 RXDCTL related macros
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move and consolidate TXDCTL and RXDCTL macros in preparation for
upcoming TXDCTL changes. This improves organization and readability.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 11 ++++++++++-
 drivers/net/ethernet/intel/igc/igc_base.h |  8 --------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 859a15e4ccba..25695eada563 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -487,10 +487,19 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
  */
 #define IGC_RX_PTHRESH			8
 #define IGC_RX_HTHRESH			8
+#define IGC_RX_WTHRESH			4
+/* Ena specific Rx Queue */
+#define IGC_RXDCTL_QUEUE_ENABLE		0x02000000
+/* Receive Software Flush */
+#define IGC_RXDCTL_SWFLUSH		0x04000000
+
 #define IGC_TX_PTHRESH			8
 #define IGC_TX_HTHRESH			1
-#define IGC_RX_WTHRESH			4
 #define IGC_TX_WTHRESH			16
+/* Ena specific Tx Queue */
+#define IGC_TXDCTL_QUEUE_ENABLE		0x02000000
+/* Transmit Software Flush */
+#define IGC_TXDCTL_SWFLUSH		0x04000000
 
 #define IGC_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 6320eabb72fe..eaf17cd031c3 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -86,14 +86,6 @@ union igc_adv_rx_desc {
 	} wb;  /* writeback */
 };
 
-/* Additional Transmit Descriptor Control definitions */
-#define IGC_TXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Tx Queue */
-#define IGC_TXDCTL_SWFLUSH	0x04000000 /* Transmit Software Flush */
-
-/* Additional Receive Descriptor Control definitions */
-#define IGC_RXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Rx Queue */
-#define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
-
 /* SRRCTL bit definitions */
 #define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
 #define IGC_SRRCTL_BSIZEPKT(x)		FIELD_PREP(IGC_SRRCTL_BSIZEPKT_MASK, \
-- 
2.34.1

