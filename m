Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6640C60202D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD22082BC8;
	Tue, 18 Oct 2022 01:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD22082BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055362;
	bh=Wr06u3qCb0mGuEasdtWuW9vqftOtZZb3AcC6u+vMNRo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S3JjjBwTXBb/ke4Cbb0a/OTmW4o3H+zTYzwDGJgn9MtblKNcjgnI2EP6Rk4tjTCPE
	 6wYQVORj0Utk2SvBXha4+sbNRI6C3NFOKcvSXaHW6AKAEx8n3uSNeqLAtjsJgLGDEB
	 7eirYbYM2LEBvWaGdjA2hMmDHsZgqv4oxKnhp3BQS3TyhEaNMvMZLRjpccov/TUZe2
	 jm7DsdUoeeTVH1mRd7b8Y6+tZYlLmPc5Z2ctiuGqpA74Cu6tRl23avNOWvFU4P8pWy
	 xfaKN+WjWywVfjnX+GFXkqCRqcLUx4aasKrkI4b7KTETxHAAFf9yEQ/c6rCd3JZJQp
	 Vmp+AEhH23dxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNS3RLPaORPy; Tue, 18 Oct 2022 01:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81FCF82A2E;
	Tue, 18 Oct 2022 01:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81FCF82A2E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2857C1BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01D4F60FA9
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01D4F60FA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h79cCeZquj64 for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FD47607C0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FD47607C0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624124"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704414"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704414"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:08 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:30 +0800
Message-Id: <20221018010733.4765-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055352; x=1697591352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=xjj0YkAW4F3nyvpdguvfI3XQo+FdMI46/713tRluJBM=;
 b=KtzZHz0M3+N7GuanMBZPzYiyhYD6prsrgUq7N2eh6+1DSDK3+2FAOcDd
 L4KWQBGoL9WC2+doL/VqXFhimAzHbJbUPqsxpY/mMPUvwXBbwXLt4u7Bp
 Kwhpvlyq6jFIyNJyAx6ZL+QXVS/3UEtrPMEArXNeCNlJboOrPB2tgD9ii
 z3FBlNev+NwUDBRLCa7I55sf2EGK9jaCeY9+NImeXs8W0uaPgQ76PsZ9U
 MOB/lVdwFthjF75cx/r8OLsqzr5G0g259l4yN7sj1uk/N6SmccYFzUVJG
 QSP9TSd6SBWGSvVXo4j+sFieXHoV4WG61sUIqDAQAu/QG9UHvAlS0c3Cg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KtzZHz0M
Subject: [Intel-wired-lan] [PATCH v2 2/5] net-timestamp: Increase the size
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
Cc: leon@kernel.org, netdev@vger.kernel.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, kuba@kernel.org,
 michael.chan@broadcom.com, muhammad.husaini.zulkifli@intel.com,
 davem@davemloft.net, andy@greyhouse.net
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
index 08038a385ef2..ad5a3d44ad25 100644
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
@@ -1892,7 +1892,7 @@ void sk_send_sigurg(struct sock *sk);
 struct sockcm_cookie {
 	u64 transmit_time;
 	u32 mark;
-	u16 tsflags;
+	u32 tsflags;
 };
 
 static inline void sockcm_init(struct sockcm_cookie *sockc,
@@ -2723,7 +2723,7 @@ static inline void sock_recv_cmsgs(struct msghdr *msg, struct sock *sk,
 		sock_write_timestamp(sk, 0);
 }
 
-void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags);
+void __sock_tx_timestamp(__u32 tsflags, __u8 *tx_flags);
 
 /**
  * _sock_tx_timestamp - checks whether the outgoing packet is to be time stamped
@@ -2734,7 +2734,7 @@ void __sock_tx_timestamp(__u16 tsflags, __u8 *tx_flags);
  *
  * Note: callers should take care of initial ``*tx_flags`` value (usually 0)
  */
-static inline void _sock_tx_timestamp(struct sock *sk, __u16 tsflags,
+static inline void _sock_tx_timestamp(struct sock *sk, __u32 tsflags,
 				      __u8 *tx_flags, __u32 *tskey)
 {
 	if (unlikely(tsflags)) {
@@ -2747,13 +2747,13 @@ static inline void _sock_tx_timestamp(struct sock *sk, __u16 tsflags,
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
index 00da9ce3dba0..ab5d8973e719 100644
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
