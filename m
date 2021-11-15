Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EF045157A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Nov 2021 21:36:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F38A80CF5;
	Mon, 15 Nov 2021 20:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96PEmJLXkDod; Mon, 15 Nov 2021 20:36:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26EFD80CCD;
	Mon, 15 Nov 2021 20:36:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96CA41BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9401380CDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZnlZ686Mi6O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Nov 2021 20:36:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFA0F80CCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637008598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p4Qgk9BqdfmLLByf7+qq+OORA7tMlVVgID7iwPx2sJg=;
 b=CY61NMdHQUJR1dXl0DLaayOkssF0+FxGFt8TQZrAdl8jNKC1x2QZJXpOZLg72UK7yN802L
 FqLMW50H/BjyiRNoTDrI+N38STVhneghYP7jQxcQB/WOuUGZmnKfqHHTSwqxdcFIRMo38G
 ohsNt7RVBelB5nIbd41nlbTvh/KXNlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590-7jjdhSTtPnine07XcaEjUQ-1; Mon, 15 Nov 2021 15:36:32 -0500
X-MC-Unique: 7jjdhSTtPnine07XcaEjUQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD9231006AA1;
 Mon, 15 Nov 2021 20:36:30 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA3A367847;
 Mon, 15 Nov 2021 20:36:26 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id D23F33247FDD7;
 Mon, 15 Nov 2021 21:36:25 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
Date: Mon, 15 Nov 2021 21:36:25 +0100
Message-ID: <163700858579.565980.15265721798644582439.stgit@firesoul>
In-Reply-To: <163700856423.565980.10162564921347693758.stgit@firesoul>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-wired-lan] [PATCH net-next 1/2] igc: AF_XDP zero-copy
 metadata adjust breaks SKBs on XDP_PASS
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
Cc: intel-wired-lan@lists.osuosl.org, bjorn@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Driver already implicitly supports XDP metadata access in AF_XDP
zero-copy mode, as xsk_buff_pool's xp_alloc() naturally set xdp_buff
data_meta equal data.

This works fine for XDP and AF_XDP, but if a BPF-prog adjust via
bpf_xdp_adjust_meta() and choose to call XDP_PASS, then igc function
igc_construct_skb_zc() will construct an invalid SKB packet. The
function correctly include the xdp->data_meta area in the memcpy, but
forgot to pull header to take metasize into account.

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 8e448288ee26..76b0a7311369 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2448,8 +2448,10 @@ static struct sk_buff *igc_construct_skb_zc(struct igc_ring *ring,
 
 	skb_reserve(skb, xdp->data_meta - xdp->data_hard_start);
 	memcpy(__skb_put(skb, totalsize), xdp->data_meta, totalsize);
-	if (metasize)
+	if (metasize) {
 		skb_metadata_set(skb, metasize);
+		__skb_pull(skb, metasize);
+	}
 
 	return skb;
 }


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
