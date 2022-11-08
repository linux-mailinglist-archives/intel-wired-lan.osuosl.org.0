Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF597620D33
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 11:25:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 516908128C;
	Tue,  8 Nov 2022 10:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 516908128C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667903118;
	bh=4xpef74xrtenclpes5VjGFlHLUoNGZXCTy/Nw8VOwL0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Y1pm/GqlGP2ygL/zzkVpcvpGXlr30UrQ9FpsCGC5tHFQDUlRY8dMxt5SKMz/frIKI
	 8E7wAOWuvMKNv0RnliTtOFIizKZniGQaMsvH+NFpSqCiGupD9fw77OdGs0sWx5aF1l
	 HxblAZVemqMOIrS1dyeZMs1Dq9FnF0VpXONQM9qRTPToiuujmXiPlNDNm8TA1WVLfv
	 UyHbeOH8IQbsFY1ih8/KF9UatuqGXiCY6SDBIzmLOnQKaQYH4/sUZiFB9IR7lKv7Ou
	 TlWoQVJv4lMDHvKVUUCCHkS/YTGHzPDfXeo3CNRJVsgZigZkIKX/1KlhGw7u4oqnjo
	 OfaTPdi/HizyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrCjKIoieCWF; Tue,  8 Nov 2022 10:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36AF480FB7;
	Tue,  8 Nov 2022 10:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36AF480FB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35F9C1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E0A940191
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E0A940191
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YV3kKA10FKfG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Nov 2022 10:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F9D240165
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F9D240165
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:25:11 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-651-0UjkcYfKM1SfNRs2UEL5tg-1; Tue, 08 Nov 2022 05:25:06 -0500
X-MC-Unique: 0UjkcYfKM1SfNRs2UEL5tg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28C6B29324B0;
 Tue,  8 Nov 2022 10:25:06 +0000 (UTC)
Received: from p1.luc.cera.cz (ovpn-193-136.brq.redhat.com [10.40.193.136])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CF48C01555;
 Tue,  8 Nov 2022 10:25:03 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue,  8 Nov 2022 11:25:02 +0100
Message-Id: <20221108102502.2147389-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1667903110;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=afO1C9dBkLO8NP2atOwjr3MahU4mzs/QvNV6Z1Wz+Hk=;
 b=cY6nIqOihOgIaMgwV+4tcpvBcpu7v+fch/d7CgrX+drcIiT9ICGvVtwDYUZZDxipx5jJxC
 vj4Gb2oi5iX/ol+MoBVbdFtAY/cZ8vjRBbbrFk4tBiU7lmDHkIkgYIdGFPM0BBumNDKsSA
 i2BndXO0kuX1Il05bkiut1/g2JtBqdw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cY6nIqOi
Subject: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues after
 reset task failure
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

After commit aa626da947e9 ("iavf: Detach device during reset task")
the device is detached during reset task and re-attached at its end.
The problem occurs when reset task fails because Tx queues are
restarted during device re-attach and this leads later to a crash.

To resolve this issue properly close the net device in cause of
failure in reset task to avoid restarting of tx queues at the end.
Also replace the hacky manipulation with IFF_UP flag by device close
that clears properly both IFF_UP and __LINK_STATE_START flags.
In these case iavf_close() does not do anything because the adapter
state is already __IAVF_DOWN.

Reproducer:
1) Run some Tx traffic (e.g. iperf3) over iavf interface
2) Set VF trusted / untrusted in loop

[root@host ~]# cat repro.sh
#!/bin/sh

PF=enp65s0f0
IF=${PF}v0

ip link set up $IF
ip addr add 192.168.0.2/24 dev $IF
sleep 1

iperf3 -c 192.168.0.1 -t 600 --logfile /dev/null &
sleep 2

while :; do
        ip link set $PF vf 0 trust on
        ip link set $PF vf 0 trust off
done
[root@host ~]# ./repro.sh

