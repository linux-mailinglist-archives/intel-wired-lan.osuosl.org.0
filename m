Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2108A4A5D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 10:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D14BD81A18;
	Mon, 15 Apr 2024 08:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cyXbpNv3qHYv; Mon, 15 Apr 2024 08:30:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BC85819CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713169804;
	bh=BLVXiTUw6NibjGH3nULsEdQJ1JH8UKK3Tok55d686No=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WOdG8dZvyGtDpIgFauMuSUxw0PcHKZWWESi2/0ODJP2mJH1Jqjv5CADqXBCW3tgVd
	 b5oznic9yoR9pWl29RqBqRDQY0Trw4CEbmadX6prFpiOR/tvlccL1yu2trgqLx0+Bg
	 tYOGJTvCkBTcVhVA+XZW0fO1XFsWffXaSA0SgkRazfJaVcc84lVuBS58TQvKaRxUyq
	 nILernj9fAqngB1866EaWyIaG2Wo5A86VWN9V4Pf9eA2vW2J+Wpe5cu0SjlzK9XzH8
	 5EFNjoLNfIZjmgJKtr7cRGgzZXFYN3DUSpYEJJo9HmS+vAh3QftnJEZzxXH4cXDdK0
	 hl12HwLT2vZsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BC85819CC;
	Mon, 15 Apr 2024 08:30:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B17C21BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DC9960618
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLtkiHk-UAWD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 08:30:01 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9427660613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9427660613
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9427660613
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 08:30:00 +0000 (UTC)
X-CSE-ConnectionGUID: quEUd2UCSEStNJir2GzElA==
X-CSE-MsgGUID: HELYW1HBRw2P/zd/kTNM9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="31027110"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="31027110"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:30:00 -0700
X-CSE-ConnectionGUID: AxTRTaxVRy2bEsm/vr4VXw==
X-CSE-MsgGUID: mkrMqJzjTcy38PltZX/q/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="53053271"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:29:56 -0700
Date: Mon, 15 Apr 2024 10:29:33 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZhzlbSHw17KEvSvB@mev-dev>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
 <da5f3048-e90b-4e34-be23-602c8a9edeb2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da5f3048-e90b-4e34-be23-602c8a9edeb2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713169801; x=1744705801;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=E0+wF2svgj0A6HgZD/KpDdEaWwyfj1+v8zzDw1IfaKA=;
 b=iH5ZAPPYeuhofe2YT+55NRQP+a4nNKvqhgfSAPuLgL7S/QAHTPCZ1X6j
 AE2/ZNEMb3wvKgXupglTNdfuazztVpSwuDxr64Y3llnDDiSicoUzVPfgd
 EruLXAfuKxavaM5pxWWWIR/zFaiLps1JbSZFhduZdbv6fIFluvvYx6c++
 GVeQ7vjRpZjB6IJw2fbSzEaZaszSBwT3kuEHsg1bJEpABvL1i9hu7j0rh
 zWp77qIpFNFrr96/dmDxUPdXRUE4vzYUq7bMhqnxWvMKt7SZN4yJdPT4X
 uhj3YtLihGEHDuL90F7b8bPlgarWyMlvS0hZt37otMi/iU/Az6xJ5q3IE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iH5ZAPPY
Subject: Re: [Intel-wired-lan] [iwl-next v3 5/7] ice: base subfunction aux
 driver
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 12, 2024 at 01:44:45PM +0200, Przemek Kitszel wrote:
> On 4/12/24 08:30, Michal Swiatkowski wrote:
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> > 
> > Implement subfunction driver. It is probe when subfunction port is
> > activated.
> > 
> > VSI is already created. During the probe VSI is being configured.
> > MAC unicast and broadcast filter is added to allow traffic to pass.
> > 
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/Makefile     |   1 +
> >   drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
> >   drivers/net/ethernet/intel/ice/ice_sf_eth.c | 130 ++++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
> >   4 files changed, 150 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > 
> > +
[...]

> > +/**
> > + * ice_sf_dev_remove - subfunction driver remove function
> > + * @adev: pointer to the auxiliary device
> > + *
> > + * Deinitalize VSI and netdev resources for the subfunction device.
> > + */
> > +static void ice_sf_dev_remove(struct auxiliary_device *adev)
> > +{
> > +	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
> > +	struct devlink *devlink = priv_to_devlink(sf_dev->priv);
> 
> RCT
> 

Will fix

Thanks,
Michal

[...]
