Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A81620DD4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 11:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDBB140894;
	Tue,  8 Nov 2022 10:54:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDBB140894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667904842;
	bh=4OjEMomof9CfdLQLQo1cTHRAciel/Y7Y0dWFOrJqXEQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W+TG6Dy38CeCvCr/a1ZdhySvy7jQqgJoj3XDl0lfIr6Q9XdH0BECq4yGtZomVCF6W
	 y9sOKsY4rYMDqmN4gj5FjsYorPT4VF6vAQt7zGmolJmvrvzOUhsGNLU8Xf67NFHm16
	 0G1C+Mv4okrrQ5mt2VfhaMHWXefi74CO9GoNyz6AD7ieUngRwWfJ7tJIQCoBrVY8xr
	 g81l6NwKY4rVgKGKComk8BOV2+u/T/QsRtOURI+/yAa/y5Hs7sAW/QHHYXzcfqSMVu
	 XgQp4OJbpPpB19n4fClrqy3WK6kRHriKrBFkfRCgrDieWprfV3twrqbkVqCXD0xEY2
	 zPHiKbTEdtBZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl1KFabwlJNJ; Tue,  8 Nov 2022 10:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 678DD414C4;
	Tue,  8 Nov 2022 10:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 678DD414C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 458621BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C7B3402DC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C7B3402DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7EHHXfAqTgII for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Nov 2022 10:53:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2716D401D2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2716D401D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:53:51 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-2jzgyhZyNSaDvdTzGYBh2w-1; Tue, 08 Nov 2022 05:53:47 -0500
X-MC-Unique: 2jzgyhZyNSaDvdTzGYBh2w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C424E29324AA;
 Tue,  8 Nov 2022 10:53:46 +0000 (UTC)
Received: from p1 (unknown [10.39.193.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DCF2A40C6FA3;
 Tue,  8 Nov 2022 10:53:44 +0000 (UTC)
Date: Tue, 8 Nov 2022 11:53:43 +0100
From: Stefan Assmann <sassmann@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20221108105343.vjczwdxcsxhfghk7@p1>
References: <20221108093534.1957820-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221108093534.1957820-1-ivecera@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1667904830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9BSGSQ95ObEivUef/VhFTN/d9sphc2EKy8XbpdXwX+E=;
 b=YBlaBMD69KX0YI94FzeDmz1cMVEApvTf0hdUxN7R2kpESpE01GvWBiruBjmNuJbnLOOZtw
 BsrJsz5DkAb/27Tss493ejofK/OKQyaym0xfpqZnM8beVqmXZd++6DZH+zihNqmD00MVgB
 dO9+OQJ27405Y6lcEogvElOVs+obZB8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YBlaBMD6
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Fix a crash during reset
 task
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
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Patryk Piotrowski <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2022-11-08 10:35, Ivan Vecera wrote:
> Recent commit aa626da947e9 ("iavf: Detach device during reset task")
> removed netif_tx_stop_all_queues() with an assumption that Tx queues
> are already stopped by netif_device_detach() in the beginning of
> reset task. This assumption is incorrect because during reset
> task a potential link event can start Tx queues again.
> Revert this change to fix this issue.
> 
> Reproducer:
> 1. Run some Tx traffic (e.g. iperf3) over iavf interface
> 2. Switch MTU of this interface in a loop
> 
> [root@host ~]# cat repro.sh
> #!/bin/sh
> 
> IF=enp2s0f0v0
> 
> iperf3 -c 192.168.0.1 -t 600 --logfile /dev/null &
> sleep 2
> 
> while :; do
>         for i in 1280 1500 2000 900 ; do
>                 ip link set $IF mtu $i
>                 sleep 2
>         done
> done

With this patch applied iavf doesn't crash anymore but after a few
cycles with the reproducer tx timeouts are observed.

[   47.551151] iavf 0000:00:09.0 eth0: NIC Link is Up Speed is 10 Gbps Full Duplex
[   54.035902] ------------[ cut here ]------------
[   54.037397] NETDEV WATCHDOG: eth0 (iavf): transmit queue 3 timed out
[   54.039264] WARNING: CPU: 1 PID: 0 at net/sched/sch_generic.c:526 dev_watchdog+0x20f/0x250
[   54.041524] Modules linked in: 8021q intel_rapl_msr intel_rapl_common kvm_intel kvm irqbypass rapl pcspkr drm ramoops reed_solomon crct10dif_pclmul crc32_pclmul crc32c_intel ata_generic pata_acpi ghash_clmulni_intel ata_piix aesni_intel crypto_simd iavf libata be2iscsi bnx2i cnic uio cxgb4i cxgb4 tls libcxgbi libcxgb qla4xxx iscsi_boot_sysfs iscsi_tcp libiscsi_tcp libiscsi scsi_transport_iscsi
[   54.049723] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 6.1.0-rc2+ #90
[   54.051049] Hardware name: Red Hat KVM, BIOS 1.15.0-2.module+el8.6.0+14757+c25ee005 04/01/2014
[   54.052898] RIP: 0010:dev_watchdog+0x20f/0x250
[   54.053907] Code: 00 e9 4d ff ff ff 48 89 df c6 05 92 24 96 01 01 e8 c6 f2 f8 ff 44 89 e9 48 89 de 48 c7 c7 28 7f f6 a0 48 89 c2 e8 6e 65 23 00 <0f> 0b e9 2f ff ff ff e8 25 06 2a 00 85 c0 74 b5 80 3d 74 1b 96 01
[   54.057282] RSP: 0018:ffffaf56c00e0e80 EFLAGS: 00010282
[   54.058164] RAX: 0000000000000000 RBX: ffff993ed95b8000 RCX: 0000000000000103
[   54.059345] RDX: 0000000000000103 RSI: 00000000000000f6 RDI: 00000000ffffffff
[   54.060473] RBP: ffff993ed95b8508 R08: 0000000000000000 R09: c0000000fff7ffff
[   54.061558] R10: 0000000000000001 R11: ffffaf56c00e0d18 R12: ffff993ed95b8420
[   54.062640] R13: 0000000000000003 R14: ffff993ed95b8508 R15: ffff993ef74a06c0
[   54.063681] FS:  0000000000000000(0000) GS:ffff993ef7480000(0000) knlGS:0000000000000000
[   54.064867] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   54.065654] CR2: 00007f42309e1280 CR3: 0000000107f6a003 CR4: 0000000000170ee0
[   54.066612] Call Trace:
[   54.066985]  <IRQ>
[   54.067265]  ? mq_change_real_num_tx+0xd0/0xd0
[   54.067844]  call_timer_fn+0xa1/0x2c0
[   54.068330]  ? mq_change_real_num_tx+0xd0/0xd0
[   54.068916]  run_timer_softirq+0x527/0x550
[   54.069447]  ? lock_is_held_type+0xd8/0x130
[   54.069998]  __do_softirq+0xc3/0x481
[   54.070469]  irq_exit_rcu+0xe4/0x120
[   54.070963]  sysvec_apic_timer_interrupt+0x9e/0xc0
[   54.071604]  </IRQ>
[   54.071909]  <TASK>
[   54.072223]  asm_sysvec_apic_timer_interrupt+0x16/0x20
[   54.072942] RIP: 0010:default_idle+0x10/0x20
[   54.073533] Code: 89 df 31 f6 5b 5d e9 ff 1c a5 ff cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc 0f 1f 44 00 00 eb 07 0f 00 2d f2 2a 42 00 fb f4 <c3> 66 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 0f 1f 44 00 00 65

This only occurs when the device is detached and reattached during reset.

  Stefan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
