Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 135F4AE8274
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 14:17:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7495860F13;
	Wed, 25 Jun 2025 12:17:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNbVJl8INyn6; Wed, 25 Jun 2025 12:17:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63E9060F56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750853864;
	bh=s+hFhmgUx0zYbNhIYjSiNNLrvkE6WXQpRFNEnuIiNBs=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aPbO87/Vii8GFmB6uH79cIrN/g+3KQZ46r2qlfPXohpTD6JnPO8Bx6KqGvXjI9AJI
	 oqolwTIwE7rsi2Y1/ggP8BAAyROkWQtoxGRWlThO2onS04SmAN4/Db/7RedvnNeHD/
	 wqzRXrQsvIlxgWiykmGiFWcyydGhnxH50YMRlTRxURgyDxN5LWbs3D9RO7NCsyJBr8
	 fXknOy8GEk6A19UyJ+x9bqXsEMxuh86V5C2RGHIS9KGrK3ANmojdMDYwt584CMK5E1
	 dA7Bf3cWLPPt2AELuGPy9Kbe+AvSz965aR7fn/U6GgkioMi6UvRLa41xGGe1HICyvE
	 aOGiHwUN5Ry5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63E9060F56;
	Wed, 25 Jun 2025 12:17:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D971D43F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAEAC41D75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:17:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AkNzbJa4TNL3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 12:17:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EBC0241D33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBC0241D33
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBC0241D33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:17:41 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-b31f0ef5f7aso3451941a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 05:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750853861; x=1751458661;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=s+hFhmgUx0zYbNhIYjSiNNLrvkE6WXQpRFNEnuIiNBs=;
 b=YvTPZMNViRVzMjbh1cIsKdc1EvQweUuFzaAMvSPsiTj8ZGpjZIzpDNsueU0YBUM4Ae
 JG04aPessRkEk2q9vOxFQsHi4guTCrkc51lJ1eWLyTAjDERXM8J1T89CWHqGdVYFd07F
 wjWnqkaIwUaPI33JvUcw0ZwSRqC9JpA/LB25jXVcpcFUh5jhqet9r4YLGPuJQaroQw0I
 ewnC8Y7rGVbNaE2l0KVhunYjKLkFZFfqtNBLAItBA1kesxjOzPaS6Ndp5a94EEY1WhTr
 m8HTn/Gb88KX1KGQcimcHjfC2X1pqPXrO3D5GvFVadi3BAs01LeBjJXkJrYSkpaEUiAk
 Uoxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8BsaF+WT+bAHv0B3EAPgMhrsa0aeWL4v6p6o3fRO6KUUCA8VyW0Dw0dRWOwwq32cn8Br6wvck9CpX46y6G3I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwaOeiK303OfVUST5DllA/paQT8T6ToyNEJD+BKexZyrEotORRW
 nCQfCXZqTSzdyMZYhYmX2G02eeOWSQAE+bVKtV77HSfQMIoKIELyYwzzGA/1HI3rEpMumSn41XO
 hQthu8oAFqU3T8LFXb1J9DzLZO17YhHxwKLp4bapV
X-Gm-Gg: ASbGncsVP4hKG5cYg9cpKUZz9YN9elF0q7uKB69h07u5tvtBRxdKoyYCMJv4ICwHBqW
 bZyYLX6oV9FGavRnJY4pkPLlP7NV/Fo25Qpf0mw1JTcLyf4Ak+2f8r+AfT2ZOAQxUwl/B7/MrRa
 wI8F6yqzmvpcBGoIsSuBKrtV6TDwXnB1MxfTMD6Xj4N2kM
X-Google-Smtp-Source: AGHT+IGSMum1NpM+o5oXSfTYG736NVtOhHv2o1NSDJa1J7+rjjMZ3OpsFhE//1eTT+0aKIkT5gtIP68I8FiFo7rKjHA=
X-Received: by 2002:a17:90b:3b8f:b0:311:e8cc:4248 with SMTP id
 98e67ed59e1d1-315f26d29ffmr4751513a91.33.1750853861117; Wed, 25 Jun 2025
 05:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
