Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A472666E64
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 10:38:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D036606A0;
	Thu, 12 Jan 2023 09:38:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D036606A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673516303;
	bh=ED3Vi3VC3RrbSgdqAq1HtKmSgad0c18YLkb2u0cLNW0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oyzpEvSnONV+pyPVTiM974T/+OS5Qlwr22rQLulydJn+lfS9Cd4VwFFIeo3wPoLDW
	 KaU2ABrIpUigOcLRPkLYSKumKGNjXKpIXzCGNNPyNgyY1gXvifbgmwM6LlkcxCtmYQ
	 itsITS5mskd6kQDVT3QYz4j+Whv4qd7854yT+nmSjh61ix4DK+KOzyD6ykSm/j9bRE
	 Rj7oI2SFgLu4r9xuMXQhYWBNLrt9Muy8IMmSzYgn5jv5n5Z8sp5Fm0WozquLkH5Uvm
	 q3nZmDDitVI0rM2G8Wcvai+5Cy7GchIPOz/KHKvTC4QSlBzQn5nrVZxB3iM9jqZjDI
	 DN3OG33VBl6VA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obFMBciSfOUT; Thu, 12 Jan 2023 09:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E36C960681;
	Thu, 12 Jan 2023 09:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E36C960681
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F00F1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4636A8139D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4636A8139D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p5ZzSOZIu7Mt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 09:38:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEA8E81388
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEA8E81388
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 09:38:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385974130"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="385974130"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:38:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="903111353"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="903111353"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 01:38:13 -0800
Date: Thu, 12 Jan 2023 10:38:10 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <Y7/VAvhHiCmEcdgf@localhost.localdomain>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-3-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111191906.131-3-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673516295; x=1705052295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3kHTtdQbM4OtFxv5Ke84bHesfd8AaqbeSNoohlNqwx8=;
 b=M0BY/fpreTfh9qdR92TY3FqjV7Zln3SbLMXY4SIVGJkJfwewblXsgLCK
 R4dW12Sebycf/H8mwfO0YNM0HImbYEilaleWyXI+fNRXc240N2iObNE7F
 AZnNFXBA0iyNENZ6M+6abHvEkNus1X7odUCapfAJKqYHjMJu24KDJeLYr
 FJVt8w7JUh6QZ35s6F7N2d7XFOvJcQLVbgyt10zZ03lfFlPGUsj80KOQ2
 CAH18vTi30UjB9cpABKIRPzqxGvJ2c/NWU5C6ZEMAosGHxebpDdIPlT5D
 QwXgp7d41ADg2f6P1Vfb1DftWGcylx5UxywAQ/2AKqlwOPHGBxSXIeSVG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M0BY/fpr
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/5] ice: enable devlink
 to check FW logging status
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

On Wed, Jan 11, 2023 at 11:19:03AM -0800, Paul M Stillwell Jr wrote:
> Users want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Enable devlink to query the driver
> to see if the NVM image allows FW logging and to see if FW
> logging is currently running. The set command is not supported
> at this time.
> 
> This is the beginning of the v2 for FW logging.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
>     pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 118 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  7 files changed, 331 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 
Hi,

Great changes, does it mean that after applying the patchset we will be
able to for example dump whole switch block?

Looks good, only cosmetic comments.

[...]

> +
> +/**
> + * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
> + * @hw: pointer to the HW structure
> + * @cfg: firmware logging configuration to populate
> + */
> +static int
> +ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	u16 module_id_cnt;
> +	int status;
> +	void *buf;
> +	int i;
> +
> +	memset(cfg, 0, sizeof(*cfg));
> +
> +	buf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_query);
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_AQ_QUERY;
> +
> +	status = ice_aq_send_cmd(hw, &desc, buf, ICE_AQ_MAX_BUF_LEN, NULL);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to get FW log configuration\n");
> +		goto status_out;
> +	}
> +
> +	module_id_cnt = le16_to_cpu(cmd->ops.cfg.mdl_cnt);
> +	if (module_id_cnt < ICE_AQC_FW_LOG_ID_MAX) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "FW returned less than the expected number of FW log module IDs\n");
> +	} else {
> +		if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX)
> +			ice_debug(hw, ICE_DBG_FW_LOG, "FW returned more than expected number of FW log module IDs, setting module_id_cnt to software expected max %u\n",
> +				  ICE_AQC_FW_LOG_ID_MAX);
> +		module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
Maybe:
else if (module_id_cnt > ICE_AQC_FW_LOG_ID_MAX) {
	ice_debug();
	module_id_cnt = ICE_AQC_FW_LOG_ID_MAX;
}
We will save one indent, but it is cosmetic, so feel free to ignore.

