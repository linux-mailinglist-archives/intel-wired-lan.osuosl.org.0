Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM1XCAah4GlukQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 10:42:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6A740BB96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 10:42:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D643040827;
	Thu, 16 Apr 2026 08:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Az78Q8AO0glI; Thu, 16 Apr 2026 08:42:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93D8640829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776328960;
	bh=dpsRTOw6PhApnXb7ZlK6Vi2F3jlruIP9Fstn6qd9V7g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oGez89SEre6099hkD8HNFYrnmJNWb2/YAJjuj+1fVIn954F1x07N26LELCO0yK4bI
	 Fiy5BGTzAUdPZLHLhJ0rHJvj/phKJ4ZkUDx3Ih6XHrk8Zo1M6ck8beAS41T+PHOOLH
	 1tUs65HlHt9PrGU+N2KFCM5WmXPFS+aK8YXbJ/c7uJ8/V/Oo11ivYi+NuWVF4LqL27
	 uUaFa3Het+lIDHpht1eHcf0M8tp+E+aG4P0ddP7UxHb2F5mKNJDZDry4HfblXyAX3n
	 pMjvplRMrTkhJkM+NGLoAk1mghw5X1pu+sZyphhh6in/8nJf1hGbytBbve3OJghHQ2
	 +3sfCFDi2jwlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93D8640829;
	Thu, 16 Apr 2026 08:42:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BAB72CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:42:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CE6C80812
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUjLOJ4LqgWU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 08:42:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 389AF8080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 389AF8080C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 389AF8080C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 08:42:35 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-636-ADW1qK87OhmUfC_CjUm5Fg-1; Thu,
 16 Apr 2026 04:42:31 -0400
X-MC-Unique: ADW1qK87OhmUfC_CjUm5Fg-1
X-Mimecast-MFC-AGG-ID: ADW1qK87OhmUfC_CjUm5Fg_1776328950
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B6F93195608D; Thu, 16 Apr 2026 08:42:30 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.44.32.30])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9078A195608E; Thu, 16 Apr 2026 08:42:29 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 0A92EA803A6; Thu, 16 Apr 2026 10:42:27 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: Corinna Vinschen <vinschen@redhat.com>
Date: Thu, 16 Apr 2026 10:42:26 +0200
Message-ID: <20260416084227.3787828-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: Gvm0yRS-JZYOoUyI2Uc5RY9pA7XhgjWLg_mS1xck9bM_1776328950
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776328954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dpsRTOw6PhApnXb7ZlK6Vi2F3jlruIP9Fstn6qd9V7g=;
 b=YuIfhXoDdB6lt70v8l5rs6tqvqTsMmmhLaK8u0GTgM4MvlJiy+YJktgZAOrlbCuiylV+xW
 p5MXxaS2VnL+6nY65XAPDf/0V6JuR9JVwq0pJqawMlngkYtCPp+CM8XkFQcXTCXuM9wXsQ
 kbA4EI0Bql+S9i7ownqJ1R/W0RgQedI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=YuIfhXoD
Subject: [Intel-wired-lan] [PATCH net] ixgbe: only access vfinfo and mv_list
 under RCU lock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[7.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:server fail];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6D6A740BB96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 1e53834ce541d ("ixgbe: Add locking to prevent panic when setting
sriov_numvfs to zero") added a spinlock to the adapter info.  The reason
at the time was an observed crash when ixgbe_disable_sriov() freed the
adapter->vfinfo array while the interrupt driven function ixgbe_msg_task()
was handling VF messages.

Recent stability testing turned up another crash, which is very easily
reproducible:

  while true
  do
    for numvfs in 5 0
    do
      echo $numvfs > /sys/class/net/eth0/device/sriov_numvfs
    done
  done

This crashed almost always within the first two hundred runs with
a NULL pointer deref while running the ixgbe_service_task() workqueue:

[ 5052.036491] BUG: kernel NULL pointer dereference, address: 0000000000000258
[ 5052.043454] #PF: supervisor read access in kernel mode
[ 5052.048594] #PF: error_code(0x0000) - not-present page
[ 5052.053734] PGD 0 P4D 0
[ 5052.056272] Oops: Oops: 0000 #1 SMP NOPTI
[ 5052.060459] CPU: 2 UID: 0 PID: 132253 Comm: kworker/u96:0 Kdump: loaded Not tainted 6.12.0-180.el10.x86_64 #1 PREEMPT(voluntary)
[ 5052.072100] Hardware name: Dell Inc. PowerEdge R740/0DY2X0, BIOS 2.12.2 07/09/2021
[ 5052.079664] Workqueue: ixgbe ixgbe_service_task [ixgbe]
[ 5052.084907] RIP: 0010:ixgbe_update_stats+0x8b1/0xb40 [ixgbe]
[ 5052.090585] Code: 21 56 50 49 8b b6 18 26 00 00 4c 01 fe 48 09 46 50 42 8d 34 a5 00 83 00 00 e8 cb 7a ff ff 49 8b b6 18 26 00 00 89 c0 4c 01 fe <48> 3b 86 88 00 00 00 73 18 48 b9 00 00 00 00 01 00 00 00 48 01 4e
[ 5052.109331] RSP: 0018:ffffd5f1e8a6bd88 EFLAGS: 00010202
[ 5052.114558] RAX: 0000000000000000 RBX: ffff8f49b22b14a0 RCX: 000000000000023c
[ 5052.121689] RDX: ffffffff00000000 RSI: 00000000000001d0 RDI: ffff8f49b22b14a0
[ 5052.128823] RBP: 000000000000109c R08: 0000000000000000 R09: 0000000000000000
[ 5052.135955] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000002
[ 5052.143086] R13: 0000000000008410 R14: ffff8f49b22b01a0 R15: 00000000000001d0
[ 5052.150221] FS:  0000000000000000(0000) GS:ffff8f58bfc80000(0000) knlGS:0000000000000000
[ 5052.158307] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 5052.164054] CR2: 0000000000000258 CR3: 0000000bf2624006 CR4: 00000000007726f0
[ 5052.171187] PKRU: 55555554
[ 5052.173898] Call Trace:
[ 5052.176351]  <TASK>
[ 5052.178457]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 5052.182816]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 5052.187177]  ? ixgbe_watchdog_subtask+0x1a1/0x230 [ixgbe]
[ 5052.192591]  ? __die_body.cold+0x8/0x12
[ 5052.196433]  ? page_fault_oops+0x148/0x160
[ 5052.200532]  ? exc_page_fault+0x7f/0x150
[ 5052.204458]  ? asm_exc_page_fault+0x26/0x30
[ 5052.208643]  ? ixgbe_update_stats+0x8b1/0xb40 [ixgbe]
[ 5052.213714]  ? ixgbe_update_stats+0x8a5/0xb40 [ixgbe]
[ 5052.218784]  ixgbe_watchdog_subtask+0x1a1/0x230 [ixgbe]
[ 5052.224026]  ixgbe_service_task+0x15a/0x3f0 [ixgbe]
[ 5052.228916]  process_one_work+0x177/0x330
[ 5052.232928]  worker_thread+0x256/0x3a0
[ 5052.236681]  ? __pfx_worker_thread+0x10/0x10
[ 5052.240952]  kthread+0xfa/0x240
[ 5052.244099]  ? __pfx_kthread+0x10/0x10
[ 5052.247852]  ret_from_fork+0x34/0x50
[ 5052.251429]  ? __pfx_kthread+0x10/0x10
[ 5052.255185]  ret_from_fork_asm+0x1a/0x30
[ 5052.259112]  </TASK>

The first simple patch, just adding spinlocking to ixgbe_update_stats()
while reading from adapter->vfinfo, did not fix the problem, it just
moved it elsewhere: I could now reproduce the same kind of crash in
ixgbe_restore_vf_multicasts().

But adding more spinlocking doesn't really cut it.  One reason is that
ixgbe_restore_vf_multicasts() is called from within ixgbe_msg_task()
with active spinlock, as well as from outside without locking.

Additionally, given that ixgbe_disable_sriov() is the only call changing
adapter->vfinfo, and given ixgbe_disable_sriov() is called very
seldom compared to other actions in the driver, just adding more
spinlocks would unnecessarily occupy the driver with spinning when
multiple functions accessing adapter->vfinfo are running in parallel.

So this patch drops the spinlock in favor of RCU and uses it throughout
the driver.

While changing this, it seems prudent to do the same for the
adapter->mv_list array, which is allocated and freed at the same time as
adapter->vfinfo, albeit there was no crash observed.

