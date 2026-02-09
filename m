Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MOHLJxaimn1JgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 23:07:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E33114F7D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 23:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59B2B40A54;
	Mon,  9 Feb 2026 22:07:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hw1esfsG_vuO; Mon,  9 Feb 2026 22:07:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBE640A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770674841;
	bh=vaPyzGirSB3lcpLfzgErgNG4q2gAsYjNo6x8UO4wYac=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k6JqUMuF6YesnW0QprIcUJt6ghHKkTF51UOFN/A7LHEzs+80BhuTgmAimYgA4geZs
	 +PvzU9kyzdEvYpqTP4eKdGqCZpfNGIK2v0nPXFpfCoJiVP7qkUqyLWtFfxGDm/GdvB
	 7HT60r8hiNX66sSgGrJhR5N2nu4EqCy9Bqy2vgGVMhVZCBE5+jAIDtIxvaOiQBgvj5
	 P3DkNj45HKAIWsim/1a0i/dT+72gdQJPC9FQFzO61/lvaFp+RGC2Oz+Oc+km6hMC9R
	 Jwbl6izLksztio3y6ueFMulNMMlyAOkqrf6wuhfYsmSpz8nmmOYMKDnGarH+mscxSb
	 L+gxRfiT1WSmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DBE640A91;
	Mon,  9 Feb 2026 22:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E3C9F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6ACA183DE6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ab7PIPxWQH39 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 22:07:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6184383DE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6184383DE2
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6184383DE2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 22:07:19 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2a8a7269547so45535685ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Feb 2026 14:07:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770674838; x=1771279638;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vaPyzGirSB3lcpLfzgErgNG4q2gAsYjNo6x8UO4wYac=;
 b=mwiQnRvUqTMFYRFhS00SaEko90fXArQ9/c6gPSrL1Sl7Ek5YMedAs+j57M4QwWjXDd
 J/X6R0PblD11uqeIXadnjCvbUEbhnn5rAIJXaNEHrCWkOCBvyBvXg/9yPZWZoj4Gt3cq
 tWEjeQyD7w5cTtfVqQjTjR5lNJJU6sFWfXpeTxcX+zH9ks49laivLMXBLL5X+rCPU53+
 va4h1iR8Nd9KUPxEAb3hsZRsxsjLLrQB8ek9pYiaFHsWwNaaIAOCm2jHIH6Oxj5g55bk
 RQQQLhgplSkSLZZGFPlLHgNxoXc4x+F5db0g1xwR3K3XDeC5SQ09kswjMV900TV4TFKh
 XIHg==
X-Gm-Message-State: AOJu0YzX6BYJTCevK2KchGmbEHLyAAZXaDTohm4wrrM9Zw43fc2ozhvW
 hK3KwpOE2g0QwE5E5Z1vRTbYXHLfYqt5nHq3gdLlW9f3lbujvpbYKZ5k9iL0/FyEDok=
X-Gm-Gg: AZuq6aKReg+cxBxbYQKNWMtGsaBmQpIiT/gitKCRzHarn4/a6juJl+i1n7FsAMA9GH0
 Aadaia+HBcaBgTvYb0xfiQcTV0cyZkzqIghUBUS1TEqlCCFSAlXj67tNZWVga4ryhJmYndrv+nh
 SY60gmv9t7Q/RTH+QYeDpLZES5D9EB4M3TLMikge5ObOkES5nIazer4FFHXKuPWC9/YPwXuJGOq
 kYAKY8gblvqq3+2nDRjEdrkm6HZ5feeO1cXXFRHIZsvXCjywu5o4sUumyBDCxMMYUTlKsdsQTmK
 n66IO4W1uOLykUwmu634pcAeNlLy9tfP7NEvM8s+jh4o3QY1th6AMnSPtSMWXnpU+eOsSueiBXv
 AtsKP0iY3r8YRDMkDP0q+5BtDLk5rqc9b4s/z6HB0yvgar1vm98YynTZ1dlU5xQqK29w=
X-Received: by 2002:a17:902:f54e:b0:2aa:eaa7:2a9 with SMTP id
 d9443c01a7336-2ab105482fcmr1487995ad.8.1770674838344; 
 Mon, 09 Feb 2026 14:07:18 -0800 (PST)
Received: from localhost ([2a03:2880:2ff:7::])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a952217a43sm110283645ad.87.2026.02.09.14.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Feb 2026 14:07:17 -0800 (PST)
Date: Mon, 9 Feb 2026 14:07:16 -0800
From: Joe Damato <joe@dama.to>
To: Thomas Gleixner <tglx@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Message-ID: <aYpalNvTIiD4nym4@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Thomas Gleixner <tglx@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org
References: <87v7g8zv2o.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v7g8zv2o.ffs@tglx>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1770674838; x=1771279638;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vaPyzGirSB3lcpLfzgErgNG4q2gAsYjNo6x8UO4wYac=;
 b=GpYPYhndoKi8/YkoWAsIFDx/55QRJC15a5Kyscn2c7vb5DjUz5Eu52BTXos31IvtlB
 Yh7e7617d4A+wd6iOCgCUcYJpJOlqzZZGriJl676Vs6BbwINkDjOlfUhkpfVxZug6t23
 EFIKOoja0qzOETof+m8LGuP2i8qhOv4aAIywdrWuqVtdmcA3Hw1Od95Vl/tR3SR1Luse
 LNKiHhLByiL2PvXncHUtbZSUbisqqnhyup+Mcgayz/gFlKizKAVut+LY7SrLEdhodlEV
 rwNBNkV0/LjV3Hc/1uzWSsFSzVvOEOga+wbIigke+bvaqZTYKxotMrhADEJ85LZy0z0W
 AhWA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GpYPYhnd
Subject: Re: [Intel-wired-lan] i40e: Fix preempt count leak in napi poll
 tracepoint
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[dama.to];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:tglx@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C1E33114F7D
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 11:50:23AM +0100, Thomas Gleixner wrote:
> Using get_cpu() in the tracepoint assignment causes an obvious preempt
> count leak because nothing invokes put_cpu() to undo it:
> 
>   softirq: huh, entered softirq 3 NET_RX with preempt_count 00000100, exited with 00000101?
> 
> This clearly has seen a lot of testing in the last 3+ years...

I'm the author who introduced the bug. FWIW, I did use it quite a bit when I
had i40e devices.
 
> Use smp_processor_id() instead.

Thanks.
 
> Fixes: 6d4d584a7ea8 ("i40e: Add i40e_napi_poll tracepoint")
> Signed-off-by: Thomas Gleixner <tglx@kernel.org>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>  drivers/net/ethernet/intel/i40e/i40e_trace.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> @@ -88,7 +88,7 @@ TRACE_EVENT(i40e_napi_poll,
>  		__entry->rx_clean_complete = rx_clean_complete;
>  		__entry->tx_clean_complete = tx_clean_complete;
>  		__entry->irq_num = q->irq_num;
> -		__entry->curr_cpu = get_cpu();
> +		__entry->curr_cpu = smp_processor_id();
>  		__assign_str(qname);
>  		__assign_str(dev_name);
>  		__assign_bitmask(irq_affinity, cpumask_bits(&q->affinity_mask),
> 

Reviewed-by: Joe Damato <joe@dama.to>
