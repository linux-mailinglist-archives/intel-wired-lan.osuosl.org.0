Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nhi1LhP4O2qggwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 17:30:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C09616BFA8D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 17:30:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=gFNCnMDQ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E14BC60A6F;
	Wed, 24 Jun 2026 15:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pdsb18gxSLwW; Wed, 24 Jun 2026 15:30:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A71760A6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782315024;
	bh=RUcbvgmQZC5oKq764H4ENHHBEsmXURttubgifoaZF5I=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gFNCnMDQkvrUZ4EikPwu1ULWki6yQFZNt9WaDH24FEAdqgBT49f7CoR+ZQtGx4xjC
	 N9US0WwXG361fL0dpPiwcjQRpdPsINcqJikqy8nzWxfd5iHIutvmRsymmdIYJs8ae5
	 bs7JixnObPFveLkE2MqGZSnl7QPd8BGG7eH2HFWj1KudAEOHdnLQ6+8qChtCZeuiCK
	 Jbakdkp/wW3N7uFGkwDaofGIS3WWf9EDB3to2Mux4rHbVO5EN8aHrLnLBCgs2M6yPn
	 PGbq5wGa5pRq1NuuMaWzRY1/zHZr3W8fXFYgtWjhZvmbEn3VT07t0IBYiOuMAuNz7q
	 e6jf33P6NR3vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A71760A6C;
	Wed, 24 Jun 2026 15:30:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E378256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FA4940A00
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:30:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYEy_5YvGdwm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 15:30:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2C48B40A1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C48B40A1E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C48B40A1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:30:21 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 6FEA0402F4;
 Wed, 24 Jun 2026 15:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 245E41F000E9;
 Wed, 24 Jun 2026 15:30:21 +0000 (UTC)
Date: Wed, 24 Jun 2026 08:30:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Adrian Pielech <adrian.pielech@intel.com>, Przemyslaw Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20260624083020.131a75fe@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782315021;
 bh=RUcbvgmQZC5oKq764H4ENHHBEsmXURttubgifoaZF5I=;
 h=Date:From:To:Cc:Subject;
 b=NLbwuSVN9DmYytjs9Dlkf4Qe+kkPcBLajxXTBsLbn5Qx31QtNxtCPYLDyPWJBeHFJ
 JFb2RfEOQyUQ12log4GHmmRVXEG+qQo+ZkK9K9hvtUcRqrHoGG85jd/Tmr743v8gOn
 2tIH6+riCZzChAXEHmmn2TPbF7u21DTzjD7w7W06dDdaWrsyuiK+/DJYxvNXlPOfxJ
 WWZHREoD9CuZ4TFc/1a/4oFRDBRixgNvObU8g9nQO0CYZCkj1njSwuw3gpdcDXUnnk
 +pX1BtDCtEaZDc8SgUW98qG0olHWj5JyOD3ULg+E6MKt38gMPwBll7zGDhlAJH8y2W
 I9hvA69j1nQlg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=NLbwuSVN
Subject: [Intel-wired-lan] [TEST] Weird RSS state on ice
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C09616BFA8D

Hi!

I noticed in the netdev CI that the ice runner fails to run the
toeplitz tests because of the RSS config.

https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-23--00-00/ice-E810-CQ2/toeplitz.py/stdout

I added some extra debug on the branch:

net.lib.ynl.pyynl.lib.ynl.NlError: Netlink error: hash field config is not symmetric 16 304: Invalid argument {'bad-attr': '.input-xfrm'}

16, 304 means GTP flow, GTP_TEID field. So we are trying to disable
symmetric RSS, but the field configuration contains TEID. The problem
is this is an illegal configuration in the first place. We are
_disabling_ symmetric RSS, but the kernel tries to make sure that both
before and after states are correct (because the configuration involves
multiple calls to the drivers and may fail half-way-thru). If the
current config is illegal net/ethtool/ won't even let us restore it to
sane state.

So the question is how we got into this state. It does not happen
on netdev machines. And on Intel machines it happens randomly around
30% of the time.

I tried to look thru the driver code and I don't see how we could end
up with such a config.

Could y'all have a look and figure out / fix this? This has been
happening for a while back but I was waiting until the merge window 
to poke at it first.
