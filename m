Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CAC5F7C78
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DFD3410D5;
	Fri,  7 Oct 2022 17:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DFD3410D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665164966;
	bh=7D/do987Fgb7XProqjuvrFskct9O23WKtHHGLZ3Pzvw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IjqFav7Z0+687N3wrDeACiMH8WU6UaXbkzrMJjMQPBbmNwRY79p7hh3ZyLz8zXIwF
	 XSyqU6URZpY8yeJoEGBOrp7jJvbmzpOgsYsNQkCEf+2jn4FFwEQKepOlNvRF2IyMT3
	 v8DIJpLAO9kpJWV6BRig5EPQog+AoB0xkQpFKA8pGiMEAIt4kJ7wznmgUlJOUZpCBX
	 +2h2fApQRGVCYBNCyPxrKxqJTlnk/lDwPfRIHvl70BotuiRNcR02yCe32BAXUx+iv4
	 rQJ2O60ozK0eJgwNC2BBBisK54WKLuqlHLYm9EvpTcMkig3xBZpBNTgLsA8Ms8uwWB
	 43YVfr2/Il2uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q7bqrc2ogHPm; Fri,  7 Oct 2022 17:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC0574086D;
	Fri,  7 Oct 2022 17:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC0574086D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F60C1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7905881A64
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7905881A64
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsikEhIi6zOc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:49:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51336818B5
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51336818B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:49:18 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id x1so5192677plv.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:49:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XG9g33SnkGf5SeuOOfR6UeSRihhRnU6omjZODWjTdks=;
 b=YUNBYxBxaFmc7SQi176CIH0AClbF576TyXQ4c1LREnZbj87EWZHJpsUxPktSIP9w3J
 iv5JhypbdY9ZBa9yBLbaU07Xe/lLxqHiPut7QuhbB/ZeVAoNXzodf5MJubVhAWO95QNf
 a7jKJ1lPyZv1WlLnF1K4f1TbQkYBPW1DEbTqqZmpbP4TGd3vUCqP5MwF7IvoFvZpVbHQ
 lMSJdHWyHFkg2MGID1973XolClVAV4B5zp5D0dXngVAWOVyh2haJQw3uWBqgMwXh7NQ4
 UpUbzuD1VkXubVEIQRLhNiIF+bOVMMta9r1NVZPKbjTQfZ2xa8CJxqUwNaYJFaCenOhg
 +lKw==
X-Gm-Message-State: ACrzQf0CST3e9ofPumQvPn8Kx9DnVR8azs3ccAdtgK+0JAnoZIrCH0+2
 cJqc51Dk6YSj9jWrEHHNQywHGyVfTtObwQ==
X-Google-Smtp-Source: AMsMyM7b+DueZYiENGLJEhot/4h9GxQ88yfjp0/EUSY/7ZgXTqzZAaXvKt5pFYBKD4Pcv4xVb13iRQ==
X-Received: by 2002:a17:90a:bf84:b0:20a:d039:f1ea with SMTP id
 d4-20020a17090abf8400b0020ad039f1eamr6364493pjs.245.1665164957671; 
 Fri, 07 Oct 2022 10:49:17 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 je17-20020a170903265100b00174abcb02d6sm1773340plb.235.2022.10.07.10.49.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:49:17 -0700 (PDT)
Date: Fri, 7 Oct 2022 10:49:14 -0700
From: Joe Damato <jdamato@fastly.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20221007174914.GA1032@fastly.com>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
 <1665099838-94839-5-git-send-email-jdamato@fastly.com>
 <Yz/g4W9rnhLcBsrd@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yz/g4W9rnhLcBsrd@boxer>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XG9g33SnkGf5SeuOOfR6UeSRihhRnU6omjZODWjTdks=;
 b=Mc+iEZYlqVQV9bQD+iWlSflT0KNxmISO2o9IyswsPRugH0auvUrIIMtKcHVsJi1cLs
 aGb8bNGzIRbAydei+5yR3p71SDar0aodsxc2SYjKzNCBaZf6veqVPWnsikBa14aZgqUP
 zlyjFO95HIulRGkwL/a4zAbcM5wnsTNLlW3D8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=Mc+iEZYl
Subject: Re: [Intel-wired-lan] [next-queue v3 4/4] i40e: Add i40e_napi_poll
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

On Fri, Oct 07, 2022 at 10:18:41AM +0200, Maciej Fijalkowski wrote:
> On Thu, Oct 06, 2022 at 04:43:58PM -0700, Joe Damato wrote:
> > Add a tracepoint for i40e_napi_poll that allows users to get detailed
> > information about the amount of work done. This information can help users
> > better tune the correct NAPI parameters (like weight and budget), as well
> > as debug NIC settings like rx-usecs and tx-usecs, etc.
> > 
> > An example of the output from this tracepoint:
> > 
> > $ sudo perf trace -e i40e:i40e_napi_poll -a --call-graph=fp --libtraceevent_print
> > 
> > [..snip..]
> > 
> > 388.258 :0/0 i40e:i40e_napi_poll(i40e_napi_poll on dev eth2 q
> > i40e-eth2-TxRx-9 irq 346 irq_mask
> > 00000000,00000000,00000000,00000000,00000000,00800000 curr_cpu 23 budget
> > 64 bpr 64 rx_cleaned 28 tx_cleaned 0 rx_clean_complete 1
> > tx_clean_complete 1)
> 
> So from AF_XDP POV I won't be using it as I would need some other
> information.
>
> As I said, we don't work on NAPI budget but rather with the
> free ring space and I don't get it here. tx_cleaned is also quite
> incorrect name to me for count of produced descriptors to Tx ring. I feel
> like it would be better to stub it for AF_XDP.
>
> As Jesse said previously we probably can followup with AF_XDP specific
> tracepoint with tx cleaned/tx transmitted/NAPI budget/AF_XDP budget (free
> ring space) if we find the need for it.
> 
> That's my 0.02$, I'm not going to hold this set or whatever, I'll leave the
> decision to Sridhar & Jesse.

I'll send the other patchset I've written and tested as an RFC which doesn't
touch anything in XDP at all and only adds the tracepoint in i40e_napi_poll only
if xdp is not enabled.

The code in that branch for i40e_napi_poll looks like this:

+	if (!i40e_enabled_xdp_vsi(vsi))
+		trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, rx_cleaned,
+				     tx_cleaned, rx_clean_complete, tx_clean_complete);

The XDP functions are not modified to take any out parameters in that
branch.

In that case, anyone who cares about XDP (when I think about XDP, I feel
nothing, so that probably won't be me) can go back through and add their
own XDP related tracepoint as the 'else' branch and modify all the xdp
related functions and add (very precisely named) out parameters.

As far as I'm concerned: I submit this code simply because it's been very
useful for me to debug i40e performance and to tune settings and I thought
it might be helpful for others.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
