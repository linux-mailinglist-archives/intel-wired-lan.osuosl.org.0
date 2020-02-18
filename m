Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9F0162EFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:51:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44F4A857C1;
	Tue, 18 Feb 2020 18:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tw36PoSUjO4Z; Tue, 18 Feb 2020 18:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87426859BA;
	Tue, 18 Feb 2020 18:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8981E1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7770C85193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLyfKSpHo_kN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:37:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6BB4485188
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:37:13 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id h8so10999827iob.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6LA/EHc+e6t+L6IRcGNPtyhrDj7kNqfD9AG7NcrsSIY=;
 b=ekctg0PMKqPatEN0YWNxfW/TVojwFT/Xw7GIftfux3NatRBdzA6JL2YNSwG79V8vKD
 UFw11psOsaLwBmDpMbkxywHStdyI6bR827wD7sVoCDbHc2V+SH8nTqn8u2rBcBRprmPH
 SU9n42TIwAc97+EMrUvqUmOvl4QbE9a2vCOc83T/EYnkN0XFJv9NzBDW+aeytcRtI3mz
 hB2rrPEHrade7jwj811BcUiQzn9Vdu3yhEZ1T5ecD6B8T4uRTty2cgqbYL5he+o6jy+O
 GYHxfbqWVzrlQSUUJZNR8KzNeBkY5E3BcTIjcnrcfhhJerkmN68i8YJ32/DwSAh7nAGh
 Vl3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6LA/EHc+e6t+L6IRcGNPtyhrDj7kNqfD9AG7NcrsSIY=;
 b=tJ6dQtG808XtUgDI7665FQqX1moryHHVBXj7YfeMEDW2CRxeord3Mi4r8gYH/PLDdd
 QQf8NtqsaebTE49wMowSOz/klrXj1sLhJjBtB/PNmyIFJcVNz3dFWasUS8R1Rs9ycvsL
 +ExxzNYNPxd2euxzvrDH0QzvnYBrtgwK/PuWjbqEoV1ODV8YmvsAxSmOSpVnI0XIGZxY
 dm3p6nHL3s541dhdiZtXHxf04+tON6nnDFNQZVjIIjnKibZcH+GUU7rAwUvojdNJH0c7
 Rdg00wdXZedWI29w0xR1IDLLfRNLlDAUOHol/jTkTdqqT4l+s6DsgWgXINTGeN2jpRV4
 /ONA==
X-Gm-Message-State: APjAAAVbSm3D7yPX8GAHQFWS6RJA+2i44peTky1o7Y/7XA2HWrRzvxoK
 X+AZWcnGopRY/ul1FPPh/3hChNJAVIui4NnZ4A0=
X-Google-Smtp-Source: APXvYqwhyw0esPb3ZI68eB4xydSJJbHEThpDI7EWoOn2jZ3Agi54dpmtxRpKq28iacd4HYAP0sYnlF6/X5wTe00bIIg=
X-Received: by 2002:a6b:6205:: with SMTP id f5mr17136935iog.42.1582051032503; 
 Tue, 18 Feb 2020 10:37:12 -0800 (PST)
MIME-Version: 1.0
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <02ea88e7-1a79-f779-d58c-bb1dced0b3b4@gmail.com>
In-Reply-To: <02ea88e7-1a79-f779-d58c-bb1dced0b3b4@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 18 Feb 2020 10:37:01 -0800
Message-ID: <CAKgT0UfaBpLxWQZO55-KE8QKJD9XgC2SCPAtzo=PA_MAwRxtuw@mail.gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:51:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] r8169: use new helper
 tcp_v6_gso_csum_prep
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
Cc: linux-hyperv@vger.kernel.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Ronak Doshi <doshir@vmware.com>, "VMware, Inc." <pv-drivers@vmware.com>,
 Chris Snook <chris.snook@gmail.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jay Cliburn <jcliburn@gmail.com>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Pensando Drivers <drivers@pensando.io>, GR-Linux-NIC-Dev@marvell.com,
 Timur Tabi <timur@kernel.org>, Rasesh Mody <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Shannon Nelson <snelson@pensando.io>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 17, 2020 at 1:42 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Simplify the code by using new helper tcp_v6_gso_csum_prep.
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  drivers/net/ethernet/realtek/r8169_main.c | 26 ++---------------------
>  1 file changed, 2 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/net/ethernet/realtek/r8169_main.c b/drivers/net/ethernet/realtek/r8169_main.c
> index 5a9143b50..75ba10069 100644
> --- a/drivers/net/ethernet/realtek/r8169_main.c
> +++ b/drivers/net/ethernet/realtek/r8169_main.c
> @@ -4108,29 +4108,6 @@ static bool rtl_test_hw_pad_bug(struct rtl8169_private *tp, struct sk_buff *skb)
>         return skb->len < ETH_ZLEN && tp->mac_version == RTL_GIGA_MAC_VER_34;
>  }
>
> -/* msdn_giant_send_check()
> - * According to the document of microsoft, the TCP Pseudo Header excludes the
> - * packet length for IPv6 TCP large packets.
> - */
> -static int msdn_giant_send_check(struct sk_buff *skb)
> -{
> -       const struct ipv6hdr *ipv6h;
> -       struct tcphdr *th;
> -       int ret;
> -
> -       ret = skb_cow_head(skb, 0);
> -       if (ret)
> -               return ret;
> -
> -       ipv6h = ipv6_hdr(skb);
> -       th = tcp_hdr(skb);
> -
> -       th->check = 0;
> -       th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
> -
> -       return ret;
> -}
> -
>  static void rtl8169_tso_csum_v1(struct sk_buff *skb, u32 *opts)
>  {
>         u32 mss = skb_shinfo(skb)->gso_size;
> @@ -4163,9 +4140,10 @@ static bool rtl8169_tso_csum_v2(struct rtl8169_private *tp,
>                         break;
>
>                 case htons(ETH_P_IPV6):
> -                       if (msdn_giant_send_check(skb))
> +                       if (skb_cow_head(skb, 0))
>                                 return false;
>
> +                       tcp_v6_gso_csum_prep(skb, false);
>                         opts[0] |= TD1_GTSENV6;
>                         break;
>

This change looks more or less identical to the one you made in
"drivers/net/usb/r8152.c" for patch 3. If you have to resubmit it
might make sense to pull that change out and include it here since
they are both essentially the same change.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
