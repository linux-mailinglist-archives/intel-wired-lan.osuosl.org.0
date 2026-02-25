Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPp2EWTUnmkTXgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 11:52:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AB1196076
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 11:52:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52145607AD;
	Wed, 25 Feb 2026 10:52:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NBVDAMGw1h0; Wed, 25 Feb 2026 10:52:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9170D60823
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772016737;
	bh=x1l6nqKw8v5Cqs5cWrHMjtX0KAb+tDD+p8CWpTS2zfY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BPpUJzMuaieGweXuQ9HneOxLjPZ38IngWHx7FhJCbt4K5xmNbqlOIHpeyEUYCwexR
	 PtZOb2UXdLP4mMcG1OBbYl5g6mAMFT0HiQYgRBgkDYO8nVJEwGAIk8IaAJMFQYgv92
	 4hve5CS9QAm5uvkMPHIdWIYixv6bOJR98/DrmCGvUk2DuTDYbpN5s/0hvEZlnFTy2u
	 Hel5QasClF+exDdySzrI0GF869EgO9yv7MQHkitTgWBRjnpt1YlLrFCCVgRohOzKn/
	 bGOce0po/Q+yw2WMKa1Wr1iQiUBqmM2kbFfuJVDUWEVTJqx0ykqZQstr+QPv0CUB7G
	 +b5n51kdI6WrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9170D60823;
	Wed, 25 Feb 2026 10:52:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF96E1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B529941604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:52:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ySQx-M7j8Mn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 10:52:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5F444414E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F444414E4
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F444414E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 10:52:13 +0000 (UTC)
Received: from [172.18.249.96] (ip-185-104-138-144.ptr.icomera.net
 [185.104.138.144])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DC9DF4C2C37D48;
 Wed, 25 Feb 2026 11:51:26 +0100 (CET)
Message-ID: <5d2c5f84-436f-4681-ad81-9900a8563b61@molgen.mpg.de>
Date: Wed, 25 Feb 2026 11:50:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zdenek Bouska <zdenek.bouska@siemens.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Richard Cochran <richardcochran@gmail.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 Lai Peter Jun Ann <jun.ann.lai@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 Florian Bezdeka <florian.bezdeka@siemens.com>
References: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260225-igc-fix-xdp-tx-tstamp-pagefault-v2-1-bf797ec20f3b@siemens.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: fix page fault in XDP TX
 timestamps handling
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zdenek.bouska@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:richardcochran@gmail.com,m:yoong.siang.song@intel.com,m:jun.ann.lai@intel.com,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:florian.bezdeka@siemens.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,lists.osuosl.org,vger.kernel.org,siemens.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.867];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B6AB1196076
X-Rspamd-Action: no action

Dear Zdenek,


Thank you for your patch.

Am 25.02.26 um 10:58 schrieb Zdenek Bouska via Intel-wired-lan:
> If an XDP application that requested TX timestamping is shutting down
> while the link of the interface in use is still up the following kernel
> splat is reported:
> 
> [  883.803618] [   T1554] BUG: unable to handle page fault for address: ffffcfb6200fd008
> ...
> [  883.803650] [   T1554] Call Trace:
> [  883.803652] [   T1554]  <TASK>
> [  883.803654] [   T1554]  igc_ptp_tx_tstamp_event+0xdf/0x160 [igc]
> [  883.803660] [   T1554]  igc_tsync_interrupt+0x2d5/0x300 [igc]
> ...
> 
> During shutdown of the TX ring the xsk_meta pointers are left behind, so
> that the IRQ handler is trying to touch them.
> 
> This issue is now being fixed by cleaning up the stale xsk meta data on
> TX shutdown. TX timestamps on other queues remain unaffected.

If you have the commands to reproduce this, that’d be great to have.

> Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> ---
> Changes in v2:
> - Moved 'adapter' variable declaration into the if block (Vinicius)
> - Link to v1: https://lore.kernel.org/r/20260224-igc-fix-xdp-tx-tstamp-pagefault-v1-1-7c729ef61ee5@siemens.com
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++++
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 33 +++++++++++++++++++++++++++++++
>   3 files changed, 42 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index a427f05814c1ae7330c6f7034cd0f2b40b74dab6..17236813965d334f14eba928affbd4f91b96ecd4 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -781,6 +781,8 @@ int igc_ptp_hwtstamp_set(struct net_device *netdev,
>   			 struct kernel_hwtstamp_config *config,
>   			 struct netlink_ext_ack *extack);
>   void igc_ptp_tx_hang(struct igc_adapter *adapter);
> +void igc_ptp_clear_xsk_tx_tstamp_queue(struct igc_adapter *adapter,
> +				       u16 queue_id);
>   void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
>   void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 89a321a344d263ace5c66f7ade782b40cc482566..1931fcb659354d5009e0ea02316bf3a47b66b04d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -264,6 +264,13 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
>   	/* reset next_to_use and next_to_clean */
>   	tx_ring->next_to_use = 0;
>   	tx_ring->next_to_clean = 0;
> +
> +	/* Clear any lingering XSK TX timestamp requests */
> +	if (test_bit(IGC_RING_FLAG_TX_HWTSTAMP, &tx_ring->flags)) {
> +		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
> +
> +		igc_ptp_clear_xsk_tx_tstamp_queue(adapter, tx_ring->queue_index);
> +	}
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 7aae83c108fd7611b00bf075592f93a902b83422..98491346d21b80925ce42ba276d851d4318e66b7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -576,6 +576,39 @@ static void igc_ptp_clear_tx_tstamp(struct igc_adapter *adapter)
>   	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>   }
>   
> +/**
> + * igc_ptp_clear_xsk_tx_tstamp_queue - Clear pending XSK TX timestamps for a queue
> + * @adapter: Board private structure
> + * @queue_id: TX queue index to clear timestamps for
> + *
> + * Iterates over all TX timestamp registers and releases any pending
> + * timestamp requests associated with the given TX queue. This is
> + * called when an XDP pool is being disabled to ensure no stale
> + * timestamp references remain.
> + */
> +void igc_ptp_clear_xsk_tx_tstamp_queue(struct igc_adapter *adapter, u16 queue_id)
> +{
> +	unsigned long flags;
> +	int i;
> +
> +	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
> +
> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		struct igc_tx_timestamp_request *tstamp = &adapter->tx_tstamp[i];
> +
> +		if (tstamp->buffer_type != IGC_TX_BUFFER_TYPE_XSK)
> +			continue;
> +		if (tstamp->xsk_queue_index != queue_id)
> +			continue;
> +		if (!tstamp->xsk_tx_buffer)
> +			continue;
> +
> +		igc_ptp_free_tx_buffer(adapter, tstamp);
> +	}
> +
> +	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
> +}
> +
>   static void igc_ptp_disable_tx_timestamp(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
