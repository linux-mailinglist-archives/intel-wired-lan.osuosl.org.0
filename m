Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sO5wBEW0z2l1zgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:36:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5241739413A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:36:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB17881D02;
	Fri,  3 Apr 2026 12:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y1uB08snzIOE; Fri,  3 Apr 2026 12:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B04581A24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775219778;
	bh=YlOAEnxmWey3zMEXdf4zo45bQ3PlMhwKJrJpYB2VACg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RGf1JG1+9PJ4jB6Cn/PQ9Ye7APGsWNcf3iyd7thlgMdEi7VPlgiiREcUzz1K52AO4
	 wpfEX+9RpBiUrTjesv5vFbGUzkEPA+Ji/6M/Bxiya9vu+fnnDlYRDJ93gAXgg2tFZl
	 YD0+AFnrB8/+rRZVi1MiMpCu725+PoIBKjMlOGUu2ZPycv4pyTahs/c/H7jxmftB/i
	 VYMIoU6FlZdUvHkLrCOFNMLPBAdd1lxOnCBg3DVpAZfJjABhSDF0oiNzAApHeUqwjY
	 FxHpF4l36t47FVTFgdw4OM3e54AtiGlVF1aQfjUDWmP+3ZOmM83OlZVSiKZdSU9vXw
	 5bPwQAruDEOQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B04581A24;
	Fri,  3 Apr 2026 12:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C80D1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81BDD402C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vvr1mNC4BoH1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 12:36:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3BCF4003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3BCF4003D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3BCF4003D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:36:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 85EDF60008;
 Fri,  3 Apr 2026 12:36:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A906C4CEF7;
 Fri,  3 Apr 2026 12:36:12 +0000 (UTC)
Date: Fri, 3 Apr 2026 13:36:10 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20260403123610.GA91152@horms.kernel.org>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327072332.130320-6-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775219774;
 bh=X3XVpXyP4g3ARDUOTgtbvLWtHKjdFa8Ji90GBFFPHS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RqkxR+niEw/K2ZktPoTMpDJxHXjTOS1E4NhnA3p429igntuDxFv3gArIp7hY/PALd
 gtRouYYIt4y742sZPhm2YLrGCoOEeW54NPkpjMZgiCnBadEBsp5utM6BU9825rjkvn
 7kmytAB7cE8AQ8jaAI/jPDE6y/kFjit98R0cLR7NPNf0yOdMKruoyPZMzBAJorarRG
 x8yPCfxuw0vZyam/Jcjlzyp3RzpGc5ZQXqTj5gPEDD/3AWeYS2dwhhn1+zMudoNXAa
 f11JkindJBGikiaxsmdnAOunc2tU/mHK2XvPP9N2N75ikUj7Ux3k+P5+c2y/f4tUZZ
 DumM2behqkUyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RqkxR+ni
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix ice_init_link() error
 return preventing probe
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,horms.kernel.org:mid,intel.com:email];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5241739413A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:23:29AM +0100, Aleksandr Loktionov wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> ice_init_link() can return an error status from ice_update_link_info()
> or ice_init_phy_user_cfg(), causing probe to fail.
> 
> An incorrect NVM update procedure can result in link/PHY errors, and
> the recommended resolution is to update the NVM using the correct
> procedure. If the driver fails probe due to link errors, the user
> cannot update the NVM to recover. The link/PHY errors logged are
> non-fatal: they are already annotated as 'not a fatal error if this
> fails'.
> 
> Since none of the errors inside ice_init_link() should prevent probe
> from completing, convert it to void and remove the error check in the
> caller. All failures are already logged; callers have no meaningful
> recovery path for link init errors.
> 
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Cc: stable@vger.kernel.org
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

The nit below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
> 
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c

...

> @@ -5043,9 +5039,7 @@ static int ice_init(struct ice_pf *pf)
>  
>  	ice_init_wakeup(pf);
>  
> -	err = ice_init_link(pf);
> -	if (err)
> -		goto err_init_link;

I think now would be a good time to rename the err_init_link label,
after what it does, rather than where it is (no longer) jumped from.
And perhaps others in this function too

> +	ice_init_link(pf);
>  
>  	err = ice_send_version(pf);
>  	if (err)
> -- 
> 2.52.0
> 
