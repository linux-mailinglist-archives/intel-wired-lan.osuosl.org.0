Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDZhM2qnvWkAAAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 21:00:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 483442E0AA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 21:00:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D798A84622;
	Fri, 20 Mar 2026 20:00:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2TofF6f-QOl; Fri, 20 Mar 2026 20:00:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58B7B84642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774036840;
	bh=/xcbJwWiwt+RR8WnyeM36LjaWeiYPa9qk2fZHq+pxqM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FbmHsM8zjAO5x9H3NTZFWTWii0BAk+5hQKamgix1doLHKekjZQpM0Ndh9yPR9NnMm
	 OfASDv1Sp869Y0rl7KNKoSusD/m9dWi90CW+tl9TRzcRQT48B31L/jfYEMgEE7XZfU
	 ll2xXka9W37S6pcPs8mNYGE3tTl6/jkpgeLlY/4wbfVaxFcnwHF2CHLLPvVXVtV9zU
	 Yo7wZMYMeU9WfV1RQOK2wtMCZCqCh/MqoXsvnghao/Uu6UbciMbVfZkGGxeqnzV8Rk
	 ACU5giBTRtyitpxROaMs9il/wccDvf4ekGxoPNc+T+Yvqgp8I8uM8xPVZ4OdmVnCDv
	 iFbb9BdvUCaQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58B7B84642;
	Fri, 20 Mar 2026 20:00:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA49B25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 20:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B5EF40693
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 20:00:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kqlmZxdq4oNG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 20:00:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E83D1400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E83D1400AE
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E83D1400AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 20:00:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id AA58160128;
 Fri, 20 Mar 2026 20:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16507C4CEF7;
 Fri, 20 Mar 2026 20:00:34 +0000 (UTC)
Date: Fri, 20 Mar 2026 20:00:32 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Message-ID: <20260320200032.GM74886@horms.kernel.org>
References: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774036836;
 bh=7RWcsTU2360ka8mJ0tGJAWGE66My1KMl+jpt2ccA72c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jLA/Z9cFRVCNKBAonUR//Mbeb74tF+SBIDFDw39IgBxMUhtdwsFWunm/r2YWVexV4
 o/8Nc8i2Jpvp4fiBrZeodAYZ7g9MxvhjwFqnV24S2JpM2uvr3e/ZycZjA/uvacjDRS
 UP6mAnSQX3fxQ/1SXXsEe6efG3o+QR/11lpUvxrC8zaZc7Sx/VfiI/l81ulgQ7EN7J
 x3sxIdBgc4wHRlL6wl82wovWUJP0953DjU/S4NkCnepy3hJOQKaVAHOt4gZL/v0rdz
 3TNC8RUMdtKN088TH57nBYjCfa33SZksYHXzJ6VVIlQ526LtV9cUTkdGTNgQg5CrtA
 4XHjhM2DtuDbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jLA/Z9cF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr()
 in ice_fill_sw_rule()
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,m:martyna.szapar-mudlaw@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
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
X-Rspamd-Queue-Id: 483442E0AA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:56AM +0100, Aleksandr Loktionov wrote:
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Use the already existing helper function to fill Ethernet header. Also
> replace sizeof with a (also existing) macro to reduce the number of
> variables.
> 
> Suggested-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

