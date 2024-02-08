Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA2484E4D5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 17:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E889061AD0;
	Thu,  8 Feb 2024 16:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQXk-QdyXQi6; Thu,  8 Feb 2024 16:16:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 861BE615FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707409011;
	bh=v8X/G82pFHGwxA1LxpWsSjDXLonxwYGdfcjdoJzcdGc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n+PaqMVv9BomoD5YcYvM+l06gEKUQJnvmwCtW1YaeBu47k6Sfj9XV3QOkoEP0EDGS
	 fKSH8HNAAcs4YDfErIiLagqOp34QQEt706bfFaHq7vKKnhoVQrOJI+VH942tLGfozZ
	 x+3zkwAUaO4KV57qUiJU4jvWf4qRg2slVlRVsyU63h/PF2iLh55BBdjpqIvWh9RcxG
	 Q8hQGwHKKwXS1pYoQYW2oRqiSpldCDyzFvNH4Ab7wUEgQrVPAlrlJVYnbZMysfY5hP
	 mVuat89PPaAkvRwyUFsq9xtiU89d+akzxMeRCqM66YAyAOS9CdANQ/QV2klW0LubfO
	 dnhqPdnes/Pig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 861BE615FC;
	Thu,  8 Feb 2024 16:16:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 139E71BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 16:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C89B851E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 16:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEUt9SV28iuD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 16:16:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=suresh2514@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B535584FAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B535584FAA
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B535584FAA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 16:16:47 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-60491b1fdeaso268967b3.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Feb 2024 08:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707409006; x=1708013806;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v8X/G82pFHGwxA1LxpWsSjDXLonxwYGdfcjdoJzcdGc=;
 b=voxKKWKQS6Qp2ufRl6xBlEqBSQ4ag3ExQORDCg85P624cdLR0QCEwjCsooI3dMLNFY
 VrrFkI5tpTP8XNKMk7AEeLEEvXOzDrTuGn5dgWWln4ds0MDrEijWS/dKSq0vag0K5qHB
 w3kamt6oXRcMbIeNFWUG5sCCD4KXqPHryc5DY/7iw3MH9yWsh0jShocEKL3hLH9+G23W
 w+lNmAPEYuNUCz8YxstZVrmo1G3bOwECEh82SnUa8f3m2qqUzItIZulQe29NCcIdSLUR
 zCd6+YSvmdGsBGaCX3GT6kxwCrNoRMRXTasyidyNbyOJ6s5EPJ2zRdALXuBpOW6Gv6Pb
 RGrg==
X-Gm-Message-State: AOJu0YxanxwZav6kON5mtdwQ8DwGmOKVg4YnKFWBB+Rd69DfVUjd7lxK
 HL5yB/wrUlKkcdRbweO11PypBif2ASsrkENBe6Vf3Gq2HdkUtiP5Zt37H92QaUd3FNxHv/1E3S7
 NLi2dqcIsp0wwFQ8VSPoPoeVmITA=
X-Google-Smtp-Source: AGHT+IFyhJBctylcHCy44EdgkRFMKPjoBVmzFWJGzMcC10aJfMwLED+pO12PS/t3CKv8objKdpoRDy0cUcC2M4DPAXI=
X-Received: by 2002:a81:f902:0:b0:5fc:f6d6:26fc with SMTP id
 x2-20020a81f902000000b005fcf6d626fcmr6988053ywm.52.1707409005953; Thu, 08 Feb
 2024 08:16:45 -0800 (PST)
MIME-Version: 1.0
References: <20240120072806.8554-1-suresh2514@gmail.com>
 <e524c57e-fe43-4582-bb05-c50f3e529848@intel.com>
 <SJ0PR11MB5866EAA3CBAF4E28842305D5E57D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
 <CABAyFk5E6Ga5kvPaL2u5mJNLGUN-jSZxmhQZ6BUZwEmRfrOXMw@mail.gmail.com>
 <SJ0PR11MB5866DBA283326399CE4F7EE2E5442@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866DBA283326399CE4F7EE2E5442@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: suresh ks <suresh2514@gmail.com>
