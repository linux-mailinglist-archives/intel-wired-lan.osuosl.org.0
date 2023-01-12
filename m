Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE8E666EDE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 11:00:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC7B160B48;
	Thu, 12 Jan 2023 10:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC7B160B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673517654;
	bh=lW49t1QdnNJreCnwiFoHusucC1OWANPMenV90ffXYfI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4jEMDAnXx4l8q5Qc9IjvBeX9HxKD36vMMQ0BJAYFVq9+nPYqWP6OQro7RkWaY+nQh
	 t2RxhaSnDcCM7BlzNAITFiP4SVb+lg06vWdQ72H1HerUYX53bnP4cOlJV8xph/VOPn
	 5GehRH0e4jH0W9SxeZQdT2N2MrAqI2hYbWFoH2placSNu7IXxLrz5p3o6KLFEM0nWl
	 ySzoDvg3NNhA0hkd8dRelvbFkJ/GenrV7TWCEIe6fg0tlijVXl4GlgHUEDpgwG4N6w
	 IAtjtfT2J1A1AorSdohLI9xTYaODKRW8uEMpPvfM0iAhC4xYbZLD53AsVnJtj7mlHw
	 FChX5mgkKYHzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQqm30L5RlKU; Thu, 12 Jan 2023 10:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B93D760B35;
	Thu, 12 Jan 2023 10:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B93D760B35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 332E81BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19F3A81410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19F3A81410
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CU242zr7nC4A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 10:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C8B581419
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C8B581419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:00:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="304038743"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="304038743"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:00:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="903120433"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="903120433"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:00:18 -0800
Date: Thu, 12 Jan 2023 11:00:14 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <Y7/aLiP5b3oWSV+R@localhost.localdomain>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-4-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111191906.131-4-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673517647; x=1705053647;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eWSW1xgpMvN93wkxU3YaDWac6pG4pepBm6pJ1q4QIgw=;
 b=GrULu+YC3N8vQmF41ajncAd6n8oR0cnSQvnwwtgsjPhTVkQ7krWjBEG4
 Aa8kffnRNd5bXxJ79Lo5qfIzleFV/ED+8PmU+t+7NQhlKgG3kZrJEVhK3
 TlJNikB1ETJWAbmXROoHWlvdEifdmAKKXtbYnY2XqnQnOoEmZIgX7pGOL
 V/oD2iM3HxDRNavTz0yqjWpSmSCwV4lNrvu0VRZiBnJx5XWo6oPhwOiQn
 zoslnInZw0wrvj22i9Ihj99UaiFF/e8sfh0M/K6/FTNmanMxruoCqijvb
 RQTWASBBEleb3oGle706i+je1QgP9JPbjKYfvO6njHAip1RYNXr9tXEM4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GrULu+YC
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/5] ice: add ability to
 query/set FW log level and resolution
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 11, 2023 at 11:19:04AM -0800, Paul M Stillwell Jr wrote:
> The E8xx has the ability to change the FW log level and
> the granularity at which the logs get output. Enable
> the ability to see what the current values are and to
> change them.
> 
> The following devlink commands are now supported:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
> devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
> devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 278 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 416 insertions(+), 5 deletions(-)
>  
[...]
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index efea71b6c9f8..6973f01749f9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -4,6 +4,165 @@
>  #include "ice_common.h"
>  #include "ice_fwlog.h"
>  
> +/**
> + * cache_cfg - Cache FW logging config
> + * @hw: pointer to the HW structure
> + * @cfg: config to cache
> + */
> +static void cache_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	hw->fwlog_cfg = *cfg;
> +}
> +
> +/**
> + * valid_module_entries - validate all the module entry IDs and log levels
> + * @hw: pointer to the HW structure
> + * @entries: entries to validate
> + * @num_entries: number of entries to validate
> + */
> +static bool
> +valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		     u16 num_entries)
> +{
> +	int i;
> +
> +	if (!entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
> +		return false;
> +	}
> +
> +	if (!num_entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
> +		return false;
> +	}
> +
> +	for (i = 0; i < num_entries; i++) {
> +		struct ice_fwlog_module_entry *entry = &entries[i];
> +
> +		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
> +				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +
> +		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
> +				  entry->log_level,
> +				  ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * valid_cfg - validate entire configuration
> + * @hw: pointer to the HW structure
> + * @cfg: config to validate
> + */
> +static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	if (!cfg) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
> +		return false;
> +	}
> +
> +	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
> +			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
> +			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
> +		return false;
> +	}
> +
> +	if (!valid_module_entries(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX))
> +		return false;
> +
> +	return true;
return valid_module_entries();

> +}
> +
> +/**
> + * ice_fwlog_init - Initialize FW logging variables
> + * @hw: pointer to the HW structure
> + *
> + * This function should be called on driver initialization during
> + * ice_init_hw().
> + */
> +int ice_fwlog_init(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	ice_fwlog_set_supported(hw);
> +
> +	if (ice_fwlog_supported(hw)) {
> +		struct ice_fwlog_cfg *cfg;
> +
> +		cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
I don't understand why hw->cfg can't be used here? It will simplify all
this cache_cfg. Is there any reason to alloc config and than set hw->cfg
to it in get flow?

When config parameters are being set from devlink context hw->cfg is
used instead of new allocated config like here (and than casched).

> +		if (!cfg)
> +			return -ENOMEM;
> +
> +		/* read the current config from the FW and store it */
> +		status = ice_fwlog_get(hw, cfg);
> +		if (status)
> +			return status;
Shouldn't cfg be free here? If ice_fwlog_get fails cfg isn't casched.

> +	}
> +
> +	return 0;
> +}
> +
[...]
>  
> -- 
> 2.35.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
