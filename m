Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD+TIGuyb2nMKgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:50:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A8D47F5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A9F940730;
	Tue, 20 Jan 2026 16:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ymSsSqG_v1Z; Tue, 20 Jan 2026 16:50:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CE5840731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768927848;
	bh=3s1dYZ+pF2HQojc7fcIikcDVwHWy/o7jill+ArqKl6w=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pikFT0CVVfzVHhU6x2kjxrcnD+DOmwopcAwgwOYieqH1oqy/eRfcdKHMWCLEugBsY
	 I8OxxTeJs74xTnfmRQWGx7sKK16/Vz9CfwjUIpMwoGwE0ZKd9ZdRjJFpYv2/43OYyq
	 kjJplPJ2ga95ysnFuayg4Ss9tK+MW+6gFg2zLLdMXVgwZBes7WMWsTIs1Az6+APOKn
	 qx6alQYOoTFyYky92cNkYvKxOcsHX29iaeiKtW0CHWZ70BdqOcuyQzTELF16/S4Nc5
	 1mIk/F5dl69HEVmpPOO5X9k1daNGjCBsClmBmMliRmdDjrjE45j8/MN5yT2yb9zHG2
	 gblg21bHXqPCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CE5840731;
	Tue, 20 Jan 2026 16:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 61980169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 16:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F5FC40728
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 16:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rjgpkIzxBhaH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 16:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4757A40720
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4757A40720
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4757A40720
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 16:50:43 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BDA4C4C2887191;
 Tue, 20 Jan 2026 17:50:06 +0100 (CET)
Message-ID: <8cfba7ca-03d0-46fe-92fa-5d4a119fc31e@molgen.mpg.de>
Date: Tue, 20 Jan 2026 17:50:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Yang <mmyangfl@gmail.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Phani Burra <phani.r.burra@intel.com>, Willem de Bruijn
 <willemb@google.com>, Alan Brady <alan.brady@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20260119162720.1463859-1-mmyangfl@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260119162720.1463859-1-mmyangfl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: Fix data race in
 idpf_net_dim
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mmyangfl@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.kumar.linga@intel.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:alan.brady@intel.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 89A8D47F5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear David,


Thank you for your patch.

Am 19.01.26 um 17:27 schrieb David Yang:
> In idpf_net_dim(), some statistics protected by u64_stats_sync, are read
> and accumulated in ignorance of possible u64_stats_fetch_retry() events.
> The correct way to copy statistics is already illustrated by
> idpf_add_queue_stats(). Fix this by reading them into temporary variables
> first.

It’d be great if you also documented a test case.

> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Signed-off-by: David Yang <mmyangfl@gmail.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c | 16 +++++++++++-----
>   1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 97a5fe766b6b..66ba645e8b90 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3956,7 +3956,7 @@ static void idpf_update_dim_sample(struct idpf_q_vector *q_vector,
>   static void idpf_net_dim(struct idpf_q_vector *q_vector)
>   {
>   	struct dim_sample dim_sample = { };
> -	u64 packets, bytes;
> +	u64 packets, bytes, pkts, bts;

The new variable names are ambiguous. Would _tmp or so be better?

>   	u32 i;
>   
>   	if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
> @@ -3968,9 +3968,12 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
>   
>   		do {
>   			start = u64_stats_fetch_begin(&txq->stats_sync);
> -			packets += u64_stats_read(&txq->q_stats.packets);
> -			bytes += u64_stats_read(&txq->q_stats.bytes);
> +			pkts = u64_stats_read(&txq->q_stats.packets);
> +			bts = u64_stats_read(&txq->q_stats.bytes);
>   		} while (u64_stats_fetch_retry(&txq->stats_sync, start));
> +
> +		packets += pkts;
> +		bytes += bts;
>   	}
>   
>   	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
> @@ -3987,9 +3990,12 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
>   
>   		do {
>   			start = u64_stats_fetch_begin(&rxq->stats_sync);
> -			packets += u64_stats_read(&rxq->q_stats.packets);
> -			bytes += u64_stats_read(&rxq->q_stats.bytes);
> +			pkts = u64_stats_read(&rxq->q_stats.packets);
> +			bts = u64_stats_read(&rxq->q_stats.bytes);
>   		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
> +
> +		packets += pkts;
> +		bytes += bts;
>   	}
>   
>   	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,


Kind regards,

Paul
