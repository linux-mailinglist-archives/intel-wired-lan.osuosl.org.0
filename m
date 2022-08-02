Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 567EF5874E1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 02:47:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FF7C607FE;
	Tue,  2 Aug 2022 00:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FF7C607FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659401256;
	bh=AgkwD8LN6KXu3gcealwyOTzy0341rIQl/rRjmHh7Xb0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y5E5p3LrWQYYeDig0KeJ7gycvz9rgopysqf3CQ6pAm+qkKylXtLNP0ir34utPYees
	 X1hD2/hppp9MKvCkukNOpz8Ir/DaeLzNeMgul9C9ZqQWhyNvKyCsi6APCpXIREKStE
	 KpY3qFuSaglHbIgk4Kz3XOQwpmiaOEFGMpCmSj44ve6j8gB4dIfvFHMK5ZOfZQzsk6
	 Ct8fpfusA+4EPlyayPliUOVSU9/iIYTRILRV39ZeBKb7xh4Ebive1MUHchKGeGDYHB
	 bLuyXJD8tdFMqWVoQ/1iFKqkSfHzHaS5GbCJVBu2UV49xXMKIpAN2KDqxd7LjzUzts
	 mcJkwbjMXfJOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCabtS1UghO0; Tue,  2 Aug 2022 00:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0273260807;
	Tue,  2 Aug 2022 00:47:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0273260807
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A71ED1BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F3FE813E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F3FE813E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vPT1aII0nrjo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 00:24:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5B74812E7
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5B74812E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 00:24:29 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-322b5199358so122982407b3.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Aug 2022 17:24:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=THL7kXmuzb6t+j9BasB/qWwgChzRIog+35BlUowjwVQ=;
 b=DP0dBwacoC20ON7StqY2F+Gd6JVz0nYQ4wHUnnBTkfPF6dPxT5UBnpN3sUYvDxFX0b
 ABszql4dytSV3JDCaG0wzwZEA+nVekgwp298h6PRc946M10VI8qgVweX+CiFi+xgI8kT
 naP18u7pfkiV+MZnWpAOp51WsWSvxZrIm/ri3/cvRCQCP2dvkRIP9WUceQu8dCUQPNa8
 iY9RJoempweJnfq3SsiTxNIwbiwMCHyt8u5qXAwVVT5nBfCvp6uBIQg+ZscH4zGWaOJf
 UT3OR8+6KlI+fz8IOCZ3KWX3xCT+1pMHtBtf3UkGwC/32z3P0xT1sGu/Rq8brpollKBK
 tqaQ==
X-Gm-Message-State: ACgBeo1LxKkhMMt12HugtCPRYmPYpx2zXYvUVXldknxp8KhKEGNUMsyK
 gX9lQaM3FzqoytT+5zHSMKm6QHDRSNYOZTE7kB3alw==
X-Google-Smtp-Source: AA6agR7V2ra/dfef1EWEdDoiBaycFKEPJFuXjRTPfOK4RQG86lIkt08CkNkj0gQpi17Bc76IzBn1NxgiwKw84DceIwU=
X-Received: by 2002:a81:ad1:0:b0:318:3b63:6d00 with SMTP id
 200-20020a810ad1000000b003183b636d00mr15902154ywk.146.1659399868699; Mon, 01
 Aug 2022 17:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220801133750.7312-1-achaiken@aurora.tech>
 <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
 <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
 <CAJmffrr=J_s9cFw5Q58rvZRWLpsrDnx3RkRXS3oLZDYY3BrNcw@mail.gmail.com>
 <bd24eeb0-318c-71a4-527f-02832b74250c@intel.com>
In-Reply-To: <bd24eeb0-318c-71a4-527f-02832b74250c@intel.com>
From: Alison Chaiken <achaiken@aurora.tech>
Date: Mon, 1 Aug 2022 17:24:17 -0700
Message-ID: <CAFzL-7uBrzQNmYCXvaL-OokE07cWT-jr4tgGR2VgeaUeayLfxw@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mailman-Approved-At: Tue, 02 Aug 2022 00:47:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aurora.tech; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=THL7kXmuzb6t+j9BasB/qWwgChzRIog+35BlUowjwVQ=;
 b=CjS5t0y0TX2+T94BfNae8/yw/FO6/2sqhEmTcrRb/2f85lVG8AtTYqFtAuU5fjDCPU
 Xh7N11adK3KLBwHA6GbSVaL9wdPoaATvE9CLL0Fyw0gImVo61rv6/85kXNWnmCNvScuS
 NA7glNPUxyRrjU+XywZg7pGAYGEYvNDu6DWCz7X8Bsw+tZ9LWKat6hYlJZAbUqGG1ids
 Dyw1XyWs20kya1vTh9nA8IyQqmOzsDUdOsG7fuvA4Pa+TODcqAD+4Lbu5kSFaVN63yfg
 9xsyynV5nqbO23gEL8NUJE8OAK3B70CNXQ3LdpMIQkZ/aWs0wo29LaXKzpwOHXviTemC
 HBeQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=aurora.tech header.i=@aurora.tech
 header.a=rsa-sha256 header.s=google header.b=CjS5t0y0
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
Cc: Ilya Evenbach <ievenbach@aurora.tech>, netdev@vger.kernel.org,
 richardcochran@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, Steve Payne <spayne@aurora.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 1, 2022 at 4:29 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
