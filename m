Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B48ED1C13
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CA8285230;
	Wed,  9 Oct 2019 22:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKNDXXYfF5H9; Wed,  9 Oct 2019 22:44:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E86B8584F;
	Wed,  9 Oct 2019 22:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46B391BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F67A84520
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F_J9OU4ui53H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1718C844BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:44:19 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q10so9257179iop.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2019 15:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KzxQtOY8P1p9nO7zji276EpX0cGGXQim8YrjOI5TGkQ=;
 b=Cwy74s4BKZwiHzyfPdmwMPD3F1W5c9OIjdH2gVdG9cZ0I3sWwTnZGuNbtGIGuTb9++
 wD4r+ZU6hch0PYIrsbrBFiiWamS4feD6u8Ti1UzIz1MzKSuHlfTT9a8vkoATJdEZoKUw
 b41FD5u/Z1dorqD6uUTFEsqjSrOYTK8HzE2qeulNLM/NNhWkGcwewCQLmCMkOtfDiYWQ
 bZbhQJoEsSPUxEGwsJY+ZAUKAhz8U0ERyp8YsHaVRiKpk4qD5UnBvFRAb35L1EgJv0x0
 AviWTqmeM0mi47ip6PYr/EXG2eS7TfrGDS1bnmJpsVOS2917nlwT6r+36vFmzCvuCbR4
 bdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KzxQtOY8P1p9nO7zji276EpX0cGGXQim8YrjOI5TGkQ=;
 b=Aj923T4uQVUVQ7TYkPVExgTys8aaSBWAjNN4AifPO+vHoxfcjrgHI+puh0DtFgbO/e
 SbPevMWs73VbQnvAuFAb5a5gKO3SMlhNxFH2fxdknWZNKdBNFqs+jCAZr14RkNuxFjPi
 XD44V/9eqsP1A6h0HOZZlup9uQDd2rL2AFzlJfqIcOkqPO3WuuXZ/hRtc6WHFVE1HhKI
 GgJCphh/Ft4ky8musZ9G8Emd0Gqe9tb5nAYf7JeAhqpZyegC6NfFD95glSb0tascxGsB
 DINXvk8HYIcGWYg72yXnCL8Ksv3mBwxk6ay8PSo8XXniGOP2Cf/3p9ZpVQh08Fq072Kz
 QoUw==
X-Gm-Message-State: APjAAAXJCq2GPhQeDik0I4zeMRxNfaG4MWHO3/jMPc6Kv1Y/oKMb/lVL
 zpziV7d7zoTQoxMfnw7dZrvPWP9QHA4JNy8PkIg=
X-Google-Smtp-Source: APXvYqym+Dn+7xMRkV3O9Uy1xPGuZ2geRvh3DEgjX5bsn64iIPche/thX9bH8OfXBWxd/s3Ipd2FhKcFeCYGO5JjiXI=
X-Received: by 2002:a02:40c6:: with SMTP id n189mr6252472jaa.121.1570661058059; 
 Wed, 09 Oct 2019 15:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