In-Reply-To: <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 25 Jun 2025 14:17:10 +0200
X-Gm-Features: Ac12FXxcafNc16B4MY0Jw6mCYBOG3Q5U04Tq2kqHmyZv2ov1OJaeMHc0kAZTAIw
Message-ID: <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Damato,
 Joe" <jdamato@fastly.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Dumazet,
 Eric" <edumazet@google.com>, 
 "Zaki, Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>
Cc: Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: multipart/alternative; boundary="000000000000722bf20638646e37"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1750853861; x=1751458661; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=s+hFhmgUx0zYbNhIYjSiNNLrvkE6WXQpRFNEnuIiNBs=;
 b=KVgI/ybvv3OLDLHgNRtDMLvLA+V0s6qLTlgGKnNHoRt1DwEgkBtKQPVm75RMPEyZ1x
 X4eXSOU1WQA5/MAvIyfMoyqlqGA6pc+iYzoLGKhhkMIEQqlCsgxSvJsrmMPml4g8FxpD
 DgcFSU2FG6a181sPVK97RaZ1bGiGsWkXuqO0M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=KVgI/ybv
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--000000000000722bf20638646e37
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

We are still facing the memory issue with Intel 810 NICs (even on latest
6.15.y).

Our current stabilization and solution is to move everything to a new
INTEL-FREE server and get rid of last Intel sights there (after Intel's CPU
vulnerabilities fuckups NICs are next step).

Any help welcomed,
Jaroslav P.



st 4. 6. 2025 v 10:42 odes=C3=ADlatel Jaroslav Pulchart <
jaroslav.pulchart@gooddata.com> napsal:

