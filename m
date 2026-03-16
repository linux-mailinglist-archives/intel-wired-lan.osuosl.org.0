Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAPwHpFouGlEdgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 21:31:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9118A2A03D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 21:31:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A62341085;
	Mon, 16 Mar 2026 20:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id asLUuBh0KrvC; Mon, 16 Mar 2026 20:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2EBA4108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773693064;
	bh=5Aq2t06k0matK9VyhYiMLJTsRWMtBr1+4nFJqnHvNvI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4DUfjisB2boDNZqCpbblyf16jHTT7/ig5wDnF3BfBVlp5c7a7FGTvzmNw+fyqC9RB
	 ZBTsJAoSTQS6Z2ch+wQQUA51yuk5oRNvfb9AdhDerDABLespN8ol9jRSeexbJrYmZ4
	 hMHU51i285VULUhHiVKt39jGqxbGHzpn8ifLnJrsUeThl6XEjp8XN/+QjRQ+ceruuY
	 mX7sg0SiABkt3xlgs7D3piykXOdkb+xhVkDxJgdC0NqvmY64Dh5YnGVx3bkCnp9ooL
	 HtrAA+4D1WYN/m6kqADxg2XpGDDcGjyqAwK7XdiD5yTEEyCYl3k1DoQ5RT48bP3IEE
	 PbbLQq6QFf07Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2EBA4108A;
	Mon, 16 Mar 2026 20:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A17C3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 20:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B93181521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 20:31:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kD6bWQnA-509 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 20:31:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A6B65814A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6B65814A0
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6B65814A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 20:31:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 24264409DE;
 Mon, 16 Mar 2026 20:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB840C19421;
 Mon, 16 Mar 2026 20:31:01 +0000 (UTC)
Date: Mon, 16 Mar 2026 13:31:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: <intel-wired-lan@lists.osuosl.org>,
 <michal.swiatkowski@linux.intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, <jacob.e.keller@intel.com>
Message-ID: <20260316133100.6054a11f@kernel.org>
In-Reply-To: <48fc11c9-b346-4828-aedb-f97debf2c459@intel.com>
References: <20260315125451.3741843c@kernel.org>
 <20260315130150.12829f88@kernel.org>
 <20260315132245.1a7efb20@kernel.org>
 <f770c976-8688-4192-910f-5996e1850deb@intel.com>
 <20260316115915.19a6cd6a@kernel.org>
 <48fc11c9-b346-4828-aedb-f97debf2c459@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773693062;
 bh=OzVIH8EzgD7dfS/nH8gCxHC8W7jMrj8hSjOKErO/1n8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jcy1PZjYdb6T0dRk5JPfM5NSd96yV/0O/WGu9Y2wifdM/ZTwmMUQyShjPOEG7Ivtc
 ZLb3oOiU/uVmUaR5PJFmwqqCShQ/KXRPCt1zO72AJnbr095fwXJS2BQfhDhUGFAgVy
 ibxDTzJ3GjdtcflMDP1R5Jh6/7V4fnZbDbQFF8iUpVGKS1+4AzTsECo8kmTjaeC1KG
 1IaWCtB830t86dIvT0T6DJao5sIqBsJKhsJ/CeWDil8d9hQiXQ67837iRje0cF2B2w
 63bE7I9KBua+YNbSBFhFkDIK/yniXwvY/WVpbH8llaTxuqPoxw+UGxfbGoLRpFyMu+
 UUHQQTouhr8Og==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jcy1PZjY
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,linux.dev:url];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9118A2A03D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026 12:57:37 -0700 Tony Nguyen wrote:
> >> Thanks for letting us know. I think we have the fix for this in the
> >> pipeline [1]. I'll try to get it tested and out to you ASAP.  
> > 
> > Thanks, do you also have any locking fixes for i40e ?  
> 
> No, no pending locking fixes for i40e :(

Correction, looking closer at the output I think the lock is a second
order effect. The problem is that napi_set_threaded() is waiting forever
on some napi stage change. SOL logs here:

https://netdev-ctrl.bots.linux.dev/logs/hwksft/X710-dbg/results/560801/sol-machine-2
