Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF56875211
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 15:40:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BCE960EFD;
	Thu,  7 Mar 2024 14:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ed2AQKgvka0y; Thu,  7 Mar 2024 14:40:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55BD860A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709822404;
	bh=iUcwY9/2T9bqLb+CvftXtrsYFSi4UBFa2fJuJAv1fuM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tNVWPYlzaui86rqzHr0tDs6tMJYDHqvHrDtZ9l3oP5Zddto5KsvnfJRiksSTw1eUy
	 2R/uWH89HsPLj0THHjMgzEC1MOMhZSMI9c7vdGYHmeMovkQZ/oeWZceGvKEvf/OH55
	 J498RgMu2Dr/zYSAKxdZS5CpXN21s7mAabE6a2hxskwr4hqiqv4PMz3Cu2MXeHlI3a
	 9aPlGnPBHlC9pzkRUddUZSEy8uSC3hjaOQxNOyTTfkjIEX1nS9i/D37gvnh5ToLHm6
	 Zq6lUkszMW0L+U/ysQuHueLiPLpTti4Rs30TRXcOfSOtj/hS68ftsYUQJ6GlfHYBkd
	 fLhMe7QAAJbDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55BD860A46;
	Thu,  7 Mar 2024 14:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 880BD1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 14:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73F5280D50
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 14:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wQHFlK1Va_O for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 14:40:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=suresh2514@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E55D980D47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55D980D47
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E55D980D47
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 14:39:59 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-609fd5fbe50so2720987b3.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Mar 2024 06:39:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709822399; x=1710427199;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iUcwY9/2T9bqLb+CvftXtrsYFSi4UBFa2fJuJAv1fuM=;
 b=tfK4BBN5D9v8jYDysgXWO4XSi+rwYVpQ8xljP7kRHA2lM6MnVDi4aYSc5JXjg9/Uus
 G9kO8nidn5l6LQswNIPcYWZphYMxCve8vvanYYoKCvjQOt7hzVtZmonnAb0HOvQRytTy
 ev6yPva1GBvN3Fgwj6JBJViutCEgvmPcv8RyhyzR0DFAUpNlKbWw4RS6VqQZMEbiQ2aM
 KM3KwbjS+DjakpLS3X4ixOxWXB1DSnAL+ZHp6drbtwVHZR7owBVHE6Jp3JIPu2ygIuUH
 kRjk24ctE8Z7Iv5hlJH3xgOUCkwR3xWK4/tivS5RLQh39zo73kZwrfSRV9gism+aMOPK
 j4Zg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWhBdMCHtBj6hWK54X1GfB4Ul21o0hQZSc9qg2h0RwK66ZceQOuAGqdw/FgUJo6e8sGwPaXwFrW0GRqqij0HIaQVQEOEDFRmBafGhv4jNS30Q==
X-Gm-Message-State: AOJu0YweDwafjH5EXhSGB8aBrXzTlppBppRbyfxm+eIcmII9iOqgTWLg
 NUqsUh2tCnue4Eb3k8eQjIpCs8oynCXzRqZ1K6LXiA5vEaXWYiSWtubAcjbLRr+3NV+iMt0ywqk
 6OLLvIyNbxWTno0Hd71AgDiORcBk=
X-Google-Smtp-Source: AGHT+IEtfxkRcBxpRPYk+JbPmA9ifmoGFtkmosAp/TG2wabAkx1hR4OEhFG0PSSBMcOMhY46NSuPilVSMItFbOhtSSY=
X-Received: by 2002:a81:6284:0:b0:609:96b0:90d6 with SMTP id
 w126-20020a816284000000b0060996b090d6mr16393351ywb.25.1709822398653; Thu, 07
 Mar 2024 06:39:58 -0800 (PST)
MIME-Version: 1.0
References: <20240120072806.8554-1-suresh2514@gmail.com>
 <e524c57e-fe43-4582-bb05-c50f3e529848@intel.com>
 <SJ0PR11MB5866EAA3CBAF4E28842305D5E57D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <Zc46QEBEpCOL75qN@boxer>