Date: Thu, 8 Feb 2024 21:46:34 +0530
Message-ID: <CABAyFk5xKFQrgreb9RvodOS0G7kxHSNUiBcs2KG=S=WteuJw_Q@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: multipart/alternative; boundary="000000000000494b480610e12350"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707409006; x=1708013806; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=v8X/G82pFHGwxA1LxpWsSjDXLonxwYGdfcjdoJzcdGc=;
 b=J5jVcYwAzGNqTd1xhb4C0xIRRbCaxLHKuYzd53DF0lXTRrGj/y2h0JLLj4SsCdPyxa
 wdERtGPN3CdliIlaJmcUiZUF6+2jKxYtN9eQ+e5G9lz0nHlxjBcHp2Tk7M+p60s+kYWQ
 S4OKMwQLyjwEPINXK8bxfA92EaiWc1O1UjJRBGuQbm0R58wzjwBhezsGlboHCL8wkRZ0
 /LgLLZj8bE9NIeGaBPKA5JwTCQ3mcZG2T/wltpFxgimwjbvEjNj5vEJyw48DsrPHoCzD
 OqG9jv8i+SpZXQu6G3ZHFyW2om2xb7QY8Zov7uQ1N3oZFz19T2YSh/56gNemLCu11Uvi
 bvgQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=J5jVcYwA
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000494b480610e12350
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks.  Yes, I do feel it's a bug in i40e driver  printing this info.  See
the ethtool output from this system:

+++
Channel parameters for eno33:
Pre-set maximums:
RX:     n/a
TX:     n/a
Other:      1
Combined:   104  <-
Current hardware settings:
RX:     n/a
TX:     n/a
Other:      1
Combined:   104  <-------
+++

So I understand the maximum supported queue size is 104  But while setting
this value via ethtool, we got below message from kernel logs:

  "kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count:
 104/64".


thanks....
*Suresh KS*
suresh2514@gmail.com
91-7709100053



On Thu, Feb 8, 2024 at 6:59=E2=80=AFPM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

