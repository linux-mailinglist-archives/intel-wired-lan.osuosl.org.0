Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D5CAEE7E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 22:01:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3986141CAB;
	Mon, 30 Jun 2025 20:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zu4y7DIK8s4K; Mon, 30 Jun 2025 20:01:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AF5F41CAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751313698;
	bh=BlQ2m16Y3O+4FLK0sWsRcUlnrU677a1UxDGZmWmdDyc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GhQS20AGWBuI3WURbP6QNXHndxRr3WDSoKL9Y/DQjARx3WH8CZHxnu9rLA/y4mRY5
	 g3oMYrzRkP6HM89bHe9bi3lKd9W4hsj5NheyEzZwXla1Ufg812rh6c7bc4mi4/PKLU
	 upXZ6FLYJs2HIBNbQl/JQPNty04TaWaQEfu1ZyaMVs9SvJohlTJ80C0s2vK2mtDUXq
	 w23wVAUyslmAccFnZ4Np0yCF3kdkZ+f9Doc7NtA02YpXeHy5YL7rL3SWKINt1n7/n6
	 WI1oLJSZ7h/FanhNXCEUvgj5JcbAVnqinq2UP5J79f0i9JQsIC6L7W13UQOe9XTrDi
	 sLfFSPLOwX8kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AF5F41CAE;
	Mon, 30 Jun 2025 20:01:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E697223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F9B8417D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9QXncG0vg4Al for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 20:01:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C10F417C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C10F417C3
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C10F417C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:01:34 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-60bf5a08729so5461876a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 13:01:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751313693; x=1751918493;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BlQ2m16Y3O+4FLK0sWsRcUlnrU677a1UxDGZmWmdDyc=;
 b=Qk0VH+Woa8ZqM7oo8Iw+Mhf5ka2UJGsLQrtSdQeX83qGnm7ysrT83JjiOLmsTTJWOC
 l4lH7IgvBy7GuXrhOO85j+EciHIsUL7nrecchw5biKdTMmnScnVH52tN3GneouWpN0E/
 BFwyScQtkdpwFZYE0dnhDAZHhF1amkvPHqSztOYPCUMov8h2A7AAJt156oVGbMXKBrBh
 fTFABkPOQIlmNEhJoHuH63wPGIbKVrU0EAwYMWM1YBv8t/mk4KhZ2/i2/WCM7KhakVch
 EhlZKWfpoSkcLFGI7PwOjemiADEPsXQq99iY9YmHgFciIQUnStSJDnEjx6SJfnPO05PV
 wi+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWY/H1Qo+xU3UKzCqHhlA46Uvk8LRumSdjBYEapeqAjTayCbFMiQsu23kRF5sm2G+pj2DbO3RPiwDXRjXgzBRo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywyz45nxlbQ0N07XBBST9Z3yU26tVhhPbhF9/hbrBhbdddsOXf6
 cn/oytKEx36zrgsfQPglnyHtnQmHEqik0seTZlT8QlZz7k/BthUYeKMSEGZaPkqwb2iOveEl1bo
 FaOKz9zbV13mhmfP6iGO9NiP8j84ccnVa1hAYW0TR
X-Gm-Gg: ASbGncvVZa6l0cXjZJAO1f8I7cjO1XdviDnvyPG+/NMZyEtxqidwFdJZlqBdnwG/qTt
 5I0uZBE+h/gv8Wn7cN3Fx0kfC/eL/x4dXSNSCI1Z30IT+QEKcGppU+XCHf6/lzZW26lemkOgxVM
 k/CmU0uFYrvx96G9fUMtoB9sNYHnc5LqBOkqOo1jzU2POm
X-Google-Smtp-Source: AGHT+IElA7dwjNbAavQXRtpBC9F2bhPVHqdZJXJsYTHmqi/cCpFGET8t/NC37vfXEi+HwRaum3IhHyi2gEvxQcZcvck=
X-Received: by 2002:a17:907:d16:b0:ae0:d97d:7fa0 with SMTP id
 a640c23a62f3a-ae3500caf35mr1426578666b.38.1751313692704; Mon, 30 Jun 2025
 13:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
In-Reply-To: <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 30 Jun 2025 22:01:06 +0200
X-Gm-Features: Ac12FXwYZ6bg3FIRduOrsQ66EGDolpQyCt5LC8AL-VXPejF5bGVLo-KSRrZ392A
Message-ID: <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
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
 d=gooddata.com; s=google; t=1751313693; x=1751918493; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BlQ2m16Y3O+4FLK0sWsRcUlnrU677a1UxDGZmWmdDyc=;
 b=V9x+4NKPmeLwWMQEvTbyJEp62+XMVh0MJeMWWadg62LI01XBU03A/gpetvAMcQMGCO
 j4zCUdnvvBER3hWsNpmJTbf1dmcLAe7OC3dyPky2BwC6sY4HpVyfWKaHzwRSPOPr0Lg0
 bPFaOcPvTSuxrc978EiJzo1hnygGUXd0ib62M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=V9x+4NKP
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
>
> On 6/30/2025 10:24 AM, Jaroslav Pulchart wrote:
> >>
> >>
> >>
> >> On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
> >>>>
> >>>>>
> >>>>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
> >>>>>> Great, please send me a link to the related patch set. I can apply=
 them in