In-Reply-To: <Zc46QEBEpCOL75qN@boxer>
From: suresh ks <suresh2514@gmail.com>
Date: Thu, 7 Mar 2024 20:09:47 +0530
Message-ID: <CABAyFk54urKYzroBt5ii=h8hMHJ=rgPpGwivK1DjNS+pWDFq5Q@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Content-Type: multipart/alternative; boundary="000000000000b370aa0613130c5a"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709822399; x=1710427199; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=iUcwY9/2T9bqLb+CvftXtrsYFSi4UBFa2fJuJAv1fuM=;
 b=Y73h1s+wK/38FxTbNbhSoI4aQTYzKhxOaZs6klUmAvsABezrIvPDMXgC10BoQatzFj
 FziCap+S99owvRT3jj/gWUn9Xq5keQcx4nFGKb5aMAGa8yPA8m/dra5thpPdTXV0Kw6r
 SMgVkPLh3UPiYtGwG8asa6VWW7RX0XJRUXz1OmLDbB9ur8UXvHErZiJf9nSUjTcG2/0v
 fSHfd2ffKiSu+ay1PLk9rcZko9KKbUixINgBKvyWokQc6fsF/U4Xq660C/pXjAloMW1t
 600/FVybiHehKo3ZdyYCHA+zVD/mamy4lj5Fw81g1+gz9vMrOSuDfuJI68vbPDHNyA+t
 cy2A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Y73h1s+w
Subject: Re: [Intel-wired-lan] [PATCH iwl v2] i40e: print correct hw max rss
 count in kernel ring buffer
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000b370aa0613130c5a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maciej,

Thanks for the links and taking time to review.

I was following the ethtool codes and suggested vsi->num_queue_pairs.
Maybe vsi->alloc_queue_pairs is the right option as you suggested. I have
not read much of i40e codes. Just that one of our customers reported this
issue and I was reviewing the codes.

I also felt rss_size_max comes from the early i40e days. So I was not sure
what I would add in the 'Fixes:' tag.

Sorry for getting late here. Was on a vacation.


thanks....
*Suresh KS*
suresh2514@gmail.com
91-7709100053



On Thu, Feb 15, 2024 at 9:52=E2=80=AFPM Maciej Fijalkowski <
maciej.fijalkowski@intel.com> wrote:

> On Tue, Jan 30, 2024 at 08:33:43AM +0000, Loktionov, Aleksandr wrote:
> > > -----Original Message-----
> > > From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > > Sent: Tuesday, January 30, 2024 9:26 AM
> > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > > Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count
>
> Subject should be iwl-net and you should have Fixes: tag.
> I also would like you to go through
> https://docs.kernel.org/process/submitting-patches.html
>
> or any other document that would prepare you for your first submission.
>
> > > in kernel ring buffer
> > >
> > > FWD to Alex
> > >
> > >
> > > -------- Forwarded Message --------
> > > Subject: [PATCH iwl v2] i40e: print correct hw max rss count in
> > > kernel ring buffer
> > > Date: Sat, 20 Jan 2024 12:58:06 +0530
> > > From: Suresh Kumar <suresh2514@gmail.com>
> > > To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
> > > davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
> > > pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
> > > netdev@vger.kernel.org, linux-kernel@vger.kernel.org
> > > CC: Suresh Kumar <suresh2514@gmail.com>
> > >
> > > pf->rss_size_max is hardcoded and always prints max rss count as
> > > 64.
> > >
> > > Eg:
> > >    kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS
> > > count:  104/64
> > >
> > > whereas  ethtool reports the correct value from "vsi-
> > > >num_queue_pairs"
> > >
> > > Channel parameters for eno33:
> > > Pre-set maximums:
> > > RX:     n/a
> > > TX:     n/a
> > > Other:      1
> > > Combined:   104
> > > Current hardware settings:
> > > RX:     n/a
> > > TX:     n/a
> > > Other:      1
> > > Combined:   104  <-------
> > >
> > > and is misleading.
> > >
> > > Change it to vsi->num_queue_pairs
> >
> > Please reject this patch, it breaks driver logging.
> > The massage clearly states that it dumps max rss queues number that f/w
> supports.
>
> ...which would imply that you would be able to work with anything more
> than 64 queues. From a quick glance rss_size_max comes from early i40e
> days and if that would be the limit indeed then driver allowing 104 queue=
s
> would be a disaster, no?
>
> >
> > Thank you
> >
> > > Signed-off-by: Suresh Kumar <suresh2514@gmail.com>
> > > ---
> > >   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > index d5519af34657..f5c1ec190f7e 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > > @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf
> > > *pf, int queue_count)
> > >             i40e_pf_config_rss(pf);
> > >     }
> > >     dev_info(&pf->pdev->dev, "User requested queue count/HW max
> > > RSS
> > > count:  %d/%d\n",
> > > -            vsi->req_queue_pairs, pf->rss_size_max);
> > > +            vsi->req_queue_pairs, vsi->num_queue_pairs);
>
> IMHO this should be vsi->alloc_queue_pairs instead.
>
> > >     return pf->alloc_rss_size;
> > >   }
> > >   -- 2.43.0
> > >
> >
>

