Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C4840A42C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 05:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2A0180F16;
	Tue, 14 Sep 2021 03:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6tTjadGY77ir; Tue, 14 Sep 2021 03:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00BEF80E98;
	Tue, 14 Sep 2021 03:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E95221BF35E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2BA040100
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVO-igRFLf5q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 03:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01487400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:10:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DDEC960E90;
 Tue, 14 Sep 2021 03:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631589011;
 bh=OBSvTK9Mvwq13+v31xdl+LwtoLoV9Tl+58u1TVDdvc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NDtBMryApIiBpCUNt/v5qt5jXAIaf/mUpfl0xAdPm0ysnZ7p+FJuoOVvSiu0JWVxR
 Ji3hqjupI/WBTs1ioh6d3c4zm3c7veFU8x3Y0WNJBsFwRL8VCl0ONcyjOwFCOt+7DW
 fM3XdyVwZhj6AZ0NNkkvnBJzoGiFfMEQPpy5xt89ZXaPQ+/UfizMbNayBXdL26+aJu
 Qp/tJbZcJqNcw97+8OmgmwIHLaHjYTHcv5rTR7Ftwqir/jQ+tHqZnE57zQABLBcH4a
 SVhTVRWSzW/HjwE1LDAw5vIBY2eYYC4Gs0OZBJbuaRD5p1Rucn2jTxGMKL1JtQTUq5
 8GIyOWLRMw2Qg==
Date: Tue, 14 Sep 2021 06:10:07 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>
Message-ID: <YUASj03w0RMunvCa@unreal>
References: <20210909151223.572918-1-david.m.ertman@intel.com>
 <YTsjDsFbBggL2X/8@unreal>
 <4bc2664ac89844a79242339f5e971335@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bc2664ac89844a79242339f5e971335@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH RESEND net] ice: Correctly deal with
 PFs that do not support RDMA
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
Cc: "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Parikh,
 Neerav" <neerav.parikh@intel.com>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "yongxin.liu@windriver.com" <yongxin.liu@windriver.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 13, 2021 at 03:49:43PM +0000, Saleem, Shiraz wrote:
> > Subject: Re: [PATCH RESEND net] ice: Correctly deal with PFs that do not
> > support RDMA
> > 
> > On Thu, Sep 09, 2021 at 08:12:23AM -0700, Dave Ertman wrote:
> > > There are two cases where the current PF does not support RDMA
> > > functionality.  The first is if the NVM loaded on the device is set to
> > > not support RDMA (common_caps.rdma is false).  The second is if the
> > > kernel bonding driver has included the current PF in an active link
> > > aggregate.
> > >
> > > When the driver has determined that this PF does not support RDMA,
> > > then auxiliary devices should not be created on the auxiliary bus.
> > 
> > This part is wrong, auxiliary devices should always be created, in your case it will
> > be one eth device only without extra irdma device.
> 
> It is worth considering having an eth aux device/driver but is it a hard-and-fast rule?
> In this case, the RDMA-capable PCI network device spawns an auxiliary device for RDMA
> and the core driver is a network driver.
> 
> > 
> > Your "bug" is that you mixed auxiliary bus devices with "regular" ones and created
> > eth device not as auxiliary one. This is why you are calling to auxiliary_device_init()
> > for RDMA only and fallback to non-auxiliary mode.
> 
> It's a design choice on how you carve out function(s) off your PCI core device to be
> managed by auxiliary driver(s) and not a bug.

I'm not the one who is setting rules, just explaining what is wrong with
the current design and proposed solution.

The driver/core design expects three building blocks: logic that
enumerates (creates) devices, bus that connects those devices
(load/unload drivers) and specific drivers for every such device.

Such separation allows clean view from locking perspective (separated
devices), proper sysfs layout and same logic for the user space tools.

In your case, you connected ethernet driver to be "enumerator" and
replaced (duplicated) general driver/core logic that decides if to load
or not auxiliary device driver with your custom code.

Thanks

> 
> Shiraz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
