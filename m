Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A120212F99
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jul 2020 00:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B8482048E;
	Thu,  2 Jul 2020 22:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htEc9qp6lKcJ; Thu,  2 Jul 2020 22:39:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 20D0723265;
	Thu,  2 Jul 2020 22:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 811171BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7733487DBA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTwFY0AYgYAP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 22:39:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.aristanetworks.com (mx.aristanetworks.com [162.210.129.12])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E328987622
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 22:39:06 +0000 (UTC)
Received: from us180.sjc.aristanetworks.com (us180.sjc.aristanetworks.com
 [172.25.230.4])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 6328640186E;
 Thu,  2 Jul 2020 15:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arista.com;
 s=Arista-A; t=1593729546;
 bh=ZVKT4xgQY8MAj9CulrPs/cabyZqtX2jpxJZx1/Wsnmo=;
 h=Date:To:Subject:From:From;
 b=rl1tlBZHsyj+T4ch+Pt9WXVyWpeqkSHxK4M1AZj+fn+EK+dxJ4VIA916sX9lRBlBO
 Jv7CzsqJeG5U08MIY3ZbZoyyJY6tZt1Cu0qOwj8x6LtgDQxb8UUpJ3rNzBVjPBIOT1
 Zc6thvjTasuaEmXKSoGk6/jxsRXunWfCu61wYQzdXAEvSSOIsm2qgQGkjfyNyd3R5h
 Oo68nc18Vo4qtamsk7AzX/SwPvHQFOtsAYPnjX34/mfJJRNWadUo/oSmz/3AMeankf
 SNzTsIRfx8eYbPwpHjyaf49BnG1Dh+PwbEByI9NOZEAw36OgqOhSFF+qtIrHdWMp+e
 40agvPS1SSqvA==
Received: by us180.sjc.aristanetworks.com (Postfix, from userid 10189)
 id 42B6C95C0494; Thu,  2 Jul 2020 15:39:06 -0700 (PDT)
Date: Thu, 02 Jul 2020 15:39:06 -0700
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 jeffrey.t.kirsher@intel.com, fruggeri@arista.com
User-Agent: Heirloom mailx 12.5 7/5/10
Message-Id: <20200702223906.42B6C95C0494@us180.sjc.aristanetworks.com>
From: fruggeri@arista.com (Francesco Ruggeri)
Subject: [Intel-wired-lan] [PATCH v2] igb: reinit_locked() should be called
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

We observed two panics involving races with igb_reset_task.
The first panic is caused by this race condition:

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

The second panic (a divide error) is caused by this race:

kworker		reboot -f	tx packet

igb_reset_task
		__igb_shutdown
		rtnl_lock()
		...
		igb_clear_interrupt_scheme
		igb_free_q_vectors
		adapter->num_tx_queues = 0
		...
		rtnl_unlock()
rtnl_lock()
igb_reinit_locked
igb_down
igb_up
netif_tx_start_all_queues
				dev_hard_start_xmit
				igb_xmit_frame
				igb_tx_queue_mapping
				Panics on
				r_idx % adapter->num_tx_queues

This commit applies to igb_reset_task the same changes that
were applied to ixgbe in commit 2f90b8657ec9 ("ixgbe: this patch
adds support for DCB to the kernel and ixgbe driver"),
commit 8f4c5c9fb87a ("ixgbe: reinit_locked() should be called with
rtnl_lock") and commit 88adce4ea8f9 ("ixgbe: fix possible race in
reset subtask").

v2: add fix for second race condition above.

Signed-off-by: Francesco Ruggeri <fruggeri@arista.com>

---
 drivers/net/ethernet/intel/igb/igb_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 8bb3db2cbd41..6e5861bfb0fa 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6224,9 +6224,18 @@ static void igb_reset_task(struct work_struct *work)
 	struct igb_adapter *adapter;
 	adapter = container_of(work, struct igb_adapter, reset_task);
 
+	rtnl_lock();
+	/* If we're already down or resetting, just bail */
+	if (test_bit(__IGB_DOWN, &adapter->state) ||
+	    test_bit(__IGB_RESETTING, &adapter->state)) {
+		rtnl_unlock();
+		return;
+	}
+
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