> Good day Suresh
>
>
>
> The message:
>
>   "kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count=
:
>  104/64".
>
>
>
> Means that h/w supports only 64ques, but user requested 104.
>
>
>
> If your OS displays maximum possible ques more than h/w supports then
> there is a bug in display routines.
>
>
>
> With the best regards
>
> Alex
>
>
>
> *From:* suresh ks <suresh2514@gmail.com>
> *Sent:* Thursday, February 8, 2024 2:14 PM
> *To:* Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> *Cc:* Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <
> anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> *Subject:* Re: [PATCH iwl v2] i40e: print correct hw max rss count in
> kernel ring buffer
>
>
>
> Hi,
>
>
>
> Thanks for checking.  Do I need to do anything to reject this patch? If
> yes, please let me know.
>
> This is first sucht experience for me.
>
>
>
>
>
> Would like to get some understanding on below kernel logging for which I
> suggested the patch.
>
>
>
> The ethtool reports maximum supported queue as 104 and when I set it, it
> takes that value also. But kernel logs:
>
>
>
>   "kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS count=
:
>  104/64".
>
>
>
> So does it meas the firmware supports only 64, but we can set 104 or
> something like that ?
>
>
>
> Is it any virtual queue set by driver as per number of CPUs ?.  What I
> observe is, system has 104 CPUs.
>
> I have another such machine  where maximum supported queue mentioned by
> ethtool is as per number of CPUs. But here again, the 'max RSS' is report=
ed
> less by kernel.
>
>
>
>
>
>
>
> thanks....
>
> *Suresh KS*
>
> suresh2514@gmail.com
>
> 91-7709100053
>
>
>
>
>
> On Tue, Jan 30, 2024 at 2:03=E2=80=AFPM Loktionov, Aleksandr <
> aleksandr.loktionov@intel.com> wrote:
>
> > -----Original Message-----
> > From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Sent: Tuesday, January 30, 2024 9:26 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count
> > in kernel ring buffer
> >
> > FWD to Alex
> >
> >
> > -------- Forwarded Message --------
> > Subject: [PATCH iwl v2] i40e: print correct hw max rss count in
> > kernel ring buffer
> > Date: Sat, 20 Jan 2024 12:58:06 +0530
> > From: Suresh Kumar <suresh2514@gmail.com>
> > To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
> > davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
> > pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
> > netdev@vger.kernel.org, linux-kernel@vger.kernel.org
> > CC: Suresh Kumar <suresh2514@gmail.com>
> >
> > pf->rss_size_max is hardcoded and always prints max rss count as
> > 64.
> >
> > Eg:
> >    kernel: i40e 0000:af:00.1: User requested queue count/HW max RSS
> > count:  104/64
> >
> > whereas  ethtool reports the correct value from "vsi-
> > >num_queue_pairs"
> >
> > Channel parameters for eno33:
> > Pre-set maximums:
> > RX:     n/a
> > TX:     n/a
> > Other:      1
> > Combined:   104
> > Current hardware settings:
> > RX:     n/a
> > TX:     n/a
> > Other:      1
> > Combined:   104  <-------
> >
> > and is misleading.
> >
> > Change it to vsi->num_queue_pairs
>
> Please reject this patch, it breaks driver logging.
> The massage clearly states that it dumps max rss queues number that f/w
> supports.
>
> Thank you
>
> > Signed-off-by: Suresh Kumar <suresh2514@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index d5519af34657..f5c1ec190f7e 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf
> > *pf, int queue_count)
> >               i40e_pf_config_rss(pf);
> >       }
> >       dev_info(&pf->pdev->dev, "User requested queue count/HW max
> > RSS
> > count:  %d/%d\n",
> > -              vsi->req_queue_pairs, pf->rss_size_max);
> > +              vsi->req_queue_pairs, vsi->num_queue_pairs);
> >       return pf->alloc_rss_size;
> >   }
> >   -- 2.43.0
> >
>
>

--000000000000494b480610e12350
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex,<div><br></div><div>Thanks.=C2=A0 Yes, I do feel i=
t&#39;s a bug in i40e driver=C2=A0 printing this info.=C2=A0 See the ethtoo=
l output from this system:</div><div><br></div><div><a class=3D"gmail_plusr=
eply" id=3D"plusReplyChip-0">+++</a><br></div><div>Channel parameters for e=
no33:<br>Pre-set maximums:<br>RX: =C2=A0 =C2=A0 n/a<br>TX: =C2=A0 =C2=A0 n/=
a<br>Other: =C2=A0 =C2=A0 =C2=A01<br>Combined: =C2=A0 104=C2=A0 &lt;-<br>Cu=
rrent hardware settings:<br>RX: =C2=A0 =C2=A0 n/a<br>TX: =C2=A0 =C2=A0 n/a<=
br>Other: =C2=A0 =C2=A0 =C2=A01<br>Combined: =C2=A0 104 =C2=A0&lt;-------</=
div><div><a class=3D"gmail_plusreply" id=3D"plusReplyChip-1">+++</a></div><=
div><br></div><div>So I understand the maximum supported=C2=A0queue size is=
 104=C2=A0 But while setting this value via ethtool, we got below message f=
rom kernel logs:</div><div><br></div><div>=C2=A0 &quot;kernel: i40e 0000:af=
:00.1: User requested queue count/HW max RSS count: =C2=A0104/64&quot;. =C2=
=A0<br><br><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><div>thanks....<br></d=
iv><b><span style=3D"color:rgb(204,0,0)">Suresh KS</span></b><br><div><span=
 style=3D"color:rgb(11,83,148)"><a href=3D"mailto:suresh2514@gmail.com" tar=
