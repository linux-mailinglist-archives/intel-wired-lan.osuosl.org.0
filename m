Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A437852D11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91BF0409C3;
	Tue, 13 Feb 2024 09:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AX8u-Ot-CYUT; Tue, 13 Feb 2024 09:54:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5C51409B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707818040;
	bh=cCNSDFTNanC9ViWJVJzr2dWZYHWQuRb9PkwKIBuXb4Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yh1ugDEesjr7BeB5+aN5R0NmdkUJAcbL5VvPQ5AsPjMDKCiyOvqAX3k6xdXJScad2
	 DDWmg0cB9Fc7zTnQBOS5dPqde3ePR9+fec/BJ7bUyq/ivY8uafrOLEYfv8Kgww66pt
	 LTAAIvcVEXa47Hl6iNhsylUUWGX283FDitcZH/N2XO3H8M1BpEBXJRlzWzaLBkaAP1
	 ejME8pDCKWOAQvNcxATNMgCXZHTygFoLcftzcPY9Wf8VZeQo1idFRek759WwqWrsP+
	 Ma/OEK9A1wwvA5eW/cGHQBycQk0mAa1Y54i3IBVOTLf4lRJIr7x083jRZKk0tp4QdI
	 LGO3Idxts6YAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5C51409B1;
	Tue, 13 Feb 2024 09:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C04811BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8E5E82064
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EA8X9DpK5FJl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:53:57 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FED781FFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FED781FFB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FED781FFB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1670484"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1670484"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:53:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="26023731"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:53:53 -0800
Date: Tue, 13 Feb 2024 10:53:50 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zcs8LsRrbOfUdIL7@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
 <ZcsvYt4-f_MHT3QC@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcsvYt4-f_MHT3QC@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707818037; x=1739354037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=G3J+psM6c+if//SWVR9B/xHysGrRRo83SuDOBtEKND0=;
 b=GwlrBfyK/Ta9+0OwkuKZEaPtFGgdMBVE+gUbKxQX2VJZhswEo9B0d/6R
 CLTEEiQIF8ocrF/pGouIzj9b19iYDs52Cj7tH5q+mCYLC7MtG+mj3xlpW
 sEDTDq48y0R6m30MxohLPArKymQDcyvfOgPeQ4Pka9UcA+1KDyNxN+KyV
 ipTLGorw+sv6OqFvU2yp5CbQjwGwRSSlfuVnrVommuCor7Dw+sydgGvW1
 yyStvll3N7TRzriVBBv7UxvlOcqyrzxvBOVvIgnTRPRKwktwDwJ5yDOqn
 bIl7st7tMwmMb5Mzkzjrq5qN2OvGMLoco0MeIYepglknFp91J7g5ZgFyb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GwlrBfyK
Subject: Re: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 09:59:14AM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel.com wrote:
> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >
> >Add read only sysfs attribute for each auxiliary subfunction
> >device. This attribute is needed for orchestration layer
> >to distinguish SF devices from each other since there is no
> >native devlink mechanism to represent the connection between
> >devlink instance and the devlink port created for the port
> >representor.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
> > 1 file changed, 31 insertions(+)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >index ab90db52a8fc..abee733710a5 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >@@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
> > 	kfree(sf_dev);
> > }
> > 
> >+static ssize_t
> >+sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
> >+{
> >+	struct devlink_port_attrs *attrs;
> >+	struct auxiliary_device *adev;
> >+	struct ice_sf_dev *sf_dev;
> >+
> >+	adev = to_auxiliary_dev(dev);
> >+	sf_dev = ice_adev_to_sf_dev(adev);
> >+	attrs = &sf_dev->dyn_port->devlink_port.attrs;
> >+
> >+	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
> >+}
> >+
> >+static DEVICE_ATTR_RO(sfnum);
> >+
> >+static struct attribute *ice_sf_device_attrs[] = {
> >+	&dev_attr_sfnum.attr,
> >+	NULL,
> >+};
> >+
> >+static const struct attribute_group ice_sf_attr_group = {
> >+	.attrs = ice_sf_device_attrs,
> >+};
> >+
> >+static const struct attribute_group *ice_sf_attr_groups[2] = {
> >+	&ice_sf_attr_group,
> >+	NULL
> >+};
> >+
> > /**
> >  * ice_sf_eth_activate - Activate Ethernet subfunction port
> >  * @dyn_port: the dynamic port instance for this subfunction
> >@@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
> > 	sf_dev->dyn_port = dyn_port;
> > 	sf_dev->adev.id = id;
> > 	sf_dev->adev.name = "sf";
> >+	sf_dev->adev.dev.groups = ice_sf_attr_groups;
> 
> Ugh. Custom driver sysfs files like this are always very questionable.
> Don't do that please. If you need to expose sfnum, please think about
> some common way. Why exactly you need to expose it?

Uh, hard question. I will drop it and check if it still needed to expose
the sfnum, probably no, as I have never used this sysfs during testing.

Should devlink be used for it?

Thanks

> 
> pw-bot: cr
> 
> 
> > 	sf_dev->adev.dev.release = ice_sf_dev_release;
> > 	sf_dev->adev.dev.parent = &pdev->dev;
> > 
> >-- 
> >2.42.0
> >
> >
