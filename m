Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FB0ABC1F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 17:15:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E79D40B51;
	Mon, 19 May 2025 15:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J-iMxe8nMKBA; Mon, 19 May 2025 15:15:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A306A408C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747667737;
	bh=FfKXG9hkUhsqwNXIiJX0r8CRvx4iEywiAx5XYMYRJXA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AuNU+yrO0yfsrVPtXyKMNo+EVckq0sYXQh/PHd2DyCTb2NtHCY4J4VtvUJStcGk0l
	 jcOY18+3p/DEctPP9RNvLD330hw9kcEweJZzayZ389gFbMnT2itrcl0upVKDzg1eMQ
	 cTegQCHL4zQoF/BhyN0k57JtrhcE9cGAJ6L5Hs/Z4tz41wQS3ZOI9o9yWKi4GcTkFU
	 RPKz0PJ0UwJZHJfurc/iUv7Z9nZPwSBAa/zoWH9m7aEonpxnyNVPT8jyCJ5P+yQ2ZX
	 qxxcechbZHbO2ntHsY8DNjFBBr2dcVntGwQ3e/KA9Lp5II8aj4nH4onJ4pKNaLaG7X
	 yOsTrcGT5qdwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A306A408C8;
	Mon, 19 May 2025 15:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BBCBC193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B730C81DBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ONUD4hax8f0u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 07:20:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 11A4580DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11A4580DF0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11A4580DF0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 07:20:41 +0000 (UTC)
X-CSE-ConnectionGUID: JVJAJWJCSl6Pcw4S4/NFtg==
X-CSE-MsgGUID: etQnXTIuT2qhilq5U1WGRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="72030706"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="72030706"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:20:42 -0700
X-CSE-ConnectionGUID: fqTvO+mdQEqMTLlG7bMIDg==
X-CSE-MsgGUID: 3AzgyEQaTOSXwq+joGUE4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139798752"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa007.jf.intel.com with ESMTP; 19 May 2025 00:20:38 -0700
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 19 May 2025 03:19:05 -0400
Message-Id: <20250519071911.2748406-2-faizal.abdul.rahim@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
References: <20250519071911.2748406-1-faizal.abdul.rahim@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 May 2025 15:15:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747639242; x=1779175242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X7n7rR82XQJo1WypxQezqqyl90YGNPvBN0QcTvREVko=;
 b=MfaX4Wr2cOWhOWjAdiOn+DT1K3zUCMEDugvXnagjw4Z6pN10AaYGgpIy
 fgIaJzJDVt5aIyGMd+hyS+WITxkBWYboRwvhkTJ4QqBWziJmoVfOd++AZ
 7jUYqQzW7PzHTH0XFkAuo9+gXDOEAsZL+6luFhhRZS9/R2V/YmwG3XGzt
 4Lgd/vkGBYjN7Dv3FQa/Uu0JWg7+5mU81anV/t7k9uOJNHc50qEXR0BZj
 pwmFmJiNbGsRFDquJ3vHnpFcNXSpmIQhJqN+xhZykYB1mjapxlp3kHMhC
 mjgLyftPj7/u0nUxOn7W8OkCsu4kIzCtXV4ZMpY3/e7alhbpqRWx5xRS2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MfaX4Wr2
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/7] igc: move TXDCTL and
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

From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Move and consolidate TXDCTL and RXDCTL macros in preparation for
upcoming TXDCTL changes. This improves organization and readability.

Reviewed-by: Simon Horman <horms@kernel.org>
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

