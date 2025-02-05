Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C16A298A9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 19:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACA9642661;
	Wed,  5 Feb 2025 18:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NNhu_6ruzQkE; Wed,  5 Feb 2025 18:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFC5042667
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738779658;
	bh=nN3LnO8IpzoWARmN51zT8du98ZRkQIQv3Qjm9lyvY+I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QRb0Y4Uautnh1uymxaOlOwIi6DkYqgnxh1HpsklNpmYzWXxyacC3UAmgIN7bsEMKZ
	 nD1Tp6yrYi804tSoR4IfovMUx/iwFcTZ+l8bB6fnHPevIOfeo6vMLQnkK2Nlt/M9kr
	 KW4DSlIFWsp+Bbe/cz9GR2xQ2AW3Qub126ZqLLGFh+5UZ6bMZoB7Gz9YJ5Xgfu114+
	 1rg25HGqfp/CYgj24VXXMmCI9466LLnNfED+F8imXB26wPR96/nV+Shc+vwCeCkuVv
	 zt3aM7GlgJPJmiPniP9mh0ZwN6U0rpa/0LUmMxa1NSerZjEW1f+QAAPKDyGhPpCPF8
	 RPiNql7fW9mBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFC5042667;
	Wed,  5 Feb 2025 18:20:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 35E92CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 30C164265B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OFD_D3iSVEC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 18:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3100642656
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3100642656
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3100642656
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AB2475C2978;
 Wed,  5 Feb 2025 18:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78D03C4CED1;
 Wed,  5 Feb 2025 18:20:53 +0000 (UTC)
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
Date: Wed,  5 Feb 2025 20:20:24 +0200
Message-ID: <557b6b8b1b8bfd594387793dd1729483a0975244.1738778580.git.leon@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <cover.1738778580.git.leon@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738779654;
 bh=XWEebm3WI7vXFVNcASUEqDCe9EUHasGgyoIgQYx2JWs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=to5PpIspg6l0BZGxF394Z8tc372Ol38ly/jfw4xItz9pskI9iZjjuc5lfqWbTPVWf
 AuHe/JZpcQ8XPAG0+nOU3Ej6ddS6lC6C3B67IKETJgMeFM7tGGtvDTT1j3QIgsOZfE
 aIxCDHsadrAL95aSb7azh0CoULHdyCjPCc9/T2FvgHeYVc1H9h1v5UijVS1pgvguA7
 /ItXzScQ8K/7MXakpwm131rMb6Z5ji5jfAAaMlWSgSdoT3T6orCqlybQj+EEHyXVCg
 MQBR9JzbVHO7zB+cy336ODOXXqI7XPEKB/RNE/ZuYfPWw1S3as7+6yjwQL5Do1Zr/G
 WL+ZscGmQyDMw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=to5PpIsp
Subject: [Intel-wired-lan] [PATCH ipsec-next 5/5] xfrm: check for PMTU in
 tunnel mode for packet offload
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

In tunnel mode, for the packet offload, there were no PMTU signaling
to the upper level about need to fragment the packet. As a solution,
call to already existing xfrm[4|6]_tunnel_check_size() to perform that.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     |  9 +++++++++
 net/xfrm/xfrm_device.c | 10 ++++++++--
 net/xfrm/xfrm_output.c |  6 ++++--
 3 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index 58f8f7661ec4..519ab1209e4c 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -1782,6 +1782,15 @@ int xfrm_trans_queue(struct sk_buff *skb,
 				   struct sk_buff *));
 int xfrm_output_resume(struct sock *sk, struct sk_buff *skb, int err);
 int xfrm_output(struct sock *sk, struct sk_buff *skb);
