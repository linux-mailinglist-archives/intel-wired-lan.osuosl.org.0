Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4BF60202E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 604E4408CA;
	Tue, 18 Oct 2022 01:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 604E4408CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055367;
	bh=SFJcQ6C9qZOZJlyPZtPgar0NOxNXS3hNhOFIYVyYUVs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KGWcCuP9z38G3Jfc3U2hTuYj881Ch+q0/QYpC7wCIccIuu2+X54vVObq8l5n9PViV
	 zYRq4N8hvmNNaL31J4n1O0FE4U/smO2UV5FZp2iXzsaNSA0ZAWVryWWcVsdMzjRI+T
	 o/4gYXRNhubBBIQvskArNV2c/F3BMxZuCNPHKHcJ5RptClKsQ3/fEdTfxL8oSZBLdx
	 RkIkfZvLPHmTZYim0XYBfcu+aqQ2jK8WBtlAogrTybxX27d9vdp80s2D9dJD+nTTCy
	 IaBwCNMqsegUCUh0JGD77PDUeD9fh8Q8aHtmuFX0nwoUXWMbJ8InZRsp1URrU4aMaf
	 rnGvbWMjmXaCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZzg9CBP57NH; Tue, 18 Oct 2022 01:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4D464069B;
	Tue, 18 Oct 2022 01:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4D464069B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83DC01BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C86B60ADB
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C86B60ADB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9U-B8xZU126 for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E0E060FA3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E0E060FA3
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624132"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624132"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704428"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704428"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:12 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:31 +0800
Message-Id: <20221018010733.4765-4-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055355; x=1697591355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=/X3NJNpAFZpLCntiaxyaosrbSVJWej2PE7E93BgbBVk=;
 b=HRJkeCxaU00NnxnMnlfjFES60Ey2zbacwRefkvO+eZ1BEIYomyxsXTsI
 hPmzoIntcPXvlzIunq8cCygmHdg7BYSKQOsr0aa1aTPwjAt9b+sO638p0
 RtEsAyr0uo3mRyDl1rU/GEPJdzdyDjt68R4QSqF8LBLjTxg8qpMhfHkgI
 VSOjDztIWPXnqNieOslBvbTUvwfP8NU6cU4mTaMYGyc8j8x+FFBV4AkiO
 fsXnl6u1LgaBBdaRelDiCPuaQ0Udgo3VEbxCL5BMV39FEq0v9xEDXijiz
 xCC+E6Yve8E7lZHSG0fWFsFjZHST7RfM2JSQ1CylLF5t77U5N/chSxXX/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HRJkeCxa
Subject: [Intel-wired-lan] [PATCH v2 3/5] net: sock: extend SO_TIMESTAMPING
 for DMA Fetch
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
Cc: leon@kernel.org, netdev@vger.kernel.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, kuba@kernel.org,
 michael.chan@broadcom.com, muhammad.husaini.zulkifli@intel.com,
 davem@davemloft.net, andy@greyhouse.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch is to extend SO_TIMESTAMPING API to support the DMA Time
Stamp by adding a new flag SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH.
User space application can configure this flag into hwtstamp_config flag
if require to use the DMA Time Stamp for that socket application.

Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 include/linux/skbuff.h          | 3 +++
 include/uapi/linux/net_tstamp.h | 6 ++++--
 net/ethtool/common.c            | 1 +
 net/socket.c                    | 3 +++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 9fcf534f2d92..49f0ef60701a 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -485,6 +485,9 @@ enum {
 
 	/* generate software time stamp when entering packet scheduling */
 	SKBTX_SCHED_TSTAMP = 1 << 6,
+
+	/* generate hardware DMA time stamp */
+	SKBTX_HW_DMA_TSTAMP = 1 << 7,
 };
 
 #define SKBTX_ANY_SW_TSTAMP	(SKBTX_SW_TSTAMP    | \
diff --git a/include/uapi/linux/net_tstamp.h b/include/uapi/linux/net_tstamp.h
index 4966d5ca521f..c9e113cea883 100644
--- a/include/uapi/linux/net_tstamp.h
+++ b/include/uapi/linux/net_tstamp.h
@@ -31,8 +31,9 @@ enum {
 	SOF_TIMESTAMPING_OPT_PKTINFO = (1<<13),
 	SOF_TIMESTAMPING_OPT_TX_SWHW = (1<<14),
 	SOF_TIMESTAMPING_BIND_PHC = (1 << 15),
+	SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH = (1 << 16),
 
-	SOF_TIMESTAMPING_LAST = SOF_TIMESTAMPING_BIND_PHC,
+	SOF_TIMESTAMPING_LAST = SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH,
 	SOF_TIMESTAMPING_MASK = (SOF_TIMESTAMPING_LAST - 1) |
 				 SOF_TIMESTAMPING_LAST
 };
@@ -45,7 +46,8 @@ enum {
 #define SOF_TIMESTAMPING_TX_RECORD_MASK	(SOF_TIMESTAMPING_TX_HARDWARE | \
 					 SOF_TIMESTAMPING_TX_SOFTWARE | \
 					 SOF_TIMESTAMPING_TX_SCHED | \
-					 SOF_TIMESTAMPING_TX_ACK)
+					 SOF_TIMESTAMPING_TX_ACK | \
+					 SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH)
 
 /**
  * struct so_timestamping - SO_TIMESTAMPING parameter
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index f2a178d162ef..24f8e7f9b4a5 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -403,6 +403,7 @@ const char sof_timestamping_names[][ETH_GSTRING_LEN] = {
 	[const_ilog2(SOF_TIMESTAMPING_OPT_PKTINFO)]  = "option-pktinfo",
 	[const_ilog2(SOF_TIMESTAMPING_OPT_TX_SWHW)]  = "option-tx-swhw",
 	[const_ilog2(SOF_TIMESTAMPING_BIND_PHC)]     = "bind-phc",
+	[const_ilog2(SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH)]	= "hardware-dma-transmit",
 };
 static_assert(ARRAY_SIZE(sof_timestamping_names) == __SOF_TIMESTAMPING_CNT);
 
diff --git a/net/socket.c b/net/socket.c
index ab5d8973e719..9e2175685f4e 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -695,6 +695,9 @@ void __sock_tx_timestamp(__u32 tsflags, __u8 *tx_flags)
 			flags |= SKBTX_HW_TSTAMP_USE_CYCLES;
 	}
 
+	if (tsflags & SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH)
+		flags |= SKBTX_HW_DMA_TSTAMP;
+
 	if (tsflags & SOF_TIMESTAMPING_TX_SOFTWARE)
 		flags |= SKBTX_SW_TSTAMP;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
