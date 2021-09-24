Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3014041698A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 03:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98AC7405E4;
	Fri, 24 Sep 2021 01:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RsFsEERhs_Vd; Fri, 24 Sep 2021 01:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6B7040237;
	Fri, 24 Sep 2021 01:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5B991BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 01:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B435D83F41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 01:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8d5KgTu5qcGT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Sep 2021 01:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4001182605
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Sep 2021 01:39:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D219261211;
 Fri, 24 Sep 2021 01:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632447598;
 bh=wS1vTfdanTeolFqG6+BwOprrXt9fA9ocCesCstsfaz8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MZOniup1k2WBdEvqe0zUTShI/0nU7LP+azNYTosMus0zFLH7Fq6fcCZ8wnsf79Pa+
 wBmx2Pqc2RaBXMCWDhaKXskn4qMGz2TQTy295735OXxCfQ0t7vWXmNiFkwUpBzakar
 AXEiT86ORr+UbhUTdPLHbhy9EYHzjIrOEY0DQgXzoLZ49ngS3mdqy6hv65XMSTmO8B
 DWHRAUGrr8hHPHGug+/N/Cfpdyc8vv+GKhFNYUR2hkMbP4IZXgS4DGw0O+xcQP52j+
 +DImiTrG6bdT1W3TUJWEQr2WOfxBqlbt1unriLklN5+HLo5ewI9oCWBSS3P8pS9H16
 PmZZpnYCCtf2Q==
Date: Thu, 23 Sep 2021 18:39:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210923183956.506bfde2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YU0JlzFOa7kpKgnd@unreal>
References: <cover.1632420430.git.leonro@nvidia.com>
 <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
 <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
 <YU0JlzFOa7kpKgnd@unreal>
MIME-Version: 1.0
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
 Michal Kalderon <michal.kalderon@marvell.com>,
 Edwin Peer <edwin.peer@broadcom.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>, "James E.J.
 Bottomley" <jejb@linux.ibm.com>,
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

On Fri, 24 Sep 2021 02:11:19 +0300 Leon Romanovsky wrote:
> > > @@ -835,9 +837,6 @@ void bnxt_dl_unregister(struct bnxt *bp)
> > >  {
> > >         struct devlink *dl = bp->dl;
> > >
> > > -       if (!dl)
> > > -               return;
> > > -  
> > 
> > minor nit: There's obviously nothing incorrect about doing this (and
> > adding the additional error label in the cleanup code above), but bnxt
> > has generally adopted a style of having cleanup functions being
> > idempotent. It generally makes error handling simpler and less error
> > prone.  
> 
> I would argue that opposite is true. Such "impossible" checks hide unwind
> flow errors, missing releases e.t.c.

+1, fwiw
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
