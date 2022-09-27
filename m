Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECA5EC3B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 15:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E42E660E45;
	Tue, 27 Sep 2022 13:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E42E660E45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664284095;
	bh=l7SpiaJNhstmrboJkav7nxYUSwN6Pe/Q/ge4V7VbXAI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ER9ZiClN4HtXW620vgW+eIXWXGutrV8gf7w/V43uqhq35uQAjiYLj7w0UbIula8HI
	 NL3j0Z2WNxkKGPFdHpet58RZaWET/mdUueU1N1dMIUTyBr2WX2KXHG0Cxd8FhUbVm8
	 um42KHGGclc9/PjLNw/6HL6vpdxqqGTj/N4PMmvCl+8JifpYsOl4/O7e72PG0oOSKJ
	 v+voJEGZwc9gZG4z8960zTECRlgZ6rkPvnj6BEZJY+rUfUi2cGT9F53ziwtgX/Bdwx
	 ZtLfVrWtSx3wkQc5y2KghaaLCH3W1yKvghsdoupdkTHhvVSsZp9+8+u80htw/r0Xpw
	 g6VTUj3aDAX+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PX3ubF9c6q_J; Tue, 27 Sep 2022 13:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 518BB60A75;
	Tue, 27 Sep 2022 13:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 518BB60A75
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 091F91BF47A
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8F768283D
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8F768283D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umjD1YgYmGGP for <intel-wired-lan@osuosl.org>;
 Tue, 27 Sep 2022 13:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A48F826BF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A48F826BF
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:08:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="327667759"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="327667759"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 06:08:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="689984913"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="689984913"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 06:07:58 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 27 Sep 2022 21:06:54 +0800
Message-Id: <20220927130656.32567-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
References: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664284081; x=1695820081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Kog0xSd26qPd6cwbA++KQY6QqoIoX9anF6dCmsdaD68=;
 b=Lx543zx7GGD94HupvrRLRLwEkAVumG1aQTUFLpbC9ePnM6VTGDoUNoPF
 uKHkTnpdNhRN8Q4uBcwSWFt1XHkyQGX/BW7f0wl+844irtdO6XSlcrSd7
 fJ4utBE8HaIgQ0dOb1poV/WviWguxybzVZ8Utc2V6IJ5znWrXDDo+qsBi
 MBB1iuF1nfJQM6Nth+yHUzofFMtjCLLtJi1l7hTj11X8KDxL5PivL3j0G
 SKchOFQT5n03TjnFn7oru94om9TxHWpjQjB6p6A0JY2O1jOQpMfQ2YU/B
 XZl7fzkcCmmtWz3USW5p2hYnBxZkSler5/pfVQaqfDugnfEML4SkUvBdI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lx543zx7
Subject: [Intel-wired-lan] [PATCH v1 2/4] net-timestamp: Increase the size
 of tsflags
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

Increase the size of tsflags to support more SOF_TIMESTAMPING flags.
Current flag size can only support up to 16 flags only.

Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 include/net/sock.h | 12 ++++++------
 net/socket.c       |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/net/sock.h b/include/net/sock.h
index 96a31026e35d..6be4d768d7dd 100644
--- a/include/net/sock.h
+++ b/include/net/sock.h
@@ -503,7 +503,7 @@ struct sock {
 #if BITS_PER_LONG==32
 	seqlock_t		sk_stamp_seq;
 #endif
-	u16			sk_tsflags;
+	u32			sk_tsflags;
 	u8			sk_shutdown;
 	atomic_t		sk_tskey;
 	atomic_t		sk_zckey;
@@ -1897,7 +1897,7 @@ void sk_send_sigurg(struct sock *sk);
 struct sockcm_cookie {
 	u64 transmit_time;
 	u32 mark;
-	u16 tsflags;
+	u32 tsflags;
 };
 
 static inline void sockcm_init(struct sockcm_cookie *sockc,
@@ -2728,7 +2728,7 @@ static inline void sock_recv_cmsgs(struct msghdr *msg, struct sock *sk,
 		sock_write_timestamp(sk, 0);
 }
 
-void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags);
+void __sock_tx_timestamp(__u32 tsflags, __u8 *tx_flags);
 
 /**
  * _sock_tx_timestamp - checks whether the outgoing packet is to be time stamped
@@ -2739,7 +2739,7 @@ void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags);
  *
  * Note: callers should take care of initial ``*tx_flags`` value (usually 0)
  */
-static inline void _sock_tx_timestamp(struct sock *sk, __u16 tsflags,
+static inline void _sock_tx_timestamp(struct sock *sk, __u32 tsflags,
 				      __u8 *tx_flags, __u32 *tskey)
 {
 	if (unlikely(tsflags)) {
@@ -2752,13 +2752,13 @@ static inline void _sock_tx_timestamp(struct sock *sk, __u16 tsflags,
 		*tx_flags |= SKBTX_WIFI_STATUS;
 }
 
-static inline void sock_tx_timestamp(struct sock *sk, __u16 tsflags,
+static inline void sock_tx_timestamp(struct sock *sk, __u32 tsflags,
 				     __u8 *tx_flags)
 {
 	_sock_tx_timestamp(sk, tsflags, tx_flags, NULL);
 }
 
-static inline void skb_setup_tx_timestamp(struct sk_buff *skb, __u16 tsflags)
+static inline void skb_setup_tx_timestamp(struct sk_buff *skb, __u32 tsflags)
 {
 	_sock_tx_timestamp(skb->sk, tsflags, &skb_shinfo(skb)->tx_flags,
 			   &skb_shinfo(skb)->tskey);
diff --git a/net/socket.c b/net/socket.c
index 7378375d3a5b..34ddb5d6889e 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -679,7 +679,7 @@ void sock_release(struct socket *sock)
 }
 EXPORT_SYMBOL(sock_release);
 
-void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags)
+void __sock_tx_timestamp(__u32 tsflags, __u8 *tx_flags)
 {
 	u8 flags = *tx_flags;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
