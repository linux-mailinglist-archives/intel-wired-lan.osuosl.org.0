Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ZnqMk4mV2rSFwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B2475AE84
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 08:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=c6wMPSeZ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C861380E09;
	Wed, 15 Jul 2026 06:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xikdPD1DPafY; Wed, 15 Jul 2026 06:18:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F12F680E15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784096332;
	bh=GNA34ZVAFe+Zjxs6F20dktajo1LonGeHCUW7GzDGnsw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c6wMPSeZXH3BQjSw5+gRl1aG4zAowfukY8lDCLco+6ir2mAdMJ0fmcA2KDuoMz3l4
	 oEyer9E4LoQxXeswAnkG0eppwfpD9fhm4iKHZsOBTbww+4CDCKYB87BUESn0kTSWdD
	 OxvIuNRvFi6VFrk3tsf8mm4CKuYAlI5PhlyvOGk4lCEt2YOTF6Tn+bTaAu2Zlt7iTN
	 MmXvGztQ/lgumlw9oCil7f9NPnhjrx3zgk7VdFovBH4x7k1yozrjVbfUuOHsQn5M/z
	 6TWLJ5jeVOaIgXFOeDgUpwwFrF9+GvXtanZY/ttyFuqzWM8v9R9MmAZhuxVxBV4YHl
	 mHblgT05zdAyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F12F680E15;
	Wed, 15 Jul 2026 06:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BCD7149D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A252F80E09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 06:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFJymmxuj2LD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 06:18:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6CA7280DC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA7280DC5
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CA7280DC5
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
Date: Wed, 15 Jul 2026 14:11:30 +0800
Message-ID: <20260715061131.34420-2-xuanqiang.luo@linux.dev>
In-Reply-To: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
References: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784095987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GNA34ZVAFe+Zjxs6F20dktajo1LonGeHCUW7GzDGnsw=;
 b=vJeKyWE34SQhoigJZ0mLJv5fiWh7HpHFQ8s33lvfIDYX+wGgjskEcqf9MP6XM+7EWLVGJ2
 wOBZ5Qn7OPKAyiqfAlfER98FEMYYk28wEqZuVvwXdlvQpgGmv0FzvH7Dxv1FZfGmpsVYyT
 mFucntdU6STRSdwENCfNuh2IIQcm1+0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=vJeKyWE3
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: fix ASQ command
 buffer leak on init failure
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 24B2475AE84

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

iavf_alloc_adminq_asq_ring() allocates cmd_buf before the remaining ASQ
resources. If iavf_alloc_asq_bufs() or iavf_config_asq_regs() fails, the
unwind path elides cmd_buf while freeing the other allocations.

The ASQ count is not set until initialization succeeds, so the shutdown
path cannot reclaim the buffer. Free cmd_buf in the common unwind path.

Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
Cc: stable@vger.kernel.org
Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index 6937b7dd44cbb..82a32f8e78c12 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -346,6 +346,7 @@ static enum iavf_status iavf_init_asq(struct iavf_hw *hw)
 	iavf_free_virt_mem(hw, &hw->aq.asq.dma_head);
 
 init_adminq_free_rings:
+	iavf_free_virt_mem(hw, &hw->aq.asq.cmd_buf);
 	iavf_free_adminq_asq(hw);
 
 init_adminq_exit:
-- 
2.43.0