In-Reply-To: <1570658777-13459-1-git-send-email-johunt@akamai.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 9 Oct 2019 15:44:06 -0700
Message-ID: <CAKgT0UdBPYRnwAuOGhCBAJSRhdHcnw28Tznr0GPAtqe-JWFjTQ@mail.gmail.com>
To: Josh Hunt <johunt@akamai.com>
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb, ixgbe,
 i40e UDP segmentation offload support
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
Cc: Netdev <netdev@vger.kernel.org>, Willem de Bruijn <willemb@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 9, 2019 at 3:08 PM Josh Hunt <johunt@akamai.com> wrote:
>
> Alexander Duyck posted a series in 2018 proposing adding UDP segmentation
> offload support to ixgbe and ixgbevf, but those patches were never
> accepted:
>
> https://lore.kernel.org/netdev/20180504003556.4769.11407.stgit@localhost.localdomain/
>
> This series is a repost of his ixgbe patch along with a similar
> change to the igb and i40e drivers. Testing using the udpgso_bench_tx
> benchmark shows a noticeable performance improvement with these changes
> applied.
>
> All #s below were run with:
> udpgso_bench_tx -C 1 -4 -D 172.25.43.133 -z -l 30 -u -S 0 -s $pkt_size
>
> igb::
>
> SW GSO (ethtool -K eth0 tx-udp-segmentation off):
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            120143.64       113     81263   81263   83.55   1.35
> 2944            120160.09       114     40638   40638   62.88   1.81
> 5888            120160.64       114     20319   20319   43.59   2.61
> 11776           120160.76       114     10160   10160   37.52   3.03
> 23552           120159.25       114     5080    5080    34.75   3.28
> 47104           120160.55       114     2540    2540    32.83   3.47
> 61824           120160.56       114     1935    1935    32.09   3.55
>
> HW GSO offload (ethtool -K eth0 tx-udp-segmentation on):
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            120144.65       113     81264   81264   83.03   1.36
> 2944            120161.56       114     40638   40638   41      2.78
> 5888            120160.23       114     20319   20319   23.76   4.79
> 11776           120161.16       114     10160   10160   15.82   7.20
> 23552           120156.45       114     5079    5079    12.8    8.90
> 47104           120159.33       114     2540    2540    8.82    12.92
> 61824           120158.43       114     1935    1935    8.24    13.83
>
> ixgbe::
> SW GSO:
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            1070565.90      1015    724112  724112  100     10.15
> 2944            1201579.19      1140    406342  406342  95.69   11.91
> 5888            1201217.55      1140    203185  203185  55.38   20.58
> 11776           1201613.49      1140    101588  101588  42.15   27.04
> 23552           1201631.32      1140    50795   50795   35.97   31.69
> 47104           1201626.38      1140    25397   25397   33.51   34.01
> 61824           1201625.52      1140    19350   19350   32.83   34.72
>
> HW GSO Offload:
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            1058681.25      1004    715954  715954  100     10.04
> 2944            1201730.86      1134    404254  404254  61.28   18.50
> 5888            1201776.61      1131    201608  201608  30.25   37.38
> 11776           1201795.90      1130    100676  100676  16.63   67.94
> 23552           1201807.90      1129    50304   50304   10.07   112.11
> 47104           1201748.35      1128    25143   25143   6.8     165.88
> 61824           1200770.45      1128    19140   19140   5.38    209.66
>
> i40e::
> SW GSO:
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            650122.83       616     439362  439362  100     6.16
> 2944            943993.53       895     319042  319042  100     8.95
> 5888            1199751.90      1138    202857  202857  82.51   13.79
> 11776           1200288.08      1139    101477  101477  64.34   17.70
> 23552           1201596.56      1140    50793   50793   59.74   19.08
> 47104           1201597.98      1140    25396   25396   56.31   20.24
> 61824           1201610.43      1140    19350   19350   55.48   20.54
>
> HW GSO offload:
> $pkt_size       kB/s(sar)       MB/s    Calls/s Msg/s   CPU     MB2CPU
> ========================================================================
> 1472            657424.83       623     444653  444653  100     6.23
> 2944            1201242.87      1139    406226  406226  91.45   12.45
> 5888            1201739.95      1140    203199  203199  57.46   19.83
> 11776           1201557.36      1140    101584  101584  36.83   30.95
> 23552           1201525.17      1140    50790   50790   23.86   47.77
> 47104           1201514.54      1140    25394   25394   17.45   65.32
> 61824           1201478.91      1140    19348   19348   14.79   77.07
>
> I was not sure how to proper attribute Alexander on the ixgbe patch so
> please adjust this as necessary.

For the ixgbe patch I would be good with:
Suggested-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

The big hurdle for this will be validation. I know that there are some
parts such as the 82598 in the case of the ixgbe driver or 82575 in
the case of igb that didn't support the feature, and I wasn't sure
about the parts supported by i40e either.  From what I can tell the
x710 datasheet seems to indicate that it is supported, and you were
able to get it working with your patch based on the numbers above. So
that just leaves validation of the x722 and making sure there isn't
anything firmware-wise on the i40e parts that may cause any issues.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
