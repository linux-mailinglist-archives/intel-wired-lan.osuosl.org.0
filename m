Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBtrDOsY6mk7uAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:04:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D587C452702
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 15:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7093940FB8;
	Thu, 23 Apr 2026 13:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JGQ77VnLCK0o; Thu, 23 Apr 2026 13:04:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8ADEA40FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776949474;
	bh=mhgnzxr2USauT+so51qgPqkRg1IpxkZTfPCpaVxsOzo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GsxsdNMrhddqziCCb5nxMwOhXcbeSi016gudCdPSL67zZg9Bl3oX+vDbvYf2BkUWV
	 JiSJsGrvtZiqoaNDxcHsgmDgKMOcIy5RKXE8gw3j9DgmJwrKy9HzT2G5pIz3hVfldg
	 b4W0Ql8ZvLzx6qPeRNrgJhWxBvT4VG1otgxOHogCh0fAp94x90GCbvUgrb1tOzzOK0
	 g/WQFlHnVg6K72Ek1doNlY3ax5cPeqoYw0ehH5s11gjRLIhFIvUSWp4NA9TQ1M1HH8
	 75E/NHPvf6wwZJx04CabUNhm3Tv9j5eVmrlkVSFwRCxG5zfNC0qKXm3zq9Ohy6u9qf
	 Qn8g0vZ0myYSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ADEA40FBC;
	Thu, 23 Apr 2026 13:04:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BE7CD206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4BC883B8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hw0CPDQzKEB4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 13:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18E3383B89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18E3383B89
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18E3383B89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 13:04:28 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-541-elPlJOsUN--jaXjrIB0zJA-1; Thu,
 23 Apr 2026 09:04:25 -0400
X-MC-Unique: elPlJOsUN--jaXjrIB0zJA-1
X-Mimecast-MFC-AGG-ID: elPlJOsUN--jaXjrIB0zJA_1776949463
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 076C71800623; Thu, 23 Apr 2026 13:04:23 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.35])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 988C019560B6; Thu, 23 Apr 2026 13:04:18 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com, horms@kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Date: Thu, 23 Apr 2026 15:04:02 +0200
Message-ID: <20260423130405.139568-2-jtornosm@redhat.com>
In-Reply-To: <20260423130405.139568-1-jtornosm@redhat.com>
References: <20260423130405.139568-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: CviEQXS0_O0BgYxxqFIlcsRTmYHOWP7k5Uds7afRALo_1776949463
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776949467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mhgnzxr2USauT+so51qgPqkRg1IpxkZTfPCpaVxsOzo=;
 b=JRyn7ojtVCQS1w7ErlgFMR/05MeoIcMmQf86WCtyoN2Dhv2OUz6R/AU2hXmze710p/BAr/
 9KWr/6+OZkgkCNAVClYZ+wLzWYidgrKAuBv187dz/RaAadbFxIGmTO9+bpotxyqbY74Mat
 oOQXtHhe9VwH+dLBAvNz40SKIMwgm9g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JRyn7ojt
Subject: [Intel-wired-lan] [PATCH net v4 1/4] iavf: return EBUSY if reset in
 progress or not ready during MAC change
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
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D587C452702
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a MAC address change is requested while the VF is resetting or still
initializing, return -EBUSY immediately instead of attempting the
operation.

Additionally, during early initialization states (before __IAVF_DOWN),
the PF may be slow to respond to MAC change requests, causing long
delays. Only allow MAC changes once the VF reaches __IAVF_DOWN state or
later, when the watchdog is running and the VF is ready for operations.

After commit ad7c7b2172c3 ("net: hold netdev instance lock
during sysfs operations"), MAC changes are called with the netdev lock
held, so we should not wait with the lock held during reset or
initialization. This allows the caller to retry or handle the busy state
appropriately without blocking other operations.

Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---

 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index dad001abc908..67aa14350b1b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1060,6 +1060,9 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	struct sockaddr *addr = p;
 	int ret;
 
+	if (iavf_is_reset_in_progress(adapter) || adapter->state < __IAVF_DOWN)
+		return -EBUSY;
+
 	if (!is_valid_ether_addr(addr->sa_data))
 		return -EADDRNOTAVAIL;
 
-- 
2.53.0

