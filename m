Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8CC413C27
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 23:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45857613A0;
	Tue, 21 Sep 2021 21:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PgcSERaMCKh; Tue, 21 Sep 2021 21:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5498D61397;
	Tue, 21 Sep 2021 21:14:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4751BF47A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 21:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7936F40279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 21:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQQZ3Wji8etA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 21:14:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA68B40131
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 21:14:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F5E860F70;
 Tue, 21 Sep 2021 21:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632258887;
 bh=JvHHxunR9C6HL904dqCGT0x/I+zMsf/fDJibZ/XVyeQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GtxFzJ8LQwtKchSk/UKGo7VGd3z6NfQhoVlp2+lxjnaxOkPXCltbaEvjse3GuYXtd
 9J+nfbVXyuwkvyB3DEQktFUC3BpWrUI8lEOioxqK6N4v+qSrQe2PT9VHR6caCOR9bP
 7xwnqKSATywN48kRm6RAvwgo4CmXXBtDyt/9jSFa0JLAjBFzn26eLcEmCicuaXS2n9
 Nf7S5ViRg1Ez/GEvcF4OGZ7IJ07C6M8scRgCYErvqELp97ceHn8j8z8iBaPQPu0wEK
 z/Bfq8bZqyf/ICuOL35o4xzYT2S1XWkF1p0cCrRtTepEFwl8cHER1oHsvNSe+bxfUP
 EE2kS7ADsTRig==
Date: Tue, 21 Sep 2021 14:14:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210921141445.24ae714e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <YUny/edqnbdTFnBS@shredder>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <YUnbCzBOPP9hWQ5c@shredder>
 <PH0PR11MB4951E98FCEC0F1EA230BA1DAEAA19@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YUny/edqnbdTFnBS@shredder>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 21 Sep 2021 17:58:05 +0300 Ido Schimmel wrote:
> > > The only source type above is 'port' with the ability to set the
> > > relevant port, but more can be added. Obviously, 'devlink clock show'
> > > will give you the current source in addition to other information such
> > > as frequency difference with respect to the input frequency.  
> > 
> > We considered devlink interface for configuring the clock/DPLL, but a
> > new concept was born at the list to add a DPLL subsystem that will
> > cover more use cases, like a TimeCard.  
> 
> The reason I suggested devlink is that it is suited for device-wide
> configuration and it is already used by both MAC drivers and the
> TimeCard driver. If we have a good reason to create a new generic
> netlink family for this stuff, then OK.

For NICs mapping between devlink instances and HW is not clear.
Most register devlink per PCI dev which usually maps to a Eth port.
So if we have one DPLL on a 2 port NIC mapping will get icky, no?

Is the motivation to save the boilerplate code associated with new
genetlink family or something more? 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
