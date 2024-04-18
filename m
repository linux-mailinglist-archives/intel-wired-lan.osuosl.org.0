Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A65E28A9D81
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 16:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5360040A02;
	Thu, 18 Apr 2024 14:47:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MlBxgdzsS_R9; Thu, 18 Apr 2024 14:47:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E5EB4099B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713451678;
	bh=p3d1CIJI2TkqaWl00ERLdevwDZ1yr3wzvIjesafQ+YQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TS8wFh1f63rh8SM0lFHXTDpNfKzwc1813VQtWEsg1Nxlzm03yPXODtxN78SQX+RY6
	 e5qLK5whTo6Q9OfS+DtnqbcoK9LDPsGoy2nA3JV7BdAWC7PDsjJiAwGBdrGI+MNnez
	 L4t+R9rhhsMIOHv2gUYNx06Yr5IqCMS/1scwbB8B5uLH671v5mXjnVM1ABQPVVE17O
	 YZu7rnLZ3kjZLwV1djUi/3EzT8oZL7IqggTS0NFNGx10Kv0BsKYhtW8mUD70fp6Q/W
	 ZSzzJ0HR9jbWjkHb4yLFKR9xz0etEwu+LXeSy0qXthl8NSX/3yRtLW0lEanMSdUkSq
	 1H3F54uIDziyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E5EB4099B;
	Thu, 18 Apr 2024 14:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 608591BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C6A060BCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtGjPuCuh8mx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 14:47:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A839D60BCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A839D60BCC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A839D60BCC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:55 +0000 (UTC)
X-CSE-ConnectionGUID: /C9zCBGWSfqZaBT3xXqFLQ==
X-CSE-MsgGUID: aGS1UcuzT72buj0PplCS4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8870723"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="8870723"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:47:55 -0700
X-CSE-ConnectionGUID: 5rTbXyYqQiir3dyJsma7Uw==
X-CSE-MsgGUID: b6mVba5BSiyXIhAdchBy/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27634185"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:47:52 -0700
Date: Thu, 18 Apr 2024 16:47:31 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Shay Drori <shayd@nvidia.com>
Message-ID: <ZiEyg0qPac0GzTBN@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
 <88b7e836-657c-4105-80e0-c0c68dffd140@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88b7e836-657c-4105-80e0-c0c68dffd140@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451676; x=1744987676;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Iu13BzXGDlDt7kkFojoXFutf6qwhY1eUz6UAvbHVCns=;
 b=Mf+oQqNy3zEP2Jp5OkNWSPz3g50zBcHexc3lAzaSXnGdgRrDHSWa60L7
 40GHwXW/pXFxo7gFDLW3gzCWvtQd1xgTP2JC0OpV2EbzGTVGzdzO4ZvNS
 KoOwERY0jRLA0HEOyLKmoSAlcP1kheNAU0favtTgltHwX0b66wiTvqjr7
 rPATwp0bvKTstmbrAS432jmnds6Ehutm/yLSXfnliDZN3QyBxxvoks2LO
 fsukT3YxFJQApCPqswI9qZiKTVe+3IhUswn/3Wqbr/XxBKrV0pphxRKmq
 yszEdHfnvXfY8cOpCXunoCVvf3N7s6B1UctCiqkujbaiiFIWVJkNHfy99
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mf+oQqNy
Subject: Re: [Intel-wired-lan] [iwl-next v4 6/8] ice: base subfunction aux
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
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 18, 2024 at 10:57:17AM +0300, Shay Drori wrote:
> 
> On 17/04/2024 17:20, Michal Swiatkowski wrote:
> > From: Piotr Raczynski <piotr.raczynski@intel.com>
> > 
> > Implement subfunction driver. It is probe when subfunction port is
> > activated.
> > 
> > VSI is already created. During the probe VSI is being configured.
> > MAC unicast and broadcast filter is added to allow traffic to pass.
> > 
> > Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/Makefile     |   1 +
> >   drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
> >   drivers/net/ethernet/intel/ice/ice_sf_eth.c | 140 ++++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
> >   4 files changed, 160 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c
> 
> 
> <...>
> 
> > +
> > +/**
> > + * ice_sf_driver_register - Register new auxiliary subfunction driver
> > + *
> > + * Return: zero on success or an error code on failure.
> > + */
> > +int ice_sf_driver_register(void)
> > +{
> > +	return auxiliary_driver_register(&ice_sf_driver);
> > +}
> > +
> > +/**
> > + * ice_sf_driver_unregister - Unregister new auxiliary subfunction driver
> > + *
> > + * Return: zero on success or an error code on failure.
> 
> 
> this function doesn't return anything...
> 

Thanks, will remove it.

> > + */
> > +void ice_sf_driver_unregister(void)
> > +{
> > +	auxiliary_driver_unregister(&ice_sf_driver);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > index a08f8b2bceef..e972c50f96c9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> > @@ -18,4 +18,13 @@ struct ice_sf_priv {
> >   	struct devlink_port devlink_port;
> >   };
> > +static inline struct
> > +ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
> > +{
> > +	return container_of(adev, struct ice_sf_dev, adev);
> > +}
> > +
> > +int ice_sf_driver_register(void);
> > +void ice_sf_driver_unregister(void);
> > +
> >   #endif /* _ICE_SF_ETH_H_ */
