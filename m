Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AC90B938
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 20:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2FAE60A77;
	Mon, 17 Jun 2024 18:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_u6hCBALcUE; Mon, 17 Jun 2024 18:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E7560A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718647994;
	bh=wnDgtRUgKAlSFYmIuJjQW/N6laowqIFFEW1+oJmutvU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GftWkcuyMEZXgXw2FtzG+RvmPgR4NSIMQqjdC+uD/Heb+AsS55lAX6fnw7Er4Hq+F
	 lyCryz5mRUzgpTYA77MHKSQW6dXGXgPHIKzLBft+mJckI/WwEMGOBsvQ0QjRJ6FVMu
	 vWwndlWFsmDdjfT50GspW2W4MTn5k6POcwZ9lznMk0O/Ax+2fNLQxDgeEObC8O5Lrq
	 OXrHOoLZnbNLFqBqIhwjmaNaeSoK7XziFUUOl22MZv8gX3FYZ1/T7bwZfAoYczZHyE
	 mRKm0Ln56Hta8bdaoKTTolxXYDcvrVO08+axBXWMLFKBzrEUCjSmXG3A29k+19zSyg
	 cwsFmP6Q1LfMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38E7560A4D;
	Mon, 17 Jun 2024 18:13:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 452D01BF293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 18:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F852409E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 18:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3pMibOvFSACd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 18:13:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::331; helo=mail-ot1-x331.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9014F400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9014F400B5
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9014F400B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 18:13:09 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 46e09a7af769-6f9b4d69f53so2564274a34.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 11:13:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718647988; x=1719252788;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wnDgtRUgKAlSFYmIuJjQW/N6laowqIFFEW1+oJmutvU=;
 b=t14LfXzrFYnYLV80zsGkFgAvHfpmo7xZ+U7Jjl2nLTNkD7IdcUak5rchx5WgWo70NO
 h2C/A24uBC3X3HpomJFjSgCURRlHUn9E4+xMyXw5YrPGOpwtY/wKWYWGKoL+kbp+wTyK
 yK5SpA2O8N6hmwdEQk8/5Lf1qh8BfJKh7qDzyRJeq0dtMM72HP+R1hsp95nTe5OdOp9d
 Usy2XwRy2tpwgo/tmF0lp+Dan7IVnar/dEGAJPcNV/Gp876ofLAZ+vpnQuXRkuj+Wsmi
 li3PbkpTcTYZnBFSUiguRjwNdjtd7f22EakgEBcbCzdN3yfWmzBz2Rx3Z9WMm4dterfV
 5H8w==
X-Gm-Message-State: AOJu0Yy9ggPRIC932WEV/iZqjHHxfLLINnIan2b4PqKvSKg6flC3zWtS
 arTpxnP7L851CiZ97S+pO740FgRo6LaPBpHZnAIzCSFOi0h1SUbZ
X-Google-Smtp-Source: AGHT+IEobT5WZZ9llfzIFkvOO66J52WFUiWGnt25JF+3NqHKxdUDb76NjANoVgeOSeZ/Qa2KtCilqw==
X-Received: by 2002:a05:6830:1da8:b0:6f9:eb37:b49a with SMTP id
 46e09a7af769-6fb93b5b890mr10915095a34.36.1718647988217; 
 Mon, 17 Jun 2024 11:13:08 -0700 (PDT)
