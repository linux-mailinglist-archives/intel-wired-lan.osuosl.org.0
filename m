Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51644910CAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 18:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAE12615F3;
	Thu, 20 Jun 2024 16:29:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vg_n522g3clx; Thu, 20 Jun 2024 16:29:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F9C5607A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718900969;
	bh=/moaf2TCG5+ywsF44roFMcGuf4MGqCAfYcBvfJ2sU2s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gWzKANtNxbxuyaNVyVKEL+iYTDPQH3t+0SQubuoTuiIsRidheVlCkWmxhI5R+xrwk
	 ZeYOpaaHo3vq9OdRZawg7VsrwKUQTYXoIIQEvK6+Jp2lEs63rQc6P2Vz69deZXnvwO
	 rQMP68BLy/tMg//b8xZ13xN4ITW9OagLdYjRNcGdWPGsIMvMg1Ew89TjLRFOBhZ/Td
	 3NCMLDq54f1EeP/jCBUHbHkes8QULxMG7kyUZa9tzgTpFTpFo7LXemCMKY9rWporOd
	 LBdTWJv3raI0VA8JKuJTG4ECcGlKOQJm73z7lmmsKL1PG0xgIfDEXWL/OR1xMR2z0l
	 0NlnB1k7Av/NA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F9C5607A1;
	Thu, 20 Jun 2024 16:29:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DAC81BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 16:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18E0260739
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 16:29:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lRKyCBGiPX8P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 16:29:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2b; helo=mail-qv1-xf2b.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F223660717
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F223660717
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F223660717
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 16:29:25 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id
 6a1803df08f44-6b5100040bdso5455366d6.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 09:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718900965; x=1719505765;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=/moaf2TCG5+ywsF44roFMcGuf4MGqCAfYcBvfJ2sU2s=;
 b=V9LmMgkoqZ4RSdDETe7kL4SecnobG5jAAkhXv3DUEgt/YS1EFmu+Pf1tGB/+KKSvec
 /oCIj5NlGMceZOig/wfsVuQD4INnvM91DUydz0KAs18IuHl8pjNM6odC3mJdtHgJcs8N
 JRAGF+t0v29BV+H7JkqaRs6jup68q1qGlmQk7rsJIOVBzS4eLpmOjXO/xV2STpBnuBC2
 6B2IiMu4BPo3kv0VyFiD40duNGMPkVB3LJVIIheBEuFI3BToMFrBgIYYX86Yr0kKiRpY
 uwM9Ux+CzvCcMv4FI4jM9l8bE1zhBC4FIxQRPexOAGeZ75YOoBTFUjTYDbJ/YIZP0hyf
 jIKg==
X-Gm-Message-State: AOJu0YzdcIfR95S1zLiLjjF15lZwH7dYJ/A2nBSKuYKvptBZGsr3d4Rc
 0pBcL9xj00QlEkExk0ibTyIn0bSFnFtf5LcLI6Q5hREBWuYkpUTg
X-Google-Smtp-Source: AGHT+IExIWEOLoNqujKEdH8OtoEQO8gB0wbKNkK45PqbENZ1gMTxB6z0poubX+bqomq2hSPXOQV7Yg==
X-Received: by 2002:ad4:4dc7:0:b0:6b2:da77:9a42 with SMTP id
 6a1803df08f44-6b501e24194mr60283856d6.16.1718900964484; 
 Thu, 20 Jun 2024 09:29:24 -0700 (PDT)
