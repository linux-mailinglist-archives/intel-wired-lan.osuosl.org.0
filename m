Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENAINWoK3mnRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:35:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8723F800B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE3D284A0D;
	Tue, 14 Apr 2026 09:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0OsiNtZjHsZ; Tue, 14 Apr 2026 09:35:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C50484A22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776159336;
	bh=Wo7X9hi1yVQa4ktkr6bzoFZkW4EeLYwM+j3dTCe5g7Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rgJtXGPXsn++hQJjL/4AMV6BKXkD+cavzY9Tir6Xn8wzSKUDTR+/rhUHgJNUjCPVu
	 AinmpSyJkG8+ZjAoPM+i9Z1QvDEPOzUG/KNv2f93ik5o1vPoDC//HgA1PLn33zJCOP
	 I7DbFlDr24Zkx7MeWSBhSIRipgt/Zv9AKk+M1lw+aXAdimSAke2RA+xWgPeBLyzush
	 u2KSimdVl3p7FU/wYY5AsxmmBQPVl3CsxnOEA3wtHcs6rBDmwcaZiAlYSyOWarLU1W
	 OEbTbpPXPGalfw9u36CF76scH9znrDmaGSBMoaK05jLx+V9VoFw1ftkWu83FOpXbMk
	 7Elg3Zcuu4cwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C50484A22;
	Tue, 14 Apr 2026 09:35:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 597B5283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B338848D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:35:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 36pyoGDVxo60 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:35:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5FAC684491
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FAC684491
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FAC684491
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:35:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D1FF84420B;
 Tue, 14 Apr 2026 09:35:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93EE2C19425;
 Tue, 14 Apr 2026 09:35:31 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:35:29 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Karen Ostrowska <karen.ostrowska@intel.com>
Message-ID: <20260414093529.GZ469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-8-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-8-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776159332;
 bh=tra6XbY2ZXS84BCeCHJ/jfRvO2OJtZrT+BiKRYt0ooc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PV77rM/F7X6Fmm7xlFaKKHRcuuPm0D3weHM7oCa1AhuovRi62+4lsgQ7uMUGvW2SV
 eUx8ByvT4Ott3FWTVPd468Hhx00qqHN2lgBVdohnuvOIRG5qUg37doeg5xLGul2kM/
 v66igD1LiVZ6Oegi2H8ronSXgilZarl0wqZeuO4ZiC31+cVm2XOpQzAAeFX0eODdbo
 OLM2TuFLXuFce/wgC5UHgMzaGiLjknhPPy58vtz51hsDMTALM4e1p97R3iYbHapLHO
 lQ1VI+4V/MhPL2LVQyAj3k0LeVzmV4MqmHJOCAz4JKtYJ0yVLGkfAEl/3xPEAWxHJc
 +G1J9m1vRj3+Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PV77rM/F
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/10] ice: emit user-visible
 info message for non-contiguous ETS TC config
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:karen.ostrowska@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4E8723F800B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:18AM +0200, Aleksandr Loktionov wrote:
> When the remote LLDP peer advertises a non-contiguous TC
> mapping the driver silently falls back to a default single-TC
> configuration. This leaves the user without any indication of
> why their DCB configuration was not honoured.
> 
> Print an informational message at the entry of
> ice_dcb_noncontig_cfg() so the user knows ETS with
> non-contiguous TCs is not supported and that the driver
> has fallen back to defaults.
> 
> Suggested-by: Karen Ostrowska <karen.ostrowska@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c..1c53b09 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -712,6 +712,8 @@ static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
>  	struct device *dev = ice_pf_to_dev(pf);
>  	int ret;
>  
> +	dev_info(dev, "Non-contiguous ETS TC config not supported, falling back to default single TC\n");

Sashiko points out that this seems to be controlled by user input.
If so, it should probably be rate limited.

> +
>  	/* Configure SW DCB default with ETS non-willing */
>  	ret = ice_dcb_sw_dflt_cfg(pf, false, true);
>  	if (ret) {
> -- 
> 2.52.0
> 
