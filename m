Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 348E1ABEFDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 11:33:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1D7C40AF1;
	Wed, 21 May 2025 09:33:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dTwqcvPDJEeN; Wed, 21 May 2025 09:33:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD80540B09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747819985;
	bh=vkYo+JENFnccANTascGsFiw8HxP19vFtSh3alcpT2Q0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E6J80vl6DRMNkf0dptPoT5Xs/PqxDjf7oIbNIIRTQ3FppDlWXJJUgRFepA9cpN9dG
	 kE3F8bWSQ9DABYONYYQRQWHeHSsmCOb76ThXcOSnrovnH6DRX26aGczQQ1HStoqNBr
	 /Ni6MJE4SDgXj+36/KqRfHehCvKcokUUJvZnz86Ok8hVOIZl38pP7p9j9m1xrmO7kP
	 7nbEp4XYZ7MMwFwDi/CIZCeYG3tNbvy92RsSPBRMXmSBW0Np7YaqTy7A+O4l7LkkuY
	 vT3qXrZrUDBbU8aQ+Op+gnLwtXe+UlXq90N1TbJuOCuAsDlCRVAjyJXlwI9fG4D4Cz
	 uwlzglZMwgvHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD80540B09;
	Wed, 21 May 2025 09:33:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DFA341BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 09:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D151B81FE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 09:33:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwXSDyKCiWpu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 09:33:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A1DA881510
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1DA881510
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1DA881510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 09:33:02 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-ad55d6aeb07so261703166b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 02:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747819980; x=1748424780;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vkYo+JENFnccANTascGsFiw8HxP19vFtSh3alcpT2Q0=;
 b=LMa424GQ8uEVCjYS8MwuDB1+R1brDuKCCeQxXkV+tWgw7NrsU363ezcxks3MbylBpC
 1jOIv7Oa+2xskU2p/+KnSydbBEgnUXACPdTN71CE802vhQiVNe7UqBw/U7wOv110uOlu
 608t8QIaPdivuAN9fpgRbxLr6m03wiaaXku0w2TNyvkBan/Tjkl+0vgddwt84MZ7++8v
 XBNyvwZE/OFSiR98j9p60FU+X0joStq4hl9a0MyMw0aaHVTKP7H0syaEzD4jMEEMBRdq
 lrVs5ko9uVgng88JjVG25CcsnJLiVATQzBnsn/7WO/AMKKVy+U5VimxWQUXdyVHRlE6Q
 MUVA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNpJhS0/kecfp8WZ+UDHq9cJdv7ZMTmF72tHq6jBCP8V5ZtUVxo0w2GulL1TXH3LwoO15nv/Go4IH0ofSgTr4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyuccLgkO27N8SGaQLXsr/svO5+IcR7d0lg1ivwhOdI+d2shEkj
 8dbYSJLD1aOzIPnAXbz9QystHT1aczo8JIafwuEqDKYNSdAw/0/MEngT5dzov5fPTvHE3hT/+qV
 HGtOwCwfrioy2/7v3+jT6k/xyHjsOPvoVqMJFjVmy
X-Gm-Gg: ASbGncs4mNGMiK9vskg6Me7eeL/YQNlx6GivhF9h1xqUUIsbgjTnXKrRTk7ct+jh+5E
 CFsZeUG1WkqYc2Zeu82wZBwDaEfItLWEaoUL95LofowkOqb0AlGdx3BC5DdiFUYnXjJHeDitxWN
 qrd+xNv35cHBPtRY54tPutJIWo/5LWGezpFQ==
