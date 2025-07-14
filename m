Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B99B035CD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 07:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C27CF40742;
	Mon, 14 Jul 2025 05:35:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umNQEt5OUccv; Mon, 14 Jul 2025 05:35:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACF434072C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752471328;
	bh=vB5UiUgsozB+0sggKFznBqtC333A7wXb/PoBSWHUbvE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ce/XJ1Bg5/RpQGBj5ftSPQTHMDzsMe28066Qizy5XIoEec2SIE1/enua75SpH4tGl
	 MZeUEvqha7e9PTDsbUfxtWB0esUBAItjz57U9prwyEASBK8CmDTg+jUea7PPPrxYwn
	 Q5JNDOu1jFAywDktkQo9vU/UZfdhhtlwq/lSPOxYiMqnrSj4xJPGaOXiP2j8SYDpuc
	 1v+kplr0eOUYRfgTcECzf4pYF44vt7Uoc2qFVjabQr6Jgz3DQ0ATzklUFmCCWevGCO
	 fW+ELYQd8Z16nskdi3gZrNUyxhye8hgNJVhxFUPQtbTygpfE/NV87LVRnRk6/Xi47/
	 +01H+B/DMR17Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACF434072C;
	Mon, 14 Jul 2025 05:35:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A492A106
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 05:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95EED81E63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 05:35:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2AQWUR0G1o-f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 05:35:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::530; helo=mail-ed1-x530.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EFC3681E5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFC3681E5E
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFC3681E5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 05:35:24 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-60707b740a6so5969166a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Jul 2025 22:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752471322; x=1753076122;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vB5UiUgsozB+0sggKFznBqtC333A7wXb/PoBSWHUbvE=;
 b=u/EG2mthqBidf0Bdq6027Kluw/xs/0xxJbkgiabfYUuEffU1pXkeT7z+R9Z+BMINP1
 JNz7PT+uWszcN92WDuv1SQBpHczgwAQqXbTHYt/qEWBPig031u1Z4dhzfruNBQs2HtNX
 +vOa9+JxWLLLbTRQipCLFzQE/Ay4aYsOjAyqewd/BlxVpuZRhp56Do8+r41SSUgH+RAP
 EzPlFs4airslYwxYiPcuiRg7rZ6YCt2O2+1dpY1uJCqCF5xWBHyirc1jSk2DIg33/wtg
 VWTCfwvk/Usb8XtiV0Jfk0Anf00/q+g+QgprIRiicxmxVS0hjs1feKTB7KKHiBdQXB8n
 oGoQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrkSGCdvE2CbmZeqF6AyrkLwhIor3s6BDllotOOqUVp6zrct2e1vEAsd3O2esoF/oIVbwVRhWPjeTrXCv7bSc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyXrcwaX5pKWpQSl2a9lwvznWmiST7arrul71LgzsKby4CcGteD
 muBTT1P6dvM97P5NVPfnzOGLt6YYboot3DENgDGo2g80k/lUX+0mkZsI2g0ATWUjzdQMawmLIgm
 Q4OLtTW0+BHtaNN0fjRiSzKdUiMYJlDCDk3IQABVB
X-Gm-Gg: ASbGncuh6+FiDg0aw3uA5kgPvBoa3VKPlfO01lU1n+rxL04dH0wyu31ypBsBUqUi6bI
 zXXSOeUfjZG563V4VdDx2haE2bkE+nGoTzAHEkgu9x+JIWka7D1/e1JuZadrNqHy/tmvyP9osBk
 ZPacWT+u1LynR0tW4a3HcQdPIlqd7zmN1ajFwmAhCb20a2+MMc/BZ2wVGu2RLT7knyZEUn5gMgQ
 rN/6MRS
X-Google-Smtp-Source: AGHT+IH/NKmhyQrk9sk4uvw8CG8NXMmxXC091yizH0omQ4CgkCjY+lXaWd1irvQARhPQa6P7HFb+yefQM/VoEjb/JkE=
X-Received: by 2002:a17:907:e98a:b0:ade:4121:8d3d with SMTP id
 a640c23a62f3a-ae6fc6b1142mr1167961566b.12.1752471322244; Sun, 13 Jul 2025
 22:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
 <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
 <a4b27e11-a3fd-4df0-8dd4-60d1a4aec5a8@intel.com>
 <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
 <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
 <7518e246-40ff-4399-9aae-57a5158061c3@intel.com>
 <CAK8fFZ47qh=ezYwQ5hRPxmwidOkTj_ueQsKz9G7erp0RPtaQ3Q@mail.gmail.com>
 <217bfb43-0c16-499d-b3da-aad22209fea1@intel.com>
