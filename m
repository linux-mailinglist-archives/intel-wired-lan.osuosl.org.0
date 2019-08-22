Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE40099E9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 20:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B1EF88454;
	Thu, 22 Aug 2019 18:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPhnhmjZopKi; Thu, 22 Aug 2019 18:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4877488496;
	Thu, 22 Aug 2019 18:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7AC71BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E043086AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o__fHuNTNiwR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 16:24:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 306A386AE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:24:25 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p13so5645856qkg.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LYvKe5wejsC6qDJ+UX43WDzJLWa+tddnchjuNlT6Thg=;
 b=S1E6/5ihriAAmGPzQLCB11TvQvxLBG3TaqCYx881WTAFnA0NYUxSZ3JgJam/+Ww1WF
 A/72qew6cN1tcS5IcZdOo/CfqZX0yQe3Kod8GaULbE7evm8fina+eR5zncgwEIsjdg0k
 hK6I5fhJneS5ym5mhqt5eVgzaqAsnpkFQM3dqtYWbf9Dy6598B7Znj550p/0cJdP9pIJ
 B9UxgFMJFnRg4aBUxuN7zGzk/2xC+KAs15xseZQdfTvrF1raGnqTLbNqrLzrb5L8jTge
 8k9iUUkb/4LbaZIHQMzlBAccuvPNiy1gGTdXDfQPKzv3XrYAf0YIU4WLwWCpFyACNQPN
 mtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LYvKe5wejsC6qDJ+UX43WDzJLWa+tddnchjuNlT6Thg=;
 b=Miiq8Zot1TqD/H/zzE4CmhjynJnurv1LCXhD8lg1YyxjJt6yVy4Tg5ivZv+pltPGwj
 fjBMRlDE5Y/2SpO8hANl354d/3MoF8PjSx97tD6zspzWkZNG7oCOnQar9dTGR18jjt86
 fR3re8Ksk34970SuhflwIfyRp38qfaLMh4jbbnokg8PoJjsh5r3QSYdB0C3ly3P22Y8R
 ZyJQ+BAljwfjMWM+GziDP5NEj/IruSK5Iu/DqveeSZ2hNexgcY+6Bcr8vD030Fb4cJUe
 CD+et03qR66cNrYkgUQyRxwZAoIqTFiLSxgnhw1SXuPzi59vmiY7LZWhI4DO7fB3eZfq
 T4PA==
X-Gm-Message-State: APjAAAU4iA/hIOn0GFbXQlXbD9lVqpgxJcS9IQeGWeSSocbmnVTuor7S
 UPJOEY/CwHV5bwm+aCNg2V9mM7hHZH/Wq/04gsk=
X-Google-Smtp-Source: APXvYqzfp0DsFG7wg7mABKUn7qD/EylcXwWBQQXTwi17HfLBzXQgUE4I6Gny6jWqNCRdCx46/Pl5HKKKMYqXVrE4Q7U=
X-Received: by 2002:a37:e306:: with SMTP id y6mr37349543qki.174.1566491064158; 
 Thu, 22 Aug 2019 09:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91@eucas1p1.samsung.com>
 <20190822123037.28068-1-i.maximets@samsung.com>
In-Reply-To: <20190822123037.28068-1-i.maximets@samsung.com>
From: William Tu <u9012063@gmail.com>
Date: Thu, 22 Aug 2019 09:23:46 -0700
Message-ID: <CALDO+SaMFHB8u3YOsrCM=MNuT=14kmBnst_RNs3qNU0OjPmfGA@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
X-Mailman-Approved-At: Thu, 22 Aug 2019 18:21:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix double clean of tx
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2019 at 5:30 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> Tx code doesn't clear the descriptors' status after cleaning.
> So, if the budget is larger than number of used elems in a ring, some
> descriptors will be accounted twice and xsk_umem_complete_tx will move
> prod_tail far beyond the prod_head breaking the comletion queue ring.

s/comletion/completion/

>
> Fix that by limiting the number of descriptors to clean by the number
> of used descriptors in the tx ring.
>
> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> 'ixgbe_xsk_clean_tx_ring()' since we don't need most of the
> complications implemented in the regular 'ixgbe_clean_tx_irq()'
> and we're allowed to directly use 'next_to_clean' and 'next_to_use'
> indexes.
>
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> ---

Tested-by: William Tu <u9012063@gmail.com>

Instead of measuring tx performance at the tx machine, I measured the TX
performance at the other side (the traffic generating machine).  This time it
is more consistent and showing not much difference with (5.9Mpps) and
without this patch (6.1Mpps).

>
> Version 2:
>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
>     'ixgbe_xsk_clean_tx_ring()'.
>
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 34 ++++++++------------
>  1 file changed, 13 insertions(+), 21 deletions(-)
>

<snip>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
