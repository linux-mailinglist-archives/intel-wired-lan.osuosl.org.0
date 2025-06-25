Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAE2AE8BBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 19:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE08E613FD;
	Wed, 25 Jun 2025 17:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sUeeHDtcqLKz; Wed, 25 Jun 2025 17:51:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A993C61482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750873899;
	bh=DM8uDDXVONeM4+1flxo3OVbHzmBVFixgfkIdE4t8FgY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vYrEtXbBCJXA7/CvTAh3Wj9kLC09Com4AiTTft4G6uYPo2JDlxF4g5nLLqZX5VPJN
	 Aw4cqAAjlE3rM3Ygq/MSTK0LeqqKUFZMR+x4GglH8aXH3BdkdBDsITgZkQJn0J4HJs
	 8Q+hZQXVvnqBwpRI6NnhtkZc+QjNaRpHh2iu9J7+oruSrybjZmw0uscbgGwfyolw6J
	 hDQYDoxrgCIBZNJcFqQvLzZxnOt+3eaRx9FiiLUe1GcngRfM+hJvKmAC2WSbDZkLn2
	 GjOCdZ0CBeeiUNI9dy1t+FoQj9y5w/g2phVoU3XRuy9/bO7TOozrFc84xFUG6s4o69
	 +zh3U1XC71DoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A993C61482;
	Wed, 25 Jun 2025 17:51:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E20A643F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DED3E60F79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUJcA-HOyvN6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 17:51:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62a; helo=mail-ej1-x62a.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7259760F39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7259760F39
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7259760F39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:51:36 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-ae0ccfd5ca5so32640266b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 10:51:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750873894; x=1751478694;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DM8uDDXVONeM4+1flxo3OVbHzmBVFixgfkIdE4t8FgY=;
 b=er3QLmNHTktSeKkLbO8jGx/sqTmK+nQwCOqBw/xIkyR8NkcE8FSP+xAUqsLvwDlZmu
 kbbyuiHFSpmPvEGoVxhoYFKmlHO9511iNsNTHcWQKq225E04Wty0AgkLhHoMyv2K+ysa
 +Xz8Z9rhWLYN79/zHK0RHk6BUoPRwp7RNjnSAERjsr2eDo/f+oeLasPbemN8sOpZCM5o
 4Y7+n7ZcK2RCfNzqeo+oOGaQYXFK6Ce9UZvf0FfNfVgONERowqcnzDUBatSpczv4iyjj
 qFYJvO3SBXBZDhBEEnejeDoVjxdo9i99mdYACIWwATXbF/IFD4YbH5nLPXf+/QJgViBS
 7luQ==
X-Gm-Message-State: AOJu0YymDoIPaTWMPZ/iYo0pC0f/U16RPSC7Lne7E4apuiTOdzIoRa9D
 jc5zPBU/NHhA8+ZfDn3yYmQA5MAWXqBoxjIf266W5sP1F6ZLHekdQZIwYsB3ecZclFAhgntFPn/
 TCKA/ekA9hMMkJhhkpAXa/oXNvVnqRv1hhPHkOnE1
X-Gm-Gg: ASbGnctBOdLaWNzQc9ufutpR/GRfcMiTQEbr7s8JAr73VV0gtQkFLrmhmOGbK8+snhv
 dp0DAn1qEP83tYo1J78K67wSki+sI4tD7kJZr7FhpTD5CLQ+XIlD0cEzOG57IhnlJHwX6uQGpUr
 pLdjjMqMD/hKI/Vm6lVHInmbDuBkh0Pd6UnQzePWH/fDh4
X-Google-Smtp-Source: AGHT+IFqgRli2vq6j3ouuhZLNMpD+zeclUnbg0Pig6lolfGT2yVjNgH/wG3SzOyQTzxt58G5wv5b3XA3Qs2X3F4BF5s=
X-Received: by 2002:a17:906:6a04:b0:ad8:9b5d:2c1f with SMTP id
 a640c23a62f3a-ae0bef49e3amr387521666b.50.1750873894113; Wed, 25 Jun 2025
 10:51:34 -0700 (PDT)
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
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
In-Reply-To: <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 25 Jun 2025 19:51:08 +0200
X-Gm-Features: Ac12FXxu8nYyktft8fhjBFGK8BEtiJdHCkR-YlialEvhQXqtIRAmJ2_VyK5JuKE
Message-ID: <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Dumazet,
 Eric" <edumazet@google.com>, 
 "Zaki, Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, 
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: multipart/alternative; boundary="00000000000081714b063869186b"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1750873894; x=1751478694; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=DM8uDDXVONeM4+1flxo3OVbHzmBVFixgfkIdE4t8FgY=;
 b=Qx9roGSbgR7/8w0S74EXHaujFHCfzcbUmTrrMM+a7dTnW2yzK2kduTeg6P97BZygfP
 celz0Tw389JTlepC0YJqB5ituHmQO5DGhnPElbm9snb3f/QWXSFvMg1N3st0pXDTSe2+
 VWgcuPJmjaNF71F5N8LZUn89sw1u0/KreE1wI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=Qx9roGSb
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

