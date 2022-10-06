Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0D85F7172
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 00:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7237F40569;
	Thu,  6 Oct 2022 22:57:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7237F40569
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665097031;
	bh=iWFKuq/2cXGhQ+CXy0ZuknYTXEq0eYod++Wm6t7M4y0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZE4xeipAGA7ERbiD2qbY7HYukSGHNv9LEVO+deNDmvyBgWyslstEq/EvzZBGkhUW
	 9TzNVkCtW6akGxxB23pSI0VGJ0U0D+0AMJTQCuqFS1BdTQ8SU1bqUhbQx91dg25WkD
	 cvmvyIsCYKYytZxNMZYm84AEMQf46deq22ubB2LIZ+0B2WxdXMncxKnY4e60Tzev0h
	 oXfvUdEFjYvVeUzBKG9taSoFCHZJqT95e6I03wlD5ZNYKw2wBkdgFGD2Yn+cWqet/M
	 /Kbgn04HMiNs9QBez2HZ0mCboeAZ/epRd+83c58U7fdJYsx2ZKycJfnjLxbo0DeeJA
	 8jy1UF38Zkr3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jX470Da-Y5Qx; Thu,  6 Oct 2022 22:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A49640153;
	Thu,  6 Oct 2022 22:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A49640153
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 441E51BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 22:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1341F418DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 22:57:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1341F418DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0x3iTrO2opYL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 22:57:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BD3D418CD
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BD3D418CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 22:57:01 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 x1-20020a17090ab00100b001fda21bbc90so5661118pjq.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 15:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Kp9EksdjUFiehraYHlT2wY61pPbUo7iWAs3vpMObdeQ=;
 b=hez2r/pLFlseYzSmUiBh2t5PxD8t2USkk8iLL4W5nzJGd0jUHzI1BB8RfXqzn++71R
 FhETLA3aePqTq73fnqIrUvpXG9G1tRUJfI95ri/n8ZjZJwA2juF1jw3auxSM4pv42BmC
 TuaFRfW+jc012cHifl0qdyT3hT+3C0xKb91X3DPHQFer4k7sesFad5U3Sqg9lhp78OmF
 ZpQNQhF/R2iHgvhsq1x4FNODbz/PpSt4xszIk+b5ireodfyYXEATmgTFe0vtFjWXZIcC
 24QEWU781MO+cUJ6LSZZlbUC523ip5gliZeTQ+mC5ZtBuTHw8YBhazjp7cZFTmeD5WdD
 Ka2w==
X-Gm-Message-State: ACrzQf3scheMGz+j5Zv9C4Fmw4GUjcjkVbb2u/9+2bglfIx/p/v+mT8b
 DyhGLAF1LFHFRmYEJQFVShxGRA==
X-Google-Smtp-Source: AMsMyM5MvDAQFjgHsn3cAQSd41PrvLMCqXkqMO7wbqDOCzU4xe5dSkr1FJr8Ne6af2pL1VNV45nJRg==
X-Received: by 2002:a17:90a:1c1:b0:20a:e745:bc30 with SMTP id
 1-20020a17090a01c100b0020ae745bc30mr13073506pjd.131.1665097020759; 
 Thu, 06 Oct 2022 15:57:00 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 oc7-20020a17090b1c0700b0020b21019086sm1089526pjb.3.2022.10.06.15.56.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 15:57:00 -0700 (PDT)
Date: Thu, 6 Oct 2022 15:56:57 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20221006225656.GA86976@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
 <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
 <20221006003104.GA30279@fastly.com>
 <20221006010024.GA31170@fastly.com> <Yz7SHod/GPxKWmvw@boxer>
 <481f7799-0f1c-efa3-bf2c-e22961e5f376@intel.com>
 <20221006173248.GA51751@fastly.com>
 <3e78ef0a-db8a-0380-0a7a-ca8571513355@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e78ef0a-db8a-0380-0a7a-ca8571513355@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Kp9EksdjUFiehraYHlT2wY61pPbUo7iWAs3vpMObdeQ=;
 b=XR5uHRxljMNHdCOFrGOT96MJkBV6kJXp39kQS5F2FCTOI0oN94qmtXKmJIn1xR+c3B
 QCkWvSUxbfvaOOUKMT4ecHPUbBU3E8K6hF2xeZOjrgmPHzkgBbhqW+5Wkt9eWgbqM3rI
 Jcn96ThW2f3UuKOaHBESnKNdDfbrw22rBUUa4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=XR5uHRxl
Subject: Re: [Intel-wired-lan] [next-queue v2 2/4] i40e: Record number TXes
 cleaned during NAPI
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
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 06, 2022 at 03:35:36PM -0700, Jesse Brandeburg wrote:
> On 10/6/2022 10:32 AM, Joe Damato wrote:
> >Sorry, but I don't see the value in the second param. NAPI decides what to
> >do based on nb_pkts. That's the only parameter that matters for the purpose
> >of NAPI going into poll mode or not, right?
> >
> >If so: I don't see any reason why a second parameter is necessary.
> 
> Sridhar and I talked about this offline. We agree now that you can just
> proceed with the single parameter.

OK, thanks.

> >
> >As I mentioned earlier: if it's just that the name of the parameter isn't
> >right (e.g., you want it to be 'tx_processed' instead of 'tx_cleaned') then
> >that's an easy fix; I'll just change the name.
> 
> I think the name change isn't necessary, since we're not going to extend
> this patch with full XDP events printed (see below)
> 
> >
> >It doesn't seem helpful to have xsk_frames as an out parameter for
> >i40e_napi_poll tracepoint; that value is not used to determine anything
> >about i40e's NAPI.
> >
> >>I am not completely clear on the reasoning behind setting clean_complete
> >>based on number of packets transmitted in case of XDP.
> >>>
> >>>>That might reduce the complexity a bit, and will probably still be pretty
> >>>>useful for people tuning their non-XDP workloads.
> >>
> >>This option is fine too.
> >
> >I'll give Jesse a chance to weigh in before I proceed with spinning a v3.
> 
> I'm ok with the patch you have now, that shows nb_pkts because it's the
> input to the polling decision. We can add the detail about XDP transmits
> cleaned in a later series or patch that is by someone who wants the XDP
> details in the napi poll context.

Thanks for the detailed and thoughtful feedback, it is much appreciated.

I'll leave this patch the way it is then and tweak the RX patch to include
an rx_clean_complete boolean as I mentioned in my response to that patch
and send out a v3.

FWIW, I had assumed that you would suggest dropping the XDP stuff so I
pre-emptively spun a branch locally that dropped it... it is a much smaller
change of course, but I suspect that this tracepoint might useful for XDP
users, so I think the decision to leave it with nb_pkts makes sense.

Thanks again for the review. I'll send a v3 shortly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
