Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D327D683279
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 17:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2D3E41757;
	Tue, 31 Jan 2023 16:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2D3E41757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675182244;
	bh=CTxUsKZ6m47NbvlxsnAYGvtTPF7RiDghVETah5g+XU4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=w6rDVLW9w7dJXqAKm6jB6MpRl05/0IJUbN3C0V3haq3GQ3YbBgTFOckEsrVyeR7yl
	 9+G9ZdLArig5DPwz+326TGl0yEqjs7pLcrr1CNVlo+NvzaHkP82B2p9xjtIoHjAvcX
	 W2vAQTj7VoUBP4aubDjxmI8NaAXDxWlk7rAxB7TP7N51OfSQ6/U9pbnjp0W96J8/TV
	 DhqkdRwbl9cFm/HeMSlaxxrQODDnK7gD11JJDX3H35AYMGQM/MEZri4R6nJLUuM0U1
	 HIvU8U08yPY/sf4avF33Imca2aXL5SqniqH4U4XqwU2Rgowa0WLTYRSNqI/L/ef2lK
	 ZFcmfH0KdqDaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQLw81HmxpIE; Tue, 31 Jan 2023 16:24:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DDD64174A;
	Tue, 31 Jan 2023 16:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DDD64174A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3E4E1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0221606BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0221606BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AKgPfDzjA_bp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 07:39:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F624605AC
Received: from evilolive.daedalian.us (evilolive.daedalian.us
 [IPv6:2600:3c00::f03c:91ff:fe73:cd86])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F624605AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 07:39:31 +0000 (UTC)
Received: by evilolive.daedalian.us (Postfix, from userid 111)
 id 8FD6B120DC; Mon, 30 Jan 2023 23:39:28 -0800 (PST)
Received: from localhost.localdomain
 (static-47-181-121-78.lsan.ca.frontiernet.net [47.181.121.78])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by evilolive.daedalian.us (Postfix) with ESMTPSA id B784B12072;
 Mon, 30 Jan 2023 23:39:20 -0800 (PST)
From: John Hickey <jjh@daedalian.us>
To: anthony.l.nguyen@intel.com
Date: Mon, 30 Jan 2023 23:38:15 -0800
Message-Id: <20230131073815.181341-1-jjh@daedalian.us>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 31 Jan 2023 16:23:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=daedalian.us; s=default; t=1675150768;
 bh=VH2cGfZJ/ASf0s5VyTB4yCiXFIqxZ/O9hH846PYQisI=;
 h=From:To:Cc:Subject:Date:From;
 b=WN5FWUDy5ExvhTUjTH6AW5xlVDgldt5wLPZs8XBuTICjZ2hi/gfxYhnKtWW6RXw9E
 Lwcye6EE6UI49OVDwdBRzYEjpjAJzi5LtUW7vDsWOoXRqwSGFzwdR3SmjR/9dMiw/D
 pHocMfLLtcMfqnHTdiB4CVTsPvkeZNP1B4AVSWMhlXjGdz0ePIXGcp56tzDHV0enD9
 rca3F5ptcmFjMzeRm2pkoRYyGbxijkhOulngck03rdzmgvwJI9AvsPJubFuq+tfEyE
 JEw+eCQ52d7okpvNy+CyIY014RTptKvcL949pbdK8RUZUNnzH3+u6sQGfDhEVd5VgV
 vDuc2oBFeMMiA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=daedalian.us; s=default; t=1675150762;
 bh=VH2cGfZJ/ASf0s5VyTB4yCiXFIqxZ/O9hH846PYQisI=;
 h=From:To:Cc:Subject:Date:From;
 b=YbkzfWv2uV3t9u/5wUApMhQHr5z6N0c+Ss7c1byuwJq6aJYkb2M2qq9NV+01S7H5q
 YJu9qBqgwYhI1srUJwYfQ2Scv7+sXMfXfqsY5WPZfuaW8hirtszOdyG4By9z9ae/Zx
 IcZJr7zXmVKIlGBwlNMy0/gQYmue3NA61KACTlQhlxw9gurAM9cWNRDiv7j0TcCCST
 S1/GMz+BpAYpjPkCLb5bwb+ZXTuEJmVEnQtvLElEZir5UQfDCVRfXmV6EWD9/1muHV
 Umcisn1iSAkt5zOiEGhYr5iUW1GN/0prfHKIHtemsAwPXSX8gcs9NqFShADFuBlpo3
 d0w3ReRNU6Mgw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=daedalian.us header.i=@daedalian.us
 header.a=rsa-sha256 header.s=default header.b=WN5FWUDy; 
 dkim=pass (2048-bit key) header.d=daedalian.us header.i=@daedalian.us
 header.a=rsa-sha256 header.s=default header.b=YbkzfWv2
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: Panic during XDP_TX with >
 64 CPUs
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
Cc: Shujin Li <lishujin@kuaishou.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, John Hickey <jjh@daedalian.us>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In commit 'ixgbe: let the xdpdrv work with more than 64 cpus'
(4fe815850bdc), support was added to allow XDP programs to run on systems
with more than 64 CPUs by locking the XDP TX rings and indexing them
using cpu % 64 (IXGBE_MAX_XDP_QS).

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

Fixes: 4fe815850bdc ("ixgbe: let the xdpdrv work with more than 64 cpus")
Signed-off-by: John Hickey <jjh@daedalian.us>
---
v1 -> v2:
	Added Fixes and net tag.  No code changes.
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
