Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iBSBGCzrL2oOJAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:08:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE238685FC8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 14:08:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=iYLG4bvF;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B0476060D;
	Mon, 15 Jun 2026 12:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cYuW3VeJnex9; Mon, 15 Jun 2026 12:08:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D133606DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781525289;
	bh=1mUZryqNrhJrA6yQ4bjuj9ZOB5+Z2b6bKF1iLQiqQNU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iYLG4bvFpv6Z/DzXCycVc+4NVLiXiJBL5xeSOUrOgCqrFYeZFki5l0kpk835QiOHx
	 DOsF0bIfoPd8BKZpnib0fqZ4dHJ2bSwYOygNkv5SV487xcg/uHO8ImqJglgegFRS8p
	 M1brdvQDf/HVKewqndanCYW6kQszVCl41zphaOqGVgTA8vZihF00ZpAWk2bQtLVIJ4
	 KZyEQpZIgrtA/lXV1Sz6E0QSVLI9uw/rJdYZjLa9nfCXgKp+aTkQy8nEA/fL8CoQqB
	 B9qUJyqCGYDal8Q4uG3m6fmyWXpgSMEOvLcAkHxMnDw3bUBw8+Z4Dc7Ylx3I1hlTzP
	 GJ57kxLLgWAfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D133606DE;
	Mon, 15 Jun 2026 12:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D76BADE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C961540F76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3j9BCembL1Kc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 12:08:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09AF040F75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09AF040F75
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09AF040F75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 12:08:06 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 59D326008A;
 Mon, 15 Jun 2026 12:08:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C99CE1F000E9;
 Mon, 15 Jun 2026 12:08:02 +0000 (UTC)
Date: Mon, 15 Jun 2026 13:08:00 +0100
From: Simon Horman <horms@kernel.org>
To: NeKon69 <nobodqwe@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, victor.raj@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260615120800.GA757061@horms.kernel.org>
References: <20260613101440.80190-1-nobodqwe@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260613101440.80190-1-nobodqwe@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781525285;
 bh=1mUZryqNrhJrA6yQ4bjuj9ZOB5+Z2b6bKF1iLQiqQNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=kQXezVeJNQk6hi5xqqY6qBFU65wqDpm30pzdgat1bSKqOY92y7k7+Bh+tRw1q7L7B
 bo5snRmcH2/hh9XvUoWy892UwX2dZpH2J/gs+CnR2p//o89OhOCnPkX/5DnHb9xqGm
 WwYDAxjvdzuPe5yc0dELhQUqdZYlTw4UYOPBgek6YiHSpWZtECfJN/EcjR1mspo47W
 lpJbGGkEi2SqifD/UEK35M9cXiS50Yxudsu4anYl7u0KmmoqVSoxS1oWTBk7QIeLfM
 hibpMwkhNNPJoC5mOTMHB8J/2HgVKRX/JiUeJrJBjcRPjuKkjqXRmP2EkNefMOYpb/
 S9eAaQqZkyLnA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=kQXezVeJ
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix use-after-scope in
 ice_sched_add_nodes_to_layer()
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nobodqwe@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:victor.raj@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE238685FC8

On Sat, Jun 13, 2026 at 01:14:40PM +0300, NeKon69 wrote:
> Commit 7fb09a737536 ("ice: Modify recursive way of adding nodes")
> changed ice_sched_add_nodes_to_layer() from recursive control flow to an
> iterative loop.
> 
> Inside the loop, first_teid_ptr may be set to the address of a
> block-local variable:
> 
> 	u32 temp;
> 	...
> 	if (num_added)
> 		first_teid_ptr = &temp;
> 
> On the next loop iteration, first_teid_ptr may be passed to
> ice_sched_add_nodes_to_hw_layer(), after temp from the previous
> iteration has gone out of scope.
> 
> Move temp outside the loop so the pointer remains valid for the lifetime
> of ice_sched_add_nodes_to_layer().
> 
> This was found by Clang with LifetimeSafety enabled while testing C
> language support on a Linux allmodconfig build.
> 
> Fixes: 7fb09a737536 ("ice: Modify recursive way of adding nodes")
> Link: https://github.com/llvm/llvm-project/pull/203270
> Signed-off-by: NeKon69 <nobodqwe@gmail.com>

I agree that this patch is correct.

However, I do wonder if it would be cleaner to allow
passing NULL as the first_node_teid argument of
ice_sched_add_nodes_to_hw_layer()

...
