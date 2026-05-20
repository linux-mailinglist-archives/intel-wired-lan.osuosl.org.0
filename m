Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFXoMpX/DWpV5QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 20:38:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEB2596D25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 20:38:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DA0A4144E;
	Wed, 20 May 2026 18:38:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ypbeGCRIag2s; Wed, 20 May 2026 18:38:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63A6E41453
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779302289;
	bh=Vli160Be25ufAg5UH9YxzHJ/rgEgzlQQ8hmf32U8RDI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fm2PaSq7yZ2nZyHa5Ilq9Bw2EpEi1578zV/ymfnwcNvWEE9WNLM9kAU+BK+H9iGwB
	 E3QIZYwFv9XUCKOjqXTOwef8NpjdSl1jnpcEFt0NL1XwC/VK4ec6ZXfvEPFc4KAjSb
	 vjr6iYsKh49SJpAlOZQlq9aR+EWkJ0DeX1+zsgn/rmZTVnFfM4eF0NlimvlSX5Suop
	 xl7p9PmTnMSydPBPsK6evFOzdfs3toKwCBOefo3OsW0gzUbJsAQmSzfFrlToFNqZjp
	 ZQYcS9fM+3SCwUfEzjgkXvXOAeZmHSY7cvYRn4DeTlRNAPhMws8SmNP+6dnyGN3lhY
	 0vEjJ96p300cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63A6E41453;
	Wed, 20 May 2026 18:38:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 40F46265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3268240CA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:38:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fpseA7iGd-hu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 18:38:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7806540CA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7806540CA4
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7806540CA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 18:38:06 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id D815B4388F;
 Wed, 20 May 2026 18:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25D661F000E9;
 Wed, 20 May 2026 18:38:03 +0000 (UTC)
Date: Wed, 20 May 2026 19:38:01 +0100
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, arkadiusz.kubalewski@intel.com
Message-ID: <20260520183801.GE988238@horms.kernel.org>
References: <20260520115213.10864-2-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260520115213.10864-2-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779302285;
 bh=Vli160Be25ufAg5UH9YxzHJ/rgEgzlQQ8hmf32U8RDI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=oPy9Gp62SyYkWC9q0Pwf85qOMAwbN/7sf54xlrfeKS+OI32FRNd2lllcORwt35a1o
 qzdB3Le0JFXjqfMBrhuZ97JU5avCMKa+K287iMNzRZEzgFKvi1V8lkqC3BT+ODgqlF
 mDjzpe3Ts9qU7WtysPE8G/6dLi/DqV7OLXxYNz/VrbxHC+QItZUhC5neBwxswCAZcC
 3dUbtQ4hhaivh7OwosRe/zoqxoeTgXf6KxwGiCYQhKzS0k0U/OB5hnUmGvIAD1446P
 Y3/M+UDIdYre6x1qW5nSDZHsrExexnJXP+BBnqHubQTVfJA/P2xC6jYchmveLSB7rB
 z6SKBWLsaoNEQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=oPy9Gp62
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: suppress DPLL errors
 during reset recovery
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4DEB2596D25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 01:50:06PM +0200, Przemyslaw Korba wrote:
> During reset recovery, the admin queue returns EBUSY which is expected
> behavior. However, the DPLL subsystem was logging these as errors and
> incrementing the error counter, potentially leading to unnecessary
> warnings and even disabling the DPLL periodic worker if the threshold
> was reached.
> 
> Suppress error logging and error counter increments when the admin
> queue returns EBUSY, as this is expected during reset recovery and
> not a real failure condition.
> 
> test case:
> - ethtool --reset eth3 irq-shared dma-shared filter-shared offload-shared
> mac-shared phy-shared ram-shared
> - observe if dmesg EBUSY errors are gone
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> add missing EBUSY check in ice_dpll_pps_update_phase_offsets()
> v1:
> https://lore.kernel.org/intel-wired-lan/20260520105311.5336-1-przemyslaw.korba@intel.com/T/#u

Thanks for the update.
