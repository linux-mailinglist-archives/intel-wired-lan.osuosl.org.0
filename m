Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A20941685C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 01:11:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7019D606B3;
	Thu, 23 Sep 2021 23:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ccei2jvjaYU; Thu, 23 Sep 2021 23:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8211B60631;
	Thu, 23 Sep 2021 23:11:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57BD81BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4575A4071E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDfy_Sw56hfr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 23:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF1F54071B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 23:11:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BBA3D61107;
 Thu, 23 Sep 2021 23:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632438683;
 bh=ILJ6ftNnE9k3HLjd3767aM80d5dSXwBb9STyViQHsTU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d6xb0sBmcLCsSN4o8Nmf9iBZmY6iH5GTHlUTZ4njs2oiGZTh3bnipzbuFqBILzhNF
 5px5K9H0CcDO51xqA9JT5vbfYRvb9wt8A5YJkii6rglY3yLCjLi3U1TJCSOg6MH0ua
 eJZMmO7dG0QNdxwpNvFnPdz7dCOh1N4ATR7X0vZuwImk2U5Q4n4mPV9UU118v2M8t+
 eTKCfSnGGoRgXKY1yZ9mLmZFBh6XZmK0VDZwqFmrBtco2c20AVkDiryk+MiBSjAc7B
 y2f/O2BPpkQuZ0h5UBgPN+RYTGDMXjGds1n4mYmeT1rGszU4aOEnTuVOV5KJjynLXJ
 zEIphBay1IBcg==
Date: Fri, 24 Sep 2021 02:11:19 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Edwin Peer <edwin.peer@broadcom.com>
Message-ID: <YU0JlzFOa7kpKgnd@unreal>
References: <cover.1632420430.git.leonro@nvidia.com>
 <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
 <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] bnxt_en: Check devlink
 allocation and registration status
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Ariel Elior <aelior@marvell.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 23, 2021 at 02:11:40PM -0700, Edwin Peer wrote:
> On Thu, Sep 23, 2021 at 11:13 AM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > From: Leon Romanovsky <leonro@nvidia.com>
> >
> > devlink is a software interface that doesn't depend on any hardware
> > capabilities. The failure in SW means memory issues, wrong parameters,
> > programmer error e.t.c.
> >
> > Like any other such interface in the kernel, the returned status of
> > devlink APIs should be checked and propagated further and not ignored.
> >
> > Fixes: 4ab0c6a8ffd7 ("bnxt_en: add support to enable VF-representors")
> > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > ---
> >  drivers/net/ethernet/broadcom/bnxt/bnxt.c         |  5 ++++-
> >  drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 13 ++++++-------
> >  drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h | 13 -------------
> >  3 files changed, 10 insertions(+), 21 deletions(-)

<...>

> > @@ -835,9 +837,6 @@ void bnxt_dl_unregister(struct bnxt *bp)
> >  {
> >         struct devlink *dl = bp->dl;
> >
> > -       if (!dl)
> > -               return;
> > -
> 
> minor nit: There's obviously nothing incorrect about doing this (and
> adding the additional error label in the cleanup code above), but bnxt
> has generally adopted a style of having cleanup functions being
> idempotent. It generally makes error handling simpler and less error
> prone.

I would argue that opposite is true. Such "impossible" checks hide unwind
flow errors, missing releases e.t.c.

<...>

> >
> 
> Reviewed-by: Edwin Peer <edwin.peer@broadcom.com>

Thanks for the review.


> 
> Regards,
> Edwin Peer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