--00000000000081714b063869186b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great, please send me a link to the related patch set. I can apply them in
our kernel build and try them ASAP!



st 25. 6. 2025 v 16:03 odes=C3=ADlatel Przemek Kitszel <
przemyslaw.kitszel@intel.com> napsal:

> On 6/25/25 14:17, Jaroslav Pulchart wrote:
> > Hello
> >
> > We are still facing the memory issue with Intel 810 NICs (even on lates=
t
> > 6.15.y).
> >
> > Our current stabilization and solution is to move everything to a new
> > INTEL-FREE server and get rid of last Intel sights there (after Intel's
> > CPU vulnerabilities fuckups NICs are next step).
> >
> > Any help welcomed,
> > Jaroslav P.
> >
> >
>
> Thank you for urging us, I can understand the frustration.
>
> We have identified some (unrelated) memory leaks, will soon ship fixes.
> And, as there were no clear issue with any commit/version you have
> posted to be a culprit, there is a chance that our random findings could
> help. Anyway going to zero kmemleak reports is good in itself, that is
> a good start.
>
> Will ask my VAL too to increase efforts in this area too.
>
> Przemek
>
> >
> > st 4. 6. 2025 v 10:42 odes=C3=ADlatel Jaroslav Pulchart
> > <jaroslav.pulchart@gooddata.com <mailto:jaroslav.pulchart@gooddata.com>=
>
>
> > napsal:
> >
> >      >
> >      > =C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel Keller, Jacob E
> >      > <jacob.e.keller@intel.com <mailto:jacob.e.keller@intel.com>>
> napsal:
> >      > >
> >      > >
> >      > >
> >      > > > -----Original Message-----
> >      > > > From: Jakub Kicinski <kuba@kernel.org <mailto:kuba@kernel.or=
g
> >>
> >      > > > Sent: Wednesday, April 16, 2025 5:13 PM
> >      > > > To: Keller, Jacob E <jacob.e.keller@intel.com
> >     <mailto:jacob.e.keller@intel.com>>
> >      > > > Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com
> >     <mailto:jaroslav.pulchart@gooddata.com>>; Kitszel, Przemyslaw
> >      > > > <przemyslaw.kitszel@intel.com
> >     <mailto:przemyslaw.kitszel@intel.com>>; Damato, Joe
> >     <jdamato@fastly.com <mailto:jdamato@fastly.com>>; intel-wired-
> >      > > > lan@lists.osuosl.org <mailto:lan@lists.osuosl.org>;
> >     netdev@vger.kernel.org <mailto:netdev@vger.kernel.org>; Nguyen,
> >     Anthony L
> >      > > > <anthony.l.nguyen@intel.com
> >     <mailto:anthony.l.nguyen@intel.com>>; Igor Raits <igor@gooddata.com
> >     <mailto:igor@gooddata.com>>; Daniel Secik
> >      > > > <daniel.secik@gooddata.com
> >     <mailto:daniel.secik@gooddata.com>>; Zdenek Pesek
> >     <zdenek.pesek@gooddata.com <mailto:zdenek.pesek@gooddata.com>>;
> >      > > > Dumazet, Eric <edumazet@google.com
> >     <mailto:edumazet@google.com>>; Martin Karsten
> >      > > > <mkarsten@uwaterloo.ca <mailto:mkarsten@uwaterloo.ca>>; Zaki=
,
> >     Ahmed <ahmed.zaki@intel.com <mailto:ahmed.zaki@intel.com>>; Czapnik=
,
> >      > > > Lukasz <lukasz.czapnik@intel.com
> >     <mailto:lukasz.czapnik@intel.com>>; Michal Swiatkowski
> >      > > > <michal.swiatkowski@linux.intel.com
> >     <mailto:michal.swiatkowski@linux.intel.com>>
> >      > > > Subject: Re: [Intel-wired-lan] Increased memory usage on NUM=
A
> >     nodes with ICE
> >      > > > driver after upgrade to 6.13.y (regression in commit
> >     492a044508ad)
> >      > > >
> >      > > > On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> >      > > > > > > And you're reverting just and exactly 492a044508ad13 ?
> >      > > > > > > The memory for persistent config is allocated in
> >     alloc_netdev_mqs()
> >      > > > > > > unconditionally. I'm lost as to how this commit could
> >     make any
> >      > > > > > > difference :(
> >      > > > > >
> >      > > > > > Yes, reverted the 492a044508ad13.
> >      > > > >
> >      > > > > Struct napi_config *is* 1056 bytes
> >      > > >
> >      > > > You're probably looking at 6.15-rcX kernels. Yes, the
> >     affinity mask
> >      > > > can be large depending on the kernel config. But report is
> >     for 6.13,
> >      > > > AFAIU. In 6.13 and 6.14 napi_config was tiny.
> >      > >
> >      > > Regardless, it should still be ~64KB even in that case which i=
s
> >     a far cry from eating all available memory. Something else must be
> >     going on....
> >      > >
> >      > > Thanks,
> >      > > Jake
> >      >
> >      > Hello
> >      >
> >      > Some observation, this "problem" still exists with the latest
> 6.14.y
> >      > and there must be multiple issues, the memory utilization is
> slowly
> >      > going down, from 3GB to 100MB in 10-20days. at home NUMA nodes
> where
> >      > intel x810 NIC are (looks like some memory leak related to
> >      > networking).
> >      >
> >      > So without the revert the kawadX usage is observed asap like til=
l
> >      > 1-2d, with revert of mentioned commit kswadX starts to consume
> >      > resources later like in ~10d-20d later. It is almost impossible
> >     to use
> >      > servers with Intel X810 cards (ice driver) with recent linux
> kernels.
> >      >
> >      > Were you able to reproduce the memory problems in your testbed?
> >      >
> >      > Best,
> >      > Jaroslav
> >
> >     Hello
> >
> >     I deployed linux 6.15.0 to our servers 7d ago and observed the
> >     behaviour of memory utilization of NUMA home nodes of Intel X810
> >     1/ there is no need to revert the commit as before,
> >     2/ the memory is continuously consumed (like memory leak),
> >     see attached "7d_memory_usage_per_numa_linux6.15.0.png" screenshot =
8x
> >     numa nodes, (NUMA0 + NUMA1 are local for X810 nics). BTW: We do not
> >     see this memory utilization pattern on server s using Broadcom
> >     Netxtreme-E NICs
> >
> >
> >
> > --
> > Jaroslav Pulchart
> > Sr. Principal SW Engineer
> > GoodData
>
>

--=20
Jaroslav Pulchart
Sr. Principal SW Engineer
GoodData

--00000000000081714b063869186b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, please send me a link to the related patch set. I c=
an apply them in our kernel build and try them ASAP!<div><div><br></div><di=
v><br></div></div></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">st 25. 6. 2025 v=C2=A016:03 odes=C3=
=ADlatel Przemek Kitszel &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com=
">przemyslaw.kitszel@intel.com</a>&gt; napsal:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 6/25/25 14:17, Jaroslav Pulchart wrote:=
<br>
&gt; Hello<br>
&gt; <br>
&gt; We are still facing the memory=C2=A0issue with Intel 810 NICs (even on=
 latest <br>
&gt; 6.15.y).<br>
&gt; <br>
&gt; Our current stabilization and solution is to move everything to a new =
<br>
&gt; INTEL-FREE server and get rid of last Intel sights there (after Intel&=
#39;s <br>
&gt; CPU vulnerabilities fuckups NICs are next step).<br>
&gt; <br>
&gt; Any help welcomed,<br>
&gt; Jaroslav P.<br>
&gt; <br>
&gt; <br>
<br>
Thank you for urging us, I can understand the frustration.<br>
<br>
We have identified some (unrelated) memory leaks, will soon ship fixes.<br>
And, as there were no clear issue with any commit/version you have<br>
posted to be a culprit, there is a chance that our random findings could<br=
>
help. Anyway going to zero kmemleak reports is good in itself, that is<br>
a good start.<br>
<br>
Will ask my VAL too to increase efforts in this area too.<br>
<br>
Przemek<br>
<br>
&gt; <br>
&gt; st 4. 6. 2025 v=C2=A010:42 odes=C3=ADlatel Jaroslav Pulchart <br>
&gt; &lt;<a href=3D"mailto:jaroslav.pulchart@gooddata.com" target=3D"_blank=
">jaroslav.pulchart@gooddata.com</a> &lt;mailto:<a href=3D"mailto:jaroslav.=
pulchart@gooddata.com" target=3D"_blank">jaroslav.pulchart@gooddata.com</a>=
&gt;&gt; <br>
&gt; napsal:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; =C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel K=
eller, Jacob E<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &lt;<a href=3D"mailto:jacob.e.keller@intel.co=
m" target=3D"_blank">jacob.e.keller@intel.com</a> &lt;mailto:<a href=3D"mai=
lto:jacob.e.keller@intel.com" target=3D"_blank">jacob.e.keller@intel.com</a=
>&gt;&gt; napsal:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; -----Original Message-----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; From: Jakub Kicinski &lt;<a href=3D=
"mailto:kuba@kernel.org" target=3D"_blank">kuba@kernel.org</a> &lt;mailto:<=
a href=3D"mailto:kuba@kernel.org" target=3D"_blank">kuba@kernel.org</a>&gt;=
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Sent: Wednesday, April 16, 2025 5:1=
3 PM<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; To: Keller, Jacob E &lt;<a href=3D"=
mailto:jacob.e.keller@intel.com" target=3D"_blank">jacob.e.keller@intel.com=
</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:jacob.e.keller@intel.c=
om" target=3D"_blank">jacob.e.keller@intel.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Cc: Jaroslav Pulchart &lt;<a href=
=3D"mailto:jaroslav.pulchart@gooddata.com" target=3D"_blank">jaroslav.pulch=
art@gooddata.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:jaroslav.pulchart@good=
data.com" target=3D"_blank">jaroslav.pulchart@gooddata.com</a>&gt;&gt;; Kit=
szel, Przemyslaw<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &lt;<a href=3D"mailto:przemyslaw.ki=
tszel@intel.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:przemyslaw.kitszel@int=
el.com" target=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;&gt;; Damato,=
 Joe<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:jdamato@fastly.com" target=3D=
"_blank">jdamato@fastly.com</a> &lt;mailto:<a href=3D"mailto:jdamato@fastly=
.com" target=3D"_blank">jdamato@fastly.com</a>&gt;&gt;; intel-wired-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; <a href=3D"mailto:lan@lists.osuosl.=
org" target=3D"_blank">lan@lists.osuosl.org</a> &lt;mailto:<a href=3D"mailt=
o:lan@lists.osuosl.org" target=3D"_blank">lan@lists.osuosl.org</a>&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:netdev@vger.kernel.org" target=3D=
"_blank">netdev@vger.kernel.org</a> &lt;mailto:<a href=3D"mailto:netdev@vge=
r.kernel.org" target=3D"_blank">netdev@vger.kernel.org</a>&gt;; Nguyen,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Anthony L<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &lt;<a href=3D"mailto:anthony.l.ngu=
yen@intel.com" target=3D"_blank">anthony.l.nguyen@intel.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:anthony.l.nguyen@intel=
.com" target=3D"_blank">anthony.l.nguyen@intel.com</a>&gt;&gt;; Igor Raits =
&lt;<a href=3D"mailto:igor@gooddata.com" target=3D"_blank">igor@gooddata.co=
m</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:igor@gooddata.com" tar=
get=3D"_blank">igor@gooddata.com</a>&gt;&gt;; Daniel Secik<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &lt;<a href=3D"mailto:daniel.secik@=
gooddata.com" target=3D"_blank">daniel.secik@gooddata.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:daniel.secik@gooddata.=
com" target=3D"_blank">daniel.secik@gooddata.com</a>&gt;&gt;; Zdenek Pesek<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:zdenek.pesek@gooddata.com" ta=
rget=3D"_blank">zdenek.pesek@gooddata.com</a> &lt;mailto:<a href=3D"mailto:=
zdenek.pesek@gooddata.com" target=3D"_blank">zdenek.pesek@gooddata.com</a>&=
gt;&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Dumazet, Eric &lt;<a href=3D"mailto=
:edumazet@google.com" target=3D"_blank">edumazet@google.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:edumazet@google.com" t=
arget=3D"_blank">edumazet@google.com</a>&gt;&gt;; Martin Karsten<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &lt;<a href=3D"mailto:mkarsten@uwat=
erloo.ca" target=3D"_blank">mkarsten@uwaterloo.ca</a> &lt;mailto:<a href=3D=
"mailto:mkarsten@uwaterloo.ca" target=3D"_blank">mkarsten@uwaterloo.ca</a>&=
gt;&gt;; Zaki,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ahmed &lt;<a href=3D"mailto:ahmed.zaki@intel.com" t=
arget=3D"_blank">ahmed.zaki@intel.com</a> &lt;mailto:<a href=3D"mailto:ahme=
d.zaki@intel.com" target=3D"_blank">ahmed.zaki@intel.com</a>&gt;&gt;; Czapn=
ik,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Lukasz &lt;<a href=3D"mailto:lukasz=
.czapnik@intel.com" target=3D"_blank">lukasz.czapnik@intel.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:lukasz.czapnik@intel.c=
om" target=3D"_blank">lukasz.czapnik@intel.com</a>&gt;&gt;; Michal Swiatkow=
ski<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &lt;<a href=3D"mailto:michal.swiatk=
owski@linux.intel.com" target=3D"_blank">michal.swiatkowski@linux.intel.com=
</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:michal.swiatkowski@lin=
ux.intel.com" target=3D"_blank">michal.swiatkowski@linux.intel.com</a>&gt;&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Subject: Re: [Intel-wired-lan] Incr=
eased memory usage on NUMA<br>
&gt;=C2=A0 =C2=A0 =C2=A0nodes with ICE<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; driver after upgrade to 6.13.y (reg=
ression in commit<br>
&gt;=C2=A0 =C2=A0 =C2=A0492a044508ad)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; On Wed, 16 Apr 2025 22:57:10 +0000 =
Keller, Jacob E wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt; &gt; And you&#39;re rever=
ting just and exactly 492a044508ad13 ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt; &gt; The memory for persi=
stent config is allocated in<br>
&gt;=C2=A0 =C2=A0 =C2=A0alloc_netdev_mqs()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt; &gt; unconditionally. I&#=
39;m lost as to how this commit could<br>
&gt;=C2=A0 =C2=A0 =C2=A0make any<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt; &gt; difference :(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; &gt; Yes, reverted the 492a044=
508ad13.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; Struct napi_config *is* 1056 b=
ytes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; You&#39;re probably looking at 6.15=
-rcX kernels. Yes, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0affinity mask<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; can be large depending on the kerne=
l config. But report is<br>
&gt;=C2=A0 =C2=A0 =C2=A0for 6.13,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; AFAIU. In 6.13 and 6.14 napi_config=
 was tiny.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Regardless, it should still be ~64KB eve=
n in that case which is<br>
&gt;=C2=A0 =C2=A0 =C2=A0a far cry from eating all available memory. Somethi=
ng else must be<br>
&gt;=C2=A0 =C2=A0 =C2=A0going on....<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Jake<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hello<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Some observation, this &quot;problem&quot; st=
ill exists with the latest 6.14.y<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; and there must be multiple issues, the memory=
 utilization is slowly<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; going down, from 3GB to 100MB in 10-20days. a=
t home NUMA nodes where<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; intel x810 NIC are (looks like some memory le=
ak related to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; networking).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; So without the revert the kawadX usage is obs=
erved asap like till<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; 1-2d, with revert of mentioned commit kswadX =
starts to consume<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; resources later like in ~10d-20d later. It is=
 almost impossible<br>
&gt;=C2=A0 =C2=A0 =C2=A0to use<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; servers with Intel X810 cards (ice driver) wi=
th recent linux kernels.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Were you able to reproduce the memory problem=
s in your testbed?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Best,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Jaroslav<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hello<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I deployed linux 6.15.0 to our servers 7d ago and o=
bserved the<br>
&gt;=C2=A0 =C2=A0 =C2=A0behaviour of memory utilization of NUMA home nodes =
of Intel X810<br>
&gt;=C2=A0 =C2=A0 =C2=A01/ there is no need to revert the commit as before,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A02/ the memory is continuously consumed (like memory=
 leak),<br>
&gt;=C2=A0 =C2=A0 =C2=A0see attached &quot;7d_memory_usage_per_numa_linux6.=
15.0.png&quot; screenshot 8x<br>
&gt;=C2=A0 =C2=A0 =C2=A0numa nodes, (NUMA0 + NUMA1 are local for X810 nics)=
. BTW: We do not<br>
&gt;=C2=A0 =C2=A0 =C2=A0see this memory utilization pattern on server s usi=
ng Broadcom<br>
&gt;=C2=A0 =C2=A0 =C2=A0Netxtreme-E NICs<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Jaroslav Pulchart<br>
&gt; Sr. Principal SW Engineer<br>
&gt; GoodData<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Jaro=
slav Pulchart<br></div><div dir=3D"ltr">Sr. Principal SW Engineer<br>GoodDa=
ta</div></div></div></div></div></div>

--00000000000081714b063869186b--
