Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF645F5896
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 18:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 695E1404CC;
	Wed,  5 Oct 2022 16:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 695E1404CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664988513;
	bh=lvrr4yqrQzAVq/xvLqth0AunvMZN4x//pcwTbQEi918=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U7ewdp9fMWPOK8Rx956fvT8rHidGmbvNeTKl+jYWdrPTh2YYmRMcbncHDrZe3VODR
	 JGeRVlpx0hvXXpaN3btDI2fbMUfmMf1gNE5zj4AMbZ0q816qYqmmMo03jD0ccqfl2Z
	 amxCsiPMZlRiyKU6tVZPhg+BtFMEbPLAfaTBOZ4+L1HxW+myVnO7LonCbHEiy9Z59r
	 wNbO7h8Cov4EZEDDQLd2BcYjR0zOS5q5iCdShm2g5yQ1Jbto+a96N3DD/A/4IjQ19+
	 0zHt/bOEg7SytcTAXbMq0cjhai8eGeqI2oNmAXtF80b5JGI/d8Vp2h0xuw759Hxw8J
	 ChsKP3zhzXKjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Bc1_T4_YrqB; Wed,  5 Oct 2022 16:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C27644049C;
	Wed,  5 Oct 2022 16:48:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C27644049C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFEE61BF48C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 18:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A90881416
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 18:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A90881416
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAMSSbtKT0vs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Oct 2022 18:15:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64D9981421
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64D9981421
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 18:15:02 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id q7so6227170pfl.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Oct 2022 11:15:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pjUcIfC4N+MJ+Ls6kt2gg2LjSDSZQ5bQdu/jOyN4X3I=;
 b=hBJD0b/BZjzZEBt0ZkZDVEwpLnFmLD0V7FaCUC305zZF4hVPHfoos47d9Z8V0HK1pp
 t0owXqhSjww6wTgdVLq4khpceDWOMnu7YG65jKUeIbq1AnOw49Bzk8oG71TZ784PF3bp
 cNxw6pA8SfBVUbzinvDINLWiUET2SyhBZhQsV5AmwvhHpmgYoClXgZxLzMFXsP0GjrsC
 5mgUkF3YJWClLEBTmUpm3W8/CUMYy+rHa2iKr7XeBP3fws9G7lWmYDRaBzqvUav+aE/i
 laZbGiGMBtSeD0yycyukHT/aou1uSl+iqaWapaHSgD+xTbV6mnXtCcp49tdRkTllzyhp
 B7Lw==
X-Gm-Message-State: ACrzQf2WDN/pUFmieUoijzyiTIT6Sx91J+2sYJCjaLjDu8PhJAGFnO0s
 cK3z90UKqq93HDKjVvuaKRhD1WiCejT/ykTXvN8Fyg==
X-Google-Smtp-Source: AMsMyM4z+7fWGuwn/DVhu6Gk40JZow3QaimXVBJC/i2MbMlaWcExb2uHkDg2CMrN09HkprckJRhI+yHDqsQyg4MUQQU=
X-Received: by 2002:a63:4283:0:b0:457:dced:8ba3 with SMTP id
 p125-20020a634283000000b00457dced8ba3mr511199pga.220.1664907301731; Tue, 04
 Oct 2022 11:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220801133750.7312-1-achaiken@aurora.tech>
 <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
 <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
 <CAJmffrr=J_s9cFw5Q58rvZRWLpsrDnx3RkRXS3oLZDYY3BrNcw@mail.gmail.com>
 <bd24eeb0-318c-71a4-527f-02832b74250c@intel.com>
 <0048e66d-6115-4b71-0804-3a0180105431@intel.com>
In-Reply-To: <0048e66d-6115-4b71-0804-3a0180105431@intel.com>
From: Alison Chaiken <achaiken@aurora.tech>
Date: Tue, 4 Oct 2022 11:14:50 -0700
Message-ID: <CAFzL-7v-wLuaunUwKfEy0W+OMkKSXJ8ohecb8_Gok+=eQHdeAA@mail.gmail.com>
To: anthony.l.nguyen@intel.com
X-Mailman-Approved-At: Wed, 05 Oct 2022 16:48:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aurora.tech; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pjUcIfC4N+MJ+Ls6kt2gg2LjSDSZQ5bQdu/jOyN4X3I=;
 b=J8GqUqBDAGJ07n1VPd8kiTSe5+ZeiWtvwLsn8aMCy0Yd6NPn9du+TdMGwSCRDDH7N8
 FCahGQC8VdicvJwlUl1Wuhbiyh2VRLJI35aimx5rvhuYx/c0cCCaQ1nS6v+5Gaytu38/
 1txn+y9myuhv1qREwZTvqCH0WTXAIi1f+NHLXAyRk9C/Xxl2e1XpRKlyGS554bdzJ4o2
 Sq3Jc7VjTAsxLP9MrIiiHxhDruvq5mx6wRWvQKuK9SpeEI0sMSD6TBFWv4inE+X826+Q
 kJBwJycSPBT+i13AUQXoISrUQrHjAKUAlEKcD2g4MHr/6xjbGrbk5QrTZBwhMmrBNmxL
 KoZA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=aurora.tech header.i=@aurora.tech
 header.a=rsa-sha256 header.s=google header.b=J8GqUqBD
