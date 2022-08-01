Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B263587456
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 01:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62D3E40894;
	Mon,  1 Aug 2022 23:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62D3E40894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659396107;
	bh=VkgmsDY5toa0uf5HKctW4PUXGqE8A8YnGnQU+HjRSBY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rrEhcXHjolyde2/qY4D+KmReOFcylLVKYIY4VRo4J64LKEX7FMtYL0Ct7YbT+La9u
	 iXXIffdQ+y5diw8DjSeEiTP/pTxCyFVaKIMEuW39aaC7VvxoKtCpO2Jc6HGCoPnHWe
	 2x/zmGENg22Oz1PaUg1ZLqVGiR7YwjeKNWK7MCJg8YnAI5cAplDP6G9WE1QyLsVAqm
	 8q8Z06Tta854NyoVDzaLojmiYklrkKlLRI3GhLrWVtOHP32Ruq1kVMI7c8kUKnOp5O
	 AQ4XR1aknXEdbyGWSyHzFjdITzmVQFFWFjyqnRmB9s7zyCJ7s+otSZzdB84woGlLPQ
	 VarP+4OxsQNDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fC5YVVGP_TKl; Mon,  1 Aug 2022 23:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57DEE40890;
	Mon,  1 Aug 2022 23:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57DEE40890
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCB6A1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 22:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9931740278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 22:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9931740278
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrLXQcULwARS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 22:53:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 003C040257
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com
 [IPv6:2607:f8b0:4864:20::a2a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 003C040257
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 22:53:13 +0000 (UTC)
Received: by mail-vk1-xa2a.google.com with SMTP id c12so3238564vkn.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Aug 2022 15:53:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc;
 bh=oOCNoiqTAVpf1rSw96L4244bMx67wGCwKxrneDoxVVQ=;
 b=uzvkGjL84x80JRn5OXSgXQ9WJVyVAyHmMaW7a3Hop5wOQNDOgi9lxoLov4kpM4z4Kc
 ZHia+qu1QAiMWxZsi6wLbQ7HXxi8SS5DSth9AZPtaekpVAiATkE6l1SzUZbUSoAw1COb
 iErBFvmNcOirO/hHImXtW9BcWyTrIMIivZTOw1wnuRkXdGxSRa87U+BBNAsCvxvw/z0N
 5k8tWYlOvm+Gu92OaefqVdQrvuYNX3nZoECOxxtzzGczTtH8ebl1nB1w3fOCC2f/1l+3
 o2f4BDpoVme/kDpdDnKe0boZhmBi7vdULeQg5OWb7rHWk+5RdCVxbZL6yXo6Bq1QcmDy
 Hw+Q==
X-Gm-Message-State: ACgBeo00ZLFcGo+OXPa1o7vXhyey5lNT+qKPcFPp9ECZjrDuaiqiCZHk
 kr31LzbGeXVFAj4SAJxNMzX8Yp8UeEE9vIrE6s7V4A==
X-Google-Smtp-Source: AA6agR4k9y2YgUQihEnJ+kScZALO06Hylzkd6lbcITScG9lF6yDTnVtpaKgVxmiqcki4xTIB8SzZIWb5A3iVTujWpsU=
X-Received: by 2002:a1f:9d09:0:b0:377:8b21:a865 with SMTP id
 g9-20020a1f9d09000000b003778b21a865mr1848743vke.26.1659394392687; Mon, 01 Aug
 2022 15:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220801133750.7312-1-achaiken@aurora.tech>
 <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
In-Reply-To: <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
From: Ilya Evenbach <ievenbach@aurora.tech>
Date: Mon, 1 Aug 2022 15:53:02 -0700
Message-ID: <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
To: Alison Chaiken <achaiken@aurora.tech>, jacob.e.keller@intel.com, 
 Steve Payne <spayne@aurora.tech>, jesse.brandeburg@intel.com,
 richardcochran@gmail.com, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Mon, 01 Aug 2022 23:21:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aurora.tech; s=google;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc;
 bh=oOCNoiqTAVpf1rSw96L4244bMx67wGCwKxrneDoxVVQ=;
 b=UEEqIbcYeyEwhCba5CyPxaXXdLdGaw57xAcGLPH9oxqG5Cwp1tBK2RCqBygoApBoLb
 hC8/67rlOurzopbf5FurAMAZTrkYT+YiZv+3GWaQJH4fBjVIrw8VIWPLWFTngG3eIcEM
 vXf4eu1qFD8Bq5NnY55x4JvbP2VfXl/AyrSNxi4lQgRDVbdMuTR1eWW44atzbh2H4XgH
 KbRoVqbqbKTwg328aizQYVQmN9QY9TkGMBDMjTNJI4QEL1kTDtXImmJRJtehAhnq5NQ2
 EFP02yxDpZBk8awTHpnP+csQlMsLmvelx+Eb0f20Ssn6OLX9Zs9RJ7fzTHMu2XGJMygV
 xPXw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=aurora.tech header.i=@aurora.tech
 header.a=rsa-sha256 header.s=google header.b=UEEqIbcY
Subject: Re: [Intel-wired-lan] [PATCH] Use ixgbe_ptp_reset on
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
Content-Type: multipart/mixed; boundary="===============5955784919987175099=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5955784919987175099==
Content-Type: multipart/alternative; boundary="00000000000051a6bd05e535ddf4"

--00000000000051a6bd05e535ddf4
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 1, 2022 at 3:16 PM Alison Chaiken <achaiken@aurora.tech> wrote:

>
>
> ---------- Forwarded message ---------
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Date: Mon, Aug 1, 2022 at 2:34 PM
> Subject: RE: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
> To: achaiken@aurora.tech <achaiken@aurora.tech>, Brandeburg, Jesse <
> jesse.brandeburg@intel.com>, richardcochran@gmail.com <
> richardcochran@gmail.com>
> Cc: spayne@aurora.tech <spayne@aurora.tech>, alison@she-devel.com <
> alison@she-devel.com>, netdev@vger.kernel.org <netdev@vger.kernel.org>,
> intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>
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
> Resetting PTP could be a problem if the clock was not being synchronized
> with the kernel CLOCK_REALTIME,
>
That is true, but most likely not really important, as the unmitigated
problem also introduces significant discontinuities in time.
Basically, this patch does not make things worse.


> and does result in some loss of timer precision either way due to the
> delays involved with setting the time.
>
 That precision loss is negligible compared to jumps resulting from link
down/up, and should be corrected by normal PTP operation very quickly.


> Do you have an example of the clock jump? How much is it?
>
2021-02-12T09:24:37.741191+00:00 bench-12 phc2sys: [195230.451]
CLOCK_REALTIME phc offset        61 s2 freq  -36503 delay   2298
2021-02-12T09:24:38.741315+00:00 bench-12 phc2sys: [195231.451]
CLOCK_REALTIME phc offset       169 s2 freq  -36377 delay   2294
2021-02-12T09:24:39.741407+00:00 bench-12 phc2sys: [195232.451]
CLOCK_REALTIME phc offset 195213702387037 s2 freq +100000000 delay   2301
2021-02-12T09:24:40.741489+00:00 bench-12 phc2sys: [195233.452]
CLOCK_REALTIME phc offset 195213591220495 s2 freq +100000000 delay   2081


> How often is it? Every time?
>
Every time (though the specific amount differs, it is usually at similar
magnitude)

More information would help in order to debug what is going wrong here.
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
>

--00000000000051a6bd05e535ddf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 1, 2022 at 3:16 PM Alison Cha=
iken &lt;achaiken@aurora.tech&gt; wrote:<br></div><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">--------=
-- Forwarded message ---------<br>From: <b class=3D"gmail_sendername" dir=
=3D"auto">Keller, Jacob E</b> <span dir=3D"auto">&lt;<a href=3D"mailto:jaco=
b.e.keller@intel.com" target=3D"_blank">jacob.e.keller@intel.com</a>&gt;</s=
pan><br>Date: Mon, Aug 1, 2022 at 2:34 PM<br>Subject: RE: [PATCH] Use ixgbe=
_ptp_reset on linkup/linkdown for X550<br>To: achaiken@aurora.tech &lt;acha=
iken@aurora.tech&gt;, Brandeburg, Jesse &lt;<a href=3D"mailto:jesse.brandeb=
urg@intel.com" target=3D"_blank">jesse.brandeburg@intel.com</a>&gt;, <a hre=
f=3D"mailto:richardcochran@gmail.com" target=3D"_blank">richardcochran@gmai=
l.com</a> &lt;<a href=3D"mailto:richardcochran@gmail.com" target=3D"_blank"=
>richardcochran@gmail.com</a>&gt;<br>Cc: spayne@aurora.tech &lt;spayne@auro=
ra.tech&gt;, <a href=3D"mailto:alison@she-devel.com" target=3D"_blank">alis=
on@she-devel.com</a> &lt;<a href=3D"mailto:alison@she-devel.com" target=3D"=
_blank">alison@she-devel.com</a>&gt;, <a href=3D"mailto:netdev@vger.kernel.=
org" target=3D"_blank">netdev@vger.kernel.org</a> &lt;<a href=3D"mailto:net=
dev@vger.kernel.org" target=3D"_blank">netdev@vger.kernel.org</a>&gt;, <a h=
ref=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"_blank">intel-wir=
ed-lan@lists.osuosl.org</a> &lt;<a href=3D"mailto:intel-wired-lan@lists.osu=
osl.org" target=3D"_blank">intel-wired-lan@lists.osuosl.org</a>&gt;</div>
&gt; -----Original Message-----<br>
&gt; From: achaiken@aurora.tech &lt;achaiken@aurora.tech&gt;<br>
&gt; Sent: Monday, August 01, 2022 6:38 AM<br>
&gt; To: Brandeburg, Jesse &lt;<a href=3D"mailto:jesse.brandeburg@intel.com=
" target=3D"_blank">jesse.brandeburg@intel.com</a>&gt;;<br>
&gt; <a href=3D"mailto:richardcochran@gmail.com" target=3D"_blank">richardc=
ochran@gmail.com</a><br>
&gt; Cc: spayne@aurora.tech; achaiken@aurora.tech; <a href=3D"mailto:alison=
@she-devel.com" target=3D"_blank">alison@she-devel.com</a>;<br>
&gt; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vge=
r.kernel.org</a>; <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" targe=
t=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt; Subject: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550<br>
&gt; <br>
&gt; From: Steve Payne &lt;spayne@aurora.tech&gt;<br>
&gt; <br>
&gt; For an unknown reason, when `ixgbe_ptp_start_cyclecounter` is called<b=
r>
&gt; from `ixgbe_watchdog_link_is_down` the PHC on the NIC jumps backward<b=
r>
&gt; by a seemingly inconsistent amount, which causes discontinuities in<br=
>
&gt; time synchronization. Explicitly reset the NIC&#39;s PHC to<br>
&gt; `CLOCK_REALTIME` whenever the NIC goes up or down by calling<br>
&gt; `ixgbe_ptp_reset` instead of the bare `ixgbe_ptp_start_cyclecounter`.<=
br>
&gt; <br>
&gt; Signed-off-by: Steve Payne &lt;spayne@aurora.tech&gt;<br>
&gt; Signed-off-by: Alison Chaiken &lt;achaiken@aurora.tech&gt;<br>
&gt; <br>
<br>
Resetting PTP could be a problem if the clock was not being synchronized wi=
th the kernel CLOCK_REALTIME,</div></div></blockquote><div>That is true, bu=
t most likely not really important, as the unmitigated problem also introdu=
ces significant discontinuities in time.</div><div>Basically, this patch do=
es not make things worse.</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"> and doe=
s result in some loss of timer precision either way due to the delays invol=
ved with setting the time.<br></div></div></blockquote><div>=C2=A0That prec=
ision loss is negligible compared to jumps resulting from link down/up, and=
 should be corrected by normal PTP operation very quickly.</div><div><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_quote">
<br>
Do you have an example of the clock jump? How much is it?</div></div></bloc=
kquote>2021-02-12T09:24:37.741191+00:00 bench-12 phc2sys: [195230.451] CLOC=
K_REALTIME phc offset =C2=A0 =C2=A0 =C2=A0 =C2=A061 s2 freq =C2=A0-36503 de=
lay =C2=A0 2298<br>2021-02-12T09:24:38.741315+00:00 bench-12 phc2sys: [1952=
31.451] CLOCK_REALTIME phc offset =C2=A0 =C2=A0 =C2=A0 169 s2 freq =C2=A0-3=
6377 delay =C2=A0 2294<br>2021-02-12T09:24:39.741407+00:00 bench-12 phc2sys=
: [195232.451] CLOCK_REALTIME phc offset 195213702387037 s2 freq +100000000=
 delay =C2=A0 2301<br><div>2021-02-12T09:24:40.741489+00:00 bench-12 phc2sy=
s: [195233.452] CLOCK_REALTIME phc offset 195213591220495 s2 freq +10000000=
0 delay =C2=A0 2081</div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"> How often is =
it? Every time?</div></div></blockquote><div>Every time (though the specifi=
c amount differs, it is usually at similar magnitude)</div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_quote"> More information would help in order to debug what is go=
ing wrong here.<br>
<br>
Thanks,<br>
Jake<br>
<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c<br>
&gt; b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c<br>
&gt; index 750b02bb2fdc2..ab1ec076fa75f 100644<br>
&gt; --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c<br>
&gt; @@ -7462,7 +7462,7 @@ static void ixgbe_watchdog_link_is_up(struct<br>
&gt; ixgbe_adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;last_rx_ptp_check =3D jiffies;<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (test_bit(__IXGBE_PTP_RUNNING, &amp;adapt=
er-&gt;state))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ixgbe_ptp_start_cycle=
counter(adapter);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ixgbe_ptp_reset(adapt=
er);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (link_speed) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case IXGBE_LINK_SPEED_10GB_FULL:<br>
&gt; @@ -7527,7 +7527,7 @@ static void ixgbe_watchdog_link_is_down(struct<b=
r>
&gt; ixgbe_adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;flag=
s2 |=3D IXGBE_FLAG2_SEARCH_FOR_SFP;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (test_bit(__IXGBE_PTP_RUNNING, &amp;adapt=
er-&gt;state))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ixgbe_ptp_start_cycle=
counter(adapter);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ixgbe_ptp_reset(adapt=
er);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0e_info(drv, &quot;NIC Link is Down\n&quot;);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netif_carrier_off(netdev);<br>
&gt; --<br>
&gt; 2.32.0<br>
<br>
</div></div>
</blockquote></div></div>

--00000000000051a6bd05e535ddf4--

--===============5955784919987175099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5955784919987175099==--
