Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YkGKBU8mV2rUFwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 806D775AE86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=akI4NuCI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E9E6406E4;
	Wed, 15 Jul 2026 06:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5UvZI_Hedhw; Wed, 15 Jul 2026 06:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C2BE40652
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784096331;
	bh=VPEUFTzVk8RYAlWSMk2Q2P7BxFqxwtqJBCiSB6u+y/A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=akI4NuCIjj7HgJN7xL++3EN0QKiWsdnSFxjBk7Cm9Le9YP0xWJophjQdtq4dIp4u7
	 zK42f7UOvEK5VtKcKWkXURU32vPtbVxohn1LXNCd2AbzNB/oJjVjCAjva4SxvGRfAv
	 UMlqCqYbCKCBypPQfw3XCJfobrj8sgL1XJLtdWoXIUYMiC/lweMGUH6Xkn0mMYvtxN
	 NS2evKJs4nkJBaaByZIGTFRE2hFdrlGaTUuwvQuE4GPJjHqrHujvSwiofAVqOTpSZi
	 KSsb+6l3O9cpfyetrIGsvAmZTIFOvj30rq9ScxeD3L9GNXGefUBFPPcwdet7yRgjMQ
	 Z6oisXbTdXz9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C2BE40652;
	Wed, 15 Jul 2026 06:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B93F6499
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7B9160648
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DhYGnoXuB1do for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 06:18:48 +0000 (UTC)
X-Greylist: delayed 342 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Jul 2026 06:18:48 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CD916063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CD916063F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CD916063F
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
 netdev@vger.kernel.org, Xuanqiang Luo <luoxuanqiang@kylinos.cn>,
 stable@vger.kernel.org
Date: Wed, 15 Jul 2026 14:11:31 +0800
Message-ID: <20260715061131.34420-3-xuanqiang.luo@linux.dev>
In-Reply-To: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
References: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784095991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VPEUFTzVk8RYAlWSMk2Q2P7BxFqxwtqJBCiSB6u+y/A=;
 b=vneqqpSUQqPujTEYl45vle3Zwt9EE5DDw+p0pF/rrjvfdByXgJcgBDsRu+1j47Exdm1idd
 r1MRBh7AuLIebqLdGX8C3L0PbxxsU1dEZSorAL7PY3N3rX398daovbf3rdrrlgpbjBtBTK
 jawNIr0HNY2TTiBN+KS8A2mRJgHnkJk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=vneqqpSU
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] iavf: fix QoS capabilities
 memory leak
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
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,kylinos.cn:email,osuosl.org:from_smtp,osuosl.org:dkim,linux.dev:from_mime,linux.dev:mid];
	FROM_NEQ_ENVFROM(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 806D775AE86

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

Commit 4c1a457cb8b0 ("iavf: add support to exchange qos capabilities")
allocates adapter->qos_caps during probe, but iavf_remove() does not
free it. This leaks the allocation whenever an iavf device is removed.

Free adapter->qos_caps in iavf_remove().

Fixes: 4c1a457cb8b0 ("iavf: add support to exchange qos capabilities")
Cc: stable@vger.kernel.org
Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 29b8403a066bc..c7f69a9040588 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5589,6 +5589,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	iounmap(hw->hw_addr);
 	pci_release_regions(pdev);
 	kfree(adapter->vf_res);
+	kfree(adapter->qos_caps);
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	/* If we got removed before an up/down sequence, we've got a filter
 	 * hanging out there that we need to get rid of.
-- 
2.43.0
