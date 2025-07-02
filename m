Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7DDAF1083
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 11:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADB480E8B;
	Wed,  2 Jul 2025 09:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OWh-7wGkqNy; Wed,  2 Jul 2025 09:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21F2E80E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751449772;
	bh=XA4kV62GbuPsXF3xVfIE7JKO7kyc+h0H8JQpdDYlEYs=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PQKkgr9ANH4ABCLrLeYqojVYhZupiaxxPyIDO2/BVPRPnsOs1/5sC4KAeizY1/GuI
	 BWX8+Lm6hmFm9L2Ww/oiPLqujcVMKSb0YEykvCQfS0+Kqv8qXjv2ArIpSa3APFFxoN
	 EZ3rpI3Rwh1czfQpczCrKPQOiceCKe9CXTAWwj1CJNVKMiSjipoAdPWojklIX7lcJg
	 EddNCvRgv+kUmm5VzGV9TH232URmtxXcXKv6bstCbsJryIdw32w1sni32W9yKDUUaL
	 OZiOS/RUojC/G56JkYrW6pFYF2BG9rE/E/tA1YpcUYE6bLdY0AZ+oRI0jTTuNtH6YY
	 sgN5QW5l+ongQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21F2E80E98;
	Wed,  2 Jul 2025 09:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DA17179
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 09:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AB1740930
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 09:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y0Ci9M0KDeMg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Jul 2025 09:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6439B40787
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6439B40787
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6439B40787
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Jul 2025 09:49:29 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-ae361e8ec32so934413866b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Jul 2025 02:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751449767; x=1752054567;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XA4kV62GbuPsXF3xVfIE7JKO7kyc+h0H8JQpdDYlEYs=;
 b=ohq2UegTRlxVxahXLSsrL9Hl3cu/uDpMMpKlibtqXDjU5L9LT/hogX/9MLsoa3phTB
 XMui1ybktqhRSsmmR0XDAQSwpTeNCg4k6442DdJmbQeIO65jSEW7+voo+furLVttCG+V
 jkVzPjb8EyzoVFiiwHRCbBl+yh+4CZDH/Xg8LIOFCXHWziDWXSlaLIqWmzFCyttHhkid
 0qPugrd0CZjqr9mBqTohsumJsudTKbnGdRGs0ATaKbDCeDZCURqrKEnIzqf+b5Itj/Gc
 HlgW8cqVYaCxVBarTW3QOqDRshR2PRSR7PtQBYBksfShWAfTqPrbDGzzNKkNlFFgAzPn
 5veg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkxF0d8RHHkv1R2bHT19k26VGaKqNRWXdCz7wQ+kg4hs0xIxCuH0rqkr9YNzRym2tDhMSwv6mqyRklimncY7g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzfCkLUQIYTXJzHnjGUD/bkZZwUNyxGsGDEy0UPzyOxgHNdoRwf
 A1eoZ19CFRCFAoTYSCVt7PF7ZFlS58ar6GfSE6rrFDou4ZWGtzx23JN63heWujQ3GMVhHgMkIM4
 Bpy84FZpfyCABRv9ohqSGcY5yP9lgqISGxYWnNH1p
X-Gm-Gg: ASbGncvkqKmsDhxdd3eZOcHz6QCiDPMvWbaMTZhUhtt0WYNbf6t3RUxkmwSU9UXDJlS
 M1PFYBr/2UnAJXNIUDm4hrFBiNvpZ7J3Kr63MrYHwTpdGjKJYKss57S3QwucvzRJ78PHQkC6eF1
 R5LaoIqY4mf5OEU+XuuntQKGBa66ODjuRNR6iM+5BLHnOfJkJfiWscBWw=
