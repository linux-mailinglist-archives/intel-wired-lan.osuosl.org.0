Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7EEAEE5B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 19:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A796984882;
	Mon, 30 Jun 2025 17:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6IFnqUIKDKX6; Mon, 30 Jun 2025 17:24:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E66AF84877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751304289;
	bh=P0AwdNwJXegEGdFJxZKKyholIhNqunuiYBoTBFgv0Zo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E+yHjF201mu5bdbaDOCJyo6LdqbQX3+TJ9bhLJMeXJmTGxXI7MQR36ZMuUdnv6bo2
	 896rp8YoJCW6oNuisHE7P1i5CLVrE8VwhUqUa5oQXkwrZLuDKhusF6183P8jIYxNe1
	 a4PkMCdxpfEmdoMzZCzblAwVl8EgEmRhloYa/MeGWULzZ0ejOn5B0UL3an+t5hxZ89
	 +nDb+LkWnVDHVRoCxk39RPJAhqRu1V3bTQE/IjpbYifvTzIN6wEQOdkcD68kuv9uV7
	 Ga8J32RJ8KuNgzJLL0aBp0SoGsWfmjuME/TIZVJVGXAceeaUr1M5YUHiwWf8BiaTBS
	 xGr9pvCQ6UXEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E66AF84877;
	Mon, 30 Jun 2025 17:24:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D3C5B1C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9F0284873
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vkpr2kTQ0zqA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 17:24:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C2EB083F95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2EB083F95
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2EB083F95
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:24:47 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-60cc11b34f6so2698463a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 10:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751304285; x=1751909085;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P0AwdNwJXegEGdFJxZKKyholIhNqunuiYBoTBFgv0Zo=;
 b=vP4CMCL8jHlYc+kpRoPNh6wlSLiC4fjqZM42I6NKrSDm4d3FTFF2rxSSUwaB89KHtX
 1kuWxYemVSZWhwmyN93xOkhltcusDkXVmfsFudsPQcHWdhoxidfBVDY1Cpqajjl0XDsw
 Azz2cyzAoTLrbVY1+6kl1n5joXMGPJAspPMp/RqUmclmCAtXyAWA3iAG1HfbIwyDQs4c
 kFOduEFECJLUeqkFjvgeum5GBhz77Upm71pQdyW8ep3eqm7TjUIZvH8gn+Q45y4rC1E8
 MO2Rxd9krCKRnznZhwrA2XeCXAMV3c3gnSu+eNL88ZzuJhWXP9vyufwqhyC191t+NBGp
 32ZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQMG0quJzxsCo1nPb203CNIUQSbdiVyEVocWCtOsHnzPaGmotdTIBg/4ItSvSaaGSmRDdBQ/QPeib5scfCMI0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwQ37wDQKqH92O60oJuesfyBBnfeiIe+WAKZGyTM00KQl2CDhmC
 dSFJ+fhjINXLV2u/tEIm2cC6O1D3IOCsxAzLu+FFXK5SlznqOIxegA6l8EGFRhVx5sUolZM/lYm
 1kqN04csgzllxllrQn7GEnNGqdhb70Q/z2RaF7AgP
X-Gm-Gg: ASbGncuZPcZTPoLKONoXn+dVQQRmttlpfM/9Ltyc4oGGcn72bcgmxczXHctHoD7SnxR
 Ue8/Aoxe29438jsiGFCJ1XZynr/+2hN37aXWUh9rFgYqxEXLgdmaaHSiZylhOt0pcTNauTFl+gZ
 iUogirQFE1BvG5UO7OnU55LxCfxdXs7RwZi6o4kcHwvd5K
