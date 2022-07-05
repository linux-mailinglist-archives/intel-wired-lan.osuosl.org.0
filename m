Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD37D567815
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 21:53:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1054B81ADE;
	Tue,  5 Jul 2022 19:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1054B81ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657050777;
	bh=4jI8BzTq6TgObhNu6zUU3yOP27wNfrrk3u9NNcccnfI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xU20MsPWAPTSF3wDz2JQTaRiqEUtSbdXl+V0VeJJN8nrZUEKV6PBIHfobAAndPjgh
	 IjIlWDjtmbXUj+LjUWfA6yjdS4TUIwlU2YF2YZwAJQehGRUfsFiSM4sBFxcty/2fQW
	 HrqkiajR4nWFbQ2BRYCaBC0rzOg7C4hsgZ4pbeLuShWoSly3Bg9vuV+kgGhO9xBO3L
	 5atSShSj1MPcaVejnoX4PyUV/uiOtK5IyVzPiRePKln+ubtzQMUnJQjfiGSGV9J6uC
	 eBoXbZafyuiQ1Y8RxuUU9+EhQ73Pis+Pa6+FofK9O84D0oER6Aw3t8PjsR3LFKZojd
	 JTpBhcl1nw8Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f6lVINh2ZIIM; Tue,  5 Jul 2022 19:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A51DB81A73;
	Tue,  5 Jul 2022 19:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A51DB81A73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE471BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 19:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14F8481A81
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 19:52:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14F8481A81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPkuo3ekc-YX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 19:52:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B57D681A6A
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B57D681A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 19:52:49 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id h17so5876207wrx.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jul 2022 12:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/doxS0i6Wxlf3MlQXzvD1rRavf5pbzG6RAdOF/mnCY4=;
 b=dWhLw6oEG8FzIfgTv59BqRCYPqAUU+DyRN37Vf1eCvLf2zJreJzFwenB1cSdy5OS8N
 UCfajQh5ONDeZHluirXIMLo+xZF9ghG2JXGgccpnAYVmPso/VFI5UMTLWOHZYm510TKg
 53+RS1upMwMHFIVKihyaU2ug9HYBkq1RXkUnAg5Qai1mvp8mLDpqal7u6P+QmZ3IVszM
 wnPFMpbo9tC24uP62l4CK7G+dyYdLCDQHhBOag5bzZ78BUDUNlIqNc2/uGnv8nVQi64I
 D5Zz9pTZ4C+2C/ds28Y7/hV0yONKdvWKkNMycm9IeRdVL1Iup/Zle6wBablQoMpVQxbc
 mSig==
X-Gm-Message-State: AJIora9tsqyrKpuZ0No/EodEl9kPmv8BRZhkfssEnPILpyxZfVkiuuDk
 v+MCAq5NC9nfZH7t8klGmq0La2yZYxZgIodCODA=
X-Google-Smtp-Source: AGRyM1v7ifsufKfy5Jeo+13iCkt+psbaynIFUU7eS3NIGXvLiFM9Ug8mRV/eLUpjyCfhBiEIOSJYh7GFnTe629aUmb0=
X-Received: by 2002:a5d:5703:0:b0:21d:6c55:4986 with SMTP id
 a3-20020a5d5703000000b0021d6c554986mr10402402wrv.455.1657050767617; Tue, 05
 Jul 2022 12:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220704140129.6463-1-fmdefrancesco@gmail.com>
 <YsSBR5nJovFMHGcB@iweiny-desk3>
In-Reply-To: <YsSBR5nJovFMHGcB@iweiny-desk3>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 5 Jul 2022 12:52:36 -0700
Message-ID: <CAKgT0UcGvjczCZXBS_OunwnZ5Xc7ytDRqjpymiXQni0ugrdmug@mail.gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/doxS0i6Wxlf3MlQXzvD1rRavf5pbzG6RAdOF/mnCY4=;
 b=ArexrY44HStoCcsS43la3guKBJ49QQtWvjH+cMc4ug5p3cyvHU5Dyaoyou9wlV98lU
 t1rdtTH4PtO7TMcNN3JUzkdb1mY7LFdrvCuiKfl0rDvV/VcSVMPYlnvaUHFk2NaJPCU4
 XkEjrVKV/65CCHIOXVBkO09lya86ZtlmV/BpPBKLJ74qfJwHi4Zrfq3tvmc7/4RH2UYt
 hxGmVomn9hiIriN8+Zquy93JmujHo2e5lF+3IgxY8MUhetFqIv4HrlJNoowHBBmWt6+J
 QCZ7STtbE+6h60ougeY8ry/e/Rya28iXXXF1KY0QwxW2WTCTZUW5zIvZBRylRhYfvIQg
 JULw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ArexrY44
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 5, 2022 at 11:22 AM Ira Weiny <ira.weiny@intel.com> wrote:
>
> On Mon, Jul 04, 2022 at 04:01:29PM +0200, Fabio M. De Francesco wrote:
> > Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
> > there is no need to call kmap() on them.
>
> I'm still not 100% sure where this page gets allocated but AFAICT it is
> allocated in ixgbe_alloc_mapped_page() which calls dev_alloc_pages() for the
> allocation which is where the GFP_ATOMIC is specified.
>
> I think I would add this detail here.
>
> That said, and assuming my analysis is correct, the code looks fine so:

Yeah, this is actually called out in other spots in the buffer
cleaning path. This is just something I had overlooked and left in
place back a few refactors ago.. :-)

https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c#L1795

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
