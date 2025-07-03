Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 842B7AF6AB4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 08:47:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDC5F61171;
	Thu,  3 Jul 2025 06:47:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWYQIV3uYYmf; Thu,  3 Jul 2025 06:47:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8ED661163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751525232;
	bh=PDqOAfgT3Oy9KpWbVwjw3Lb+O0iMjFXu+dOXEH7JNSc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kBVuR8BinHL7V41H8hLpSP46+xBuE/AMv3hTE/ezALKSmyqfdSjMw9ObiEMh0CQZg
	 KdFRbYjxbkCGDXsIUTIknVmahOz7rNfaDHvk6tao+btmKt/NESZUvGZygfZo2gLku5
	 yuesdNVukCUWx2JpCNVXbd+Y51Uw39UrtaH+jSZYJMMl9HMUUOyYAhrIPf9L9C4YNK
	 3DUzhBmfRNQTTRFbc6LaWrZnP+I7y+VwHcSL34RynBzC5kTgHmzREyJr9Nh/fXAALF
	 gjFv4Ofzm/X2ZjiVLsQ83GH9vOmzBf7jmpNfoCabQPbsAabjm6zHhyiNmhY59zByB6
	 ufZJ+s6W0xGZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8ED661163;
	Thu,  3 Jul 2025 06:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D561E128
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 06:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6B1B81EAD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 06:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jIeseRo6p-Wz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 06:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A368781EAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A368781EAB
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A368781EAB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 06:47:07 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-60c3aafae23so1414886a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Jul 2025 23:47:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751525225; x=1752130025;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PDqOAfgT3Oy9KpWbVwjw3Lb+O0iMjFXu+dOXEH7JNSc=;
 b=SiutQO1aRxY/fPskWs2exMu4W5/A8n4FGLZ6BTkEZcarURJ80wPjTlfXsGMmix7JnZ
 VpvpQYBhd+JF9gcJM156kvW88YgXWQH9Oame0jSqEsZpARglbLdgUg5gOAv7KyluLPVK
 pJfXlcmQ8X62s60pYS7bT0m1FYsYAW8CvY9ua2Y7twBWI5jVRXRrVu7dkKsnr+5gP8WI
 3S9RHL98vvdZbP/L0g3uUfT+ZT7h3D8LC+8G5pnGF+GBQgJPSPzzDGk7Am8PwniBHv9y
 yHqmfU3n/qkgJ0vyrj2d2U7MjhnJ+FNa5yQjhBKbZz9Dm2kyyp7d4+gL9DGKkgruWBeW
 MloA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUE2XQXv7IueqSmlu/pKwA0KWB1L6EOBOrDkmRqVyNqqR1TN2dF8YfgiPl3vWsQ2PVBj6C4k+c7m7w331MiCYM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwQBHhCqxY2RgkSnS8WNg4dmAOy60GAhCTmmH3mqo3+t/03I6vG
 G8Ym4G+Z3EE8H8D4CFFMNHKAFU4dtmRwDXc4givRA/ZOd/IFVZMrnt50vRCaRXG7ir12icECsqi
 PgGwLkgU3CL6oNXSUzNe3atE3R5OdZhiEwPBd2k8i
X-Gm-Gg: ASbGncs1XH80GXCJL29aRaVaFxZG7FeAGE5UldFm5Ve4obyf2LwfJvmCdg/ajzws/zf
 Y2LRk7NOfNKiMzDiKoOrRcDUdpcIgpO2BsNxB0iglEclR2GdF8L6LVrUjNcSXpQmkQH4s2E2Sge
 aAOOKkwifouip1hbOOfGM+yBEQia116rYVfKTYfnb+qUBK
X-Google-Smtp-Source: AGHT+IGBZUT7WCdiwrLSQBtH7lC8SQvHRPw9yd56kqSKdGJOCBS49gi/T/sZg6mX9fJkz6q4OJHjjJib4f41n/vvE3Y=
X-Received: by 2002:a17:907:84a:b0:ae0:e1ed:d1a0 with SMTP id
 a640c23a62f3a-ae3dcabcb04mr185354766b.8.1751525225322; Wed, 02 Jul 2025
 23:47:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
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
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
In-Reply-To: <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Thu, 3 Jul 2025 08:46:38 +0200
X-Gm-Features: Ac12FXz0G_nxXDbxTR_lWeIinm5sVKDrIbLME8sCXpuZH0NLRJmD7kJagG_iKoU
Message-ID: <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
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
 d=gooddata.com; s=google; t=1751525225; x=1752130025; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PDqOAfgT3Oy9KpWbVwjw3Lb+O0iMjFXu+dOXEH7JNSc=;
 b=GD12k56gmRmrZcKyS0FKtrIH8ZALutRe5pyOY+/6mdajQrhpNYq+rdibN5MJc4Saay
 4X0/Qixvx+PNfUJvEvQL5D9drv3xZiTYvgtNeuA0yV3ahlxhUh0beQupK5swyTAk7sk3
 83bbJh9R+zZ9qxOjnmG3LPmVASWvpeptKF9/Q=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=GD12k56g
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
> On 7/2/2025 2:48 AM, Jaroslav Pulchart wrote:
> >>
> >> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
> >>>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
> >>>>> Unfortunately it looks like the fix I mentioned has landed in 6.14,=
 so