>
>
>
> On 8/1/2022 4:00 PM, Ilya Evenbach wrote:
> >>> -----Original Message-----
> >>> From: achaiken@aurora.tech <achaiken@aurora.tech>
> >>> Sent: Monday, August 01, 2022 6:38 AM
> >>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> >>> richardcochran@gmail.com
> >>> Cc: spayne@aurora.tech; achaiken@aurora.tech; alison@she-devel.com;
> >>> netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> >>> Subject: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
> >>>
> >>> From: Steve Payne <spayne@aurora.tech>
> >>>
> >>> For an unknown reason, when `ixgbe_ptp_start_cyclecounter` is called
> >>> from `ixgbe_watchdog_link_is_down` the PHC on the NIC jumps backward
> >>> by a seemingly inconsistent amount, which causes discontinuities in
> >>> time synchronization. Explicitly reset the NIC's PHC to
> >>> `CLOCK_REALTIME` whenever the NIC goes up or down by calling
> >>> `ixgbe_ptp_reset` instead of the bare `ixgbe_ptp_start_cyclecounter`.
> >>>
> >>> Signed-off-by: Steve Payne <spayne@aurora.tech>
> >>> Signed-off-by: Alison Chaiken <achaiken@aurora.tech>
> >>>
> >>
> >> Resetting PTP could be a problem if the clock was not being synchronized with the kernel CLOCK_REALTIME,
> >
> > That is true, but most likely not really important, as the unmitigated
> > problem also introduces significant discontinuities in time.
> > Basically, this patch does not make things worse.
> >
>
> Sure, but I am trying to see if I can understand *why* things get wonky.
> I suspect the issue is caused because of how we're resetting the
> cyclecounter.
>
> >>
> >> and does result in some loss of timer precision either way due to the delays involved with setting the time.
> >
> >  That precision loss is negligible compared to jumps resulting from
> > link down/up, and should be corrected by normal PTP operation very
> > quickly.
> >
>
> Only if CLOCK_REALTIME is actually being synchronized. Yes, that is
> generally true, but its not necessarily guaranteed.
>
> >>
> >> Do you have an example of the clock jump? How much is it?
> >
> > 2021-02-12T09:24:37.741191+00:00 bench-12 phc2sys: [195230.451]
> > CLOCK_REALTIME phc offset        61 s2 freq  -36503 delay   2298
> > 2021-02-12T09:24:38.741315+00:00 bench-12 phc2sys: [195231.451]
> > CLOCK_REALTIME phc offset       169 s2 freq  -36377 delay   2294
> > 2021-02-12T09:24:39.741407+00:00 bench-12 phc2sys: [195232.451]
> > CLOCK_REALTIME phc offset 195213702387037 s2 freq +100000000 delay
> > 2301
> > 2021-02-12T09:24:40.741489+00:00 bench-12 phc2sys: [195233.452]
> > CLOCK_REALTIME phc offset 195213591220495 s2 freq +100000000 delay
> > 2081
> >
>
> Thanks.
>
> I think what's actually going on is a bug in the
> ixgbe_ptp_start_cyclecounter function where the system time registers
> are being reset.
>
> What hardware are you operating on? Do you know if its an X550 board?

Indeed it is.

> It
> looks like this has been the case since a9763f3cb54c ("ixgbe: Update PTP
> to support X550EM_x devices").

The current test results come from v5.15.49-rt47. We observed the same
problem in 5.4.93-rt51, which contains a9763f3cb54c.

> The start_cyclecounter was never supposed to modify the current time
> registers, but resetting it to 0 as it does for X550 devices would give
> the exact behavior you're seeing.

That certainly sounds plausible.

Thanks,
Alison Chaiken
Aurora Innovation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
