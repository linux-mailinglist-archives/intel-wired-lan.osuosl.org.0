Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LyyNPUF3mlRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:16:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFB03F7C13
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:16:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 739A461CDC;
	Tue, 14 Apr 2026 09:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xe91MbaSsvi5; Tue, 14 Apr 2026 09:16:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F41E261C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776158194;
	bh=uI0+Ba9k4EIghN0Dkl8qHIQOWdis5PGXG4J0An3GzAU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V6KAkK8qYNlNE81LvfSSCJiphEqrCfCAaJe0zvf4F9PEdgtAWnuADY4JQThEGNCZP
	 kTY+RWB/g5JsliWy0OPjFjMkyud4URL56Joc96+7OXa3mWpFZ81Pt8M05iqqavYKy8
	 5VHrwZnD19o+Qerrq/68BkQzZMTshTUVs1YUWaGNPNAc0c2Z8jGlQQHwM5+L226ciR
	 qrNSNlOPBzY8289Z/qGdxbcCSmsR7cVTJTTcc6m1JLzCEx2HUmZwTuChI28a1++8/m
	 /81MoWBeelpqX+wMRzq2/U5AkkqnKh+R2rjPBVYHqT+pAjI/nuElqbSLhbjXvRsJ+J
	 1op3dy/5+Vwqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F41E261C9C;
	Tue, 14 Apr 2026 09:16:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 374F0283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28BB284C4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHYE4tQ1-vMG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:16:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 802F884C4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 802F884C4A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 802F884C4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:16:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B75B040B06;
 Tue, 14 Apr 2026 09:16:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E78DC2BCB5;
 Tue, 14 Apr 2026 09:16:29 +0000 (UTC)
Date: Tue, 14 Apr 2026 10:16:27 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20260414091627.GX469338@kernel.org>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-5-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410074921.1254213-5-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776158190;
 bh=XdU3+uXpTQHIkDhg40fCylMNlGQWcd1ytCGfIDJGre4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NwGVb1PjURl89jj6D0za1hOgBuYJOHOhbHYJAVHRMEPiRxT7rNp/VoQL2DttNvyVV
 AzP1cQje3+dbP1GSuMYiT/qXdkSiHReAtUWQzwSz9biONaTrzE8e2VoWalqKGtfHuQ
 dlcS9GVEF4e5kSSiS9U0JZAUlz5EYr5U/8A2mmDf3CGN+yLvDj+8xi0yfQ8mzyiyMH
 J05Iy1sPTEcHKdB9MAYsIFEEsHdDryjrfntuB8YYXZaJx8awahZlsQUX/U8GvGs4lK
 1/FybHYNiGtX+zI0WbFdwICFc1lZj0OVmPrCH+lNGvZxV335gOXO0jGW9usRS1dxXz
 /6qXrLknPeprw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NwGVb1Pj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/10] ice: reorder
 ice_flash_info fields to eliminate padding
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3BFB03F7C13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 09:49:15AM +0200, Aleksandr Loktionov wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_flash_info structure has a u16 sr_words field before a u32
> flash_size value. This creates a 2-byte hole as well as 3 bytes of
> padding at the end of the structure due to the blank_nvm_mode bitfield.
> 
> Re-order the structure to place flash_size first, which gives a better
> layout and reduces padding.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
