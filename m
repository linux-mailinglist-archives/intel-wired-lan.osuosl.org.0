Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA1BC978C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 14:19:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 416A460BA1;
	Mon,  1 Dec 2025 13:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5x9MfVlm56F; Mon,  1 Dec 2025 13:19:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91EF860E04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764595149;
	bh=UTiHHKMy9rJFvUNWqvFaW1KtBSvx5vOF+GfA/nmiHxo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FgQl3I/irO10F3lFfA3XkdipGE/0WscAEUvAuswUl+4OgGGUkgZZPfUoph1QokX61
	 4W5EKbHbfoNk6xbx475zInKuW3Quj0AwaiKhmR1aBP+AVWm7rH6GfkjHgsEIY8aSfK
	 sLuwslrValgIJEKqPeieg+Ej90mvYzGF+Dvm7Su7PJDHntHnXVq2YyUssmclUro1n1
	 +rqg2rkd1BITqdb9IBll2kf3TPygAP6VijL0ocJfq57tcjUQo8b7jHXYYqIYuUp/eO
	 AVMiJxmImYaAOWXN8UM5+RfJvJvSOF71bmdnvcHhSsCE4Dv12t8fniqEL5fCRPQn++
	 jGt1eX1ghRvgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91EF860E04;
	Mon,  1 Dec 2025 13:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4165FD3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 13:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E24860A55
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 13:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywGebQNvPz07 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 13:19:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4694260BA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4694260BA1
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4694260BA1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 13:19:05 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 503A261B48471;
 Mon, 01 Dec 2025 14:18:31 +0100 (CET)
Message-ID: <7917b0db-82b7-4a75-91cd-d3b6b0364728@molgen.mpg.de>
Date: Mon, 1 Dec 2025 14:18:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Florian Westphal <fw@strlen.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Nguyen <tony.nguyen@intel.com>
References: <20251201034058.263839-1-lgs201920130244@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251201034058.263839-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: fix OOB in
 e1000_tbi_should_accept()
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

Dear Guangshuo,


Thank you for your patch.

Am 01.12.25 um 04:40 schrieb Guangshuo Li:
> In e1000_tbi_should_accept() we read the last byte of the frame via
> 'data[length - 1]' to evaluate the TBI workaround. If the descriptor-
> reported length is zero or larger than the actual RX buffer size, this
> read goes out of bounds and can hit unrelated slab objects. The issue
> is observed from the NAPI receive path (e1000_clean_rx_irq):
> 
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in e1000_tbi_should_accept+0x610/0x790
> Read of size 1 at addr ffff888014114e54 by task sshd/363
> 
> CPU: 0 PID: 363 Comm: sshd Not tainted 5.18.0-rc1 #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0-59-gc9ba5276e321-prebuilt.qemu.org 04/01/2014
> Call Trace:
>   <IRQ>
>   dump_stack_lvl+0x5a/0x74
>   print_address_description+0x7b/0x440
>   print_report+0x101/0x200
>   kasan_report+0xc1/0xf0
>   e1000_tbi_should_accept+0x610/0x790
>   e1000_clean_rx_irq+0xa8c/0x1110
>   e1000_clean+0xde2/0x3c10
>   __napi_poll+0x98/0x380
>   net_rx_action+0x491/0xa20
>   __do_softirq+0x2c9/0x61d
>   do_softirq+0xd1/0x120
>   </IRQ>
>   <TASK>
>   __local_bh_enable_ip+0xfe/0x130
>   ip_finish_output2+0x7d5/0xb00
>   __ip_queue_xmit+0xe24/0x1ab0
>   __tcp_transmit_skb+0x1bcb/0x3340
>   tcp_write_xmit+0x175d/0x6bd0
>   __tcp_push_pending_frames+0x7b/0x280
>   tcp_sendmsg_locked+0x2e4f/0x32d0
>   tcp_sendmsg+0x24/0x40
>   sock_write_iter+0x322/0x430
>   vfs_write+0x56c/0xa60
>   ksys_write+0xd1/0x190
>   do_syscall_64+0x43/0x90
>   entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f511b476b10
> Code: 73 01 c3 48 8b 0d 88 d3 2b 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d f9 2b 2c 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 8e 9b 01 00 48 89 04 24
> RSP: 002b:00007ffc9211d4e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> RAX: ffffffffffffffda RBX: 0000000000004024 RCX: 00007f511b476b10
> RDX: 0000000000004024 RSI: 0000559a9385962c RDI: 0000000000000003
> RBP: 0000559a9383a400 R08: fffffffffffffff0 R09: 0000000000004f00
> R10: 0000000000000070 R11: 0000000000000246 R12: 0000000000000000
> R13: 00007ffc9211d57f R14: 0000559a9347bde7 R15: 0000000000000003
>   </TASK>
> Allocated by task 1:
>   __kasan_krealloc+0x131/0x1c0
>   krealloc+0x90/0xc0
>   add_sysfs_param+0xcb/0x8a0
>   kernel_add_sysfs_param+0x81/0xd4
>   param_sysfs_builtin+0x138/0x1a6
>   param_sysfs_init+0x57/0x5b
>   do_one_initcall+0x104/0x250
>   do_initcall_level+0x102/0x132
>   do_initcalls+0x46/0x74
>   kernel_init_freeable+0x28f/0x393
>   kernel_init+0x14/0x1a0
>   ret_from_fork+0x22/0x30
> The buggy address belongs to the object at ffff888014114000
>   which belongs to the cache kmalloc-2k of size 2048
> The buggy address is located 1620 bytes to the right of
>   2048-byte region [ffff888014114000, ffff888014114800]
> The buggy address belongs to the physical page:
> page:ffffea0000504400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x14110
> head:ffffea0000504400 order:3 compound_mapcount:0 compound_pincount:0
> flags: 0x100000000010200(slab|head|node=0|zone=1)
> raw: 0100000000010200 0000000000000000 dead000000000001 ffff888013442000
> raw: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
> page dumped because: kasan: bad access detected
> ==================================================================
> 
> This happens because the TBI check unconditionally dereferences the last
> byte without validating the reported length first:
> 
> 	u8 last_byte = *(data + length - 1);
> 
> Fix by rejecting the frame early if the length is zero, or if it exceeds
> adapter->rx_buffer_len. This preserves the TBI workaround semantics for
> valid frames and prevents touching memory beyond the RX buffer.

Do you have reproducer to forth an invalid length?

> Fixes: 2037110c96d5 ("e1000: move tbi workaround code into helper function")
> Cc: stable@vger.kernel.org
> Suggested-by: Tony Nguyen <tony.nguyen@intel.com>
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
> changelog:
> v2:
> - Keep declarations at the beginning of e1000_tbi_should_accept().
> - Move the last_byte assignment after the length bounds checks (suggested by Tony Nguyen)
> ---
>   drivers/net/ethernet/intel/e1000/e1000_main.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 3f5feb55cfba..cb49ec49f836 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -4091,7 +4091,14 @@ static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
>   				    u32 length, const u8 *data)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
> -	u8 last_byte = *(data + length - 1);
> +	u8 last_byte;
> +	/* Guard against OOB on data[length - 1] */
> +	if (unlikely(!length))
> +		return false;
> +	/* Upper bound: length must not exceed rx_buffer_len */
> +	if (unlikely(length > adapter->rx_buffer_len))

Should an error be logged, or is it a common scenario, that such traffic 
exists?

> +		return false;
> +	last_byte = *(data + length - 1);
>   
>   	if (TBI_ACCEPT(hw, status, errors, length, last_byte)) {
>   		unsigned long irq_flags;


Kind regards,

Paul
