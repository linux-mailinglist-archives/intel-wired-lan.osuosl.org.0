Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WINkJE0952no5QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 11:03:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506E4388EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2026 11:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D3EA612B1;
	Tue, 21 Apr 2026 09:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZjNTmQNL6lk; Tue, 21 Apr 2026 09:03:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F360F612B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776762185;
	bh=1kyyDE5e21bYjmPhVqkHNcLYxbJ0U27DltQ/VHT5LJQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0dbz9jEziRGX2B3S+Uc3iFtfjaAx5N20bhqmSs7BtW+45BtBW4wB7IhKEb+0++F+/
	 YMn/xn2g2nXbPFFj0WG0t1HWS4Wp1wWhms4SqaJRD/11MWm0Y7FRVrCcqpRVTS0+Dt
	 jqRf1pLkP6BnG7nmyZVWzEvMudPotnfj7duTbroZBWKh5ZJc9+4oO4eEFPNJz1Sr9r
	 vahCkOjnfJfLdUiW/AxZ8Q/WZACLPygcPwNV2zlJFNpVnilBNcFDtSkqbFAlQQi6xC
	 Juq1SikJSPYl2GVcXxl12MWOJECANNeyNnbUXGFi+FdHnIfzXWjbAwJmNu0WvpMzp5
	 0M9Ncrd87eK6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F360F612B3;
	Tue, 21 Apr 2026 09:03:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97FFF24D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 09:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8640183DCD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 09:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fQZgHZDVh_uj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2026 09:03:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E370783DCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E370783DCC
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E370783DCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2026 09:03:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5B02F44116;
 Tue, 21 Apr 2026 09:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 765E9C2BCB0;
 Tue, 21 Apr 2026 09:02:58 +0000 (UTC)
Date: Tue, 21 Apr 2026 10:02:54 +0100
From: Simon Horman <horms@kernel.org>
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Aaron Brown <aaron.f.brown@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 jacob.e.keller@intel.com
Message-ID: <20260421090254.GW280379@horms.kernel.org>
References: <cover.1776426683.git.poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1776426683.git.poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776762182;
 bh=IEJ6LJnEjNWGmodZMyE/CMbkC0WeFWjPZXCMP+gk6s4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bnewWg7W3/r/Kjb34Nql+lE28RpJVx1afI7U0D99UBjTN1wp2NN30jql1O0453c0D
 NFoVBA6S7RvR9pGxh/77ExoEs9T1sLUBbMxLW+MPc36qXBw31iC1waBnKSAWgyDViQ
 HtEByGWAc+9Aen/GA5IkIZkcXc39d+M4QALGaDyyTf4Rynqhj7/ycvzjbYliZWhWZL
 zGiEiICZt8crX+5PUdCd4qp4N2tPvAYdT1MY59PcVJyPmtpUHWAhfx0Gq4fG4SurWD
 yUPSIaQimQ0io9qZkpvYxqYa1dQ+SpcqGe5O5vIyNzdPvjRJYPRvM4HmmH9Jdc8uYY
 Iqu6m77CV2iug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bnewWg7W
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/4] iavf: fix VLAN filter
 state machine races
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:mitch.a.williams@intel.com,m:aaron.f.brown@intel.com,m:przemyslawx.patynowski@intel.com,m:jedrzej.jagielski@intel.com,m:linux-kernel@vger.kernel.org,m:jacob.e.keller@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,horms.kernel.org:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8506E4388EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 04:29:41PM +0200, Petr Oros wrote:
> The iavf VLAN filter state machine has several design issues that lead
> to race conditions between userspace add/del calls and the watchdog
> task's virtchnl processing.  Filters can get lost or leak HW resources,
> especially during interface down/up cycles and namespace moves.

...

Hi Petr,

Sashiko has a bit to say about this patch.
I'd appreciate it if you could look over that.

In particular, the feedback on patches 2 and 3 may warrant
some updates to this patchset, while I think 4 is more
in the realm of possible future work.
