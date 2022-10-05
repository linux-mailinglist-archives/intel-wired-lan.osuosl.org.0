Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FC05F596B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 19:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51AB460FB8;
	Wed,  5 Oct 2022 17:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51AB460FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664992591;
	bh=WD6BUBDAkSVk0m7nQcvfD8O9sb2cFYv7UJ+P2251O9s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VU+UxYPyWHdK6WpunGUtcLQYxkoR1LXSRjHTKAuHZabKnPgEOWeLaafNQiB99dZ/U
	 7S9qBAmz9ccUvEGpI1pVsw9MVohny9NboscdijcoZKPTr3Zln3MkKnz88Cy/3zupT7
	 tZiMYcauV2AvvpUBtBAZMHvOqllAtiMg0oDYSz5+Sg746KRzbYRP37h2qpeMOWkmGy
	 omICstIv6oT0/sH9P052JEynC+UxWDcZf6i0TriVgkrKLJybDw4TzIfmA6GOf4gvF4
	 W2jmYIOwvXmbnm/gWLs1tRzXRAkrqB1o7e09tvlJ2UpawV8PEwDbjhiZ0koxKx/T8v
	 oaaXeXRDqkFLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30l6s3CR_C0A; Wed,  5 Oct 2022 17:56:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CD0B60F58;
	Wed,  5 Oct 2022 17:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CD0B60F58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9A7B1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:56:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F9CC403D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F9CC403D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGt_o_KXtUHz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 17:56:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2DE3403CC
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2DE3403CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:56:22 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id y8so2035188pfp.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 10:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=c5TvtegkYOrbEgcQjqz0taNxGCXz8814bAat1R61jG4=;
 b=SUBOylBOA0mdH/IeFNj59tKmEyRV1diWbdOaMv4DI4U1TyUyA/w5j085boX/S8LrXZ
 kAJ9xSWx+4hLj/cDFipLzHwthJ1NpRiD5YMa2iLAo0YJGCHScqxz6JwfFxSCUiXYIA0s
 CZb8GC8cy9WbXEJZC7qEbDEO3RirN1O7/KxA7Nz/kU38X9WJzRuYv9iHOGkKINJYW7w4
 ZOUbKLCDbXew70E3EyvuHou3F+JYvS0UfOB0/r4Nx+atrT6svWBcCOyorSYr8K9QvJmR
 F5qh5cWFJRoT3PMmuR5LqPFqIECuDdeZo3IOjlfDya5ObWe2ObYw72gMBtrahuuRrBwn
 yMqg==
X-Gm-Message-State: ACrzQf1IfPSKxIsJ+/pPqyJ/UTutrfVuoh0jkQvdAEac5lUZAk3iqbnZ
 qL+AqMfx8yUNxPctTPWw9ZP5oA==
X-Google-Smtp-Source: AMsMyM75zhmdcRzEOdMtwvhxCSk9hwHvWmO+hrQc+05dVEyZaDbRCfUEB7SjFdF6oZthJrNzUAV1hw==
X-Received: by 2002:a62:1b8f:0:b0:54b:8114:e762 with SMTP id
 b137-20020a621b8f000000b0054b8114e762mr877483pfb.7.1664992582278; 
 Wed, 05 Oct 2022 10:56:22 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 ij28-20020a170902ab5c00b00178af82a000sm10732842plb.122.2022.10.05.10.56.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 10:56:22 -0700 (PDT)
Date: Wed, 5 Oct 2022 10:56:19 -0700
From: Joe Damato <jdamato@fastly.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20221005175619.GB11626@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-4-git-send-email-jdamato@fastly.com>
 <Yz1cEtPLzbPkBCtV@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yz1cEtPLzbPkBCtV@boxer>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
 bh=c5TvtegkYOrbEgcQjqz0taNxGCXz8814bAat1R61jG4=;
 b=Eyg1f1oxonLXXUIbmurppaA97xnV8i97svyNx9d4l36TDkGsSv0v1vk//c5wqL18dR
 WzqbEVNKDHKfdfJcfzwUQMUS7bab0g8PBVZlfz8KSc/qAQLt9/5Ea61Jq+fe57gcx0o0
 7GfhZLpkcT/bZQPd2WBIsmGlRSHLwxMtR3cr0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Eyg1f1ox
Subject: Re: [Intel-wired-lan] [next-queue 3/3] i40e: Add i40e_napi_poll
 tracepoint
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 12:27:30PM +0200, Maciej Fijalkowski wrote:
> On Wed, Oct 05, 2022 at 01:31:43AM -0700, Joe Damato wrote:
> 
> Hi Joe,
> 
> > Add a tracepoint for i40e_napi_poll that allows users to get detailed
> > information about the amount of work done. This information can help users
> > better tune the correct NAPI parameters (like weight and budget), as well
> > as debug NIC settings like rx-usecs and tx-usecs, etc.
> > 
> > An example of the output from this tracepoint:
> > 
> > [...snip...]
> > 
> > 1029.268 :0/0 i40e:i40e_napi_poll(i40e_napi_poll on dev eth1 q
> > i40e-eth1-TxRx-30 irq 172 irq_mask
> > 00000000,00000000,00000000,00000010,00000000,00000000 curr_cpu 68 budget
> > 64 bpr 64 work_done 0 tx_work_done 2 clean_complete 1 tx_clean_complete
> > 1)
> > 	i40e_napi_poll ([i40e])
> > 	i40e_napi_poll ([i40e])
> > 	__napi_poll ([kernel.kallsyms])
> > 	net_rx_action ([kernel.kallsyms])
> > 	__do_softirq ([kernel.kallsyms])
> > 	common_interrupt ([kernel.kallsyms])
> > 	asm_common_interrupt ([kernel.kallsyms])
> > 	intel_idle_irq ([kernel.kallsyms])
> > 	cpuidle_enter_state ([kernel.kallsyms])
> > 	cpuidle_enter ([kernel.kallsyms])
> > 	do_idle ([kernel.kallsyms])
> > 	cpu_startup_entry ([kernel.kallsyms])
> > 	[0x243fd8] ([kernel.kallsyms])
> > 	secondary_startup_64_no_verify ([kernel.kallsyms])
> 
> maybe you could also include how to configure this tracepoint for future
> readers?

