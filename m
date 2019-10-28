Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2389E7C1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2019 23:02:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D04984B2D;
	Mon, 28 Oct 2019 22:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNS3-AawD+tC; Mon, 28 Oct 2019 22:02:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7C6B8768F;
	Mon, 28 Oct 2019 22:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 262511BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 22:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 21B6F20517
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 22:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XHU6TTI-QwVl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2019 22:02:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C2F82034D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 22:02:25 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 195so8974320lfj.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 15:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KErWkK4oeYPU6+rY2oaIII7MNzPBByHyP7dvIzDL4pI=;
 b=sUFX+dkk/m9lfSbRJaqmCtdD1e0MMf6ZR0noPbEN+MV96wam39ePOt88R845pQKhkf
 6zDYBXkGUPnsY5U2yyRslecA7lieQhhfjOKyPAw5DY6fk5KlQ+1oLmIM3SRrnSI92jmc
 gBcSvGgZxE5yCbv5XNM7pm5zWkmyI2KiNgJ7I9EdoiTVL22IhJoknq5FSVOsUdk6tZpW
 mXlFJcoyzhLZ5m6qfLGwUMYMIZeLOLxnDQ1drhs1byK/B7wtpWhhHN1ZFd1OyKoVr/x1
 jM545a2qC8KOYe3FuBW8DBDq1A51Lzzc1oAxMdyt7bDD9JEovBtJThqWuQF3zVNeLb0v
 ibAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KErWkK4oeYPU6+rY2oaIII7MNzPBByHyP7dvIzDL4pI=;
 b=uXmNMb3a54Q7a3/5Ykotgb9wDWHe8Pl8/lPYpkBtYWrH4ciMNyqfC5fnzirZAMIJHH
 L+1dP4rSxCzjJIzPqlIm7EcUY7uzPBg3OT9QKEY0vUDJvI6W6OJsbATzrqkI/n7hmepR
 49x0pz/LJyUI71p2TjFavb02MB6QI3gyKqFHLDbFtNtk8P4qS7S3iZZEPnnHxm9fPXBO
 +mrrvrY3E6kkU+QFhNuq/aeHU0vZkXCwX2ou7TvpCwvGuXaOquHYLlD9pTtAY7KFOsmQ
 elZVP0PQ5/pBagSYpNMW1dECXDKJereVB6VMkSLzmqx3EYE+U+7mdFKukkg3/DMrSt75
 XsPQ==
X-Gm-Message-State: APjAAAVFzVCw92nFGln39VTryNhy4dHQN7nuD5vRzfeI1QzjMUq2Ls0H
 XhWB+BFvZssGVuMPFpFd2dKYOSQHhcmGz0jekVo=
X-Google-Smtp-Source: APXvYqxwomB/nQjPxHaMf2TIC5xEn2M5ObUVKV2XEGFpCi4W5ERtxA/BDloRk0Bg+nyVtdYfN1IzDp4rJcst590q3sc=
X-Received: by 2002:a19:dc4c:: with SMTP id f12mr71505lfj.86.1572300143214;
 Mon, 28 Oct 2019 15:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191028183714.50528-1-jesse.brandeburg@intel.com>
In-Reply-To: <20191028183714.50528-1-jesse.brandeburg@intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Mon, 28 Oct 2019 15:02:12 -0700
Message-ID: <CAP-MU4PtF0eJuuihH6VQ12RDak=Vrn8oYPitqU7Z10pD3YcM_w@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: implement VF stats
 NDO
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 28, 2019 at 11:37 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> Implement the VF stats gathering via the kernel via ndo_get_vf_stats().
> The driver will show per-VF stats in the output of the
> ip -s link show dev <PF>
> command.
>
> Testing Hints (Required if no HSD): ip -s link show dev eth0,
> will return non-zero VF stats.

Oh, I remember the "HSD" acronym... but it isn't needed in an external patch.

>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---

[...]

> +       vf_stats->rx_packets = stats->rx_unicast + stats->rx_broadcast +
> +               stats->rx_multicast;
> +       vf_stats->tx_packets = stats->tx_unicast + stats->tx_broadcast +
> +               stats->tx_multicast;
> +       vf_stats->rx_bytes   = stats->rx_bytes;
> +       vf_stats->tx_bytes   = stats->tx_bytes;
> +       vf_stats->broadcast  = stats->rx_broadcast + stats->tx_broadcast;
> +       vf_stats->multicast  = stats->rx_multicast + stats->tx_multicast;

Are you sure these are supposed to count up both Tx and Rx multicast
and broadcast?  With a quick peek at VF stats output from "ip -s link"
I see that only the Rx line mcast and bcast, the Tx line does not.  I
would infer that we're only counting what has been received.

    vf 0 MAC 00:00:00:00:00:00, spoof checking off, link-state auto, trust off
    RX: bytes  packets  mcast   bcast
    0          0        0       0
    TX: bytes  packets
    0          0

I suspect there's a definition somewhere, but I haven't stumbled
across it recently.

(yes, I still occasionally read these patches)

sln
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
