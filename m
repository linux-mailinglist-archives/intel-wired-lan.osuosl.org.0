Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP7UHfSYpWnxEgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:04:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BA61DA536
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:04:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2A0441C0E;
	Mon,  2 Mar 2026 14:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xITg4biSo99n; Mon,  2 Mar 2026 14:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7887E41BFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772460273;
	bh=d70zDu4ndyD1s53+EgDgu5bXJ2EBofGtN6VBkfMTq40=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SXIVtvp8zHYe/NnGWkEb9QN79a+EXSQExtjP0AIuilHtYvhw/y7p7WUE92TAW1SY8
	 Gd3LbzfyWtg6KJFtiv+qT8omwfZq9w4XKTNQivtmRtvcSzOK6qjWBPI4P5dCrvAgMu
	 dSN3hJxCA2b+zchyeqIJBSmK2dyx9Nm+qZxb/ot2n5CUE9AZz7+GMCLZwGONHqgWVU
	 pgL3pCq5V5RU3zi1jry1L7NCE+DwzbK6JRpqgBBpjGrm3NWhakhRAJXKRYELJomS5T
	 enCzdSSN1d9IILNAZqTM/xqZJnm+CVsOpbARnAiVwAXU/eSzlgJRaqnbfR0JeHL2e2
	 tis8+o/pQedgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7887E41BFC;
	Mon,  2 Mar 2026 14:04:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EA1125B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7082F60FBA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBsKqWCbRuqT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 14:04:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D371E60F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D371E60F12
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D371E60F12
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:04:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E55DA42BA8;
 Mon,  2 Mar 2026 14:04:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64E89C19423;
 Mon,  2 Mar 2026 14:04:28 +0000 (UTC)
Date: Mon, 2 Mar 2026 14:04:25 +0000
From: Simon Horman <horms@kernel.org>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <aaWY6Yd8jFWEKtqr@horms.kernel.org>
References: <20260223143214.241797-1-przemyslaw.korba@intel.com>
 <aZ7IDXaOOnwcnuuq@horms.kernel.org>
 <PH0PR11MB490409B2463A17F8E6F64D43947EA@PH0PR11MB4904.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH0PR11MB490409B2463A17F8E6F64D43947EA@PH0PR11MB4904.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772460269;
 bh=urEvhoueRVfKr1e1jrKpMr72QqDM1fli72+QQFwLYjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OIhhSGMJhLPATY2rJj9fA/R222miqiBCou/c+HvCJgl+gfkUc+UxIgxl6aR8qkAhA
 6KZqiVXqCu/iwOU/16rAblRx8Xa9z77pmHKY8lzr8udwenMNYWN6Pvar0qEQP0JS/+
 m+prKxRmT66DhnIISQiz1AqnN23NogMyMSATnsX9Io68wR3ss82ZJpWhKoDixUVJp3
 CwqKNRehRkrSl3YWC3wxShS5TAaiuSF/IGFHYf7fUwhWM99m7wbpYnIewsRs2PmhOE
 p07PKpKRlHlZ/HTe5jMcbh8G4abir8rP2IVB6Cg4QryJPkjXp5JOZH6Gu6KGmBI1vN
 8qFW58Bh6stxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OIhhSGMJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76BA61DA536
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 12:01:12PM +0000, Korba, Przemyslaw wrote:
> > From: Simon Horman <horms@kernel.org>
> > Sent: Wednesday, February 25, 2026 11:00 AM
> > To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>
> > Subject: Re: [PATCH iwl-net v2] ice: dpll: Fix compilation warning
> > 
> > On Mon, Feb 23, 2026 at 03:31:55PM +0100, Przemyslaw Korba wrote:
> > > ice_dpll.c: In function ‘ice_dpll_init’:
> > > ice_dpll.c:3588:59: error: ‘%u’ directive output may be truncated
> > > writing between 1 and 10 bytes into a region of size 4
> > > [-Werror=format-truncation=] snprintf(pin_name, sizeof(pin_name),
> > > "rclk%u", i);
> > >
> > > Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin discovery")
> > > Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> > 
> > Hi Przemyslaw,
> > 
> > I agree that it is good to address this problem.
> > But is it a bug?
> > 
> > It seems to me that of the 8 bytes of pin_name, three are available for %u.
> > So values up to 999 can be safely formatted.  And I suspect that
> > pf->dplls.rclk.num_parents is always significantly smaller than that.
> > 
> > If so, I'd suggest this is iwl-next material. And should not have
> > a Fixes tag. But you could cite the commit that introduced the problem
> > something like this (the part starting with 'commit' is the syntax for
> > citing commits):
> > 
> > Introduced by commit ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and
> > dynamic pin discovery")
> > 
> 
> Thank you! I sent it to next, with updated commit message 😊

Thanks, much appreciated.
