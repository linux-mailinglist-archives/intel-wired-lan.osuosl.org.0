Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMeQFkOuz2kjzQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:10:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF868393F17
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 14:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6101240898;
	Fri,  3 Apr 2026 12:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p4jNDuPqHWwq; Fri,  3 Apr 2026 12:10:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9724408B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775218240;
	bh=4M0lLF72Rx17kMZW8dpyEQSCSZ9qvJVW9g03Qoue64Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cjf6Tx3plU7mK/iVo9iLODLK9UPmmbP0nzUXL/MZNFqwJ4aK8IgF35a8fa+Cl/+qL
	 Vk8aVOszJveQ7MLKTawxoLvIonOen+bRpv3LbEJ/AhAQHn6bubov9HOtDaCWaSGnuL
	 iftekn7eFJNPXu7NxmY6jh/08Mu/+wYa9SYunBz2kJw3A83lyFdg2WYoBkWAON2b7q
	 uK32Q8Lw83jEf73pW1Zv1Z0bILigxo7n6fat0vwsURM/ZmswheJEh8brvXh20D2QpU
	 ThwBC3Z3NNtAH0xBvTvwoNfg2JMmw+LNQmE1H9aJsLpq3jQvwKG/a3+saEqFec0YC6
	 dwfggGVqV5z0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9724408B4;
	Fri,  3 Apr 2026 12:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B6DF1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F189340894
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4OMvVHVZ7-uo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 12:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57CC54088E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57CC54088E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57CC54088E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 12:10:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 945CC60008;
 Fri,  3 Apr 2026 12:10:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 296CEC4CEF7;
 Fri,  3 Apr 2026 12:10:34 +0000 (UTC)
Date: Fri, 3 Apr 2026 13:10:32 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>
Message-ID: <20260403121032.GA70436@horms.kernel.org>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260327072236.129802-4-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1775218236;
 bh=u803PhasFkg/gwoHBQ6Hy62NZJQNqytt7qoNfLAq0DM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I0KJZjEU5yVWGTvfhDCi7BJ/v/xPMmTWKFTbnb6YyZkDOx3mDjp8fQxrhJMExwQ9L
 k2YQk4vnKJpvIqsi0jhhFuNoKTTH24ucKAYxKK3dW5haMCTUCIhrDFDWBdD3CDl6nP
 iEFy54ma0JwiqJ7eUqbs68CGzKL8XEt6pmvpX91Yyqb4fS3BY3S79hJ06f4sB/E/NK
 IjiOInmDqwj8VIRwI/4W9z3D0XF1EVMLN2/qE4DO7n20/rF9HCL0Fmr8oApFkGHuMu
 0MAvlgzoG3XZ4MD6xcD3aTe7cOEejGb4aCwHBOAH9AhHBnktz3Vl6G8cByvf0nB4fg
 +/Rdt4bVp1rkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=I0KJZjEU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix AQ error code
 comparison in ice_set_pauseparam()
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BF868393F17
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 08:22:35AM +0100, Aleksandr Loktionov wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> Fix unreachable code: the conditionals in ice_set_pauseparam() used
> the bitwise-AND operator suggesting aq_failures is a bitmap, but it
> is actually an enum, making the third condition logically unreachable.
> 
> Replace the if-else ladder with a switch statement.  Also move the
> aq_failures initialization to the variable declaration and remove the
> redundant zeroing from ice_set_fc().

I think that this second part feels more like a clean-up
than part of the fix. But I don't feel strongly about it.

> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
> 
>  drivers/net/ethernet/intel/ice/ice_common.c  |  1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 12 ++++++++----
>  2 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index f1a6601..6dad7d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -3883,7 +3883,6 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
>  	if (!pi || !aq_failures)
>  		return -EINVAL;

FWIIW, I think the defensive code above could also be removed at some point.

>  
> -	*aq_failures = 0;
>  	hw = pi->hw;
>  
>  	pcaps = kzalloc_obj(*pcaps);

...
