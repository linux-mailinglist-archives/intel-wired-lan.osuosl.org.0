Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD06822B3B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 11:25:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F268B40B5D;
	Wed,  3 Jan 2024 10:25:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F268B40B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704277515;
	bh=DIAGPCK4EyPrh/Ael+oTPsoJvt+qmEkA0tC07oOAw7c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sHUPMYk42s0VqZCIc2fPsHwPs3FnqADOj/1VkK2gdbcmxOd+YriVssJ55CuUqY74b
	 l5TMyaMTM2XdMSDpVhh85ciYKWk94SW/E0pDWc1JUt3GFbrbNmeFE5r8m9KWwttZl6
	 oddxZyyDzNVNW2xGVvWYeYH2XfFFN0kjI4ZPKG20rskiZOQ6sj9CgWa8yTxCuI8i4O
	 1LP9k3XTlREWtpCtmg+q3wIUFyGiikCpRkpPuddVPHujw3ZiR+sdf+td5f5+a8w15K
	 wNb8Ec56ObV4cDz00YB4oPoCqVEWLDNzGYNGuI8zcLt7r3Xvi6hiLlVzr4T1vkdggh
	 NLyUsaGJg/CHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id as14dECZmpIV; Wed,  3 Jan 2024 10:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C79F94021C;
	Wed,  3 Jan 2024 10:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C79F94021C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB9DC1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91FD64021C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91FD64021C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GL3KKcZ-v6fP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 10:25:06 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B18ED400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 10:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B18ED400AB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 613C461359;
 Wed,  3 Jan 2024 10:25:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AD08C433C7;
 Wed,  3 Jan 2024 10:25:01 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>
Date: Wed,  3 Jan 2024 11:24:45 +0100
Message-Id: <20240103102458.3687963-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1704277505;
 bh=5Rcik7t02gBhfvqwKpMZbmbnkEm1DrJkNCgPCnScgEk=;
 h=From:To:Cc:Subject:Date:From;
 b=U4vF7p7qcZWkkoYObZ9qmo2ktv6FBoq5E+Xg7MNFl/frEzm3aIqjASJ43SafT9eKK
 5IpbXaxOjjl2lG+Id2vXcO69Qnn/0YAhjb84cjlPKoLCILW2XNFu2U1rcuOlq4dcoq
 w43AbxgDl5V+UczWqL6v4oxgftsQLFHgtEkPerbGCx8S1X/6YinQsr/yZNRC4IEyKP
 G0yuGTqTW1EMaW9hLA6taWKxbt8/XFwaRURbi2jLF1wbbmILn45J7uMQZtIl22ZHY6
 JY0gphYd0AggEXOrhAG6CljcM7VTkiKGh7focQO0U3x1GUyvy21GwKiAa+j8JWLNYm
 rMlwxDkzRsmkg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U4vF7p7q
Subject: [Intel-wired-lan] [PATCH] ice: fix building withouto XDP
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Arnd Bergmann <arnd@arndb.de>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

The newly added function fails to build when struct xsk_cb_desc is
not defined:

drivers/net/ethernet/intel/ice/ice_base.c: In function 'ice_xsk_pool_fill_cb':
drivers/net/ethernet/intel/ice/ice_base.c:525:16: error: variable 'desc' has initializer but incomplete type

Hide this part in the same #ifdef that controls the structure definition.

Fixes: d68d707dcbbf ("ice: Support XDP hints in AF_XDP ZC mode")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 6e3694145f59..0d1aeb7ca108 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -521,6 +521,7 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 
 static void ice_xsk_pool_fill_cb(struct ice_rx_ring *ring)
 {
+#ifdef CONFIG_XDP_SOCKETS
 	void *ctx_ptr = &ring->pkt_ctx;
 	struct xsk_cb_desc desc = {};
 
@@ -530,6 +531,7 @@ static void ice_xsk_pool_fill_cb(struct ice_rx_ring *ring)
 		   sizeof(struct xdp_buff);
 	desc.bytes = sizeof(ctx_ptr);
 	xsk_pool_fill_cb(ring->xsk_pool, &desc);
+#endif
 }
 
 /**
-- 
2.39.2

