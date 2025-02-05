Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6A5A298AC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 19:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BD7383AD3;
	Wed,  5 Feb 2025 18:21:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c5Jz6fI-xRxf; Wed,  5 Feb 2025 18:21:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B47583A9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738779662;
	bh=QWEVIR1K70IdvUCxElPESVN7U0/ntJfCTxBIIuDsimE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BOqgKWW2GbmzcnD4y4NMiXdiITTlqhfTsvwtB6aNmiHLesc1Q20KHheJpE38KQXKZ
	 y6yd0cynWiFA8opDoIpaQw32cUebIWQw8U/Z4YAlRtP2eHsLf07PFvrXBx1K4N+S+R
	 KULvefcFdpypI/Z2oujJVy53iVYsiLdmKvEc/BPW+B1Lz0kU2AAwBCbtBY7pJ/JQub
	 x4+6Bw1O9g+U76zKvMJUaI4wdPQFOA6ksIMr4p6cXSQ8V0NjJyJa+ND6rP8EuJbIhn
	 zyRLE4Usb3+Imrw8dtHF3dfY7I28EKbg3QCXIGtVZw7KMGYo6FwYefqnPoy4lpzSgi
	 T/Xlbqgcjy3DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B47583A9D;
	Wed,  5 Feb 2025 18:21:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD59B12A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2E0542666
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdosiHkorRYN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 18:20:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2825F42674
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2825F42674
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2825F42674
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5A4F55C6DE4;
 Wed,  5 Feb 2025 18:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B24C4CED1;
 Wed,  5 Feb 2025 18:20:57 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Leon Romanovsky <leonro@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Ayush Sawal <ayush.sawal@chelsio.com>,
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
Date: Wed,  5 Feb 2025 20:20:22 +0200
Message-ID: <3de0445fa7bf53af388bb8d05faf60e3deb81dc2.1738778580.git.leon@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <cover.1738778580.git.leon@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738779657;
 bh=r597A/mrJflwwdNJJ4+diLkn7fbJg1NeWa572JQU1lw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MYfe2IX4HHbHPFfeTLqPwyEVtvpFDLtQ00dxIz1HjgifTX5I+ow4/9aoj5Q7bwSGw
 mc+2+jPV2QpDJtcj6EPEFG4kTsO1y2HN5YfDVQ7ZdVuk3umAK0mpzO7VhPz1fVGnwl
 UVG+SW389mHoZR649iKJxBV0xu2WinFdAIVeSj+EJeKtsANxOr2l0Vfsqqt670ttpK
 f2OE6CNM6O/JsY9XrN6k/Ja0YWNwG7Lu1oNMZe4ITunBeFS77VdjchkrLXqSEOadJ7
 eAuQ829nfbzkHAZu2M3RdiHZL5yoFzXOfDPrQfKsvy9P2/f1hYird3LIvLqhavDz+h
 pYaCG+Vj3IFDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MYfe2IX4
Subject: [Intel-wired-lan] [PATCH ipsec-next 3/5] xfrm: rely on XFRM offload
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

From: Leon Romanovsky <leonro@nvidia.com>

After change of initialization of x->type_offload pointer to be valid
only for offloaded SAs. There is no need to rely both on x->type_offload
and x->xso.type to determine if SA is offloaded or not.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/xfrm/xfrm_device.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index e01a7f5a4c75..c3c170953bf9 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -420,13 +420,11 @@ bool xfrm_dev_offload_ok(struct sk_buff *skb, struct xfrm_state *x)
 	struct xfrm_dst *xdst = (struct xfrm_dst *)dst;
 	struct net_device *dev = x->xso.dev;
 
-	if (!x->type_offload ||
-	    (x->xso.type == XFRM_DEV_OFFLOAD_UNSPECIFIED && x->encap))
+	if (x->xso.type == XFRM_DEV_OFFLOAD_UNSPECIFIED)
 		return false;
 
 	if (x->xso.type == XFRM_DEV_OFFLOAD_PACKET ||
-	    ((!dev || (dev == xfrm_dst_path(dst)->dev)) &&
-	     !xdst->child->xfrm)) {
+	    ((dev == xfrm_dst_path(dst)->dev) && !xdst->child->xfrm)) {
 		mtu = xfrm_state_mtu(x, xdst->child_mtu_cached);
 		if (skb->len <= mtu)
 			goto ok;
@@ -438,8 +436,8 @@ bool xfrm_dev_offload_ok(struct sk_buff *skb, struct xfrm_state *x)
 	return false;
 
 ok:
-	if (dev && dev->xfrmdev_ops && dev->xfrmdev_ops->xdo_dev_offload_ok)
-		return x->xso.dev->xfrmdev_ops->xdo_dev_offload_ok(skb, x);
+	if (dev->xfrmdev_ops->xdo_dev_offload_ok)
+		return dev->xfrmdev_ops->xdo_dev_offload_ok(skb, x);
 
 	return true;
 }
-- 
2.48.1

