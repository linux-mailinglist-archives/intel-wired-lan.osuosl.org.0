Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHDIM4Yfg2nWhwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 11:29:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9E9E4802
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 11:29:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BA8A409EA;
	Wed,  4 Feb 2026 10:29:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjnpc8FhtYUU; Wed,  4 Feb 2026 10:29:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A088340C70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770200963;
	bh=aN2kTSCr81lbpCWNa+GFXaOU+WShYskB6HepBfEyZOU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rswXvHVPZfLNyfPD8SUhlqog6oG2zq1zjvcJvBxgiXRp36bQG8GORUtmQliF28HIf
	 qF7NVELMyAK6CjLQwvlE+tX2UgFRsbOmS4yYWbX32Iqw9VszhIw2L1qUoyL/lcjEVH
	 j3/ir4x0rITtm7E//sKTB7rOKu74Za1UG3N0pWipIYQJkslOwXAjh7zJQab6V/sMfK
	 CwAlIIxwUD+z9RMsbUuYYuMDoUv1nA4xa2RYbLtKT2LIip/ariXMTvF5qgxVf4umAR
	 m0aggJXCD7ZZOut6KdBIDMHn86cRr5rR+dDsnOmM5byKQAEAy/cppqjk+N/4lPkYdC
	 nQdusQUs85Wjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A088340C70;
	Wed,  4 Feb 2026 10:29:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75BD2F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62EFB60A80
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HOvT4xMO42Iv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 10:29:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BD13B60A6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD13B60A6F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD13B60A6F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 96035600C3;
 Wed,  4 Feb 2026 10:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4E43C16AAE;
 Wed,  4 Feb 2026 10:29:17 +0000 (UTC)
Date: Wed, 4 Feb 2026 10:29:15 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, kohei.enju@gmail.com
Message-ID: <aYMfeyYpFJ87TOlF@horms.kernel.org>
References: <20260131163037.88108-1-kohei@enjuk.jp>
 <20260131163037.88108-2-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260131163037.88108-2-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770200960;
 bh=kJqMcwbZsco3DykrcuTlzy0g2zNDqIBy9W4bsxhrGfA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ugzf1akZClvEEwvzlAn2Y8+gS19oFDpMqRFCjokvnJ4Fzcw6X3zHRiNi3cwZD3sbW
 9Vxw7ROSMikEapXdvH2sYuyA6ptV6DGnz17oKo4OpihVIfXi097baVtxQDqJqqrk4V
 0cARHfxWayRwU4YI4wdIn7JHPbTKravtxtjSfqp2VCRpFoUTbw60qMRbYN/vk051BD
 sfQ62epSGXvDJ2tp5g3+hGVdU0e3CeIdpGkXCJ8FkMpSXxSBnjTTf6NvyEiGe0obFq
 nSFvBICxUSRnUKzzI1S3XkDAg6JGkHVDfItOWSrUu2gz8+wDdEGaNZgYoNWXmDf2WC
 t2UoMBUTwP5jg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ugzf1akZ
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS
 key get/set support
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:vitaly.lifshits@intel.com,m:aleksandr.loktionov@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1E9E9E4802
X-Rspamd-Action: no action

On Sat, Jan 31, 2026 at 04:29:36PM +0000, Kohei Enju wrote:
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
> 
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this patch.
> 
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>

Reviewed-by: Simon Horman <horms@kernel.org>

