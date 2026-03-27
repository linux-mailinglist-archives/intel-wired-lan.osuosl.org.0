Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cF5VHZ9XxmmMIwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 11:10:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D13423A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 11:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0657C612A7;
	Fri, 27 Mar 2026 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDXFZxllhS_1; Fri, 27 Mar 2026 10:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A3D26129C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774606236;
	bh=J5ZWrvbEeJCofrbrGmOSHLWyHltr+KXby4i2bFEGsAo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HUAPbjVizzgyuGXtO6u0hLSnJjKMHK2m+JHtbX1pyb6UENSwRmHM9rSQC/QGIh77P
	 g8DJQWwSuwGaVc78hcHjnyxF2h5EQwvzn3Lpiisfu36A4N70AVY5YLzFU0nQA5iyf0
	 edyxpyGXD8V9Dy/6Npr/lSQ8k1Xx3ClLGDlvTDwnqofQpi9v5cMfHchl/izCrwkRu5
	 oXzqumJcGC3odmvw1M3eVmfZYujV48/EIA8BhHpmAiGsy9Y06Z9ELtrsHccRoldFeR
	 9UTB5/rNx1s/fxYA36wqwfvKJAiJXHNz4gziQVkVvEglruxoJos7rYZ0uniMKqz6AE
	 CvRoBOglfK9ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A3D26129C;
	Fri, 27 Mar 2026 10:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 67B071D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 10:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5945583B86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 10:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9OLGsRM0XLE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 10:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B5D1683B7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5D1683B7C
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5D1683B7C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 10:10:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3BD1440891;
 Fri, 27 Mar 2026 10:10:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23853C19423;
 Fri, 27 Mar 2026 10:10:31 +0000 (UTC)
Date: Fri, 27 Mar 2026 10:10:29 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260327101029.GE111839@horms.kernel.org>
References: <20260320051455.427282-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320051455.427282-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774606233;
 bh=5qndRQUCI/S9WQE+YEGeO8WuGVF0l+SDDd3ePJMUvaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TiNOaueVhRQAZ6rHjt5rniIZci+Y9tuafAn2G7tnO+PH2B0H0y2HnjYJYvnaBMDzk
 jXNgoxevO/SeLCkmr4h76WC1tsBSorb/MdwX8tsp6lsuQw79VreKhmFwhM7/H/y4oO
 +ClCibO8ouNO+RhmD1oKItLzAxxnS83qAN4/WYgTHnwfi0Uut0PqsskDnyuKBdXLRz
 pHKCBACaHdiGXl5uQxlOg0Ryjh/gW6cmnqHWoO2FgUhpVh/ibLtzZGNI8bQ1zPlOjU
 hgPu6QsJjk9Py/jvkT65Br44yXF3XDSHoitKQpNzr0g71dIvgbtRqWu8TSEppGRGKT
 BdJ2mnXgh9gsg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TiNOaueV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: fix eeprom_id
 staleness and non-fatal EMPR reload failure
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 789D13423A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:14:54AM +0100, Aleksandr Loktionov wrote:
> Three related bugs around FW version reporting after EMPR reset on E610:
> 
> 1. ixgbe_refresh_fw_version() silently discarded the error return from
>    ixgbe_get_flash_data(), so a failed NVM re-read left adapter->eeprom_id
>    with whatever stale data it held before the reset.  Propagate the error
>    and set eeprom_id to "unknown" on failure so that ethtool -i and
>    devlink dev info never show a version that no longer reflects reality.
> 
> 2. ixgbe_devlink_reload_empr_finish() returned 0 without ever refreshing
>    the FW version after the EMPR completed.  Add the refresh call, but
>    treat it as best-effort: a failure to re-read flash does not mean the
>    EMPR itself failed.  Log a netdev_warn() and return 0 so devlink
>    reports the correct reload outcome.
> 
> 3. ixgbe_reinit_locked() never refreshed the FW version for E610.
>    Because E610 has no FW event that notifies peer PFs when an EMPR
>    triggered by another PF's devlink reload completes, any PF that
>    subsequently goes through reinit would keep stale data in hw->flash
>    and adapter->eeprom_id.  Add the same best-effort refresh here,
>    gated on ixgbe_mac_e610, with a netdev_warn() on failure.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 56aabaa..40d593b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -1155,12 +1155,30 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
>  	return ret_val;
>  }
>  
> -void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
> +/**
> + * ixgbe_refresh_fw_version - re-read flash data and update eeprom_id cache
> + * @adapter: board private structure
> + *
> + * Re-reads the NVM/flash and refreshes the cached adapter->eeprom_id string.
> + * On failure the cache is set to "unknown" so that ethtool -i never shows a
> + * stale version string after a failed reset.
> + *
> + * Return: 0 on success, negative error code on failure.
> + */
> +int ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
>  {
>  	struct ixgbe_hw *hw = &adapter->hw;
> +	int err;
> +
> +	err = ixgbe_get_flash_data(hw);
> +	if (err) {
> +		strscpy(adapter->eeprom_id, "unknown",
> +			sizeof(adapter->eeprom_id));

nit: I think you can omit the size argument to strscpy
     because eeprom_id is an array.

> +		return err;
> +	}
>  
> -	ixgbe_get_flash_data(hw);
>  	ixgbe_set_fw_version_e610(adapter);
> +	return 0;
>  }
>  
>  static void ixgbe_get_drvinfo(struct net_device *netdev,

...
