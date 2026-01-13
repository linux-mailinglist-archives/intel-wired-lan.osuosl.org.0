Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD1AD16D8E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:32:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E83A6158E;
	Tue, 13 Jan 2026 06:32:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G9txo0pD2bFe; Tue, 13 Jan 2026 06:32:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D6D861591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768285930;
	bh=e6EnNa9Ka8hH3XISAfVicvywPDLCUkTUJVNvZD4tgco=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uh247imaWWkNlkfBEA6CNLy79wlxBU2TVvXy9kPhbezNmen8eS5RLZfUsptXtPHKn
	 AB0sCz7+hJ/pZrYuSpZHoGpkUcmNfIydokMPOoB8BWmLO3pq4e7qUmWERjSEdAk14i
	 V3KAFtRotvoCUoqgLEGkTPmJXhBbrX1gYcAOqRZUm4iZGcjYpMcityzZlUCCav0WvR
	 Ap4h/9i6WnVFHao/3cf6VnMPXgdZbxpnMKG0yQTrvgnKksM60FFt0YrRNcYzO0YLaQ
	 /2KNzAm/icNYWMkJH0OA5yflDXX7xlHVwMFP9Ko9lIjfGghmo9NRnbAKxdTp4VJlod
	 bah2ttvupLNAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D6D861591;
	Tue, 13 Jan 2026 06:32:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E691231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1868241816
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vVsUdFgmTUxE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:32:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 372C141815
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 372C141815
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 372C141815
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:32:05 +0000 (UTC)
Received: from [192.168.2.217] (p5b13a4a0.dip0.t-ipconnect.de [91.19.164.160])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D52C123997D77;
 Tue, 13 Jan 2026 07:31:29 +0100 (CET)
Message-ID: <164caca4-f57f-4363-a8f1-0e090a4eb192@molgen.mpg.de>
Date: Tue, 13 Jan 2026 07:31:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
References: <20260112230944.3085309-1-boolli@google.com>
 <20260112230944.3085309-2-boolli@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260112230944.3085309-2-boolli@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 1/2] idpf: skip deallocating bufq_sets
 from rx_qgrp if it is NULL.
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

Dear Li,


Thank you for your patch.

Am 13.01.26 um 00:09 schrieb Li Li via Intel-wired-lan:
> In idpf_rxq_group_alloc(), if rx_qgrp->splitq.bufq_sets failed to get
> allocated:
> 
> 	rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
> 					    sizeof(struct idpf_bufq_set),
> 					    GFP_KERNEL);
> 	if (!rx_qgrp->splitq.bufq_sets) {
> 		err = -ENOMEM;
> 		goto err_alloc;
> 	}
> 
> idpf_rxq_group_rel() would attempt to deallocate it in
> idpf_rxq_sw_queue_rel(), causing a kernel panic:
> 
> ```
> [    7.967242] early-network-sshd-n-rexd[3148]: knetbase: Info: [    8.127804] BUG: kernel NULL pointer dereference, address: 00000000000000c0
> ...
> [    8.129779] RIP: 0010:idpf_rxq_group_rel+0x101/0x170
> ...
> [    8.133854] Call Trace:
> [    8.133980]  <TASK>
> [    8.134092]  idpf_vport_queues_alloc+0x286/0x500
> [    8.134313]  idpf_vport_open+0x4d/0x3f0
> [    8.134498]  idpf_open+0x71/0xb0
> [    8.134668]  __dev_open+0x142/0x260
> [    8.134840]  netif_open+0x2f/0xe0
> [    8.135004]  dev_open+0x3d/0x70
> [    8.135166]  bond_enslave+0x5ed/0xf50
> [    8.135345]  ? nla_put_ifalias+0x3d/0x90
> [    8.135533]  ? kvfree_call_rcu+0xb5/0x3b0
> [    8.135725]  ? kvfree_call_rcu+0xb5/0x3b0
> [    8.135916]  do_set_master+0x114/0x160
> [    8.136098]  do_setlink+0x412/0xfb0
> [    8.136269]  ? security_sock_rcv_skb+0x2a/0x50
> [    8.136509]  ? sk_filter_trim_cap+0x7c/0x320
> [    8.136714]  ? skb_queue_tail+0x20/0x50
> [    8.136899]  ? __nla_validate_parse+0x92/0xe50
> [    8.137112]  ? security_capable+0x35/0x60
> [    8.137304]  rtnl_newlink+0x95c/0xa00
> [    8.137483]  ? __rtnl_unlock+0x37/0x70
> [    8.137664]  ? netdev_run_todo+0x63/0x530
> [    8.137855]  ? allocate_slab+0x280/0x870
> [    8.138044]  ? security_capable+0x35/0x60
> [    8.138235]  rtnetlink_rcv_msg+0x2e6/0x340
> [    8.138431]  ? __pfx_rtnetlink_rcv_msg+0x10/0x10
> [    8.138650]  netlink_rcv_skb+0x16a/0x1a0
> [    8.138840]  netlink_unicast+0x20a/0x320
> [    8.139028]  netlink_sendmsg+0x304/0x3b0
> [    8.139217]  __sock_sendmsg+0x89/0xb0
> [    8.139399]  ____sys_sendmsg+0x167/0x1c0
> [    8.139588]  ? ____sys_recvmsg+0xed/0x150
> [    8.139780]  ___sys_sendmsg+0xdd/0x120
> [    8.139960]  ? ___sys_recvmsg+0x124/0x1e0
> [    8.140152]  ? rcutree_enqueue+0x1f/0xb0
> [    8.140341]  ? rcutree_enqueue+0x1f/0xb0
> [    8.140528]  ? call_rcu+0xde/0x2a0
> [    8.140695]  ? evict+0x286/0x2d0
> [    8.140856]  ? rcutree_enqueue+0x1f/0xb0
> [    8.141043]  ? kmem_cache_free+0x2c/0x350
> [    8.141236]  __x64_sys_sendmsg+0x72/0xc0
> [    8.141424]  do_syscall_64+0x6f/0x890
> [    8.141603]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    8.141841] RIP: 0033:0x7f2799d21bd0
> ...
> [    8.149905] Kernel panic - not syncing: Fatal exception
> [    8.175940] Kernel Offset: 0xf800000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> [    8.176425] Rebooting in 10 seconds..
> ```
> 
> Tested: With this patch, the kernel panic no longer appears.

Is it easy to reproduce?

> Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> 

(Just for the future, a blank in the “tag section” is uncommon.)

> Signed-off-by: Li Li <boolli@google.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index e7b131dba200c..b4dab4a8ee11b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -1337,6 +1337,8 @@ static void idpf_txq_group_rel(struct idpf_vport *vport)
>   static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
>   {
>   	int i, j;
> +	if (!rx_qgrp->splitq.bufq_sets)
> +		return;
>   
>   	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
>   		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
