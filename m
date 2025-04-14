Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B9DA88145
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8C3561069;
	Mon, 14 Apr 2025 13:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bxjqrMlKEao5; Mon, 14 Apr 2025 13:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCE22610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744636358;
	bh=VapJUH2o70XpTwMe30m65u55FTXtOw9u4MoFKCh29MI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yi59eV68yhEydZ18S7NpziriE2R2q+VEkh77jAjpsYMA1oP+N6kO+h4NJJSihbN8z
	 C8M3q+9bJvDBiktn7nate4uN9MjMoeNU2SMHl6LQicdOHdOmsm6mqLoNKtAorn1zYl
	 eu+om9uhuMIDliVqIuk36Hd+iR2GxnFGLbEzC6ekG6NH2AIHbqrLUkQGJwocMtXOVx
	 acw/8Zu/lEnUUb0Ievk7DVaJMn/THbC/4+JUuSCpA+sUPVB+rEnLeQGrrlOxHbQ0qe
	 Z1Epp1BFYTkNeo7OPNB6KyF1Zi5tGaUan0WQnr494X96spUypEfsK4ED52Y/lERaBU
	 +k/q4FmnWgIfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCE22610A1;
	Mon, 14 Apr 2025 13:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 57F6DDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E432404EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYToZNejJO9i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:12:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71BF440251
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71BF440251
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71BF440251
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:12:36 +0000 (UTC)
X-CSE-ConnectionGUID: r/914tX6RuKI2pz9S4aVvQ==
X-CSE-MsgGUID: a+v10LgGRrmDEvyvlc2Hpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45240826"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="45240826"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:12:36 -0700
X-CSE-ConnectionGUID: 68LT2WeKQ/6m5FT1X51I3g==
X-CSE-MsgGUID: RhP1dXvoSd27ztQQMQqmFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134653252"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.98.242])
 ([10.245.98.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:12:35 -0700
Message-ID: <4012b88a-091d-4f81-92ab-ad32727914ff@linux.intel.com>
Date: Mon, 14 Apr 2025 15:12:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
 <55ae83fc-8333-4a04-9320-053af1fd6f46@molgen.mpg.de>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <55ae83fc-8333-4a04-9320-053af1fd6f46@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744636357; x=1776172357;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zxrmEtApbR1+NFxrh23dKs/vscGUN0aWWypjYeI/it8=;
 b=igrcAXJsZc2Ykf3DfJoGdTkIcDYiJiwXgqH65AzPvuQpeuBdHLK0i9RO
 vmOaFNfeRFeGOR0echZKL4w4OSOjt7SrzDuCVRugMYSlACAunCOIw6tci
 W0XIFUD1QcirTaSAcikEZnDH92ki/5TpIgMrhI49QakIVMtxXESdy6qom
 1UtAMAC/Jc1npLyYYg/j8EsZ04m84HuwuCcjrQO2fqHkbBDyuCqvKa1tX
 jVj7TmzD1Uv5WgytmDT6bkx0pcMIYXFpxEc32QalGfdgZf9C44RS87bAk
 ldOcRXS7wgT0NEf+ux60/8fm95oflWqVpIpM4ooEykoUffziG4pkGwL2d
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=igrcAXJs
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



On 4/9/2025 2:08 PM, Paul Menzel wrote:
> Dear Martyna,
> 
> 
> Thank you for your patch.
> 
> Am 09.04.25 um 13:36 schrieb Martyna Szapar-Mudlaw:
>> Introduce a new ethtool statistic to ice driver, `link_down_events`,
>> to track the number of times the link transitions from up to down.
>> This counter can help diagnose issues related to link stability,
>> such as port flapping or unexpected link drops.
>>
>> The counter increments when a link-down event occurs and is exposed
>> via ethtool stats as `link_down_events.nic`.
> 
> It’d be great if you pasted an example output.

In v2 (which I just submitted) the generic ethtool statistic is used for 
this, instead of driver specific, so I guess no need to paste the 
example output now.

> 
>> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar- 
>> mudlaw@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h         | 1 +
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
>>   drivers/net/ethernet/intel/ice/ice_main.c    | 3 +++
>>   3 files changed, 5 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ 
>> ethernet/intel/ice/ice.h
>> index 7200d6042590..6304104d1900 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -621,6 +621,7 @@ struct ice_pf {
>>       u16 globr_count;    /* Global reset count */
>>       u16 empr_count;        /* EMP reset count */
>>       u16 pfr_count;        /* PF reset count */
>> +    u32 link_down_events;
> 
> Why not u16?

So now using u32 instead of u16 is more justified, as the v2 uses the 
generic ethtool stat, where this value is also u32 :)

> 
>>       u8 wol_ena : 1;        /* software state of WoL */
>>       u32 wakeup_reason;    /* last wakeup reason */
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/ 
>> net/ethernet/intel/ice/ice_ethtool.c
>> index b0805704834d..7bad0113aa88 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -137,6 +137,7 @@ static const struct ice_stats 
>> ice_gstrings_pf_stats[] = {
>>       ICE_PF_STAT("mac_remote_faults.nic", stats.mac_remote_faults),
>>       ICE_PF_STAT("fdir_sb_match.nic", stats.fd_sb_match),
>>       ICE_PF_STAT("fdir_sb_status.nic", stats.fd_sb_status),
>> +    ICE_PF_STAT("link_down_events.nic", link_down_events),
>>       ICE_PF_STAT("tx_hwtstamp_skipped", ptp.tx_hwtstamp_skipped),
>>       ICE_PF_STAT("tx_hwtstamp_timeouts", ptp.tx_hwtstamp_timeouts),
>>       ICE_PF_STAT("tx_hwtstamp_flushed", ptp.tx_hwtstamp_flushed),
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ 
>> ethernet/intel/ice/ice_main.c
>> index a03e1819e6d5..d68dd2a3f4a6 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -1144,6 +1144,9 @@ ice_link_event(struct ice_pf *pf, struct 
>> ice_port_info *pi, bool link_up,
>>       if (link_up == old_link && link_speed == old_link_speed)
>>           return 0;
>> +    if (!link_up && old_link)
>> +        pf->link_down_events++;
>> +
>>       ice_ptp_link_change(pf, link_up);
>>       if (ice_is_dcb_active(pf)) {
> 
> The diff looks good.

Thank you for the review,
Martyna
> 
> 
> Kind regards,
> 
> Paul
> 
> 

