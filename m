Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D13EAFF3A1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 23:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A8A340499;
	Wed,  9 Jul 2025 21:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMEyNYYhhEJJ; Wed,  9 Jul 2025 21:04:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 675884048C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752095096;
	bh=BNsm2fnHBMugEfz4D2462oBDQDgjrVdyedveO5ODNHw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sz5HbU1IUnBZOwVPSY69An2Y++SAtw4VnoPF+F9cEzmv1uDBbkhTVjgB3tz2w7vnO
	 Fg63jO39NSnrMvAnydlJvee9FNYk9MTkt22YmieXvoUlpHcVyVxyMWH6epNNbypr28
	 UyVH8I/UDvHlnD+D+DTDoXWOUvToEr8Yar//UMMkop/rhEfb5xVDq9OxgX+j0QHfbL
	 T1rVIUJr3s9nQ0ikThxkb1YJovdDRsb71yL+Y68jxJMnzlwYG9YfIu3Zvn6/fOdJkw
	 rZ54kqSDZjcF8xK42UWbFtzcuYkk1svc6FzToNxSl1+L8r0VvCuDzINyUNbTdOg3gx
	 nxBAo5h4GSLWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 675884048C;
	Wed,  9 Jul 2025 21:04:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EFFD69
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5086C812DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:04:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3dOatf0QZANJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 21:04:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3D0B7812E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D0B7812E6
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D0B7812E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 21:04:54 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-ae3a604b43bso45667866b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Jul 2025 14:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752095092; x=1752699892;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BNsm2fnHBMugEfz4D2462oBDQDgjrVdyedveO5ODNHw=;
 b=SVC4ChPZbNBrWvKe4/Wr5QokB8j8GsMfXYNw+p3h43/JwAwaECsz99Zxn+8a4OAlEt
 KGSLEsQUrem1BV5yRSrlFqDuwYFxYiJv1XN7ccuaISMBrYULEIa3vaYO+mbUSvWtjU9p
 BoTotvGZAM8Wlx21Si2ZY/DgOawKezCNWG6kJUGEufUXLoToe9Em814HQ/tlcPWfAbrk
 8G9naw8Dg0Kk5j0N4XMsHY5P9ffSakzymhOokMvBRXSSAdK2ySjvgUqFghbiELHYf9sy
 xDQb4AFMfPx59SF3o2fLv3hopLkl+6qvbLaySbQPUS+XMXoOP/uMN1pxI+WTzt24iLpZ
 HSew==
X-Forwarded-Encrypted: i=1;
 AJvYcCVyXkZfExL0ktsGRnVBu+w0B7wGcvmlAH97X8/2hqtp99rAN6yCf6HNX5RyeG/AQI4zus+pPjs9pFCEE2cUxdc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwB6TwJ7lng9Wnt6Mnx1XEx6T3EWuOrllLlp6HajcbtwqR0DZSD
 BQ5GaUQ6VFGF31nk5YfdeMFd9pMDizK7fzkCOuyltX1TORhbAtVjftOtEGo41K87UmYU5sdB5RF
 nVb7RCrEpw9EERBFA890G5z0EFW2ZOeEBlKvhSPqh
X-Gm-Gg: ASbGncu58CrP1CQGjDW49fKdqLiavJFSuXtW8Gkfahjy7BTrh7Of7wgkzo57gczYPNy
 n9EJfMQYDYwhSfe7XD6d4cSuHrTQZOSA+isFPOor+ZRQgohBABq1fxRqNB14zLjw9Fhkivh0bfw
 XaCBn//0je60bWENuh/8YrcHSCDk0eix6a9M6PB2Q7jz1I
X-Google-Smtp-Source: AGHT+IHSDkur6mt7sMuBl3ivcZcSn4ndEARSSMyN0wiFBCWYKf62/5pzal1TKfzFU+ne/f0YvEnq//YFMiNrwqmZHYw=
X-Received: by 2002:a17:906:f413:b0:ad8:9257:5737 with SMTP id
 a640c23a62f3a-ae6e112c1damr125266966b.25.1752095091937; Wed, 09 Jul 2025
 14:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
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
In-Reply-To: <04f3dc70-fd31-4b26-9647-c2f4ed012d8e@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 9 Jul 2025 23:04:25 +0200
X-Gm-Features: Ac12FXyaO_OSvkR5pEP7eBnklqIwCyXvyYYGPHM22D5cmw4J-nnhMxF1RgW377k
Message-ID: <CAK8fFZ5MOiT0inGVwO0RjsiSiFNvsrTgikeCokOOhZNXHiaK4Q@mail.gmail.com>
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
 d=gooddata.com; s=google; t=1752095092; x=1752699892; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BNsm2fnHBMugEfz4D2462oBDQDgjrVdyedveO5ODNHw=;
 b=mh3DlJJcBuyk3XUmuA5MUcu8SZt9yzZiQrFUG4tYCq/7NCr91B24Mgleu6WnQSKa5C
 NWuGKKZgEgFVs8rz3LklNLwhMxN+pnvtqV80dOa/4QVZaQUXcGwP//SAsR5BniirvnuG
 BAp4e/OjAFYLiu9du9LXemBxFt/m7QuhFPvNQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=mh3DlJJc
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
>
> On 7/8/2025 5:50 PM, Jacob Keller wrote:
> >
> >
> > On 7/7/2025 3:03 PM, Jacob Keller wrote:
> >> Bad news: my hypothesis was incorrect.
> >>
> >> Good news: I can immediately see the problem if I set MTU to 9K and
> >> start an iperf3 session and just watch the count of allocations from
> >> ice_alloc_mapped_pages(). It goes up consistently, so I can quickly te=
ll
> >> if a change is helping.
> >>
> >> I ported the stats from i40e for tracking the page allocations, and I
> >> can see that we're allocating new pages despite not actually performin=
g
> >> releases.
> >>
> >> I don't yet have a good understanding of what causes this, and the log=
ic
> >> in ice is pretty hard to track...
> >>
> >> I'm going to try the page pool patches myself to see if this test bed
> >> triggers the same problems. Unfortunately I think I need someone else
> >> with more experience with the hotpath code to help figure out whats
> >> going wrong here...
> >
> > I believe I have isolated this and figured out the issue: With 9K MTU,
> > sometimes the hardware posts a multi-buffer frame with an extra
> > descriptor that has a size of 0 bytes with no data in it. When this
> > happens, our logic for tracking buffers fails to free this buffer. We
> > then later overwrite the page because we failed to either free or re-us=
e
> > the page, and our overwriting logic doesn't verify this.
> >
> > I will have a fix with a more detailed description posted tomorrow.
>
> @Jaroslav, I've posted a fix which I believe should resolve your issue:
>
> https://lore.kernel.org/intel-wired-lan/20250709-jk-ice-fix-rx-mem-leak-v=
1-1-cfdd7eeea905@intel.com/T/#u
>
> I am reasonably confident it should resolve the issue you reported. If
> possible, it would be appreciated if you could test it and report back
> to confirm.

@Jacob that=E2=80=99s excellent news!

I=E2=80=99ve built and installed 6.15.5 with your patch on one of our serve=
rs
(strange that I had to disable CONFIG_MEM_ALLOC_PROFILING with this
patch or the kernel wouldn=E2=80=99t boot) and started a VM running our
production traffic. I=E2=80=99ll let it run for a day-two, observe the memo=
ry
utilization per NUMA node and report back.
