Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE12901733
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F32B60793;
	Sun,  9 Jun 2024 17:35:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EI71yV8GCihE; Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D5B46079C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954500;
	bh=nNTkumdBta08gIDxHhbCIB3WaKZAG26mzfa8zSbu0U4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o3r5Eoqoqs8bSMLSOTP4XyfEUOo/ozLCaQa4E3iZIgmYMTL71lDe0xpm+pFiRKrXs
	 QPOar6rSjRDCkM8AKc7Gdwdi0J+JFtG5hq3nbm7FyNPNUa8kCAlf7mAh5oM+xK9p/b
	 gWgUftKFtH2zH61Mjd1tgXgpVzP6856WQbGnmNo38jqtmMUbqkemnTFy/Cqn56jrRC
	 kHCUMoFdjHCrt5MSQG36bIjxnHGMmXoS+nbsY9UvaD2+ZXafo+EdeLM3Mqlk50QSm1
	 3fMs4+K2mc/aAsfR4jOl6kHCZf0qTHmt3xG15cZRMX6g6wFffHdpdZh9mkAWbg+Ls3
	 Cf4UdVjDwLRUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D5B46079C;
	Sun,  9 Jun 2024 17:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC5781BF589
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D99B160627
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vGuWGQcDfOJj for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB6506060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB6506060C
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB6506060C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:56 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id E2F77600B4;
 Sun,  9 Jun 2024 17:34:34 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id 8C8052045EE; Sun, 09 Jun 2024 17:34:30 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:54 +0000
Message-ID: <20240609173358.193178-5-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
References: <20240609173358.193178-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954494;
 bh=t6x1tv97EU9SAZz9jzRF2dm87Yph3Q6Qy9KKIp/7l64=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FHLyEX5cFRXCMaCxEXQ9Yb3NUuOeB8ZXuW2/sZ2EbA05SJnsXnG1jGXc3cRd27R3e
 Lug9thFOPvT2s0r+YBLoZSIRjqW2OvQfyZVZ9BAwygRDnsCmCOi4y+T+WE24jZWUds
 bvu+gLbyPhNKRb9LOrval2YJ5BVtVGn0G4/9W43d5GkqyKl4Wa9UMUcCHjI77gofxz
 5NuCgagsobeK1WsbwJRfqaOYGdhYo+Z/P5y+mU78OfW8Mp5sS0d/yQL+oYWFPaYW2Q
 eP2x/vS6LLYhYnqnr4wJQnfnMpw2aZwSYg/9cau9rdqW10Dr9qP6Vg34FZhwtVxkHi
 UorT6YIktC1eA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=FHLyEX5c
Subject: [Intel-wired-lan] [PATCH net-next 4/5] nfp: flower: validate
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
 drivers/net/ethernet/netronome/nfp/flower/offload.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/netronome/nfp/flower/offload.c b/drivers/net/ethernet/netronome/nfp/flower/offload.c
index 8e0a890381b60..46ffc2c208930 100644
--- a/drivers/net/ethernet/netronome/nfp/flower/offload.c
+++ b/drivers/net/ethernet/netronome/nfp/flower/offload.c
@@ -321,6 +321,10 @@ nfp_flower_calculate_key_layers(struct nfp_app *app,
 
 		flow_rule_match_enc_control(rule, &enc_ctl);
 
+		if (flow_rule_has_enc_control_flags(enc_ctl.mask->flags,
+						    extack))
+			return -EOPNOTSUPP;
+
 		if (enc_ctl.mask->addr_type != 0xffff) {
 			NL_SET_ERR_MSG_MOD(extack, "unsupported offload: wildcarded protocols on tunnels are not supported");
 			return -EOPNOTSUPP;
-- 
2.45.1