> >>>>> its not a fix for your issue (since you mentioned 6.14 has failed
> >>>>> testing in your system)
> >>>>>
> >>>>> $ git describe --first-parent --contains --match=3Dv* --exclude=3D*=
rc*
> >>>>> 743bbd93cf29f653fae0e1416a31f03231689911
> >>>>> v6.14~251^2~15^2~2
> >>>>>
> >>>>> I don't see any other relevant changes since v6.14. I can try to se=
e if
> >>>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
> >>>>> systems here.
> >>>>
> >>>> On my system I see this at boot after loading the ice module from
> >>>>
> >>>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=3Di=
ec>
> >>>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]
> >>>> func:ice_get_irq_res
> >>>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565=
 [ice] func:ice_init_arfs
> >>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 =
[ice] func:ice_vsi_alloc_ring_stats
> >>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 =
[ice] func:ice_vsi_alloc_ring_stats
> >>>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398=
 [ice] func:ice_vsi_alloc_rings
> >>>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422=
 [ice] func:ice_vsi_alloc_rings
> >>>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109=
 [ice] func:ice_vsi_alloc_q_vector
> >>>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40=
 [ice] func:ice_fwlog_alloc_ring_buffs
> >>>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493=
 [ice] func:ice_setup_rx_ring
> >>>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680=
 [ice] func:ice_alloc_mapped_page
> >>>>
> >>>> Its about 1GB for the mapped pages. I don't see any increase moment =
to
> >>>> moment. I've started an iperf session to simulate some traffic, and =
I'll
> >>>> leave this running to see if anything changes overnight.
> >>>>
> >>>> Is there anything else that you can share about the traffic setup or
> >>>> otherwise that I could look into?  Your system seems to use ~2.5 x t=
he
> >>>> buffer size as mine, but that might just be a smaller number of CPUs=
.
> >>>>
> >>>> Hopefully I'll get some more results overnight.
> >>>
> >>> The traffic is random production workloads from VMs, using standard
> >>> Linux or OVS bridges. There is no specific pattern to it. I haven=E2=
=80=99t
> >>> had any luck reproducing (or was not patient enough) this with iperf3
> >>> myself. The two active (UP) interfaces are in an LACP bonding setup.
> >>> Here are our ethtool settings for the two member ports (em1 and p3p1)
> >>>
> >>
> >> I had iperf3 running overnight and the memory usage for
> >> ice_alloc_mapped_pages is constant here. Mine was direct connections
> >> without bridge or bonding. From your description I assume there's no X=
DP
> >> happening either.
> >
> > Yes, no XDP in use.
> >
> > BTW the allocinfo after 6days uptime:
> > # uptime ; sort -g /proc/allocinfo| tail -n 15
> >  11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.07
> >    102489024   533797 fs/dcache.c:1681 func:__d_alloc
> >    106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
> >    117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
> >    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_al=
loc_page
> >    162783232     7656 mm/slub.c:2452 func:alloc_slab_page
> >    189906944    46364 mm/memory.c:1056 func:folio_prealloc
> >    499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >    625876992    54186 mm/slub.c:2450 func:alloc_slab_page
> >    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_p=
md
> >   1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
> >   1056710656   257986 mm/memory.c:1054 func:folio_prealloc
> >   1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
> >   1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
> >   3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> > [ice] func:ice_alloc_mapped_page
> >
> I have a suspicion that the issue is related to the updating of
> page_count in ice_get_rx_pgcnt(). The i40e driver has a very similar
> logic for page reuse but doesn't do this. It also has a counter to track
> failure to re-use the Rx pages.
>
> Commit 11c4aa074d54 ("ice: gather page_count()'s of each frag right
> before XDP prog call") changed the logic to update page_count of the Rx
> page just prior to the XDP call instead of at the point where we get the
> page from ice_get_rx_buf(). I think this change was originally
> introduced while we were trying out an experimental refactor of the
> hotpath to handle fragments differently, which no longer happens since
> 743bbd93cf29 ("ice: put Rx buffers after being done with current
> frame"), which ironically was part of this very same series..
>
> I think this updating of page count is accidentally causing us to
> miscount when we could perform page-reuse, and ultimately causes us to
> leak the page somehow. I'm still investigating, but I think this might
> trigger if somehow the page pgcnt - pagecnt_bias becomes >1, we don't
> reuse the page.
>
> The i40e driver stores the page count in i40e_get_rx_buffer, and I think
> our updating it later can somehow get things out-of-sync.
>
> Do you know if your traffic pattern happens to send fragmented frames? I

Hmm, I check the
* node_netstat_Ip_Frag* metrics and they are empty(do-not-exists),
* shortly run "tcpdump -n -i any 'ip[6:2] & 0x3fff !=3D 0'" and nothing was=
 found
looks to me like there is no fragmentation.

> think iperf doesn't do that, which might be part of whats causing this
> issue. I'm going to try to see if I can generate such fragmentation to
> confirm. Is your MTU kept at the default ethernet size?

Our MTU size is set to 9000 everywhere.

>
> At the very least I'm going to propose a patch for ice similar to the
> one from Joe Damato to track the rx busy page count. That might at least
> help track something..
>
> Thanks,
> Jake
