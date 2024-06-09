Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 504A290173A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F11CA6066B;
	Sun,  9 Jun 2024 17:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PMr9IekuszwT; Sun,  9 Jun 2024 17:35:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B2F7607B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954506;
	bh=Zum8GvX69SnWBe4DoCpsA1sTpckA29roiLcZVSZUWYc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mw0diTJe7fYSw8Comthxo+vWNF17G+Cw80BrI4k1SH0ZWAv/IpWvYrtb7cQLdVLe3
	 2Y3ydkE1y7Mf4Ielgm/oQGrLj1mQEyYeTmTknjdEl7AQKdDa3/hkBjDO/ZhNb4srjH
	 Au+cWAIMYPleSaJQtxUZ/KSxJwHUc+RxSFDwYhZ+dpi3WBBymV+bQPlDt4PwzoYWRQ
	 5wwJ7/SeJZ0J2EQ9AY3K42tG9pPXwEL2P90m2eYTrfEWICg0c5XCpJIu2Mqef0vUfP
	 nHtPL2A/Yxyj4DV0BWrZkPnrHNCQg82qr0UBSJV5iNPOimEThzm9nxwu7Bot9gmX3x
	 yN40m0DPxl6Jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B2F7607B7;
	Sun,  9 Jun 2024 17:35:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE02E1BF589
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA325406A0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3KPU9y4WnxFo for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75F4940639
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75F4940639
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75F4940639
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:59 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 7C09B60178;
 Sun,  9 Jun 2024 17:34:54 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id AF31C204548; Sun, 09 Jun 2024 17:34:29 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:53 +0000
Message-ID: <20240609173358.193178-4-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954497;
 bh=tui1WJ7baOGzKyf18IUbLIlkbfJr/Fu2MdHRU5e5qNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IFoy71mOjo5t2qezRI5PX4FHJW2kFybFXf5/hSM0TMqBk3kMP/sGNkGumIoCuFrQ5
 TTo8C972eigjkbLLRB7h4DkMJTwVRzZQ7S6s+I6sggSi+/0tvaP8LHuw6EEdKGFNcm
 Z70WS5KqgE03OhEl7ptaV1AUZ35Z1pHszJ3PbBQzxPJVaQEBIjOPZYjk8c2Bd5VsqJ
 kZAX5tODRrt0M/mF1lJwNFWwAH0QyLTkk6JZ87x9qiFJnCxmWAwJ6ktFcX++2W0UpP
 bF3s2XtuIx5J2aVFAL8jd5vcZyTASLLxRcn9D0kLK1/9oumNB5T5f3biD5Z736NZrw
 /XZNnNR0YcVYQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=IFoy71mO
Subject: [Intel-wired-lan] [PATCH net-next 3/5] net/mlx5e: flower: validate
 encapsulation control flags
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

Encapsulation control flags are currently not used anywhere,
so all flags are currently unsupported by all drivers.

This patch adds validation of this assumption, so that
encapsulation flags may be used in the future.

In case any encapsulation control flags are masked,
flow_rule_match_has_enc_control_flags() sets a NL extended
error message, and we return -EOPNOTSUPP.

Only compile tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
index 8dfb57f712b0d..721f35e597579 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun.c
@@ -850,6 +850,12 @@ int mlx5e_tc_tun_parse(struct net_device *filter_dev,
 		flow_rule_match_enc_control(rule, &match);
 		addr_type = match.key->addr_type;
 
+		if (flow_rule_has_enc_control_flags(match.mask->flags,
+						    extack)) {
+			err = -EOPNOTSUPP;
+			goto out;
+		}
+
 		/* For tunnel addr_type used same key id`s as for non-tunnel */
 		if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
 			struct flow_match_ipv4_addrs match;
-- 
2.45.1

