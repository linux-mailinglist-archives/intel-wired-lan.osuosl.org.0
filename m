Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMVeL2+3z2l1zgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:49:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 122BA394376
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:49:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75D0980706;
	Fri,  3 Apr 2026 12:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ghwpQ976EvYA; Fri,  3 Apr 2026 12:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 205E880679
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775220588;
	bh=Z9meWCjtoHSbt5Tjz7OVs65mN2AiMtVBXwfA93eR8fs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=06eihjPuna5w3LyBwhLuMvxpADL8Ij2TIgYYKdA9Q1wZ1vBbxgBLKDFNHCRH85xm6
	 jyjZlJF7OrdHZLjl8l1tFdaeYcUIATI/Pr+Dpbjt0m2W4OHlLrV5OL+g43LDizERIN
	 dDKLJp/YB1kTDe5gLoIyIjPf3BZQATrIVVmL1MzlLIg5D8G4x/1f40D2Kvibd3sVSs
	 Ln/2Z9K8j+GwOZilj5V0q21Cgk3/cU3/UbRqT/VfPsgDS5/4PuXyUPZ6e9pn5DSEhk
	 CEszN5C85BxRpC+sby2JZGYyquu+Y/uPWcJ78Zom/PzMiqT/3VHweqK64pPPNJSczl
	 zfw+XE3YttsPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 205E880679;
	Fri,  3 Apr 2026 12:49:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B98E62CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F1966087A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6iLRvgmiImpL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 12:49:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10073607A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10073607A0
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10073607A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:49:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AC86242A7E;
 Fri,  3 Apr 2026 12:49:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 916F8C4CEF7;
 Fri,  3 Apr 2026 12:49:44 +0000 (UTC)
Date: Fri, 3 Apr 2026 13:49:42 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260403124942.GA103228@horms.kernel.org>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775220585;
 bh=oe1k06X8LzeLYzPSqTUn6zZwnoXsWv9v1PI95wY03zA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aOStDcoy773/nHKR3XdJisKUw/d/nD0GWcc79stsMFn2tJPJtCZRU17MdueYx1ayw
 F8bDzk9WbIS/Orv7/UcqFHwOFP9wZrKwCqAw4oIfWLy9sPF/YTODumbtdROmZzYX4o
 AtBPpX7yKh3IBwkCgbFumNBv6Z6ZVtPvRvAAsqGEla9w6Qt9CmsvLrpYrW7K/i0X5g
 XcmvSDgdRHmm4yK71zm3Gbo5WaaHJeObSwBW3abHpyS4VyMMO6EhBmPCsUNEyk96lo
 mBufMPs+HJglxHSlq1+nacLKedbPONkqztxZMgxEUW31xvqeFgUpyHGvLdB2JKM8Mz
 4Kphl5Oe/xS2w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aOStDcoy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: increase SWFW
 semaphore timeout for X550 FW updates
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,horms.kernel.org:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 122BA394376
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:30:35AM +0100, Aleksandr Loktionov wrote:
> From: Soumen Karmakar <soumen.karmakar@intel.com>
> 
> According to FW documentation, the most time-consuming part of continuous
> FW activity is Shadow RAM (SR) dump which takes up to 3.2 seconds.  For
> X550 devices, the module-update FW command can take over 4.5 s.  Increase
> the max Software/Firmware (SW/FW) semaphore wait time from the default
> 200 ms to 5 s for X550 to avoid spurious semaphore timeout failures

Should 200ms be 1s (200 x 5us) ?

> during FW update operations.
> 
> Signed-off-by: Soumen Karmakar <soumen.karmakar@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> index e67e2fe..85047ef 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
> @@ -577,6 +577,9 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
>  
>  	swmask |= swi2c_mask;
>  	fwmask |= swi2c_mask << 2;
> +	if (hw->mac.type == ixgbe_mac_X550)
> +		timeout = 1000;

I think it would be nice to centralise the initialisation of timeout,
to either it's default or device-specific value, here.

And to provide a comment indicating what the values mean in terms
of maximum delay in s or ms.

> +
>  	for (i = 0; i < timeout; i++) {
>  		/* SW NVM semaphore bit is used for access to all
>  		 * SW_FW_SYNC bits (not just NVM)
> -- 
> 2.52.0
> 
