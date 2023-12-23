Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBE881D168
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3759842D4F;
	Sat, 23 Dec 2023 02:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3759842D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300352;
	bh=27zflorS1gjLyxBd6tYcPhxvWQDH/0XHa7jcRhH2guI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7y7JIudRDVrRxM882GYBehs6TgboaDreZvKHY5v90fDp5tr2o1aj0Qy6LbsR1Jof8
	 4w9qKWXJisxkUMh593zikTmdSKmHkHSyohgVCBwqbI88+EY4hmeUysqP1uC81U/yOy
	 mN9T9G70t9clZtpKhZzSaNkCXTO/2G/jb5RNJL7ZXED3MfmTMlGTbrpJtIHoro7Ujc
	 bK9pCsqgXx7WuPY1TF4FdP5mb1tOapyo7Zqo+ruE4czqGc1Qp5siP76GpOrIXPhYTS
	 OIIrCBdib0f0HbEEVeiENE+LiHVwuCHsia0YHJXIvskBkHIjx6wxBGbagybJnQiPXC
	 7KIpdXhrdlbzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9iKEZoGiDTT; Sat, 23 Dec 2023 02:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA18840072;
	Sat, 23 Dec 2023 02:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA18840072
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF9AB1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 882E960A9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 882E960A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0ZnLs2mLdoU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AADE160A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AADE160A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610867"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610867"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537492"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:47 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:32 +0100
Message-ID: <20231223025554.2316836-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300330; x=1734836330;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lwem7QAKrTATP+Ps1asjKzaTx+4QKgH8qLT9fJ4NywM=;
 b=jVkDPg5NTNw/M/bNdjDvryr0p6l7/Rx/CcUtoify5Af/wMpgCON3zmC4
 C9fMrL7mtzbnxknyEVO4eXEM2UH59DH+iQ3P+bweet4fMQ0TxipjneHy7
 /O9kFJViFmCzFdMwuej94EzW2gjgnofkHOLoXDec/MKvfm//DZ0PWzyY0
 xJh7bHsTaTN6VzDi3GvpUSYZQWoCGYcLh7czOalCQ3L+v4LeRbLzRJTLa
 pvccrnBy5U/5s2Ei1YPFXw3pp/1yUga7zDZE7B+aCKZ9A/BczbizMXXyh
 dep+WXZe8pMoC4FEHnMPhYaL9Se/Ho/x77Tgc2ZjqdDZWC/Ni4zsslwn4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jVkDPg5N
Subject: [Intel-wired-lan] [PATCH RFC net-next 12/34] xdp: add generic
 xdp_buff_add_frag()
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The code piece which would attach a frag to &xdp_buff is almost
identical across the drivers supporting XDP multi-buffer on Rx.
Make it a generic elegant onelner.
Also, I see lots of drivers calculating frags_truesize as
`xdp->frame_sz * nr_frags`. I can't say this is fully correct, since
frags might be backed by chunks of different sizes, especially with
stuff like the header split. Even page_pool_alloc() can give you two
different truesizes on two subsequent requests to allocate the same
buffer size. Add a field to &skb_shared_info (unionized as there's no
free slot currently on x6_64) to track the "true" truesize. It can be
used later when updating an skb.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/skbuff.h | 14 ++++++++++----
 include/net/xdp.h      | 36 +++++++++++++++++++++++++++++++++++-
 2 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index ea5c8ab3ed00..e350efa04070 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -598,11 +598,17 @@ struct skb_shared_info {
 	 * Warning : all fields before dataref are cleared in __alloc_skb()
 	 */
 	atomic_t	dataref;
-	unsigned int	xdp_frags_size;
 
-	/* Intermediate layers must ensure that destructor_arg
-	 * remains valid until skb destructor */
-	void *		destructor_arg;
+	union {
+		struct {
+			unsigned int	xdp_frags_size;
+			u32		xdp_frags_truesize;
+		};
+
+		/* Intermediate layers must ensure that destructor_arg
+		 * remains valid until skb destructor */
+		void *		destructor_arg;
+	};
 
 	/* must be last field, see pskb_expand_head() */
 	skb_frag_t	frags[MAX_SKB_FRAGS];
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 909c0bc50517..a3dc0f39b437 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -165,6 +165,34 @@ xdp_get_buff_len(const struct xdp_buff *xdp)
 	return len;
 }
 
+static inline bool xdp_buff_add_frag(struct xdp_buff *xdp, struct page *page,
+				     u32 offset, u32 size, u32 truesize)
+{
+	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
+
+	if (!xdp_buff_has_frags(xdp)) {
+		sinfo->nr_frags = 0;
+
+		sinfo->xdp_frags_size = 0;
+		sinfo->xdp_frags_truesize = 0;
+
+		xdp_buff_set_frags_flag(xdp);
+	}
+
+	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS))
+		return false;
+
+	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, page, offset,
+				   size);
+	sinfo->xdp_frags_size += size;
+	sinfo->xdp_frags_truesize += truesize;
+
+	if (unlikely(page_is_pfmemalloc(page)))
+		xdp_buff_set_frag_pfmemalloc(xdp);
+
+	return true;
+}
+
 struct xdp_frame {
 	void *data;
 	u16 len;
@@ -230,7 +258,13 @@ xdp_update_skb_shared_info(struct sk_buff *skb, u8 nr_frags,
 			   unsigned int size, unsigned int truesize,
 			   bool pfmemalloc)
 {
-	skb_shinfo(skb)->nr_frags = nr_frags;
+	struct skb_shared_info *sinfo = skb_shinfo(skb);
+
+	sinfo->nr_frags = nr_frags;
+	/* ``destructor_arg`` is unionized with ``xdp_frags_{,true}size``,
+	 * reset it after that these fields aren't used anymore.
+	 */
+	sinfo->destructor_arg = NULL;
 
 	skb->len += size;
 	skb->data_len += size;
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