Ah, for some reason I deleted that line from the commit message. Will
include it in the v2.

> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_trace.h | 50 ++++++++++++++++++++++++++++
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  3 ++
> >  2 files changed, 53 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > index b5b1229..779d046 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > @@ -55,6 +55,56 @@
> >   * being built from shared code.
> >   */
> >  
> > +#define NO_DEV "(i40e no_device)"
> > +
> > +TRACE_EVENT(i40e_napi_poll,
> > +
> > +	TP_PROTO(struct napi_struct *napi, struct i40e_q_vector *q, int budget,
> > +		 int budget_per_ring, int work_done, int tx_work_done, bool clean_complete,
> > +		 bool tx_clean_complete),
> > +
> > +	TP_ARGS(napi, q, budget, budget_per_ring, work_done, tx_work_done,
> > +		clean_complete, tx_clean_complete),
> > +
> > +	TP_STRUCT__entry(
> > +		__field(int, budget)
> > +		__field(int, budget_per_ring)
> > +		__field(int, work_done)
> > +		__field(int, tx_work_done)
> > +		__field(int, clean_complete)
> > +		__field(int, tx_clean_complete)
> > +		__field(int, irq_num)
> > +		__field(int, curr_cpu)
> > +		__string(qname, q->name)
> > +		__string(dev_name, napi->dev ? napi->dev->name : NO_DEV)
> > +		__bitmask(irq_affinity,	nr_cpumask_bits)
> > +	),
> > +
> > +	TP_fast_assign(
> > +		__entry->budget = budget;
> > +		__entry->budget_per_ring = budget_per_ring;
> > +		__entry->work_done = work_done;
> 
> What if rx clean routines failed to do allocation of new rx bufs? then
> this would be misinterpreted. maybe we should change the API to
> 
> static bool
> i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget,
> 		  unsigned int *processed_pkts);
> 
> so you would return failure and at the end do
> 	*processed_pkts = total_rx_packets;

I reworked i40e_clean_rx_irq and i40e_clean_rx_irq_zc to do what you've
described -- this is also how I ended up approaching counting TX cleaned.

> 
> then also i would change the naming of tracepoint entry. I'm not a native
> english speaker but having 'done' within the variable name suggests to me
> that it is rather a boolean. what about something like 'rx_cleaned_pkts'
> instead?

Sure, I've changed the trace prototype, struct, and print statement to use
"rx_cleaned" and "tx_cleaned" instead of "work_done" and "tx_work_done".

>
> Generally I think this is useful, personally I was in need of tracing the
> next_to_clean and next_to_use ring indexes a lot, but that is probably out
> of the scope in here.

Yea, I've used those for debugging other things, as well - they are quite
useful, but I agree... I think that's out of scope for this set :)

Thank you very much for all your detailed feedback. Hopefully the v2 will
be a bit closer.

> > +		__entry->tx_work_done = tx_work_done;
> > +		__entry->clean_complete = clean_complete;
> > +		__entry->tx_clean_complete = tx_clean_complete;
> > +		__entry->irq_num = q->irq_num;
> > +		__entry->curr_cpu = get_cpu();
> > +		__assign_str(qname, q->name);
> > +		__assign_str(dev_name, napi->dev ? napi->dev->name : NO_DEV);
> > +		__assign_bitmask(irq_affinity, cpumask_bits(&q->affinity_mask),
> > +				 nr_cpumask_bits);
> > +	),
> > +
> > +	TP_printk("i40e_napi_poll on dev %s q %s irq %d irq_mask %s curr_cpu %d "
> > +		  "budget %d bpr %d work_done %d tx_work_done %d "
> > +		  "clean_complete %d tx_clean_complete %d",
> > +		__get_str(dev_name), __get_str(qname), __entry->irq_num,
> > +		__get_bitmask(irq_affinity), __entry->curr_cpu, __entry->budget,
> > +		__entry->budget_per_ring, __entry->work_done,
> > +		__entry->tx_work_done,
> > +		__entry->clean_complete, __entry->tx_clean_complete)
> > +);
> > +
> >  /* Events related to a vsi & ring */
> >  DECLARE_EVENT_CLASS(
> >  	i40e_tx_template,
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index ed88309..8b72f1b 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -2743,6 +2743,9 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
> >  			clean_complete = false;
> >  	}
> >  
> > +	trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, work_done, tx_wd,
> > +			     clean_complete, tx_clean_complete);
> > +
> >  	/* If work not completed, return budget and polling will return */
> >  	if (!clean_complete || !tx_clean_complete) {
> >  		int cpu_id = smp_processor_id();
> > -- 
> > 2.7.4
> > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
