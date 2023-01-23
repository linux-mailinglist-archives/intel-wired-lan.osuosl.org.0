Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 591D3677D75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:02:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4CE94173E;
	Mon, 23 Jan 2023 14:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4CE94173E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482521;
	bh=q64PvUG6u6v/EGZiXboVlLXpAFwN2b6c0gakvEDzUrY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qL97gH7/G7xb0jsfbl71osxID1NuwXovYHiJHEt77AMJ8IhsrtUnNYC/q2GehuIar
	 02epDg/q1K6CQxSUX709z4g+APz+Jw7B5pobgYZoqldsSaV63xAD773S3kxXJHrmzQ
	 5FvHU9FKFH1Q/ka1bcNXrn41SiXmBwjvZeL+j145rd0IJeKyHhUwLMXX9THICB947P
	 Gwl2CrO+fg7/v5Zzh5z3Xq7lSnNrIvGkMhK6Fkv3HJH5N07nkNGJO9lXnwci5OGo2c
	 xSLy2oi+VRkIp5jSCFgJ0obr+Ad6KC50fzlGrT1zC+LB56iFy1+BC85lzAy4lRugUb
	 DeSzZMsATseYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7U4n172JjtGQ; Mon, 23 Jan 2023 14:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B655E41687;
	Mon, 23 Jan 2023 14:01:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B655E41687
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 193501BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E61FD81F30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E61FD81F30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-xiaBWp95lm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:01:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4D0581F27
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4D0581F27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29FBCB80DC8;
 Mon, 23 Jan 2023 14:01:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02352C4339C;
 Mon, 23 Jan 2023 14:01:44 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:21 +0200
Message-Id: <09357c6f977e38179a717c5957004ecc4ded2713.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482506;
 bh=MdgE76ZIYPnwnpIjo3cBmycH+MxEMGlO/hmvEyoi2dI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tM/3twtKfrge9uvR1dy955kGQxion90wQEAMzHF6sGxK1tX13VUvDHXB3f5IlEeJA
 iCDhitkHJq22Oj1KMmXHvvFICMOo3L66SwmSOAgIb57qT5KJOG/upioQnzKa0Nmbee
 HnmU+HiXz8tm62j/88t27PaYY0tA32T3xaRTdvXdA3353+m6FcZmia4FJ3qySFBfow
 OxIFkGUr8I0CjJZGVyN2bdei0u4WuVj/uslOozZNmlSXdDWcZO/1Wl4Vc73kMVTrIt
 +erqFLC/5oDmjdr5H/oG90yem+Gayp9m5lq5CSBWThkn2H3mxTZt9cC0IQxUqf68mI
 zuiT+US7/Puhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tM/3twtK
Subject: [Intel-wired-lan] [PATCH net-next 08/10] ixgbe: fill IPsec state
 validation failure reason
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Rely on extack to return failure reason.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
Signed-off-by: Leon Romanovsky <leon@kernel.org>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 07c37dc619e8..13a6fca31004 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -572,23 +572,22 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 	int i;
 
 	if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
-		netdev_err(dev, "Unsupported protocol 0x%04x for ipsec offload\n",
-			   xs->id.proto);
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported protocol for ipsec offload");
 		return -EINVAL;
 	}
 
 	if (xs->props.mode != XFRM_MODE_TRANSPORT) {
-		netdev_err(dev, "Unsupported mode for ipsec offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported mode for ipsec offload");
 		return -EINVAL;
 	}
 
 	if (ixgbe_ipsec_check_mgmt_ip(xs)) {
-		netdev_err(dev, "IPsec IP addr clash with mgmt filters\n");
+		NL_SET_ERR_MSG_MOD(extack, "IPsec IP addr clash with mgmt filters");
 		return -EINVAL;
 	}
 
 	if (xs->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
-		netdev_err(dev, "Unsupported ipsec offload type\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported ipsec offload type");
 		return -EINVAL;
 	}
 
@@ -596,14 +595,14 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 		struct rx_sa rsa;
 
 		if (xs->calg) {
-			netdev_err(dev, "Compression offload not supported\n");
+			NL_SET_ERR_MSG_MOD(extack, "Compression offload not supported");
 			return -EINVAL;
 		}
 
 		/* find the first unused index */
 		ret = ixgbe_ipsec_find_empty_idx(ipsec, true);
 		if (ret < 0) {
-			netdev_err(dev, "No space for SA in Rx table!\n");
+			NL_SET_ERR_MSG_MOD(extack, "No space for SA in Rx table!");
 			return ret;
 		}
 		sa_idx = (u16)ret;
@@ -618,7 +617,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 		/* get the key and salt */
 		ret = ixgbe_ipsec_parse_proto_keys(xs, rsa.key, &rsa.salt);
 		if (ret) {
-			netdev_err(dev, "Failed to get key data for Rx SA table\n");
+			NL_SET_ERR_MSG_MOD(extack, "Failed to get key data for Rx SA table");
 			return ret;
 		}
 
@@ -678,7 +677,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 
 		} else {
 			/* no match and no empty slot */
-			netdev_err(dev, "No space for SA in Rx IP SA table\n");
+			NL_SET_ERR_MSG_MOD(extack, "No space for SA in Rx IP SA table");
 			memset(&rsa, 0, sizeof(rsa));
 			return -ENOSPC;
 		}
@@ -713,7 +712,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 		/* find the first unused index */
 		ret = ixgbe_ipsec_find_empty_idx(ipsec, false);
 		if (ret < 0) {
-			netdev_err(dev, "No space for SA in Tx table\n");
+			NL_SET_ERR_MSG_MOD(extack, "No space for SA in Tx table");
 			return ret;
 		}
 		sa_idx = (u16)ret;
@@ -727,7 +726,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
 
 		ret = ixgbe_ipsec_parse_proto_keys(xs, tsa.key, &tsa.salt);
 		if (ret) {
-			netdev_err(dev, "Failed to get key data for Tx SA table\n");
+			NL_SET_ERR_MSG_MOD(extack, "Failed to get key data for Tx SA table");
 			memset(&tsa, 0, sizeof(tsa));
 			return ret;
 		}
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