> +	}
> +
> +	cfg->log_resolution = le16_to_cpu(cmd->ops.cfg.log_resolution);
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_AQ_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_CONF_UART_EN)
> +		cfg->options |= ICE_FWLOG_OPTION_UART_ENA;
> +	if (cmd->cmd_flags & ICE_AQC_FW_LOG_QUERY_REGISTERED)
> +		cfg->options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	fw_modules = (struct ice_aqc_fw_log_cfg_resp *)buf;
> +
> +	for (i = 0; i < module_id_cnt; i++) {
> +		struct ice_aqc_fw_log_cfg_resp *fw_module = &fw_modules[i];
> +
> +		cfg->module_entries[i].module_id =
> +			le16_to_cpu(fw_module->module_identifier);
> +		cfg->module_entries[i].log_level = fw_module->log_level;
> +	}
> +
> +status_out:
> +	kfree(buf);
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_set_supported - Set if FW logging is supported by FW
> + * @hw: pointer to the HW struct
> + *
> + * If FW returns success to the ice_aq_fwlog_get call then it supports FW
> + * logging, else it doesn't. Set the fwlog_supported flag accordingly.
> + *
> + * This function is only meant to be called during driver init to determine if
> + * the FW support FW logging.
> + */
> +void ice_fwlog_set_supported(struct ice_hw *hw)
> +{
> +	struct ice_fwlog_cfg *cfg;
> +	int status;
> +
> +	hw->fwlog_supported = false;
> +
> +	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
> +	if (!cfg)
> +		return;
> +
> +	/* don't call ice_fwlog_get() because that would overwrite the cached
> +	 * configuration from the call to ice_fwlog_init(), which is expected to
> +	 * be called prior to this function
> +	 */
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "ice_aq_fwlog_get failed, FW logging is not supported on this version of FW, status %d\n",
> +			  status);
> +	else
> +		hw->fwlog_supported = true;
> +
> +	kfree(cfg);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> new file mode 100644
> index 000000000000..3a2c83502763
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2022, Intel Corporation. */
> +
> +#ifndef _ICE_FWLOG_H_
> +#define _ICE_FWLOG_H_
> +#include "ice_adminq_cmd.h"
> +
> +struct ice_hw;
> +
> +/* Only a single log level should be set and all log levels under the set value
> + * are enabled, e.g. if log level is set to ICE_FW_LOG_LEVEL_VERBOSE, then all
> + * other log levels are included (except ICE_FW_LOG_LEVEL_NONE)
> + */
> +enum ice_fwlog_level {
> +	ICE_FWLOG_LEVEL_NONE = 0,
> +	ICE_FWLOG_LEVEL_ERROR = 1,
> +	ICE_FWLOG_LEVEL_WARNING = 2,
> +	ICE_FWLOG_LEVEL_NORMAL = 3,
> +	ICE_FWLOG_LEVEL_VERBOSE = 4,
> +	ICE_FWLOG_LEVEL_INVALID, /* all values >= this entry are invalid */
> +};
> +
> +struct ice_fwlog_module_entry {
> +	/* module ID for the corresponding firmware logging event */
> +	u16 module_id;
> +	/* verbosity level for the module_id */
> +	u8 log_level;
> +};
> +
> +struct ice_fwlog_cfg {
> +	/* list of modules for configuring log level */
> +	struct ice_fwlog_module_entry module_entries[ICE_AQC_FW_LOG_ID_MAX];
> +	/* options used to configure firmware logging */
> +	u16 options;
> +#define ICE_FWLOG_OPTION_ARQ_ENA		BIT(0)
> +#define ICE_FWLOG_OPTION_UART_ENA		BIT(1)
> +	/* set before calling ice_fwlog_init() so the PF registers for firmware
> +	 * logging on initialization
> +	 */
> +#define ICE_FWLOG_OPTION_REGISTER_ON_INIT	BIT(2)
> +	/* set in the ice_fwlog_get() response if the PF is registered for FW
> +	 * logging events over ARQ
> +	 */
> +#define ICE_FWLOG_OPTION_IS_REGISTERED		BIT(3)
> +
> +	/* minimum number of log events sent per Admin Receive Queue event */
> +	u16 log_resolution;
> +};
> +
> +void ice_fwlog_set_supported(struct ice_hw *hw);
> +bool ice_fwlog_supported(struct ice_hw *hw);
> +#endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 126605b7eb3b..1284fe8d78f2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -17,6 +17,7 @@
>  #include "ice_protocol_type.h"
>  #include "ice_sbq_cmd.h"
>  #include "ice_vlan_mode.h"
> +#include "ice_fwlog.h"
>  
>  static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
>  {
> @@ -859,6 +860,9 @@ struct ice_hw {
>  	u8 fw_patch;		/* firmware patch version */
>  	u32 fw_build;		/* firmware build number */
>  
> +	bool fwlog_supported; /* does hardware support FW logging? */
> +	bool fwlog_ena; /* currently logging? */
> +
>  /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
>   * register. Used for determining the ITR/INTRL granularity during
>   * initialization.
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
