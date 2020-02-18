Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B52162EFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B2318565B;
	Tue, 18 Feb 2020 18:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPKtNA_PVFnd; Tue, 18 Feb 2020 18:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E231E853D9;
	Tue, 18 Feb 2020 18:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85E6A1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7CDB9862E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7vJHO1E6IaWf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:25:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F22586096
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:25:31 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id i11so10388103ioi.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0oo2FfOUL0MjlcigokgYSuRLB0N4VOcL/NZk+nWeo40=;
 b=Wq3t2NifRRVRe6tINTW8hnfC80948jJcADE2VTky69RGcQ4+0Dd53XZ1Y1VlaNyLFa
 EfnQcbLNpv/2vZpiea2s2z9deEkxsXp14CLzj6XpJ2WOoIbvX7WKkcy/cML5KZh+VeGr
 UlwwDsF+m1vxVQRM6vLpsNGVaB3R5HIdPOYp07ciPcmBHr7rqWNT1b5v+o7BEW01IhGj
 ejEtIlBR4lNJUjBPWwg6XvzAX1AJ3XK7nsmTS0zJCx+70vGgdRlDVuN/Etqa1dj8kxDk
 Dwn6dYui17G6BrZxMFPFthQXEJ9Gj6wSKhjYFWNoMX1KEg2kWuURhzvJBT1LKgORPCFs
 zFOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0oo2FfOUL0MjlcigokgYSuRLB0N4VOcL/NZk+nWeo40=;
 b=eSc4JK57BcBEVB1pSBlgJjeqcYgSERbsU68PqbRiHH2QCc5+MlC1tfu5q5vpUrF1mm
 gVjN+z9+IwrBkOV8p2lC5zWidNzKqqTLKb0gpnP8E+4e3m2MXgnwmCVFMIis4W7bY2jE
 mHV7LCGuYD1tXSlLzFrtJjRHVFz1vHgQlRC/wv4WfP4iONfdjUKbIl5EocS8OoV13MwR
 eCQw1yqAOa3lly9tJ3g7oTbZAHdCgEJGwO0wdBU6sg3KidjcOSxl/vfxLe7sqqWIggMe
 SuuEAVLLgt+80xa9VolLWzoxHUsWK8rP6aYsgq63HaZeGgAKpZRufVIA7ku6atl2UpBJ
 GwPA==
X-Gm-Message-State: APjAAAUcqTE8Dt19RFiufM6Zsg3EC3Vd+gCLTRnj2ksl01AG0q/V4O7v
 +tiOV+hVExokRY0r4UEUAbvHyQ80Q99mYZDLk8M=
X-Google-Smtp-Source: APXvYqwgtWgImN9QZV7JQUuv0hVUZuRkzL56C+1AttxemO7MC8eMPliv6NfqFQATOc/UbFf6Hm1OohYvw/cxkJsQ2bc=
X-Received: by 2002:a5e:860f:: with SMTP id z15mr16017999ioj.64.1582050330517; 
 Tue, 18 Feb 2020 10:25:30 -0800 (PST)
MIME-Version: 1.0
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <9fdc5f0c-fdf0-122e-48a5-43ff029cf8d9@gmail.com>
In-Reply-To: <9fdc5f0c-fdf0-122e-48a5-43ff029cf8d9@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 18 Feb 2020 10:25:19 -0800
Message-ID: <CAKgT0UeUEcoKZsRnxzftMA4tc2chasmW+sWQkP11hVLbdYTYxA@mail.gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:51:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: core: add helper
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

On Mon, Feb 17, 2020 at 1:41 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Several network drivers for chips that support TSO6 share the same code
> for preparing the TCP header. A difference is that some reset the
> payload_len whilst others don't do this. Let's factor out this common
> code to a new helper.
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  include/net/ip6_checksum.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/include/net/ip6_checksum.h b/include/net/ip6_checksum.h
> index 7bec95df4..ef0130023 100644
> --- a/include/net/ip6_checksum.h
> +++ b/include/net/ip6_checksum.h
> @@ -76,6 +76,18 @@ static inline void __tcp_v6_send_check(struct sk_buff *skb,
>         }
>  }
>
> +static inline void tcp_v6_gso_csum_prep(struct sk_buff *skb,
> +                                       bool clear_payload_len)
> +{
> +       struct ipv6hdr *ipv6h = ipv6_hdr(skb);
> +       struct tcphdr *th = tcp_hdr(skb);
> +
> +       if (clear_payload_len)
> +               ipv6h->payload_len = 0;
> +
> +       th->check = ~tcp_v6_check(0, &ipv6h->saddr, &ipv6h->daddr, 0);
> +}
> +
>  #if IS_ENABLED(CONFIG_IPV6)
>  static inline void tcp_v6_send_check(struct sock *sk, struct sk_buff *skb)
>  {

So functionally I believe this is correct. The only piece I have a
question about is if we should just force the clear_payload_len as
always being the case since the value should either be
ignored/overwritten in any GSO case anyway.

Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
