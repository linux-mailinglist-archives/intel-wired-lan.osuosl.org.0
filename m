Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93C51BCC2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B16B84007;
	Thu,  5 May 2022 10:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8a_VZgt9krb2; Thu,  5 May 2022 10:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C03084002;
	Thu,  5 May 2022 10:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD8B1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BD9360F6C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FJ_kwb7kZjK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4362B60A68
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:06:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 10150616A8;
 Thu,  5 May 2022 10:06:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1365C385A4;
 Thu,  5 May 2022 10:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745217;
 bh=q1WEVxyuEoXl7drz0f3Y3iN+PquzoHa/Jr2viDW2oyg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rMx6MAn646g7dMaIDod2V+f1lup8nC0vrqbW8pS0PO/JLEVphczlDv/mdN8PUCaos
 A2mZBawndb780DBXGORMEYbp8NCRPepuNiuudtdgYc8qTopWCzqSJrj3H8+C3tS+x/
 JOFC+HLFYjFqXYAdibD8/ZNiQTgDWRjN2zp/V/pzsBD8hNQEWzI+7JKsFaqKRogwBH
 0qn3FaKqV4GFYxkxeB1V4aODx/maNPp7VvtuAs9ToQSnjZasCs/nlAJE76BWYWtrw6
 d8qJSBI8NnzUyyAl3PH+mp3EAWFKsYD7oAurWsW44n+2E1aUmL25sBvSeF9EkPoPdg
 dKaAVKXIu7Xdg==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:38 +0300
Message-Id: <a8b37f45df031108d6b191916570a1005d645d38.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 1/8] xfrm: free not used
 XFRM_ESP_NO_TRAILER flag
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

After removal of Innova IPsec support from mlx5 driver, the last user
of this XFRM_ESP_NO_TRAILER was gone too. This means that we can safely
remove it as no other hardware is capable (or need) to remove ESP trailer.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h | 2 +-
 net/ipv4/esp4.c    | 6 ------
 net/ipv6/esp6.c    | 6 ------
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index 6fb899ff5afc..b41278abeeaa 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -1006,7 +1006,7 @@ struct xfrm_offload {
 #define	CRYPTO_FALLBACK		8
 #define	XFRM_GSO_SEGMENT	16
 #define	XFRM_GRO		32
-#define	XFRM_ESP_NO_TRAILER	64
+/* 64 is free */
 #define	XFRM_DEV_RESUME		128
 #define	XFRM_XMIT		256
 
diff --git a/net/ipv4/esp4.c b/net/ipv4/esp4.c
index d747166bb291..b21238df3301 100644
--- a/net/ipv4/esp4.c
+++ b/net/ipv4/esp4.c
@@ -705,7 +705,6 @@ static int esp_output(struct xfrm_state *x, struct sk_buff *skb)
 static inline int esp_remove_trailer(struct sk_buff *skb)
 {
 	struct xfrm_state *x = xfrm_input_state(skb);
-	struct xfrm_offload *xo = xfrm_offload(skb);
 	struct crypto_aead *aead = x->data;
 	int alen, hlen, elen;
 	int padlen, trimlen;
@@ -717,11 +716,6 @@ static inline int esp_remove_trailer(struct sk_buff *skb)
 	hlen = sizeof(struct ip_esp_hdr) + crypto_aead_ivsize(aead);
 	elen = skb->len - hlen;
 
-	if (xo && (xo->flags & XFRM_ESP_NO_TRAILER)) {
-		ret = xo->proto;
-		goto out;
-	}
-
 	if (skb_copy_bits(skb, skb->len - alen - 2, nexthdr, 2))
 		BUG();
 
diff --git a/net/ipv6/esp6.c b/net/ipv6/esp6.c
index f2120e92caf1..36e1d0f8dd06 100644
--- a/net/ipv6/esp6.c
+++ b/net/ipv6/esp6.c
@@ -741,7 +741,6 @@ static int esp6_output(struct xfrm_state *x, struct sk_buff *skb)
 static inline int esp_remove_trailer(struct sk_buff *skb)
 {
 	struct xfrm_state *x = xfrm_input_state(skb);
-	struct xfrm_offload *xo = xfrm_offload(skb);
 	struct crypto_aead *aead = x->data;
 	int alen, hlen, elen;
 	int padlen, trimlen;
@@ -753,11 +752,6 @@ static inline int esp_remove_trailer(struct sk_buff *skb)
 	hlen = sizeof(struct ip_esp_hdr) + crypto_aead_ivsize(aead);
 	elen = skb->len - hlen;
 
-	if (xo && (xo->flags & XFRM_ESP_NO_TRAILER)) {
-		ret = xo->proto;
-		goto out;
-	}
-
 	ret = skb_copy_bits(skb, skb->len - alen - 2, nexthdr, 2);
 	BUG_ON(ret);
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
