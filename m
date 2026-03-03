Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC0kHN/fpmkPYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 14:19:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC7A1F0154
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 14:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D009240CA8;
	Tue,  3 Mar 2026 13:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFeIQ0wwCUwG; Tue,  3 Mar 2026 13:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6711F40C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772543959;
	bh=d4r0leSR/ZpD3cpMJEV9K40FLvZIbj97N57GjWhHYz8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zChIBjFPv89+2/A93RtrSadbrhnOcJa8tI1W7+56T/j9N2VT28yqbnBfaUkgAYUtA
	 lK1cAx+FMxMGC3VMO4wyX2DxDuhPW958upDOsmOsn6Bos7yoK9bFe+VdXuokhRuCN7
	 Rmuooa0JpMT0WJtV7mkIFrOOjiycDuufahPG9kNs6cY7iRvm2BOpMBQmm5T6ZO5Hnq
	 u4a1VUq/chbx3eS83GkIOD3mFDkHru8p5ir3gL40DH3qjnHUNIcD7z0l4tuDxRqkwi
	 Ia+p80nJbZu8DVBMTrt7l+h38V8ypy/Pye5GPjwdLTQEi15eLn5jeCquIm2DLP4zgx
	 ye7Fc1EirYOUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6711F40C9C;
	Tue,  3 Mar 2026 13:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B736E25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CF5C406A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAKqSKv1hWBx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 13:19:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A738403C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A738403C3
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A738403C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 13:19:11 +0000 (UTC)
Received: from [141.14.13.172] (g427.RadioFreeInternet.molgen.mpg.de
 [141.14.13.172])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 83BC74C2C37D6F;
 Tue, 03 Mar 2026 14:18:05 +0100 (CET)
Message-ID: <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
Date: Tue, 3 Mar 2026 14:18:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx
 timestamp from BH workqueue
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5BC7A1F0154
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
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,intel.com,gmail.com,vger.kernel.org,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Dear Kurt,


Thank you for the patch.

Am 03.03.26 um 12:48 schrieb Kurt Kanzenbach:
> Retrieve Tx timestamp from system BH instead of regular system workqueue.
> 
> The current implementation uses schedule_work() which is executed by the
> system work queue and kworkers to retrieve Tx timestamps. This increases
> latency and can lead to timeouts in case of heavy system load. i210 is
> often used in industrial systems, where timestamp timeouts can be fatal.
> 
> Therefore, switch to the system BH workqueues which are executed directly
> at the end of the IRQ handler.

Thank you for implementing this.

> Tested on Intel i210 and i350 with ptp4l.

It would be great, if you shared the numbers. Did Miroslav already test 
this?

Also, if you could add a comment/summary, that doing this in the IRQ 
path with your theory on why, that’d be great.

> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes in v4:
> - Use BH workqueue (tasklet) instead of doing timestamping in IRQ path (Jakub Kicinski)
> - Link to v3: https://patch.msgid.link/20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de
> 
> Changes in v3:
> - Switch back to IRQ, but for i210 only
> - Keep kworker for all other NICs like i350 (Miroslav)
> - Link to v2: https://lore.kernel.org/r/20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de
> 
> Changes in v2:
> - Switch from IRQ to PTP aux worker due to NTP performance regression (Miroslav)
> - Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
>   drivers/net/ethernet/intel/igb/igb_ptp.c  | 2 +-
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index ee99fd8fd513..9fd29fedb9f5 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6572,7 +6572,7 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>   			adapter->ptp_tx_skb = skb_get(skb);
>   			adapter->ptp_tx_start = jiffies;
>   			if (adapter->hw.mac.type == e1000_82576)
> -				schedule_work(&adapter->ptp_tx_work);
> +				queue_work(system_bh_wq, &adapter->ptp_tx_work);
>   		} else {
>   			adapter->tx_hwtstamp_skipped++;
>   		}
> @@ -7076,7 +7076,7 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
>   
>   	if (tsicr & E1000_TSICR_TXTS) {
>   		/* retrieve hardware timestamp */
> -		schedule_work(&adapter->ptp_tx_work);
> +		queue_work(system_bh_wq, &adapter->ptp_tx_work);
>   	}
>   
>   	if (tsicr & TSINTR_TT0)
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index bd85d02ecadd..7b44f9090631 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -832,7 +832,7 @@ static void igb_ptp_tx_work(struct work_struct *work)
>   		igb_ptp_tx_hwtstamp(adapter);
>   	else
>   		/* reschedule to check later */
> -		schedule_work(&adapter->ptp_tx_work);
> +		queue_work(system_bh_wq, &adapter->ptp_tx_work);
>   }
>   
>   static void igb_ptp_overflow_check(struct work_struct *work)
The diff looks fine.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
