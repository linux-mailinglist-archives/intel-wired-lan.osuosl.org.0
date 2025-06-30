Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E11AED5CF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 09:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB60B40D2D;
	Mon, 30 Jun 2025 07:35:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qX0LpE4sH6H; Mon, 30 Jun 2025 07:35:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FFE940D48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751268942;
	bh=FJjHWRQFQERSX4N8A4WdlcHVSnGx7v+vOq1gWp3YDfQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ejs7At3LD52MBKzL3KxGeXMoN7iI2o7rx6CuwUtIgLMUR4vPHz6l5rCRv1VBjLk7q
	 EniGA5EkbjOsphj+u4y4SQVm8MRUVG0HOiDewbGPQtgYPGB4se9HD0LWJT2yLcbf20
	 fqyP12yzBlz1BI0LTkRBmijD7vn3h0nifCpjzv+WUeMf9CKw7GktykiVa/zwshgJZZ
	 gR629op9ri0f13ylBfrXEf66LXOSO5YT4zD8l/vZeVurJpO9nby2i4+m5EASgivcr2
	 U8f0epV7eV57lOMwuOQm7QQaMBArAAyb1xD+vX1S5hMZCUfihdNowSBWAMVpuwPzpP
	 cGcf0WSMHHykQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FFE940D48;
	Mon, 30 Jun 2025 07:35:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5551DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 07:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB0A66133C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 07:35:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sqMflVUV8yK3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 07:35:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52b; helo=mail-ed1-x52b.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CE0C660EFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE0C660EFE
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE0C660EFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 07:35:37 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-6070293103cso3018373a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 00:35:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751268935; x=1751873735;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FJjHWRQFQERSX4N8A4WdlcHVSnGx7v+vOq1gWp3YDfQ=;
 b=auS2LgIgFxselLv6Z8m6yIEHjZlxYRe4ccWmNXbaRyy+K1cDTdYNup13ssKaGDpJtI
 jkz8LSsYNQGv1OqiVTPoGss5oAYiV9TOGWCTTlzsN1WQYOY1hQ7m//UlYyEfo01I1HbC
 gNy+zdoAyf7DUTpCHrrGH+40jgodndaZPAye9jLyLCXHHpabtZ75HOb2RFTm2bQWJVcs
 4U5ftqxW8fleo5CW66P16DaS9/r0i8ciJnJ3xxR0njaWHCxmz4qkc3sVAkd2IfWX9doU
 D02FlbAlf4nowckxR/VCLglt7oWF353ohlozz4aOLNzHqXHvHbkc0kyOeI3sPKIqvKaS
 potg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtmOx9qKqj7fYViBHR2f85QjFR6y8/okjpH+XznKTe+jwneVaM0Iphn8VHnMMYv10IJ4wTOxjJXGKQHnkAios=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwlAi3X8/HArstl8bT+yJLLzaed0naCFu1Xc/KVn+4mnv+ACxwm
 bitpOpdzjvNpdEmPc8J3O3Kv4PLLF0J5dVUUOdoR4x0vR+uGVWpTZbcWa9EnqHMHgFEtSml9aDe
 1H9X6LWYCPz2LClIB+U/Hs2w+UenkiY8Vsrzv8HQV
X-Gm-Gg: ASbGncsq4s5uAmFTN3Q+35/z5xTq44ufbHSKVaXX76yy3Ij+d8bcwrEeCruspwpEsXP
 Jf5Lwr5+/5nzGQ4q+8lHjQksfpkERyWuNc/8zobczALqRvXzSUzcnZZdw7oPxD49vFsaYzJ82Ky
 BM7x6AiPoScFBW08lsnvE5Iun5wVE12N0c4/0+LgtGzCHz