Result:
[ 2006.650969] iavf 0000:41:01.0: Failed to init adminq: -53
[ 2006.675662] ice 0000:41:00.0: VF 0 is now trusted
[ 2006.689997] iavf 0000:41:01.0: Reset task did not complete, VF disabled
[ 2006.696611] iavf 0000:41:01.0: failed to allocate resources during reinit
[ 2006.703209] ice 0000:41:00.0: VF 0 is now untrusted
[ 2006.737011] ice 0000:41:00.0: VF 0 is now trusted
[ 2006.764536] ice 0000:41:00.0: VF 0 is now untrusted
[ 2006.768919] BUG: kernel NULL pointer dereference, address: 0000000000000b4a
[ 2006.776358] #PF: supervisor read access in kernel mode
[ 2006.781488] #PF: error_code(0x0000) - not-present page
[ 2006.786620] PGD 0 P4D 0
[ 2006.789152] Oops: 0000 [#1] PREEMPT SMP NOPTI
[ 2006.792903] ice 0000:41:00.0: VF 0 is now trusted
[ 2006.793501] CPU: 4 PID: 0 Comm: swapper/4 Kdump: loaded Not tainted 6.1.0-rc3+ #2
[ 2006.805668] Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
[ 2006.815915] RIP: 0010:iavf_xmit_frame_ring+0x96/0xf70 [iavf]
[ 2006.821028] ice 0000:41:00.0: VF 0 is now untrusted
[ 2006.821572] Code: 48 83 c1 04 48 c1 e1 04 48 01 f9 48 83 c0 10 6b 50 f8 55 c1 ea 14 45 8d 64 14 01 48 39 c8 75 eb 41 83 fc 07 0f 8f e9 08 00 00 <0f> b7 45 4a 0f b7 55 48 41 8d 74 24 05 31 c9 66 39 d0 0f 86 da 00
[ 2006.845181] RSP: 0018:ffffb253004bc9e8 EFLAGS: 00010293
[ 2006.850397] RAX: ffff9d154de45b00 RBX: ffff9d15497d52e8 RCX: ffff9d154de45b00
[ 2006.856327] ice 0000:41:00.0: VF 0 is now trusted
[ 2006.857523] RDX: 0000000000000000 RSI: 00000000000005a8 RDI: ffff9d154de45ac0
[ 2006.857525] RBP: 0000000000000b00 R08: ffff9d159cb010ac R09: 0000000000000001
[ 2006.857526] R10: ffff9d154de45940 R11: 0000000000000000 R12: 0000000000000002
[ 2006.883600] R13: ffff9d1770838dc0 R14: 0000000000000000 R15: ffffffffc07b8380
[ 2006.885840] ice 0000:41:00.0: VF 0 is now untrusted
[ 2006.890725] FS:  0000000000000000(0000) GS:ffff9d248e900000(0000) knlGS:0000000000000000
[ 2006.890727] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 2006.909419] CR2: 0000000000000b4a CR3: 0000000c39c10002 CR4: 0000000000770ee0
[ 2006.916543] PKRU: 55555554
[ 2006.918254] ice 0000:41:00.0: VF 0 is now trusted
[ 2006.919248] Call Trace:
[ 2006.919250]  <IRQ>
[ 2006.919252]  dev_hard_start_xmit+0x9e/0x1f0
[ 2006.932587]  sch_direct_xmit+0xa0/0x370
[ 2006.936424]  __dev_queue_xmit+0x7af/0xd00
[ 2006.940429]  ip_finish_output2+0x26c/0x540
[ 2006.944519]  ip_output+0x71/0x110
[ 2006.947831]  ? __ip_finish_output+0x2b0/0x2b0
[ 2006.952180]  __ip_queue_xmit+0x16d/0x400
[ 2006.952721] ice 0000:41:00.0: VF 0 is now untrusted
[ 2006.956098]  __tcp_transmit_skb+0xa96/0xbf0
[ 2006.965148]  __tcp_retransmit_skb+0x174/0x860
[ 2006.969499]  ? cubictcp_cwnd_event+0x40/0x40
[ 2006.973769]  tcp_retransmit_skb+0x14/0xb0
...

Fixes: aa626da947e9 ("iavf: Detach device during reset task")
Cc: Jacob Keller <jacob.e.keller@intel.com>
Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
Cc: SlawomirX Laba <slawomirx.laba@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5abcd66e7c7a..b66f8fa1d83b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2921,7 +2921,6 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
-	adapter->netdev->flags &= ~IFF_UP;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
 	iavf_change_state(adapter, __IAVF_DOWN);
 	wake_up(&adapter->down_waitqueue);
@@ -3021,6 +3020,11 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_disable_vf(adapter);
 		mutex_unlock(&adapter->client_lock);
 		mutex_unlock(&adapter->crit_lock);
+		if (netif_running(netdev)) {
+			rtnl_lock();
+			dev_close(netdev);
+			rtnl_unlock();
+		}
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -3173,6 +3177,16 @@ static void iavf_reset_task(struct work_struct *work)
 
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
+
+	if (netif_running(netdev)) {
+		/* Close device to ensure that Tx queues will not be started
+		 * during netif_device_attach() at the end of the reset task.
+		 */
+		rtnl_lock();
+		dev_close(netdev);
+		rtnl_unlock();
+	}
+
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 reset_finish:
 	rtnl_lock();
-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