Subject: Re: [Intel-wired-lan] Fwd: [PATCH] Use ixgbe_ptp_reset on
 linkup/linkdown for X550
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 intel-wired-lan@lists.osuosl.org, Steve Payne <spayne@aurora.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

How about this Intel X550 PTP fix for 6.1?

https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20220801/029590.html

Thanks,
Alison Chaiken
Aurora Innovation

On Mon, Aug 1, 2022 at 5:26 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
>
> On 8/1/2022 4:29 PM, Jacob Keller wrote:
> >
> >
> > On 8/1/2022 4:00 PM, Ilya Evenbach wrote:
> >>>> -----Original Message-----
> >>>> From: achaiken@aurora.tech <achaiken@aurora.tech>
> >>>> Sent: Monday, August 01, 2022 6:38 AM
> >>>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> >>>> richardcochran@gmail.com
> >>>> Cc: spayne@aurora.tech; achaiken@aurora.tech; alison@she-devel.com;
> >>>> netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> >>>> Subject: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
> >>>>
> >>>> From: Steve Payne <spayne@aurora.tech>
> >>>>
> >>>> For an unknown reason, when `ixgbe_ptp_start_cyclecounter` is called
> >>>> from `ixgbe_watchdog_link_is_down` the PHC on the NIC jumps backward
> >>>> by a seemingly inconsistent amount, which causes discontinuities in
> >>>> time synchronization. Explicitly reset the NIC's PHC to
> >>>> `CLOCK_REALTIME` whenever the NIC goes up or down by calling
> >>>> `ixgbe_ptp_reset` instead of the bare `ixgbe_ptp_start_cyclecounter`.
> >>>>
> >>>> Signed-off-by: Steve Payne <spayne@aurora.tech>
> >>>> Signed-off-by: Alison Chaiken <achaiken@aurora.tech>
> >>>>
> >>>
> >>> Resetting PTP could be a problem if the clock was not being synchronized with the kernel CLOCK_REALTIME,
> >>
> >> That is true, but most likely not really important, as the unmitigated
> >> problem also introduces significant discontinuities in time.
> >> Basically, this patch does not make things worse.
> >>
> >
> > Sure, but I am trying to see if I can understand *why* things get wonky.
> > I suspect the issue is caused because of how we're resetting the
> > cyclecounter.
> >
> >>>
> >>> and does result in some loss of timer precision either way due to the delays involved with setting the time.
> >>
> >>  That precision loss is negligible compared to jumps resulting from
> >> link down/up, and should be corrected by normal PTP operation very
> >> quickly.
> >>
> >
> > Only if CLOCK_REALTIME is actually being synchronized. Yes, that is
> > generally true, but its not necessarily guaranteed.
> >
> >>>
> >>> Do you have an example of the clock jump? How much is it?
> >>
> >> 2021-02-12T09:24:37.741191+00:00 bench-12 phc2sys: [195230.451]
> >> CLOCK_REALTIME phc offset        61 s2 freq  -36503 delay   2298
> >> 2021-02-12T09:24:38.741315+00:00 bench-12 phc2sys: [195231.451]
> >> CLOCK_REALTIME phc offset       169 s2 freq  -36377 delay   2294
> >> 2021-02-12T09:24:39.741407+00:00 bench-12 phc2sys: [195232.451]
> >> CLOCK_REALTIME phc offset 195213702387037 s2 freq +100000000 delay
> >> 2301
> >> 2021-02-12T09:24:40.741489+00:00 bench-12 phc2sys: [195233.452]
> >> CLOCK_REALTIME phc offset 195213591220495 s2 freq +100000000 delay
> >> 2081
> >>
> >
> > Thanks.
> >
> > I think what's actually going on is a bug in the
> > ixgbe_ptp_start_cyclecounter function where the system time registers
> > are being reset.
> >
> > What hardware are you operating on? Do you know if its an X550 board? It
> > looks like this has been the case since a9763f3cb54c ("ixgbe: Update PTP
> > to support X550EM_x devices").
> >
> > The start_cyclecounter was never supposed to modify the current time
> > registers, but resetting it to 0 as it does for X550 devices would give
> > the exact behavior you're seeing.
>
> I just posted an alternative fix which I believe resolves this issue.
>
> Thanks,
> Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
