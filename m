Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNlJNCCHq2mFdwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 03:02:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C582298E6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Mar 2026 03:02:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A70360B72;
	Sat,  7 Mar 2026 02:02:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYKsEFVRI79s; Sat,  7 Mar 2026 02:02:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3DB660AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772848924;
	bh=k6RP1YYCaVgYdHe1eehvjmD6K60u+lszZ6MYO4nThPg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=74MYVXoCqpXjIXg4D5cZhEym5UQQXqccRNDh56vYxuOJ8yD/a5m4Jvuh8MHuOwI3S
	 Q/rnLbwU1XPLMGQWGoIMniBKRbPhMAOrUVq9uFeT9kpvSkp98R76r2+zGpehzFHsLZ
	 dSDm/qYOTcw71VU5YHhoyeUwASB+WfTRmzEVLPJcMvd1of1qAgfHxTFMR/ptJWpMDu
	 KiqZqVHPkWEPDO3tGWL5Nc3hxritOSQiJUCM4j9DYc99fbNMvxIYnCTwt2Yu5xqQrt
	 UcGPZ1tM/QIdAjijPoDNOgU98M5Jc4GbRTNBTzFnJeW+dlZ7VRrVGtMf/3tAL+5Zrr
	 sSkWHdu1mKaeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3DB660AC0;
	Sat,  7 Mar 2026 02:02:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2DA8223
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 02:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98AC540760
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 02:02:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-FRgQNBeESE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2026 02:02:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D917040707
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D917040707
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D917040707
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2026 02:01:59 +0000 (UTC)
X-CSE-ConnectionGUID: 1lHM7RmsTy2dviLRTqZQAQ==
X-CSE-MsgGUID: RrPmNGllQDCHPpSuQvJ4uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="77839205"
X-IronPort-AV: E=Sophos;i="6.23,105,1770624000"; d="scan'208";a="77839205"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 18:01:58 -0800
X-CSE-ConnectionGUID: GJOabdEYRmC0WpSeHeKghw==
X-CSE-MsgGUID: WPDC6zbAQAmqpcamPC/ELQ==
X-ExtLoop1: 1
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa003.fm.intel.com with ESMTP; 06 Mar 2026 18:01:58 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri,  6 Mar 2026 18:12:47 -0800
Message-Id: <20260307021247.1259624-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772848921; x=1804384921;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jq1XXb3w5dDHDIPGLpDnaXdLQU6hLD53Lqu7W/qctOE=;
 b=FO4JanwZugjFZIoJrMjkNcVL59f6T8eV6kq4SDvCEp/lOx7DMA2sSftN
 u64wPHBWG5jlWHShQWcmkzXmFICcI1fSbK1YV4J9LXcWRYFB5EGkX8Q9I
 VWqoOwWqzDfwh9H+/ARnFHnxTMoA2mtHf1+573DLTNeu2bEFXd10h8IV7
 Ss0Sf5V57beO+MXJIT90+l6/g1vAPJPHRx4Mf83JTjELpbw/qSZQtiDVd
 JPtucGVVz7Zi2MEJYhEwCVKZfJsycUBiFT53HleuWGl5glhbrO1rZdtS4
 Pn2aSAtyKAi+50K8rrL2o3OzwQLLtW57Wpri2cRkNcss5Cgictr/rV44p
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FO4JanwZ
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: only assign num refillqs if
 allocation was successful
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
X-Rspamd-Queue-Id: F2C582298E6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

As reported by AI review [1], if the refillqs allocation fails, refillqs
will be NULL but num_refillqs will be non-zero. The release function
will then dereference refillqs since it thinks the refillqs are present,
resulting in a NULL ptr dereference.

Only assign the num refillqs if the allocation was successful. This will
prevent the release function from entering the loop and accessing
refillqs.

[1] https://lore.kernel.org/netdev/20260227035625.2632753-1-kuba@kernel.org/

Fixes: 95af467d9a4e3 ("idpf: configure resources for RX queues")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 252259993022..f6b3b15364ff 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1860,13 +1860,13 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 			idpf_queue_assign(HSPLIT_EN, q, hs);
 			idpf_queue_assign(RSC_EN, q, rsc);
 
-			bufq_set->num_refillqs = num_rxq;
 			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
 						     GFP_KERNEL);
 			if (!bufq_set->refillqs) {
 				err = -ENOMEM;
 				goto err_alloc;
 			}
+			bufq_set->num_refillqs = num_rxq;
 			for (unsigned int k = 0; k < bufq_set->num_refillqs; k++) {
 				struct idpf_sw_queue *refillq =
 					&bufq_set->refillqs[k];
-- 
2.39.2

