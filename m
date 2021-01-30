Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 550F83090FA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 01:27:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE9CF85BD5;
	Sat, 30 Jan 2021 00:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9t0FW6L0SF1; Sat, 30 Jan 2021 00:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A687386B3A;
	Sat, 30 Jan 2021 00:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4EC51C116E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B8032872D0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpILdXHcJZMg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 00:27:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F049872CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:27:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C5D26146D;
 Sat, 30 Jan 2021 00:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611966463;
 bh=Sn4hBFjsbIg/c6asYVsLB3c5VMRgZFN1G+ByjRzclrI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eUlKcTaQYMyXspQUqyqTAi/AfZMOn5sLrqlrmlWlXiQ4uG4uKXjaZ9JJO/AHRpMzG
 qAnCtzOR0bkoC+/QOWowW3LAVY+zHPDPBRIOMC6CU7Kre/mPjpBM9OqkvubFomvXo7
 V2TWIo/3iwLs3ynbtUfa8wm5D7DIWyA4CbkRtttFTYzeLv4hqo1C3cf1EWJJBZlKBQ
 plVR/WGTG43R4UZZESKxw4S4/fsFCwZpRrs5tCAt0ueqffDjDTliPMur54SzOSZelX
 UcA4ilVLFQza3WEx/SKmth5XMr6xOfeJAibthdUaanvOhYr4eGOQ96Zxwwn5YhshnN
 Fi1dTMaYA4BMA==
Date: Fri, 29 Jan 2021 16:27:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210129162742.6092753b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <878s8bs5fp.fsf@vcostago-mobl2.amr.corp.intel.com>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
 <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
 <20210129135702.0f8cf702@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <878s8bs5fp.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/8] taprio: Add support
 for frame preemption offload
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Jan 2021 15:12:58 -0800 Vinicius Costa Gomes wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> >> Good catch :-)
> >> 
> >> I wanted to have this (at least one express queue) handled in a
> >> centralized way, but perhaps this should be handled best per driver.  
> >
> > Centralized is good. Much easier than reviewing N drivers to make sure
> > they all behave the same, and right.  
> 
> The issue is that it seems that not all drivers/hw have the same
> limitation: that at least one queue needs to be configured as
> express/not preemptible.

Oh, I thought that was something driven by the standard.
For HW specific checks driver doing it is obviously fine.

> That's the point I was trying to make when I suggested for the check to
> be done per-driver, different limitations.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
