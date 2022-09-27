Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2102B5EC3B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 15:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF8D840574;
	Tue, 27 Sep 2022 13:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF8D840574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664284101;
	bh=N6Yeblg0/NK3AfqWSSXSFLcdZtpHet6vrzuL4XUjHq4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u35O/SCfjL7JcddKww6dPavSLvknPr1NzBGNanfpVhKtSPDjEOKH08o75U9yFySQA
	 +l2R/Ph7otBecupmPjYtOnHIhWf9TrDY7/dUbsFsgE2/prYIZlC6r8DkhPZ08gJs9L
	 sgJPwc62EfR8em27SI516QVS8+AMZqdT6RzyXtqtJwGk2U/VNp3wYb5N7g3zbmQJrl
	 TqeRbGKzVtGgjiTf5O1bZHLF++3tEI6k0jTVtkEgRhqwDmod5pNCRsmrn6k+jYAvSy
	 yP3PV1KQ3zS6UPHsVy0W8xSHP/z1cZzwDZU8LKQAadw19YV/LM8rfBnHw4Us4fEdLH
	 fJZtNvXal3AOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQtQMEHGzc85; Tue, 27 Sep 2022 13:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 701DD40354;
	Tue, 27 Sep 2022 13:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 701DD40354
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EC641BF47A
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67E2A826BF
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67E2A826BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Rtnfoe_R8jC for <intel-wired-lan@osuosl.org>;
 Tue, 27 Sep 2022 13:08:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFBE0825B9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFBE0825B9
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="327667769"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="327667769"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 06:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="689984934"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="689984934"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 06:08:01 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 27 Sep 2022 21:06:55 +0800
Message-Id: <20220927130656.32567-4-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664284083; x=1695820083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=DZNjweI9TdozcGmRC02pghiJtsrhevsDJXl1aTUhKCY=;
 b=aagn1U3fSS8hGzCUHKYGKpqYtvcZvFbVIf/+vgWDhPVvWyTP0iVDK0uD
 upOQpuY9KBruJuGNf3jBtqDd6wOKLmMDX/RC7TenfmZyBiKPJpp33eeyi
 OV+wKbecIOhTOmcliWxmHp5DMW/fU6t6UJN1ib2neHBbDCxKSAOfsbtoz
 bS60V2+X49gXAg+Jlymdk7BvEt8egsaPQ5oJgblrSFu2YWr+V5S210RIB
 EKq/UzvUx44z1HpctbRNEGcVJGyJw6Mq9z2BPsXy3wm5sLURo4V/IpeHe
 7mc1QAF4uh9eYz86yP6O04djGhKT5sTTxxkWPotRvpZsgm/CzCJOmgmuw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aagn1U3f
Subject: [Intel-wired-lan] [PATCH v1 3/4] net: sock: extend SO_TIMESTAMPING
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 noor.azura.ahmad.tarmizi@intel.com, kuba@kernel.org,
 muhammad.husaini.zulkifli@intel.com, davem@davemloft.net
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
index f15d5b62539b..7a79ffa7799d 100644
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
index 34ddb5d6889e..dfb9fa693a11 100644
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
