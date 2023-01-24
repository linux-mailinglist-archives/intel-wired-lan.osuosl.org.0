Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39866679767
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8726418C6;
	Tue, 24 Jan 2023 12:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8726418C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562543;
	bh=99dD3Nx9yrryoaWeCXYP6SZhuQtTeeUDwzucf4p2CtY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KHc1ctwgYZmen8O/d+9p12kxkVPeM9Z9AnDzS8CUNeA1Thn4/EIOKH8frlGHxn5k6
	 Yhbt0eS9ZvRC7NTzJpPWN74dlnEauMa1MQFFKvFrZiryUMu7t2x86X5OgmHLQvNT5a
	 Bifxy3f+RhwA1FTuGHwunzZEjJ2fKv68ukgMHmLDSaE/9sbB6kbGJeABRnAnL0mFPk
	 JcvyKaJ757FCQY4YmBiTXpikQkgginRcCf/ChBklKQqIIlwPUxJfCH27QWKDwH7Q78
	 ojW/yaSF5OU12Rgt7vSs8atHjcBXJxxgPqDuEDysQiw7Ai75CYcEtIPlNPoR8LCjA4
	 9iz+otc7d2gxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ogFpZsNCMiM3; Tue, 24 Jan 2023 12:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E1A2418BD;
	Tue, 24 Jan 2023 12:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E1A2418BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CDE71BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 461C960F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461C960F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fakMTSIg6Rq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77BE960C16
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77BE960C16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id E424ACE1AE3;
 Tue, 24 Jan 2023 12:15:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64974C4339B;
 Tue, 24 Jan 2023 12:15:28 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:55:01 +0200
Message-Id: <87ca361391c6cc2dcd10e8013836b33ecbe00b57.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562529;
 bh=tcMiwRJ5LZ16nTM2ZXcPFHoJ273vNAD9QNT1hf7PpJ0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tf12cMDAn6grw+KP2FN5/pkaCe5oJ9gQpLI/1zz0nX55VmccBAwX4L5zVweS8WpV6
 K4GDGpaT+TZXYYNF2a7eEdBnrOt0wadpL/2qPPVqR/YybQT23z9UUnr4eaeUk0YLsF
 GuBd3w++hhC4LACjnXRJGCez7fIoYe24dsZv1euBJiZCcdUKrCsGanBgGLEYcGJSYJ
 v5nhaxxUNHdYaB7wFCN+P3hK9nyYXt2lON4ylE9ueuJzuPceNJP1cg+j5oezpWXbBV
 abrGxSvFLqti+S+s9Tj9yhhKlTDjtEeC4FlRfq7PJkvOMqCGU91aBES3aFWhV9BnZX
 cSkkGYlhLjgEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tf12cMDA
Subject: [Intel-wired-lan] [PATCH net-next v1 05/10] netdevsim: Fill IPsec
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
