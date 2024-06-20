Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE11B9115CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 00:44:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA27440960;
	Thu, 20 Jun 2024 22:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GY_lRdjNCHSr; Thu, 20 Jun 2024 22:43:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF8B843551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718923438;
	bh=uOnJGiRbyO/FJXIIwBJKoyy1x0jsuLmmE0P/5OKn6WU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QKtrXldAosVHdxuPi3b/mqXvKuAw3vwGCAh6C1s2ETFMH5MpknRa6YYDvrqCTdb+1
	 tYbNRB4sYhwUfV9gLKQf0VoSCpGHRnuKRPn9YKeyrQBwYwUB6q3/yHPHTTZXZvbO0O
	 PX9aFTrI1Tnyt9Zpj3IuhCABgVQZ7Pgz92Lw6ECFlW9+XV4FXNDqeuL8fcce2puJRI
	 srzwfXJ8rzFf1x2hA5Xg42ZXdErRfiA2V1LP/quj6hDvp8mwKBLUtlomEn+uca+12k
	 i8HhXuUke9HC4bXbQmtOncWtT8Io8m/6R9Yywiz0mEQYC2Z0pmiDF2Q5sc80qMxqZ2
	 aJK6zX2SJs+jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF8B843551;
	Thu, 20 Jun 2024 22:43:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 241331BF397
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 22:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 102A540575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 22:19:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-LzlFIH_b1I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 22:19:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::72f; helo=mail-qk1-x72f.google.com;
 envelope-from=yan@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E698240191
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E698240191
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E698240191
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 22:19:26 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id
 af79cd13be357-7955ddc6516so93977785a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 15:19:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718921965; x=1719526765;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uOnJGiRbyO/FJXIIwBJKoyy1x0jsuLmmE0P/5OKn6WU=;
 b=QctZX+WuAidKtj7snIORxssm4GPze1CZ1oNt+gFeOGKvCpCdTJigaU6Qr7AAajc12R
 GMJBzCQOJZHT4jyy2bmvFAslMdrMyKMPN5lXmKWSGeowL8PqPks5Up/kHFi26u6/eMg/
 oGkHc4WXEmy5PWczuEsPaDMT0tnONAlkNg1Xo4RdYbU27GDyc4fmn/7whXpPNzlDWtxK
 A2mSxRHPtZSCP3oZcagr978n0ehssyhWE9QdHVMgkF99kAVVxJSsPoN1PR6UKknnUNis
 bO2lPj+4QiV7KXDL2kkZxu5XZJZ395AoBKDkDoVQ7Lp40WNyL4gHRSnJhF+A4jYo6dpr
 GpQA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUaN7FCHegM93jLdeJvs1BqOvwsUvwlm1iBK8fUw52kbBfEYWxMhKy/QBP+PNkWJr/RYVtQSVKiE5kI+Us2VYPCKlJPVu8bCd0TgeInrmkOHg==
X-Gm-Message-State: AOJu0YwGTjprvjF7B60B/p3AfeB/tWf2dLLpblBykbelvbBVplrzqQDR
 gB5CP6e8ammOqAvOAxWviO4NzdgHojDdOy8Qose5O/b8ZI6yQCgFRMNEHgkLv70=
X-Google-Smtp-Source: AGHT+IF9DmzujCRKuDPqvcTpHJ5tK40LwVxagHzuDnQcW/zjLbmWI370fRf/NDqGQdzoIWlhSdGjVw==
X-Received: by 2002:a0c:db83:0:b0:6b0:4542:e42e with SMTP id
 6a1803df08f44-6b501e3f5a3mr78560556d6.28.1718921965457; 
 Thu, 20 Jun 2024 15:19:25 -0700 (PDT)
