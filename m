Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE6F20DD1E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 23:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD9C12047B;
	Mon, 29 Jun 2020 21:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNHNXNPrndQI; Mon, 29 Jun 2020 21:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCA20204A8;
	Mon, 29 Jun 2020 21:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08A7D1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 21:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1CF089063
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 21:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXSQsKNteZHp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 21:24:37 +0000 (UTC)
X-Greylist: delayed 00:06:33 by SQLgrey-1.7.6
Received: from smtp.aristanetworks.com (mx.aristanetworks.com [162.210.129.12])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D5B8A88D94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 21:24:37 +0000 (UTC)
Received: from us180.sjc.aristanetworks.com (us180.sjc.aristanetworks.com
 [172.25.230.4])
 by smtp.aristanetworks.com (Postfix) with ESMTP id DB96540186E;
 Mon, 29 Jun 2020 14:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arista.com;
 s=Arista-A; t=1593465481;
 bh=6rzpagTEz/0c76jqpV4RCeaagtLY9blrBtt6YCEHTrw=;
 h=Date:To:Subject:From:From;
 b=T7f3fBEHpUZytdu2dNWE4IOyY2k7FnzrY+o/OenHEBt9S58mhUR6c/sbUsE90U9um
 63HFFog4ODYUbrqhwyMkQ343mLRQk+Czh8yoTjh+Pm4O/tpDpKx1PT5w0q3r/QyAGr
 PRGBqfHrx/7eQB71w/KdbZrJZxIr5UEq0GjbQ3HrBZw1K2F0Y7AaHSuAJ6ig3TLcg8
 3RNjXFcd9utZlJ6YFi3eUfn/ZX64DNvg+C6tvNfESlrjJjI6SFLQJWFKnw+HEH4hQR
 r0evEFRhEBprt3Jv6Zxm+wdSvOgEYxn+fHauuuUYP52erWnuWY0rL1ObWwXLXZka/8
 DrkZaIFaGJmGA==
Received: by us180.sjc.aristanetworks.com (Postfix, from userid 10189)
 id C3D7095C0900; Mon, 29 Jun 2020 14:18:01 -0700 (PDT)
Date: Mon, 29 Jun 2020 14:18:01 -0700
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 jeffrey.t.kirsher@intel.com, fruggeri@arista.com
User-Agent: Heirloom mailx 12.5 7/5/10
Message-Id: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
From: fruggeri@arista.com (Francesco Ruggeri)
X-Mailman-Approved-At: Mon, 29 Jun 2020 21:27:29 +0000
Subject: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We observed a panic in igb_reset_task caused by this race condition
when doing a reboot -f:

	kworker			reboot -f

	igb_reset_task
	igb_reinit_locked
	igb_down
	napi_synchronize
				__igb_shutdown
				igb_clear_interrupt_scheme
				igb_free_q_vectors
				igb_free_q_vector
				adapter->q_vector[v_idx] = NULL;
	napi_disable
	Panics trying to access
	adapter->q_vector[v_idx].napi_state

This commit applies to igb the same changes that were applied to ixgbe
in commit 8f4c5c9fb87a ("ixgbe: reinit_locked() should be called with
rtnl_lock") and commit 88adce4ea8f9 ("ixgbe: fix possible race in
reset subtask").

Signed-off-by: Francesco Ruggeri <fruggeri@arista.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 8bb3db2cbd41..b79a78e102f3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6224,9 +6224,11 @@ static void igb_reset_task(struct work_struct *work)
 	struct igb_adapter *adapter;
 	adapter = container_of(work, struct igb_adapter, reset_task);
 
+	rtnl_lock();
 	igb_dump(adapter);
 	netdev_err(adapter->netdev, "Reset adapter\n");
 	igb_reinit_locked(adapter);
+	rtnl_unlock();
 }
 
 /**

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
