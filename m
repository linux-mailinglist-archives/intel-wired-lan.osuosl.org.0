Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QBxYIqnePWpi7QgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 04:06:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DAA6C9A5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 04:06:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="K7/NYWHZ";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81339410B5;
	Fri, 26 Jun 2026 02:06:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q6GQD2sIoTbm; Fri, 26 Jun 2026 02:06:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D919B410B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782439589;
	bh=d4tY6cLSmj5pQ3iTcSmFAglPnRm3lU+hsBD/90+HQrQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K7/NYWHZlZUV6NBM8uwNgGFpDsZvdhISGBlE8/O44vK6verjOHxnt8waveciK9MQ+
	 66o4zOVLkLZdkHa7F5Au8a3ZS+VkAVf+nhUV9FixeGmnrUKUhUbRX9f+OUJJMH7o7v
	 ymT4VqDjszW39TLicrfdcRp19VQyk9hxLu8NoL8jD9LW+fO+SLAPvHzUZADJ5hJvru
	 2KVAhxjBq8oU0k8wJvTRw4/T0qGaCUBk/+wRdRf9WDT4mCkixGGXuVVcU0Sy2qNPm/
	 81JMNQZmzAV3axUAwVehwlpj1qvjVS84jMZjtGfB7Bda9/AKD+MGmoXDdS32adulYY
	 pQ0+6D1y0b30Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D919B410B1;
	Fri, 26 Jun 2026 02:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A114369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 02:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96F17410AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 02:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YgNOd479C7_d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 02:06:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF4DA410AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF4DA410AB
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF4DA410AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 02:06:27 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 51AAA60141;
 Fri, 26 Jun 2026 02:06:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD0CE1F000E9;
 Fri, 26 Jun 2026 02:06:25 +0000 (UTC)
Date: Thu, 25 Jun 2026 19:06:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Pielech, Adrian" <adrian.pielech@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20260625190625.0f5ffe01@kernel.org>
In-Reply-To: <DS4PPF7551E65529A34C04A73F4287C2B4EE5EC2@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20260624083020.131a75fe@kernel.org>
 <DS4PPF7551E65529A34C04A73F4287C2B4EE5EC2@DS4PPF7551E6552.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782439586;
 bh=d4tY6cLSmj5pQ3iTcSmFAglPnRm3lU+hsBD/90+HQrQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=YU2HsUhMffQf9G0WEH9VIETrTq9/dPVToRpIlremKJP9cpDHs0EzEpZGsB2cvrej7
 l9tghFvvbYh4uZ6+4Jzq9rurp2piQw+LXRPbrMertjH7Qypv87QTeelkF8ZWSaQl8m
 9gNKXEJ9hnJ5gr9EPvQPNwZBdb+x8uOAEG03WC4R0cDcIjE5g6cZe34t4buGLPy27s
 Yvn3h2uV1dxFGfUnTWPb4nu3QrOCFHOUmysLiPXU80uaR+tGXEZM7/uC1Foy5gBJk9
 zG/DFdlAIWf3B/i1FhRCL6F+tz9NsyJGRTCH9e/OqM4BcFRn3R/JnYAdD42INh0j59
 xzpbLJwaCnhvg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=YU2HsUhM
Subject: Re: [Intel-wired-lan] [TEST] Weird RSS state on ice
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
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:url];
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
X-Rspamd-Queue-Id: 78DAA6C9A5D

On Thu, 25 Jun 2026 07:11:14 +0000 Loktionov, Aleksandr wrote:
> The patchset didn't help? 
> 
> [PATCH iwl-next v5 2/2] ice: implement symmetric RSS hash configuration

Not sure, it's not in tree, and lore doesn't want to point me at it
either. What I don't get is how we get into the bad state in the first
place.

Looking at other tests today I spotted that rss flow label test is also
behaving oddly. Most of the time the first case fails and the second
passes:

test	"rss-flow-label-py"
group	"selftests-drivers-net-hw"
result	"fail"
link	"https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-26--00-00/ice-E810-XXV4/rss_flow_label.py/stdout"
results	
0	
test	"rss-flow-label-test-rss-flow-label"
result	"fail"
1	
test	"rss-flow-label-test-rss-flow-label-6only"
result	"pass"


But every now and then they skip:

ok 1 rss_flow_label.test_rss_flow_label # SKIP Device doesn't support Flow Label for UDP6
ok 2 rss_flow_label.test_rss_flow_label_6only # SKIP Device doesn't support Flow Label for UDP6

test	"rss-flow-label-py"
group	"selftests-drivers-net-hw"
result	"skip"
link	"https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-25--16-00/ice-E810-XXV4/rss_flow_label.py/stdout"
results	
0	
test	"rss-flow-label-test-rss-flow-label"
result	"skip"
1	
test	"rss-flow-label-test-rss-flow-label-6only"
result	"skip"


The devlink info is identical so it must be that the device 
is in unclean state sometimes?? Do y'all power cycle these
machines between runs?
