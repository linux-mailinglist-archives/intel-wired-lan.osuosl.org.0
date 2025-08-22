Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03513B32076
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 18:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAE0F407B3;
	Fri, 22 Aug 2025 16:27:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mluj15j67hVs; Fri, 22 Aug 2025 16:27:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E65BC40A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755880041;
	bh=76stymdmYGxmCdV+zWc/JNXPWOmvJL9ShI/3xunZrbI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4ec1NjFTljlkL4T4fN709ux2ZR06qBIerzUQSMz0RLw25tunAk6EHMdAs0Va8Kz3n
	 fJoEwPz9chaU/465UZEZa5sSSvJYV8pFa+VNw4AFcD/2VBNO1qGKK2wWA0XySyKOa0
	 0VPFOA/jEBaQhn79s+MlHDbGMRbeOdfVrrlxNb2QROu8fVNfn7sfl7mPo8UAX1zAqL
	 sZ/g0N5YwpUz2qcIDbpG3WKQDQZUYl6DyfAnTJ1ofbkqAr8L+/u0xkFCJg5TeKl3uS
	 9A1UJMxXtAvO/0N/V8S+IX33GIiiNDLOEwDUFJ5xKhE7QqsBYWmtlOnVKrcuaOHWj2
	 1+XVeMpS5N71g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E65BC40A62;
	Fri, 22 Aug 2025 16:27:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D9181C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 16:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89E7040A58
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 16:27:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gj2dxMeCQwqU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 16:27:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b9; helo=out-185.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 82A6C40A53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82A6C40A53
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82A6C40A53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 16:27:16 +0000 (UTC)
Message-ID: <27e8fb9f-0e9c-4a0b-b961-64ff9d2f5228@linux.dev>
Date: Fri, 22 Aug 2025 17:27:10 +0100
MIME-Version: 1.0
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1755880033;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=76stymdmYGxmCdV+zWc/JNXPWOmvJL9ShI/3xunZrbI=;
 b=bFGa20Wf1ILzNwjk48Iy7jLaeJ07I53X9gl6W/KN8/FmrExc1kDdlmLIRqCCadGn9dXi6b
 Xs2PYBwhru965WlLKiU1BcTbMpfNDp5dz16tjQBKhZ1gNihy3G/nUi0Ye7awFBzFQ5LMIc
 W9KREGbWMWvvffZFSyoJVJeymfAc4Lw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=bFGa20Wf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22/08/2025 08:28, Kurt Kanzenbach wrote:
> The current implementation uses schedule_work() which is executed by the
> system work queue to retrieve Tx timestamps. This increases latency and can
> lead to timeouts in case of heavy system load.
> 
> Therefore, switch to the PTP aux worker which can be prioritized and pinned
> according to use case. Tested on Intel i210.
> 
>    * igb_ptp_tx_work
> - * @work: pointer to work struct
> + * @ptp: pointer to ptp clock information
>    *
>    * This work function polls the TSYNCTXCTL valid bit to determine when a
>    * timestamp has been taken for the current stored skb.
>    **/
> -static void igb_ptp_tx_work(struct work_struct *work)
> +static long igb_ptp_tx_work(struct ptp_clock_info *ptp)
>   {
> -	struct igb_adapter *adapter = container_of(work, struct igb_adapter,
> -						   ptp_tx_work);
> +	struct igb_adapter *adapter = container_of(ptp, struct igb_adapter,
> +						   ptp_caps);
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 tsynctxctl;
>   
>   	if (!adapter->ptp_tx_skb)
> -		return;
> +		return -1;
>   
>   	if (time_is_before_jiffies(adapter->ptp_tx_start +
>   				   IGB_PTP_TX_TIMEOUT)) {
> @@ -824,15 +824,17 @@ static void igb_ptp_tx_work(struct work_struct *work)
>   		 */
>   		rd32(E1000_TXSTMPH);
>   		dev_warn(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
> -		return;
> +		return -1;
>   	}
>   
>   	tsynctxctl = rd32(E1000_TSYNCTXCTL);
> -	if (tsynctxctl & E1000_TSYNCTXCTL_VALID)
> +	if (tsynctxctl & E1000_TSYNCTXCTL_VALID) {
>   		igb_ptp_tx_hwtstamp(adapter);
> -	else
> -		/* reschedule to check later */
> -		schedule_work(&adapter->ptp_tx_work);
> +		return -1;
> +	}
> +
> +	/* reschedule to check later */
> +	return 1;

do_aux_work is expected to return delay in jiffies to re-schedule the
work. it would be cleaner to use msec_to_jiffies macros to tell how much
time the driver has to wait before the next try of retrieving the
timestamp. AFAIU, the timestamp may come ASAP in this case, so it's
actually reasonable to request immediate re-schedule of the worker by
returning 0.

>   }
