Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD9C115660
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2019 18:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55FCA877EE;
	Fri,  6 Dec 2019 17:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWM9qHusoeYo; Fri,  6 Dec 2019 17:25:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49D6D877E3;
	Fri,  6 Dec 2019 17:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E96881BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF5ED87EAD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCvI6GUceqhB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2019 09:03:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5D55881F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:18 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 14so6491934qtf.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Dec 2019 01:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NSnp1F1eiqqOQQa5ixU1Izrumj5P9RZf5bIJmaqc2cs=;
 b=KXl3ijaN2ackTyhmmSc0GBFN7DcLPOmhE5jmi5a1DuBEf78B3N1FG4qNXtli0OZG6k
 6gbqnzBOHm0xeVlFwXNdtBoonjosI0Zi0wNhgiCq2DJ6iSeF3Du2DH65l/fZGA/gJ8SY
 roxCAw/LGBrh8KgO1vkP02sgUQC9QGG5QLHaU7rE9FwXsHMySztQwxzeXwmzeqEQelMD
 wKx9Ec2WDKcddo0JW9myXmkFqYdkQf5O1a93ea7y1S1Lvgg3JW3Q+VkrYs/x623T8jny
 TZl+pKxbyVz1s8O0WAzHTUd75U4b31aSin5E0do/rZA7QMaCRInVlWS+Cyo/cUjJKZt6
 HnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NSnp1F1eiqqOQQa5ixU1Izrumj5P9RZf5bIJmaqc2cs=;
 b=DDlOsbdjTF40dQMTDQMwhQmGeJAe6wkaanXlr3BYtf27J+Eydd1mK3IGVcfrNj5mii
 PigOGGgN3wb7h5qRcpLScfDoR7AheOcxsdiW7Z3g52gzOZ6wEZWkYUw+t070p1EhPXTg
 RVnwvA0b29caKSjqtP+DLtjWOwENpXX0k4V/X68FnyN5/9s+yWiqONRrAsTsTU2r52mF
 8WfTA0hVdQsYfMP2Gl2uOKOEO/xKMiM/1k6o1WQ8lRjfSHM24oYUKRFyrWzstLHvo3zO
 WQdoyzIjk7pQkMnBnOAF0CsH6TOt0eJQx0iZk/ATCL4YnuhDmq1y7pNdiwyYs1DcRx2J
 IaCg==
X-Gm-Message-State: APjAAAUAausnkJbqdV/R5XqSQyQGySXOvHn72syxH/aEGN6x1QdWsCxL
 eXcn95wdJqF3vkaYtSwecBRDgXe7uL7GJ1eRn8U=
X-Google-Smtp-Source: APXvYqy36Txmetid8jTIeyTmt/N0w69VPWXz8/aOWLeVHWm7ezZkcjneOM8kuTe0whvQ2JqpsWwxUJkXB/bqtBLR3Oo=
X-Received: by 2002:ac8:1bed:: with SMTP id m42mr11921618qtk.359.1575622997936; 
 Fri, 06 Dec 2019 01:03:17 -0800 (PST)
MIME-Version: 1.0
References: <20191205155028.28854-1-maximmi@mellanox.com>
 <20191205155028.28854-4-maximmi@mellanox.com>
In-Reply-To: <20191205155028.28854-4-maximmi@mellanox.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 6 Dec 2019 10:03:06 +0100
Message-ID: <CAJ+HfNiXPo_Qkja=tCakX6a=swVY_KRMXmT79wQuQa_+kORQ=g@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Fri, 06 Dec 2019 17:25:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf 3/4] net/i40e: Fix concurrency
 issues between config flow and XSK
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 5 Dec 2019 at 16:52, Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> Use synchronize_rcu to wait until the XSK wakeup function finishes
> before destroying the resources it uses:
>
> 1. i40e_down already calls synchronize_rcu. On i40e_down either
> __I40E_VSI_DOWN or __I40E_CONFIG_BUSY is set. Check the latter in
> i40e_xsk_async_xmit (the former is already checked there).
>
> 2. After switching the XDP program, call synchronize_rcu to let
> i40e_xsk_async_xmit exit before the XDP program is freed.
>
> 3. Changing the number of channels brings the interface down (see
> i40e_prep_for_reset and i40e_pf_quiesce_all_vsi).
>
> 4. Disabling UMEM sets __I40E_CONFIG_BUSY, too.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 4 ++++
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 1ccabeafa44c..afa3a99e68e1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -6823,8 +6823,8 @@ void i40e_down(struct i40e_vsi *vsi)
>         for (i = 0; i < vsi->num_queue_pairs; i++) {
>                 i40e_clean_tx_ring(vsi->tx_rings[i]);
>                 if (i40e_enabled_xdp_vsi(vsi)) {
> -                       /* Make sure that in-progress ndo_xdp_xmit
> -                        * calls are completed.
> +                       /* Make sure that in-progress ndo_xdp_xmit and
> +                        * ndo_xsk_async_xmit calls are completed.
>                          */
>                         synchronize_rcu();
>                         i40e_clean_tx_ring(vsi->xdp_rings[i]);
> @@ -12545,6 +12545,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
>                 i40e_prep_for_reset(pf, true);
>
>         old_prog = xchg(&vsi->xdp_prog, prog);
> +       if (old_prog)
> +               /* Wait until ndo_xsk_async_xmit completes. */
> +               synchronize_rcu();

This is not needed -- please correct me if I'm missing something! If
we're disabling XDP, the need_reset-clause will take care or the
proper synchronization. And we don't need to worry about old_prog for
the swap-XDP case, because bpf_prog_put() does cleanup with
call_rcu().


>
>         if (need_reset)
>                 i40e_reset_and_rebuild(pf, true, true);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index d07e1a890428..f73cd917c44f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -787,8 +787,12 @@ int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  {
>         struct i40e_netdev_priv *np = netdev_priv(dev);
>         struct i40e_vsi *vsi = np->vsi;
> +       struct i40e_pf *pf = vsi->back;
>         struct i40e_ring *ring;
>
> +       if (test_bit(__I40E_CONFIG_BUSY, pf->state))
> +               return -ENETDOWN;
> +

You right that we need to check for BUSY, since the XDP ring might be
stale! Thanks for catching this! Can you respin this patch, with just
this hunk? (Unless I'm wrong! :-))



>         if (test_bit(__I40E_VSI_DOWN, vsi->state))
>                 return -ENETDOWN;
>
> --
> 2.20.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
