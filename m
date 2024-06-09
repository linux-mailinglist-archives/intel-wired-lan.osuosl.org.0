Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D24E6901732
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72A3E607A9;
	Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A39fbt0-AIVQ; Sun,  9 Jun 2024 17:34:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68A5F6066B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954499;
	bh=ZzO7Vy7jCaN/xXTgypkVELcaEzW2MMuTcp82HuTgtok=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G1uIXArR7HBrYb7PgzSoH2YWyeBvtLLrXiJbdBXSWR9vpg9VKHw6NhpIn7nE+dJxc
	 J2ZEbtOWONK0DCT7cd4hLfS0tyZitILAEUr+JuSpuKiMFk7pBOy9R3Nktjpn9TkGzM
	 sbgqY60DUUfiYImGjrPfIRnT3BcmgFNJm2zDZhd9lN7Gzn5S4YRkMOv94qYLlBgtsU
	 7DnRF91l7xt6KAy2AtWb9HphnPdwVcbbK3RQdFV6ScSkcU/UG6/S6D1HX5aG5C5Jh8
	 zl4HseIR73CtDsvWqm80LQxyZG4ixD/JhfuafaTFqxj9Y6YswD+37aIerxXqL5szpY
	 pDjizmaSPqh9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68A5F6066B;
	Sun,  9 Jun 2024 17:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB4651BF589
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B614F404FF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RiUtcwutorre for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:34:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 216D240297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 216D240297
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 216D240297
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:56 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 50297600ED;
 Sun,  9 Jun 2024 17:34:35 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id B0B4D204266; Sun, 09 Jun 2024 17:34:28 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:52 +0000
Message-ID: <20240609173358.193178-3-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954494;
 bh=hm2q1pAYas67Ju2iLNfJUJWg0g77JqWi5aqqeOyq2mU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ic9e9W4Y8BjmcpDTY9+Q/CkfT38xO7CLBYrSEE9ZmBawTBHOQ2yNggOM+d4ggtFJA
 LIR7Q8oPjCNLzjg255uXIRFOwfApHPJlvjbJ7K0+FYdn2Vao1F64Bo22O4BA7hVqHk
 emdKR5eEiSDKS972m9zuaYZrBIQhAdlDGWljsp+cvO+Gk4/LZE6D67/ZsIpsYsXNgj
 ffZKUp0RW417VvfICK/LPjth0X+i3otkZWAjmp5QZLKxp6GxM8KFbEe8J3tj+96luS
 grFhSSuuWzGMgY6uw8LPhp4/x0Z6drNOKqjAFWHss8fmaPGcOhKeR1jI1IlU1950uW
 U222SYsz2lEnA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=Ic9e9W4Y
Subject: [Intel-wired-lan] [PATCH net-next 2/5] sfc: use
 flow_rule_is_supp_enc_control_flags()
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, intel-wired-lan@lists.osuosl.org,
 oss-drivers@corigine.com, i.maximets@ovn.org, Tariq Toukan <tariqt@nvidia.com>,
 linux-kernel@vger.kernel.org, Edward Cree <ecree.xilinx@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the existing check for unsupported encapsulation control flags,
to use the new helper flow_rule_is_supp_enc_control_flags().

No functional change, only compile tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/sfc/tc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/sfc/tc.c b/drivers/net/ethernet/sfc/tc.c
index 9d140203e273a..0d93164988fc6 100644
--- a/drivers/net/ethernet/sfc/tc.c
+++ b/drivers/net/ethernet/sfc/tc.c
@@ -387,11 +387,8 @@ static int efx_tc_flower_parse_match(struct efx_nic *efx,
 		struct flow_match_control fm;
 
 		flow_rule_match_enc_control(rule, &fm);
-		if (fm.mask->flags) {
-			NL_SET_ERR_MSG_FMT_MOD(extack, "Unsupported match on enc_control.flags %#x",
-					       fm.mask->flags);
+		if (flow_rule_has_enc_control_flags(fm.mask->flags, extack))
 			return -EOPNOTSUPP;
-		}
 		if (!IS_ALL_ONES(fm.mask->addr_type)) {
 			NL_SET_ERR_MSG_FMT_MOD(extack, "Unsupported enc addr_type mask %u (key %u)",
 					       fm.mask->addr_type,
-- 
2.45.1

