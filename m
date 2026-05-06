Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEW9JSIT+2lLWQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 12:08:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FA94D920A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 12:08:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E90160E05;
	Wed,  6 May 2026 10:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XLxZQJgxLSiK; Wed,  6 May 2026 10:08:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7DED60E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778062110;
	bh=lipFN5438ALO293y32dqU/+lxmnbSERj1pUvgIbJ2K8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V0rl7XEzfBSflaQ4lIe0gBJUnNC1eslZXPE/sNZxBdoq+BodxDJ3cvX5IIVGSHNw0
	 IBoKsSuaYNomD9epbpDxdTFj1aY0vDKe/xOFVfOMkoGs/SMI7Rm0bCokxVsLZ/3n01
	 tU1j+rwiQrnKzpPeOCd2S8K1/Svj6qU09klWdCku0JapeOQj9lx4Rv/nxaCZ9Mk37l
	 FbTBa09qxHhYmvUUjgWs7F8qGf+Bhp2iv3DhwZwlZVVD4yUJQtwEURqoG/BUmgbZ3N
	 WjEEsAaBgMGQi/TGNDu1ovfFuKMxvp1bovw0NWfX5n+6kFkvz/kZ0qD4YU/hF/LlK0
	 hcE0Fz6ZKvHWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7DED60E07;
	Wed,  6 May 2026 10:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7843C317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 10:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69D5940565
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 10:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id abIckK_jZC4M for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 10:08:27 +0000 (UTC)
X-Greylist: delayed 534 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 May 2026 10:08:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 106EB40186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 106EB40186
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=188.68.63.174;
 helo=relay.yourmailgateway.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [188.68.63.174])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 106EB40186
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 10:08:26 +0000 (UTC)
Received: from mors-relay8204.netcup.net (localhost [127.0.0.1])
 by mors-relay8204.netcup.net (Postfix) with ESMTPS id 4g9W7k45rJz8h4g;
 Wed,  6 May 2026 09:59:30 +0000 (UTC)
Received: from policy01-mors.netcup.net (unknown [46.38.225.35])
 by mors-relay8204.netcup.net (Postfix) with ESMTPS id 4g9W7k3Mlcz8h3k;
 Wed,  6 May 2026 09:59:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at policy01-mors.netcup.net
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by policy01-mors.netcup.net (Postfix) with ESMTPS id 4g9W7h67kWz8tdd;
 Wed,  6 May 2026 11:59:28 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown
 [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
 by mxe9fb.netcup.net (Postfix) with ESMTPSA id B7BE163304;
 Wed,  6 May 2026 11:59:27 +0200 (CEST)
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
Date: Wed, 6 May 2026 11:59:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, anthony.l.nguyen@intel.com,
 Linux kernel regressions list <regressions@lists.linux.dev>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
X-Enigmail-Draft-Status: N11222
Autocrypt: addr=linux@leemhuis.info; keydata=
 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 MEK4
In-Reply-To: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: <177806156804.3824900.17782720002740269364@mxe9fb.netcup.net>
X-NC-CID: Uy9H2qVS4/FdlR3f+QTKW4KxsXW9ZrkWgITiz/w6KRL/37KKqW4=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=leemhuis.info; s=key2; t=1778061570;
 bh=iis9Zd0SBict4Bak0auwTAhx2IKRF+3FvzhaufxAPBU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=jS9k94FQElD3vAt9MHNt/7BYg80cUeOT2mQSrTVG+CXbrWrFNF99owS01i/uATM0K
 QlRKCIGcyYxUCmrqE84uh3Xr4vf6yxuHHAhVXODUJ2S/ZKcWMh3ZjxoqYchjD4G8Tj
 90F1Jd55a/P0rLBPsJe/o1oCI4K3u22uBMxljClq5qTBSU0rQci7SCZX3qseQZpTez
 xpnD8GW8kjgZlppE3gZBIcqKAgIjTyBl6lBrcobBeol4e6FMgv5u+X88eNFejtlytX
 j5E4w9g8FoZjgPD9RF6sQtMbFipnYJqdPo2tfIHCYry8CpSxntnHCxPS2PrktzV04I
 xtsK0eOsDknbg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=key2 header.b=jS9k94FQ
X-Mailman-Original-Authentication-Results: mxe9fb;
 spf=pass (sender IP is 2a02:8108:8984:1d00:a0cf:1912:4be:477f)
 smtp.mailfrom=regressions@leemhuis.info
 smtp.helo=[IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f]
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Queue-Id: 90FA94D920A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:regressions@lists.linux.dev,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[leemhuis.info:mid,intel.com:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[leemhuis.info];
	FORGED_SENDER(0.00)[regressions@leemhuis.info,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[regressions@leemhuis.info,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[11]

On 4/17/26 12:43, Dima Ruinskiy wrote:
> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> disabled K1 by default on Meteor Lake and newer systems due to packet
> loss observed on various platforms. However, disabling K1 caused an
> increase in power consumption.
> 
> To mitigate this, reconfigure the PLL clock gate value so that K1 can
> remain enabled without incurring the additional power consumption.
> Re-enable K1 by default, but keep the private flag to support disabling
> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
> be disabled by default on known problematic systems. Currently, this
> includes the Dell Pro 16 Plus, where the issue has been reported to persist
> despite the changes to the PLL lock timeout.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html

What happened to this fix for a regression first reported in January? It
looks like it fell through the cracks. Or was some other solution found?

Ciao, Thorsten

> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Co-developed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
> ---
> v3: add DMI quirk
> v2: add comment for the PLL timeout value and revisit the commit message
> v1: initial version
> ---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c |  3 +++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 15 ++++++++++++++-
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index dea208db1be5..aa90e0ce8aca 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1594,6 +1594,9 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>  			phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
>  			if (speed == SPEED_100 || speed == SPEED_10)
>  				phy_reg |= 0x3E8;
> +			else if (hw->mac.type == e1000_pch_mtp ||
> +				 hw->mac.type == e1000_pch_ptp)
> +				phy_reg |= 0x1D5;
>  			else
>  				phy_reg |= 0xFA;
>  			e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG, phy_reg);
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 4d553c6edd98..a7605e453382 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -25,6 +25,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/prefetch.h>
>  #include <linux/suspend.h>
> +#include <linux/dmi.h>
>  
>  #include "e1000.h"
>  #define CREATE_TRACE_POINTS
> @@ -58,6 +59,17 @@ static const struct e1000_info *e1000_info_tbl[] = {
>  	[board_pch_ptp]		= &e1000_pch_ptp_info,
>  };
>  
> +static const struct dmi_system_id disable_k1_list[] = {
> +	{
> +		.ident = "Dell Pro 16 Plus PB16250",
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_NAME, "Dell Pro 16 Plus PB16250"),
> +		},
> +	},
> +	{}
> +};
> +
>  struct e1000_reg_info {
>  	u32 ofs;
>  	char *name;
> @@ -7748,7 +7760,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* init PTP hardware clock */
>  	e1000e_ptp_init(adapter);
>  
> -	if (hw->mac.type >= e1000_pch_mtp)
> +	/* disable K1 by default on known problematic systems */
> +	if (hw->mac.type >= e1000_pch_mtp && dmi_check_system(disable_k1_list))
>  		adapter->flags2 |= FLAG2_DISABLE_K1;
>  
>  	/* reset the hardware with the new settings */

