Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9DayGEZtKWqwWgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 15:57:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9374E66A01E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 15:57:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jryriK6l;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAB1B813BA;
	Wed, 10 Jun 2026 13:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gXLfMrqb-Dit; Wed, 10 Jun 2026 13:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FEDD813C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781099843;
	bh=L5C3ussGByA9i7+3Y4M9b5bsaS5ARFq9X8h53aSoPEU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jryriK6lVgjukQEQ65QhDvcSBhbLL0ggRQ+/gxvjzU+rmqNQXllt7yIvujqf/+L/g
	 Nj5T64ztDTKxYifBsBlHD8N1ZVnzCNfGNeVfTXZC3IWsjUIdPhX85hHXt+bO6wyaUE
	 A7WvOu6NWebL5VO1hQS+KfHAiN8AjrbtjOhHBsifOhqzdj3QW1VkELIjQln6LfS9qU
	 fsuB9dXddnd1PTCfmspetbtN48/8eTRml6bX3WmwPTvdHIAR8vOcgAl7VpYfosLtn4
	 axL0uIP1jXj3IJT/q/63sR8mYkFDXEzE2riTmqas05F1QevcSoENXx9V1Y/oFlcgF9
	 G2xA44l63kKUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FEDD813C5;
	Wed, 10 Jun 2026 13:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 55B3F196
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B69A40A47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8wNtJOkVkdVS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 13:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 705A240A3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 705A240A3A
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 705A240A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:57:21 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 57EF0600AB;
 Wed, 10 Jun 2026 13:57:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D361F00893;
 Wed, 10 Jun 2026 13:57:17 +0000 (UTC)
Date: Wed, 10 Jun 2026 14:57:15 +0100
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 konstantin.ilichev@intel.com, aleksander.lobakin@intel.com
Message-ID: <20260610135715.GL3920875@horms.kernel.org>
References: <20260605120734.1462847-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605120734.1462847-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781099839;
 bh=L5C3ussGByA9i7+3Y4M9b5bsaS5ARFq9X8h53aSoPEU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=muv6aSstXmClq7TOtm27CPmIBazyJZTdkK02DTfhLUNNvL1po573EcRUqLW5cdJde
 +7Em78k9lvzqGTfIjmnG42RoS4u+ZyES7+Npz7BeCm8fLyz69F7O8u7GQcrpIIb3wj
 GukK5mt7HhZ2roOaWEyNQwRp7DVAvQWgf7z4V7vUFBb8CoJBIgorrFFKQfzeVZDNVO
 goRU0GaCiE3Aqvq6WqrL/l0rQXVOKuUAwlvZkBZdW6jqsvP5qNosxOXSk+tnnpRd+G
 zjbhyGZm9SV5lylYDRr8zhLjVpodOippCKdBIPuyvIeZBmysfirxu+2u3l6qsSRLr1
 mG7Zrqcaw6x6w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=muv6aSst
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: fall back to SBQ when
 LL PHY timer interface times out
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:konstantin.ilichev@intel.com,m:aleksander.lobakin@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9374E66A01E

On Fri, Jun 05, 2026 at 02:06:26PM +0200, Przemyslaw Korba wrote:
> The low-latency (LL) PHY timer interface relies on a tight, atomic poll
> of the PF_SB_ATQBAL register with a 2ms timeout. After an NVM update /
> EMPR, FW may need significantly longer than 2ms to start responding to
> ATQBAL commands. The first PHY adjust or incval write issued by
> ice_ptp_rebuild_owner() fails with -ETIMEDOUT.
> 
> Fix this by falling back to the existing SBQ-based PHY register write
> path when LL times out. This makes sure PTP is initialized when FW takes
> longer than expected to come back online.
> 
> Steps to reproduce:
> ./nvmupdate64e -if devlink -f
> Update E810 card with nvmupdate64e, and observe dmesg errors:
>   Failed to write PHC increment value, status -110
>   PTP reset failed, error: -110 (-ETIMEDOUT)
> 
> Fixes: ef9a64c07294 ("ice: implement low latency PHY timer updates")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v3:
> * actually add TIMEDOUT check in ice_prep_phy_adj_e810 (did do it)
> v2:
> * add TIMEDOUT check in ice_prep_phy_adj_e810 (did not do it)
> https://lore.kernel.org/intel-wired-lan/20260603114904.1297713-1-przemyslaw.korba@intel.com/
> v1:
> https://lore.kernel.org/intel-wired-lan/20260511095830.1095984-1-przemyslaw.korba@intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 38 +++++++++++----------
>  1 file changed, 20 insertions(+), 18 deletions(-)

Reviewed-by: Simon Horman <horms@kernel.org>