X-Google-Smtp-Source: AGHT+IGQVdGzbWklOW0HK5F7BREUrFJxaW+J8O42Zpbiw3jmWElX2XHrNgWH0DB8FJ38y112IwvwAFEx9SBX2hP11xg=
X-Received: by 2002:a17:907:7fa3:b0:adb:41e4:8c73 with SMTP id
 a640c23a62f3a-ae3c2d56586mr226600566b.55.1751449767139; Wed, 02 Jul 2025
 02:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
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
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
In-Reply-To: <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 2 Jul 2025 11:48:59 +0200
X-Gm-Features: Ac12FXwkxKwefgLXSEGylK356ZNJGxoSse_2V1q2esdvDMykui_CAnYU8NXfe-k
Message-ID: <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
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
 d=gooddata.com; s=google; t=1751449767; x=1752054567; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XA4kV62GbuPsXF3xVfIE7JKO7kyc+h0H8JQpdDYlEYs=;
 b=TeDHJyUv6xi0hxzkYN9E91fFPZSMv1lpwwI0P729aFxwnkgQHXjCGmLxzmGedfIhWK
 1F7WrzSqtaUqB0o9HGO3km+Om67Xzgo+tzFGY9yzqpiUGNmFUTVrMmzCpgi2VQdbY/76
 V19z0BvJvixg9itYENemzoD8q4z6grfMi5qWU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=TeDHJyUv
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
> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
> >> On 6/30/2025 2:56 PM, Jacob Keller wrote:
> >>> Unfortunately it looks like the fix I mentioned has landed in 6.14, s=
o
> >>> its not a fix for your issue (since you mentioned 6.14 has failed
> >>> testing in your system)
> >>>
> >>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*rc=
*
> >>> 743bbd93cf29f653fae0e1416a31f03231689911
> >>> v6.14~251^2~15^2~2
> >>>
> >>> I don't see any other relevant changes since v6.14. I can try to see =
if
> >>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
> >>> systems here.
> >>
> >> On my system I see this at boot after loading the ice module from
> >>
> >> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Diec=
>
> >>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]
> >> func:ice_get_irq_res
> >>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565 [=
ice] func:ice_init_arfs
> >>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 [i=
ce] func:ice_vsi_alloc_ring_stats
> >>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 [i=
ce] func:ice_vsi_alloc_ring_stats
> >>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398 [=
ice] func:ice_vsi_alloc_rings
> >>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422 [=
ice] func:ice_vsi_alloc_rings
> >>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109 [=
ice] func:ice_vsi_alloc_q_vector
> >>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40 [=
ice] func:ice_fwlog_alloc_ring_buffs
> >>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493 [=
ice] func:ice_setup_rx_ring
> >>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680 [=
ice] func:ice_alloc_mapped_page
> >>
> >> Its about 1GB for the mapped pages. I don't see any increase moment to
> >> moment. I've started an iperf session to simulate some traffic, and I'=
ll
> >> leave this running to see if anything changes overnight.
> >>
> >> Is there anything else that you can share about the traffic setup or
> >> otherwise that I could look into?  Your system seems to use ~2.5 x the
> >> buffer size as mine, but that might just be a smaller number of CPUs.
> >>
> >> Hopefully I'll get some more results overnight.
> >
> > The traffic is random production workloads from VMs, using standard
> > Linux or OVS bridges. There is no specific pattern to it. I haven=E2=80=
=99t
> > had any luck reproducing (or was not patient enough) this with iperf3
> > myself. The two active (UP) interfaces are in an LACP bonding setup.
> > Here are our ethtool settings for the two member ports (em1 and p3p1)
> >
>
> I had iperf3 running overnight and the memory usage for
> ice_alloc_mapped_pages is constant here. Mine was direct connections
> without bridge or bonding. From your description I assume there's no XDP
> happening either.

Yes, no XDP in use.

BTW the allocinfo after 6days uptime:
# uptime ; sort -g /proc/allocinfo| tail -n 15
 11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.07
   102489024   533797 fs/dcache.c:1681 func:__d_alloc
   106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
   117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
   134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_alloc_=
page
   162783232     7656 mm/slub.c:2452 func:alloc_slab_page
   189906944    46364 mm/memory.c:1056 func:folio_prealloc
   499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
   530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
   625876992    54186 mm/slub.c:2450 func:alloc_slab_page
   838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_pmd
  1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
  1056710656   257986 mm/memory.c:1054 func:folio_prealloc
  1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
  1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
  3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
[ice] func:ice_alloc_mapped_page

>
> I guess the traffic patterns of an iperf session are too regular, or
> something to do with bridge or bonding.. but I also struggle to see how
> those could play a role in the buffer management in the ice driver...
