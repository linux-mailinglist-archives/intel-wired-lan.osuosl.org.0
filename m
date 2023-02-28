Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD66A5D6D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 17:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B94181215;
	Tue, 28 Feb 2023 16:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B94181215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677602898;
	bh=5v5OVvuuIFFOwF+Ai+2PycPRiq6mq6zSheNekFgzuDc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThfeAO945kPdVUUVfmtf9HQ4oCDxxDrcwm1KOf1BMdexJrsavwpe/U3u+tMyETa0g
	 y2Nn9Zo1B8yrWtTuwTEycWfaO6B4xg3v4f9LGuqWpGFD90ByqIhXjM5CMBXk1KgbKb
	 TweKtL1UuNlro9ez9H8Nrmw5ljJItfkYrmPMfASodwCyxzzVkkebMR9edJ19af1XnA
	 BRE2FrZ6e9dn2N9/LfspeXC+0vD2hTM19XDNVV/h42Siv0SGYjvgDfwkpqyY4OFo2D
	 m0I6eSd4th76Ppsnm18Lrwvb2K4vd8T670NXEV/YBr/9WKxq/XF9/aQGid1UkAa1GN
	 RpETV+R9NNVeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfYZ0Czjs5tO; Tue, 28 Feb 2023 16:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E8B9811FA;
	Tue, 28 Feb 2023 16:48:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E8B9811FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0261BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47CED60E83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47CED60E83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xu6-A6Y5Lo89 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 16:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C9D760736
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C9D760736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="317986836"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="317986836"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 08:48:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="624107467"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="624107467"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2023 08:48:04 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CC0F9369F0;
 Tue, 28 Feb 2023 16:48:02 +0000 (GMT)
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 28 Feb 2023 17:46:12 +0100
Message-Id: <20230228164613.1360409-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230228164613.1360409-1-aleksander.lobakin@intel.com>
References: <20230228164613.1360409-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677602887; x=1709138887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=exlFMpVF5vBUX97QGUIEERFQuxyaIwqV/MHoSJIWeoc=;
 b=T1WQN/gxnPOdTnMSKrH/q7H+BzRou7/PrZxu1GjrjxVybTmvkaZRa1/E
 HqmvKSnwHJmcyYv4MrEcM6zeFh3cSLi7utH78mnaZ54BSA2yKRaKP9N85
 AWZ4TjK7D9HxKfrCdWWPrObwtm8X+XrMr0we4cx8W9Pt92hQ3uO38IiB3
 N5PBlNzU2fGaDBrPAc4pUx/RBS8YYeBwWF8cKyqiQkEH8B3QYOc/dZV0b
 c2sOVkJMiCrXmvG3rYe6JIwCZWgTurqCaOsMHndxjcNFYi3woOz8AadB4
 DK+ysnwq/UvMIxTUV2D9h6TUaGXB4hYUTvh4tIsOsmnDKRVF9jmWsIjRS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T1WQN/gx
Subject: [Intel-wired-lan] [PATCH net 1/2] iavf: fix inverted Rx hash
 condition leading to disabled hash
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Condition, which checks whether the netdev has hashing enabled is
inverted. Basically, the tagged commit effectively disabled passing flow
hash from descriptor to skb, unless user *disables* it via Ethtool.
Commit a876c3ba59a6 ("i40e/i40evf: properly report Rx packet hash")
fixed this problem, but only for i40e.
Invert the condition now in iavf and unblock passing hash to skbs again.

Fixes: 857942fd1aa1 ("i40e: Fix Rx hash reported to the stack by our driver")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 18b6a702a1d6..e989feda133c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1096,7 +1096,7 @@ static inline void iavf_rx_hash(struct iavf_ring *ring,
 		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
 			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
 
-	if (ring->netdev->features & NETIF_F_RXHASH)
+	if (!(ring->netdev->features & NETIF_F_RXHASH))
 		return;
 
 	if ((rx_desc->wb.qword1.status_error_len & rss_mask) == rss_mask) {
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
