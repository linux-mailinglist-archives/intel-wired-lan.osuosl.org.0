Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC48852CEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:50:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4A6940688;
	Tue, 13 Feb 2024 09:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnWUoNem3_-W; Tue, 13 Feb 2024 09:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C83AC40632
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707817817;
	bh=ytXqHom3EFTNOn3ocY1f/KwsnlAoWfc/xyw6/B1AC54=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9PJGCT90L1HWrbxfdOWMZFWLPZ62Q760x25z5ACP5u0GsZqECFmpSyakJxaBR0H89
	 saFqYWrwnr7syC1tbIDKFNRsWH1CCRLoa4K14zYgQoPvse7plH8yshvGMpGcaF7UDH
	 c/z5xYR/wf7gS8LgjlskZed+UtdrS/7UcGKZ7spm8TVBlXmsc1asDQuy0d2XM4eMHz
	 CIdijO3PoS6vitSXsXtRCjYV3NzyzG2C+kWBfe/sqcBonviODpPZAiSTmwIw4kXU9W
	 4bVk7zSoq1G3sJrS8qcavck5bXuv++DfwT7P8RoS4OTN5tMBNaAgqzDNofMiNm4woZ
	 4OHayScpvl3/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C83AC40632;
	Tue, 13 Feb 2024 09:50:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90D741BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89E6460ADB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cg8emMeWG9E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:50:15 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 13 Feb 2024 09:50:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C895460ABC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C895460ABC
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C895460ABC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:50:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1967957"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1967957"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="826064172"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="826064172"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:43:03 -0800
Date: Tue, 13 Feb 2024 10:43:00 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zcs5pFtmXzTxWO5s@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-7-michal.swiatkowski@linux.intel.com>
 <Zcsu6MCX-XkS8bki@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zcsu6MCX-XkS8bki@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707817814; x=1739353814;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AQvTYTQ/t0R+kM1G0adoFJ97oIMfIbtMuUoQfoCLQoY=;
 b=MpfD+RolQIgsWHs9CwHOIRqcighfWEmHK4nANxlCwNQDzKefCBiB+Bb5
 C0Es00HnbnIXUzJw3QOl8QrnfI4g1EhwDwRyfJwf/vadBLByWcBaezbpe
 Sq3eR1T9vFyljMEajV+f/vVKKh8oenGji4TMGBRcR2zHcZXZXYQkIimPK
 BeBOGSP+SSA8h7D8CCazXlZZnKUXr2jFdZ59lCVrgJD7FmXGJRwuuAEaj
 v6/c9QYunTbwnqxpodJzwF4AMDRXm0dGEFOoopqbLbf8Jfqsk+FKys8RM
 NiGyIebpkRnrY+VRxUnG5AHAtNOkDGTSjhWstPQVn4TYMtLuYwWbHPug/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MpfD+Rol
Subject: Re: [Intel-wired-lan] [iwl-next v1 06/15] ice: add subfunction aux
 driver support
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

On Tue, Feb 13, 2024 at 09:57:12AM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:27:15AM CET, michal.swiatkowski@linux.intel.com wrote:
> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >
> >Instead of only registering devlink port by the ice driver itself,
> >let PF driver only register port representor for a given subfunction.
> >Then, aux driver is supposed to register its own devlink instance and
> >register virtual devlink port.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > .../intel/ice/devlink/ice_devlink_port.c      |  52 ++++-
> > .../intel/ice/devlink/ice_devlink_port.h      |   6 +
> > drivers/net/ethernet/intel/ice/ice_devlink.c  |  28 ++-
> > drivers/net/ethernet/intel/ice/ice_devlink.h  |   3 +
> > drivers/net/ethernet/intel/ice/ice_main.c     |   9 +
> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 214 ++++++++++++++++--
> > drivers/net/ethernet/intel/ice/ice_sf_eth.h   |  21 ++
> > 7 files changed, 302 insertions(+), 31 deletions(-)
> 
> Could you please split this. I see that you can push out 1-3 patches as
> preparation.

Do you mean 1-3 patchses from this patch, or from whole patchset? I mean,
do you want to split the patchset to two patchsets? (by splitting patch
from the patchset I will have more than netdev maximum; 15 I think). 

Thanks,
Michal
