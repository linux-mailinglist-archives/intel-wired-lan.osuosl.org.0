Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 266E4A9E7E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 08:03:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BF2040BCD;
	Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gh79BQ5ouPuB; Mon, 28 Apr 2025 06:03:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF6AF40BB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745820209;
	bh=v2gonsrP0mBPkhwoJ+pbsl1mJux7YR5vyPGjn/04RiA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Y+lQ5VwYSH5g7dSSMqcjF6kaZggs0ooupvTcDZqQ4c3txi9xVZdoW/RC8bu0i/Cw
	 Y+ItwYKBT/dXccDLxyD8G5SwiBUcyh0ev9waQNU5rLmnl/xsvRLQCk0oTFzWg5xAG2
	 LCTYhWs0vdUjigSzQ2HS3JCRNEbeM/H+TzI0dmzw7FptWixFtb0EMKB8TbMh5kpori
	 k+ORjvblRmZl+Xhsep+Ep5eiBPC6m+mBqfqkxscxqw6VNgBSHrnZt3jp/biMKxRpXh
	 xoUoQv/GoF05zDxjBRu7FDDFTS4sOMjpk2u4aT0wgPDmpipQFZ+WCOD/zr8X602ZCv
	 YGyN0j579/7Pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF6AF40BB8;
	Mon, 28 Apr 2025 06:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 50071C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41CCB60B7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F4auVPHze5nI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A0EC060B75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0EC060B75
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0EC060B75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:26 +0000 (UTC)
X-CSE-ConnectionGUID: bqwc0lxMS1KRRhSNXE/mmg==
X-CSE-MsgGUID: I6zi/WTyT/2uP7N7ow4MPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51064590"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="51064590"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:27 -0700
X-CSE-ConnectionGUID: OhCeRr4pS+OBkQloShu9cg==
X-CSE-MsgGUID: ndYlet1VSveyRIJujU6BCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133340732"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa006.jf.intel.com with ESMTP; 27 Apr 2025 23:03:24 -0700
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
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Mon, 28 Apr 2025 02:02:18 -0400
Message-Id: <20250428060225.1306986-2-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820207; x=1777356207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4bGpCp15hXzvEQMTcZCDeMmmBPhJF0lOvOCtQUjv3Qc=;
 b=T47E7lZu2DCJr1Xa0H5KFyTuGOwGb06GNlhWdCBUhMetZkHzrVjqs9UZ
 qfkvvkZyGjyPs5D9WpJiY/NRTcWYIKRkHfToXGPhGw/N7EY478h/XtDCh
 +uGK5HEl3Nw+l498XyjD57C3NBxENWfRgEldMsVBO0C/S/aMNEze8P/3N
 bEo3vP8jJW14tQRZmxqbbcEJr9hjBJbQRsLCdMKOoLwMeGSOFb5iFgDV5
 aUYKKVbFpTHvHsBKIJtxJIWivGTkobciF2S9cryfaTpvrjTIma1yPBXpI
 9Gmt7KkAb0FBMH2etdCMwb2sFNxZipWf+DnrBW0YQsAMKc8wP4vWwvx0W
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T47E7lZu
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/8] igc: move
 IGC_TXDCTL_QUEUE_ENABLE and IGC_TXDCTL_SWFLUSH
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

Consolidate TXDCTL-related macros for better organization and readability.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 6 ++++++
 drivers/net/ethernet/intel/igc/igc_base.h | 4 ----
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 859a15e4ccba..e9d180eac015 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -492,6 +492,12 @@ static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
 #define IGC_RX_WTHRESH			4
 #define IGC_TX_WTHRESH			16
 
+/* Additional Transmit Descriptor Control definitions */
+/* Ena specific Tx Queue */
+#define IGC_TXDCTL_QUEUE_ENABLE	0x02000000
+/* Transmit Software Flush */
+#define IGC_TXDCTL_SWFLUSH	0x04000000
+
 #define IGC_RX_DMA_ATTR \
 	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
 
diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 6320eabb72fe..4a56c634977b 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -86,10 +86,6 @@ union igc_adv_rx_desc {
 	} wb;  /* writeback */
 };
 
-/* Additional Transmit Descriptor Control definitions */
-#define IGC_TXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Tx Queue */
-#define IGC_TXDCTL_SWFLUSH	0x04000000 /* Transmit Software Flush */
-
 /* Additional Receive Descriptor Control definitions */
 #define IGC_RXDCTL_QUEUE_ENABLE	0x02000000 /* Ena specific Rx Queue */
 #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
-- 
2.34.1

