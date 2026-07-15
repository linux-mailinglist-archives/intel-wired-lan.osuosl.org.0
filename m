Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lkjWCm9EV2pyIQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 10:27:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3571D75BDD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 10:27:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Y8dg1RIh;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FC7E60648;
	Wed, 15 Jul 2026 08:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6iKTDsUmvlkr; Wed, 15 Jul 2026 08:27:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 894A060649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784104043;
	bh=IQvzwDlyfedqq++oUVQVScJTnk4XMFNZlSdaiPo68EA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Y8dg1RIhnxCX2DGLR1bvKcsvP1qnH5I8bJ37zJ8MOAXbskcnJ2Hx2XyGfGurxEdtN
	 24DRKAdNrXikm5CI3aqSggf/6I1X5xcl1+vX+4CYAwQxIauikQo+Dgj387IOvhug9B
	 hG31d4M7i/H7I1zWTXz6wOK6akSiq0Q95mv10uvAxQjydD4Leb8v52TZSyOtl8y+PZ
	 iaAvkNoPmtwTWTGMSDFb/5yS2l/h4hCfs3vA1mDYvdRX10Mfp/8g6yvlGRnP7zZ5XD
	 0AsbYa4Q0LHIkIwEXdTstKTmURNjMipgopRe4uYPMRSQXbAvo+a/UxNVYuJ/HdXC52
	 2uMCaO+mshXFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 894A060649;
	Wed, 15 Jul 2026 08:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 83FE8499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7571760640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:27:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdmEqR0k5BLU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 08:27:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.176;
 helo=out-176.mta1.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3ACAF6063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3ACAF6063F
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com
 [95.215.58.176])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3ACAF6063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:27:19 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: xuanqiang.luo@linux.dev
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jagielski,
 Jedrzej <jedrzej.jagielski@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 netdev@vger.kernel.org, Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Date: Wed, 15 Jul 2026 16:25:46 +0800
Message-ID: <20260715082548.56687-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784104036;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=IQvzwDlyfedqq++oUVQVScJTnk4XMFNZlSdaiPo68EA=;
 b=L6OFFdD7xzHaeR1tD7FeX03tM5T3O+Y5ZtrOyr43D0CkdPnVb+Ckm9dYV00naJW8zMgszr
 SxJfLf0ECh5latFnHck1c1OcM9bv8tu3YyRkgYUs4UKmj/STg5miOLT0R1O81vRMmQ0tg9
 bNWS9DyBHbWnEu75e19EtxqkEp6AKSQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=L6OFFdD7
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] iavf: fix two memory leaks
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jedrzej.jagielski@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,linux.dev:from_mime,linux.dev:mid,osuosl.org:from_smtp,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3571D75BDD9

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

This series fixes two memory leaks found by inspection in iavf. Release
the ASQ command buffer when initialization fails and the QoS capabilities
buffer when the device is removed.

---
Changes:
v2:
  Patch1:
  - Move the ASQ command buffer cleanup into iavf_free_adminq_asq() to
    pair it with iavf_alloc_adminq_asq_ring(). (Suggested by Jedrzej.)

v1: https://lore.kernel.org/all/20260715061131.34420-1-xuanqiang.luo@linux.dev/

Xuanqiang Luo (2):
  iavf: fix ASQ command buffer leak on init failure
  iavf: fix QoS capabilities memory leak

 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 1 +
 2 files changed, 2 insertions(+)


base-commit: 58717b2a1365d06c8c64b72aa948541b53fe31eb
-- 
2.43.0
