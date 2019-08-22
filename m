Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00499EA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48C69878DE;
	Thu, 22 Aug 2019 18:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2gYt4wCo-p3; Thu, 22 Aug 2019 18:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED064878B4;
	Thu, 22 Aug 2019 18:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93BF71BF407
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:32:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F3A9882FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:32:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uw4-HB16e+Ok for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 17:32:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9EE688251
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 17:32:39 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id 125so5859940qkl.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 10:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7FtduzNMNJFnI5g1RLjKgEXAg+yuPVumc8YVJkrfUPo=;
 b=qEeYXn5zbDKeUYzAE395iJhxBSXY28NfVitbQtYAB3PyhcKFqVr0X8Y3AjTCXoMcUW
 5Q6LV4kVvOVUcpwcdQd+RF2OffQr24rN0eQZq3BDv/35RQTRjTQUYxMeKsFlsZsXaPfH
 YrcMBwU0UhDNBbqSYOlRU++IvVq++BtYBmhkts46VzrTmF8KclLlqgc+CHt2WtCJO2r6
 nIM7cD6wO544OQZp10ybXnkdiDQ+maOQ5nEjLFxf8tHi/wSXZ8JobjexChhEQFQRQPbi
 sY2neb0g/idAF/SUszOnQGAazwU50BHbnfUixRgwyyGMg7ihYlA73k5zIOtKUusHsRHS
 B4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7FtduzNMNJFnI5g1RLjKgEXAg+yuPVumc8YVJkrfUPo=;
 b=OWcDwF94BN0VI/W+zqqhXiG2g+IC6W8E+05RsOAEnJuQ1exfkVvkulmRRwJZLIM4hO
 AmNr++HtVYFBzqF5iJB48mFOvnYlHuzkcXd/e560k3DabiegILQ+fwbKldPPM0DC7Hvm
 pTU+lQgomlgfE3jsl+RyVLrxiNZJac1calmKcnxmawY+DIHTyCeiEbn8NpUWmHEXRROI
 mngrgloPoj800EovFNM8ebQtoBCEMg1Tzj47zlaem1IvlVmiDtsFnwwgbTdOrN/8UQc/
 5ODsQ/I+VKGhm9BUaKfvocjRpKdEQPmE9dplfH2IAuofqBLIpUOc5nP/SKtqyiFLFm+w
 X4lA==
X-Gm-Message-State: APjAAAX0yIcU17xH7vES2ivlwnD7P/ynoD++XPsHUwP1KH9OCERaElxs
 NVFBqMlpuGrWHXEPw7IAcCnG2Qu5SWkECwC1QRA=
X-Google-Smtp-Source: APXvYqyZflRkrgrTQAX1CVrQ2mJ3BeQg/IFnw+nskWRQ/EeD1oK9/Sz/YX7dvuHcw7OXa0C9CcbV+WlmtaA2P/RjI/E=
X-Received: by 2002:a37:690:: with SMTP id 138mr101661qkg.184.1566495158839;
 Thu, 22 Aug 2019 10:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
 <CAKgT0UepBGqx=FiqrdC-r3kvkMxVAHonkfc6rDt_HVQuzahZPQ@mail.gmail.com>
In-Reply-To: <CAKgT0UepBGqx=FiqrdC-r3kvkMxVAHonkfc6rDt_HVQuzahZPQ@mail.gmail.com>
From: William Tu <u9012063@gmail.com>
Date: Thu, 22 Aug 2019 10:32:00 -0700
Message-ID: <CALDO+SYhU4krmBO8d4hsDGm+BuUAR4qMv=WzVa=jAx27+g9KnA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Approved-At: Thu, 22 Aug 2019 18:21:56 +0000
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
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Ilya Maximets <i.maximets@samsung.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2019 at 10:21 AM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Thu, Aug 22, 2019 at 10:12 AM Ilya Maximets <i.maximets@samsung.com> wrote:
> >
> > Tx code doesn't clear the descriptors' status after cleaning.
> > So, if the budget is larger than number of used elems in a ring, some
> > descriptors will be accounted twice and xsk_umem_complete_tx will move
> > prod_tail far beyond the prod_head breaking the completion queue ring.
> >
> > Fix that by limiting the number of descriptors to clean by the number
> > of used descriptors in the tx ring.
> >
> > 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> > 'ixgbe_xsk_clean_tx_ring()' since we're allowed to directly use
> > 'next_to_clean' and 'next_to_use' indexes.
> >
> > Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> > Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> > ---
> >
> > Version 3:
> >   * Reverted some refactoring made for v2.
> >   * Eliminated 'budget' for tx clean.
> >   * prefetch returned.
> >
> > Version 2:
> >   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
> >     'ixgbe_xsk_clean_tx_ring()'.
> >
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 29 ++++++++------------
> >  1 file changed, 11 insertions(+), 18 deletions(-)
>
> Thanks for addressing my concerns.
>
> Acked-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Thanks.

Tested-by: William Tu <u9012063@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