Received: from localhost (56.148.86.34.bc.googleusercontent.com.
 [34.86.148.56]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6b2a5bf289csm57828316d6.26.2024.06.17.11.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Jun 2024 11:13:07 -0700 (PDT)
Date: Mon, 17 Jun 2024 14:13:07 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Message-ID: <66707cb3444bd_21d16f294b0@willemb.c.googlers.com.notmuch>
In-Reply-To: <ad06d2bb-df1d-41cd-8e5a-8758db768f74@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
 <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
 <ad06d2bb-df1d-41cd-8e5a-8758db768f74@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718647988; x=1719252788; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wnDgtRUgKAlSFYmIuJjQW/N6laowqIFFEW1+oJmutvU=;
 b=YDGcjCY/3v6LLbA0rDOT6+7GVUmRtZ7dzvY8X0KQWh2lb3Q+sppYmSNcgVf8AUHSys
 g0UHaTUC0L4FIcTlu56nV6zwYHXkKR2XE8Z707Ss/mxs95RR3Ml7BDSvQckXxAkvivhk
 1DqbcpnR6VUnGxlT+cpCxXfwirliIEXQbiqbITcbWjADgmpyVNJb1Cj6Gejuv9cLNI8L
 9hfOAHh6Vz+u80n35oNF7A6xH6Ypi8p1KeOvvdfMxSJl+eTvoyOm/hX1gqMgjo9AX86O
 eHo0VwQgF84Oitw+xbmi8NTEZiuZVZfFpVrfJnOVKfPnwVSGjwZOcx94f+wiWEQP3Miv
 vn2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=YDGcjCY/
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
> Date: Thu, 30 May 2024 09:46:46 -0400
> =

> > Alexander Lobakin wrote:
> >> Currently, idpf uses the following model for the header buffers:
> >>
> >> * buffers are allocated via dma_alloc_coherent();
> >> * when receiving, napi_alloc_skb() is called and then the header is
> >>   copied to the newly allocated linear part.
> >>
> >> This is far from optimal as DMA coherent zone is slow on many system=
s
> >> and memcpy() neutralizes the idea and benefits of the header split. =

> > =

> > In the previous revision this assertion was called out, as we have
> > lots of experience with the existing implementation and a previous on=
e
> > based on dynamic allocation one that performed much worse. You would
> =

> napi_build_skb() is not a dynamic allocation. In contrary,
> napi_alloc_skb() from the current implementation actually *is* a dynami=
c
> allocation. It allocates a page frag for every header buffer each time.=

> =

> Page Pool refills header buffers from its pool of recycled frags.
> Plus, on x86_64, truesize of a header buffer is 1024, meaning it picks
> a new page from the pool every 4th buffer. During the testing of common=

> workloads, I had literally zero new page allocations, as the skb core
> recycles frags from skbs back to the pool.
> =

> IOW, the current version you're defending actually performs more dynami=
c
> allocations on hotpath than this one =C2=AF\_(=E3=83=84)_/=C2=AF
> =

> (I explained all this several times already)
> =

> > share performance numbers in the next revision
> =

> I can't share numbers in the outside, only percents.
> =

> I shared before/after % in the cover letter. Every test yielded more
> Mpps after this change, esp. non-XDP_PASS ones when you don't have
> networking stack overhead.

This is the main concern: AF_XDP has no existing users, but TCP/IP is
used in production environments. So we cannot risk TCP/IP regressions
in favor of somewhat faster AF_XDP. Secondary is that a functional
implementation of AF_XDP soon with optimizations later is preferable
over the fastest solution later.
 =

> > =

> > https://lore.kernel.org/netdev/0b1cc400-3f58-4b9c-a08b-39104b9f2d2d@i=
ntel.com/T/#me85d509365aba9279275e9b181248247e1f01bb0
> > =

> > This may be so integral to this patch series that asking to back it
> > out now sets back the whole effort. That is not my intent.
> > =

> > And I appreciate that in principle there are many potential
> > optizations.
> > =

> > But this (OOT) driver is already in use and regressions in existing
> > workloads is a serious headache. As is significant code churn wrt
> > other still OOT feature patch series.
> > =

> > This series (of series) modifies the driver significantly, beyond the=

> > narrow scope of adding XDP and AF_XDP.
> =

> Yes, because all this is needed in order for XDP to work properly and
> quick enough to be competitive. OOT XDP implementation is not
> competitive and performs much worse even in comparison to the upstream =
ice.
> =

> (for example, the idea of doing memcpy() before running XDP only to do
>  XDP_DROP and quickly drop frames sounds horrible)
> =

> Any serious series modification would mean a ton of rework only to
> downgrade the overall functionality, why do that?

As I said before, it is not my intent to set back the effort by asking
for changes now.

Only to caution to not expand the patch series even more (it grew from
3 to 6 series) and to remind that performance of established workloads
remain paramount.
 =

> Thanks,
> Olek


