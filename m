Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE14180A4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 10:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ED884161E;
	Sat, 25 Sep 2021 08:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6imbtffm126n; Sat, 25 Sep 2021 08:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17D0C415CA;
	Sat, 25 Sep 2021 08:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24F751BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 08:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 094DA415CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 08:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ribYZufo4ffe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 08:56:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69E5241582
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 08:56:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4A3F6103B;
 Sat, 25 Sep 2021 08:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632560218;
 bh=7XQFbVcfXOzoTAyNW3J0/NRGYfrMDB9ojTMiYSvXm04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ru1pfYlScKHcW8eEszJO5jusybgMYSLrxtcYJipwfTXaDxVZPPQN8iJjqeaCrRX7n
 buQtmp5XwhpNcsmMghNfsdcZja+dQEVxfdjN7Ehe9PPPwISxjGn4+va/iKDUIc0w0W
 7n4lU6BHH9sy8Hs4xMAVliwLtypQoNaZnkGBynAL1elGo3ZfzcVmZptiSz6bI5Y1XY
 0jExyAKNcE7c1EmQgHEM0FcFNCNIA8gLTjRzgN1IhrBj765/hU12BPJuVAsFHzQy4m
 uSMjZm4C4laW7Ttngq+cOm5cqwq755v5C8Iuv9EdMaAGzyPgKYj+KkPY7sLDSgB7Ko
 fVqmIQ7g61lYg==
Date: Sat, 25 Sep 2021 11:56:54 +0300
From: Leon Romanovsky <leon@kernel.org>
To: David Miller <davem@davemloft.net>
Message-ID: <YU7kVo2MHe7Bq1Or@unreal>
References: <cover.1632420430.git.leonro@nvidia.com>
 <20210924.141426.1767931642845359040.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210924.141426.1767931642845359040.davem@davemloft.net>
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
Cc: irusskikh@marvell.com, alobakin@pm.me, jhasan@marvell.com,
 michal.kalderon@marvell.com, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com, jiri@nvidia.com,
 kuba@kernel.org, aelior@marvell.com, jejb@linux.ibm.com,
 vasundhara-v.volam@broadcom.com, sathya.perla@broadcom.com,
 michael.chan@broadcom.com, martin.petersen@oracle.com, skashyap@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 GR-QLogic-Storage-Upstream@marvell.com, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 24, 2021 at 02:14:26PM +0100, David Miller wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Thu, 23 Sep 2021 21:12:47 +0300
> 
> > From: Leon Romanovsky <leonro@nvidia.com>
> > 
> > Hi,
> > 
> > I'm asking to apply this batch of devlink fixes to net-next and not to
> > net, because most if not all fixes are for old code or/and can be considered
> > as cleanup.
> > 
> > It will cancel the need to deal with merge conflicts for my next devlink series :).
> 
> ok, but just this one time.

Thanks

> 
> I much rather this kind of stuff goes to net and we deal with the merge
> conflicts that arise.

I'll do.

> 
> Thsnks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
