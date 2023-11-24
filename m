Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B5D7F799D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 17:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C37E40323;
	Fri, 24 Nov 2023 16:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C37E40323
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700844177;
	bh=oDO2YL92WLjH5RxS9o4J6YfN0CGU5NORxIZ1KsNdj4k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RKhug9NUSFrLkqlC5HO4P68Cb9LykfwSMeUXY2JX9xpbB408PKhfUPEGfVg34v0I3
	 RKc5OoYlWhumQEWQ7V2uqGy35siemRYhZmEvZf3vBvEqvCcdftpXJe4ampLPvaAsnY
	 hbvNGrzO9JeZ20bodJpl73UuBhrY0MKb/dphB37e9SbBAIlm6vBhaE2GgxgAeOwbR3
	 PMInGmIttTwQuMFd5CljZnPcE20eswENjSlQsfdZTBAfKcTmQIYGc48q5YXByG5mlM
	 B7mGVTcUrJJ5blZduHcyPBnjULzRNG/Cj1ltW80OdMG8qflcqweVp2JAhHq2wj5n50
	 4DMXmRJ/naLrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6VpfGTmvv_Td; Fri, 24 Nov 2023 16:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C09F3401EF;
	Fri, 24 Nov 2023 16:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C09F3401EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 984371BF29A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F6C4606F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F6C4606F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGHlkKircstI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 16:42:41 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F47E60A65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 16:42:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F47E60A65
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-u27mpJ7LPQal20htICYGbg-1; Fri, 24 Nov 2023 11:42:36 -0500
X-MC-Unique: u27mpJ7LPQal20htICYGbg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D92B80D721;
 Fri, 24 Nov 2023 16:42:36 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.226.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1BB6B5028;
 Fri, 24 Nov 2023 16:42:33 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Nov 2023 17:42:33 +0100
Message-ID: <20231124164233.86691-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700844160;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RrwRzTuMrZE9vgEWEXLUt24jPM0zsHvVGPBzoGtCfrw=;
 b=Tyz6kbwMw3ed5vhIcN/SBOxNnOVzNEYPlpiUvLWedm3w5JeAQbcgoPSvZqtYCE12lC+fHA
 Ri0El9I5QeN7C7YIrJeKCuItzsSwv8N8RWjrcj1FVtk/dt+AUANiI7PBKTmFdUhvLWjvzM
 fxzvzlffK5/FSA4fdr1kZDy9zuvdASE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Tyz6kbwM
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix kernel crash during
 macvlan offloading setup
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
Cc: Harshitha Ramamurthy <harshitha.ramamurthy@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Function i40e_fwd_add() computes num of created channels and
num of queues per channel according value of pf->num_lan_msix.

This is wrong because the channels are used for subordinated net
devices that reuse existing queues from parent net device and
number of existing queue pairs (pf->num_queue_pairs) should be
used instead.

E.g.:
Let's have (pf->num_lan_msix == 32)... Then we reduce number of
combined queues by ethtool to 8 (so pf->num_queue_pairs == 8).
i40e_fwd_add() called by macvlan then computes number of macvlans
channels to be 16 and queues per channel 1 and calls
i40e_setup_macvlans(). This computes new number of queue pairs
for PF as:

num_qps = vsi->num_queue_pairs - (macvlan_cnt * qcnt);

This is evaluated in this case as:
num_qps = (8 - 16 * 1) = (u16)-8 = 0xFFF8

...and this number is stored vsi->next_base_queue that is used
during channel creation. This leads to kernel crash.

Fix this bug by computing the number of offloaded macvlan devices
and no. their queues according the current number of queues instead
of maximal one.

Reproducer:
1) Enable l2-fwd-offload
2) Reduce number of queues
3) Create macvlan device
4) Make it up

