Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEABB162EFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:51:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AE5385A74;
	Tue, 18 Feb 2020 18:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8pM1zjEDJ-eT; Tue, 18 Feb 2020 18:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 376668564D;
	Tue, 18 Feb 2020 18:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 276361BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B44A204C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbCDMsDg1t6r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:34:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F52720027
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:34:49 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id k24so10940430ioc.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6utW5zpBGZdkE/X85fwj9ukk+lXXzsfc4fJcknN/FJk=;
 b=toQcBUKNgScyCDiWdC34axIPqQTZKiFC6SAAtB0u+WJ+ZuStKhtPXSjLiO8H/xXLx5
 Jh07dsG4hyNZv0NJLSICIrsnmcjoFyJtkQhdPwjMZbY87iR6OA7r6lrL2AByrW3IJfZc
 ghjwlfaN9yn+xlfe4XjnvDLIHA0OznNAl12wg3fi2AOifDyHkCCu8oi/MxlurwZV8Os3
 6Uaz831KXQp2FpsKydbPIt2tMJVh8ezHMbQq4Lb+mqAkAmMITFw54ZKRt8hZyB9u/BjM
 QPEVBu1a1s+YAAD2yZ17exvJ2zVf9oA3d7EeOXeQIJuaJp+gHr3AMeUgDY+zLqQ20HIF
 qCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6utW5zpBGZdkE/X85fwj9ukk+lXXzsfc4fJcknN/FJk=;
 b=kJS7ShFL29NGNjjTi7ydt7EtK2hf4bFEr1UY9IQETmXHhiLkksBzF0StlYiINqjgCA
 FLeMAftPoHilKvxa7vTidsa7tUCm/Th/OmVPzn7PuimbBE/5Nbls0Z4dDobAysrd8x5E
 B1OzKAz8hOkInq0ivjHEp9JW8IdMws7re63eARQNUSxMMlg84OKWrmI9gL9Bs3Vz3LhR
 gWR/rxTc2KxPc8xjLnt4QYIsuL1dZvA6Ga3qVsCoyky6vr8QjQe1oagIyYnx9HXg2AlJ
 nHY+QqctufPB1ORo6IiJ311Ob4jT/5gmENr4NaB2zSZr6BH7dFXB42IsOUctX9AuC+Wc
 HZIA==
X-Gm-Message-State: APjAAAUn5yCu7LM7j/zjW5Cw8x+Sr76FQSZDfCQjpQU7Xb0ftVdSGBU+
 E89my6lmWmwZfZ9St4pajb/7z17fvhNZ86OHuro=
X-Google-Smtp-Source: APXvYqzrmTgiAn3qTV4ak/NxkwEw5dKPolvgC/KdPk7W9Fb2Vcgr2yrHz75tj+TGm+xHulsJ2cgO+Lkx7KEmGDGh3SY=
X-Received: by 2002:a5e:860f:: with SMTP id z15mr16047488ioj.64.1582050888480; 
 Tue, 18 Feb 2020 10:34:48 -0800 (PST)
MIME-Version: 1.0
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <9270ae4b-feb1-6a4d-8a22-fbe5e47b7617@gmail.com>
In-Reply-To: <9270ae4b-feb1-6a4d-8a22-fbe5e47b7617@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 18 Feb 2020 10:34:37 -0800
Message-ID: <CAKgT0UdP78GGnowWC85YiTAHOr63NiLa25=2TSckKBEzGBdeJA@mail.gmail.com>
To: Heiner Kallweit <hkallweit1@gmail.com>
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:51:05 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] net: use new helper
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

On Mon, Feb 17, 2020 at 1:43 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Use new helper tcp_v6_gso_csum_prep in additional network drivers.
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  drivers/net/ethernet/atheros/alx/main.c       |  5 +---
>  .../net/ethernet/atheros/atl1c/atl1c_main.c   |  6 ++---
>  drivers/net/ethernet/brocade/bna/bnad.c       |  7 +----
>  drivers/net/ethernet/cisco/enic/enic_main.c   |  3 +--
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  6 +----
>  drivers/net/ethernet/intel/e1000e/netdev.c    |  5 +---
>  drivers/net/ethernet/jme.c                    |  7 +----
>  .../net/ethernet/pensando/ionic/ionic_txrx.c  |  5 +---
>  drivers/net/ethernet/qualcomm/emac/emac-mac.c |  7 ++---
>  drivers/net/ethernet/socionext/netsec.c       |  6 +----
>  drivers/net/hyperv/netvsc_drv.c               |  5 +---
>  drivers/net/usb/r8152.c                       | 26 ++-----------------
>  drivers/net/vmxnet3/vmxnet3_drv.c             |  5 +---
>  13 files changed, 16 insertions(+), 77 deletions(-)
>

It might make sense to break this up into several smaller patches
based on the maintainers for the various driver bits.

So the changes all look fine to me, but I am not that familiar with
the non-Intel drivers.

Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
