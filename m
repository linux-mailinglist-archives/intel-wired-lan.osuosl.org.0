Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HsSlCirwVGpmhgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:03:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F774C113
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:03:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jeVCva3O;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CFCC80E86;
	Mon, 13 Jul 2026 14:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d2kVgYGN0qoU; Mon, 13 Jul 2026 14:03:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D272780E9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783951395;
	bh=0hjN4HS/zkq2rChROb8fzZV2btFVNjvZd6ow0mvbuL8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jeVCva3O/N3NDJpaMnZy+2SZOiyCWQ3YBtlhj6PrVslj/NAm2QgG1pepOyrlYu4tX
	 S/VW6HOSqVkZSBrR3rJVreMrVhz3RwnVsel/MU0t1VJ9lxLQEDUFk67hrMmzrN4SLv
	 PLkCWJ3gI2yDD9xDYjF3HRcX6HFQDpWpUvzNEpkwQx+sRlGpYkcnQDrbdBtbAe3Svu
	 qWuziwpOJUrrBDUtk3ck7zDuIOILyhNNG95WSTOpsCczkCL1+1bURP26ZWC1TiSv3k
	 rVz53jKBAUl2o01E5F4eZUCTDg5TUmhwe4su6xSSAJCEPCadSaYoIRyioIBUJBN7S1
	 5cXDfdfdaeXtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D272780E9A;
	Mon, 13 Jul 2026 14:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DFFA2EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21302606CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:03:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0K_hLpvEhWE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 14:03:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E09F605E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E09F605E5
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E09F605E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:03:13 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 95F3A601D9;
 Mon, 13 Jul 2026 14:03:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA4221F00AC4;
 Mon, 13 Jul 2026 14:03:08 +0000 (UTC)
Date: Mon, 13 Jul 2026 15:03:06 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20260713140306.GF1364329@horms.kernel.org>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783951391;
 bh=0hjN4HS/zkq2rChROb8fzZV2btFVNjvZd6ow0mvbuL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ii7998XDyvrbLeF1FDeX5yqnEmUmiLrqF7e19daHNAjp+KW8yjCjC4udPUEWyU0qQ
 XCrE6sRROWst7M+Md4i7uC+ThAAZVCHKYdVV6EgoKgrXnOyQ+o2bCMYrpwRWCndgx4
 R5tzlBJIlzDmV9/ix4xqh1aNI4cb3YCsF8MxmukmZfJb8O1U4hZCvqxggJUFftyE8u
 QoUXhx3BKWgOfGBe012twWz9NE/faHTaX0qrkAD6GekzHKYb4RRxh93VLFMj5Dz35e
 He44+tE5DG4ls0yfYTttk/B/8p5vrES1Gjegk2S/EpKnLROH/Rp3+s/yBN4b8Vxy91
 F5dHi9lzPV0eQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ii7998XD
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: move
 ice_vsi_realloc_stat_arrays() up
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:piotr.kwapulinski@intel.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:marcin.szycik@linux.intel.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE8F774C113

On Tue, Jul 07, 2026 at 12:43:30AM +0200, Przemek Kitszel wrote:
> Move ice_vsi_realloc_stat_arrays() up, to allow calling it from
> ice_vsi_cfg_def() by the next commit.
> 
> Fix kdoc for touched code. One line break removed, "int i" scope
> minimized to the loop, no changes otherwise.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: no changes

Reviewed-by: Simon Horman <horms@kernel.org>

