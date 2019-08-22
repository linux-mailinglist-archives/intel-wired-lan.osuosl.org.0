Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDC099B11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 19:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AA3282BFC;
	Thu, 22 Aug 2019 17:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohSUVfHqNKO0; Thu, 22 Aug 2019 17:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82EF9847CC;
	Thu, 22 Aug 2019 17:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 612341BF407
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59E0220656
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BR1Hs-YkimL9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 17:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A4112038B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:21:26 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id s21so13532473ioa.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 10:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aLr+sd5BMRYCClHI4smsxLPlBWSdoS3nfQ+XpNRCO6U=;
 b=bLz1UxSg3goHpLmdM1XGhxTgPMZasAb3H3QPWRN13W+SCAgmQtFI59RkBF9I1BoCJ3
 gfRTGkAtZBHs5sOF5tM7Khx4mYb3AP6M7MXD1f6xuIe8/SXnKS9oo6RYV4MIkKamVuru
 iVoY5Ljg7iov3VuRbjauI0Sg79O0/G3qyJde2n4wkKIl+nVzSEmRKCBB/Xn0DC0g39Um
 f/x0pzC3lDmi3nSbI6X+6MNSUMXbIPZ7/Z9BEpkck9KXUKhTqFXZ7gFl0cQT9jNgWi9/
 9BSNLwRyKkqqgogpRFtZkWxcmAqawm1GyV4bX/86wQZFTQ+ME0Q6GpJFGHPkG6DfwaOV
 5mfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aLr+sd5BMRYCClHI4smsxLPlBWSdoS3nfQ+XpNRCO6U=;
 b=Vw2BgeGI9NqCQoUPAHKNJodXmMp/sN59i9T47ZeST+4bMZAULW1omZ1AfYf35YjrGf
 fsJVm3q2ryXmuAzaBQ7hhC7g6ra+GyDkKApqmHsl4HMD+EBKSvcqVxbYx+SpjoEUtj0+
 VypOXJDl34us3Tv6cD3SJIRY0erZkQToD4MyFjHA/srFnhWfccvEEttyD7GBYi/jiHyc
 EIH/gR9aYMDAR3AnVhgJEJmm9od1s29XquehWtxigP1VqSsh3xjw4dl1hSWljlMydUoL
 a130ZepaopRv4JZ60rFnE+7t5EQ1ykdF9pWWvvpsXdYTEwLaTLRkmTEhHcj9s7R8xqLQ
 tpmw==
X-Gm-Message-State: APjAAAXeM/HUWRDROEztiheFMHhEXcGxlke2bJydYNhODXFf+5NdONf9
 HYRnrSlK2AB+bmmLt8gzn3qvZqDN2lECX+eWDZwMVT1NeIA=
X-Google-Smtp-Source: APXvYqykF88NuCgoRLHTX/hVhk0s0dNsXSMT17jlWltng3t8DPaOm3ksoWuywjYftSzM8MoX7TQAYwNO1f30b9Sh0cI=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr965993ion.237.1566494485368;
 Thu, 22 Aug 2019 10:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
In-Reply-To: <20190822171237.20798-1-i.maximets@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 22 Aug 2019 10:21:14 -0700
Message-ID: <CAKgT0UepBGqx=FiqrdC-r3kvkMxVAHonkfc6rDt_HVQuzahZPQ@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2019 at 10:12 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> Tx code doesn't clear the descriptors' status after cleaning.
> So, if the budget is larger than number of used elems in a ring, some
> descriptors will be accounted twice and xsk_umem_complete_tx will move
> prod_tail far beyond the prod_head breaking the completion queue ring.
>
> Fix that by limiting the number of descriptors to clean by the number
> of used descriptors in the tx ring.
>
> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> 'ixgbe_xsk_clean_tx_ring()' since we're allowed to directly use
> 'next_to_clean' and 'next_to_use' indexes.
>
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> ---
>
> Version 3:
>   * Reverted some refactoring made for v2.
>   * Eliminated 'budget' for tx clean.
>   * prefetch returned.
>
> Version 2:
>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
>     'ixgbe_xsk_clean_tx_ring()'.
>
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 29 ++++++++------------
>  1 file changed, 11 insertions(+), 18 deletions(-)

Thanks for addressing my concerns.

Acked-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