+int xfrm4_tunnel_check_size(struct sk_buff *skb);
+#if IS_ENABLED(CONFIG_IPV6)
+int xfrm6_tunnel_check_size(struct sk_buff *skb);
+#else
+static inline int xfrm6_tunnel_check_size(struct sk_buff *skb)
+{
+	return -EMSGSIZE;
+}
+#endif
 
 #if IS_ENABLED(CONFIG_NET_PKTGEN)
 int pktgen_xfrm_outer_mode_output(struct xfrm_state *x, struct sk_buff *skb);
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 056df0e69d73..9ad1f85b0a27 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -419,12 +419,12 @@ bool xfrm_dev_offload_ok(struct sk_buff *skb, struct xfrm_state *x)
 	struct dst_entry *dst = skb_dst(skb);
 	struct xfrm_dst *xdst = (struct xfrm_dst *)dst;
 	struct net_device *dev = x->xso.dev;
+	bool check_tunnel_size;
 
 	if (x->xso.type == XFRM_DEV_OFFLOAD_UNSPECIFIED)
 		return false;
 
-	if (x->xso.type == XFRM_DEV_OFFLOAD_PACKET ||
-	    ((dev == xfrm_dst_path(dst)->dev) && !xdst->child->xfrm)) {
+	if ((dev == xfrm_dst_path(dst)->dev) && !xdst->child->xfrm) {
 		mtu = xfrm_state_mtu(x, xdst->child_mtu_cached);
 		if (skb->len <= mtu)
 			goto ok;
@@ -436,16 +436,22 @@ bool xfrm_dev_offload_ok(struct sk_buff *skb, struct xfrm_state *x)
 	return false;
 
 ok:
+	check_tunnel_size = x->xso.type == XFRM_DEV_OFFLOAD_PACKET &&
+			    x->props.mode == XFRM_MODE_TUNNEL;
 	switch (x->props.family) {
 	case AF_INET:
 		/* Check for IPv4 options */
 		if (ip_hdr(skb)->ihl != 5)
 			return false;
+		if (check_tunnel_size && xfrm4_tunnel_check_size(skb))
+			return false;
 		break;
 	case AF_INET6:
 		/* Check for IPv6 extensions */
 		if (ipv6_ext_hdr(ipv6_hdr(skb)->nexthdr))
 			return false;
+		if (check_tunnel_size && xfrm6_tunnel_check_size(skb))
+			return false;
 		break;
 	default:
 		break;
diff --git a/net/xfrm/xfrm_output.c b/net/xfrm/xfrm_output.c
index f7abd42c077d..34c8e266641c 100644
--- a/net/xfrm/xfrm_output.c
+++ b/net/xfrm/xfrm_output.c
@@ -786,7 +786,7 @@ int xfrm_output(struct sock *sk, struct sk_buff *skb)
 }
 EXPORT_SYMBOL_GPL(xfrm_output);
 
-static int xfrm4_tunnel_check_size(struct sk_buff *skb)
+int xfrm4_tunnel_check_size(struct sk_buff *skb)
 {
 	int mtu, ret = 0;
 
@@ -812,6 +812,7 @@ static int xfrm4_tunnel_check_size(struct sk_buff *skb)
 out:
 	return ret;
 }
+EXPORT_SYMBOL_GPL(xfrm4_tunnel_check_size);
 
 static int xfrm4_extract_output(struct xfrm_state *x, struct sk_buff *skb)
 {
@@ -834,7 +835,7 @@ static int xfrm4_extract_output(struct xfrm_state *x, struct sk_buff *skb)
 }
 
 #if IS_ENABLED(CONFIG_IPV6)
-static int xfrm6_tunnel_check_size(struct sk_buff *skb)
+int xfrm6_tunnel_check_size(struct sk_buff *skb)
 {
 	int mtu, ret = 0;
 	struct dst_entry *dst = skb_dst(skb);
@@ -864,6 +865,7 @@ static int xfrm6_tunnel_check_size(struct sk_buff *skb)
 out:
 	return ret;
 }
+EXPORT_SYMBOL_GPL(xfrm6_tunnel_check_size);
 #endif
 
 static int xfrm6_extract_output(struct xfrm_state *x, struct sk_buff *skb)
-- 
2.48.1