> >
> > =C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel Keller, Jacob E
> > <jacob.e.keller@intel.com> napsal:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Jakub Kicinski <kuba@kernel.org>
> > > > Sent: Wednesday, April 16, 2025 5:13 PM
> > > > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > > > Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>; Kitszel,
> Przemyslaw
> > > > <przemyslaw.kitszel@intel.com>; Damato, Joe <jdamato@fastly.com>;
> intel-wired-
> > > > lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L
> > > > <anthony.l.nguyen@intel.com>; Igor Raits <igor@gooddata.com>;
> Daniel Secik
> > > > <daniel.secik@gooddata.com>; Zdenek Pesek <zdenek.pesek@gooddata.co=
m
> >;
> > > > Dumazet, Eric <edumazet@google.com>; Martin Karsten
> > > > <mkarsten@uwaterloo.ca>; Zaki, Ahmed <ahmed.zaki@intel.com>;
> Czapnik,
> > > > Lukasz <lukasz.czapnik@intel.com>; Michal Swiatkowski
> > > > <michal.swiatkowski@linux.intel.com>
> > > > Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes
> with ICE
> > > > driver after upgrade to 6.13.y (regression in commit 492a044508ad)
> > > >
> > > > On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> > > > > > > And you're reverting just and exactly 492a044508ad13 ?
> > > > > > > The memory for persistent config is allocated in
> alloc_netdev_mqs()
> > > > > > > unconditionally. I'm lost as to how this commit could make an=
y
> > > > > > > difference :(
> > > > > >
> > > > > > Yes, reverted the 492a044508ad13.
> > > > >
> > > > > Struct napi_config *is* 1056 bytes
> > > >
> > > > You're probably looking at 6.15-rcX kernels. Yes, the affinity mask
> > > > can be large depending on the kernel config. But report is for 6.13=
,
> > > > AFAIU. In 6.13 and 6.14 napi_config was tiny.
> > >
> > > Regardless, it should still be ~64KB even in that case which is a far
> cry from eating all available memory. Something else must be going on....
> > >
> > > Thanks,
> > > Jake
> >
> > Hello
> >
> > Some observation, this "problem" still exists with the latest 6.14.y
> > and there must be multiple issues, the memory utilization is slowly
> > going down, from 3GB to 100MB in 10-20days. at home NUMA nodes where
> > intel x810 NIC are (looks like some memory leak related to
> > networking).
> >
> > So without the revert the kawadX usage is observed asap like till
> > 1-2d, with revert of mentioned commit kswadX starts to consume
> > resources later like in ~10d-20d later. It is almost impossible to use
> > servers with Intel X810 cards (ice driver) with recent linux kernels.
> >
> > Were you able to reproduce the memory problems in your testbed?
> >
> > Best,
> > Jaroslav
>
> Hello
>
> I deployed linux 6.15.0 to our servers 7d ago and observed the
> behaviour of memory utilization of NUMA home nodes of Intel X810
> 1/ there is no need to revert the commit as before,
> 2/ the memory is continuously consumed (like memory leak),
> see attached "7d_memory_usage_per_numa_linux6.15.0.png" screenshot 8x
> numa nodes, (NUMA0 + NUMA1 are local for X810 nics). BTW: We do not
> see this memory utilization pattern on server s using Broadcom
> Netxtreme-E NICs
>


--=20
Jaroslav Pulchart
Sr. Principal SW Engineer
GoodData

--000000000000722bf20638646e37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>We are still facing the memory=C2=
=A0issue with Intel 810 NICs (even on latest 6.15.y).</div><div><br></div><=
div>Our current stabilization and solution is to move everything to a new I=
NTEL-FREE server and get rid of last Intel sights there (after Intel&#39;s =
CPU vulnerabilities fuckups NICs are next step).</div><div><br></div><div>A=
ny help welcomed,</div><div>Jaroslav P.</div><div><br></div><div><br></div>=
</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr"=
 class=3D"gmail_attr">st 4. 6. 2025 v=C2=A010:42 odes=C3=ADlatel Jaroslav P=
ulchart &lt;<a href=3D"mailto:jaroslav.pulchart@gooddata.com">jaroslav.pulc=
hart@gooddata.com</a>&gt; napsal:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">&gt;<br>
&gt; =C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel Keller, Jacob E<br>
&gt; &lt;<a href=3D"mailto:jacob.e.keller@intel.com" target=3D"_blank">jaco=
b.e.keller@intel.com</a>&gt; napsal:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &gt; -----Original Message-----<br>
&gt; &gt; &gt; From: Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" =
target=3D"_blank">kuba@kernel.org</a>&gt;<br>
&gt; &gt; &gt; Sent: Wednesday, April 16, 2025 5:13 PM<br>
&gt; &gt; &gt; To: Keller, Jacob E &lt;<a href=3D"mailto:jacob.e.keller@int=
el.com" target=3D"_blank">jacob.e.keller@intel.com</a>&gt;<br>
&gt; &gt; &gt; Cc: Jaroslav Pulchart &lt;<a href=3D"mailto:jaroslav.pulchar=
t@gooddata.com" target=3D"_blank">jaroslav.pulchart@gooddata.com</a>&gt;; K=
itszel, Przemyslaw<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=
=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;; Damato, Joe &lt;<a href=
=3D"mailto:jdamato@fastly.com" target=3D"_blank">jdamato@fastly.com</a>&gt;=
; intel-wired-<br>
&gt; &gt; &gt; <a href=3D"mailto:lan@lists.osuosl.org" target=3D"_blank">la=
n@lists.osuosl.org</a>; <a href=3D"mailto:netdev@vger.kernel.org" target=3D=
"_blank">netdev@vger.kernel.org</a>; Nguyen, Anthony L<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com" target=3D"=
_blank">anthony.l.nguyen@intel.com</a>&gt;; Igor Raits &lt;<a href=3D"mailt=
o:igor@gooddata.com" target=3D"_blank">igor@gooddata.com</a>&gt;; Daniel Se=
cik<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:daniel.secik@gooddata.com" target=3D"_=
blank">daniel.secik@gooddata.com</a>&gt;; Zdenek Pesek &lt;<a href=3D"mailt=
o:zdenek.pesek@gooddata.com" target=3D"_blank">zdenek.pesek@gooddata.com</a=
>&gt;;<br>
&gt; &gt; &gt; Dumazet, Eric &lt;<a href=3D"mailto:edumazet@google.com" tar=
get=3D"_blank">edumazet@google.com</a>&gt;; Martin Karsten<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:mkarsten@uwaterloo.ca" target=3D"_blan=
k">mkarsten@uwaterloo.ca</a>&gt;; Zaki, Ahmed &lt;<a href=3D"mailto:ahmed.z=
aki@intel.com" target=3D"_blank">ahmed.zaki@intel.com</a>&gt;; Czapnik,<br>
&gt; &gt; &gt; Lukasz &lt;<a href=3D"mailto:lukasz.czapnik@intel.com" targe=
t=3D"_blank">lukasz.czapnik@intel.com</a>&gt;; Michal Swiatkowski<br>
&gt; &gt; &gt; &lt;<a href=3D"mailto:michal.swiatkowski@linux.intel.com" ta=
rget=3D"_blank">michal.swiatkowski@linux.intel.com</a>&gt;<br>
&gt; &gt; &gt; Subject: Re: [Intel-wired-lan] Increased memory usage on NUM=
A nodes with ICE<br>
&gt; &gt; &gt; driver after upgrade to 6.13.y (regression in commit 492a044=
508ad)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:<br=
>
&gt; &gt; &gt; &gt; &gt; &gt; And you&#39;re reverting just and exactly 492=
a044508ad13 ?<br>
&gt; &gt; &gt; &gt; &gt; &gt; The memory for persistent config is allocated=
 in alloc_netdev_mqs()<br>
&gt; &gt; &gt; &gt; &gt; &gt; unconditionally. I&#39;m lost as to how this =
commit could make any<br>
&gt; &gt; &gt; &gt; &gt; &gt; difference :(<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Yes, reverted the 492a044508ad13.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Struct napi_config *is* 1056 bytes<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; You&#39;re probably looking at 6.15-rcX kernels. Yes, the af=
finity mask<br>
&gt; &gt; &gt; can be large depending on the kernel config. But report is f=
or 6.13,<br>
&gt; &gt; &gt; AFAIU. In 6.13 and 6.14 napi_config was tiny.<br>
&gt; &gt;<br>
&gt; &gt; Regardless, it should still be ~64KB even in that case which is a=
 far cry from eating all available memory. Something else must be going on.=
...<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Jake<br>
&gt;<br>
&gt; Hello<br>
&gt;<br>
&gt; Some observation, this &quot;problem&quot; still exists with the lates=
t 6.14.y<br>
&gt; and there must be multiple issues, the memory utilization is slowly<br=
>
&gt; going down, from 3GB to 100MB in 10-20days. at home NUMA nodes where<b=
r>
&gt; intel x810 NIC are (looks like some memory leak related to<br>
&gt; networking).<br>
&gt;<br>
&gt; So without the revert the kawadX usage is observed asap like till<br>
&gt; 1-2d, with revert of mentioned commit kswadX starts to consume<br>
&gt; resources later like in ~10d-20d later. It is almost impossible to use=
<br>
&gt; servers with Intel X810 cards (ice driver) with recent linux kernels.<=
br>
&gt;<br>
&gt; Were you able to reproduce the memory problems in your testbed?<br>
&gt;<br>
&gt; Best,<br>
&gt; Jaroslav<br>
<br>
Hello<br>
<br>
I deployed linux 6.15.0 to our servers 7d ago and observed the<br>
behaviour of memory utilization of NUMA home nodes of Intel X810<br>
1/ there is no need to revert the commit as before,<br>
2/ the memory is continuously consumed (like memory leak),<br>
see attached &quot;7d_memory_usage_per_numa_linux6.15.0.png&quot; screensho=
t 8x<br>
numa nodes, (NUMA0 + NUMA1 are local for X810 nics). BTW: We do not<br>
see this memory utilization pattern on server s using Broadcom<br>
Netxtreme-E NICs<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Jaro=
slav Pulchart<br></div><div dir=3D"ltr">Sr. Principal SW Engineer<br>GoodDa=
ta</div></div></div></div></div></div>

--000000000000722bf20638646e37--
