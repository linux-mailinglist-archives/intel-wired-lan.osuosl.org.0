Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AF08A9D7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 16:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A4D54060C;
	Thu, 18 Apr 2024 14:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v0hRgl_DYpBg; Thu, 18 Apr 2024 14:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF1D408C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713451652;
	bh=xz3G8XIra03nCasscpWP01IIadLHxX/eSlPq45FvlSo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dc5qwyZv8rJULTb7llvxfhg9F2UszQA1y4FxCK0a5UjJ3+rmFuQsqNTfzRTMYZm8H
	 Qd+nrfJ9QMkLmxrEjcPkufG1hIoQ7QCrLZO9NRVe7BVsRDmbWi3HRp7kFTqBclBk0r
	 /7YB+8ZpYT7NS1cWY4LeSYgXysOY6KLJC8r1wP1iKhFR1bZndXNnKB3RoccU1mJwCn
	 npR7I6I/hOGaWDtWzRSWmwQqstMJ3+2pyD3TQtmNsQd0ISkbzE0f0NmkhvFbAwBl4q
	 SCFZC2qOpTHpSVfIoLoEKELzkWFcivdGeMbMXHDqUia/n0y5E4wCcGCiryfRkQULDF
	 UTGJ+bEaVO9QA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BF1D408C6;
	Thu, 18 Apr 2024 14:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58EB01BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4355240198
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jvaZjq24mw0r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 14:47:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 43B274030F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43B274030F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43B274030F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 14:47:29 +0000 (UTC)
X-CSE-ConnectionGUID: gyGeqCbeQMu2mcg9scz/0Q==
X-CSE-MsgGUID: PKs0n1msTw2KOzZYfyce3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9225793"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="9225793"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:47:29 -0700
X-CSE-ConnectionGUID: mxEutIMfTiOPX+UJGiYPpQ==
X-CSE-MsgGUID: ngEaRh4VRBCDW8J2XHyq9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586454"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:47:26 -0700
Date: Thu, 18 Apr 2024 16:47:04 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZiEyaF29+Vb1q1Vk@mev-dev>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
 <ZiEZ3c-aJ_i6vQ9F@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiEZ3c-aJ_i6vQ9F@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451649; x=1744987649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/d6dxbkL6GZcVbZ63y+38DJcYWfKgIaEZOSTCyFAmxU=;
 b=KZFUHvnI+eRAtz1IHszoPbTRRK5Ftj/kkTHaocS/2pcuvbWTgT0rFRLj
 tuHtUJ9vX0F/nc7LsRxY1cuBl1AKPTRhSxo/1/EmgQGCvI3to+bQHVku9
 PFnEjCp3KBxh8xaJCOf3Ig4f789X+x0ASSc2oWvYXnciP8eh5aTJNb5HL
 ZHkIUfWBH2ZHCdk5nkVrwKiPHVl2ZuG+FgirX71z6NHQY0O5mS5Vld32v
 ugE3I5LdfThRX/RmrgnsM6uXcVC+c+aWBc2G9EdDd+LyZLPJAzNCxEebe
 4rAjdX+SS+IrTnEUkwMGv1Sib7t/hBbvDNFX1dqg66Y/EqJZmPuv2OlTG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KZFUHvnI
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

On Thu, Apr 18, 2024 at 03:02:21PM +0200, Jiri Pirko wrote:
> Wed, Apr 17, 2024 at 04:20:26PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> [...]
> 
> 
> >+static int ice_sf_dev_probe(struct auxiliary_device *adev,
> >+			    const struct auxiliary_device_id *id)
> >+{
> >+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
> >+	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
> >+	struct ice_vsi_cfg_params params = {};
> >+	struct ice_vsi *vsi = dyn_port->vsi;
> >+	struct ice_pf *pf = dyn_port->pf;
> >+	struct device *dev = &adev->dev;
> >+	struct ice_sf_priv *priv;
> >+	struct devlink *devlink;
> >+	int err;
> >+
> >+	params.type = ICE_VSI_SF;
> >+	params.pi = pf->hw.port_info;
> >+	params.flags = ICE_VSI_FLAG_INIT;
> >+
> >+	priv = ice_allocate_sf(&adev->dev);
> >+	if (!priv) {
> >+		dev_err(dev, "Subfunction devlink alloc failed");
> >+		return -ENOMEM;
> >+	}
> >+
> >+	priv->dev = sf_dev;
> >+	sf_dev->priv = priv;
> >+	devlink = priv_to_devlink(priv);
> >+
> >+	devlink_register(devlink);
> 
> Do register at the very end. Btw, currently the error path seems to be
> broken, leaving devlink instance allocated and registered.
> 

Sure, I will fix it.

> 
> >+	devl_lock(devlink);
> >+
> >+	err = ice_vsi_cfg(vsi, &params);
> >+	if (err) {
> >+		dev_err(dev, "Subfunction vsi config failed");
> >+		goto err_devlink_unlock;
> >+	}
> >+
> >+	err = ice_devlink_create_sf_dev_port(sf_dev);
> >+	if (err) {
> >+		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
> >+		goto err_vsi_decfg;
> >+	}
> >+
> >+	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
> >+					     ICE_FWD_TO_VSI);
> >+	if (err) {
> >+		dev_err(dev, "can't add MAC filters %pM for VSI %d\n",
> >+			vsi->netdev->dev_addr, vsi->idx);
> >+		goto err_devlink_destroy;
> >+	}
> >+
> >+	ice_napi_add(vsi);
> >+	devl_unlock(devlink);
> >+
> >+	return 0;
> >+
> >+err_devlink_destroy:
> >+	ice_devlink_destroy_sf_dev_port(sf_dev);
> >+err_vsi_decfg:
> >+	ice_vsi_decfg(vsi);
> >+err_devlink_unlock:
> >+	devl_unlock(devlink);
> >+	return err;
> 
> [...]
