Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE00AE9703
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 09:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95B3B808C1;
	Thu, 26 Jun 2025 07:42:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XauvrudIyYkC; Thu, 26 Jun 2025 07:42:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0050D80967
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750923771;
	bh=kmlQgV9vWUgrOGrYQ1qTDZBBqbmkBrpQQvLdyRNMshw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BpZTTHdvbXLemHXqLqyzunpSQQ4Khz0qNjXrazbpSk0AFYD0xBzppsoB0w89Hihl4
	 g6ICG+hEwlnZ8aKswOwML9Hzj4zhJJH+QvZTxkfl6HLwv3MiIyOEviLURDHwbuDdB8
	 jKLJ/1J1WKOaAu/XEDPbfoymrlDHE9Pf1cFFY1pkU/ei5Xt0DazRA/0kQssOiglu+a
	 DHWjZnmGETLVZbkntH3KBomcbTlO2sJCfO62vss+MJRblZU4uPariwWG22LzNMtmzN
	 yJGamRnQ+WnPRcQpXff80JKoZIwcP5ZCyrbsK03eFCDI/LpSNCP8e+WWryzs8y4WfD
	 TpFlk6E/Stv2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0050D80967;
	Thu, 26 Jun 2025 07:42:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B654D154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 07:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7C3060BDC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 07:42:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rXYrukA2f9Z2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 07:42:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9BF38605F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BF38605F0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BF38605F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 07:42:47 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-ae0de1c378fso16246266b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 00:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750923765; x=1751528565;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kmlQgV9vWUgrOGrYQ1qTDZBBqbmkBrpQQvLdyRNMshw=;
 b=Cegg65wcZ/w31CGwVGZHWsTRkbMZ4ZHm7cmR7T/ZoPOF+IHQUX8pg6R7X9sYpN/0bm
 lnWu+VVO//XusTaaTvFvfA5/1xb3QNW+4uEnmf9gYcvR1x9cxRmMLmVVbuLhdndS6/JX
 iIRhGyxuFoyqmbAzjTVGaLh1X72F+vKlpjrpWniYJDBSUJMu16dKOUa40HhVAuKASAr3
 QPtQXgtXKp7aO8KM8xMcH6KXHVReCaVVhkh6mPH2UMLKUC/ZJu39FePMVhlL80bM9tsT
 Lt/eKlng03Ogy6WU9mT0S0+ubX5O3gSlh/FDl9uE6wije9ge89QrZHkSFoTzyhU56ujV
 z6kg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTr+EC4CUltfaMGA6hi5J+xxUFrGBPzVKLOTDo2mnM2YhwKhL8L3tZV0jM6CMF3hFXvC8OyDsbKRbWzCOShPo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzuqHkY67877JGnQDjY+Mdm50bChcLA3YOFEZdogw4RNfGEVKNm
 GkUTtyV4k6C3DPlsr4MVhcCmbRzGLVgCzH77JWBRo4RvFUJ367y90wvr1pyxzgwW04LInTUknsb
 Rg2rSuMhxv1MnZwz+7XHp44Pl+ZO/YxZwI6QSw/i+
X-Gm-Gg: ASbGncsS96Eh6/jB2uZzQ/zXRT2nRjBcZNX3ME2fXWTi38C8Cl9FAoyQHX56wdIUXpH
 onRqzYXYw+y+9siB8usDe5LidFyKiR01toU002Bs8QU4O71D7oMzfAkZBQVzXtuCOLmxT5oAN/Z
 gsiFLb6p6x7r2PChzcJIS59u6rzdsYnEvsAZNYNskOhuBQ
X-Google-Smtp-Source: AGHT+IGQ29SGdr4U8XdsEp043TI4qqT4doANfCqlH4050quc3HJ8Dr4GriJAlIEzNsBr4wRg0VBwCQ401xKutfq2aME=
X-Received: by 2002:a17:906:c452:b0:ae0:16db:1b62 with SMTP id
 a640c23a62f3a-ae0beb852cdmr433825266b.59.1750923765153; Thu, 26 Jun 2025
 00:42:45 -0700 (PDT)
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
In-Reply-To: <20250625132545.1772c6ab@kernel.org>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Thu, 26 Jun 2025 09:42:19 +0200
X-Gm-Features: Ac12FXyfYBwNw7r-sTtnJ3Pq-xINRVOqJANIwsOhTjNx6hz7HmeFqHgFcDwpzd8
Message-ID: <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
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
 d=gooddata.com; s=google; t=1750923765; x=1751528565; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kmlQgV9vWUgrOGrYQ1qTDZBBqbmkBrpQQvLdyRNMshw=;
 b=Ctb7ub6lEjNn92J9cCUqRXw0AI+2PCOBPElFL7jPABzqHFtqggEacBoz7eG+ke5Hjx
 k00Vii1k7aepFtMRVcnGlSUuDhEnQAcerWfj0ecuziXoJJNtWoE4IZnyQIawkEwhtIVh
 e5FTMAj8m3K6+W2TbtgmFZp5VnD3Y3TVuyxKk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=Ctb7ub6l
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
> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
> > Great, please send me a link to the related patch set. I can apply them=
 in
> > our kernel build and try them ASAP!
>
> Sorry if I'm repeating the question - have you tried
> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kernels
> is low enough to use it for production workloads.

I try it now, the fresh booted server:

# sort -g /proc/allocinfo| tail -n 15
    45409728   236509 fs/dcache.c:1681 func:__d_alloc
    71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
    71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_alloc_pages
    85098496     4486 mm/slub.c:2452 func:alloc_slab_page
   115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
   134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_alloc_=
page
   141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
   191594496    46776 mm/memory.c:1056 func:folio_prealloc
   360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
   444076032    33790 mm/slub.c:2450 func:alloc_slab_page
   530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
   975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_pmd
  1022427136   249616 mm/memory.c:1054 func:folio_prealloc
  1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
[ice] func:ice_alloc_mapped_page
  1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio


>
> > st 25. 6. 2025 v 16:03 odes=C3=ADlatel Przemek Kitszel <
> > przemyslaw.kitszel@intel.com> napsal:
> >
> > > On 6/25/25 14:17, Jaroslav Pulchart wrote:
> > > > Hello
> > > >
> > > > We are still facing the memory issue with Intel 810 NICs (even on l=
atest
> > > > 6.15.y).
> > > >
> > > > Our current stabilization and solution is to move everything to a n=
ew
> > > > INTEL-FREE server and get rid of last Intel sights there (after Int=
el's
> > > > CPU vulnerabilities fuckups NICs are next step).
> > > >
> > > > Any help welcomed,
> > > > Jaroslav P.
> > > >
> > > >
> > >
> > > Thank you for urging us, I can understand the frustration.
> > >
> > > We have identified some (unrelated) memory leaks, will soon ship fixe=
s.
> > > And, as there were no clear issue with any commit/version you have
> > > posted to be a culprit, there is a chance that our random findings co=
uld
> > > help. Anyway going to zero kmemleak reports is good in itself, that i=
s
> > > a good start.
> > >
> > > Will ask my VAL too to increase efforts in this area too.
>
