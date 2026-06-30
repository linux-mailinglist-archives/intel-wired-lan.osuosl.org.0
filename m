Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s+BCJDVIRGp4rwoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 00:50:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECAF6E87F3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 00:50:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="0MFjHCi/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC9B44084E;
	Tue, 30 Jun 2026 22:50:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id saHDDNYs9qxL; Tue, 30 Jun 2026 22:50:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06CB6407F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782859826;
	bh=4/7TjGJiqZagTrJvi7kpMXuVrILhpW7k/6RtBUpwu6w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0MFjHCi/XmH+MfaBLoXvL2mjxrVoV2Z34atTkX3wjA/n4Y54C+8JSMHpcbnLC9WzP
	 aj7ppjuhTb4mxq5gi+TRFigKpS8HMfAq/1/WpAGhWV380BA5bhcu9O1EpfPgtRIU6k
	 GCguNbNZTq0hUzUR5KxsxNw0jzJdIad4c/56xb8T+ajJTX0tfk56JKPgOvem937npU
	 g3Wk/LKyVTPL4sQQN7qsAch97LN+bXdF8i5VZ+Wub8UCAD7w1sSVfQRPUnFxWAFUL3
	 H3Um62+K5o2KFqUxw1K2353k4RPYmRyryGXACzLCKsF7LxwgUugjkosbg/i94pDEOw
	 AJ8hKnPAj1uuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06CB6407F9;
	Tue, 30 Jun 2026 22:50:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D717F149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 22:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2BBF605EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 22:50:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NvGJJfOG_4RP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 22:50:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D796E605DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D796E605DF
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D796E605DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 22:50:23 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 28685413AA;
 Tue, 30 Jun 2026 22:50:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA26F1F000E9;
 Tue, 30 Jun 2026 22:50:22 +0000 (UTC)
Date: Tue, 30 Jun 2026 15:50:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Pielech, Adrian" <adrian.pielech@intel.com>
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <leszek.pepiak@intel.com>
Message-ID: <20260630155022.27c9a271@kernel.org>
In-Reply-To: <35ccefb4-a588-4556-87c0-ade880eaa8d6@intel.com>
References: <20260627095400.3c3d9f80@kernel.org>
 <35ccefb4-a588-4556-87c0-ade880eaa8d6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782859823;
 bh=4/7TjGJiqZagTrJvi7kpMXuVrILhpW7k/6RtBUpwu6w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=nbS240E4fkTexZ4KVCGleDZ6Ui7AHYGBZBuASvkTzuaeSIbLK1nSTFFQ/yDpAjjZg
 hj8N4tVcDPKDNeqKTPUPVyLv62PEEdI5l1fPkXhcumUuUlEzii30PgKS4JDe4/3hZB
 Go6hwcMA2VWjQsfmQiPY6Jr+WT/Ud6sL15ntoANXHAdqm/MOoQvyV6520L/4xFqcgq
 so4pbCqCnWcwgrBeUG777l9Wl2vwe2CD0nEEUNVoUxYXwHRtJTYuxCJ1LOPT8KH4HL
 bnW3wkCkQfukIBzjLmqWjr9We7pKuBqWCBE7pCKz4QE6uBjqs+pBQdWAIWX3Q6Db5f
 Vmkx8igg4Or6Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=nbS240E4
Subject: Re: [Intel-wired-lan] [TEST] intel: low timeout
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7ECAF6E87F3

On Tue, 30 Jun 2026 14:56:02 +0200 Pielech, Adrian wrote:
> On 6/27/2026 6:54 PM, Jakub Kicinski wrote:
> > Hi!
> > 
> > Some of the tests need more than 5min, could you increase the timeout
> > in the runner to 10 or 15min? Looks like it's hard-killing tests right
> > now after 2min:
> > 
> > https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/xdp.py/stdout
> > 
> > which leaks config across tests:
> > 
> > https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/irq.py/stdout
> > 
> > BTW the JSON reports the timed out tests as pass.  
> 
> Hi Jakub,
> 
> I've increased timeout to 10 minutes per test run. It seems to help with 
> XDP tests score.

Great, thank you!

> I'll later take a look on default behavior of runner in case of timeouts.

default behavior == pass/fail status for the test?
