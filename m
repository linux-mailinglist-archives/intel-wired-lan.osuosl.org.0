Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC62A37AA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 01:19:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 636A486B9C;
	Tue,  3 Nov 2020 00:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUqgl0iS3y1U; Tue,  3 Nov 2020 00:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11C3686B53;
	Tue,  3 Nov 2020 00:19:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6101BF962
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 00:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D31A1204F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 00:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J5sDIlKiC2h1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 00:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C742204E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 00:19:45 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C1042225E;
 Tue,  3 Nov 2020 00:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604362784;
 bh=rLRezgozMo36bMQEdpj1d95Jvx+If6mlRaMG5lcBdrs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MbvkXAq0VUXFsJuj2ZnX3LnowoI1qdCl/SgPBttkyxSaq4tckfVjdJVL1M41GarSN
 vmkquE8NaEmjduVpMqy3/P6P3NU/G5T5EYfBw154R86gBXSzSKUFmEyW/tZ0sG75DF
 wzIuIV2kQzVd3re/LNYLmrx8CWw9OLaXcYZGonAw=
Date: Mon, 2 Nov 2020 16:19:43 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20201102161943.343586b1@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201102231307.13021-3-pmenzel@molgen.mpg.de>
References: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
 <20201102231307.13021-3-pmenzel@molgen.mpg.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ethernet: igb: e1000_phy: Check
 for ops.force_speed_duplex existence
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Jeffrey Townsend <jeffrey.townsend@bigswitch.com>,
 "David S . Miller" <davem@davemloft.net>,
 John W Linville <linville@tuxdriver.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  3 Nov 2020 00:13:07 +0100 Paul Menzel wrote:
> From: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>
> 
> The ops field might no be defined, so add a check.

This change should be first, otherwise AFAIU if someone builds the
kernel in between the commits (e.g. for bisection) it will crash.

> The patch is taken from Open Network Linux (ONL), and it was added there
> as part of the patch
> 
>     packages/base/any/kernels/3.16+deb8/patches/driver-support-intel-igb-bcm5461X-phy.patch
> 
> in ONL commit f32316c63c (Support the BCM54616 and BCM5461S.) [1]. Part
> of this commit was already upstreamed in Linux commit eeb0149660 (igb:
> support BCM54616 PHY) in 2017.
> 
> I applied the forward-ported
> 
>     packages/base/any/kernels/5.4-lts/patches/0002-driver-support-intel-igb-bcm5461S-phy.patch
> 
> added in ONL commit 5ace6bcdb3 (Add 5.4 LTS kernel build.) [2].
> 
> [1]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/f32316c63ce3a64de125b7429115c6d45e942bd1
> [2]: https://github.com/opencomputeproject/OpenNetworkLinux/commit/5ace6bcdb37cb8065dcd1d4404b3dcb6424f6331

No need to put this in every commit message.

We preserve the cover letter in tree as a merge commit message, so
explaining things once in the cover letter is sufficient.

> Cc: Jeffrey Townsend <jeffrey.townsend@bigswitch.com>

Jefferey will need to provide a sign-off as the author.

> Cc: John W Linville <linville@tuxdriver.com>
> Signed-off-by: Paul Menzel <pmenzel@molgen.mpg.de>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