X-Google-Smtp-Source: AGHT+IF1hZHTdy+1QWNaxsP88kIwo7yk1S9ZDY0b1O79X+SNNyp/jPuelKqF7//uU9gPylu9gmUpJiSTjymzDt90VeY=
X-Received: by 2002:a17:907:c89e:b0:ad8:5595:ce07 with SMTP id
 a640c23a62f3a-ae3aa21eaa7mr39545466b.19.1751304285425; Mon, 30 Jun 2025
 10:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
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
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
In-Reply-To: <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 30 Jun 2025 19:24:19 +0200
X-Gm-Features: Ac12FXwpR_TPiOG6XSw-UatB2JBpaB-0RDuYG-PQcru89ZJyZzOlvwfMgNnA48c
Message-ID: <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
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
 d=gooddata.com; s=google; t=1751304285; x=1751909085; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P0AwdNwJXegEGdFJxZKKyholIhNqunuiYBoTBFgv0Zo=;
 b=oHKKwO8VhA+WGfU33YXLyEjE5Q+txtU1Rb7yWlWEJ0fGOaxh5NVqx+1Udhw93XA6me
 JCd6AGdhf4PbUWW1fgLX8hktJZXcjK4rxk7TtLn9RrniacLoN+xS3I1FZaiXkL/7UtnL
 649+nIT666ZY17dCCdG8tSClDtmYlQwpIQWz0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=oHKKwO8V
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
> On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
> >>
> >>>
> >>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
> >>>> Great, please send me a link to the related patch set. I can apply t=
hem in
> >>>> our kernel build and try them ASAP!
> >>>
> >>> Sorry if I'm repeating the question - have you tried
> >>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kernels
> >>> is low enough to use it for production workloads.
> >>
> >> I try it now, the fresh booted server:
> >>
> >> # sort -g /proc/allocinfo| tail -n 15
> >>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
> >>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_alloc_=
pages
> >>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
> >>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inod=
e
> >>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_a=
lloc_page
> >>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
> >>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
> >>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
> >>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
> >>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_=
pmd
> >>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
> >>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> >> [ice] func:ice_alloc_mapped_page
> >>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
> >>
> >
> > The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
> > func:ice_alloc_mapped_page" is just growing...
> >
> > # uptime ; sort -g /proc/allocinfo| tail -n 15
> >  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.81
> >
> > # sort -g /proc/allocinfo| tail -n 15
> >     85216896   443838 fs/dcache.c:1681 func:__d_alloc
> >    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
> >    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
> >    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_al=
loc_page
> >    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
> >    186793984    45604 mm/memory.c:1056 func:folio_prealloc
> >    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
> >    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_p=
md
> >    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
> >   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
> >   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
> >   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
> >   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> > [ice] func:ice_alloc_mapped_page
> >
> ice_alloc_mapped_page is the function used to allocate the pages for the
> Rx ring buffers.
>
> There were a number of fixes for the hot path from Maciej which might be
> related. Although those fixes were primarily for XDP they do impact the
> regular hot path as well.
>
> These were fixes on top of work he did which landed in v6.13, so it
> seems plausible they might be related. In particular one which mentions
> a missing buffer put:
>
> 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
>
> It says the following:
> >     While at it, address an error path of ice_add_xdp_frag() - we were
> >     missing buffer putting from day 1 there.
> >
>
> It seems to me the issue must be somehow related to the buffer cleanup
> logic for the Rx ring, since thats the only thing allocated by
> ice_alloc_mapped_page.
>
> It might be something fixed with the work Maciej did.. but it seems very
> weird that 492a044508ad ("ice: Add support for persistent NAPI config")
> would affect that logic at all....

I believe there were/are at least two separate issues. Regarding
commit 492a044508ad (=E2=80=9Cice: Add support for persistent NAPI config=
=E2=80=9D):
* On 6.13.y and 6.14.y kernels, this change prevented us from lowering
the driver=E2=80=99s initial, large memory allocation immediately after ser=
ver
power-up. A few hours (max few days) later, this inevitably led to an
out-of-memory condition.
* Reverting the commit in those series only delayed the OOM, it
allowed the queue size (and thus memory footprint) to shrink on boot
just as it did in 6.12.y but didn=E2=80=99t eliminate the underlying 'leak'=
.
* In 6.15.y, however, that revert isn=E2=80=99t required (and isn=E2=80=99t=
 even
applicable). The after boot allocation can once again be tuned down
without patching. Still, we observe the same increase in memory use
over time, as shown in the 'allocmap' output.
Thus, commit 492a044508ad led us down a false trail, or at the very
least hastened the inevitable OOM.
