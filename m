Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AB3151F1D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2020 18:17:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AAEBB2052A;
	Tue,  4 Feb 2020 17:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XnO4bX8BQiNZ; Tue,  4 Feb 2020 17:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7BEA220400;
	Tue,  4 Feb 2020 17:17:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8E71BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6741984900
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsoey3VICs7Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2020 17:17:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E901781E80
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2020 17:17:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 09:17:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="279119469"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Feb 2020 09:17:42 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 09:17:42 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.57]) by
 ORSMSX151.amr.corp.intel.com ([169.254.7.99]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 09:17:42 -0800
From: "Allan, Bruce W" <bruce.w.allan@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB rebuild
 after reset
Thread-Index: AQHV2IOFXcpj8lM4A02ehMAkeOvxI6gLQblA
Date: Tue, 4 Feb 2020 17:17:42 +0000
Message-ID: <804857E1F29AAC47BF68C404FC60A184010AF5CFED@ORSMSX113.amr.corp.intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2JhYjcxZmItMTc1My00OWQ5LWEwODAtYmJlN2UwYmI5YzQ3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ3JQVU5uSGdqdEIrTzllOStiZ3V0Y2tXUFBOUkxxb1VkMTJDXC9QOW5nSGdWODNmRlJRQjBOdUpDVlprOFpwY0gifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB rebuild
 after reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, January 31, 2020 5:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S37 v2 01/15] ice: Fix DCB rebuild after reset
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The function ice_dcb_rebuild had some logic
> flaws in it, and also didn't differentiate
> between FW and SW modes needs.
> 
> For FW flow, the willing setting was being
> forced to OFF and left that way.  Unwilling
> in DCB FW mode is not a supported model.
> 
> Leave the config alone and use the return value
> from the set command to determine if setting the
> config was successful.
> 
> The SW DCB flow does not need to need to register
> for MIB change events (as they are not used in
> SW mode).
> 
> Use !is_sw_lldp checks to only perform FW specific
> task while in FW mode.
> 
> Also adding a reapplication of the current DCB
> config after a link event.  Some NVMs are not
> maintaining their DCB configs across link events.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v2:
> - Add missing mutex_unlock() in error path
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 83 +++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
>  2 files changed, 36 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 9401f2051293..8e96c722b065 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -339,9 +339,9 @@ ice_dcb_need_recfg(struct ice_pf *pf, struct
> ice_dcbx_cfg *old_cfg,
>   */
>  void ice_dcb_rebuild(struct ice_pf *pf)
>  {
> -	struct ice_dcbx_cfg *local_dcbx_cfg, *desired_dcbx_cfg, *prev_cfg;
>  	struct ice_aqc_port_ets_elem buf = { 0 };
>  	struct device *dev = ice_pf_to_dev(pf);
> +	struct ice_dcbx_cfg *err_cfg;
>  	enum ice_status ret;
> 
>  	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
> @@ -354,53 +354,25 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>  	if (!test_bit(ICE_FLAG_DCB_ENA, pf->flags))
>  		return;
> 
> -	local_dcbx_cfg = &pf->hw.port_info->local_dcbx_cfg;
> -	desired_dcbx_cfg = &pf->hw.port_info->desired_dcbx_cfg;
> +	mutex_lock(&pf->tc_mutex);
> 
> -	/* Save current willing state and force FW to unwilling */
> -	local_dcbx_cfg->etscfg.willing = 0x0;
> -	local_dcbx_cfg->pfc.willing = 0x0;
> -	local_dcbx_cfg->app_mode = ICE_DCBX_APPS_NON_WILLING;
> +	if (!pf->hw.port_info->is_sw_lldp)
> +		ice_cfg_etsrec_defaults(pf->hw.port_info);
> 
> -	ice_cfg_etsrec_defaults(pf->hw.port_info);
>  	ret = ice_set_dcb_cfg(pf->hw.port_info);
>  	if (ret) {
> -		dev_err(dev, "Failed to set DCB to unwilling\n");
> +		dev_err(dev, "Failed to set DCB config in rebuild\n");
>  		goto dcb_error;
>  	}
> 
> -	/* Retrieve DCB config and ensure same as current in SW */
> -	prev_cfg = kmemdup(local_dcbx_cfg, sizeof(*prev_cfg), GFP_KERNEL);
> -	if (!prev_cfg)
> -		goto dcb_error;
> -
> -	ice_init_dcb(&pf->hw, true);
> -	if (pf->hw.port_info->dcbx_status == ICE_DCBX_STATUS_DIS)
> -		pf->hw.port_info->is_sw_lldp = true;
> -	else
> -		pf->hw.port_info->is_sw_lldp = false;
> -
> -	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
> -		/* difference in cfg detected - disable DCB till next MIB */
> -		dev_err(dev, "Set local MIB not accurate\n");
> -		kfree(prev_cfg);
> -		goto dcb_error;
> +	if (!pf->hw.port_info->is_sw_lldp) {
> +		ret = ice_cfg_lldp_mib_change(&pf->hw, true);
> +		if (ret && !pf->hw.port_info->is_sw_lldp) {
> +			dev_err(dev, "Failed to register for MIB changes\n");
> +			goto dcb_error;
> +		}
>  	}
> 
> -	/* fetched config congruent to previous configuration */
> -	kfree(prev_cfg);
> -
> -	/* Set the local desired config */
> -	if (local_dcbx_cfg->dcbx_mode == ICE_DCBX_MODE_CEE)
> -		memcpy(local_dcbx_cfg, desired_dcbx_cfg,
> -		       sizeof(*local_dcbx_cfg));
> -
> -	ice_cfg_etsrec_defaults(pf->hw.port_info);
> -	ret = ice_set_dcb_cfg(pf->hw.port_info);
> -	if (ret) {
> -		dev_err(dev, "Failed to set desired config\n");
> -		goto dcb_error;
> -	}
>  	dev_info(dev, "DCB restored after reset\n");
>  	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
>  	if (ret) {
> @@ -408,26 +380,32 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>  		goto dcb_error;
>  	}
> 
> +	mutex_unlock(&pf->tc_mutex);
> +
>  	return;
> 
>  dcb_error:
>  	dev_err(dev, "Disabling DCB until new settings occur\n");
> -	prev_cfg = kzalloc(sizeof(*prev_cfg), GFP_KERNEL);
> -	if (!prev_cfg)
> +	err_cfg = kzalloc(sizeof(*err_cfg), GFP_KERNEL);
> +	if (!err_cfg) {
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
> +	}
> 
> -	prev_cfg->etscfg.willing = true;
> -	prev_cfg->etscfg.tcbwtable[0] = ICE_TC_MAX_BW;
> -	prev_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
> -	memcpy(&prev_cfg->etsrec, &prev_cfg->etscfg, sizeof(prev_cfg-
> >etsrec));
> +	err_cfg->etscfg.willing = true;
> +	err_cfg->etscfg.tcbwtable[0] = ICE_TC_MAX_BW;
> +	err_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
> +	memcpy(&err_cfg->etsrec, &err_cfg->etscfg, sizeof(err_cfg->etsrec));
>  	/* Coverity warns the return code of ice_pf_dcb_cfg() is not checked
>  	 * here as is done for other calls to that function. That check is
>  	 * not necessary since this is in this function's error cleanup path.
>  	 * Suppress the Coverity warning with the following comment...
>  	 */
>  	/* coverity[check_return] */
> -	ice_pf_dcb_cfg(pf, prev_cfg, false);
> -	kfree(prev_cfg);
> +	ice_pf_dcb_cfg(pf, err_cfg, false);
> +	kfree(err_cfg);
> +
> +	mutex_unlock(&pf->tc_mutex);
>  }
> 
>  /**
> @@ -842,6 +820,8 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf
> *pf,
>  		}
>  	}
> 
> +	mutex_lock(&pf->tc_mutex);

This lock is unlocked with most but not all return() function exit points.  That needs fixing,
and it would be better if there was a single function exit point where things like the locked
mutex and locked rtnl are unrolled.

> +
>  	/* store the old configuration */
>  	tmp_dcbx_cfg = pf->hw.port_info->local_dcbx_cfg;
> 
> @@ -852,20 +832,24 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf
> *pf,
>  	ret = ice_get_dcb_cfg(pf->hw.port_info);
>  	if (ret) {
>  		dev_err(dev, "Failed to get DCB config\n");
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
>  	}
> 
>  	/* No change detected in DCBX configs */
>  	if (!memcmp(&tmp_dcbx_cfg, &pi->local_dcbx_cfg,
> sizeof(tmp_dcbx_cfg))) {
>  		dev_dbg(dev, "No change detected in DCBX configuration.\n");
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
>  	}
> 
>  	need_reconfig = ice_dcb_need_recfg(pf, &tmp_dcbx_cfg,
>  					   &pi->local_dcbx_cfg);
>  	ice_dcbnl_flush_apps(pf, &tmp_dcbx_cfg, &pi->local_dcbx_cfg);
> -	if (!need_reconfig)
> +	if (!need_reconfig) {
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
> +	}
> 
>  	/* Enable DCB tagging only when more than one TC */
>  	if (ice_dcb_get_num_tc(&pi->local_dcbx_cfg) > 1) {
> @@ -879,6 +863,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf
> *pf,
>  	pf_vsi = ice_get_main_vsi(pf);
>  	if (!pf_vsi) {
>  		dev_dbg(dev, "PF VSI doesn't exist\n");
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
>  	}
> 
> @@ -889,6 +874,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf
> *pf,
>  	if (ret) {
>  		dev_err(dev, "Query Port ETS failed\n");
>  		rtnl_unlock();
> +		mutex_unlock(&pf->tc_mutex);
>  		return;
>  	}
> 
> @@ -897,4 +883,5 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf
> *pf,
> 
>  	ice_ena_vsi(pf_vsi, true);
>  	rtnl_unlock();
> +	mutex_unlock(&pf->tc_mutex);
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6ce422789df7..d4bc6fd3321c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -844,6 +844,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info
> *pi, bool link_up,
>  		}
>  	}
> 
> +	ice_dcb_rebuild(pf);
>  	ice_vsi_link_event(vsi, link_up);
>  	ice_print_link_msg(vsi, link_up);
> 
> --
> 2.20.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
