Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /fOGBU8mV2rTFwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE0675AE85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=GZWC7tyb;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A442406C7;
	Wed, 15 Jul 2026 06:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xs7Ia0tC0vS6; Wed, 15 Jul 2026 06:18:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81C2C406CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784096332;
	bh=RWpJTHJ8TyXGkDWqsB7xYyZHeqa3pjiQY10iz6i5Vhg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GZWC7tybkuAo48IB0G6M/vqTvLoa96OBWnBGoOoAEyimJ8HuXiy/ZaQxMe9uTn6OE
	 xVqEzK3uOMW36uJHC15I6ErIheBH927ucVQ1UnY8B2uXGdmVvzUTT74gv8nfgIPptW
	 iKqONJGHQcE8vC8WajQr6P3efeE/S4hjjVLY36Cn3mzXvWr+mbvjRGEnDAySbeTJuu
	 QkxqKUVaBOLp2+CnAriXhXcjHN53YwqAIKoWfceVy1DtQFlEvAjVer9fuDfHbiXsDZ
	 agMok5eVbuEVlX0nfdtvtnJL2f/bVlfzalA1UTx19MSOz2rubzU2y1dvqSgGUdMEhq
	 ODo9h/AT2radQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81C2C406CC;
	Wed, 15 Jul 2026 06:18:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0809B499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E28216063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dd1gXuxdMdXa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 06:18:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CC9F605E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CC9F605E4
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CC9F605E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:48 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: xuanqiang.luo@linux.dev
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 netdev@vger.kernel.org, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Date: Wed, 15 Jul 2026 14:11:29 +0800
Message-ID: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784095983;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RWpJTHJ8TyXGkDWqsB7xYyZHeqa3pjiQY10iz6i5Vhg=;
 b=koTyQ5rODfYlsV3CszwR0yZKArLEfwxG/IevGon6Bq25lCYwM5e+ehyL8vIXm0qwyLmbWN
 Nhbb7dCPR7giThL5KIzUTOsVo1VYia+rvnwVX1KkZ3/h6lEDvBTKQ0gomvHOeGaX9B28HJ
 wIvmlStPK4t3wI+/wv/xKEYpDL6tJCM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=koTyQ5rO
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] iavf: fix two memory leaks
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:dkim,kylinos.cn:email,linux.dev:from_mime,linux.dev:mid];
	FROM_NEQ_ENVFROM(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7EE0675AE85

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

This series fixes two memory leaks found by inspection in iavf. Release
the ASQ command buffer when initialization fails and the QoS capabilities
buffer when the device is removed.

Xuanqiang Luo (2):
  iavf: fix ASQ command buffer leak on init failure
  iavf: fix QoS capabilities memory leak

 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 1 +
 2 files changed, 2 insertions(+)


base-commit: 58717b2a1365d06c8c64b72aa948541b53fe31eb
-- 
2.43.0
