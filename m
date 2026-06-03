Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sb9eB44FIGrHuAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 12:44:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D889F636B0B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 12:44:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bP+87SLQ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=none
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A2F641F9E;
	Wed,  3 Jun 2026 10:44:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y1cHHPxu2TJ8; Wed,  3 Jun 2026 10:44:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDA6742450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780483464;
	bh=ojQcS59DEjUCC4st6avEqD7kAl3cyOj9e0X+h35+Zxk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bP+87SLQ0Cxzk/8k2Ulhd4qKlZBg5LMn/fxFhosSsXgMuJ+cHF+UKDm4tbZApft2E
	 w+QDPpbf/3ByLM9A67GdUa5wchV1RhbR0NHkeq+IMBr0MkN7yMfuVQQP/D6VbKUclN
	 1jkefEBLGcsEO/yVCY3RrnAV2aX8yNVAS7xwmEyw/Lo8WJoPmnq2FXjY/Qf5RZob9p
	 2byHUORKKVEzx7eTfgW8C86vgfzqaggqRgBw5+PhaaD8BW+RN0EA03L4Spr/ESKpEu
	 j0IbWzSIzFr+fXSTiwCkkGz4ow4N32/g+8U9QsUo6+EcAy1odYmD+/djt08uVbb013
	 JxdbOA3/tY4Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA6742450;
	Wed,  3 Jun 2026 10:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 49F15353
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C48A61478
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCqZhDc2rlYN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 10:44:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=188.68.63.166;
 helo=relay.yourmailgateway.de; envelope-from=regressions@leemhuis.info;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1765B61420
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1765B61420
Received: from relay.yourmailgateway.de (relay.yourmailgateway.de
 [188.68.63.166])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1765B61420
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 10:44:17 +0000 (UTC)
Received: from mors-relay-8202.netcup.net (localhost [127.0.0.1])
 by mors-relay-8202.netcup.net (Postfix) with ESMTPS id 4gVkpQ40Vxz3yNF;
 Wed,  3 Jun 2026 12:44:14 +0200 (CEST)
Received: from policy02-mors.netcup.net (unknown [46.38.225.35])
 by mors-relay-8202.netcup.net (Postfix) with ESMTPS id 4gVkmX24Ksz44gB;
 Wed,  3 Jun 2026 12:42:36 +0200 (CEST)
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by policy02-mors.netcup.net (Postfix) with ESMTPS id 4gVkmV2HS7z8sgw;
 Wed,  3 Jun 2026 12:42:34 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown
 [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
 by mxe9fb.netcup.net (Postfix) with ESMTPSA id 16FB95F96B;
 Wed,  3 Jun 2026 12:42:33 +0200 (CEST)
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <2619ad91-e3c9-439c-86ed-4604c3f5d912@leemhuis.info>
Date: Wed, 3 Jun 2026 12:42:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com,
 Linux kernel regressions list <regressions@lists.linux.dev>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev <netdev@vger.kernel.org>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
 <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
 <56f5f3da-31b8-4847-b274-ce140bf39617@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <56f5f3da-31b8-4847-b274-ce140bf39617@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-PPP-Message-ID: <178048335379.3186764.11506183559720136272@mxe9fb.netcup.net>
X-NC-CID: JGTqWg96wboaZ89YyEfngH5t5ncByslqUufYnU0fpaMFYQz5l6Q=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=leemhuis.info; s=key2; t=1780483454;
 bh=ojQcS59DEjUCC4st6avEqD7kAl3cyOj9e0X+h35+Zxk=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=J8idjtnqjkpGwnUlR8YeERvrYaUw3ZzjERRjQz1mgOCw8/Ow3fuK4+QWjwau16/B9
 JBYIzR06Re5/PT9tt/rbnDHv7XPBSK20c7QcYK9WvVqP8yjS2QICEbfeRKYYnivSZV
 JfX/IQoJRh2Ff8zVmBequRb0LNX3CQC5osnVPidq5t8DUWH3fOmPntl3gIlyR+88Qe
 jUhIGuQWBL7l6/KJADomyJLS7duaDOGl0t7hmeKu7ZK1Kaqh8QxvHSew8//Xne1Cs6
 kAkk1xREHAFilJXEcFr/WcctDc+m0hTzmwmgSu3rM51i8P2k8Y2MHGDnt1c90lCHgQ
 jc7tmk+Ls/Ttg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=leemhuis.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=leemhuis.info header.i=@leemhuis.info
 header.a=rsa-sha256 header.s=key2 header.b=J8idjtnq
X-Mailman-Original-Authentication-Results: mxe9fb;
 spf=pass (sender IP is 2a02:8108:8984:1d00:a0cf:1912:4be:477f)
 smtp.mailfrom=regressions@leemhuis.info
 smtp.helo=[IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f]
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,m:regressions@lists.linux.dev,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[leemhuis.info];
	DBL_BLOCKED_OPENRESOLVER(0.00)[leemhuis.info:from_mime,leemhuis.info:mid,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[regressions@leemhuis.info,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[regressions@leemhuis.info,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D889F636B0B

On 5/6/26 22:13, Jacob Keller wrote:
> On 5/6/2026 2:59 AM, Thorsten Leemhuis wrote:
>> On 4/17/26 12:43, Dima Ruinskiy wrote:
>>> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>>> disabled K1 by default on Meteor Lake and newer systems due to packet
>>> loss observed on various platforms. However, disabling K1 caused an
>>> increase in power consumption.
>>>
>>> To mitigate this, reconfigure the PLL clock gate value so that K1 can
>>> remain enabled without incurring the additional power consumption.
>>> Re-enable K1 by default, but keep the private flag to support disabling
>>> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
>>> be disabled by default on known problematic systems. Currently, this
>>> includes the Dell Pro 16 Plus, where the issue has been reported to persist
>>> despite the changes to the PLL lock timeout.
>>>
>>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
>>
>> What happened to this fix for a regression first reported in January? It
>> looks like it fell through the cracks. Or was some other solution found?
>>
> There has been a bunch of back and forth discussion and varying versions
> of a fix for this. Its still in the Intel Wired LAN queue, and is
> currently waiting for one the E1000E team to report testing completed.

What's the status? Just wondering, as it looks like this didn't make any
progress, but it's easy to miss things from where I stand.

Ciao, Thorsten
