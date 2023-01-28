Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5968168C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jan 2023 17:38:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79D5E41821;
	Mon, 30 Jan 2023 16:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79D5E41821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675096734;
	bh=Gvu3WD49KGVXaag6hJFpxEQtBEFmB1wNkz7R/mP4g6E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WnS9MvW4EwwGMwuQudN/Vjbm+xiazM8xRylOBlvhT2H0Qq6RuaocYtjVQ1InXdR77
	 kyBbjVQWZj2xzWEzEn7XzAUZZ4qZHpDOnMDA77nQo61aLIdjMSkNhUOV7SScl0Qd8v
	 biX9cPUNqhnq8WTv5ZuHMQK5oOPPEd2k3dpeJ496DHE54sC/2StTGYq4QirzSqBz8o
	 kwsZYugXabailf8tMI9rHcGLCp+eLw26X2NZulagb0NGNGQhj5wEILrNWlj78FE6fh
	 t6sjgV7LhZRZmA8+8j1AgrOpQ+rv8GPcvY5wlj8OR5kq4IKYHLDZ+H4RuXIehclnVK
	 whANblYLbxNhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7yMwKOeB3o5; Mon, 30 Jan 2023 16:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06EF941817;
	Mon, 30 Jan 2023 16:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06EF941817
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 266551BF307
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 01:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B25341BF2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 01:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B25341BF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id McEP06y-7ldg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 01:29:05 +0000 (UTC)
X-Greylist: delayed 00:10:00 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C870041BEE
Received: from evilolive.daedalian.us (evilolive.daedalian.us
 [IPv6:2600:3c00::f03c:91ff:fe73:cd86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C870041BEE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 01:29:04 +0000 (UTC)
Received: by evilolive.daedalian.us (Postfix, from userid 111)
 id E1732120BB; Fri, 27 Jan 2023 17:13:13 -0800 (PST)
Received: from localhost.localdomain
 (static-47-181-121-78.lsan.ca.frontiernet.net [47.181.121.78])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by evilolive.daedalian.us (Postfix) with ESMTPSA id 4D6E812084;
 Fri, 27 Jan 2023 17:13:07 -0800 (PST)
From: John Hickey <jjh@daedalian.us>
To: anthony.l.nguyen@intel.com
Date: Fri, 27 Jan 2023 17:12:12 -0800
Message-Id: <20230128011213.150171-1-jjh@daedalian.us>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 30 Jan 2023 16:38:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=daedalian.us; s=default; t=1674868393;
 bh=m80g/qcKyF6Y8HG7sLJ+YFMv8oIIC64vqUP0h+rSuYc=;
 h=From:To:Cc:Subject:Date:From;
 b=awyBtdjQdqQVfsZ7PiH5u6JlvTbp5wOS5K0jJurL5WBeA2aHkcYJcHwCtxGww7+J4
 VNwk7UXx8Por2XMqvpUW8v0Teu/hityTQUrBAs5ndED2PHOPjHMh/f3zPQCnvNFSFy
 F1TnuGRycNw34gcAWPidSFcW4m9N0a4rKs6d/5UagrMeJ5meZwlZICfXP2n1G15ant
 adSoc4csFda9Cqkha6gWLBvu+l9NFsNVgJ1p+AtheJ+NQ3U9SolIbCl40rpJjtfJbs
 OhhJbiV7C1dSQw47zfDwzwfoYJGtGYuntsqWALKSgoJ6BQzrwMdcNTrGS++DUv23Il
 Jn2cF7XxkDcVg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=daedalian.us; s=default; t=1674868388;
 bh=m80g/qcKyF6Y8HG7sLJ+YFMv8oIIC64vqUP0h+rSuYc=;
 h=From:To:Cc:Subject:Date:From;
 b=LWdhKwSL1TP2BNDpHoX8FR54V51X2xLvhQuQZ1s7cpGSIMUQqPvKvKq+U5f0/npoP
 8bbbsE/nl+1flnwe29uTdqd2Na6IgRCBPNturH8x8ckRStUYWDkc6CBECd4F1u/QAC
 2pVQeaN5t8EweUJIlMAz2QvNPPijF2gwjGm4PxEWXAyWAcRr0muYlj6ISbe/i3PHZI
 ICYHVKTJSu5/C4+8RsC0/eL7aS+XiJJEWPj1Ro+ZMgN0tq4IXzZfkTpR7xH2DHdDzG
 VGcL8BiuMEkWqddjEPEhY/Q/LCMvCpqTnTOMGpcydjh1CSPdOmTrCSl4BgN2CWeS6Y
 YNICl+IGu3erg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=daedalian.us header.i=@daedalian.us
 header.a=rsa-sha256 header.s=default header.b=awyBtdjQ; 
 dkim=pass (2048-bit key) header.d=daedalian.us header.i=@daedalian.us
 header.a=rsa-sha256 header.s=default header.b=LWdhKwSL
Subject: [Intel-wired-lan] [PATCH] ixgbe: Panic during XDP_TX with > 64 CPUs
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
Cc: Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, John Hickey <jjh@daedalian.us>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In commit 'ixgbe: let the xdpdrv work with more than 64 cpus'
(4fe815850bdc8d4cc94e06fe1de069424a895826), support was added to allow
XDP programs to run on systems with more than 64 CPUs by locking the
XDP TX rings and indexing them using cpu % 64 (IXGBE_MAX_XDP_QS).

Upon trying this out patch via the Intel 5.18.6 out of tree driver
on a system with more than 64 cores, the kernel paniced with an
array-index-out-of-bounds at the return in ixgbe_determine_xdp_ring in
ixgbe.h, which means ixgbe_determine_xdp_q_idx was just returning the
cpu instead of cpu % IXGBE_MAX_XDP_QS.

I think this is how it happens:

Upon loading the first XDP program on a system with more than 64 CPUs,
ixgbe_xdp_locking_key is incremented in ixgbe_xdp_setup.  However,
immediately after this, the rings are reconfigured by ixgbe_setup_tc.
ixgbe_setup_tc calls ixgbe_clear_interrupt_scheme which calls
ixgbe_free_q_vectors which calls ixgbe_free_q_vector in a loop.
ixgbe_free_q_vector decrements ixgbe_xdp_locking_key once per call if
it is non-zero.  Commenting out the decrement in ixgbe_free_q_vector
stopped my system from panicing.

I suspect to make the original patch work, I would need to load an XDP
program and then replace it in order to get ixgbe_xdp_locking_key back
above 0 since ixgbe_setup_tc is only called when transitioning between
XDP and non-XDP ring configurations, while ixgbe_xdp_locking_key is
incremented every time ixgbe_xdp_setup is called.

Also, ixgbe_setup_tc can be called via ethtool --set-channels, so this
becomes another path to decrement ixgbe_xdp_locking_key to 0 on systems
with greater than 64 CPUs.

For this patch, I have changed static_branch_inc to static_branch_enable
in ixgbe_setup_xdp.  We aren't counting references and I don't see any
reason to turn it off, since all the locking appears to be in the XDP_TX
path, which isn't run if a XDP program isn't loaded.

Signed-off-by: John Hickey <jjh@daedalian.us>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  | 3 ---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index f8156fe4b1dc..0ee943db3dc9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -1035,9 +1035,6 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
 	adapter->q_vector[v_idx] = NULL;
 	__netif_napi_del(&q_vector->napi);
 
-	if (static_key_enabled(&ixgbe_xdp_locking_key))
-		static_branch_dec(&ixgbe_xdp_locking_key);
-
 	/*
 	 * after a call to __netif_napi_del() napi may still be used and
 	 * ixgbe_get_stats64() might access the rings on this vector,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..cd2fb72c67be 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10283,7 +10283,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	if (nr_cpu_ids > IXGBE_MAX_XDP_QS * 2)
 		return -ENOMEM;
 	else if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
-		static_branch_inc(&ixgbe_xdp_locking_key);
+		static_branch_enable(&ixgbe_xdp_locking_key);
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	need_reset = (!!prog != !!old_prog);
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