--000000000000b370aa0613130c5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Maciej,<div><br></div><div>Thanks for the links an=
d taking time to review.</div><div><br></div><div>I was following the ethto=
ol codes and suggested=C2=A0vsi-&gt;num_queue_pairs.=C2=A0=C2=A0</div><div>=
Maybe=C2=A0vsi-&gt;alloc_queue_pairs is the right option as you suggested. =
I have not read much of i40e codes. Just that one of our customers reported=
 this issue and I was reviewing the codes.</div><div><br></div><div>I also =
felt=C2=A0rss_size_max comes from the early i40e days. So I was not sure wh=
at I would add in the &#39;Fixes:&#39; tag.=C2=A0</div><div><br></div><div>=
Sorry for getting late here. Was on a vacation.</div><div><br></div><div><b=
r></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>thanks....<br></div><b><span sty=
le=3D"color:rgb(204,0,0)">Suresh KS</span></b><br><div><span style=3D"color=
:rgb(11,83,148)"><a href=3D"mailto:suresh2514@gmail.com" target=3D"_blank">=
suresh2514@gmail.com</a><br></span></div><div><span style=3D"color:rgb(11,8=
3,148)">91-7709100053</span><br><br></div></div></div></div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Feb 15, 2024 at 9:52=E2=80=AFPM Maciej Fijalkowski &lt;<a href=3D"mailto=
:maciej.fijalkowski@intel.com">maciej.fijalkowski@intel.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Jan 30, =
2024 at 08:33:43AM +0000, Loktionov, Aleksandr wrote:<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Kitszel, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitsze=
l@intel.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;<br>
&gt; &gt; Sent: Tuesday, January 30, 2024 9:26 AM<br>
&gt; &gt; To: Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksandr.loktiono=
v@intel.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
&gt; &gt; Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count=
<br>
<br>
Subject should be iwl-net and you should have Fixes: tag.<br>
I also would like you to go through<br>
<a href=3D"https://docs.kernel.org/process/submitting-patches.html" rel=3D"=
noreferrer" target=3D"_blank">https://docs.kernel.org/process/submitting-pa=
tches.html</a><br>
<br>
or any other document that would prepare you for your first submission.<br>
<br>
&gt; &gt; in kernel ring buffer<br>
&gt; &gt; <br>
&gt; &gt; FWD to Alex<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; -------- Forwarded Message --------<br>
&gt; &gt; Subject: [PATCH iwl v2] i40e: print correct hw max rss count in<b=
r>
&gt; &gt; kernel ring buffer<br>
&gt; &gt; Date: Sat, 20 Jan 2024 12:58:06 +0530<br>
&gt; &gt; From: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" ta=
rget=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; &gt; To: <a href=3D"mailto:jesse.brandeburg@intel.com" target=3D"_blan=
k">jesse.brandeburg@intel.com</a>, <a href=3D"mailto:anthony.l.nguyen@intel=
.com" target=3D"_blank">anthony.l.nguyen@intel.com</a>,<br>
&gt; &gt; <a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@da=
vemloft.net</a>, <a href=3D"mailto:edumazet@google.com" target=3D"_blank">e=
dumazet@google.com</a>, <a href=3D"mailto:kuba@kernel.org" target=3D"_blank=
">kuba@kernel.org</a>,<br>
&gt; &gt; <a href=3D"mailto:pabeni@redhat.com" target=3D"_blank">pabeni@red=
hat.com</a>, <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"=
_blank">intel-wired-lan@lists.osuosl.org</a>,<br>
&gt; &gt; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netde=
v@vger.kernel.org</a>, <a href=3D"mailto:linux-kernel@vger.kernel.org" targ=
et=3D"_blank">linux-kernel@vger.kernel.org</a><br>
&gt; &gt; CC: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" targ=
et=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; &gt; <br>
&gt; &gt; pf-&gt;rss_size_max is hardcoded and always prints max rss count =
as<br>
&gt; &gt; 64.<br>
&gt; &gt; <br>
&gt; &gt; Eg:<br>
&gt; &gt;=C2=A0 =C2=A0 kernel: i40e 0000:af:00.1: User requested queue coun=
t/HW max RSS<br>
&gt; &gt; count:=C2=A0 104/64<br>
&gt; &gt; <br>
&gt; &gt; whereas=C2=A0 ethtool reports the correct value from &quot;vsi-<b=
r>
&gt; &gt; &gt;num_queue_pairs&quot;<br>
&gt; &gt; <br>
&gt; &gt; Channel parameters for eno33:<br>
&gt; &gt; Pre-set maximums:<br>
&gt; &gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; &gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; &gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; &gt; Combined:=C2=A0 =C2=A0104<br>
&gt; &gt; Current hardware settings:<br>
&gt; &gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; &gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; &gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; &gt; Combined:=C2=A0 =C2=A0104=C2=A0 &lt;-------<br>
&gt; &gt; <br>
&gt; &gt; and is misleading.<br>
&gt; &gt; <br>
&gt; &gt; Change it to vsi-&gt;num_queue_pairs<br>
&gt; <br>
&gt; Please reject this patch, it breaks driver logging.<br>
&gt; The massage clearly states that it dumps max rss queues number that f/=
w supports.<br>
<br>
...which would imply that you would be able to work with anything more<br>
than 64 queues. From a quick glance rss_size_max comes from early i40e<br>
days and if that would be the limit indeed then driver allowing 104 queues<=
br>
would be a disaster, no?<br>
<br>
&gt; <br>
&gt; Thank you<br>
&gt;=C2=A0 <br>
&gt; &gt; Signed-off-by: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmai=
l.com" target=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-<br=
>
&gt; &gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; &gt; b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; &gt; index d5519af34657..f5c1ec190f7e 100644<br>
&gt; &gt; --- a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; &gt; +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; &gt; @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_=
pf<br>
&gt; &gt; *pf, int queue_count)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_pf_config_rss=
(pf);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0dev_info(&amp;pf-&gt;pdev-&gt;dev, &quot;User =
requested queue count/HW max<br>
&gt; &gt; RSS<br>
&gt; &gt; count:=C2=A0 %d/%d\n&quot;,<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pair=
s, pf-&gt;rss_size_max);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pair=
s, vsi-&gt;num_queue_pairs);<br>
<br>
IMHO this should be vsi-&gt;alloc_queue_pairs instead.<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0return pf-&gt;alloc_rss_size;<br>
&gt; &gt;=C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0-- 2.43.0<br>
&gt; &gt; <br>
&gt; <br>
</blockquote></div>

--000000000000b370aa0613130c5a--