Received: from debian.debian ([2a09:bac5:7a49:19cd::292:40])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6b51ed7ed94sm813456d6.73.2024.06.20.15.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Jun 2024 15:19:24 -0700 (PDT)
Date: Thu, 20 Jun 2024 15:19:22 -0700
From: Yan Zhai <yan@cloudflare.com>
To: netdev@vger.kernel.org
Message-ID: <a9eba425bfd3bfac7e7be38fe86ad5dbff3ae01f.1718919473.git.yan@cloudflare.com>
References: <cover.1718919473.git.yan@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1718919473.git.yan@cloudflare.com>
X-Mailman-Approved-At: Thu, 20 Jun 2024 22:43:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1718921965; x=1719526765;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=uOnJGiRbyO/FJXIIwBJKoyy1x0jsuLmmE0P/5OKn6WU=;
 b=Iwt/u8da4EqW8AWGny8FMjA1m9MP3NUKYAyR76BUS5tyAFh/97zdW0zA/OfoNHfUiS
 aOQTiQwbpXAHa/AjZm7PzdxxHHDTaj63rpG8Bvui7BnA3tbHySDCxIhYxMOLWTRYMZa8
 genubXWCwB/Vn1E4FocQQn824tPZ9u/wOtM7R8AX7WFaIvsco0uQ3Bl0/4/J2C/rOIs0
 vVl96e/2vhWZ0dpmyiv0KPD95dCSHwydJEQnW0KbLsJ30ep091ADJ9WUonstSR8wpEIH
 iCeivWaonD43Zku9CoLXvUOqa8Lm79qSe1FIsO1pLwoPiWAp3iu2UQU2v8yHq9qLU/qN
 MiBQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=Iwt/u8da
Subject: [Intel-wired-lan] [RFC net-next 5/9] ice: apply XDP offloading
 fixup when building skb
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a common point to transfer offloading info from XDP context to skb.

Signed-off-by: Yan Zhai <yan@cloudflare.com>
Signed-off-by: Jesper Dangaard Brouer <hawk@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++++-
 include/net/xdp_sock_drv.h                | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8bb743f78fcb..a247306837ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1222,6 +1222,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 			hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
 				     offset;
+			xdp_init_buff_minimal(xdp);
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 #if (PAGE_SIZE > 4096)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
@@ -1287,6 +1288,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 
 		/* populate checksum, VLAN, and protocol */
 		ice_process_skb_fields(rx_ring, rx_desc, skb);
+		xdp_buff_fixup_skb_offloading(xdp, skb);
 
 		ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
 		/* send completed skb up the stack */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a65955eb23c0..367658acaab8 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -845,8 +845,10 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	xdp_ring = rx_ring->xdp_ring;
 
-	if (ntc != rx_ring->first_desc)
+	if (ntc != rx_ring->first_desc) {
 		first = *ice_xdp_buf(rx_ring, rx_ring->first_desc);
+		xdp_init_buff_minimal(first);
+	}
 
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union ice_32b_rx_flex_desc *rx_desc;
@@ -920,6 +922,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 			break;
 		}
 
+		xdp = first;
 		first = NULL;
 		rx_ring->first_desc = ntc;
 
@@ -934,6 +937,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		vlan_tci = ice_get_vlan_tci(rx_desc);
 
 		ice_process_skb_fields(rx_ring, rx_desc, skb);
+		xdp_buff_fixup_skb_offloading(xdp, skb);
 		ice_receive_skb(rx_ring, skb, vlan_tci);
 	}
 
diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
index 0a5dca2b2b3f..02243dc064c2 100644
--- a/include/net/xdp_sock_drv.h
+++ b/include/net/xdp_sock_drv.h
@@ -181,7 +181,7 @@ static inline void xsk_buff_set_size(struct xdp_buff *xdp, u32 size)
 	xdp->data = xdp->data_hard_start + XDP_PACKET_HEADROOM;
 	xdp->data_meta = xdp->data;
 	xdp->data_end = xdp->data + size;
-	xdp->flags = 0;
+	xdp_init_buff_minimal(xdp);
 }
 
 static inline dma_addr_t xsk_buff_raw_get_dma(struct xsk_buff_pool *pool,
-- 
2.30.2


