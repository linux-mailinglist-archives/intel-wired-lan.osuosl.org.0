Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F31241683F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Sep 2021 00:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18F6D82B69;
	Thu, 23 Sep 2021 22:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwB7oGos8fuQ; Thu, 23 Sep 2021 22:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FDD582969;
	Thu, 23 Sep 2021 22:55:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8876C1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 22:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74C21406AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 22:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4CJuPnNjlT7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 22:55:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DF77406A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 22:55:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C483661050;
 Thu, 23 Sep 2021 22:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632437749;
 bh=YCc8QSTAl6IqvIo5XZId9oapktBmGOuuYiyhrObvKr0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t0FKWhPPx405FMBvQEkBkZ5S8jz0qoj9QO0Veq976W50SOy0DPJmFqtgWzopnYH1K
 DvVA0sKKl/FkwFLRPrmt7jYOMTDHR/KMY0XP3Lfrj9mQ/neGK6PUtsq2iM3zV1hL2Q
 hJH3whaFxtWAUh2p/FSEHt9I2jFOqdAtbhDbCvh/taJI7cLAX+ZxQa9u1CX3DQ+EV2
 zkourkZILuuOIymxUVygEKIjkrL2My15u2XRHU4DEDoqY4eIA9JAVowOHkabeKZ5kG
 XJlB7rS+TBkDi1f+CijNXFMoOnWzCj7cJoXVVcmFkdCzY4aB9U2iWyyedG4CoORcI7
 buIdUvImxu/2w==
Date: Thu, 23 Sep 2021 15:55:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210923155547.248ab1aa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <cover.1632420430.git.leonro@nvidia.com>
References: <cover.1632420430.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] Batch of devlink related
 fixes
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
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>, "James E.J.
 Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>, "Martin K.
 Petersen" <martin.petersen@oracle.com>, Saurav Kashyap <skashyap@marvell.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Sep 2021 21:12:47 +0300 Leon Romanovsky wrote:
> I'm asking to apply this batch of devlink fixes to net-next and not to
> net, because most if not all fixes are for old code or/and can be considered
> as cleanup.
> 
> It will cancel the need to deal with merge conflicts for my next devlink series :).

Not sure how Dave will feel about adding fixes to net-next,
we do merge the trees weekly after all.

Otherwise the patches look fine.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
