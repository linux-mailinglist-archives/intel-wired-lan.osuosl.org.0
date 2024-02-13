Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B346852FF2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFF014116C;
	Tue, 13 Feb 2024 11:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OsSSG-44kGpe; Tue, 13 Feb 2024 11:55:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3A1740517
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707825317;
	bh=n4SNCvBXoupiTT7ZEzJsdIolfMX9EOO1FSzxXOKQMPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=krghDB59p8lFp4HJHp+Va3sIeJBJ5LOEFokddN+U+7NgkxsYm+NjFyWOoROqOdC/g
	 GJSRQsHl76d4W9hv8zBaEzPQGcCLU/Pna8wRzSV47YSA/T/6ZOjeps5Sc+AYKoO9fB
	 YTtkRpQm21TuCraFmv6uLtH6DgELyQmaIClKBqn1Ops71cwvCtlOvikHYDde4qemQl
	 BunxGgxCe+iH6jNq4zTYKLSi3Rz9DPdYirKL/IIMD2901lsrnvg4uKBiD+2gtKJoqb
	 BR1kjmKx96MZa844MpT+NdS0ozpbZ4J2ZOiBCTrSqRNyJMtWqsb62tIb94tJrFb+ka
	 nc+URuiscWjgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3A1740517;
	Tue, 13 Feb 2024 11:55:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8021BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A85D407E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qB2NecmZpwru for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:55:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AEA8407A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AEA8407A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AEA8407A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:55:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1950196"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1950196"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:55:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="40333197"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 03:55:10 -0800
Date: Tue, 13 Feb 2024 12:55:07 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ZctYm9CVJzV+uxip@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
 <ZcsvYt4-f_MHT3QC@nanopsycho> <Zcs8LsRrbOfUdIL7@mev-dev>
 <ZctSpPamhrlF4ILg@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZctSpPamhrlF4ILg@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707825314; x=1739361314;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qm1sw6jJok4ULz7jLovqLsgiQQmmvysBI3GV8CbBq64=;
 b=USjvy1rdpqHX94x6NVBBQc0gAO6HyR5N95Eo3w7jQFFqy9R8jWj23U4f
 XY1w5M8aq4MwUT0AtzY7CaSygWhTDj3jDu02OHu3fG2UJZ6ZzjlcEAjam
 zal0JWRugwUdTOlSkJhyRTk5dGpK1FpH4jPYDKpbSEwsn8MEaEKnGAtma
 yTtUCqkOJeCRKOgl5y/V9fsFqsA5TYZMNEd9R2w+LmThGzliOhDUkEiZT
 jWEu45degTIcJk1uHbESeViWgx1rh8J4TT5dE7UP4WkQzqsoZrE5N0UPL
 BWQcszOceP0aUWrdh0uU+yFVIVRRyRDtmhfmSTMIrByNkDHTwYJtGqtOZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=USjvy1rd
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

On Tue, Feb 13, 2024 at 12:29:40PM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 10:53:50AM CET, michal.swiatkowski@linux.intel.com wrote:
> >On Tue, Feb 13, 2024 at 09:59:14AM +0100, Jiri Pirko wrote:
> >> Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel.com wrote:
> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >
> >> >Add read only sysfs attribute for each auxiliary subfunction
> >> >device. This attribute is needed for orchestration layer
> >> >to distinguish SF devices from each other since there is no
> >> >native devlink mechanism to represent the connection between
> >> >devlink instance and the devlink port created for the port
> >> >representor.
> >> >
> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >---
> >> > drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
> >> > 1 file changed, 31 insertions(+)
> >> >
> >> >diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >> >index ab90db52a8fc..abee733710a5 100644
> >> >--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >> >+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >> >@@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
> >> > 	kfree(sf_dev);
> >> > }
> >> > 
> >> >+static ssize_t
> >> >+sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
> >> >+{
> >> >+	struct devlink_port_attrs *attrs;
> >> >+	struct auxiliary_device *adev;
> >> >+	struct ice_sf_dev *sf_dev;
> >> >+
> >> >+	adev = to_auxiliary_dev(dev);
> >> >+	sf_dev = ice_adev_to_sf_dev(adev);
> >> >+	attrs = &sf_dev->dyn_port->devlink_port.attrs;
> >> >+
> >> >+	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
> >> >+}
> >> >+
> >> >+static DEVICE_ATTR_RO(sfnum);
> >> >+
> >> >+static struct attribute *ice_sf_device_attrs[] = {
> >> >+	&dev_attr_sfnum.attr,
> >> >+	NULL,
> >> >+};
> >> >+
> >> >+static const struct attribute_group ice_sf_attr_group = {
> >> >+	.attrs = ice_sf_device_attrs,
> >> >+};
> >> >+
> >> >+static const struct attribute_group *ice_sf_attr_groups[2] = {
> >> >+	&ice_sf_attr_group,
> >> >+	NULL
> >> >+};
> >> >+
> >> > /**
> >> >  * ice_sf_eth_activate - Activate Ethernet subfunction port
> >> >  * @dyn_port: the dynamic port instance for this subfunction
> >> >@@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
> >> > 	sf_dev->dyn_port = dyn_port;
> >> > 	sf_dev->adev.id = id;
> >> > 	sf_dev->adev.name = "sf";
> >> >+	sf_dev->adev.dev.groups = ice_sf_attr_groups;
> >> 
> >> Ugh. Custom driver sysfs files like this are always very questionable.
> >> Don't do that please. If you need to expose sfnum, please think about
> >> some common way. Why exactly you need to expose it?
> >
> >Uh, hard question. I will drop it and check if it still needed to expose
> >the sfnum, probably no, as I have never used this sysfs during testing.
> >
> >Should devlink be used for it?
> 
> sfnum is exposed over devlink on the port representor. If you need to
> expose it on the actual SF, we have to figure it out. But again, why?
> 
> 

Only one argument why which I have in my mind is to support it in the legacy
mode. But probably subfunctions shouldn't be supported in legacy mode.
Thanks, I will remove it and use sfnum expose from representor.

> >
> >Thanks
> >
> >> 
> >> pw-bot: cr
> >> 
> >> 
> >> > 	sf_dev->adev.dev.release = ice_sf_dev_release;
> >> > 	sf_dev->adev.dev.parent = &pdev->dev;
> >> > 
> >> >-- 
> >> >2.42.0
> >> >
> >> >
