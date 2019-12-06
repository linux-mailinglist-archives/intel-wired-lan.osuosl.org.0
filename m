Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD7115662
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2019 18:26:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9236C885D3;
	Fri,  6 Dec 2019 17:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyCcmYP5Si1O; Fri,  6 Dec 2019 17:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8351F885C7;
	Fri,  6 Dec 2019 17:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FB271BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 616F288494
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7O3nlzoZDYBZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2019 09:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A550D88268
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:21 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id f7so1031190qkd.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Dec 2019 01:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BhqKBqru7Z1oN0FxrbYnYkaRpOqpaaBdzDxJuVgJ27s=;
 b=EviXRXYcKfsqPGSU+h5tBnkkxxsaQlQoCrbU3CrAGWKtNTOaFLFIOOzVB7AvalgIlM
 Ue3oLOyo2GFYbkBtZnh3oKQwaDiS7PSJdyFN/qrsu/xEF3idfSgUM6WBXSzhDuZJzm3G
 smj9uZRM8aeoKJEdCIGpRMPgA98qK7UGnQ2rPMWkV09WbDUQCXROBJqt2BK0vYPe/Ujd
 JxMOeZAidStW6gj0dVjfdCPoIAbkjZ51EgQ4x2MvkSMIxH1a+kUQbMyI7DZbwtqoBQEW
 nlzERUvZKXN9+8jlHWzWO6EII7ibrTH4CjpZJwxHUbsWb/edxFlzzNT8WoHPDa9PcWi8
 9WKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BhqKBqru7Z1oN0FxrbYnYkaRpOqpaaBdzDxJuVgJ27s=;
 b=ip9d5Unkus8Px5x4ndYNnUw5425iVw0Fk5TCvdDWm33q/Tu0Da4dZw8xjiYQsVsP71
 knXzNRIo/wiYLNe8jkmomtJ2KpysK/93c6RdVu2UwAbuliZrlsEgbd7wPyl8ieujwfFo
 Sbw81WpjBKKHlI2N2bjwwpDiE6c9BGW9DR4jO7Negj9hlwh28QytQnYghpPKl1z5FhE+
 MmWMwO/bhto1QXpUekIHS0M4vCFSXmejp0sQFVNEaRpDe2IxnMjKJr9ax0Xeg/fugXit
 0PfNr/FZQToOtWJSDIVagOlM0ZXkPXsDGf+rbmsi8KiDSNaq1PiQmomUS62PJu17AETI
 8O1A==
X-Gm-Message-State: APjAAAUIlGOISJZA2XOM91v4WCMnixpB+KyrocGO4Mm2rld3jCOotLmd
 1C93RMy/v4VSjtuMp8ixK4glbJVLmxJ0zT6l7Vg=
X-Google-Smtp-Source: APXvYqz76byp4qnIWDHxWDm0hXqdeZjTCC05P6cVLerv/vgLqSYiiQihgoQ+QW4LYTooCP+rT5Jb0Zi1n7UOQre2IX0=
X-Received: by 2002:a37:9c0f:: with SMTP id f15mr12934167qke.297.1575623000660; 
 Fri, 06 Dec 2019 01:03:20 -0800 (PST)
MIME-Version: 1.0
References: <20191205155028.28854-1-maximmi@mellanox.com>
 <20191205155028.28854-5-maximmi@mellanox.com>
In-Reply-To: <20191205155028.28854-5-maximmi@mellanox.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 6 Dec 2019 10:03:09 +0100
Message-ID: <CAJ+HfNhQ7iEoJ2QTAcqJ+z7QK850f4X+59Mj5U62LB9=RgWsmg@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Fri, 06 Dec 2019 17:25:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf 4/4] net/ixgbe: Fix concurrency
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
> 1. ixgbe_down already calls synchronize_rcu after setting __IXGBE_DOWN.
>
> 2. After switching the XDP program, call synchronize_rcu to let
> ixgbe_xsk_async_xmit exit before the XDP program is freed.
>
> 3. Changing the number of channels brings the interface down.
>
> 4. Disabling UMEM sets __IXGBE_TX_DISABLED before closing hardware
> resources and resetting xsk_umem. Check that bit in ixgbe_xsk_async_xmit
> to avoid using the XDP ring when it's already destroyed. synchronize_rcu
> is called from ixgbe_txrx_ring_disable.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 6 +++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 8 ++++++--
>  2 files changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 25c097cd8100..60503318c7e5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -10273,8 +10273,12 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>                             adapter->xdp_prog);
>         }
>
> -       if (old_prog)
> +       if (old_prog) {
> +               /* Wait until ndo_xsk_async_xmit completes. */
> +               synchronize_rcu();
> +
>                 bpf_prog_put(old_prog);
> +       }
>
>         /* Kick start the NAPI context if there is an AF_XDP socket open
>          * on that queue id. This so that receiving will start.
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index d6feaacfbf89..b43be9f14105 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -709,10 +709,14 @@ int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>         if (qid >= adapter->num_xdp_queues)
>                 return -ENXIO;
>
> -       if (!adapter->xdp_ring[qid]->xsk_umem)
> +       ring = adapter->xdp_ring[qid];
> +
> +       if (test_bit(__IXGBE_TX_DISABLED, &ring->state))
> +               return -ENETDOWN;
> +
> +       if (!ring->xsk_umem)

Pretty much same comment as in i40e. The synchronize_rcu() is not
needed, but the additional test is!

>                 return -ENXIO;
>
> -       ring = adapter->xdp_ring[qid];
>         if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
>                 u64 eics = BIT_ULL(ring->q_vector->v_idx);
>
> --
> 2.20.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
