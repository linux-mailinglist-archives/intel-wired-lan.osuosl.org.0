Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CF46CCB49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 22:16:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03EB640565;
	Tue, 28 Mar 2023 20:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03EB640565
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680034585;
	bh=6yIPT+L3+2La0hjFzuPNbScsPnmmevejRHk8sIrQWdY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c5ADaJ+D7p2D5GpJDXdEAcywUAEGbA0E2ltAJRJ0E0YLfVvtCuJbgMptIFTm18IQl
	 wYgrprzJ+S8kcy0+shK6BgQkY0dRJG2zj3KcoMcOoMHttXVcUnaXxiWxjExYN85kWn
	 j9zJz9N4T5uTmUCusOulo/lIjFymaZJ8pRn6pEdaJ3rpmbrj6WPzmVfYnPvcFeUCYN
	 3KrtuAh91eRHnXbmv1IZ9JBLIlTSjPPMcHiCBrnxG/ESzIT1vAicGo/ZIaOrpDC5u9
	 sB6ONFiXV5JCMXo3wLgP3IKlXWGKy6hkR/lHMgEvopfttc99evqin5LZZ9ffmO4TzT
	 yrbvyrGrmM1fQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CtC2YvK6SHJy; Tue, 28 Mar 2023 20:16:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBC4840058;
	Tue, 28 Mar 2023 20:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBC4840058
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30B131BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16D3940059
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16D3940059
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0THKo8njSUh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 20:16:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20A5640862
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20A5640862
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:15 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-6nCBLlI-NnamgUygy5UhhA-1; Tue, 28 Mar 2023 16:16:10 -0400
X-MC-Unique: 6nCBLlI-NnamgUygy5UhhA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82363280BF64;
 Tue, 28 Mar 2023 20:16:09 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 30AC8C15BA0;
 Tue, 28 Mar 2023 20:16:09 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 530E130736C72;
 Tue, 28 Mar 2023 22:16:08 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 28 Mar 2023 22:16:08 +0200
Message-ID: <168003456829.3027256.12371018603759735483.stgit@firesoul>
In-Reply-To: <168003451121.3027256.13000250073816770554.stgit@firesoul>
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680034575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5g4mrXl41+GFKanErFDMONuv//RKV9fef6DjptIgCzo=;
 b=Y1LM2AEQRAjnADMJhs0LprU/paR6mfnHL4yeIc4GQZZHSRClFu6CSqrVHmygGe8XSl0Lms
 q0o9D5NADUXlmR+LeQnhVJVfk65pKI7q8CKYVkRpQC9X3sJTlWJetXOiDEmn31Eyj0cUsv
 McX3CBUPN/OomEmkt9RTKuPmnQJlowM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Y1LM2AEQ
Subject: [Intel-wired-lan] [PATCH bpf RFC 3/4] veth:
 bpf_xdp_metadata_rx_hash return xdp rss hash type
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update API for bpf_xdp_metadata_rx_hash() by returning xdp rss hash type.

The veth driver currently only support XDP-hints based on SKB code path.
The SKB have lost information about the RSS hash type, by compressing
the information down to a single bitfield skb->l4_hash, that only knows
if this was a L4 hash value.

In preparation for veth, the xdp_rss_hash_type have an L4 indication
bit that allow us to return a meaningful L4 indication when working
with SKB based packets.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/veth.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 046461ee42ea..6b1084e39b25 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1624,7 +1624,7 @@ static int veth_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
 		return -ENODATA;
 
 	*hash = skb_get_hash(_ctx->skb);
-	return 0;
+	return _ctx->skb->l4_hash ? XDP_RSS_TYPE_L4_BIT : XDP_RSS_TYPE_NONE;
 }
 
 static const struct net_device_ops veth_netdev_ops = {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