In-Reply-To: <217bfb43-0c16-499d-b3da-aad22209fea1@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 14 Jul 2025 07:34:56 +0200
X-Gm-Features: Ac12FXzVsexgxZRqbPmoGoPEbdAR-rFeCAYWDi6OhmXzD7VsZ8yNOcFYnx1r3r0
Message-ID: <CAK8fFZ6qW-Jq6c+JmN3Q78wMFhb=ECV218shSTV8cicv8q9hnw@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Damato,
 Joe" <jdamato@fastly.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Dumazet,
 Eric" <edumazet@google.com>, 
 "Zaki, Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, 
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1752471322; x=1753076122; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vB5UiUgsozB+0sggKFznBqtC333A7wXb/PoBSWHUbvE=;
 b=JcrE75C3coRqj6zih1cu+eqZEyDUUH6kDcNeUH8HWS9fdGEIutdF9bOOJ17hWyCpLJ
 exu5RG9ZBpjZpoSSTRsZfHogmj5d4vdTiCbn5XmOyy0+Fl6YRAgggzCHm80s23k7yyoB
 0RCH2RXm0WUQ7OOAn/wKOnT9zWCnDCzQwzds4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=JcrE75C3
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

>
> On 7/11/2025 11:16 AM, Jaroslav Pulchart wrote:
> >>
> >>
> >>
> >> On 7/9/2025 2:04 PM, Jaroslav Pulchart wrote:
> >>>>
> >>>>
> >>>> On 7/8/2025 5:50 PM, Jacob Keller wrote:
> >>>>>
> >>>>>
> >>>>> On 7/7/2025 3:03 PM, Jacob Keller wrote:
> >>>>>> Bad news: my hypothesis was incorrect.
> >>>>>>
> >>>>>> Good news: I can immediately see the problem if I set MTU to 9K an=
d
> >>>>>> start an iperf3 session and just watch the count of allocations fr=
om
> >>>>>> ice_alloc_mapped_pages(). It goes up consistently, so I can quickl=
y tell
> >>>>>> if a change is helping.
> >>>>>>
> >>>>>> I ported the stats from i40e for tracking the page allocations, an=
d I
> >>>>>> can see that we're allocating new pages despite not actually perfo=
rming
> >>>>>> releases.
> >>>>>>
> >>>>>> I don't yet have a good understanding of what causes this, and the=
 logic
> >>>>>> in ice is pretty hard to track...
> >>>>>>
> >>>>>> I'm going to try the page pool patches myself to see if this test =
bed
> >>>>>> triggers the same problems. Unfortunately I think I need someone e=
lse
> >>>>>> with more experience with the hotpath code to help figure out what=
s
> >>>>>> going wrong here...
> >>>>>
> >>>>> I believe I have isolated this and figured out the issue: With 9K M=
TU,
> >>>>> sometimes the hardware posts a multi-buffer frame with an extra
> >>>>> descriptor that has a size of 0 bytes with no data in it. When this
> >>>>> happens, our logic for tracking buffers fails to free this buffer. =
We
> >>>>> then later overwrite the page because we failed to either free or r=
e-use
> >>>>> the page, and our overwriting logic doesn't verify this.
> >>>>>
> >>>>> I will have a fix with a more detailed description posted tomorrow.
> >>>>
> >>>> @Jaroslav, I've posted a fix which I believe should resolve your iss=
ue:
> >>>>
> >>>> https://lore.kernel.org/intel-wired-lan/20250709-jk-ice-fix-rx-mem-l=
eak-v1-1-cfdd7eeea905@intel.com/T/#u
> >>>>
> >>>> I am reasonably confident it should resolve the issue you reported. =
If
> >>>> possible, it would be appreciated if you could test it and report ba=
ck
> >>>> to confirm.
> >>>
> >>> @Jacob that=E2=80=99s excellent news!
> >>>
> >>> I=E2=80=99ve built and installed 6.15.5 with your patch on one of our=
 servers
> >>> (strange that I had to disable CONFIG_MEM_ALLOC_PROFILING with this
> >>> patch or the kernel wouldn=E2=80=99t boot) and started a VM running o=
ur
> >>> production traffic. I=E2=80=99ll let it run for a day-two, observe th=
e memory
> >>> utilization per NUMA node and report back.
> >>
> >> Great! A bit odd you had to disable CONFIG_MEM_ALLOC_PROFILING. I didn=
't
> >> have trouble on my kernel with it enabled.
> >
> > Status update after ~45h of uptime. So far so good, I do not see
> > continuous memory consumption increase on home numa nodes like before.
> > See attached "status_before_after_45h_uptime.png" comparison.
>
> Great news! Would you like your "Tested-by" being added to the commit
> message when we submit the fix to netdev?

Jacob, absolutely.
