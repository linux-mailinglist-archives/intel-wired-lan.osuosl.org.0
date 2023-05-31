Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2903071771F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 08:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53DA4611DF;
	Wed, 31 May 2023 06:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53DA4611DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685515692;
	bh=T3+BFOVF5d367965lDk1i9n92YjlbnOUNC1KxsPdv4U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VS+gpKVOqrr8f99EzFgI4skY7m8rQdDGM/pBN9WCAXOBQJ1XqGd2z2LtlUdNUqmke
	 8bAdUO8jFYKnAc3ojQdaErRFA5UI3kYi8HHtYGH3lzQvdYSe+vKvnK1pII8xY2b/sQ
	 eyYRsoCPDbq5gSIEk+5Tua/x4lP8aoiJ1PG4Ho89DhbcIDxEbI7o3bsceh92/q22Lc
	 HwyrqFlE6lRRZm4Nzv7vU/wuTe3jKFgsTfadNnZakiibAo7LB1bUtpHr5rpzsa4ouF
	 ZT95HSnbZbGSMezHgvwIhymzIOHdl9znvSzMxrzQSOclmgvxmy6n+1HnIb/wErLYXQ
	 2RNkZjRgt28cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fjkoi4-95DqX; Wed, 31 May 2023 06:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA30A60DFD;
	Wed, 31 May 2023 06:48:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA30A60DFD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A2961BF869
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 06:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0016D41F16
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 06:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0016D41F16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8XMPLyErwee for <intel-wired-lan@osuosl.org>;
 Wed, 31 May 2023 06:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68DBB41EE0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68DBB41EE0
 for <intel-wired-lan@osuosl.org>; Wed, 31 May 2023 06:48:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="420920962"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="420920962"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 23:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="739830996"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="739830996"
Received: from simonyax-mobl1.ger.corp.intel.com (HELO [10.251.186.32])
 ([10.251.186.32])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 23:47:58 -0700
