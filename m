Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E03620C58
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 10:36:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 664D840217;
	Tue,  8 Nov 2022 09:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 664D840217
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667900173;
	bh=oSe3C/cNEcIEtXrSGo/hrf6iXs2vb/qJiVhdu78OwJM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jmtIVv2sLJ5paFj7UY9zqwgp1SX8bA3SFB4sO+A7fiZ8d8abkeokyZXbIdyTNU5NV
	 1KD0AJWL578uO1QbZZoK9YKEsFS92cSZSdFukTP/pUpvRhjXh1nFdWrP7FxjkNIZ1T
	 jIJbco7XGCednZRtmztbAY7dBFjoN6sl3O/9u7UP8oAKL2FEBtXy/+ddvv+Zu/8KHl
	 m9FR9D6JWRI0Tzuvl+5ORjC6WiRmoqJPxOb0Dq1kiysSc0krJZZXN4OIT2zDuawsVb
	 JvNBDUqbiYESryIJ4r5k5peQy/gU3V9wHFn21Aw58vzYGDybnl0dJnGRiAJk3LAAzq
	 1ZrAy4F+ye73A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xr9f-0mdyTZ7; Tue,  8 Nov 2022 09:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B40A40127;
	Tue,  8 Nov 2022 09:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B40A40127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 300901BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 09:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 17B8E60C2C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 09:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17B8E60C2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DSzzmKcOei_K for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Nov 2022 09:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EC4E6079E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EC4E6079E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 09:36:06 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-36-sJJJvCkyNT29kytn07vuWg-1; Tue, 08 Nov 2022 04:36:02 -0500
X-MC-Unique: sJJJvCkyNT29kytn07vuWg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0CCE2A59554;
 Tue,  8 Nov 2022 09:35:51 +0000 (UTC)
Received: from p1.luc.cera.cz (ovpn-193-136.brq.redhat.com [10.40.193.136])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C10A141511F;
 Tue,  8 Nov 2022 09:35:36 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue,  8 Nov 2022 10:35:34 +0100
Message-Id: <20221108093534.1957820-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1667900165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ni7nJ+LyNnIMnJA8lMlyLPnJImyjWtt2FYs+ZUBq6os=;
 b=WqVMuWQh/JY50yumWpiZXdOkgfSwoiHRvoBhgwakX/ffhS2OMkbPjQvcR6M2hcleMG5RLV
 vwpYob624uEIRx0kR7Rzsj+bf3btF7Kxy0iE4S90mRN3viQAGRhWPy6XdvhpQ7zdV9E6GT
 CEh2bMMVU4MIf3H8KtpibpxAsGWVsLY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WqVMuWQh
Subject: [Intel-wired-lan] [PATCH net] iavf: Fix a crash during reset task
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 Patryk Piotrowski <patryk.piotrowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recent commit aa626da947e9 ("iavf: Detach device during reset task")
removed netif_tx_stop_all_queues() with an assumption that Tx queues
are already stopped by netif_device_detach() in the beginning of
reset task. This assumption is incorrect because during reset
task a potential link event can start Tx queues again.
Revert this change to fix this issue.

Reproducer:
1. Run some Tx traffic (e.g. iperf3) over iavf interface
2. Switch MTU of this interface in a loop

[root@host ~]# cat repro.sh
#!/bin/sh

IF=enp2s0f0v0

iperf3 -c 192.168.0.1 -t 600 --logfile /dev/null &
sleep 2

while :; do
        for i in 1280 1500 2000 900 ; do
                ip link set $IF mtu $i
                sleep 2
        done
done
[root@host ~]# ./repro.sh

Result:
[  306.199917] iavf 0000:02:02.0 enp2s0f0v0: NIC Link is Up Speed is 40 Gbps Full Duplex
[  308.205944] iavf 0000:02:02.0 enp2s0f0v0: NIC Link is Up Speed is 40 Gbps Full Duplex
[  310.103223] BUG: kernel NULL pointer dereference, address: 0000000000000008
[  310.110179] #PF: supervisor write access in kernel mode
[  310.115396] #PF: error_code(0x0002) - not-present page
[  310.120526] PGD 0 P4D 0
[  310.123057] Oops: 0002 [#1] PREEMPT SMP NOPTI
[  310.127408] CPU: 24 PID: 183 Comm: kworker/u64:9 Kdump: loaded Not tainted 6.1.0-rc3+ #2
[  310.135485] Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
[  310.145728] Workqueue: iavf iavf_reset_task [iavf]
[  310.150520] RIP: 0010:iavf_xmit_frame_ring+0xd1/0xf70 [iavf]
[  310.156180] Code: d0 0f 86 da 00 00 00 83 e8 01 0f b7 fa 29 f8 01 c8 39 c6 0f 8f a0 08 00 00 48 8b 45 20 48 8d 14 92 bf 01 00 00 00 4c 8d 3c d0 <49> 89 5f 08 8b 43 70 66 41 89 7f 14 41 89 47 10 f6 83 82 00 00 00
[  310.174918] RSP: 0018:ffffbb5f0082caa0 EFLAGS: 00010293
[  310.180137] RAX: 0000000000000000 RBX: ffff92345471a6e8 RCX: 0000000000000200
[  310.187259] RDX: 0000000000000000 RSI: 000000000000000d RDI: 0000000000000001
[  310.194385] RBP: ffff92341d249000 R08: ffff92434987fcac R09: 0000000000000001
[  310.201509] R10: 0000000011f683b9 R11: 0000000011f50641 R12: 0000000000000008
[  310.208631] R13: ffff923447500000 R14: 0000000000000000 R15: 0000000000000000
[  310.215756] FS:  0000000000000000(0000) GS:ffff92434ee00000(0000) knlGS:0000000000000000
[  310.223835] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  310.229572] CR2: 0000000000000008 CR3: 0000000fbc210004 CR4: 0000000000770ee0
[  310.236696] PKRU: 55555554
[  310.239399] Call Trace:
[  310.241844]  <IRQ>
[  310.243855]  ? dst_alloc+0x5b/0xb0
[  310.247260]  dev_hard_start_xmit+0x9e/0x1f0
[  310.251439]  sch_direct_xmit+0xa0/0x370
[  310.255276]  __qdisc_run+0x13e/0x580
[  310.258848]  __dev_queue_xmit+0x431/0xd00
[  310.262851]  ? selinux_ip_postroute+0x147/0x3f0
[  310.267377]  ip_finish_output2+0x26c/0x540

Fixes: aa626da947e9 ("iavf: Detach device during reset task")
Cc: Jacob Keller <jacob.e.keller@intel.com>
Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
Cc: SlawomirX Laba <slawomirx.laba@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fc572341781..5abcd66e7c7a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3033,6 +3033,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	if (running) {
 		netif_carrier_off(netdev);
+		netif_tx_stop_all_queues(netdev);
 		adapter->link_up = false;
 		iavf_napi_disable_all(adapter);
 	}
-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
