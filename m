Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5FF677D6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32114416DE;
	Mon, 23 Jan 2023 14:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32114416DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482489;
	bh=h0pnkFJ7y5eEFjc8eE93s63DUJNBY0XE07ih2HwOQLQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WprIMkEBBxkyCVpCjYVPgihqaniqbee4c0mDpj+W5jFpnoEruvZMLO1DV8at5GUbn
	 2NQ66k2fcAetmMidpg2BWUH1xA6xbcKd4j6a3HHPhYukrnRU5XrpxcEiCrL6Ni/N1u
	 q0bkK3sKaZNLD39w7TXDpywIXbH5vs6Bj878WTHyOZzZEBi+IQZHAcW8qjz6fVhFe9
	 P6g1EXyITDm/QqmGWYbZ0FVDP4O8BZJXYgVlfRiOPozd+mzv29yUGonllepu1/74/B
	 xsIJeovG0yBTiDN+P05FPgPnqov/3eu5ZpMFyQe7PTuxFQoqNBnZtp8xs2rhx+muwW
	 7FCjdEMgfmA+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ig2Yy3eW4bkg; Mon, 23 Jan 2023 14:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA5AD41687;
	Mon, 23 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA5AD41687
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE9C1BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF05041687
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF05041687
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id diIN2eAa2TNL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E36C4163D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E36C4163D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 693CC60F32;
 Mon, 23 Jan 2023 14:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E01C433EF;
 Mon, 23 Jan 2023 14:01:18 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:18 +0200
Message-Id: <cef36e8974c9eb4f00638dbd6358433261186a62.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482479;
 bh=QarXgBmFo9Lr1ix7J8WZiX91oF3jhpemgSzB0Bn6K10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bTwOrd2zcI9ksQxLCUmrMCV5yAAHTB8YtbEMlg7vVQNFLQgPR/f79/UKyUDh9UDOf
 2EuHvzoa+/c60M0kUCDlDO9bIGcRG7b/OCPyc7XnoeQk8rnE+Hc4tt+TzQOd9HBEEd
 CaAd1C+YsB2r/VQzD4x0qcP2yRU9e+M5VdAwx5XNkreAd5PKvSLRa+qRWO1w2/zFZl
 WK2QcJnnC+0lMJdJ41IEZRQIraC4t050iX1w4RUwxkd0twgpjbqnU8ddSbjddBmypW
 m6emc0N3yhYQdNqqhEgMAJQZotfcAqrUlG57C1pChgpaKt9dtrpfW40QCve+Dx+uzE
 zXg9zoUMc8MVQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bTwOrd2z
Subject: [Intel-wired-lan] [PATCH net-next 05/10] netdevsim: Fill IPsec
 state validation failure reason
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
 drivers/net/netdevsim/ipsec.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/netdevsim/ipsec.c b/drivers/net/netdevsim/ipsec.c
index 84a02d69abad..f0d58092e7e9 100644
--- a/drivers/net/netdevsim/ipsec.c
+++ b/drivers/net/netdevsim/ipsec.c
@@ -140,25 +140,24 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs,
 	ipsec = &ns->ipsec;
 
 	if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
-		netdev_err(dev, "Unsupported protocol 0x%04x for ipsec offload\n",
-			   xs->id.proto);
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported protocol for ipsec offload");
 		return -EINVAL;
 	}
 
 	if (xs->calg) {
-		netdev_err(dev, "Compression offload not supported\n");
+		NL_SET_ERR_MSG_MOD(extack, "Compression offload not supported");
 		return -EINVAL;
 	}
 
 	if (xs->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
-		netdev_err(dev, "Unsupported ipsec offload type\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported ipsec offload type");
 		return -EINVAL;
 	}
 
 	/* find the first unused index */
 	ret = nsim_ipsec_find_empty_idx(ipsec);
 	if (ret < 0) {
-		netdev_err(dev, "No space for SA in Rx table!\n");
+		NL_SET_ERR_MSG_MOD(extack, "No space for SA in Rx table!");
 		return ret;
 	}
 	sa_idx = (u16)ret;
@@ -173,7 +172,7 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs,
 	/* get the key and salt */
 	ret = nsim_ipsec_parse_proto_keys(xs, sa.key, &sa.salt);
 	if (ret) {
-		netdev_err(dev, "Failed to get key data for SA table\n");
+		NL_SET_ERR_MSG_MOD(extack, "Failed to get key data for SA table");
 		return ret;
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
