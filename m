Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC9AD568C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 15:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42B8C40B28;
	Wed, 11 Jun 2025 13:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P_9oxpZYc_or; Wed, 11 Jun 2025 13:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 887C940B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749647414;
	bh=Xh7rY6tSMgRGvd8PCMytb/LOBWFRtUFgY86dQOnY+mE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TC1EiLfX554U/ae+CD8l/qyxRUxKyohF5s9Ye6atG4hbm6CrpgGRQt9PfElLzDGEa
	 x+5mbrA7nNcJ2/2pv/W/0gI4yxGur1cjBS3lptRlGavhdBIEF5BUgldhRpVfxJ+lim
	 BJbkVoamJW32hUAFes5VEPVvF4i+cMNU5bB5sj1RlxuSyOXIrjVSrbn2Ez/GYnfrbt
	 OLMROt8Wygl3RdNbYxMBoys+zVL1qaf8JlsQKtCNqIxtoxxE9xT6NysDE4SSuQjQbF
	 Yg0Uu1KOiUzsbS/DMyXmei7fqbVJShVdTlIO+AzBSD3uuQfhNNSVEh6o7lQqQ1d0kT
	 TPMxkCxyUl7Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 887C940B31;
	Wed, 11 Jun 2025 13:10:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A5BF183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 13:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F24740420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 13:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7731byz7gzW2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 13:10:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4548C40202
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4548C40202
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4548C40202
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 13:10:09 +0000 (UTC)
X-CSE-ConnectionGUID: jNmkYUjFRFuV+DdyNqYPIQ==
X-CSE-MsgGUID: cQGMH+M5ToGciuRp7SHwBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62069266"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="62069266"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:10:09 -0700
X-CSE-ConnectionGUID: xRPWljmnSziSX86ZH+ZVSQ==
X-CSE-MsgGUID: Hb/O2B0ZTAKaYyBy5WNGRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="184400678"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.245.114.89])
 ([10.245.114.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:10:08 -0700
Message-ID: <f64586a7-2201-4416-8aa0-96d43ecc7c67@linux.intel.com>
Date: Wed, 11 Jun 2025 15:10:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20250609131141.758051-1-david.m.ertman@intel.com>
 <20250609131141.758051-9-david.m.ertman@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20250609131141.758051-9-david.m.ertman@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749647411; x=1781183411;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=PljYfrU+liUkFXXjfE+L+bxSmpwVmGHUXsooE7lPRJo=;
 b=d2rKVl1obl6Ag8Mkz5e5xD258k2bL1HBSTPMvGbLvwjMSCqtxINSb6hf
 tQwn2onvsEuNRsmevy7gj6M9QfWMoBohe8Rmnk2fW65TcvypFhPST+24U
 NF4dp+nr597Wd8ZoijuZZK66/SII9vSLD76mW4YQ82QgShY0axiWBBYEm
 NQ/hC1kYMABW9UqGZVfhWL3KWEwDDADnnSWPPxdCPm0/YjvLXdNUkeEfS
 CcXWnOGfii+jfTj08h68ihkX0WROBueJN/Ll6NLbBDjnqE9rltYDX0o7i
 JP5Q3+x4GiuIPRBT65wa7Mfy+c3sTTUatMzbAqUfeAwC2DVG9WllIUUo1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d2rKVl1o
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 8/8] ice: Implement
 support for SRIOV VFs across Active/Active bonds
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09.06.2025 15:11, Dave Ertman wrote:

(...)

> +static void ice_lag_aa_move_vf_qs(struct ice_lag *lag, u8 dest, u16 vsi_num,
> +				  bool all, bool *odd, struct ice_pf *e_pf)
> +{
> +	DEFINE_RAW_FLEX(struct ice_aqc_cfg_txqs_buf, qbuf, queue_info, 1);
> +	struct ice_hw *old_hw, *new_hw, *pri_hw, *sec_hw;
> +	struct device *dev = ice_pf_to_dev(lag->pf);
> +	struct ice_vsi_ctx *pv_ctx, *sv_ctx;
> +	struct ice_lag_netdev_list ndlist;
> +	u16 num_q, qbuf_size, sec_vsi_num;
> +	u8 pri_lport, sec_lport;
> +	u32 pvf_teid, svf_teid;
> +	u16 vf_id;
> +
> +	vf_id = lag->pf->vsi[vsi_num]->vf->vf_id;
> +	/* If sec_vf[] not defined, then no second interface to share with */
> +	if (lag->sec_vf[vf_id])
> +		sec_vsi_num = lag->sec_vf[vf_id]->idx;
> +	else
> +		return;
> +
> +	pri_lport = lag->bond_lport_pri;
> +	sec_lport = lag->bond_lport_sec;
> +
> +	if (pri_lport == ICE_LAG_INVALID_PORT ||
> +	    sec_lport == ICE_LAG_INVALID_PORT)
> +		return;
> +
> +	if (!e_pf)
> +		ice_lag_build_netdev_list(lag, &ndlist);
> +
> +	pri_hw = &lag->pf->hw;
> +	if (e_pf && lag->pf != e_pf)
> +		sec_hw = &e_pf->hw;
> +	else
> +		sec_hw = ice_lag_find_hw_by_lport(lag, sec_lport);
> +
> +	if (!pri_hw || !sec_hw)
> +		return;
> +
> +	if (dest == ICE_LAGP_IDX) {
> +		old_hw = sec_hw;
> +		new_hw = pri_hw;
> +		ice_lag_config_eswitch(lag, lag->pf->vsi[0]->netdev);

ice_get_main_vsi(lag->pf)->netdev should probably be used instead for clarity.
Actually now that I look at it, pf->vsi[0] is used multiple times in ice_lag.c,
might be a case for a small refactor at some point later.

> +	} else {
> +		struct ice_pf *sec_pf = sec_hw->back;
> +
> +		old_hw = pri_hw;
> +		new_hw = sec_hw;
> +		ice_lag_config_eswitch(lag, sec_pf->vsi[0]->netdev);

Same

(...)

>  /**
> - * ice_lag_config_eswitch - configure eswitch to work with LAG
> - * @lag: lag info struct
> - * @netdev: active network interface device struct
> - *
> - * Updates all port representors in eswitch to use @netdev for Tx.
> - *
> - * Configures the netdev to keep dst metadata (also used in representor Tx).
> - * This is required for an uplink without switchdev mode configured.
> - */
> -static void ice_lag_config_eswitch(struct ice_lag *lag,
> -				   struct net_device *netdev)
> -{
> -	struct ice_repr *repr;
> -	unsigned long id;
> -
> -	xa_for_each(&lag->pf->eswitch.reprs, id, repr)
> -		repr->dst->u.port_info.lower_dev = netdev;
> -
> -	netif_keep_dst(netdev);
> -}

There's already patch 4/8 that moves a function with no changes, this should be
a part of it.

Thanks,
Marcin