Result:
[root@cnb-03 ~]# ethtool -K enp2s0f0np0 l2-fwd-offload on
[root@cnb-03 ~]# ethtool -l enp2s0f0np0 | grep Combined
Combined:       32
Combined:       32
[root@cnb-03 ~]# ethtool -L enp2s0f0np0 combined 8
[root@cnb-03 ~]# ip link add link enp2s0f0np0 mac0 type macvlan mode bridge
[root@cnb-03 ~]# ip link set mac0 up
...
[ 1225.686698] i40e 0000:02:00.0: User requested queue count/HW max RSS count:  8/32
[ 1242.399103] BUG: kernel NULL pointer dereference, address: 0000000000000118
[ 1242.406064] #PF: supervisor write access in kernel mode
[ 1242.411288] #PF: error_code(0x0002) - not-present page
[ 1242.416417] PGD 0 P4D 0
[ 1242.418950] Oops: 0002 [#1] PREEMPT SMP NOPTI
[ 1242.423308] CPU: 26 PID: 2253 Comm: ip Kdump: loaded Not tainted 6.7.0-rc1+ #20
[ 1242.430607] Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
[ 1242.440850] RIP: 0010:i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e]
[ 1242.448165] Code: 48 89 b3 80 00 00 00 48 89 bb 88 00 00 00 74 3c 31 c9 0f b7 53 16 49 8b b4 24 f0 0c 00 00 01 ca 83 c1 01 0f b7 d2 48 8b 34 d6 <48> 89 9e 18 01 00 00 49 8b b4 24 e8 0c 00 00 48 8b 14 d6 48 89 9a
[ 1242.466902] RSP: 0018:ffffa4d52cd2f610 EFLAGS: 00010202
[ 1242.472121] RAX: 0000000000000000 RBX: ffff9390a4ba2e40 RCX: 0000000000000001
[ 1242.479244] RDX: 000000000000fff8 RSI: 0000000000000000 RDI: ffffffffffffffff
[ 1242.486370] RBP: ffffa4d52cd2f650 R08: 0000000000000020 R09: 0000000000000000
[ 1242.493494] R10: 0000000000000000 R11: 0000000100000001 R12: ffff9390b861a000
[ 1242.500626] R13: 00000000000000a0 R14: 0000000000000010 R15: ffff9390b861a000
[ 1242.507751] FS:  00007efda536b740(0000) GS:ffff939f4ec80000(0000) knlGS:0000000000000000
[ 1242.515826] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1242.521564] CR2: 0000000000000118 CR3: 000000010bd48002 CR4: 0000000000770ef0
[ 1242.528699] PKRU: 55555554
[ 1242.531400] Call Trace:
[ 1242.533846]  <TASK>
[ 1242.535943]  ? __die+0x20/0x70
[ 1242.539004]  ? page_fault_oops+0x76/0x170
[ 1242.543018]  ? exc_page_fault+0x65/0x150
[ 1242.546942]  ? asm_exc_page_fault+0x22/0x30
[ 1242.551131]  ? i40e_channel_config_tx_ring.constprop.0+0xd9/0x180 [i40e]
[ 1242.557847]  i40e_setup_channel.part.0+0x5f/0x130 [i40e]
[ 1242.563167]  i40e_setup_macvlans.constprop.0+0x256/0x420 [i40e]
[ 1242.569099]  i40e_fwd_add+0xbf/0x270 [i40e]
[ 1242.573300]  macvlan_open+0x16f/0x200 [macvlan]
[ 1242.577831]  __dev_open+0xe7/0x1b0
[ 1242.581236]  __dev_change_flags+0x1db/0x250
...

Fixes: 1d8d80b4e4ff ("i40e: Add macvlan support on i40e")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index c36535145a41..7bb1f64833eb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7981,8 +7981,8 @@ static void *i40e_fwd_add(struct net_device *netdev, struct net_device *vdev)
 		netdev_info(netdev, "Macvlans are not supported when HW TC offload is on\n");
 		return ERR_PTR(-EINVAL);
 	}
-	if (pf->num_lan_msix < I40E_MIN_MACVLAN_VECTORS) {
-		netdev_info(netdev, "Not enough vectors available to support macvlans\n");
+	if (vsi->num_queue_pairs < I40E_MIN_MACVLAN_VECTORS) {
+		netdev_info(netdev, "Not enough queues to support macvlans\n");
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -8000,7 +8000,7 @@ static void *i40e_fwd_add(struct net_device *netdev, struct net_device *vdev)
 		 * reserve 3/4th of max vectors, then half, then quarter and
 		 * calculate Qs per macvlan as you go
 		 */
-		vectors = pf->num_lan_msix;
+		vectors = vsi->num_queue_pairs;
 		if (vectors <= I40E_MAX_MACVLANS && vectors > 64) {
 			/* allocate 4 Qs per macvlan and 32 Qs to the PF*/
 			q_per_macvlan = 4;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