Received: from localhost (56.148.86.34.bc.googleusercontent.com.
 [34.86.148.56]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6b2a5bf23f6sm89986356d6.8.2024.06.20.09.29.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Jun 2024 09:29:23 -0700 (PDT)
Date: Thu, 20 Jun 2024 12:29:23 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Message-ID: <667458e38c879_2b190d294f5@willemb.c.googlers.com.notmuch>
In-Reply-To: <c38e22b5-090c-4e9f-80aa-37806aed5eaa@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
 <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
 <ad06d2bb-df1d-41cd-8e5a-8758db768f74@intel.com>
 <66707cb3444bd_21d16f294b0@willemb.c.googlers.com.notmuch>
 <c38e22b5-090c-4e9f-80aa-37806aed5eaa@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718900965; x=1719505765; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/moaf2TCG5+ywsF44roFMcGuf4MGqCAfYcBvfJ2sU2s=;
 b=V3b2GwFM16ONwk2UE5qzVVnQn6FIL2IwvkiPAqzTF6bqTai56x3XpWI+f0FXoaVLOv
 p8BC2swZmNxcEw4skdCL8cap0MdbNu2uGBeaJh2MgcDjAuP4MMDOYg8M61lK2E8tkEvN
 3I0kpAfF5P17dJ3sfBL6B5BFvrnpa+gbsgBlA5fPQ2QZNikt3dEGkUOermNtMUsC6pwq
 lJmgA8ebFgiQF4uRXxYtMV5JEyrW1ssgBzHnt+E6yTP8VE5jgp4jIjWjtUnVgMDaLGTK
 KUX8V5k/I86KUrcab7kzrzohCJ9AsDJn0M9TI7TZPAcxWKTPlILFJOaIt6X5V6PcvNXv
 1flA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=V3b2GwFM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:
> From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
> Date: Mon, 17 Jun 2024 14:13:07 -0400
> =

> > Alexander Lobakin wrote:
> >> From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
> >> Date: Thu, 30 May 2024 09:46:46 -0400
> >>
> >>> Alexander Lobakin wrote:
> >>>> Currently, idpf uses the following model for the header buffers:
> >>>>
> >>>> * buffers are allocated via dma_alloc_coherent();
> >>>> * when receiving, napi_alloc_skb() is called and then the header i=
s
> >>>>   copied to the newly allocated linear part.
> >>>>
> >>>> This is far from optimal as DMA coherent zone is slow on many syst=
ems
> >>>> and memcpy() neutralizes the idea and benefits of the header split=
. =

> >>>
> >>> In the previous revision this assertion was called out, as we have
> >>> lots of experience with the existing implementation and a previous =
one
> >>> based on dynamic allocation one that performed much worse. You woul=
d
> >>
> >> napi_build_skb() is not a dynamic allocation. In contrary,
> >> napi_alloc_skb() from the current implementation actually *is* a dyn=
amic
> >> allocation. It allocates a page frag for every header buffer each ti=
me.
> >>
> >> Page Pool refills header buffers from its pool of recycled frags.
> >> Plus, on x86_64, truesize of a header buffer is 1024, meaning it pic=
ks
> >> a new page from the pool every 4th buffer. During the testing of com=
mon
> >> workloads, I had literally zero new page allocations, as the skb cor=
e
> >> recycles frags from skbs back to the pool.
> >>
> >> IOW, the current version you're defending actually performs more dyn=
amic
> >> allocations on hotpath than this one =C2=AF\_(=E3=83=84)_/=C2=AF
> >>
> >> (I explained all this several times already)
> >>
> >>> share performance numbers in the next revision
> >>
> >> I can't share numbers in the outside, only percents.
> >>
> >> I shared before/after % in the cover letter. Every test yielded more=

> >> Mpps after this change, esp. non-XDP_PASS ones when you don't have
> >> networking stack overhead.
> > =

> > This is the main concern: AF_XDP has no existing users, but TCP/IP is=

> > used in production environments. So we cannot risk TCP/IP regressions=

> > in favor of somewhat faster AF_XDP. Secondary is that a functional
> > implementation of AF_XDP soon with optimizations later is preferable
> > over the fastest solution later.
> =

> I have perf numbers before-after for all the common workloads and I see=

> only improvements there.

Good. That was the request. Not only from me, to remind.

> Do you have any to prove that this change
> introduces regressions?

I have no data yet. We can run some tests on your github series too.
