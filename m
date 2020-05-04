Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3E1C4641
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 20:47:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE1458798A;
	Mon,  4 May 2020 18:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIWUp-TmJAHp; Mon,  4 May 2020 18:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 675AE87D86;
	Mon,  4 May 2020 18:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 191C71BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11DDD23223
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydlXE6DMMUVO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 18:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id F2F4A2267B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 18:47:19 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id e9so13441887iok.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 May 2020 11:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=koFvsRUWao5qzKvTlMGuvzwZJ52dqIU+0jFAi67WXjc=;
 b=Z5n/9N+EhpxSn34tXzyNmmnHzQJSIDJWCBmYSuP6TnSkYAaGucLfU7N4A8tj8h/Dkl
 E99bfk0+b7lI51giG3Izhf82Fr6kupsX01R+dFWZeqKE9T0NjhxEkVwbADVSV8s6Qcdd
 NaHQ5L4F6hP9bQEOHcccjESVmABRlXjnYeWsMt/99NGF95ovuWFKDEFcGtTbeZAI2PSQ
 h9/KTerum7eQ/HPYLqupiQ11W24cuozkVG+q8ne++QGAfdJ6ysoGza0NQ+UyCKHxiSpQ
 uN29SeHJ0kSQD1TaDFMXs0RmHuRqaec0eiorb9SfLPRTV4oDuEC2WJ2BL+y5ZYzQDPMK
 gfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=koFvsRUWao5qzKvTlMGuvzwZJ52dqIU+0jFAi67WXjc=;
 b=db4ejk94YYSKS64To96GZ3oyuTQ44FUh8Bz/CywYvjpx5lRzL//rRNJszYSdUB/rZb
 emmMVVwfS1TN4OHQv3C8U0Xia7WHJ2/ay2hriJ4PpptapT0bR4oMrhSYq/cKZSBDrFej
 Yetl3IGZ8XY8GOlFZr3BvkXh6Jh1yFyu34gs0LI18DEzwb1flJv6H6a79OFfid9O1zWp
 BmWB27FnhBhVwUnKBlsMCuw3QuoDi3CAh+H3/ZHzflWf5W1ITg86ijTJJzoa7hv+nogg
 M1yLd+MTJvaHG+Igs1Zl/G4sVczxTJtNchNfXLnBGrb39o7XGPiXpVGAqqOQ+f6rJ9M9
 KiAw==
X-Gm-Message-State: AGi0PualtpviO73rZXqYag/16QRJFQ2zTc95JxHqaj2iBr1/b6y3iM9G
 F2X3r4sHaoCuK+25qNtqvsnv0EEvtlHCX2hxP3Y=
X-Google-Smtp-Source: APiQypI2ETCToLEL6LenQpmyoPN28lMj15elhRDY2jIyXLA2EdLswm677bVst9ydanud/KL+a+B6IGh2z1tdKpxOqCA=
X-Received: by 2002:a02:c84e:: with SMTP id r14mr16363445jao.96.1588618039034; 
 Mon, 04 May 2020 11:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200504173218.1724-1-kai.heng.feng@canonical.com>
In-Reply-To: <20200504173218.1724-1-kai.heng.feng@canonical.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 4 May 2020 11:47:08 -0700
Message-ID: <CAKgT0UevTrqaA7AcYuWYXcko8vbA=CpqjiaH0MLSa9B6wBn9ZQ@mail.gmail.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: Report speed and duplex as
 unknown when device is runtime suspended
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
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 4, 2020 at 10:32 AM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> igb device gets runtime suspended when there's no link partner. We can't
> get correct speed under that state:
> $ cat /sys/class/net/enp3s0/speed
> 1000
>
> In addition to that, an error can also be spotted in dmesg:
> [  385.991957] igb 0000:03:00.0 enp3s0: PCIe link lost
>
> Since device can only be runtime suspended when there's no link partner,
> we can directly report the speed and duplex as unknown.
>
> The more generic approach will be wrap get_link_ksettings() with begin()
> and complete() callbacks. However, for this particular issue, begin()
> calls igb_runtime_resume() , which tries to rtnl_lock() while the lock
> is already hold by upper ethtool layer.
>
> So let's take this approach until the igb_runtime_resume() no longer
> needs to hold rtnl_lock.
>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 39d3b76a6f5d..b429bca4aa6a 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -143,6 +143,12 @@ static int igb_get_link_ksettings(struct net_device *netdev,
>         u32 speed;
>         u32 supported, advertising;
>
> +       if (pm_runtime_suspended(&adapter->pdev->dev)) {
> +               cmd->base.duplex = DUPLEX_UNKNOWN;
> +               cmd->base.speed = SPEED_UNKNOWN;
> +               return 0;
> +       }
> +
>         status = rd32(E1000_STATUS);
>         if (hw->phy.media_type == e1000_media_type_copper) {

The only thing I am not really a fan of with this approach is that it
is essentially discarding all of the information about what the user
has configured in terms of auto-negotiation, flow-control, etc.

From what I can tell the only physical hardware interaction is the
read of the status register. Would it be possible to just initialize
the "status" value to 0, and then only perform the read of the
register if we are not runtime suspended?

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
