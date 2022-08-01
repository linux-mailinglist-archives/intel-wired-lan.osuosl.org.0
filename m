Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE340587457
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 01:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D2D981401;
	Mon,  1 Aug 2022 23:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D2D981401
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659396110;
	bh=anCruqToqzyoTIKVpJY3jA8NSBycaIDOw/v0yU0cyxc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EXTuMeoA+uMIS5tsY+HIKIv8eK8pezs1zx42GOi0W350sphaBISi4LaZEYPGm5He8
	 qG+vFtEyhBhUkGoc/idYn+DQQh7PpvPDulzgmyPYSI90fWbixLO3/PUEibiX8+HBA9
	 Uolf81YBs1YzjmFbfWqlYZY7hMgpt9IjRfhtYLwPNbluosDAOJyS7R1EKtgYAmaxym
	 m5Tvk8aC2V30vpZzJfhNBFiRolI6il7UYISFdATyyWJj/IbVqvZT+5YpPFgWueq879
	 qGd8N4fzm7QCnhJUrdBrkgC0uJanlLHcl3uu+8L4CBqxAWmIPuazf9ESi2fvRMT9d+
	 Mp/om/TU2q3Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQb9Pmr4Q0E4; Mon,  1 Aug 2022 23:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5658E8140C;
	Mon,  1 Aug 2022 23:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5658E8140C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9481BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 23:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8083A81409
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 23:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8083A81409
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-B0x5o_ZSQB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 23:00:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8EFD81401
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com
 [IPv6:2607:f8b0:4864:20::a35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8EFD81401
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 23:00:16 +0000 (UTC)
Received: by mail-vk1-xa35.google.com with SMTP id x184so3447607vka.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Aug 2022 16:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc;
 bh=d1mDb2a2v5329ifGIpZKAthbn6aAeF9uBnt1OeyGSno=;
 b=vYf4tFVMGMrmSyHNKb1tmWwvwzdq+Z3lnsMSG/Z9EFZqw5NK4ycrd/X769WsFNNQCg
 nSIo/DGODFYozbX2dugsjnuTaXjskjV/wczYz5TCbAuSs/8aldTjghW1Nu8zPsXzocg2
 N5qckIFpY9nPb7IEx9EoSYf+uyd9pGow8UlCov+FMklOw6FCZLGBr5aCeQ5EfdbFASt1
 zkyGn+RhAsjhUM8h/k1k3yXzfXRhtGATqM7kLJ3Pb2ScLO1C6VJ3dwjDq4Z4VoKuwEMk
 ovRCIuztmvHhxPtWHY7lz9mztKDojEsRny/9BBi4ZONTfY7ALy/DrA6JT596GWunIiZO
 8ikg==
X-Gm-Message-State: AJIora8gJvoxtYxan6WiNhzkr8NltIBHGqDgbBMP+jU4Z/6adGnLSISl
 /x83XS6drfj+GFqsXhq+lY9ESVvo4XW9OrzeS/MTQQ==
X-Google-Smtp-Source: AGRyM1tAXkm7vLC0y1aF7PlaH3eymvJiM1XO5v8dGr9NfGhObcDMk/+LbVWbkcPN++H4WDh1c4f0AgQGGDgsdFEhrtU=
X-Received: by 2002:a1f:300c:0:b0:36f:eb7d:746f with SMTP id
 w12-20020a1f300c000000b0036feb7d746fmr6659713vkw.27.1659394815519; Mon, 01
 Aug 2022 16:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220801133750.7312-1-achaiken@aurora.tech>
 <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
 <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
In-Reply-To: <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
From: Ilya Evenbach <ievenbach@aurora.tech>
Date: Mon, 1 Aug 2022 16:00:03 -0700
Message-ID: <CAJmffrr=J_s9cFw5Q58rvZRWLpsrDnx3RkRXS3oLZDYY3BrNcw@mail.gmail.com>
To: Alison Chaiken <achaiken@aurora.tech>, jacob.e.keller@intel.com, 
 Steve Payne <spayne@aurora.tech>, jesse.brandeburg@intel.com,
 richardcochran@gmail.com, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 01 Aug 2022 23:21:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aurora.tech; s=google;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc;
 bh=d1mDb2a2v5329ifGIpZKAthbn6aAeF9uBnt1OeyGSno=;
 b=ES/PQe98egd7+R9bNGcqpEC2zMpz2RlfQ9kGgpgfi725GTaBm5Nw/ghctXtX/nOO+O
 f5LRbuhhcpA0wlX6gS4UaJAU5C3QwDJNKeQQ8YY4ZMwCpG9NK37LfzqqmF8mKAI4B7C6
 s1u7uKQiXguq7hyBlTZgyQYyd2eVKxjTsBw1wBeUXMWVgZ9dfMeM9BRjugX03A208SCx
 MQjWon9Py1SPcH2JCD5TwukggI4cmtiQWJsscYdtnIhvWvkyo/WMYJKEl6OUAFU2Oj1n
 hkXHJyo/dNOfPqzxG3k0xzL1uAzHA297YfYwHS3TXSu+eeAjv3giLgUoHkj85y8s0kB0
 FHsQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=aurora.tech header.i=@aurora.tech
 header.a=rsa-sha256 header.s=google header.b=ES/PQe98
Subject: [Intel-wired-lan] Fwd: [PATCH] Use ixgbe_ptp_reset on
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > -----Original Message-----
> > From: achaiken@aurora.tech <achaiken@aurora.tech>
> > Sent: Monday, August 01, 2022 6:38 AM
> > To: Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> > richardcochran@gmail.com
> > Cc: spayne@aurora.tech; achaiken@aurora.tech; alison@she-devel.com;
> > netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> > Subject: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
> >
> > From: Steve Payne <spayne@aurora.tech>
> >
> > For an unknown reason, when `ixgbe_ptp_start_cyclecounter` is called
> > from `ixgbe_watchdog_link_is_down` the PHC on the NIC jumps backward
> > by a seemingly inconsistent amount, which causes discontinuities in
> > time synchronization. Explicitly reset the NIC's PHC to
> > `CLOCK_REALTIME` whenever the NIC goes up or down by calling
> > `ixgbe_ptp_reset` instead of the bare `ixgbe_ptp_start_cyclecounter`.
> >
> > Signed-off-by: Steve Payne <spayne@aurora.tech>
> > Signed-off-by: Alison Chaiken <achaiken@aurora.tech>
> >
>
> Resetting PTP could be a problem if the clock was not being synchronized with the kernel CLOCK_REALTIME,

That is true, but most likely not really important, as the unmitigated
problem also introduces significant discontinuities in time.
Basically, this patch does not make things worse.

>
> and does result in some loss of timer precision either way due to the delays involved with setting the time.

 That precision loss is negligible compared to jumps resulting from
link down/up, and should be corrected by normal PTP operation very
quickly.

>
> Do you have an example of the clock jump? How much is it?

2021-02-12T09:24:37.741191+00:00 bench-12 phc2sys: [195230.451]
CLOCK_REALTIME phc offset        61 s2 freq  -36503 delay   2298
2021-02-12T09:24:38.741315+00:00 bench-12 phc2sys: [195231.451]
CLOCK_REALTIME phc offset       169 s2 freq  -36377 delay   2294
2021-02-12T09:24:39.741407+00:00 bench-12 phc2sys: [195232.451]
CLOCK_REALTIME phc offset 195213702387037 s2 freq +100000000 delay
2301
2021-02-12T09:24:40.741489+00:00 bench-12 phc2sys: [195233.452]
CLOCK_REALTIME phc offset 195213591220495 s2 freq +100000000 delay
2081

>
> How often is it? Every time?

Every time (though the specific amount differs, it is usually at
similar magnitude)

> More information would help in order to debug what is going wrong here.
>
> Thanks,
> Jake
>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 750b02bb2fdc2..ab1ec076fa75f 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -7462,7 +7462,7 @@ static void ixgbe_watchdog_link_is_up(struct
> > ixgbe_adapter *adapter)
> >       adapter->last_rx_ptp_check = jiffies;
> >
> >       if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> > -             ixgbe_ptp_start_cyclecounter(adapter);
> > +             ixgbe_ptp_reset(adapter);
> >
> >       switch (link_speed) {
> >       case IXGBE_LINK_SPEED_10GB_FULL:
> > @@ -7527,7 +7527,7 @@ static void ixgbe_watchdog_link_is_down(struct
> > ixgbe_adapter *adapter)
> >               adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
> >
> >       if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> > -             ixgbe_ptp_start_cyclecounter(adapter);
> > +             ixgbe_ptp_reset(adapter);
> >
> >       e_info(drv, "NIC Link is Down\n");
> >       netif_carrier_off(netdev);
> > --
> > 2.32.0
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
