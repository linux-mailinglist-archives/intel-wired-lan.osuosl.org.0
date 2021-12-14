Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11391474578
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 15:46:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6148B4014E;
	Tue, 14 Dec 2021 14:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T90Fa3ay4qmf; Tue, 14 Dec 2021 14:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47DA840081;
	Tue, 14 Dec 2021 14:46:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 716161BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F39B605AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VkYckLvuPE8S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 14:46:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90CD8605AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:46:31 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 j6-20020a17090a588600b001a78a5ce46aso17359849pji.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 06:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TIVCmsuAMVImfriiYow8c1qDhI05Ehf9vFjNjkmAmtM=;
 b=gawJlSLJAMBNqBeAsSK57x0uKhwlYQRI8jtsSjQ0BDq9mHT6uHpzoyrBcy3D3BJVqA
 /Ysvgur2G5iht8txUsgEZZ34c94dJSkL/W0CWJ5bUex9dekd2T61Za5TmuGuzv+MnrHe
 mlnA/94cORuogMyWgMc3eOm6RYHtCbN8hrlEWxYdWprDXi9mdNicy2f8nGgaR/6ALtyJ
 PvTIKyJiF6K/Fk/J16p4yCrq2YMD+RDTbfiXEQJTduUkkcj1fqiDq4wEIVQacrgtOgzb
 vZIsC1HvF+XgQ01CPonvcLnRjVyKX7x8+HwWcvaJXvT2Y4h8EvlXF+wP+zjf1slCc8GP
 t5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TIVCmsuAMVImfriiYow8c1qDhI05Ehf9vFjNjkmAmtM=;
 b=iX6GMEUHxAl5djk/jbv0+HmCFlKbI3A4eNRrqBmRFMeqbvTw9sWR9QMrouIA2O53Ju
 LScYer70lRjKwp+phNkgMzoeQJJ0SAgHDTuGiUlP/DzwNoghHbZ7moB2y4lfEDv6ubfP
 gyf7s9MptNxf5heEX6Evh61okeiZ2Vshek6OwgZJZ/dekRk9xeQBQWOOqJzl1dWY3hdd
 ofriZIzkvuSj7GMwCXh3lLiWSS7uH4X3HtEdtFuW1F0vSeYSCGOeou+aT/ee9l42FwBM
 sxqXpsjVEiCkt8NODSy/9Ab0BMNeP0TYhCEF2wKRuqKYlUhNnjlauJDi8s0XjGaOQ/82
 B76g==
X-Gm-Message-State: AOAM531jinW0bJuFK9rWk1QK/LZ4BxGqGH2a6s4C5+2UASDoGt/h00cy
 oP71NlONAnQllHMlac9tBWaeROLnpfJkSdzFrEs=
X-Google-Smtp-Source: ABdhPJxVWeGKAMAekRtLG64jFT56xxyEr62immDtXUwhTaUHaatqeQEA8PlVYLwpgyLj/7nWlsLN3VbJgy7iLN2yU8Y=
X-Received: by 2002:a17:90b:3b8d:: with SMTP id
 pc13mr5904614pjb.112.1639493190905; 
 Tue, 14 Dec 2021 06:46:30 -0800 (PST)
MIME-Version: 1.0
References: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 14 Dec 2021 15:46:19 +0100
Message-ID: <CAJ8uoz0Fb-hciySWAy79X2d_H=oUddbFGCm3RUAtRYhUQ5-K5w@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net 0/6] ice: xsk: Rx
 processing fixes
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
Cc: elza.mathew@intel.com, Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 13, 2021 at 4:31 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> Hi there,
> it seems that previous [0] Rx fix was not enough and there are still
> issues with AF_XDP Rx ZC support in ice driver. Elza reported that for
> multiple XSK sockets configured on a single netdev, some of them were
> becoming dead after a while. We have spotted more things that needed to
> be addressed this time. More of information can be found in particular
> commit messages.
>
> v2 has a diff around only patch 2:
> - use array_size() in memsets (Alexandr)
> - remove unnecessary ternary operator from ice_alloc_rx_buf{, _zc}()
>   (Alexandr)
> - respect RCT in ice_construct_skb_zc() (Alexandr)
> - fix kdoc issue (Anthony)
>
> It also carries Alexandr's patch that was sent previously which was
> overlapping with this set.
>
> Thanks,
> Maciej
>
> [0]: https://lore.kernel.org/bpf/20211129231746.2767739-1-anthony.l.nguyen@intel.com/

Thank you so much for all these fixes Maciej and Alexandr!

BTW, ice zero-copy support in bpf and bpf-next does not work at all
without this patch set, so need to get this in as soon as possible.
net and net-next might not work either, but have not tried.

Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>

> Alexander Lobakin (1):
>   ice: remove dead store on XSK hotpath
>
> Maciej Fijalkowski (5):
>   ice: xsk: return xsk buffers back to pool when cleaning the ring
>   ice: xsk: allocate separate memory for XDP SW ring
>   ice: xsk: do not clear status_error0 for ntu + nb_buffs descriptor
>   ice: xsk: allow empty Rx descriptors on XSK ZC data path
>   ice: xsk: fix cleaned_count setting
>
>  drivers/net/ethernet/intel/ice/ice_base.c | 17 ++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++---
>  drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 66 +++++++++++------------
>  4 files changed, 62 insertions(+), 41 deletions(-)
>
> --
> 2.33.1
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