X-Google-Smtp-Source: AGHT+IFMO9vHwLlWhqFkVz4+FGrfY8iZ2eqXMm803NsyFasOLkn+3FGD3IdYRV5I0g/CF4qb6/D0+Zkfi0DytQwrHaI=
X-Received: by 2002:a17:907:9d17:b0:ae0:ad8c:a559 with SMTP id
 a640c23a62f3a-ae34fd336d5mr1176803866b.4.1751268935410; Mon, 30 Jun 2025
 00:35:35 -0700 (PDT)
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
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
In-Reply-To: <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Mon, 30 Jun 2025 09:35:09 +0200
X-Gm-Features: Ac12FXy0zTWCIUI055ElkQjsOkkMKHSQo1G-_vNnBe4EjUhDGc4Z9aQ9tsVUJsk
Message-ID: <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Damato,
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
 d=gooddata.com; s=google; t=1751268935; x=1751873735; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FJjHWRQFQERSX4N8A4WdlcHVSnGx7v+vOq1gWp3YDfQ=;
 b=CiDs1Wy2Fd3ycWfp5TsccOWw9dZjCyNRpyiKYpZljudBhxPI3d3KY2eo+x4XfycO/U
 7I8sbNJIDLxu+7GolTZzoDl+AXNpeQI3T5TwQl9vcV8chhjFUZf8Q7e7edCvGimgcI97
 3vv+b4K8wvB+2E4Pfp5Uj8ZePLjfklYtt+Aew=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=CiDs1Wy2
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
> >
> > On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
> > > Great, please send me a link to the related patch set. I can apply th=
em in
> > > our kernel build and try them ASAP!
> >
> > Sorry if I'm repeating the question - have you tried
> > CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kernels
> > is low enough to use it for production workloads.
>
> I try it now, the fresh booted server:
>
> # sort -g /proc/allocinfo| tail -n 15
>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_alloc_pag=
es
>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_allo=
c_page
>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_pmd
>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> [ice] func:ice_alloc_mapped_page
>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
>

The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
func:ice_alloc_mapped_page" is just growing...

# uptime ; sort -g /proc/allocinfo| tail -n 15
 09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.81

# sort -g /proc/allocinfo| tail -n 15
    85216896   443838 fs/dcache.c:1681 func:__d_alloc
   106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
   116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
   134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_alloc_=
page
   143556608     6894 mm/slub.c:2452 func:alloc_slab_page
   186793984    45604 mm/memory.c:1056 func:folio_prealloc
   362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
   530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
   598237184    51309 mm/slub.c:2450 func:alloc_slab_page
   838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_pmd
   929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
  1034657792   252602 mm/memory.c:1054 func:folio_prealloc
  1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
  1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
  2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681
[ice] func:ice_alloc_mapped_page

>
> >
> > > st 25. 6. 2025 v 16:03 odes=C3=ADlatel Przemek Kitszel <
> > > przemyslaw.kitszel@intel.com> napsal:
> > >
> > > > On 6/25/25 14:17, Jaroslav Pulchart wrote:
> > > > > Hello
> > > > >
> > > > > We are still facing the memory issue with Intel 810 NICs (even on=
 latest
> > > > > 6.15.y).
> > > > >
> > > > > Our current stabilization and solution is to move everything to a=
 new
> > > > > INTEL-FREE server and get rid of last Intel sights there (after I=
ntel's
> > > > > CPU vulnerabilities fuckups NICs are next step).
> > > > >
> > > > > Any help welcomed,
> > > > > Jaroslav P.
> > > > >
> > > > >
> > > >
> > > > Thank you for urging us, I can understand the frustration.
> > > >
> > > > We have identified some (unrelated) memory leaks, will soon ship fi=
xes.
> > > > And, as there were no clear issue with any commit/version you have
> > > > posted to be a culprit, there is a chance that our random findings =
could
> > > > help. Anyway going to zero kmemleak reports is good in itself, that=
 is
> > > > a good start.
> > > >
> > > > Will ask my VAL too to increase efforts in this area too.
> >
