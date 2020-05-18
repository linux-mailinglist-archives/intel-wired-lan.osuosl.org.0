Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 067D61D8B7B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 01:09:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A9616864E6;
	Mon, 18 May 2020 23:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZVHQf0-4sn0N; Mon, 18 May 2020 23:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B73D0864F4;
	Mon, 18 May 2020 23:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B9C21BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 23:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4065B21579
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 23:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sL5tcWTV47vJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 23:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0604920456
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 23:09:08 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 599CF2067D;
 Mon, 18 May 2020 23:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843348;
 bh=3j68PdDORD9YdAbdIH/wOvS4Z7wO8SbbhsU3OnBBgEU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ojMswvruxf2Akvl2VqhCySOKmSK21bnI5qo4iJrCf7BTvyXFiznj5wmcZy2wTvoog
 YVHUeTkpZAFB9aNldoWY36uGMOlsOz7hRSz0HHzRYClrvhMropHK8DFGVVtbKDnT6z
 v4aVIj3j5PN2O4pYGkrfqRH0mUImm/1z+QtgMYNA=
Date: Mon, 18 May 2020 16:09:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200518160906.40e9d8bb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87blmkq1y3.fsf@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com>
 <20200518152259.29d2e3c7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87blmkq1y3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 May 2020 16:05:08 -0700 Vinicius Costa Gomes wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> >> That was the (only?) strong argument in favor of having frame preemption
> >> in the TC side when this was last discussed.
> >> 
> >> We can have a hybrid solution, we can move the express/preemptible per
> >> queue map to mqprio/taprio/whatever. And have the more specific
> >> configuration knobs, minimum fragment size, etc, in ethtool.
> >> 
> >> What do you think?  
> >
> > Does the standard specify minimum fragment size as a global MAC setting?  
> 
> Yes, it's a per-MAC setting, not per-queue. 

If standard defines it as per-MAC and we can reasonably expect vendors
won't try to "add value" and make it per queue (unlikely here AFAIU),
then for this part ethtool configuration seems okay to me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
