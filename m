Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iZE+JzEAQGp2bAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 18:54:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD856D2568
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 18:54:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=wAWDeg9g;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CB828305A;
	Sat, 27 Jun 2026 16:54:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d5LyN-KAFuCR; Sat, 27 Jun 2026 16:54:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7423182B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782579246;
	bh=rWNJ+nWH3zByciyqYf1dZa6E0Vryg3VlN2/mkJpjSJM=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wAWDeg9g6ywqmyPGxpLzOb/TVMBFONbeY9GIh9CLqhEg8Wk0xmsRDO5HSeArI/l5v
	 6fD5Stfd9P0AkpbKM+CwfSkCpWbSWkdXTQGOSkLzRA95P+tOeKbfDc/Mj89eYM5eF3
	 25xHJSJr0/N0ZnTD64QyHMRyqDknYX5VPsJ2TyQkrWvp0RQ3vJUoMxp2X3XQLpjhd/
	 PoLsXmcMAOkWoQIIF8QHv3nLTJoMs+ZNJn1JLza3D4KEHtdolUOafi69L/JMdGigy+
	 0eILFINlEAmTfMobk9RmRIkNJ+yh8Y3GYaXAI4xDToe6FaZqcLeFyh9qTk1+4sBnYS
	 2NAYBV+WU4RYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7423182B69;
	Sat, 27 Jun 2026 16:54:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 63639BC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 16:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6111C40056
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 16:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZQF7Dr8dUY6 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Jun 2026 16:54:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E4E540727
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E4E540727
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E4E540727
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Jun 2026 16:54:03 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 110DF6001A;
 Sat, 27 Jun 2026 16:54:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94ACB1F000E9;
 Sat, 27 Jun 2026 16:54:01 +0000 (UTC)
Date: Sat, 27 Jun 2026 09:54:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Pielech, Adrian" <adrian.pielech@intel.com>
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20260627095400.3c3d9f80@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782579241;
 bh=rWNJ+nWH3zByciyqYf1dZa6E0Vryg3VlN2/mkJpjSJM=;
 h=Date:From:To:Cc:Subject;
 b=ooK1TFmcLq+qtpDExwhO4CzxA+rmCXYd2mkEvsuB7heev/jeSX+CeqwgrClvpHvin
 vNwLoogRqBZSPz+gyId6Mo1elUwbXPLmIX6zvVuctLoPC5Aq72vHCxl9OdRL5h/r3d
 mvYi8as79IwYa61USCU6yiZDzA5VrJlVTaWmiTDAHWS8oNpbjtQ7ceYsY7SvBd5GPt
 Tfd2i6lVuJ5mnfTk6u7Yt/vD86pnmOHvV4E0zxcFd/5bpdQsKUUCZKQwOTDrgmXgwO
 vsuGsjTNqSEy7D7XGsYJI+GSWJg4t3ZwGCpNUnvgPgU4XSsXG5EmIwAVSEnQ/Uynsa
 RhrMpDijzccgA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ooK1TFmc
Subject: [Intel-wired-lan] [TEST] intel: low timeout
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: 7CD856D2568

Hi!

Some of the tests need more than 5min, could you increase the timeout
in the runner to 10 or 15min? Looks like it's hard-killing tests right
now after 2min:

https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/xdp.py/stdout

which leaks config across tests:

https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/irq.py/stdout

BTW the JSON reports the timed out tests as pass.