X-Google-Smtp-Source: AGHT+IHvk2bPlobCip1hMc7eQf+cGP3po5I5kYODyx8N2bNesyKp6saqB4cpY8WXWKBKe+boxz5je39HJ8d8k36qUkc=
X-Received: by 2002:a17:907:7f8e:b0:ad2:53b1:d60f with SMTP id
 a640c23a62f3a-ad536bdfe89mr1361448466b.34.1747819980375; Wed, 21 May 2025
 02:33:00 -0700 (PDT)
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
In-Reply-To: <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 21 May 2025 11:32:34 +0200
X-Gm-Features: AX0GCFvzmySlCZOEPOh4YPucD9a8dSs_7jeJwaM4qIdxSAFhySfTiyNah7vS34E
Message-ID: <CAK8fFZ6dZWv6rtd6U_qY+qPe2hzmkzi-af=T-AGxCsV6ZgaW-w@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "Damato, Joe" <jdamato@fastly.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>, "Dumazet, Eric" <edumazet@google.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, "Zaki, Ahmed" <ahmed.zaki@intel.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: multipart/alternative; boundary="0000000000000fdbce0635a20d23"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1747819980; x=1748424780; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vkYo+JENFnccANTascGsFiw8HxP19vFtSh3alcpT2Q0=;
 b=f2SnyvBiVVnINCErevMqkAavHeYHMtJUfQ0aCVqkOBmulgDurfFyTQgbDfqHypM76q
 pMuzei5rrU/LSSVP39O/lyKluhQzj4CQFJFJzV16wY4isEnPPmPaU3tr2IcKDI2kCxux
 uDoW1f8Ax/DviZHtHikHucuIMhyqZSpMcykQM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=f2SnyvBi
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

--0000000000000fdbce0635a20d23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

some observation
* I'm still observing this "problem" with latest 6.14.y
* there must be multiple problems, the memory utilization is slowly going
down at home NUMA nodes where intel x810 NIC are (like some memory leak)

Were you able to reproduce the memory problems in your testbed?

Best,
Jaroslav

=C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel Keller, Jacob E <jacob.e.keller=
@intel.com>
napsal:

