Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA61561F2D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 17:26:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45D5A423A2;
	Thu, 30 Jun 2022 15:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45D5A423A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656602762;
	bh=Deml/uMTD7ZAfBxo3w7Dh2CyPxOh8Vm0a8ytkC1yHqs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iwZc48z6nSCZGOka5XxjX9mjYKpefMtq5ijPMpR7aM1MaMCcIvJVaze/uweYig/+4
	 GIPDCwFO2DiNIB7yQtSZnKo9GpC6i/efL1Di4zPyMJ5CbpJeuviS+b9MQVw4NFO6Nc
	 5bjakIEmP/RtYAwinFWmJ8g2oHvQJs1HqbHAsSLnnmef88RDXWJvIkL0jJZPdj84dt
	 jt4b0eR03LLHzeV+jpXF4Ev2jT9+2NzxejhvXgDLAp3h3Y6daUd8t0uI4NFZuiI2oj
	 cDelCE9BRGEIQr5WPQk66T4IIkzPNxFa6ni/CDaNG4JWMu/XKN9z6I1XhFzmaENkR0
	 IUzObl54L9//Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FeRtF03LCjPb; Thu, 30 Jun 2022 15:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4A8541BCE;
	Thu, 30 Jun 2022 15:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4A8541BCE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AAFF1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23CB48464E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23CB48464E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8DnGbSQSGCy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 15:25:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1938784642
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1938784642
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:25:54 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-3176b6ed923so182478077b3.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 08:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b1HHuJRU/PzgASK5LVwUbv/TAJnPbu4jGG6I27QsOqY=;
 b=lFflbbTHu/Aqq4akXUyonLPde6WaR9RTD6IXXrnSa957ygdMZ9MRCDdP121/3Rw7IY
 HfhruPfncVKMSQrsXhvAP+gtf77UzZuwQG4yseGS2ScykcckaMX3Up03bAZWlqT4S0j8
 MUCI4fvTL3wMCfCW0vr9d2xLS8wNjGR74vGe98kBgLKJQYmqJZNnKiiB1ya64RYbTq0F
 fVytmQWwPziIrguF+pr1viTWCRyhe+nNGsumg/mtxnNoP/cH/qokzM1w48uqF4WecXA+
 uwShBjSuX/nlvxAKT7VE+ZRymYLqppcxImD0QCdLlsqsbXQUa++iFaQ0LegTxxVpYjEd
 ca/A==
X-Gm-Message-State: AJIora+A6UmDadNMzn1jtNu/yHL/4sYEdaRntGbeg9If4w0PGT2apkZP
 WTAimkyZL4CjJa2bw4t0RrY0Lb/w4LXOvqAPsTmxeQ==
X-Google-Smtp-Source: AGRyM1uuJ9rW4KbHFrPXVR1zK2ZCcPA3iz7q8YM9loeKl8FGUB46bzc9Tsz6h5bvkfR24CeeTCDnuPbW+dVmdEVQjFQ=
X-Received: by 2002:a0d:df50:0:b0:317:9c40:3b8b with SMTP id
 i77-20020a0ddf50000000b003179c403b8bmr11226355ywe.332.1656602752755; Thu, 30
 Jun 2022 08:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <Yr12jl1nEqqVI3TT@boxer>
 <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
In-Reply-To: <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 30 Jun 2022 17:25:40 +0200
Message-ID: <CANn89iK6g+4Fy2VMV7=feUAOUDHu-J38be+oU76yp+zGH6xCJQ@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=b1HHuJRU/PzgASK5LVwUbv/TAJnPbu4jGG6I27QsOqY=;
 b=K7z0kaXZV+Vs0mudhBZ7v5I4hJ8K2IoRajqCVJXAvPAUEz8uwvT8kGg0TdLJ301AZC
 JKYyEQwIY2IUACWR8lS97iGRrC3WGn0tOXHUT16Ho/0modgYkovGX6yeA4tUtBtJfS0z
 Zlme6FyIJLdzNxUkBOwb8Mg7cC00jhPzMIFSa5h9jSd6wzE5flCIjTdT1UreW/ZMi4jZ
 yZ1Hp5lhZBiHrqx3mTXl95L0gizbbmnSXYD/Qa7zF5btYwTA0Hz3lZxHv2AbyPMVnZzl
 OM/jrbRauDoW2DR/7klV31KWRREq37PILkOqdgt1n2sU2VQbdKdICAxeJsewdFtutPMr
 WhbQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=K7z0kaXZ
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 30, 2022 at 5:17 PM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Thu, Jun 30, 2022 at 3:10 AM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
> >
> > On Wed, Jun 29, 2022 at 10:58:36AM +0200, Fabio M. De Francesco wrote:
> > > The use of kmap() is being deprecated in favor of kmap_local_page().
> > >
> > > With kmap_local_page(), the mapping is per thread, CPU local and not
> > > globally visible. Furthermore, the mapping can be acquired from any context
> > > (including interrupts).
> > >
> > > Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> > > this mapping is per thread, CPU local, and not globally visible.
> >
> > Hi,
> >
> > I'd like to ask why kmap was there in the first place and not plain
> > page_address() ?
> >
> > Alex?
>
> The page_address function only works on architectures that have access
> to all of physical memory via virtual memory addresses. The kmap
> function is meant to take care of highmem which will need to be mapped
> before it can be accessed.
>
> For non-highmem pages kmap just calls the page_address function.
> https://elixir.bootlin.com/linux/latest/source/include/linux/highmem-internal.h#L40


Sure, but drivers/net/ethernet/intel/ixgbe/ixgbe_main.c is allocating
pages that are not highmem ?

This kmap() does not seem needed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
