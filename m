Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAqzMLp7/GkwQgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 13:47:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B01C4E7B14
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 13:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBB8D410FD;
	Thu,  7 May 2026 11:47:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZvTT3D0fJRfp; Thu,  7 May 2026 11:47:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 311AC410FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778154424;
	bh=CacD8KaM9P+gf5/RAVfp4kYH7Dy5TsiuDs/z8ccvcf8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ApbAkc8nTm8Fl66WxptoDQGJdC3MS1U+z0ej0Y/TEXD1D0Ok4XV9GQDNT8DV4THvQ
	 dz16Eushc/h4BDzumUDUVtYlA18i+SC95FH9ugzb2iW98RKph4mVmp5aWiWsxl6xws
	 1MDfH506uJehRoAC/uw0oEuK1OP1pCPpTgTPwcXv+hyD/pLg8QiB6DnPKd6nmuhrCw
	 NNBcRfDFP0zGsyDfb2dYmLXLtjjTyVZb4LAla4kA7WEIO5hGHqLwFq+drUFajlt3Cb
	 6arZmhp/1v27WTonEp9H0jrMTNInqhrXUSFmMSKhuGHAwFI/lOzeVJSrxj8ZxPzLmB
	 TLY/nm4tlbt8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 311AC410FB;
	Thu,  7 May 2026 11:47:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4219D11B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 11:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33F20407A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 11:47:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlUqzz5tGx2L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 11:47:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4752B40798
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4752B40798
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4752B40798
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 11:47:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0160843F45;
 Thu,  7 May 2026 11:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8E2FC2BCC7;
 Thu,  7 May 2026 11:47:00 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Thu,  7 May 2026 12:46:54 +0100
Message-ID: <20260507114654.916528-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260504142451.4161845-6-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778154421;
 bh=h3EAL/S01YS8fybSqcWD1qgy/RTvjx3UPUp6EuoYrGg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AxDvMBSR+KTVU1wY7BS+di8mIKjFNZru+csLiT0ysg0yGADHxFtdeA7CuPOmKoLLo
 6fXBWGJKD4IpvUZWC8WWNamvfglBJG27bdFHeng9mLttN2ESB5nvTWdtwihqJIYH+P
 xyRRNc0hmAysyI8Jy75wPwKVZqBAn67IPGQyDlBic1a4Q1cVbxPJK9Lw4Ktnu0uSCG
 9BgSEaZ7XcFy2ku0TIUU5kqTD4eHO06nb8z9EOMagvsgqG7dP0Er2deoOgHxBV3mxL
 BG/bCxf5osAiRtzWJaaiysuMGSXN0H2P4ZvjCmtSKTheLJYJJdJ4m6QPgv8Gp1vG9G
 guUCimo/JV6EA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AxDvMBSR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: use
 element-by-element comparison for DCB config changes
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
X-Rspamd-Queue-Id: 4B01C4E7B14
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,sashiko.dev:url];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
Subject: ice: use element-by-element comparison for DCB config changes

This commit replaces the use of memcmp() for DCB configurations with an
element-by-element comparison using ice_dcb_need_recfg(). It exports this
function and applies it to the SW DCB netlink setters to prevent issues
with uninitialized padding bytes.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> index a10c1c8d86977..13a52c1a4da3e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
> @@ -108,11 +108,17 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
>  	if (!bwrec)
>  		new_cfg->etsrec.tcbwtable[0] = 100;
>  
> +	if (!ice_dcb_need_recfg(pf, &pf->hw.port_info->qos_cfg.local_dcbx_cfg,
> +				new_cfg)) {
> +		err = ICE_DCB_NO_HW_CHG;
> +		goto ets_out;
> +	}

Does ice_dcb_need_recfg() correctly detect bandwidth changes?

Looking at the implementation of ice_dcb_need_recfg(), it only logs a debug
message but doesn't set need_reconfig to true when only the ETS Bandwidth
Table or TSA Table changes:

drivers/net/ethernet/intel/ice/ice_dcb_lib.c:ice_dcb_need_recfg() {
    ...
    if (memcmp(&new_cfg->etscfg.tcbwtable,
               &old_cfg->etscfg.tcbwtable,
               sizeof(new_cfg->etscfg.tcbwtable)))
        dev_dbg(dev, "ETS TC BW Table changed.\n");
    ...
}

Since the function returns false, will this cause ice_dcbnl_setets() to
abort early and silently drop user-requested bandwidth modifications?

Also, since new_cfg points to the shared desired_dcbx_cfg state, does this
early return leave uncommitted modifications in the software state?

If a subsequent unrelated operation (like setting PFC) correctly returns
true from ice_dcb_need_recfg(), it appears it could unintentionally push
these abandoned ETS bandwidth changes to the hardware.

>  	err = ice_pf_dcb_cfg(pf, new_cfg, true);
>  	/* return of zero indicates new cfg applied */
> -	if (err == ICE_DCB_HW_CHG_RST)
> +	if (!err)
>  		ice_dcbnl_devreset(netdev);

This isn't a bug introduced by this patch, but can ice_dcbnl_devreset()
cause a deadlock against hardware reset tasks?

The ice_dcbnl_devreset() function spins in a usleep_range() loop while
ice_is_reset_in_progress() is true.

Since DCBNL callbacks like ice_dcbnl_setets() run with the global
rtnl_lock held, and a concurrent hardware or PCIe reset worker likely
requires rtnl_lock to complete the reset, will the reset task block
forever while this thread waits for it?

> -	if (err == ICE_DCB_NO_HW_CHG)
> +	else if (err == ICE_DCB_NO_HW_CHG)
>  		err = ICE_DCB_HW_CHG_RST;
>  
>  ets_out:

Does this change cause the function to return a positive error code to
userspace when applying an identical configuration?

By bypassing the translation from ICE_DCB_NO_HW_CHG (which is 1) to
ICE_DCB_HW_CHG_RST (which evaluates to 0) in the early goto added
above, err remains 1 at the ets_out label.

The DCBNL core evaluates any non-zero return value as an error:

net/dcb/dcbnl.c:dcbnl_ieee_set() {
    ...
    err = netdev->dcbnl_ops->ieee_setets(netdev, ets);
    if (err)
        goto err;
    ...
}

Will this cause tools like lldptool to fail when configuring an
existing setup?

[ ... ]

> @@ -845,6 +858,12 @@ static int ice_dcbnl_setapp(struct net_device *netdev, struct dcb_app *app)
>  	new_cfg->dscp_map[app->protocol] = app->priority;
>  	new_cfg->app[new_cfg->numapps++] = new_app;

This isn't a bug introduced by this patch, but does this array append
lack bounds checking against ICE_DCBX_MAX_APPS?

The app array has a capacity of 64. The function restricts duplicate
DSCP protocols using the dscp_mapped bitmap, but since DSCP_MAX is also
64, a user could map all 64 unique values.

If numapps starts greater than 0 due to existing EtherType applications,
adding 64 valid DSCP mappings would cause numapps to exceed 64, leading
to an out-of-bounds write that overwrites the adjacent dscp_mapped
bitmap.
