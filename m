Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5FF5E5E72
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 11:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23C1A404EC;
	Thu, 22 Sep 2022 09:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23C1A404EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663838645;
	bh=Man8nfgqEzQb9lgGc804ZyMQz+sBm5wf7EYQemaBSA4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o9QppyyLPdBYQpalg79Url7x6Z8HGgYt3BF7tWGUtzVSoAEjxzD3l20kBYEvxbcNc
	 nT+MX2ZCM3knue1E7XS8AimY3qYtFZfCLegMvl6d3y9UnvD58eki8s0qfOlK98PsCv
	 vfbQMoWF66mnxvLrUlldhskoJLzprtp3PrEhnWStap9LjgeMbQ6CPIpNJ7LkkhglS8
	 eSgi339NTCEr4Gi02Ql1MOZmyWG/qYcNOKCMF7ppi+v5SCD6NuZhHTT8CZag2C3kZs
	 upT49bU2aP132FoLVToLteVdRSItefXpSDDkvsEvUaMAGsgxQNrMQPXVka/P4oYvxP
	 DF/2R5ecVxsbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caDxYSHD9VQy; Thu, 22 Sep 2022 09:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FC0A404A6;
	Thu, 22 Sep 2022 09:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FC0A404A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EEE61BF956
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 09:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1901D404A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 09:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1901D404A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwkUVIUefStc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 09:23:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67B3F40385
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com
 [IPv6:2607:f8b0:4864:20::d2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67B3F40385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 09:23:58 +0000 (UTC)
Received: by mail-io1-xd2e.google.com with SMTP id 138so7162768iou.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 02:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=eq1ulTtXYhBmIV3Hec+MzaFRLDXw1vSRF6+bOMmPhJ4=;
 b=pwjCkiDlQOuau6BG7qfwEaO38QW/VuF4j3ELkfuMk0vak9TFdqv+rjNhesF+TAFwDw
 A0Hukq58G2JkoPbKM2QVFIKlBBBJocyn4tdwdsec9W2N9aZjWwxP3y0SFii6MoXvYo2m
 e6dC8WCDr0t68vpvwA3Pq65Nb8hqVSpN50eUumDj1sDBFXZrJoWM3JFVgHI69C89ET1s
 5kCGyTUzO8bGXd08eGyvioUeXkbcQs/AV1MU+BZnPGsntv4GffTFOeBTUOWR/Nq1WWyi
 dEKRxiBI7KFqgfUk+XrQSD3FfYd/6W9Vhh1nHuOi6/cpj56h64Z6omg/brnCMxdy3qnf
 pnxw==
X-Gm-Message-State: ACrzQf0njGwLZ4hu3wtdLm380dh0wXkJw8vUxN3kagIJzxAkKbz9oKzq
 ZwA7pMpJK1MRVQwDY/09QzE7OvDlGQdW9iQyfeU=
X-Google-Smtp-Source: AMsMyM4VmAwcaT5Lc+Ww++2Y7GpjHXOf8JO1cC9hLR1vHps4lN+vAXggqFNSedolxw1DncuzKFlDGIHvcmXTBzRY/kM=
X-Received: by 2002:a05:6638:dcc:b0:35a:7ba6:ad51 with SMTP id
 m12-20020a0566380dcc00b0035a7ba6ad51mr1404409jaj.256.1663838637536; Thu, 22
 Sep 2022 02:23:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-12-keescook@chromium.org>
In-Reply-To: <20220922031013.2150682-12-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 22 Sep 2022 11:23:46 +0200
Message-ID: <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=eq1ulTtXYhBmIV3Hec+MzaFRLDXw1vSRF6+bOMmPhJ4=;
 b=bE2W6qfxPeZ5hG8th9HBte8uWTQjYuCcr36yI1hhiheOM64/zofTi1amyoUC/YRb+J
 NgesQGAjTL00GMSehk4Np33KVgoKvpm/Mh3RSzMdF+EkL5Y4k9K6GB3q17DXyKsUm/6E
 tSUleWEaIUryrEiqLEE56d9SYCS/YFMrs6gU37f7Pqu7tr26K2zmBNy6tAGoGVxQ5f+n
 DlMD1/oSQBrQp/QHyG7CgFktY+50H+Wm33tTFaH8FxMf0iDQdWTe9OU6Ok7FDH/xYrVm
 +Y17qm2jbLBl43Ckz4h9g/NlAB7oNcZMDPJUHArvKPR8Jrr0Y7Jjk4kBCdA2lo60DN3B
 Aphg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bE2W6qfx
Subject: Re: [Intel-wired-lan] [PATCH 11/12] slab: Remove __malloc attribute
 from realloc functions
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
Cc: linux-wireless@vger.kernel.org, Jacob Shin <jacob.shin@amd.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Hao Luo <haoluo@google.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 5:10 AM Kees Cook <keescook@chromium.org> wrote:
>
> -#ifdef __alloc_size__
> -# define __alloc_size(x, ...)  __alloc_size__(x, ## __VA_ARGS__) __malloc
> -#else
> -# define __alloc_size(x, ...)  __malloc
> -#endif
> +#define __alloc_size(x, ...)   __alloc_size__(x, ## __VA_ARGS__) __malloc
> +#define __realloc_size(x, ...) __alloc_size__(x, ## __VA_ARGS__)

These look unconditional now, so we could move it to
`compiler_attributes.h` in a later patch (or an independent series).

Cheers,
Miguel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
