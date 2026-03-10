Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJAgN3kzsGl2hAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:06:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D956252DAB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8067B60B34;
	Tue, 10 Mar 2026 15:06:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74quNft2OrxP; Tue, 10 Mar 2026 15:06:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4A5560B27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773155189;
	bh=+ylnD5+3z30iOCEMiABhC1oFqELC5abezo7oEw1t5mI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S5Qnl9ReaaMqbu5SQl08VoVQiOum/UzsCgWCgQ6O6W2YGWlmd5r4XvMu34ZEl2EH8
	 ZWyyAbX0cKSgnE9vmTpoOPpDRrQSNkRhFw6KZvSoSlMiYo2Q0avy2KgDpuZ3N4JwXs
	 GiSaiAQrVLvhotNrarOcJSQonAVTif7W3o7R1w1uB38vTzm2xbQUsmXjC1qJ9NPsL4
	 YGgrW8IVwaRhlZRQg8IxecegXQSb5iw4zHnZiw2q1LmXRusO83ffRvZKU0tnPO5FEU
	 Cg/wakAxM6nbGLUDHP3jBgeQ/AdpzJ2a0sMobhSwYulUA2j61MLFvojbpqsDL6ZAuA
	 HQNQOU/QbIhqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4A5560B27;
	Tue, 10 Mar 2026 15:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A33535C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 15:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D7C7840AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 15:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3udq_3srUzfl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 15:06:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jramaseu@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 260998409B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 260998409B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 260998409B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 15:06:26 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-164-rHKfhB85Pay9xB7YopzXhA-1; Tue,
 10 Mar 2026 11:06:23 -0400
X-MC-Unique: rHKfhB85Pay9xB7YopzXhA-1
X-Mimecast-MFC-AGG-ID: rHKfhB85Pay9xB7YopzXhA_1773155182
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7BA521955E98; Tue, 10 Mar 2026 15:06:22 +0000 (UTC)
Received: from jramaseu-thinkpadt14gen5.tpbc.csb (unknown [10.43.3.226])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 92B4219560B7; Tue, 10 Mar 2026 15:06:20 +0000 (UTC)
From: Jakub Ramaseuski <jramaseu@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, przemyslaw.korba@intel.com,
 Jakub Ramaseuski <jramaseu@redhat.com>
Date: Tue, 10 Mar 2026 16:05:57 +0100
Message-ID: <20260310150557.1138437-1-jramaseu@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: -xtSwKACO-KMZyUO2DbNJY-QRLU2nitaL4kNCNSAyYM_1773155182
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773155185;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+ylnD5+3z30iOCEMiABhC1oFqELC5abezo7oEw1t5mI=;
 b=IGrm49PdXpMyu6xkODBQwNBuIuQrULdVU7Jt+Wcj9OdtN8Eyp7rJv2cyDO67fVL2+Ii1FQ
 NG59rnO2t8O8KxKWsdZWOij2ePN8tJXhqqwM62dOKNEgfyuMgObXEtB6AeD9qILyJtpAWN
 Sg9hd7ug55OLG062GZBcTEtcHkKiGzc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IGrm49Pd
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: enable NETIF_F_HW_CSUM
 for GSO packets
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
X-Rspamd-Queue-Id: 0D956252DAB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jramaseu@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

IPv4 over IPv6 GRE currently fails on E810 with skb_warn_bad_offload,
while IPv6 over IPv6 GRE falls back to software segmentation.
This happens because the kernel's GSO engine requires the generic HW_CSUM
flag to trust the hardware with complex encapsulation offloads.

Add NETIF_F_HW_CSUM to the device's csumo_features to satisfy the network
stack and unlock full hardware segmentation for GRE tunnels.
To prevent checksum corruption on standard traffic, evaluate the packet
in ice_features_check() and dynamically clear the NETIF_F_HW_CSUM bit
if it is not a GSO frame. This forces the driver to fall back to safe,
protocol-specific checksum features for non-GSO packets
while preserving the generic offload for tunnels.

Steps to reproduce:

Server Side (Receiver):
```
  #!/bin/bash
  DEV="enp65s0f0np0"

  # 1. Configure underlay device
  ip addr add 2011::11/64 dev $DEV
  ip addr add 192.168.42.11/24 dev $DEV
  ip link set $DEV up

  # 2. Create and configure IPv6 GRE tunnel
  ip link add gre1 type ip6gre local 2011::11 remote 2011::12 dev $DEV
  ip addr add 2023::11/64 dev gre1
  ip addr add 192.168.44.11/24 dev gre1
  ip link set gre1 up

  iperf3 -s
```

Client Side (Sender):
```
  #!/bin/bash
  DEV="enp65s0f0np0"

  # 1. Configure underlay device
  ip addr add 2011::12/64 dev $DEV
  ip addr add 192.168.42.12/24 dev $DEV
  ip link set $DEV up

  # 2. Create and configure IPv6 GRE tunnel
  ip link add gre1 type ip6gre local 2011::12 remote 2011::11 dev $DEV
  ip addr add 2023::12/64 dev gre1
  ip addr add 192.168.44.12/24 dev gre1
  ip link set gre1 up

  # 3. Execute Tests
  iperf3 -c 192.168.44.11 -t 20   # IPv4 over IPv6 GRE (Triggers bad_offload)
  iperf3 -c 2023::11 -t 20        # IPv6 over IPv6 GRE (Triggers SW fallback)
  iperf3 -c 192.168.42.11 -t 20   # Native IPv4 Baseline
  iperf3 -c 2011::11 -t 20        # Native IPv6 Baseline
```

Signed-off-by: Jakub Ramaseuski <jramaseu@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7308e381e2f..9b4ad03e1a32 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3565,6 +3565,7 @@ void ice_set_netdev_features(struct net_device *netdev)
 
 	csumo_features = NETIF_F_RXCSUM	  |
 			 NETIF_F_IP_CSUM  |
+			 NETIF_F_HW_CSUM  |
 			 NETIF_F_SCTP_CRC |
 			 NETIF_F_IPV6_CSUM;
 
@@ -9789,6 +9790,14 @@ ice_features_check(struct sk_buff *skb,
 	if (skb->ip_summed != CHECKSUM_PARTIAL)
 		return features;
 
+	/* Hardware requires strictly-typed Tx descriptors for non-GSO frames.
+	 * Leaving generic NETIF_F_HW_CSUM enabled corrupts checksums,
+	 * causing TCP drops. We strip it here to force safe,
+	 * protocol-specific IPv4/IPv6 offloads instead.
+	 */
+	if (!gso)
+		features &= ~NETIF_F_HW_CSUM;
+
 	/* We cannot support GSO if the MSS is going to be less than
 	 * 64 bytes. If it is then we need to drop support for GSO.
 	 */
-- 
2.52.0