Fixes: 1e53834ce541d ("ixgbe: Add locking to prevent panic when setting sriov_numvfs to zero")
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   7 +-
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |  36 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  44 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  17 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 229 +++++---
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 547 ++++++++++++------
 6 files changed, 593 insertions(+), 287 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 9b8217523fd2..8849b9f42bf6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -210,6 +210,7 @@ struct vf_stats {
 };
 
 struct vf_data_storage {
+	struct rcu_head rcu_head;
 	struct pci_dev *vfdev;
 	unsigned char vf_mac_addresses[ETH_ALEN];
 	u16 vf_mc_hashes[IXGBE_MAX_VF_MC_ENTRIES];
@@ -240,6 +241,7 @@ enum ixgbevf_xcast_modes {
 };
 
 struct vf_macvlans {
+	struct rcu_head rcu_head;
 	struct list_head l;
 	int vf;
 	bool free;
@@ -808,10 +810,10 @@ struct ixgbe_adapter {
 	/* SR-IOV */
 	DECLARE_BITMAP(active_vfs, IXGBE_MAX_VF_FUNCTIONS);
 	unsigned int num_vfs;
-	struct vf_data_storage *vfinfo;
+	struct vf_data_storage __rcu *vfinfo;
 	int vf_rate_link_speed;
 	struct vf_macvlans vf_mvs;
-	struct vf_macvlans *mv_list;
+	struct vf_macvlans __rcu *mv_list;
 
 	u32 timer_event_accumulator;
 	u32 vferr_refcount;
@@ -844,7 +846,6 @@ struct ixgbe_adapter {
 #ifdef CONFIG_IXGBE_IPSEC
 	struct ixgbe_ipsec *ipsec;
 #endif /* CONFIG_IXGBE_IPSEC */
-	spinlock_t vfs_lock;
 };
 
 struct ixgbe_netdevice_priv {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
index 382d097e4b11..9a84cfc09120 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
@@ -640,17 +640,21 @@ static int ixgbe_dcbnl_ieee_setapp(struct net_device *dev,
 	/* VF devices should use default UP when available */
 	if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
 	    app->protocol == 0) {
+		struct vf_data_storage *vfinfo;
 		int vf;
 
 		adapter->default_up = app->priority;
 
-		for (vf = 0; vf < adapter->num_vfs; vf++) {
-			struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
-
-			if (!vfinfo->pf_qos)
-				ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
-						app->priority, vf);
-		}
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			for (vf = 0; vf < adapter->num_vfs; vf++) {
+				if (!vfinfo[vf].pf_qos)
+					ixgbe_set_vmvir(adapter,
+							vfinfo[vf].pf_vlan,
+							app->priority, vf);
+			}
+		rcu_read_unlock();
 	}
 
 	return 0;
@@ -683,19 +687,23 @@ static int ixgbe_dcbnl_ieee_delapp(struct net_device *dev,
 	/* IF default priority is being removed clear VF default UP */
 	if (app->selector == IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
 	    app->protocol == 0 && adapter->default_up == app->priority) {
+		struct vf_data_storage *vfinfo;
 		int vf;
 		long unsigned int app_mask = dcb_ieee_getapp_mask(dev, app);
 		int qos = app_mask ? find_first_bit(&app_mask, 8) : 0;
 
 		adapter->default_up = qos;
 
-		for (vf = 0; vf < adapter->num_vfs; vf++) {
-			struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
-
-			if (!vfinfo->pf_qos)
-				ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
-						qos, vf);
-		}
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			for (vf = 0; vf < adapter->num_vfs; vf++) {
+				if (!vfinfo[vf].pf_qos)
+					ixgbe_set_vmvir(adapter,
+							vfinfo[vf].pf_vlan,
+							qos, vf);
+			}
+		rcu_read_unlock();
 	}
 
 	return err;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index ba049b3a9609..b77317476af4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2265,21 +2265,28 @@ static void ixgbe_diag_test(struct net_device *netdev,
 		struct ixgbe_hw *hw = &adapter->hw;
 
 		if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
+			struct vf_data_storage *vfinfo;
 			int i;
-			for (i = 0; i < adapter->num_vfs; i++) {
-				if (adapter->vfinfo[i].clear_to_send) {
-					netdev_warn(netdev, "offline diagnostic is not supported when VFs are present\n");
-					data[0] = 1;
-					data[1] = 1;
-					data[2] = 1;
-					data[3] = 1;
-					data[4] = 1;
-					eth_test->flags |= ETH_TEST_FL_FAILED;
-					clear_bit(__IXGBE_TESTING,
-						  &adapter->state);
-					return;
+
+			rcu_read_lock();
+			vfinfo = rcu_dereference(adapter->vfinfo);
+			if (vfinfo)
+				for (i = 0; i < adapter->num_vfs; i++) {
+					if (vfinfo[i].clear_to_send) {
+						netdev_warn(netdev, "offline diagnostic is not supported when VFs are present\n");
+						data[0] = 1;
+						data[1] = 1;
+						data[2] = 1;
+						data[3] = 1;
+						data[4] = 1;
+						eth_test->flags |= ETH_TEST_FL_FAILED;
+						clear_bit(__IXGBE_TESTING,
+							  &adapter->state);
+						rcu_read_unlock();
+						return;
+					}
 				}
-			}
+			rcu_read_unlock();
 		}
 
 		/* Offline tests */
@@ -3700,9 +3707,14 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	if (priv_flags & IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF) {
 		if (adapter->hw.mac.type == ixgbe_mac_82599EB) {
 			/* Reset primary abort counter */
-			for (i = 0; i < adapter->num_vfs; i++)
-				adapter->vfinfo[i].primary_abort_count = 0;
-
+			struct vf_data_storage *vfinfo;
+
+			rcu_read_lock();
+			vfinfo = rcu_dereference(adapter->vfinfo);
+			if (vfinfo)
+				for (i = 0; i < adapter->num_vfs; i++)
+					vfinfo[i].primary_abort_count = 0;
+			rcu_read_unlock();
 			flags2 |= IXGBE_FLAG2_AUTO_DISABLE_VF;
 		} else {
 			e_info(probe,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index bd397b3d7dea..b524a3a61eb6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -874,6 +874,7 @@ void ixgbe_ipsec_vf_clear(struct ixgbe_adapter *adapter, u32 vf)
 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 {
 	struct ixgbe_ipsec *ipsec = adapter->ipsec;
+	struct vf_data_storage *vfinfo;
 	struct xfrm_algo_desc *algo;
 	struct sa_mbx_msg *sam;
 	struct xfrm_state *xs;
@@ -883,7 +884,13 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 	int err;
 
 	sam = (struct sa_mbx_msg *)(&msgbuf[1]);
-	if (!adapter->vfinfo[vf].trusted ||
+
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	if (!vfinfo[vf].trusted ||
 	    !(adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
 		e_warn(drv, "VF %d attempted to add an IPsec SA\n", vf);
 		err = -EACCES;
@@ -984,11 +991,17 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 int ixgbe_ipsec_vf_del_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 {
 	struct ixgbe_ipsec *ipsec = adapter->ipsec;
+	struct vf_data_storage *vfinfo;
 	struct xfrm_state *xs;
 	u32 pfsa = msgbuf[1];
 	u16 sa_idx;
 
-	if (!adapter->vfinfo[vf].trusted) {
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	if (!vfinfo[vf].trusted) {
 		e_err(drv, "vf %d attempted to delete an SA\n", vf);
 		return -EPERM;
 	}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2646ee6f295f..6ee8c2a140c2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1240,20 +1240,26 @@ static void ixgbe_pf_handle_tx_hang(struct ixgbe_ring *tx_ring,
 static void ixgbe_vf_handle_tx_hang(struct ixgbe_adapter *adapter, u16 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 
 	if (adapter->hw.mac.type != ixgbe_mac_e610)
 		return;
 
-	e_warn(drv,
-	       "Malicious Driver Detection tx hang detected on PF %d VF %d MAC: %pM",
-	       hw->bus.func, vf, adapter->vfinfo[vf].vf_mac_addresses);
-
-	adapter->tx_hang_count[vf]++;
-	if (adapter->tx_hang_count[vf] == IXGBE_MAX_TX_VF_HANGS) {
-		ixgbe_set_vf_link_state(adapter, vf,
-					IFLA_VF_LINK_STATE_DISABLE);
-		adapter->tx_hang_count[vf] = 0;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo) {
+		e_warn(drv,
+		       "Malicious Driver Detection tx hang detected on PF %d VF %d MAC: %pM",
+		       hw->bus.func, vf, vfinfo[vf].vf_mac_addresses);
+
+		adapter->tx_hang_count[vf]++;
+		if (adapter->tx_hang_count[vf] == IXGBE_MAX_TX_VF_HANGS) {
+			ixgbe_set_vf_link_state(adapter, vf,
+						IFLA_VF_LINK_STATE_DISABLE);
+			adapter->tx_hang_count[vf] = 0;
+		}
 	}
+	rcu_read_unlock();
 }
 
 static u32 ixgbe_poll_tx_icache(struct ixgbe_hw *hw, u16 queue, u16 idx)
@@ -4625,6 +4631,7 @@ static void ixgbe_configure_virtualization(struct ixgbe_adapter *adapter)
 	struct ixgbe_hw *hw = &adapter->hw;
 	u16 pool = adapter->num_rx_pools;
 	u32 reg_offset, vf_shift, vmolr;
+	struct vf_data_storage *vfinfo;
 	u32 gcr_ext, vmdctl;
 	int i;
 
@@ -4680,15 +4687,19 @@ static void ixgbe_configure_virtualization(struct ixgbe_adapter *adapter)
 
 	IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);
 
-	for (i = 0; i < adapter->num_vfs; i++) {
-		/* configure spoof checking */
-		ixgbe_ndo_set_vf_spoofchk(adapter->netdev, i,
-					  adapter->vfinfo[i].spoofchk_enabled);
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (i = 0; i < adapter->num_vfs; i++) {
+			/* configure spoof checking */
+			ixgbe_ndo_set_vf_spoofchk(adapter->netdev, i,
+						  vfinfo[i].spoofchk_enabled);
 
-		/* Enable/Disable RSS query feature  */
-		ixgbe_ndo_set_vf_rss_query_en(adapter->netdev, i,
-					  adapter->vfinfo[i].rss_query_enabled);
-	}
+			/* Enable/Disable RSS query feature  */
+			ixgbe_ndo_set_vf_rss_query_en(adapter->netdev, i,
+						  vfinfo[i].rss_query_enabled);
+		}
+	rcu_read_unlock();
 }
 
 static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
@@ -6093,35 +6104,40 @@ static void ixgbe_check_media_subtask(struct ixgbe_adapter *adapter)
 static void ixgbe_clear_vf_stats_counters(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	int i;
 
-	for (i = 0; i < adapter->num_vfs; i++) {
-		adapter->vfinfo[i].last_vfstats.gprc =
-			IXGBE_READ_REG(hw, IXGBE_PVFGPRC(i));
-		adapter->vfinfo[i].saved_rst_vfstats.gprc +=
-			adapter->vfinfo[i].vfstats.gprc;
-		adapter->vfinfo[i].vfstats.gprc = 0;
-		adapter->vfinfo[i].last_vfstats.gptc =
-			IXGBE_READ_REG(hw, IXGBE_PVFGPTC(i));
-		adapter->vfinfo[i].saved_rst_vfstats.gptc +=
-			adapter->vfinfo[i].vfstats.gptc;
-		adapter->vfinfo[i].vfstats.gptc = 0;
-		adapter->vfinfo[i].last_vfstats.gorc =
-			IXGBE_READ_REG(hw, IXGBE_PVFGORC_LSB(i));
-		adapter->vfinfo[i].saved_rst_vfstats.gorc +=
-			adapter->vfinfo[i].vfstats.gorc;
-		adapter->vfinfo[i].vfstats.gorc = 0;
-		adapter->vfinfo[i].last_vfstats.gotc =
-			IXGBE_READ_REG(hw, IXGBE_PVFGOTC_LSB(i));
-		adapter->vfinfo[i].saved_rst_vfstats.gotc +=
-			adapter->vfinfo[i].vfstats.gotc;
-		adapter->vfinfo[i].vfstats.gotc = 0;
-		adapter->vfinfo[i].last_vfstats.mprc =
-			IXGBE_READ_REG(hw, IXGBE_PVFMPRC(i));
-		adapter->vfinfo[i].saved_rst_vfstats.mprc +=
-			adapter->vfinfo[i].vfstats.mprc;
-		adapter->vfinfo[i].vfstats.mprc = 0;
-	}
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (i = 0; i < adapter->num_vfs; i++) {
+			vfinfo[i].last_vfstats.gprc =
+				IXGBE_READ_REG(hw, IXGBE_PVFGPRC(i));
+			vfinfo[i].saved_rst_vfstats.gprc +=
+				vfinfo[i].vfstats.gprc;
+			vfinfo[i].vfstats.gprc = 0;
+			vfinfo[i].last_vfstats.gptc =
+				IXGBE_READ_REG(hw, IXGBE_PVFGPTC(i));
+			vfinfo[i].saved_rst_vfstats.gptc +=
+				vfinfo[i].vfstats.gptc;
+			vfinfo[i].vfstats.gptc = 0;
+			vfinfo[i].last_vfstats.gorc =
+				IXGBE_READ_REG(hw, IXGBE_PVFGORC_LSB(i));
+			vfinfo[i].saved_rst_vfstats.gorc +=
+				vfinfo[i].vfstats.gorc;
+			vfinfo[i].vfstats.gorc = 0;
+			vfinfo[i].last_vfstats.gotc =
+				IXGBE_READ_REG(hw, IXGBE_PVFGOTC_LSB(i));
+			vfinfo[i].saved_rst_vfstats.gotc +=
+				vfinfo[i].vfstats.gotc;
+			vfinfo[i].vfstats.gotc = 0;
+			vfinfo[i].last_vfstats.mprc =
+				IXGBE_READ_REG(hw, IXGBE_PVFMPRC(i));
+			vfinfo[i].saved_rst_vfstats.mprc +=
+				vfinfo[i].vfstats.mprc;
+			vfinfo[i].vfstats.mprc = 0;
+		}
+	rcu_read_unlock();
 }
 
 static void ixgbe_setup_gpie(struct ixgbe_adapter *adapter)
@@ -6729,15 +6745,22 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 	timer_delete_sync(&adapter->service_timer);
 
 	if (adapter->num_vfs) {
+		struct vf_data_storage *vfinfo;
+
 		/* Clear EITR Select mapping */
 		IXGBE_WRITE_REG(&adapter->hw, IXGBE_EITRSEL, 0);
 
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
 		/* Mark all the VFs as inactive */
-		for (i = 0 ; i < adapter->num_vfs; i++)
-			adapter->vfinfo[i].clear_to_send = false;
+		if (vfinfo) {
+			for (i = 0 ; i < adapter->num_vfs; i++)
+				vfinfo[i].clear_to_send = false;
 
-		/* update setting rx tx for all active vfs */
-		ixgbe_set_all_vfs(adapter);
+			/* update setting rx tx for all active vfs */
+			ixgbe_set_all_vfs(adapter);
+		}
+		rcu_read_unlock();
 	}
 
 	/* disable transmits in the hardware now that interrupts are off */
@@ -7001,9 +7024,6 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 	/* n-tuple support exists, always init our spinlock */
 	spin_lock_init(&adapter->fdir_perfect_lock);
 
-	/* init spinlock to avoid concurrency of VF resources */
-	spin_lock_init(&adapter->vfs_lock);
-
 #ifdef CONFIG_IXGBE_DCB
 	ixgbe_init_dcb(adapter);
 #endif
@@ -7905,25 +7925,31 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	 * crazy values.
 	 */
 	if (!test_bit(__IXGBE_RESETTING, &adapter->state)) {
-		for (i = 0; i < adapter->num_vfs; i++) {
-			UPDATE_VF_COUNTER_32bit(IXGBE_PVFGPRC(i),
-						adapter->vfinfo[i].last_vfstats.gprc,
-						adapter->vfinfo[i].vfstats.gprc);
-			UPDATE_VF_COUNTER_32bit(IXGBE_PVFGPTC(i),
-						adapter->vfinfo[i].last_vfstats.gptc,
-						adapter->vfinfo[i].vfstats.gptc);
-			UPDATE_VF_COUNTER_36bit(IXGBE_PVFGORC_LSB(i),
-						IXGBE_PVFGORC_MSB(i),
-						adapter->vfinfo[i].last_vfstats.gorc,
-						adapter->vfinfo[i].vfstats.gorc);
-			UPDATE_VF_COUNTER_36bit(IXGBE_PVFGOTC_LSB(i),
-						IXGBE_PVFGOTC_MSB(i),
-						adapter->vfinfo[i].last_vfstats.gotc,
-						adapter->vfinfo[i].vfstats.gotc);
-			UPDATE_VF_COUNTER_32bit(IXGBE_PVFMPRC(i),
-						adapter->vfinfo[i].last_vfstats.mprc,
-						adapter->vfinfo[i].vfstats.mprc);
-		}
+		struct vf_data_storage *vfinfo;
+
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			for (i = 0; i < adapter->num_vfs; i++) {
+				UPDATE_VF_COUNTER_32bit(IXGBE_PVFGPRC(i),
+							vfinfo[i].last_vfstats.gprc,
+							vfinfo[i].vfstats.gprc);
+				UPDATE_VF_COUNTER_32bit(IXGBE_PVFGPTC(i),
+							vfinfo[i].last_vfstats.gptc,
+							vfinfo[i].vfstats.gptc);
+				UPDATE_VF_COUNTER_36bit(IXGBE_PVFGORC_LSB(i),
+							IXGBE_PVFGORC_MSB(i),
+							vfinfo[i].last_vfstats.gorc,
+							vfinfo[i].vfstats.gorc);
+				UPDATE_VF_COUNTER_36bit(IXGBE_PVFGOTC_LSB(i),
+							IXGBE_PVFGOTC_MSB(i),
+							vfinfo[i].last_vfstats.gotc,
+							vfinfo[i].vfstats.gotc);
+				UPDATE_VF_COUNTER_32bit(IXGBE_PVFMPRC(i),
+							vfinfo[i].last_vfstats.mprc,
+							vfinfo[i].vfstats.mprc);
+			}
+		rcu_read_unlock();
 	}
 }
 
@@ -8267,22 +8293,27 @@ static void ixgbe_watchdog_flush_tx(struct ixgbe_adapter *adapter)
 static void ixgbe_bad_vf_abort(struct ixgbe_adapter *adapter, u32 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 
-	if (adapter->hw.mac.type == ixgbe_mac_82599EB &&
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo &&
+	    adapter->hw.mac.type == ixgbe_mac_82599EB &&
 	    adapter->flags2 & IXGBE_FLAG2_AUTO_DISABLE_VF) {
-		adapter->vfinfo[vf].primary_abort_count++;
-		if (adapter->vfinfo[vf].primary_abort_count ==
+		vfinfo[vf].primary_abort_count++;
+		if (vfinfo[vf].primary_abort_count ==
 		    IXGBE_PRIMARY_ABORT_LIMIT) {
 			ixgbe_set_vf_link_state(adapter, vf,
 						IFLA_VF_LINK_STATE_DISABLE);
-			adapter->vfinfo[vf].primary_abort_count = 0;
+			vfinfo[vf].primary_abort_count = 0;
 
 			e_info(drv,
 			       "Malicious Driver Detection event detected on PF %d VF %d MAC: %pM mdd-disable-vf=on",
 			       hw->bus.func, vf,
-			       adapter->vfinfo[vf].vf_mac_addresses);
+			       vfinfo[vf].vf_mac_addresses);
 		}
 	}
+	rcu_read_unlock();
 }
 
 static void ixgbe_check_for_bad_vf(struct ixgbe_adapter *adapter)
@@ -8309,9 +8340,15 @@ static void ixgbe_check_for_bad_vf(struct ixgbe_adapter *adapter)
 
 	/* check status reg for all VFs owned by this PF */
 	for (vf = 0; vf < adapter->num_vfs; ++vf) {
-		struct pci_dev *vfdev = adapter->vfinfo[vf].vfdev;
+		struct vf_data_storage *vfinfo;
+		struct pci_dev *vfdev = NULL;
 		u16 status_reg;
 
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			vfdev = vfinfo[vf].vfdev;
+		rcu_read_unlock();
 		if (!vfdev)
 			continue;
 		pci_read_config_word(vfdev, PCI_STATUS, &status_reg);
@@ -9744,17 +9781,23 @@ static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
 				  struct ifla_vf_stats *vf_stats)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
 
 	if (vf < 0 || vf >= adapter->num_vfs)
 		return -EINVAL;
 
-	vf_stats->rx_packets = adapter->vfinfo[vf].vfstats.gprc;
-	vf_stats->rx_bytes   = adapter->vfinfo[vf].vfstats.gorc;
-	vf_stats->tx_packets = adapter->vfinfo[vf].vfstats.gptc;
-	vf_stats->tx_bytes   = adapter->vfinfo[vf].vfstats.gotc;
-	vf_stats->multicast  = adapter->vfinfo[vf].vfstats.mprc;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo) {
+		vf_stats->rx_packets = vfinfo[vf].vfstats.gprc;
+		vf_stats->rx_bytes   = vfinfo[vf].vfstats.gorc;
+		vf_stats->tx_packets = vfinfo[vf].vfstats.gptc;
+		vf_stats->tx_bytes   = vfinfo[vf].vfstats.gotc;
+		vf_stats->multicast  = vfinfo[vf].vfstats.mprc;
+	}
+	rcu_read_unlock();
 
-	return 0;
+	return vfinfo ? 0 : -EINVAL;
 }
 
 #ifdef CONFIG_IXGBE_DCB
@@ -10071,20 +10114,26 @@ static int handle_redirect_action(struct ixgbe_adapter *adapter, int ifindex,
 {
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 	unsigned int num_vfs = adapter->num_vfs, vf;
+	struct vf_data_storage *vfinfo;
 	struct netdev_nested_priv priv;
 	struct upper_walk_data data;
 	struct net_device *upper;
 
 	/* redirect to a SRIOV VF */
-	for (vf = 0; vf < num_vfs; ++vf) {
-		upper = pci_get_drvdata(adapter->vfinfo[vf].vfdev);
-		if (upper->ifindex == ifindex) {
-			*queue = vf * __ALIGN_MASK(1, ~vmdq->mask);
-			*action = vf + 1;
-			*action <<= ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF;
-			return 0;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (vf = 0; vf < num_vfs; ++vf) {
+			upper = pci_get_drvdata(vfinfo[vf].vfdev);
+			if (upper->ifindex == ifindex) {
+				*queue = vf * __ALIGN_MASK(1, ~vmdq->mask);
+				*action = vf + 1;
+				*action <<= ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF;
+				rcu_read_unlock();
+				return 0;
+			}
 		}
-	}
+	rcu_read_unlock();
 
 	/* redirect to a offloaded macvlan netdev */
 	data.adapter = adapter;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 431d77da15a5..80f22a8e7af4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -44,7 +44,7 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
 			mv_list[i].free = true;
 			list_add(&mv_list[i].l, &adapter->vf_mvs.l);
 		}
-		adapter->mv_list = mv_list;
+		rcu_assign_pointer(adapter->mv_list, mv_list);
 	}
 }
 
@@ -52,6 +52,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 				unsigned int num_vfs)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	int i;
 
 	if (adapter->xdp_prog) {
@@ -64,14 +65,11 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 			  IXGBE_FLAG_VMDQ_ENABLED;
 
 	/* Allocate memory for per VF control structures */
-	adapter->vfinfo = kzalloc_objs(struct vf_data_storage, num_vfs);
-	if (!adapter->vfinfo)
+	vfinfo = kzalloc_objs(struct vf_data_storage, num_vfs);
+	if (!vfinfo)
 		return -ENOMEM;
 
-	adapter->num_vfs = num_vfs;
-
 	ixgbe_alloc_vf_macvlans(adapter, num_vfs);
-	adapter->ring_feature[RING_F_VMDQ].offset = num_vfs;
 
 	/* Initialize default switching mode VEB */
 	IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);
@@ -95,23 +93,27 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 
 	for (i = 0; i < num_vfs; i++) {
 		/* enable spoof checking for all VFs */
-		adapter->vfinfo[i].spoofchk_enabled = true;
-		adapter->vfinfo[i].link_enable = true;
+		vfinfo[i].spoofchk_enabled = true;
+		vfinfo[i].link_enable = true;
 
 		/* We support VF RSS querying only for 82599 and x540
 		 * devices at the moment. These devices share RSS
 		 * indirection table and RSS hash key with PF therefore
 		 * we want to disable the querying by default.
 		 */
-		adapter->vfinfo[i].rss_query_enabled = false;
+		vfinfo[i].rss_query_enabled = false;
 
 		/* Untrust all VFs */
-		adapter->vfinfo[i].trusted = false;
+		vfinfo[i].trusted = false;
 
 		/* set the default xcast mode */
-		adapter->vfinfo[i].xcast_mode = IXGBEVF_XCAST_MODE_NONE;
+		vfinfo[i].xcast_mode = IXGBEVF_XCAST_MODE_NONE;
 	}
 
+	rcu_assign_pointer(adapter->vfinfo, vfinfo);
+	adapter->num_vfs = num_vfs;
+	adapter->ring_feature[RING_F_VMDQ].offset = num_vfs;
+
 	e_info(probe, "SR-IOV enabled with %d VFs\n", num_vfs);
 	return 0;
 }
@@ -123,6 +125,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 static void ixgbe_get_vfs(struct ixgbe_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
+	struct vf_data_storage *vfinfo;
 	u16 vendor = pdev->vendor;
 	struct pci_dev *vfdev;
 	int vf = 0;
@@ -134,18 +137,23 @@ static void ixgbe_get_vfs(struct ixgbe_adapter *adapter)
 		return;
 	pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
 
-	vfdev = pci_get_device(vendor, vf_id, NULL);
-	for (; vfdev; vfdev = pci_get_device(vendor, vf_id, vfdev)) {
-		if (!vfdev->is_virtfn)
-			continue;
-		if (vfdev->physfn != pdev)
-			continue;
-		if (vf >= adapter->num_vfs)
-			continue;
-		pci_dev_get(vfdev);
-		adapter->vfinfo[vf].vfdev = vfdev;
-		++vf;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo) {
+		vfdev = pci_get_device(vendor, vf_id, NULL);
+		for (; vfdev; vfdev = pci_get_device(vendor, vf_id, vfdev)) {
+			if (!vfdev->is_virtfn)
+				continue;
+			if (vfdev->physfn != pdev)
+				continue;
+			if (vf >= adapter->num_vfs)
+				continue;
+			pci_dev_get(vfdev);
+			vfinfo[vf].vfdev = vfdev;
+			++vf;
+		}
 	}
+	rcu_read_unlock();
 }
 
 /* Note this function is called when the user wants to enable SR-IOV
@@ -206,31 +214,28 @@ int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 {
 	unsigned int num_vfs = adapter->num_vfs, vf;
 	struct ixgbe_hw *hw = &adapter->hw;
-	unsigned long flags;
+	struct vf_data_storage *vfinfo;
+	struct vf_macvlans *mv_list;
 	int rss;
 
-	spin_lock_irqsave(&adapter->vfs_lock, flags);
-	/* set num VFs to 0 to prevent access to vfinfo */
+	/* set num VFs to 0 so readers bail out early */
 	adapter->num_vfs = 0;
-	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+
+	vfinfo = rcu_replace_pointer(adapter->vfinfo, NULL, 1);
+	mv_list = rcu_replace_pointer(adapter->mv_list, NULL, 1);
 
 	/* put the reference to all of the vf devices */
 	for (vf = 0; vf < num_vfs; ++vf) {
-		struct pci_dev *vfdev = adapter->vfinfo[vf].vfdev;
+		struct pci_dev *vfdev = vfinfo[vf].vfdev;
 
 		if (!vfdev)
 			continue;
-		adapter->vfinfo[vf].vfdev = NULL;
+		vfinfo[vf].vfdev = NULL;
 		pci_dev_put(vfdev);
 	}
 
-	/* free VF control structures */
-	kfree(adapter->vfinfo);
-	adapter->vfinfo = NULL;
-
-	/* free macvlan list */
-	kfree(adapter->mv_list);
-	adapter->mv_list = NULL;
+	kfree_rcu(vfinfo, rcu_head);
+	kfree_rcu(mv_list, rcu_head);
 
 	/* if SR-IOV is already disabled then there is nothing to do */
 	if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
@@ -368,8 +373,8 @@ static int ixgbe_set_vf_multicasts(struct ixgbe_adapter *adapter,
 {
 	int entries = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
 	u16 *hash_list = (u16 *)&msgbuf[1];
-	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	int i;
 	u32 vector_bit;
 	u32 vector_reg;
@@ -379,28 +384,34 @@ static int ixgbe_set_vf_multicasts(struct ixgbe_adapter *adapter,
 	/* only so many hash values supported */
 	entries = min(entries, IXGBE_MAX_VF_MC_ENTRIES);
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/*
 	 * salt away the number of multi cast addresses assigned
 	 * to this VF for later use to restore when the PF multi cast
 	 * list changes
 	 */
-	vfinfo->num_vf_mc_hashes = entries;
+	vfinfo[vf].num_vf_mc_hashes = entries;
 
 	/*
 	 * VFs are limited to using the MTA hash table for their multicast
 	 * addresses
 	 */
 	for (i = 0; i < entries; i++) {
-		vfinfo->vf_mc_hashes[i] = hash_list[i];
+		vfinfo[vf].vf_mc_hashes[i] = hash_list[i];
 	}
 
-	for (i = 0; i < vfinfo->num_vf_mc_hashes; i++) {
-		vector_reg = (vfinfo->vf_mc_hashes[i] >> 5) & 0x7F;
-		vector_bit = vfinfo->vf_mc_hashes[i] & 0x1F;
+	for (i = 0; i < vfinfo[vf].num_vf_mc_hashes; i++) {
+		vector_reg = (vfinfo[vf].vf_mc_hashes[i] >> 5) & 0x7F;
+		vector_bit = vfinfo[vf].vf_mc_hashes[i] & 0x1F;
 		mta_reg = IXGBE_READ_REG(hw, IXGBE_MTA(vector_reg));
 		mta_reg |= BIT(vector_bit);
 		IXGBE_WRITE_REG(hw, IXGBE_MTA(vector_reg), mta_reg);
 	}
+
 	vmolr |= IXGBE_VMOLR_ROMPE;
 	IXGBE_WRITE_REG(hw, IXGBE_VMOLR(vf), vmolr);
 
@@ -410,32 +421,39 @@ static int ixgbe_set_vf_multicasts(struct ixgbe_adapter *adapter,
 #ifdef CONFIG_PCI_IOV
 void ixgbe_restore_vf_multicasts(struct ixgbe_adapter *adapter)
 {
-	struct ixgbe_hw *hw = &adapter->hw;
 	struct vf_data_storage *vfinfo;
+	struct ixgbe_hw *hw = &adapter->hw;
 	int i, j;
 	u32 vector_bit;
 	u32 vector_reg;
 	u32 mta_reg;
 
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		goto no_vfs;
+
 	for (i = 0; i < adapter->num_vfs; i++) {
 		u32 vmolr = IXGBE_READ_REG(hw, IXGBE_VMOLR(i));
-		vfinfo = &adapter->vfinfo[i];
-		for (j = 0; j < vfinfo->num_vf_mc_hashes; j++) {
+		for (j = 0; j < vfinfo[i].num_vf_mc_hashes; j++) {
 			hw->addr_ctrl.mta_in_use++;
-			vector_reg = (vfinfo->vf_mc_hashes[j] >> 5) & 0x7F;
-			vector_bit = vfinfo->vf_mc_hashes[j] & 0x1F;
+			vector_reg = (vfinfo[i].vf_mc_hashes[j] >> 5) & 0x7F;
+			vector_bit = vfinfo[i].vf_mc_hashes[j] & 0x1F;
 			mta_reg = IXGBE_READ_REG(hw, IXGBE_MTA(vector_reg));
 			mta_reg |= BIT(vector_bit);
 			IXGBE_WRITE_REG(hw, IXGBE_MTA(vector_reg), mta_reg);
 		}
 
-		if (vfinfo->num_vf_mc_hashes)
+		if (vfinfo[i].num_vf_mc_hashes)
 			vmolr |= IXGBE_VMOLR_ROMPE;
 		else
 			vmolr &= ~IXGBE_VMOLR_ROMPE;
 		IXGBE_WRITE_REG(hw, IXGBE_VMOLR(i), vmolr);
 	}
 
+no_vfs:
+	rcu_read_unlock();
+
 	/* Restore any VF macvlans */
 	ixgbe_full_sync_mac_table(adapter);
 }
@@ -493,7 +511,9 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 	 */
 	if (adapter->hw.mac.type == ixgbe_mac_82599EB) {
 		struct net_device *dev = adapter->netdev;
+		unsigned int vf_api = ixgbe_mbox_api_10;
 		int pf_max_frame = dev->mtu + ETH_HLEN;
+		struct vf_data_storage *vfinfo;
 		u32 reg_offset, vf_shift, vfre;
 		int err = 0;
 
@@ -503,7 +523,12 @@ static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf
 					     IXGBE_FCOE_JUMBO_FRAME_SIZE);
 
 #endif /* CONFIG_FCOE */
-		switch (adapter->vfinfo[vf].vf_api) {
+		lockdep_assert_in_rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			vf_api = vfinfo[vf].vf_api;
+
+		switch (vf_api) {
 		case ixgbe_mbox_api_11:
 		case ixgbe_mbox_api_12:
 		case ixgbe_mbox_api_13:
@@ -643,10 +668,16 @@ static void ixgbe_clear_vf_vlans(struct ixgbe_adapter *adapter, u32 vf)
 static int ixgbe_set_vf_macvlan(struct ixgbe_adapter *adapter,
 				int vf, int index, unsigned char *mac_addr)
 {
-	struct vf_macvlans *entry;
+	struct vf_macvlans *mv_list, *entry;
 	bool found = false;
 	int retval = 0;
 
+	lockdep_assert_in_rcu_read_lock();
+	/* vf_mvs entries point into the mv_list array */
+	mv_list = rcu_dereference(adapter->mv_list);
+	if (!mv_list)
+		return 0;
+
 	if (index <= 1) {
 		list_for_each_entry(entry, &adapter->vf_mvs.l, l) {
 			if (entry->vf == vf) {
@@ -700,7 +731,7 @@ static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
-	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
+	struct vf_data_storage *vfinfo;
 	u32 q_per_pool = __ALIGN_MASK(1, ~vmdq->mask);
 	u8 num_tcs = adapter->hw_tcs;
 	u32 reg_val;
@@ -709,31 +740,36 @@ static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
 	/* remove VLAN filters belonging to this VF */
 	ixgbe_clear_vf_vlans(adapter, vf);
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return;
+
 	/* add back PF assigned VLAN or VLAN 0 */
-	ixgbe_set_vf_vlan(adapter, true, vfinfo->pf_vlan, vf);
+	ixgbe_set_vf_vlan(adapter, true, vfinfo[vf].pf_vlan, vf);
 
 	/* reset offloads to defaults */
-	ixgbe_set_vmolr(hw, vf, !vfinfo->pf_vlan);
+	ixgbe_set_vmolr(hw, vf, !vfinfo[vf].pf_vlan);
 
 	/* set outgoing tags for VFs */
-	if (!vfinfo->pf_vlan && !vfinfo->pf_qos && !num_tcs) {
+	if (!vfinfo[vf].pf_vlan && !vfinfo[vf].pf_qos && !num_tcs) {
 		ixgbe_clear_vmvir(adapter, vf);
 	} else {
-		if (vfinfo->pf_qos || !num_tcs)
-			ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
-					vfinfo->pf_qos, vf);
+		if (vfinfo[vf].pf_qos || !num_tcs)
+			ixgbe_set_vmvir(adapter, vfinfo[vf].pf_vlan,
+					vfinfo[vf].pf_qos, vf);
 		else
-			ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
+			ixgbe_set_vmvir(adapter, vfinfo[vf].pf_vlan,
 					adapter->default_up, vf);
 
-		if (vfinfo->spoofchk_enabled) {
+		if (vfinfo[vf].spoofchk_enabled) {
 			hw->mac.ops.set_vlan_anti_spoofing(hw, true, vf);
 			hw->mac.ops.set_mac_anti_spoofing(hw, true, vf);
 		}
 	}
 
 	/* reset multicast table array for vf */
-	adapter->vfinfo[vf].num_vf_mc_hashes = 0;
+	vfinfo[vf].num_vf_mc_hashes = 0;
 
 	/* clear any ipsec table info */
 	ixgbe_ipsec_vf_clear(adapter, vf);
@@ -741,11 +777,11 @@ static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
 	/* Flush and reset the mta with the new values */
 	ixgbe_set_rx_mode(adapter->netdev);
 
-	ixgbe_del_mac_filter(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
+	ixgbe_del_mac_filter(adapter, vfinfo[vf].vf_mac_addresses, vf);
 	ixgbe_set_vf_macvlan(adapter, vf, 0, NULL);
 
 	/* reset VF api back to unknown */
-	adapter->vfinfo[vf].vf_api = ixgbe_mbox_api_10;
+	vfinfo[vf].vf_api = ixgbe_mbox_api_10;
 
 	/* Restart each queue for given VF */
 	for (queue = 0; queue < q_per_pool; queue++) {
@@ -780,16 +816,25 @@ static void ixgbe_vf_clear_mbx(struct ixgbe_adapter *adapter, u32 vf)
 static int ixgbe_set_vf_mac(struct ixgbe_adapter *adapter,
 			    int vf, unsigned char *mac_addr)
 {
+	struct vf_data_storage *vfinfo;
 	int retval;
 
-	ixgbe_del_mac_filter(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo) {
+		rcu_read_unlock();
+		return -EINVAL;
+	}
+
+	ixgbe_del_mac_filter(adapter, vfinfo[vf].vf_mac_addresses, vf);
 	retval = ixgbe_add_mac_filter(adapter, mac_addr, vf);
 	if (retval >= 0)
-		memcpy(adapter->vfinfo[vf].vf_mac_addresses, mac_addr,
+		memcpy(vfinfo[vf].vf_mac_addresses, mac_addr,
 		       ETH_ALEN);
 	else
-		eth_zero_addr(adapter->vfinfo[vf].vf_mac_addresses);
+		eth_zero_addr(vfinfo[vf].vf_mac_addresses);
 
+	rcu_read_unlock();
 	return retval;
 }
 
@@ -797,12 +842,17 @@ int ixgbe_vf_configuration(struct pci_dev *pdev, unsigned int event_mask)
 {
 	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 	unsigned int vfn = (event_mask & 0x3f);
+	struct vf_data_storage *vfinfo;
 
 	bool enable = ((event_mask & 0x10000000U) != 0);
 
-	if (enable)
-		eth_zero_addr(adapter->vfinfo[vfn].vf_mac_addresses);
-
+	if (enable) {
+		rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			eth_zero_addr(vfinfo[vfn].vf_mac_addresses);
+		rcu_read_unlock();
+	}
 	return 0;
 }
 
@@ -838,6 +888,7 @@ static void ixgbe_set_vf_rx_tx(struct ixgbe_adapter *adapter, int vf)
 {
 	u32 reg_cur_tx, reg_cur_rx, reg_req_tx, reg_req_rx;
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	u32 reg_offset, vf_shift;
 
 	vf_shift = vf % 32;
@@ -846,7 +897,9 @@ static void ixgbe_set_vf_rx_tx(struct ixgbe_adapter *adapter, int vf)
 	reg_cur_tx = IXGBE_READ_REG(hw, IXGBE_VFTE(reg_offset));
 	reg_cur_rx = IXGBE_READ_REG(hw, IXGBE_VFRE(reg_offset));
 
-	if (adapter->vfinfo[vf].link_enable) {
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo && vfinfo[vf].link_enable) {
 		reg_req_tx = reg_cur_tx | 1 << vf_shift;
 		reg_req_rx = reg_cur_rx | 1 << vf_shift;
 	} else {
@@ -882,11 +935,12 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 {
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 	struct ixgbe_hw *hw = &adapter->hw;
-	unsigned char *vf_mac = adapter->vfinfo[vf].vf_mac_addresses;
+	struct vf_data_storage *vfinfo;
 	u32 reg, reg_offset, vf_shift;
 	u32 msgbuf[4] = {0, 0, 0, 0};
 	u8 *addr = (u8 *)(&msgbuf[1]);
 	u32 q_per_pool = __ALIGN_MASK(1, ~vmdq->mask);
+	unsigned char *vf_mac;
 	int i;
 
 	e_info(probe, "VF Reset msg received from vf %d\n", vf);
@@ -896,6 +950,13 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 
 	ixgbe_vf_clear_mbx(adapter, vf);
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	vf_mac = vfinfo[vf].vf_mac_addresses;
+
 	/* set vf mac address */
 	if (!is_zero_ether_addr(vf_mac))
 		ixgbe_set_vf_mac(adapter, vf, vf_mac);
@@ -905,7 +966,7 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 
 	/* force drop enable for all VF Rx queues */
 	reg = IXGBE_QDE_ENABLE;
-	if (adapter->vfinfo[vf].pf_vlan)
+	if (vfinfo[vf].pf_vlan)
 		reg |= IXGBE_QDE_HIDE_VLAN;
 
 	ixgbe_write_qde(adapter, vf, reg);
@@ -913,7 +974,7 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 	ixgbe_set_vf_rx_tx(adapter, vf);
 
 	/* enable VF mailbox for further messages */
-	adapter->vfinfo[vf].clear_to_send = true;
+	vfinfo[vf].clear_to_send = true;
 
 	/* Enable counting of spoofed packets in the SSVPC register */
 	reg = IXGBE_READ_REG(hw, IXGBE_VMECM(reg_offset));
@@ -931,7 +992,7 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 
 	/* reply to reset with ack and vf mac address */
 	msgbuf[0] = IXGBE_VF_RESET;
-	if (!is_zero_ether_addr(vf_mac) && adapter->vfinfo[vf].pf_set_mac) {
+	if (!is_zero_ether_addr(vf_mac) && vfinfo[vf].pf_set_mac) {
 		msgbuf[0] |= IXGBE_VT_MSGTYPE_ACK;
 		memcpy(addr, vf_mac, ETH_ALEN);
 	} else {
@@ -952,14 +1013,20 @@ static int ixgbe_set_vf_mac_addr(struct ixgbe_adapter *adapter,
 				 u32 *msgbuf, u32 vf)
 {
 	u8 *new_mac = ((u8 *)(&msgbuf[1]));
+	struct vf_data_storage *vfinfo;
 
 	if (!is_valid_ether_addr(new_mac)) {
 		e_warn(drv, "VF %d attempted to set invalid mac\n", vf);
 		return -1;
 	}
 
-	if (adapter->vfinfo[vf].pf_set_mac && !adapter->vfinfo[vf].trusted &&
-	    !ether_addr_equal(adapter->vfinfo[vf].vf_mac_addresses, new_mac)) {
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	if (vfinfo[vf].pf_set_mac && !vfinfo[vf].trusted &&
+	    !ether_addr_equal(vfinfo[vf].vf_mac_addresses, new_mac)) {
 		e_warn(drv,
 		       "VF %d attempted to override administratively set MAC address\n"
 		       "Reload the VF driver to resume operations\n",
@@ -975,9 +1042,15 @@ static int ixgbe_set_vf_vlan_msg(struct ixgbe_adapter *adapter,
 {
 	u32 add = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
 	u32 vid = (msgbuf[1] & IXGBE_VLVF_VLANID_MASK);
+	struct vf_data_storage *vfinfo;
 	u8 tcs = adapter->hw_tcs;
 
-	if (adapter->vfinfo[vf].pf_vlan || tcs) {
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	if (vfinfo[vf].pf_vlan || tcs) {
 		e_warn(drv,
 		       "VF %d attempted to override administratively set VLAN configuration\n"
 		       "Reload the VF driver to resume operations\n",
@@ -997,9 +1070,15 @@ static int ixgbe_set_vf_macvlan_msg(struct ixgbe_adapter *adapter,
 {
 	u8 *new_mac = ((u8 *)(&msgbuf[1]));
 	int index = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
+	struct vf_data_storage *vfinfo;
 	int err;
 
-	if (adapter->vfinfo[vf].pf_set_mac && !adapter->vfinfo[vf].trusted &&
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	if (vfinfo[vf].pf_set_mac && !vfinfo[vf].trusted &&
 	    index > 0) {
 		e_warn(drv,
 		       "VF %d requested MACVLAN filter but is administratively denied\n",
@@ -1018,7 +1097,7 @@ static int ixgbe_set_vf_macvlan_msg(struct ixgbe_adapter *adapter,
 		 * If the VF is allowed to set MAC filters then turn off
 		 * anti-spoofing to avoid false positives.
 		 */
-		if (adapter->vfinfo[vf].spoofchk_enabled) {
+		if (vfinfo[vf].spoofchk_enabled) {
 			struct ixgbe_hw *hw = &adapter->hw;
 
 			hw->mac.ops.set_mac_anti_spoofing(hw, false, vf);
@@ -1038,6 +1117,7 @@ static int ixgbe_set_vf_macvlan_msg(struct ixgbe_adapter *adapter,
 static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 				  u32 *msgbuf, u32 vf)
 {
+	struct vf_data_storage *vfinfo;
 	int api = msgbuf[1];
 
 	switch (api) {
@@ -1048,7 +1128,10 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_17:
-		adapter->vfinfo[vf].vf_api = api;
+		lockdep_assert_in_rcu_read_lock();
+		vfinfo = rcu_dereference(adapter->vfinfo);
+		if (vfinfo)
+			vfinfo[vf].vf_api = api;
 		return 0;
 	default:
 		break;
@@ -1064,11 +1147,17 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 {
 	struct net_device *dev = adapter->netdev;
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
+	struct vf_data_storage *vfinfo;
 	unsigned int default_tc = 0;
 	u8 num_tcs = adapter->hw_tcs;
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/* verify the PF is supporting the correct APIs */
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_20:
 	case ixgbe_mbox_api_11:
 	case ixgbe_mbox_api_12:
@@ -1092,7 +1181,7 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 	/* notify VF of need for VLAN tag stripping, and correct queue */
 	if (num_tcs)
 		msgbuf[IXGBE_VF_TRANS_VLAN] = num_tcs;
-	else if (adapter->vfinfo[vf].pf_vlan || adapter->vfinfo[vf].pf_qos)
+	else if (vfinfo[vf].pf_vlan || vfinfo[vf].pf_qos)
 		msgbuf[IXGBE_VF_TRANS_VLAN] = 1;
 	else
 		msgbuf[IXGBE_VF_TRANS_VLAN] = 0;
@@ -1105,17 +1194,23 @@ static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
 
 static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 {
-	u32 i, j;
-	u32 *out_buf = &msgbuf[1];
-	const u8 *reta = adapter->rss_indir_tbl;
 	u32 reta_size = ixgbe_rss_indir_tbl_entries(adapter);
+	const u8 *reta = adapter->rss_indir_tbl;
+	struct vf_data_storage *vfinfo;
+	u32 *out_buf = &msgbuf[1];
+	u32 i, j;
+
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
 
 	/* Check if operation is permitted */
-	if (!adapter->vfinfo[vf].rss_query_enabled)
+	if (!vfinfo[vf].rss_query_enabled)
 		return -EPERM;
 
 	/* verify the PF is supporting the correct API */
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
@@ -1143,14 +1238,20 @@ static int ixgbe_get_vf_reta(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
 				u32 *msgbuf, u32 vf)
 {
+	struct vf_data_storage *vfinfo;
 	u32 *rss_key = &msgbuf[1];
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/* Check if the operation is permitted */
-	if (!adapter->vfinfo[vf].rss_query_enabled)
+	if (!vfinfo[vf].rss_query_enabled)
 		return -EPERM;
 
 	/* verify the PF is supporting the correct API */
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_17:
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_14:
@@ -1170,11 +1271,17 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 				      u32 *msgbuf, u32 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	int xcast_mode = msgbuf[1];
 	u32 vmolr, fctrl, disable, enable;
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/* verify the PF is supporting the correct APIs */
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_12:
 		/* promisc introduced in 1.3 version */
 		if (xcast_mode == IXGBEVF_XCAST_MODE_PROMISC)
@@ -1190,11 +1297,11 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 	}
 
 	if (xcast_mode > IXGBEVF_XCAST_MODE_MULTI &&
-	    !adapter->vfinfo[vf].trusted) {
+	    !vfinfo[vf].trusted) {
 		xcast_mode = IXGBEVF_XCAST_MODE_MULTI;
 	}
 
-	if (adapter->vfinfo[vf].xcast_mode == xcast_mode)
+	if (vfinfo[vf].xcast_mode == xcast_mode)
 		goto out;
 
 	switch (xcast_mode) {
@@ -1236,7 +1343,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 	vmolr |= enable;
 	IXGBE_WRITE_REG(hw, IXGBE_VMOLR(vf), vmolr);
 
-	adapter->vfinfo[vf].xcast_mode = xcast_mode;
+	vfinfo[vf].xcast_mode = xcast_mode;
 
 out:
 	msgbuf[1] = xcast_mode;
@@ -1247,10 +1354,16 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 				   u32 *msgbuf, u32 vf)
 {
+	struct vf_data_storage *vfinfo;
 	u32 *link_state = &msgbuf[1];
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/* verify the PF is supporting the correct API */
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
@@ -1261,7 +1374,7 @@ static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
-	*link_state = adapter->vfinfo[vf].link_enable;
+	*link_state = vfinfo[vf].link_enable;
 
 	return 0;
 }
@@ -1280,8 +1393,14 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 				     u32 *msgbuf, u32 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
+
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
 
-	switch (adapter->vfinfo[vf].vf_api) {
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_16:
 	case ixgbe_mbox_api_17:
 		if (hw->mac.type != ixgbe_mac_e610)
@@ -1310,9 +1429,15 @@ static int ixgbe_send_vf_link_status(struct ixgbe_adapter *adapter,
 static int ixgbe_negotiate_vf_features(struct ixgbe_adapter *adapter,
 				       u32 *msgbuf, u32 vf)
 {
+	struct vf_data_storage *vfinfo;
 	u32 features = msgbuf[1];
 
-	switch (adapter->vfinfo[vf].vf_api) {
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
+	switch (vfinfo[vf].vf_api) {
 	case ixgbe_mbox_api_17:
 		break;
 	default:
@@ -1330,6 +1455,7 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
 	u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	int retval;
 
 	retval = ixgbe_read_mbx(hw, msgbuf, mbx_size, vf);
@@ -1349,11 +1475,16 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	if (msgbuf[0] == IXGBE_VF_RESET)
 		return ixgbe_vf_reset_msg(adapter, vf);
 
+	lockdep_assert_in_rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		return 0;
+
 	/*
 	 * until the vf completes a virtual function reset it should not be
 	 * allowed to start any configuration.
 	 */
-	if (!adapter->vfinfo[vf].clear_to_send) {
+	if (!vfinfo[vf].clear_to_send) {
 		msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
 		ixgbe_write_mbx(hw, msgbuf, 1, vf);
 		return 0;
@@ -1426,11 +1557,12 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 
 static void ixgbe_rcv_ack_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
+	struct vf_data_storage *vfinfo = rcu_dereference(adapter->vfinfo);
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 msg = IXGBE_VT_MSGTYPE_NACK;
 
 	/* if device isn't clear to send it shouldn't be reading either */
-	if (!adapter->vfinfo[vf].clear_to_send)
+	if (vfinfo && !vfinfo[vf].clear_to_send)
 		ixgbe_write_mbx(hw, &msg, 1, vf);
 }
 
@@ -1462,15 +1594,21 @@ bool ixgbe_check_mdd_event(struct ixgbe_adapter *adapter)
 			 IXGBE_READ_REG(hw, IXGBE_LVMMC_RX));
 
 		if (hw->mac.ops.restore_mdd_vf) {
+			struct vf_data_storage *vfinfo;
 			u32 ping;
 
 			hw->mac.ops.restore_mdd_vf(hw, i);
 
 			/* get the VF to rebuild its queues */
-			adapter->vfinfo[i].clear_to_send = 0;
-			ping = IXGBE_PF_CONTROL_MSG |
-			       IXGBE_VT_MSGTYPE_CTS;
-			ixgbe_write_mbx(hw, &ping, 1, i);
+			rcu_read_lock();
+			vfinfo = rcu_dereference(adapter->vfinfo);
+			if (vfinfo) {
+				vfinfo[i].clear_to_send = false;
+				ping = IXGBE_PF_CONTROL_MSG |
+				       IXGBE_VT_MSGTYPE_CTS;
+				ixgbe_write_mbx(hw, &ping, 1, i);
+			}
+			rcu_read_unlock();
 		}
 
 		ret = true;
@@ -1482,12 +1620,11 @@ bool ixgbe_check_mdd_event(struct ixgbe_adapter *adapter)
 void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	unsigned long flags;
 	u32 vf;
 
 	ixgbe_check_mdd_event(adapter);
 
-	spin_lock_irqsave(&adapter->vfs_lock, flags);
+	rcu_read_lock();
 	for (vf = 0; vf < adapter->num_vfs; vf++) {
 		/* process any reset requests */
 		if (!ixgbe_check_for_rst(hw, vf))
@@ -1501,7 +1638,7 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 		if (!ixgbe_check_for_ack(hw, vf))
 			ixgbe_rcv_ack_from_vf(adapter, vf);
 	}
-	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
+	rcu_read_unlock();
 }
 
 static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
@@ -1510,23 +1647,26 @@ static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
 	u32 ping;
 
 	ping = IXGBE_PF_CONTROL_MSG;
-	if (adapter->vfinfo[vf].clear_to_send)
-		ping |= IXGBE_VT_MSGTYPE_CTS;
 	ixgbe_write_mbx(hw, &ping, 1, vf);
 }
 
 void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 	u32 ping;
 	int i;
 
-	for (i = 0 ; i < adapter->num_vfs; i++) {
-		ping = IXGBE_PF_CONTROL_MSG;
-		if (adapter->vfinfo[i].clear_to_send)
-			ping |= IXGBE_VT_MSGTYPE_CTS;
-		ixgbe_write_mbx(hw, &ping, 1, i);
-	}
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (i = 0 ; i < adapter->num_vfs; i++) {
+			ping = IXGBE_PF_CONTROL_MSG;
+			if (vfinfo[i].clear_to_send)
+				ping |= IXGBE_VT_MSGTYPE_CTS;
+			ixgbe_write_mbx(hw, &ping, 1, i);
+		}
+	rcu_read_unlock();
 }
 
 /**
@@ -1537,21 +1677,34 @@ void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter)
  **/
 void ixgbe_set_all_vfs(struct ixgbe_adapter *adapter)
 {
+	struct vf_data_storage *vfinfo;
 	int i;
 
-	for (i = 0 ; i < adapter->num_vfs; i++)
-		ixgbe_set_vf_link_state(adapter, i,
-					adapter->vfinfo[i].link_state);
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (i = 0 ; i < adapter->num_vfs; i++)
+			ixgbe_set_vf_link_state(adapter, i,
+						vfinfo[i].link_state);
+	rcu_read_unlock();
 }
 
 int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
 	int retval;
 
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo) {
+		rcu_read_unlock();
+		return 0;
+	}
+
 	if (is_valid_ether_addr(mac)) {
 		dev_info(&adapter->pdev->dev, "setting MAC %pM on VF %d\n",
 			 mac, vf);
@@ -1559,7 +1712,7 @@ int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 
 		retval = ixgbe_set_vf_mac(adapter, vf, mac);
 		if (retval >= 0) {
-			adapter->vfinfo[vf].pf_set_mac = true;
+			vfinfo[vf].pf_set_mac = true;
 
 			if (test_bit(__IXGBE_DOWN, &adapter->state)) {
 				dev_warn(&adapter->pdev->dev, "The VF MAC address has been set, but the PF device is not up.\n");
@@ -1569,18 +1722,19 @@ int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 			dev_warn(&adapter->pdev->dev, "The VF MAC address was NOT set due to invalid or duplicate MAC address.\n");
 		}
 	} else if (is_zero_ether_addr(mac)) {
-		unsigned char *vf_mac_addr =
-					   adapter->vfinfo[vf].vf_mac_addresses;
+		unsigned char *vf_mac_addr = vfinfo[vf].vf_mac_addresses;
 
 		/* nothing to do */
-		if (is_zero_ether_addr(vf_mac_addr))
+		if (is_zero_ether_addr(vf_mac_addr)) {
+			rcu_read_unlock();
 			return 0;
+		}
 
 		dev_info(&adapter->pdev->dev, "removing MAC on VF %d\n", vf);
 
 		retval = ixgbe_del_mac_filter(adapter, vf_mac_addr, vf);
 		if (retval >= 0) {
-			adapter->vfinfo[vf].pf_set_mac = false;
+			vfinfo[vf].pf_set_mac = false;
 			memcpy(vf_mac_addr, mac, ETH_ALEN);
 		} else {
 			dev_warn(&adapter->pdev->dev, "Could NOT remove the VF MAC address.\n");
@@ -1589,10 +1743,12 @@ int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 		retval = -EINVAL;
 	}
 
+	rcu_read_unlock();
 	return retval;
 }
 
 static int ixgbe_enable_port_vlan(struct ixgbe_adapter *adapter, int vf,
+				  struct vf_data_storage *vfinfo,
 				  u16 vlan, u8 qos)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -1613,8 +1769,8 @@ static int ixgbe_enable_port_vlan(struct ixgbe_adapter *adapter, int vf,
 		ixgbe_write_qde(adapter, vf, IXGBE_QDE_ENABLE |
 				IXGBE_QDE_HIDE_VLAN);
 
-	adapter->vfinfo[vf].pf_vlan = vlan;
-	adapter->vfinfo[vf].pf_qos = qos;
+	vfinfo[vf].pf_vlan = vlan;
+	vfinfo[vf].pf_qos = qos;
 	dev_info(&adapter->pdev->dev,
 		 "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
 	if (test_bit(__IXGBE_DOWN, &adapter->state)) {
@@ -1628,13 +1784,14 @@ static int ixgbe_enable_port_vlan(struct ixgbe_adapter *adapter, int vf,
 	return err;
 }
 
-static int ixgbe_disable_port_vlan(struct ixgbe_adapter *adapter, int vf)
+static int ixgbe_disable_port_vlan(struct ixgbe_adapter *adapter, int vf,
+				   struct vf_data_storage *vfinfo)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	int err;
 
 	err = ixgbe_set_vf_vlan(adapter, false,
-				adapter->vfinfo[vf].pf_vlan, vf);
+				vfinfo[vf].pf_vlan, vf);
 	/* Restore tagless access via VLAN 0 */
 	ixgbe_set_vf_vlan(adapter, true, 0, vf);
 	ixgbe_clear_vmvir(adapter, vf);
@@ -1644,8 +1801,8 @@ static int ixgbe_disable_port_vlan(struct ixgbe_adapter *adapter, int vf)
 	if (hw->mac.type >= ixgbe_mac_X550)
 		ixgbe_write_qde(adapter, vf, IXGBE_QDE_ENABLE);
 
-	adapter->vfinfo[vf].pf_vlan = 0;
-	adapter->vfinfo[vf].pf_qos = 0;
+	vfinfo[vf].pf_vlan = 0;
+	vfinfo[vf].pf_qos = 0;
 
 	return err;
 }
@@ -1653,13 +1810,20 @@ static int ixgbe_disable_port_vlan(struct ixgbe_adapter *adapter, int vf)
 int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan,
 			  u8 qos, __be16 vlan_proto)
 {
-	int err = 0;
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
+	int err = 0;
 
 	if ((vf >= adapter->num_vfs) || (vlan > 4095) || (qos > 7))
 		return -EINVAL;
 	if (vlan_proto != htons(ETH_P_8021Q))
 		return -EPROTONOSUPPORT;
+
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo)
+		goto out;
+
 	if (vlan || qos) {
 		/* Check if there is already a port VLAN set, if so
 		 * we have to delete the old one first before we
@@ -1668,16 +1832,17 @@ int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan,
 		 * old port VLAN before setting a new one but this
 		 * is not necessarily the case.
 		 */
-		if (adapter->vfinfo[vf].pf_vlan)
-			err = ixgbe_disable_port_vlan(adapter, vf);
+		if (vfinfo[vf].pf_vlan)
+			err = ixgbe_disable_port_vlan(adapter, vf, vfinfo);
 		if (err)
 			goto out;
-		err = ixgbe_enable_port_vlan(adapter, vf, vlan, qos);
+		err = ixgbe_enable_port_vlan(adapter, vf, vfinfo, vlan, qos);
 	} else {
-		err = ixgbe_disable_port_vlan(adapter, vf);
+		err = ixgbe_disable_port_vlan(adapter, vf, vfinfo);
 	}
 
 out:
+	rcu_read_unlock();
 	return err;
 }
 
@@ -1695,13 +1860,13 @@ int ixgbe_link_mbps(struct ixgbe_adapter *adapter)
 	}
 }
 
-static void ixgbe_set_vf_rate_limit(struct ixgbe_adapter *adapter, int vf)
+static void ixgbe_set_vf_rate_limit(struct ixgbe_adapter *adapter, int vf,
+				    u16 tx_rate)
 {
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 bcnrc_val = 0;
 	u16 queue, queues_per_pool;
-	u16 tx_rate = adapter->vfinfo[vf].tx_rate;
 
 	if (tx_rate) {
 		/* start with base link speed value */
@@ -1749,6 +1914,7 @@ static void ixgbe_set_vf_rate_limit(struct ixgbe_adapter *adapter, int vf)
 
 void ixgbe_check_vf_rate_limit(struct ixgbe_adapter *adapter)
 {
+	struct vf_data_storage *vfinfo;
 	int i;
 
 	/* VF Tx rate limit was not set */
@@ -1761,18 +1927,23 @@ void ixgbe_check_vf_rate_limit(struct ixgbe_adapter *adapter)
 			 "Link speed has been changed. VF Transmit rate is disabled\n");
 	}
 
-	for (i = 0; i < adapter->num_vfs; i++) {
-		if (!adapter->vf_rate_link_speed)
-			adapter->vfinfo[i].tx_rate = 0;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		for (i = 0; i < adapter->num_vfs; i++) {
+			if (!adapter->vf_rate_link_speed)
+				vfinfo[i].tx_rate = 0;
 
-		ixgbe_set_vf_rate_limit(adapter, i);
-	}
+			ixgbe_set_vf_rate_limit(adapter, i, vfinfo[i].tx_rate);
+		}
+	rcu_read_unlock();
 }
 
 int ixgbe_ndo_set_vf_bw(struct net_device *netdev, int vf, int min_tx_rate,
 			int max_tx_rate)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
 	int link_speed;
 
 	/* verify VF is active */
@@ -1795,12 +1966,17 @@ int ixgbe_ndo_set_vf_bw(struct net_device *netdev, int vf, int min_tx_rate,
 	if (max_tx_rate && ((max_tx_rate <= 10) || (max_tx_rate > link_speed)))
 		return -EINVAL;
 
-	/* store values */
-	adapter->vf_rate_link_speed = link_speed;
-	adapter->vfinfo[vf].tx_rate = max_tx_rate;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo) {
+		/* store values */
+		adapter->vf_rate_link_speed = link_speed;
+		vfinfo[vf].tx_rate = max_tx_rate;
 
-	/* update hardware configuration */
-	ixgbe_set_vf_rate_limit(adapter, vf);
+		/* update hardware configuration */
+		ixgbe_set_vf_rate_limit(adapter, vf, vfinfo[vf].tx_rate);
+	}
+	rcu_read_unlock();
 
 	return 0;
 }
@@ -1809,11 +1985,18 @@ int ixgbe_ndo_set_vf_spoofchk(struct net_device *netdev, int vf, bool setting)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_hw *hw = &adapter->hw;
+	struct vf_data_storage *vfinfo;
 
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 
-	adapter->vfinfo[vf].spoofchk_enabled = setting;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		vfinfo[vf].spoofchk_enabled = setting;
+	rcu_read_unlock();
+	if (!vfinfo)
+		return 0;
 
 	/* configure MAC spoofing */
 	hw->mac.ops.set_mac_anti_spoofing(hw, setting, vf);
@@ -1851,28 +2034,37 @@ int ixgbe_ndo_set_vf_spoofchk(struct net_device *netdev, int vf, bool setting)
  **/
 void ixgbe_set_vf_link_state(struct ixgbe_adapter *adapter, int vf, int state)
 {
-	adapter->vfinfo[vf].link_state = state;
+	struct vf_data_storage *vfinfo;
+
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo) {
+		rcu_read_unlock();
+		return;
+	}
+	vfinfo[vf].link_state = state;
 
 	switch (state) {
 	case IFLA_VF_LINK_STATE_AUTO:
 		if (test_bit(__IXGBE_DOWN, &adapter->state))
-			adapter->vfinfo[vf].link_enable = false;
+			vfinfo[vf].link_enable = false;
 		else
-			adapter->vfinfo[vf].link_enable = true;
+			vfinfo[vf].link_enable = true;
 		break;
 	case IFLA_VF_LINK_STATE_ENABLE:
-		adapter->vfinfo[vf].link_enable = true;
+		vfinfo[vf].link_enable = true;
 		break;
 	case IFLA_VF_LINK_STATE_DISABLE:
-		adapter->vfinfo[vf].link_enable = false;
+		vfinfo[vf].link_enable = false;
 		break;
 	}
 
 	ixgbe_set_vf_rx_tx(adapter, vf);
 
 	/* restart the VF */
-	adapter->vfinfo[vf].clear_to_send = false;
+	vfinfo[vf].clear_to_send = false;
 	ixgbe_ping_vf(adapter, vf);
+	rcu_read_unlock();
 }
 
 /**
@@ -1923,6 +2115,7 @@ int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 				  bool setting)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
 
 	/* This operation is currently supported only for 82599 and x540
 	 * devices.
@@ -1934,7 +2127,11 @@ int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 
-	adapter->vfinfo[vf].rss_query_enabled = setting;
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (vfinfo)
+		vfinfo[vf].rss_query_enabled = setting;
+	rcu_read_unlock();
 
 	return 0;
 }
@@ -1942,18 +2139,31 @@ int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 int ixgbe_ndo_set_vf_trust(struct net_device *netdev, int vf, bool setting)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
 
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo) {
+		rcu_read_unlock();
+		return 0;
+	}
+
 	/* nothing to do */
-	if (adapter->vfinfo[vf].trusted == setting)
+	if (vfinfo[vf].trusted == setting) {
+		rcu_read_unlock();
 		return 0;
+	}
 
-	adapter->vfinfo[vf].trusted = setting;
+	vfinfo[vf].trusted = setting;
 
 	/* reset VF to reconfigure features */
-	adapter->vfinfo[vf].clear_to_send = false;
+	vfinfo[vf].clear_to_send = false;
+
+	rcu_read_unlock();
+
 	ixgbe_ping_vf(adapter, vf);
 
 	e_info(drv, "VF %u is %strusted\n", vf, setting ? "" : "not ");
@@ -1965,17 +2175,30 @@ int ixgbe_ndo_get_vf_config(struct net_device *netdev,
 			    int vf, struct ifla_vf_info *ivi)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	struct vf_data_storage *vfinfo;
+
 	if (vf >= adapter->num_vfs)
 		return -EINVAL;
 	ivi->vf = vf;
-	memcpy(&ivi->mac, adapter->vfinfo[vf].vf_mac_addresses, ETH_ALEN);
-	ivi->max_tx_rate = adapter->vfinfo[vf].tx_rate;
+
+	rcu_read_lock();
+	vfinfo = rcu_dereference(adapter->vfinfo);
+	if (!vfinfo) {
+		rcu_read_unlock();
+		return -EINVAL;
+	}
+
+	memcpy(&ivi->mac, vfinfo[vf].vf_mac_addresses, ETH_ALEN);
+	ivi->max_tx_rate = vfinfo[vf].tx_rate;
 	ivi->min_tx_rate = 0;
-	ivi->vlan = adapter->vfinfo[vf].pf_vlan;
-	ivi->qos = adapter->vfinfo[vf].pf_qos;
-	ivi->spoofchk = adapter->vfinfo[vf].spoofchk_enabled;
-	ivi->rss_query_en = adapter->vfinfo[vf].rss_query_enabled;
-	ivi->trusted = adapter->vfinfo[vf].trusted;
-	ivi->linkstate = adapter->vfinfo[vf].link_state;
+	ivi->vlan = vfinfo[vf].pf_vlan;
+	ivi->qos = vfinfo[vf].pf_qos;
+	ivi->spoofchk = vfinfo[vf].spoofchk_enabled;
+	ivi->rss_query_en = vfinfo[vf].rss_query_enabled;
+	ivi->trusted = vfinfo[vf].trusted;
+	ivi->linkstate = vfinfo[vf].link_state;
+
+	rcu_read_unlock();
+
 	return 0;
 }
-- 
2.53.0