get=3D"_blank">suresh2514@gmail.com</a><br></span></div><div><span style=3D=
"color:rgb(11,83,148)">91-7709100053</span><br><br></div></div></div></div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Feb 8, 2024 at 6:59=E2=80=AFPM Loktionov, Aleksandr &lt;<=
a href=3D"mailto:aleksandr.loktionov@intel.com">aleksandr.loktionov@intel.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div class=3D"msg-4805446864821330202">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-4805446864821330202WordSection1">
<p class=3D"MsoNormal"><span>Good day Suresh<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>The message:<u></u><u></u></span></p>
<p class=3D"MsoNormal">=C2=A0 &quot;kernel: i40e 0000:af:00.1: User request=
ed queue count/HW max RSS count: =C2=A0104/64&quot;.=C2=A0=C2=A0<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span>Means that h/w supports only 64ques, but user =
requested 104.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span>If your OS displays maximum possible ques more=
 than h/w supports then there is a bug in display routines.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>With the best regards<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span>Alex<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0in 0in 0in 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> suresh ks &lt;<a href=3D"mailto:suresh2=
514@gmail.com" target=3D"_blank">suresh2514@gmail.com</a>&gt; <br>
<b>Sent:</b> Thursday, February 8, 2024 2:14 PM<br>
<b>To:</b> Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksandr.loktionov@i=
ntel.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
<b>Cc:</b> Kitszel, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@int=
el.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;; Brandeburg,=
 Jesse &lt;<a href=3D"mailto:jesse.brandeburg@intel.com" target=3D"_blank">=
jesse.brandeburg@intel.com</a>&gt;; Nguyen, Anthony L &lt;<a href=3D"mailto=
:anthony.l.nguyen@intel.com" target=3D"_blank">anthony.l.nguyen@intel.com</=
a>&gt;; <a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@dave=
mloft.net</a>; <a href=3D"mailto:edumazet@google.com" target=3D"_blank">edu=
mazet@google.com</a>; <a href=3D"mailto:kuba@kernel.org" target=3D"_blank">=
kuba@kernel.org</a>; <a href=3D"mailto:pabeni@redhat.com" target=3D"_blank"=
>pabeni@redhat.com</a>; <a href=3D"mailto:intel-wired-lan@lists.osuosl.org"=
 target=3D"_blank">intel-wired-lan@lists.osuosl.org</a>;
 <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vger.ke=
