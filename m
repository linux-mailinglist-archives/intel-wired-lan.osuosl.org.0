Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 299934097CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Sep 2021 17:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBD94606B8;
	Mon, 13 Sep 2021 15:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCt2LeK7yUgu; Mon, 13 Sep 2021 15:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8B8E6060B;
	Mon, 13 Sep 2021 15:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6F661BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 15:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3C4E40245
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 15:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4jRGNbv8Ovl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Sep 2021 15:49:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5E0140243
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 15:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="221761619"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="221761619"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 08:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="469496135"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2021 08:49:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 08:49:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 08:49:43 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 08:49:43 -0700
From: "Saleem, Shiraz" <shiraz.saleem@intel.com>
To: Leon Romanovsky <leon@kernel.org>, "Ertman, David M"
 <david.m.ertman@intel.com>
Thread-Topic: [PATCH RESEND net] ice: Correctly deal with PFs that do not
 support RDMA
Thread-Index: AQHXpcrK/jEhT3UrxEqhAh51dcd/n6udc5YA///U4xA=
Date: Mon, 13 Sep 2021 15:49:43 +0000
Message-ID: <4bc2664ac89844a79242339f5e971335@intel.com>
References: <20210909151223.572918-1-david.m.ertman@intel.com>
 <YTsjDsFbBggL2X/8@unreal>
In-Reply-To: <YTsjDsFbBggL2X/8@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
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
 "kuba@kernel.org" <kuba@kernel.org>, "Williams, Dan
 J" <dan.j.williams@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: Re: [PATCH RESEND net] ice: Correctly deal with PFs that do not
> support RDMA
> 
> On Thu, Sep 09, 2021 at 08:12:23AM -0700, Dave Ertman wrote:
> > There are two cases where the current PF does not support RDMA
> > functionality.  The first is if the NVM loaded on the device is set to
> > not support RDMA (common_caps.rdma is false).  The second is if the
> > kernel bonding driver has included the current PF in an active link
> > aggregate.
> >
> > When the driver has determined that this PF does not support RDMA,
> > then auxiliary devices should not be created on the auxiliary bus.
> 
> This part is wrong, auxiliary devices should always be created, in your case it will
> be one eth device only without extra irdma device.

It is worth considering having an eth aux device/driver but is it a hard-and-fast rule?
In this case, the RDMA-capable PCI network device spawns an auxiliary device for RDMA
and the core driver is a network driver.

> 
> Your "bug" is that you mixed auxiliary bus devices with "regular" ones and created
> eth device not as auxiliary one. This is why you are calling to auxiliary_device_init()
> for RDMA only and fallback to non-auxiliary mode.

It's a design choice on how you carve out function(s) off your PCI core device to be
managed by auxiliary driver(s) and not a bug.

Shiraz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