>
>
> > -----Original Message-----
> > From: Jakub Kicinski <kuba@kernel.org>
> > Sent: Wednesday, April 16, 2025 5:13 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>; Kitszel,
> Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Damato, Joe <jdamato@fastly.com>;
> intel-wired-
> > lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Igor Raits <igor@gooddata.com>; Daniel
> Secik
> > <daniel.secik@gooddata.com>; Zdenek Pesek <zdenek.pesek@gooddata.com>;
> > Dumazet, Eric <edumazet@google.com>; Martin Karsten
> > <mkarsten@uwaterloo.ca>; Zaki, Ahmed <ahmed.zaki@intel.com>; Czapnik,
> > Lukasz <lukasz.czapnik@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes wit=
h
> ICE
> > driver after upgrade to 6.13.y (regression in commit 492a044508ad)
> >
> > On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> > > > > And you're reverting just and exactly 492a044508ad13 ?
> > > > > The memory for persistent config is allocated in alloc_netdev_mqs=
()
> > > > > unconditionally. I'm lost as to how this commit could make any
> > > > > difference :(
> > > >
> > > > Yes, reverted the 492a044508ad13.
> > >
> > > Struct napi_config *is* 1056 bytes
> >
> > You're probably looking at 6.15-rcX kernels. Yes, the affinity mask
> > can be large depending on the kernel config. But report is for 6.13,
> > AFAIU. In 6.13 and 6.14 napi_config was tiny.
>
> Regardless, it should still be ~64KB even in that case which is a far cry
> from eating all available memory. Something else must be going on....
>
> Thanks,
> Jake
>


--=20
Jaroslav Pulchart
Sr. Principal SW Engineer
GoodData

--0000000000000fdbce0635a20d23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>some observation</div><div>* I&#3=
9;m still observing this &quot;problem&quot;=C2=A0with=C2=A0latest 6.14.y</=
div><div>* there must be multiple problems, the memory=C2=A0utilization is =
slowly going down at home NUMA nodes where intel x810 NIC are (like some me=
mory leak)</div><div><br></div><div>Were you able to reproduce the memory p=
roblems in your testbed?</div><div><br></div><div>Best,</div><div>Jaroslav=
=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">=C4=8Dt 17. 4. 2025 v=C2=A019:52 odes=C3=
=ADlatel Keller, Jacob E &lt;<a href=3D"mailto:jacob.e.keller@intel.com">ja=
cob.e.keller@intel.com</a>&gt; napsal:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" target=3D"=
_blank">kuba@kernel.org</a>&gt;<br>
&gt; Sent: Wednesday, April 16, 2025 5:13 PM<br>
&gt; To: Keller, Jacob E &lt;<a href=3D"mailto:jacob.e.keller@intel.com" ta=
rget=3D"_blank">jacob.e.keller@intel.com</a>&gt;<br>
&gt; Cc: Jaroslav Pulchart &lt;<a href=3D"mailto:jaroslav.pulchart@gooddata=
.com" target=3D"_blank">jaroslav.pulchart@gooddata.com</a>&gt;; Kitszel, Pr=
zemyslaw<br>
&gt; &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=3D"_blank">=
przemyslaw.kitszel@intel.com</a>&gt;; Damato, Joe &lt;<a href=3D"mailto:jda=
mato@fastly.com" target=3D"_blank">jdamato@fastly.com</a>&gt;; intel-wired-=
<br>
&gt; <a href=3D"mailto:lan@lists.osuosl.org" target=3D"_blank">lan@lists.os=
uosl.org</a>; <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">n=
etdev@vger.kernel.org</a>; Nguyen, Anthony L<br>
&gt; &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com" target=3D"_blank">an=
thony.l.nguyen@intel.com</a>&gt;; Igor Raits &lt;<a href=3D"mailto:igor@goo=
ddata.com" target=3D"_blank">igor@gooddata.com</a>&gt;; Daniel Secik<br>
&gt; &lt;<a href=3D"mailto:daniel.secik@gooddata.com" target=3D"_blank">dan=
iel.secik@gooddata.com</a>&gt;; Zdenek Pesek &lt;<a href=3D"mailto:zdenek.p=
esek@gooddata.com" target=3D"_blank">zdenek.pesek@gooddata.com</a>&gt;;<br>
&gt; Dumazet, Eric &lt;<a href=3D"mailto:edumazet@google.com" target=3D"_bl=
ank">edumazet@google.com</a>&gt;; Martin Karsten<br>
&gt; &lt;<a href=3D"mailto:mkarsten@uwaterloo.ca" target=3D"_blank">mkarste=
n@uwaterloo.ca</a>&gt;; Zaki, Ahmed &lt;<a href=3D"mailto:ahmed.zaki@intel.=
com" target=3D"_blank">ahmed.zaki@intel.com</a>&gt;; Czapnik,<br>
&gt; Lukasz &lt;<a href=3D"mailto:lukasz.czapnik@intel.com" target=3D"_blan=
k">lukasz.czapnik@intel.com</a>&gt;; Michal Swiatkowski<br>
&gt; &lt;<a href=3D"mailto:michal.swiatkowski@linux.intel.com" target=3D"_b=
lank">michal.swiatkowski@linux.intel.com</a>&gt;<br>
&gt; Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes wi=
th ICE<br>
&gt; driver after upgrade to 6.13.y (regression in commit 492a044508ad)<br>
&gt; <br>
&gt; On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:<br>
&gt; &gt; &gt; &gt; And you&#39;re reverting just and exactly 492a044508ad1=
3 ?<br>
&gt; &gt; &gt; &gt; The memory for persistent config is allocated in alloc_=
netdev_mqs()<br>
&gt; &gt; &gt; &gt; unconditionally. I&#39;m lost as to how this commit cou=
ld make any<br>
&gt; &gt; &gt; &gt; difference :(<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Yes, reverted the 492a044508ad13.<br>
&gt; &gt;<br>
&gt; &gt; Struct napi_config *is* 1056 bytes<br>
&gt; <br>
&gt; You&#39;re probably looking at 6.15-rcX kernels. Yes, the affinity mas=
k<br>
&gt; can be large depending on the kernel config. But report is for 6.13,<b=
r>
&gt; AFAIU. In 6.13 and 6.14 napi_config was tiny.<br>
<br>
Regardless, it should still be ~64KB even in that case which is a far cry f=
rom eating all available memory. Something else must be going on....<br>
<br>
Thanks,<br>
Jake<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Jaro=
slav Pulchart<br></div><div dir=3D"ltr">Sr. Principal SW Engineer<br>GoodDa=
ta</div></div></div></div></div></div>

--0000000000000fdbce0635a20d23--
