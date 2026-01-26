Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEKMF93rd2nlmQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 23:34:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C43F8DF4A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 23:34:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9A9F82B51;
	Mon, 26 Jan 2026 22:34:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKq9hlpuIIch; Mon, 26 Jan 2026 22:34:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 978C882AF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769466841;
	bh=4ozVBJjTsYLuOOjN2KXuWHHXDgvliK1y0gP4v6DVXVk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TuQnBMRlDX7FGMzO0hiH99x/6lUfFrl8YcgqlF7YL3GqxZQXM7+6UdtqM4lmUSIcN
	 2/E87lAIzr4D39kKzoKkBBiQQ8nNJAA24T01nRj0CJlljO7HWE3p7pMXKJI6GvdrDh
	 X6miGNV/XZ3CmNfXOa3dW9jmsvLGhzuFa0RcrXihePgxDeAsZ2WfmV6XcKSnFlmGIQ
	 P8B/X0XI2i2eAwInj3LN7EA+cmdk5BENnBS8eBNTYuBqXKdj/F54iB1eBl6HYCPZYY
	 g+PVro79ZGj19XvC7sVRfQvkYMy9sxZEGYpqPhj+qMk/SS0ez3f4hr6ziCH6eIcukI
	 lAHzSAGwPOClA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 978C882AF8;
	Mon, 26 Jan 2026 22:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DDB32F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8307940785
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:33:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uOhgp9fdLoyX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 22:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFFD540781
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFFD540781
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFFD540781
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 22:33:55 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af744.dynamic.kabel-deutschland.de
 [95.90.247.68])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5FF8F4C44300B5;
 Mon, 26 Jan 2026 23:33:19 +0100 (CET)
Message-ID: <fcfc9a45-79a6-4483-81ad-0cad9d2ab13e@molgen.mpg.de>
Date: Mon, 26 Jan 2026 23:33:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>,
 Brian Vazquez <brianvv.kernel@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 Li Li <boolli@google.com>, Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Brett Creeley <brett.creeley@amd.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260126215600.3387171-1-brianvv@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260126215600.3387171-1-brianvv@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v3] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[google.com,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email,molgen.mpg.de:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5C43F8DF4A
X-Rspamd-Action: no action

Dear Brian,


Thank you for your patch.

Am 26.01.26 um 22:55 schrieb Brian Vazquez via Intel-wired-lan:
> The code uses the vidx for the IRQ name but that doesn't match ethtool
> reporting nor netdev naming, this makes it hard to tune the device and
> associate queues with IRQs. Sequentially requesting irqs starting from
> '0' makes the output consistent.
> 
> This commit changes the interrupt numbering but preserves the name
> format, maintaining ABI compatibility. Existing tools relying on the old
> numbering are already non-functional, as they lack a useful correlation
> to the interrupts.
> 
> Before:
> 
> ethtool -L eth1 tx 1 combined 3
> 
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
> 
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>       tx_q-0_pkts: 1002
>       tx_q-1_pkts: 2679
>       tx_q-2_pkts: 1113
>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
>       rx_q-0_pkts: 1143
>       rx_q-1_pkts: 3172
>       rx_q-2_pkts: 1074
> 
> After:
> 
> ethtool -L eth1 tx 1 combined 3
> 
> grep . /proc/irq/*/*idpf*/../smp_affinity_list
> 
> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
> 
> ethtool -S eth1 | grep -v ': 0'
> NIC statistics:
>       tx_q-0_pkts: 118
>       tx_q-1_pkts: 134
>       tx_q-2_pkts: 228
>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
>       rx_q-0_pkts: 111
>       rx_q-1_pkts: 366
>       rx_q-2_pkts: 120
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> V3: Add more context to the commit message
> V2: Add mising Fixes tag
> 
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index c2a1fe3c79ec..c1f8dfc570ce 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -4093,7 +4093,7 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport,
>   			continue;
>   
>   		name = kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name, if_name,
> -				 vec_name, vidx);
> +				 vec_name, vector);
>   
>   		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
>   				  name, q_vector);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