rnel.org</a>; <a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_bl=
ank">linux-kernel@vger.kernel.org</a><br>
<b>Subject:</b> Re: [PATCH iwl v2] i40e: print correct hw max rss count in =
kernel ring buffer<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks for checking.=C2=A0 Do I need to do anything =
to reject this patch? If yes, please let me know.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">This is first sucht experience for me.<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Would like to get some understanding on below=C2=A0k=
ernel logging for which I suggested the patch.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The ethtool reports maximum supported queue as 104 a=
nd when I set it, it takes that value also. But kernel logs:<u></u><u></u><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 &quot;kernel: i40e 0000:af:00.1: User request=
ed queue count/HW max RSS count: =C2=A0104/64&quot;.=C2=A0=C2=A0<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">So does it meas the firmware supports only 64, but w=
e can set 104 or something like that ?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Is it any virtual queue set by driver as per number =
of CPUs ?.=C2=A0 What I observe is, system has 104 CPUs.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have another such machine=C2=A0 where maximum supp=
orted queue mentioned by ethtool is as per number of CPUs. But here again, =
the &#39;max RSS&#39; is reported less by kernel.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">thanks....<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><b><span style=3D"color:rgb(204,0,0)">Suresh KS</spa=
n></b><u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(11,83,148)"><a href=3D"mail=
to:suresh2514@gmail.com" target=3D"_blank">suresh2514@gmail.com</a></span><=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(11,83,148)">91-7709100053</span><u></u><u></u></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jan 30, 2024 at 2:03=E2=80=AFPM Loktionov, A=
leksandr &lt;<a href=3D"mailto:aleksandr.loktionov@intel.com" target=3D"_bl=
ank">aleksandr.loktionov@intel.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">&gt; -----Original Mess=
age-----<br>
&gt; From: Kitszel, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@int=
el.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;<br>
&gt; Sent: Tuesday, January 30, 2024 9:26 AM<br>
&gt; To: Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksandr.loktionov@int=
el.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
&gt; Subject: Fwd: [PATCH iwl v2] i40e: print correct hw max rss count<br>
&gt; in kernel ring buffer<br>
&gt; <br>
&gt; FWD to Alex<br>
&gt; <br>
&gt; <br>
&gt; -------- Forwarded Message --------<br>
&gt; Subject: [PATCH iwl v2] i40e: print correct hw max rss count in<br>
&gt; kernel ring buffer<br>
&gt; Date: Sat, 20 Jan 2024 12:58:06 +0530<br>
&gt; From: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" target=
=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; To: <a href=3D"mailto:jesse.brandeburg@intel.com" target=3D"_blank">je=
sse.brandeburg@intel.com</a>,
<a href=3D"mailto:anthony.l.nguyen@intel.com" target=3D"_blank">anthony.l.n=
guyen@intel.com</a>,<br>
&gt; <a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@davemlo=
ft.net</a>, <a href=3D"mailto:edumazet@google.com" target=3D"_blank">
edumazet@google.com</a>, <a href=3D"mailto:kuba@kernel.org" target=3D"_blan=
k">kuba@kernel.org</a>,<br>
&gt; <a href=3D"mailto:pabeni@redhat.com" target=3D"_blank">pabeni@redhat.c=
om</a>, <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"_blan=
k">
intel-wired-lan@lists.osuosl.org</a>,<br>
&gt; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev@vge=
r.kernel.org</a>,
<a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blank">linux-ker=
nel@vger.kernel.org</a><br>
&gt; CC: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com" target=3D=
"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; <br>
&gt; pf-&gt;rss_size_max is hardcoded and always prints max rss count as<br=
>
&gt; 64.<br>
&gt; <br>
&gt; Eg:<br>
&gt;=C2=A0 =C2=A0 kernel: i40e 0000:af:00.1: User requested queue count/HW =
max RSS<br>
&gt; count:=C2=A0 104/64<br>
&gt; <br>
&gt; whereas=C2=A0 ethtool reports the correct value from &quot;vsi-<br>
&gt; &gt;num_queue_pairs&quot;<br>
&gt; <br>
&gt; Channel parameters for eno33:<br>
&gt; Pre-set maximums:<br>
&gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; Combined:=C2=A0 =C2=A0104<br>
&gt; Current hardware settings:<br>
&gt; RX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; TX:=C2=A0 =C2=A0 =C2=A0n/a<br>
&gt; Other:=C2=A0 =C2=A0 =C2=A0 1<br>
&gt; Combined:=C2=A0 =C2=A0104=C2=A0 &lt;-------<br>
&gt; <br>
&gt; and is misleading.<br>
&gt; <br>
&gt; Change it to vsi-&gt;num_queue_pairs<br>
<br>
Please reject this patch, it breaks driver logging.<br>
The massage clearly states that it dumps max rss queues number that f/w sup=
ports.<br>
<br>
Thank you<br>
<br>
&gt; Signed-off-by: Suresh Kumar &lt;<a href=3D"mailto:suresh2514@gmail.com=
" target=3D"_blank">suresh2514@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; index d5519af34657..f5c1ec190f7e 100644<br>
&gt; --- a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
&gt; @@ -12524,7 +12524,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf<br=
>
&gt; *pf, int queue_count)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_pf_config_r=
ss(pf);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_info(&amp;pf-&gt;pdev-&gt;dev, &quot;Use=
r requested queue count/HW max<br>
&gt; RSS<br>
&gt; count:=C2=A0 %d/%d\n&quot;,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pa=
irs, pf-&gt;rss_size_max);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vsi-&gt;req_queue_pa=
irs, vsi-&gt;num_queue_pairs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return pf-&gt;alloc_rss_size;<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0-- 2.43.0<br>
&gt; <u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--000000000000494b480610e12350--
