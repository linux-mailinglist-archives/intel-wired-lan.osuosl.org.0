Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B9B8939C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2019 22:23:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A220987A96;
	Sun, 11 Aug 2019 20:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hHT9kUCAPDYR; Sun, 11 Aug 2019 20:22:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D955D8798F;
	Sun, 11 Aug 2019 20:22:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF9C51BF322
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A67E0863F1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7vFOyEmkBDTY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2019 20:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D3D784C20
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 20:22:51 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id f17so16549920otq.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 13:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LhCZsWxZ9N0cFWIcf2zFmzJDaTFv5khYxxXFoiFHFWc=;
 b=FmE07a+nY1HAiO1rZnpjtzbLGzfO6KldQ2bZDNtWHZSNJRnyWc2I/38EyigtGOYOw0
 IPbM6A5H333mRQrrA+lr4GYpR31LAKYRzEwuTOTqu52E+cDVQQp2rwhoc75LG/zje7bS
 2Fc/0PZa4y7COtYss1r79TGXFY7meEJuIPuaZZ3Kkrj23//Bqbi/VF2ia4XO2fqXmXC/
 VeblU1cEJY6iMkIQ+3YpiMCIxqr0XDX4VLlO8U7qaRGoTFruw3JQIt5/cQdPlvxNV6P7
 EE18/3a/p79DDBPHNbqzTci3O+XlfBZFJ4u/ZeP0epTf7sf2DFO1dwGeKsE+EDVRqL5H
 Rc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LhCZsWxZ9N0cFWIcf2zFmzJDaTFv5khYxxXFoiFHFWc=;
 b=U4rHLivZ4JFSUy4XG1pgEZ5Vl5AhLs1oLmunx3l4CqtU8VJ6zz5ISbM804z0oROM2N
 F2NItefTDnmcWdXU19/pVfOytsQDmkPrMmU3iiAtaLjLDPH6kUoS/x+sK1uWIeTW99qC
 Ij6J4+x/QqxJ+EIlDl/w1ERj7oOE2Lr5IHuFDpcl/f5A0cs53euBd4okmMGVo1GtpZqU
 UyIXPIq1pvc91tG3FYv1bM9dnmYnwyQ5DfvKBZ0J52rw93wpB+8lcpn7zoqRgj0WXP0o
 9B9pmfQR+PboRpjrDKn7pCpr31MEbEqwH+v+cyZfG+AFHTzWUsnHajQmc2pC9AuO3LaO
 3r7A==
X-Gm-Message-State: APjAAAWLUB7FL0ggSIy/aaPKmtttK0b4D3cikKYfENVN74T4NGicYrnJ
 PA99zsT6eBjPX79upZcXi8+F4f0UILjHyQHEIHg=
X-Google-Smtp-Source: APXvYqzN0e1ldEXQab16Pz+xVPTk//ZiZ63CKAj2OIYrK3ALilgswuz+hP1rq+AcMw7tJZFuiH5gXBCnPHjj9ZSrmtw=
X-Received: by 2002:a02:6d24:: with SMTP id m36mr34626709jac.87.1565554970465; 
 Sun, 11 Aug 2019 13:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <1565554067-4994-1-git-send-email-wenwen@cs.uga.edu>
In-Reply-To: <1565554067-4994-1-git-send-email-wenwen@cs.uga.edu>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sun, 11 Aug 2019 13:22:39 -0700
Message-ID: <CAKgT0Ue_cSVDd6Tf9ji5zUCNEseAAzUtDG3BS6TEhR8Xh83xQQ@mail.gmail.com>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: Re: [Intel-wired-lan] [PATCH] net: ixgbe: fix memory leaks
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Aug 11, 2019 at 1:08 PM Wenwen Wang <wenwen@cs.uga.edu> wrote:
>
> In ixgbe_configure_clsu32(), 'jump', 'input', and 'mask' are allocated
> through kzalloc() respectively in a for loop body. Then,
> ixgbe_clsu32_build_input() is invoked to build the input. If this process
> fails, next iteration of the for loop will be executed. However, the
> allocated 'jump', 'input', and 'mask' are not deallocated on this execution
> path, leading to memory leaks.
>
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index cbaf712..6b7ea87 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9490,6 +9490,10 @@ static int ixgbe_configure_clsu32(struct ixgbe_adapter *adapter,
>                                 jump->mat = nexthdr[i].jump;
>                                 adapter->jump_tables[link_uhtid] = jump;
>                                 break;
> +                       } else {
> +                               kfree(mask);
> +                               kfree(input);
> +                               kfree(jump);
>                         }
>                 }
>                 return 0;

So I think this fix is still missing a good chunk of the exception
handling it should have. Specifically we will end up failing and then
trying to allocate for the next rule. It seems like we should probably
stop trying to program rules and unwind the work we have already done.

Also it would probably make sense to return an error if we are unable
to program one of the rules into the hardware. Otherwise things will
fail and the user will never know why.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
