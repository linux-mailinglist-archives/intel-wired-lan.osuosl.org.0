Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3FF67E8B1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 15:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2201C417CD;
	Fri, 27 Jan 2023 14:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2201C417CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674831298;
	bh=maucJPZjlhCgjK/ACYhaSS+v1YRwQTF5tDRwJZfdFwE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5yDj894SGjm/Y9Ytws45+NoJlfybsBcwVvGConaMaiPoPtlY0WnIpvbUqA3P4QxwC
	 2qTQyUatxFrW7oUbCzJriqIWR2q6HJEVMxiD75dKXI0TcIUgj/BvtI9xorUxA19kv5
	 2OxZqkfgUrPU6rs/5flgN34AyuUDaXUTUdyiHV6zDGnCER+nJ4tg4YVUUHB7pBxH3K
	 CT1+4H9kjxcNfq5SoIB0jQxbm1xWnJ7G7BANgXTKtIVRoaN9wGvb5QVsomaCOnQdWO
	 h4P5zPd1ItJf/3d9Fw37WvEVsFH2Yzl+JGr+Qg0DzFHihtmFk+s6cCuq2zcWP8LomT
	 krtfFHE37CcVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oeEDryYO4-JD; Fri, 27 Jan 2023 14:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01C6540184;
	Fri, 27 Jan 2023 14:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01C6540184
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF2321BF39E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C605341D46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C605341D46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgsRQ8zMJqAH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 14:54:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1828841D3E
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1828841D3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 14:54:49 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id m2so13916092ejb.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 06:54:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+gn+XHL+I5DO4+DWbAun4810C7fhfSL0Li+nXaVTEvs=;
 b=r+Q9H+P5vWtjh3hwUmxQDzSz8uSgDV1g/8a5hAkYG15cfgAbO1zVXmpqQwcYfepqh+
 l8/XkU+HjML73VOX6bSGeaNJ7t7lNSZfu1Rpgpnvi2buonQx+Wmy/6kRt4Tta6XjSbQ1
 9/2aruETyPv/e5lDr8rgrF5XX5YpRnhGNbr9JYtMF6E/nfPuk60S8xK7rOhN369kjyzf
 dB4slvCQg5RQFORLNDJZOVXsXPKpEZUCYZuKgKY/Qc2wsicC6VBVAfUlPmtrFb0RAyqd
 TStOOP1AI3ZcFR3gVOf4hYd9rw9zM3EuFXtWLh8tjQEVcDtHDLbl775eg9mOJddlB2EW
 Bsxg==
X-Gm-Message-State: AO0yUKU45QwzI9YGik2T6lOXupA8iq6gZYMYsR0LM84bcBtwygBTCqAx
 t3tW8NwXTQxUYvWJlZvELgTwUvWypa64DAHp5jI=
X-Google-Smtp-Source: AK7set/kHYkx9F2iYVASYAX2AnRyTPsgkk0idgKriSw0PFsOBfGsDbSrzRkb79ZMtFjfHCKu/D4DWvreR7aTmwoQyY4=
X-Received: by 2002:a17:906:53d3:b0:878:4c93:5b70 with SMTP id
 p19-20020a17090653d300b008784c935b70mr1813929ejo.16.1674831287856; Fri, 27
 Jan 2023 06:54:47 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
In-Reply-To: <20230127122018.2839-1-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 27 Jan 2023 22:54:11 +0800
Message-ID: <CAL+tcoAci+fwk6-JsTL7+yOiom08XSpc9Y5xbTZZ=WWRjYvnuw@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net, 
 hawk@kernel.org, john.fastabend@gmail.com, alexandr.lobakin@intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+gn+XHL+I5DO4+DWbAun4810C7fhfSL0Li+nXaVTEvs=;
 b=mCiDhwHhXiHMHtKBUL42B/Fdk/e9V9X42CMjAoBcq7XHtgd+zt5Vh+zrvJiuHWBMa5
 GZ19+XJtlWwKy/WTyjmGAiAgyHsDiwuyFcpH7thw7A/FzWAIKm0cklxSxJ8mJFvW5/L9
 Kw8xUd6rxriX5m8ZDYciLfvU2Cmh4vn0Z/rk8qF0OPo7/8Phs50RJdhJQSl2NngdEOkf
 zMnXCz/IP+8Eh4mwOKA/M3vF4Eq65ZOzXIN4RcAF2WoRM7c4JH/hY00JUcNyE5TN6mU1
 tNLotSPxdKTJ4IWnCfxuXuBjLz5JQSnZbYfdkHn4bJXVdZLGz7hHymfvp2YqI9CBrHNe
 1t+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mCiDhwHh
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU
 to some extent with XDP enabled
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

My bad. It's not that right. Please ignore the v2 patch. I need some
time to do more studies and tests on this part.

Thanks,
Jason

On Fri, Jan 27, 2023 at 8:20 PM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> From: Jason Xing <kernelxing@tencent.com>
>
> I encountered one case where I cannot increase the MTU size directly
> from 1500 to 2000 with XDP enabled if the server is equipped with
> IXGBE card, which happened on thousands of servers in production
> environment.
>
> This patch follows the behavior of changing MTU as i40e/ice does.
>
> Referrences:
> commit 23b44513c3e6f ("ice: allow 3k MTU for XDP")
> commit 0c8493d90b6bb ("i40e: add XDP support for pass and drop actions")
>
> Link: https://lore.kernel.org/lkml/20230121085521.9566-1-kerneljasonxing@gmail.com/
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
> v2:
> 1) change the commit message.
> 2) modify the logic when changing MTU size suggested by Maciej and Alexander.
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
>  1 file changed, 16 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..2c1b6eb60436 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
>                         ixgbe_free_rx_resources(adapter->rx_ring[i]);
>  }
>
> +/**
> + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> + * @adapter - device handle, pointer to adapter
> + */
> +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> +{
> +       if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> +               return IXGBE_RXBUFFER_2K;
> +       else
> +               return IXGBE_RXBUFFER_3K;
> +}
> +
>  /**
>   * ixgbe_change_mtu - Change the Maximum Transfer Unit
>   * @netdev: network interface device structure
> @@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
>  {
>         struct ixgbe_adapter *adapter = netdev_priv(netdev);
>
> -       if (adapter->xdp_prog) {
> +       if (ixgbe_enabled_xdp_adapter(adapter)) {
>                 int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
>                                      VLAN_HLEN;
> -               int i;
> -
> -               for (i = 0; i < adapter->num_rx_queues; i++) {
> -                       struct ixgbe_ring *ring = adapter->rx_ring[i];
>
> -                       if (new_frame_size > ixgbe_rx_bufsz(ring)) {
> -                               e_warn(probe, "Requested MTU size is not supported with XDP\n");
> -                               return -EINVAL;
> -                       }
> +               if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
> +                       e_warn(probe, "Requested MTU size is not supported with XDP\n");
> +                       return -EINVAL;
>                 }
>         }
>
> --
> 2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
