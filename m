Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPUtJfQWEGrhTQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 10:42:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0335B0B20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2026 10:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99C92429D5;
	Fri, 22 May 2026 08:42:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYkkr4Jlx7qQ; Fri, 22 May 2026 08:42:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CA6742A1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779439346;
	bh=K7woSUmQ1qkgC+Tygx9BmDg4D+1VwHe1oVWIu66eemk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Q0gcDOCgOEGMSC6R8jvOUNRSciK8jZBLTCdPvN2eamSjXRb4tGpP+TThuB+hUwt4
	 BNSgzJ4dUUlOlT54wHDzUd4wjAyBuRwqfBjxQcMt1fi4NHXgRkwB1kemYnz/leBbPv
	 wEPJByfaJBR9Egw1FKWvU2lqgMUteumr/kIaH3bB1LzMPiexiypPmMASo4TwRbKRgL
	 5HFFbBQZ3+h8WITUebw2wsRyqhsIEXSa/DpESAa5J/aTcLfwa4jomg8IqvXvWBTmGT
	 e5rE+ze8fU6SdwC362yKze0dmEHKO908yF0SkutuborOHSEt5o0MTGMABxdyucSf4p
	 AIeSOUmQt4/WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CA6742A1F;
	Fri, 22 May 2026 08:42:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DE75282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C36F85354
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kor4NQAfr0Pq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2026 08:42:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88D7985348
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88D7985348
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88D7985348
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2026 08:42:23 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 86BD860136;
 Fri, 22 May 2026 08:42:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFE0B1F00A3D;
 Fri, 22 May 2026 08:42:20 +0000 (UTC)
Date: Fri, 22 May 2026 09:42:18 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20260522084218.GI1506108@horms.kernel.org>
References: <20260519112041.125907-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260519112041.125907-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779439342;
 bh=K7woSUmQ1qkgC+Tygx9BmDg4D+1VwHe1oVWIu66eemk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=H1pcDjLXoDj9p0ctuglQNc0j5WKtVAOIoP8JQgQpG1Qyf2908+BSlKXg5wzvgz4Kd
 tgI8oC+O4A2OhdOb8ngwhYn5ExTRbqrbJTZEHayTbR9La6o7DsM3LPeizCDGbNiQyM
 FUZ8dq6hTIBfkKd5Xo7AZu9BZLKfUcqDSWFeHmdupFaLuLC5HTEdnxYaTOxiF9ZDAh
 JMb9HR0evoPSoX+CQ7Si+jJm4G6itYMZAQrxqEiOT9YRtRuzgkPnYz83ACe0ruJatd
 GIyH2PF2n93RGPKNCVWuR6ovZQ47KHYUOV3gZvG6J9AGxxdff8rh+v/WUUbn5fR/rT
 0eKUkjsFZ+qlQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=H1pcDjLX
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix LAG recipe to
 profile association
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,m:david.m.ertman@intel.com,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1A0335B0B20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 01:20:41PM +0200, Marcin Szycik wrote:
> ice_init_lag() associates recipes to profiles, assuming that Link
> Aggregation-related profiles will always have profile ID lower than 70
> (ICE_PROFID_IPV6_GTPU_IPV6_TCP_INNER). This value seems arbitrary and
> might not always be valid for some versions of DDP package, i.e. LAG
> profiles may have profile ID greater than 70. This would lead to
> misconfigured switch and LAG not working properly.
> 
> Fix it by checking up to maximum profile ID.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

I notice that there is an AI review of this patch available on sashiko.dev.
However, I believe that flags a pre-existing problem that is orthogonal to
this patch. o I do no think that review should block progress of this
patch but rather be looked at in the context of possible follow-up.