Message-ID: <e922ab83-ca07-7d8e-c38e-29079b02da42@linux.intel.com>
Date: Wed, 31 May 2023 09:47:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230515154936.24540-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230515154936.24540-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685515683; x=1717051683;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mbP/7qTA69HtSXk2FC70c7qib5Ik4UBl3bZC7hOq5P8=;
 b=PM29wOrTQwYQ71veqSD6MWZIIBH8BcytVhWePoXZI/RglPVzX7ykou6W
 sNGdnOCx1xXgV7mlJaPk/1IVxH7sp681g+aLXwwJpOZk0yGy599uc65Ov
 6qcUoiqvLiCDdSS6fatQR8KR0cZVm4kpWLhdHNXajom0BgE4nc1yRKWpG
 Nm6hL4es0SCb2GOe7aiNhHGAYw2kPyTh+ojZnt+ABmoqkysy1tW7B6iTJ
 tsvg2m1j/F3QMzD1D7Mc9ey2wEszPNSTu+COaDoI/JBuWU5EUojA31IMz
 DzBhQYqRvyfjGxOR4MNDlzeWJYHojU/2xjFmOhmaonm37jdIM8TUEVzKs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PM29wOrT
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Clean the TX buffer
 and TX descriptor ring
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/15/2023 18:49, Muhammad Husaini Zulkifli wrote:
> There could be a race condition during link down where interrupt
> being generated and igc_clean_tx_irq() been called to perform the
> TX completion. Properly clear the TX buffer/descriptor ring and
> disable the TX Queue ring in igc_free_tx_resources() to avoid that.
> 
> Kernel trace:
> [  108.237177] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLIFUI1.R00.4204.A00.2105270302 05/27/2021
> [  108.237178] RIP: 0010:refcount_warn_saturate+0x55/0x110
> [  108.242143] RSP: 0018:ffff9e7980003db0 EFLAGS: 00010286
> [  108.245555] Code: 84 bc 00 00 00 c3 cc cc cc cc 85 f6 74 46 80 3d 20 8c 4d 01 00 75 ee 48 c7 c7 88 f4 03 ab c6 05 10 8c 4d 01 01 e8 0b 10 96 ff <0f> 0b c3 cc cc cc cc 80 3d fc 8b 4d 01 00 75 cb 48 c7 c7 b0 f4 03
> [  108.250434]
> [  108.250434] RSP: 0018:ffff9e798125f910 EFLAGS: 00010286
> [  108.254358] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> [  108.259325]
> [  108.259325] RAX: 0000000000000000 RBX: ffff8ddb935b8000 RCX: 0000000000000027
> [  108.261868] RDX: ffff8de250a28800 RSI: ffff8de250a1c580 RDI: ffff8de250a1c580
> [  108.265538] RDX: 0000000000000027 RSI: 0000000000000002 RDI: ffff8de250a9c588
> [  108.265539] RBP: ffff8ddb935b8000 R08: ffffffffab2655a0 R09: ffff9e798125f898
> [  108.267914] RBP: ffff8ddb8a5b8d80 R08: 0000005648eba354 R09: 0000000000000000
> [  108.270196] R10: 0000000000000001 R11: 000000002d2d2d2d R12: ffff9e798125f948
> [  108.270197] R13: ffff9e798125fa1c R14: ffff8ddb8a5b8d80 R15: 7fffffffffffffff
> [  108.273001] R10: 000000002d2d2d2d R11: 000000002d2d2d2d R12: ffff8ddb8a5b8ed4
> [  108.276410] FS:  00007f605851b740(0000) GS:ffff8de250a80000(0000) knlGS:0000000000000000
> [  108.280597] R13: 00000000000002ac R14: 00000000ffffff99 R15: ffff8ddb92561b80
> [  108.282966] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  108.282967] CR2: 00007f053c039248 CR3: 0000000185850003 CR4: 0000000000f70ee0
> [  108.286206] FS:  0000000000000000(0000) GS:ffff8de250a00000(0000) knlGS:0000000000000000
> [  108.289701] PKRU: 55555554
> [  108.289702] Call Trace:
> [  108.289704]  <TASK>
> [  108.293977] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  108.297562]  sock_alloc_send_pskb+0x20c/0x240
> [  108.301494] CR2: 00007f053c03a168 CR3: 0000000184394002 CR4: 0000000000f70ef0
> [  108.301495] PKRU: 55555554
> [  108.306464]  __ip_append_data.isra.0+0x96f/0x1040
> [  108.309441] Call Trace:
> [  108.309443]  ? __pfx_ip_generic_getfrag+0x10/0x10
> [  108.314927]  <IRQ>
> [  108.314928]  sock_wfree+0x1c7/0x1d0
> [  108.318078]  ? __pfx_ip_generic_getfrag+0x10/0x10
> [  108.320276]  skb_release_head_state+0x32/0x90
> [  108.324812]  ip_make_skb+0xf6/0x130
> [  108.327188]  skb_release_all+0x16/0x40
> [  108.330775]  ? udp_sendmsg+0x9f3/0xcb0
> [  108.332626]  napi_consume_skb+0x48/0xf0
> [  108.334134]  ? xfrm_lookup_route+0x23/0xb0
> [  108.344285]  igc_poll+0x787/0x1620 [igc]
> [  108.346659]  udp_sendmsg+0x9f3/0xcb0
> [  108.360010]  ? ttwu_do_activate+0x40/0x220
> [  108.365237]  ? __pfx_ip_generic_getfrag+0x10/0x10
> [  108.366744]  ? try_to_wake_up+0x289/0x5e0
> [  108.376987]  ? sock_sendmsg+0x81/0x90
> [  108.395698]  ? __pfx_process_timeout+0x10/0x10
> [  108.395701]  sock_sendmsg+0x81/0x90
> [  108.409052]  __napi_poll+0x29/0x1c0
> [  108.414279]  ____sys_sendmsg+0x284/0x310
> [  108.419507]  net_rx_action+0x257/0x2d0
> [  108.438216]  ___sys_sendmsg+0x7c/0xc0
> [  108.439723]  __do_softirq+0xc1/0x2a8
> [  108.444950]  ? finish_task_switch+0xb4/0x2f0
> [  108.452077]  irq_exit_rcu+0xa9/0xd0
> [  108.453584]  ? __schedule+0x372/0xd00
> [  108.460713]  common_interrupt+0x84/0xa0
> [  108.467840]  ? clockevents_program_event+0x95/0x100
> [  108.474968]  </IRQ>
> [  108.482096]  ? do_nanosleep+0x88/0x130
> [  108.489224]  <TASK>
> [  108.489225]  asm_common_interrupt+0x26/0x40
> [  108.496353]  ? __rseq_handle_notify_resume+0xa9/0x4f0
> [  108.503478] RIP: 0010:cpu_idle_poll+0x2c/0x100
> [  108.510607]  __sys_sendmsg+0x5d/0xb0
> [  108.518687] Code: 05 e1 d9 c8 00 65 8b 15 de 64 85 55 85 c0 7f 57 e8 b9 ef ff ff fb 65 48 8b 1c 25 00 cc 02 00 48 8b 03 a8 08 74 0b eb 1c f3 90 <48> 8b 03 a8 08 75 13 8b 05 77 63 cd 00 85 c0 75 ed e8 ce ec ff ff
> [  108.525817]  do_syscall_64+0x44/0xa0
> [  108.531563] RSP: 0018:ffffffffab203e70 EFLAGS: 00000202
> [  108.538693]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> [  108.546775]
> [  108.546777] RIP: 0033:0x7f605862b7f7
> [  108.549495] RAX: 0000000000000001 RBX: ffffffffab20c940 RCX: 000000000000003b
> [  108.551955] Code: 0e 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b9 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
> [  108.554068] RDX: 4000000000000000 RSI: 000000002da97f6a RDI: 00000000002b8ff4
> [  108.559816] RSP: 002b:00007ffc99264058 EFLAGS: 00000246
> [  108.564178] RBP: 0000000000000000 R08: 00000000002b8ff4 R09: ffff8ddb01554c80
> [  108.571302]  ORIG_RAX: 000000000000002e
> [  108.571303] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f605862b7f7
> [  108.574023] R10: 000000000000015b R11: 000000000000000f R12: ffffffffab20c940
> [  108.574024] R13: 0000000000000000 R14: ffff8de26fbeef40 R15: ffffffffab20c940
> [  108.578727] RDX: 0000000000000000 RSI: 00007ffc992640a0 RDI: 0000000000000003
> [  108.578728] RBP: 00007ffc99264110 R08: 0000000000000000 R09: 175f48ad1c3a9c00
> [  108.581187]  do_idle+0x62/0x230
> [  108.585890] R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffc992642d8
> [  108.585891] R13: 00005577814ab2ba R14: 00005577814addf0 R15: 00007f605876d000
> [  108.587920]  cpu_startup_entry+0x1d/0x20
> [  108.591422]  </TASK>
> [  108.596127]  rest_init+0xc5/0xd0
> [  108.600490] ---[ end trace 0000000000000000 ]---
> 
> Test Setup:
> 
> DUT:
> - Change mac address on DUT Side. Ensure NIC not having same MAC Address
> - Running udp_tai on DUT side. Let udp_tai running throughout the test
> 
> Example:
> ./udp_tai -i enp170s0 -P 100000 -p 90 -c 1 -t 0 -u 30004
> 
> Host:
> - Perform link up/down every 5 second.
> 
> Result:
> Kernel panic will happen on DUT Side.
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V1 -> V2: Disable the TX Queue ring during ndo_stop().
> ---
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
