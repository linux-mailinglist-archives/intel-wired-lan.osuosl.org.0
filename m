Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 577D5A8247F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D42C411D7;
	Wed,  9 Apr 2025 12:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rf2197B_LP_e; Wed,  9 Apr 2025 12:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6660D411E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201135;
	bh=O70pUlNTeIra+c0LINj2nPOCw0f45XuZEDu9hHpKyIs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=19ruuvNKtW5cfp5cZ1xeynt82t1hpk8AQPoUczN2PVzatdg2aCSfehpea8ibfcFT8
	 nO48StlF3JREGydeDwLGBCLRa51eoZOzy3Fz/EZKx9i1D0FFXnmmXTVHmPYH38EL3O
	 GTTa1/5jTBU/nASGrTRc1ibPkBWu7NsDJ6WvAR7CoTzmfWftD5tnabaN1OwLLxvm2J
	 Arq7+7041DfLDGVTbKUluOyUzYV/Zw2rmOD/j5i0mmvDARiGTsGj9yDappBtMCKmZ3
	 o2/kwS7rKTRXGhRbpCuxDsstUZzxFsgNru4AfuN3+3NNmwRTrnOGQ97xGP+Uq03+/w
	 /VNdcsnNcpDVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6660D411E8;
	Wed,  9 Apr 2025 12:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ECA9D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 286CB40B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EKcjCFjkKqFB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:18:52 +0000 (UTC)
X-Greylist: delayed 592 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Apr 2025 12:18:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F3084107D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F3084107D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F3084107D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:18:50 +0000 (UTC)
Received: from [141.14.220.43] (g43.guest.molgen.mpg.de [141.14.220.43])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8208C61E64799;
 Wed, 09 Apr 2025 14:08:26 +0200 (CEST)
Message-ID: <55ae83fc-8333-4a04-9320-053af1fd6f46@molgen.mpg.de>
Date: Wed, 9 Apr 2025 14:08:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add
 link_down_events statistic
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

Dear Martyna,


Thank you for your patch.

Am 09.04.25 um 13:36 schrieb Martyna Szapar-Mudlaw:
> Introduce a new ethtool statistic to ice driver, `link_down_events`,
> to track the number of times the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
> 
> The counter increments when a link-down event occurs and is exposed
> via ethtool stats as `link_down_events.nic`.

It’d be great if you pasted an example output.

> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         | 1 +
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
>   drivers/net/ethernet/intel/ice/ice_main.c    | 3 +++
>   3 files changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 7200d6042590..6304104d1900 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -621,6 +621,7 @@ struct ice_pf {
>   	u16 globr_count;	/* Global reset count */
>   	u16 empr_count;		/* EMP reset count */
>   	u16 pfr_count;		/* PF reset count */
> +	u32 link_down_events;

Why not u16?

>   
>   	u8 wol_ena : 1;		/* software state of WoL */
>   	u32 wakeup_reason;	/* last wakeup reason */
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index b0805704834d..7bad0113aa88 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -137,6 +137,7 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
>   	ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
>   	ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
>   	ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
> +	ICE_PF_STAT("link_down_events.nic", link_down_events),
>   	ICE_PF_STAT("tx_hwtstamp_skipped", ptp.tx_hwtstamp_skipped),
>   	ICE_PF_STAT("tx_hwtstamp_timeouts", ptp.tx_hwtstamp_timeouts),
>   	ICE_PF_STAT("tx_hwtstamp_flushed", ptp.tx_hwtstamp_flushed),
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a03e1819e6d5..d68dd2a3f4a6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1144,6 +1144,9 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
>   	if (link_up == old_link && link_speed == old_link_speed)
>   		return 0;
>   
> +	if (!link_up && old_link)
> +		pf->link_down_events++;
> +
>   	ice_ptp_link_change(pf, link_up);
>   
>   	if (ice_is_dcb_active(pf)) {

The diff looks good.


Kind regards,

Paul

