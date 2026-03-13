Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KAADXLJs2kqawAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 09:23:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1366A27F8A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 09:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 818EB8115A;
	Fri, 13 Mar 2026 08:23:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRwdqrXTK-0x; Fri, 13 Mar 2026 08:23:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAABD81016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773390190;
	bh=S8sQ0TAcroRGq0uf1yum4YwrjSAHtvMIJWZZlC5Jd9E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iI3o2aVPc5Q1h8rpStCGP2AC9su65XzeAoWMVmclMnVEAmhnn0DCSL9uzhEjUQVND
	 ax3qmI61NDTsZD24mkxRdnsDNU7r8AaiEG5w1MMyxZiK6e9IG+VqIx/BlnFPZ8KFAb
	 oSqFmBOlr+8igsd5h4BAJaYPB7F9LoVvswdIX7s/6yn5iZluUk1cfxXW0n4LW8W1Z6
	 z4atjNKIcOLI4PlYwfuuNu+5Wgs9PHYvZrc2CEOFAUCLLBEj8K9ugGbqu5jWdEiPHp
	 f9eXhpsry+aT3FJK8I7OOjUnafBZWz7DukbwQvmKE5UvAQlNnNTu5gZ2GF9eZPQmkx
	 ltDxQWrEeH1cQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAABD81016;
	Fri, 13 Mar 2026 08:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F15C201
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 08:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0450E80F4E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 08:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FTLYQzLSRrh1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 08:23:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A27E980F4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A27E980F4B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A27E980F4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 08:23:07 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-633-ekQ4lWhHNAe1UGNtzV4MHQ-1; Fri,
 13 Mar 2026 04:23:02 -0400
X-MC-Unique: ekQ4lWhHNAe1UGNtzV4MHQ-1
X-Mimecast-MFC-AGG-ID: ekQ4lWhHNAe1UGNtzV4MHQ_1773390180
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 3686D1953994; Fri, 13 Mar 2026 08:23:00 +0000 (UTC)
Received: from rhel-developer-toolbox-latest.redhat.com (unknown
 [10.45.224.182])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 3BB0219540C2; Fri, 13 Mar 2026 08:22:54 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: Xiaoqiang Xiong <xxiong@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 13 Mar 2026 09:22:29 +0100
Message-ID: <20260313082230.195208-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: ndZ60gdYGrmiLGnQGE0c8ak-OIrHElDwrWEdWTvZ0VM_1773390180
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773390186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=S8sQ0TAcroRGq0uf1yum4YwrjSAHtvMIJWZZlC5Jd9E=;
 b=Yqai50zM0fipkh5mHH0ov+83VxR2lBmG9Y+XelX7Bt3wNqsVr9z0jkRCjcwWcOxqdKOQbL
 jNssZWAS1tTZxct4/P3QufoO9ucynfT0w1iqvmNqJeJ67wZET3sT7tt7++IdnGEH63Mz+w
 VTCzB0Od5tjMYymqzaY1E1fhdn7gvT4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Yqai50zM
Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbevf: add missing
 negotiate_features op to Hyper-V ops table
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
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:jedrzej.jagielski@intel.com,m:xxiong@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1366A27F8A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit a7075f501bd3 ("ixgbevf: fix mailbox API compatibility by
negotiating supported features") added the .negotiate_features callback
to ixgbe_mac_operations and populated it in ixgbevf_mac_ops, but forgot
to add it to ixgbevf_hv_mac_ops. This leaves the function pointer NULL
on Hyper-V VMs.

During probe, ixgbevf_negotiate_api() calls ixgbevf_set_features(),
which unconditionally dereferences hw->mac.ops.negotiate_features().
On Hyper-V this results in a NULL pointer dereference:

  BUG: kernel NULL pointer dereference, address: 0000000000000000
  [...]
  Hardware name: Microsoft Corporation Virtual Machine/Virtual Machine [...]
  Workqueue: events work_for_cpu_fn
  RIP: 0010:0x0
  [...]
  Call Trace:
   ixgbevf_negotiate_api+0x66/0x160 [ixgbevf]
   ixgbevf_sw_init+0xe4/0x1f0 [ixgbevf]
   ixgbevf_probe+0x20f/0x4a0 [ixgbevf]
   local_pci_probe+0x50/0xa0
   work_for_cpu_fn+0x1a/0x30
   [...]

Add ixgbevf_hv_negotiate_features_vf() that returns -EOPNOTSUPP and
wire it into ixgbevf_hv_mac_ops. The caller already handles -EOPNOTSUPP
gracefully.

Fixes: a7075f501bd3 ("ixgbevf: fix mailbox API compatibility by negotiating supported features")
Reported-by: Xiaoqiang Xiong <xxiong@redhat.com>
Closes: https://issues.redhat.com/browse/RHEL-155455
Assisted-by: Claude:claude-4.6-opus-high Cursor
Tested-by: Xiaoqiang Xiong <xxiong@redhat.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ixgbevf/vf.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index b67b580f7f1c..f6df86d124b9 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -709,6 +709,12 @@ static int ixgbevf_negotiate_features_vf(struct ixgbe_hw *hw, u32 *pf_features)
 	return err;
 }
 
+static int ixgbevf_hv_negotiate_features_vf(struct ixgbe_hw *hw,
+					    u32 *pf_features)
+{
+	return -EOPNOTSUPP;
+}
+
 /**
  *  ixgbevf_set_vfta_vf - Set/Unset VLAN filter table address
  *  @hw: pointer to the HW structure
@@ -1142,6 +1148,7 @@ static const struct ixgbe_mac_operations ixgbevf_hv_mac_ops = {
 	.setup_link		= ixgbevf_setup_mac_link_vf,
 	.check_link		= ixgbevf_hv_check_mac_link_vf,
 	.negotiate_api_version	= ixgbevf_hv_negotiate_api_version_vf,
+	.negotiate_features	= ixgbevf_hv_negotiate_features_vf,
 	.set_rar		= ixgbevf_hv_set_rar_vf,
 	.update_mc_addr_list	= ixgbevf_hv_update_mc_addr_list_vf,
 	.update_xcast_mode	= ixgbevf_hv_update_xcast_mode,
-- 
2.53.0