> >>>>>> our kernel build and try them ASAP!
> >>>>>
> >>>>> Sorry if I'm repeating the question - have you tried
> >>>>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kerne=
ls
> >>>>> is low enough to use it for production workloads.
> >>>>
> >>>> I try it now, the fresh booted server:
> >>>>
> >>>> # sort -g /proc/allocinfo| tail -n 15
> >>>>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
> >>>>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >>>>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_allo=
c_pages
> >>>>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
> >>>>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_in=
ode
> >>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap=
_alloc_page
> >>>>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
> >>>>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
> >>>>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
> >>>>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
> >>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >>>>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_foli=
o_pmd
> >>>>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
> >>>>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> >>>> [ice] func:ice_alloc_mapped_page
> >>>>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
> >>>>
> >>>
> >>> The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
> >>> func:ice_alloc_mapped_page" is just growing...
> >>>
> >>> # uptime ; sort -g /proc/allocinfo| tail -n 15
> >>>  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.81
> >>>
> >>> # sort -g /proc/allocinfo| tail -n 15
> >>>     85216896   443838 fs/dcache.c:1681 func:__d_alloc
> >>>    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
> >>>    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_ino=
de
> >>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_=
alloc_page
> >>>    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
> >>>    186793984    45604 mm/memory.c:1056 func:folio_prealloc
> >>>    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >>>    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
> >>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio=
_pmd
> >>>    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
> >>>   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
> >>>   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
> >>>   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
> >>>   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> >>> [ice] func:ice_alloc_mapped_page
> >>>
> >> ice_alloc_mapped_page is the function used to allocate the pages for t=
he
> >> Rx ring buffers.
> >>
> >> There were a number of fixes for the hot path from Maciej which might =
be
> >> related. Although those fixes were primarily for XDP they do impact th=
e
> >> regular hot path as well.
> >>
> >> These were fixes on top of work he did which landed in v6.13, so it
> >> seems plausible they might be related. In particular one which mention=
s
> >> a missing buffer put:
> >>
> >> 743bbd93cf29 ("ice: put Rx buffers after being done with current frame=
")
> >>
> >> It says the following:
> >>>     While at it, address an error path of ice_add_xdp_frag() - we wer=
e
> >>>     missing buffer putting from day 1 there.
> >>>
> >>
> >> It seems to me the issue must be somehow related to the buffer cleanup
> >> logic for the Rx ring, since thats the only thing allocated by
> >> ice_alloc_mapped_page.
> >>
> >> It might be something fixed with the work Maciej did.. but it seems ve=
ry
> >> weird that 492a044508ad ("ice: Add support for persistent NAPI config"=
)
> >> would affect that logic at all....
> >
> > I believe there were/are at least two separate issues. Regarding
> > commit 492a044508ad (=E2=80=9Cice: Add support for persistent NAPI conf=
ig=E2=80=9D):
> > * On 6.13.y and 6.14.y kernels, this change prevented us from lowering
> > the driver=E2=80=99s initial, large memory allocation immediately after=
 server
> > power-up. A few hours (max few days) later, this inevitably led to an
> > out-of-memory condition.
> > * Reverting the commit in those series only delayed the OOM, it
> > allowed the queue size (and thus memory footprint) to shrink on boot
> > just as it did in 6.12.y but didn=E2=80=99t eliminate the underlying 'l=
eak'.
> > * In 6.15.y, however, that revert isn=E2=80=99t required (and isn=E2=80=
=99t even
> > applicable). The after boot allocation can once again be tuned down
> > without patching. Still, we observe the same increase in memory use
> > over time, as shown in the 'allocmap' output.
> > Thus, commit 492a044508ad led us down a false trail, or at the very
> > least hastened the inevitable OOM.
>
> That seems reasonable. I'm still surprised the specific commit leads to
> any large increase in memory, since it should only be a few bytes per
> NAPI. But there may be some related driver-specific issues.

Actually, the large base allocation has existed for quite some time,
the mentioned commit didn=E2=80=99t suddenly grow our memory usage, it only
prevented us from shrinking it via "ethtool -L <iface> combined
<small-number>"
after boot. In other words, we=E2=80=99re still stuck with the same big
allocation, we just can=E2=80=99t tune it down (till reverting the commit)

>
> Either way, we clearly need to isolate how we're leaking memory in the
> hot path. I think it might be related to the fixes from Maciej which are
> pretty recent so might not be in 6.13 or 6.14

I=E2=80=99m fine with the fix for the mainline (now 6.15.y), the 6.13.y and
6.14.y are already EOL. Could you please tell me which 6.15.y stable
release first incorporates that patch? Is it included in current
6.15.5, or will it arrive in a later point release?
