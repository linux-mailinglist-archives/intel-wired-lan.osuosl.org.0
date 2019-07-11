Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 202DC65A3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2019 17:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94F8F20115;
	Thu, 11 Jul 2019 15:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KEw7cKrj8vvx; Thu, 11 Jul 2019 15:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB4262221F;
	Thu, 11 Jul 2019 15:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFB881BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 09:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CBA8885B71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 09:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyZLQaXdEbJl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2019 09:52:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D9A285B36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 09:52:17 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id q20so5234821otl.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 02:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YnmEAV+3bK+9TtrRTMyEvlRiK/7mNez6zYs1L+5G8+0=;
 b=Ra4Wy3hTusHOAjr04l35ZvJXya4HnK7nQ5e4Jvo5LF3TA5nq3bs6H9Eyu6HPS1TJeg
 GXQYR5SD3WnkxJvko36jjnB26p914drlGBPcHi4JGPVxCG5ZcGSfSX5UcLa/kYdzf4S/
 ZNfZIRFXdDaDKoBQnnVCAgziNawjwpp7EDBe6+gs1z3UNmmp5BaVv+CpnNCrHmDTefkh
 uZsfZ1ty6wBU64Bv8mKyMWc5jC1CnMeBsWXOxVl207a++ptzpr9BXBEpEfjXlYLtQh3p
 lZjiQoUla86U/r58WFqaxtov+TAIOzTNyvytgrCKS63ROis1OG7uugX//qQ/xNshcV6+
 mmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YnmEAV+3bK+9TtrRTMyEvlRiK/7mNez6zYs1L+5G8+0=;
 b=fAlaxPysJ8xxzkf4PAZmHimhG4KXldtP74whD9uHHXy2WFzOpraeSxXk6+lnqeSi1X
 xoIHGWYZZDsFkMvyzRqcfGCRcAHB2JxHQ1h1HK/8lUrhn5JKW7bTocryfPzSdzLLGokB
 MxHXmkD8hgbpNdOYIbY0b9J9gb/JkzBvu5nzAUM63e7l8d3Uf0yhMCxdQJK1zNL+uQbv
 x3nxuhdQi8idTNpThuTGUchKMCOaL7kc/9jJrtlTKQs8TFmJlwqGVB5zFzW/jhppDqgG
 Exg3tOcIDWG+n3m/XHKJd0lEZww81jvvjRVSqDfITRk6zsNHIca7TiOTN3CDECIE1QW5
 aDfA==
X-Gm-Message-State: APjAAAWwnAFYjgmvXn0Zfpolvfmx1Sf4pQUrh83ikwSo3jAPjxtmh4t6
 MVKFanZUGOXce5fq7WTNGTD8r5gwmbdqdl9J9l4=
X-Google-Smtp-Source: APXvYqzfX3btBwyMNi/rv82bOVDD7JrGZA9S9HoK/qCYuNHXakkbUso0xterRPhCcI7xVPINhJM/QoABkOcGNjsoNyI=
X-Received: by 2002:a9d:7259:: with SMTP id a25mr591774otk.30.1562838736311;
 Thu, 11 Jul 2019 02:52:16 -0700 (PDT)
MIME-Version: 1.0
References: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
 <1562244134-19069-2-git-send-email-magnus.karlsson@intel.com>
 <57e022b7-ac0e-6a9c-5078-c44988fd9fe6@iogearbox.net>
In-Reply-To: <57e022b7-ac0e-6a9c-5078-c44988fd9fe6@iogearbox.net>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 11 Jul 2019 11:52:05 +0200
Message-ID: <CAJ8uoz1D7Pfvxw+5jSyCrL8p02_UVkVkQ=AQH6L9WFsq-D3Ybg@mail.gmail.com>
To: Daniel Borkmann <daniel@iogearbox.net>
X-Mailman-Approved-At: Thu, 11 Jul 2019 15:17:24 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 1/6] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
Cc: axboe@kernel.dk, Maxim Mikityanskiy <maximmi@mellanox.com>,
 kevin.laatz@intel.com, Jakub Kicinski <jakub.kicinski@netronome.com>,
 bruce.richardson@intel.com,
 Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Network Development <netdev@vger.kernel.org>, ciara.loftus@intel.com, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 Ye Xiaolong <xiaolong.ye@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jesper Dangaard Brouer <brouer@redhat.com>, ilias.apalodimas@linaro.org,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 9, 2019 at 1:50 AM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> On 07/04/2019 02:42 PM, Magnus Karlsson wrote:
> > This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
> > ndo provides the same functionality as before but with the addition of
> > a new flags field that is used to specifiy if Rx, Tx or both should be
> > woken up. The previous ndo only woke up Tx, as implied by the
> > name. The i40e and ixgbe drivers (which are all the supported ones)
> > are updated with this new interface.
> >
> > This new ndo will be used by the new need_wakeup functionality of XDP
> > sockets that need to be able to wake up both Rx and Tx driver
> > processing.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c          |  5 +++--
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c           |  7 ++++---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.h           |  2 +-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        |  5 +++--
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h |  2 +-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         |  4 ++--
> >  drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c  |  2 +-
> >  drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h  |  2 +-
> >  drivers/net/ethernet/mellanox/mlx5/core/en_main.c    |  2 +-
> >  include/linux/netdevice.h                            | 14 ++++++++++++--
> >  net/xdp/xdp_umem.c                                   |  3 +--
> >  net/xdp/xsk.c                                        |  3 ++-
> >  12 files changed, 32 insertions(+), 19 deletions(-)
>
> Looks good, but given driver changes to support the AF_XDP need_wakeup
> feature are quite trivial, is there a reason that you updated mlx5 here
> but not for the actual support such that all three in-tree drivers are
> supported?

It should be easy to add it mlx5 for someone familiar with the driver.
I will send Maxim a mail and see if he can contribute a small patch
adding the support.

Thanks: Magnus

> Thanks,
> Daniel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
