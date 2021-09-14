Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2FA40A43F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 05:16:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57CE080F16;
	Tue, 14 Sep 2021 03:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Opg94_KX2yrN; Tue, 14 Sep 2021 03:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C11880F12;
	Tue, 14 Sep 2021 03:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C39A1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86C0A607C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aVjj9NFa8E7L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 03:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA3D0607BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 03:16:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7B8F60FDA;
 Tue, 14 Sep 2021 03:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631589391;
 bh=W34OXpHVI8IRqoH+2KbWo+deibUpb2mP6Uf99tWa4No=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mB7vh8JYTdszNKhX1AtKYJeTmLz/5PNBNlVrtfJOPtqWBHZdQH35u7eRwjErtD4iK
 E1iqgoA7/fk8BTgRM2awWB+DQ1lfjUwAbXMY+YKh0zstHRrzyf4WbKkEfuy5e5Shzx
 5FZnNuZBqrXEzkicJwoY3FX1Hx/ask4KDqJz64i1jYHgvdIIv0U2UjvtwVntKOmtmL
 OxpRXAybDUgS7Dk9Nr0WaijMocO+YNNYZTD8cCFaZcLe1qcOcHx3a3C13GYbul2vL8
 ERy40P4yJTJp1LPX4GilQ3E3uIzkIFhxoX7OmrkNvBIagAFD+3fhMsuYxU/NJ01kcj
 qTV7J47fU6V1g==
Date: Tue, 14 Sep 2021 06:16:27 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <YUAUC1AJP6JVMxBr@unreal>
References: <20210909151223.572918-1-david.m.ertman@intel.com>
 <YTsjDsFbBggL2X/8@unreal>
 <4bc2664ac89844a79242339f5e971335@intel.com>
 <PH0PR11MB49667F5B029D37D0E257A256DDD99@PH0PR11MB4966.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49667F5B029D37D0E257A256DDD99@PH0PR11MB4966.namprd11.prod.outlook.com>
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 13, 2021 at 04:07:28PM +0000, Ertman, David M wrote:
> > -----Original Message-----
> > From: Saleem, Shiraz <shiraz.saleem@intel.com>
> > Sent: Monday, September 13, 2021 8:50 AM
> > To: Leon Romanovsky <leon@kernel.org>; Ertman, David M
> > <david.m.ertman@intel.com>
> > Cc: davem@davemloft.net; kuba@kernel.org; yongxin.liu@windriver.com;
> > Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; linux-
> > rdma@vger.kernel.org; jgg@ziepe.ca; Williams, Dan J
> > <dan.j.williams@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>;
> > Parikh, Neerav <neerav.parikh@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>
> > Subject: RE: [PATCH RESEND net] ice: Correctly deal with PFs that do not
> > support RDMA
> > 
> > > Subject: Re: [PATCH RESEND net] ice: Correctly deal with PFs that do not
> > > support RDMA
> > >
> > > On Thu, Sep 09, 2021 at 08:12:23AM -0700, Dave Ertman wrote:
> > > > There are two cases where the current PF does not support RDMA
> > > > functionality.  The first is if the NVM loaded on the device is set to
> > > > not support RDMA (common_caps.rdma is false).  The second is if the
> > > > kernel bonding driver has included the current PF in an active link
> > > > aggregate.
> > > >
> > > > When the driver has determined that this PF does not support RDMA,
> > > > then auxiliary devices should not be created on the auxiliary bus.
> > >
> > > This part is wrong, auxiliary devices should always be created, in your case it
> > will
> > > be one eth device only without extra irdma device.
> > 
> > It is worth considering having an eth aux device/driver but is it a hard-and-
> > fast rule?
> > In this case, the RDMA-capable PCI network device spawns an auxiliary
> > device for RDMA
> > and the core driver is a network driver.
> > 
> > >
> > > Your "bug" is that you mixed auxiliary bus devices with "regular" ones and
> > created
> > > eth device not as auxiliary one. This is why you are calling to
> > auxiliary_device_init()
> > > for RDMA only and fallback to non-auxiliary mode.
> > 
> > It's a design choice on how you carve out function(s) off your PCI core device
> > to be
> > managed by auxiliary driver(s) and not a bug.
> > 
> > Shiraz
> 
> Also, regardless of whether netdev functionality is carved out into an auxiliary device or not, this code would still be necessary.

Right

> 
> We don't want to carve out an auxiliary device to support a functionality that the base PCI device does not support.  Not having
> the RDMA auxiliary device for an auxiliary driver to bind to is how we differentiate between devices that support RDMA and those
> that don't.

This is right too.

My complain is that you mixed enumerator logic with eth driver and
create auxiliary bus only if your RDMA device exists. It is wrong.

Thanks

> 
> Thanks,
> DaveE
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
