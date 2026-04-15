Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLahDpP93mlINQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 04:53:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592D3FFDBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 04:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B68784FF0;
	Wed, 15 Apr 2026 02:53:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDb7cKjaEi1a; Wed, 15 Apr 2026 02:53:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C9C984FEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776221583;
	bh=3+5pFTC9L4TcAgd/RnB8ZvQWCS/U/+fZRKbBPq/6RR8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VhVWjTb1AQmskC6QdGrc21N3RrJQZA8U3kMlIXOiKyU3XyHcSiW3O3Pw+hqb2cu8g
	 gLrVwH4HJQh6wBpmeB3nxANFm/WmGXGUkZfNIAnEwUHLRCg3Upkdzicy2HIXfWWMdQ
	 3n/sM/bf1aOkU4uWQqnj2oayAGObUzZzKo5ktUu74eTI/XTd1lNlgLnjVdxEjafKcj
	 Rr86L8l3DQPq7uAA2xqYW439mhm6bCMZ3U5d5doJwVjK85yJSJ0ojiTbAGMRLrVfPG
	 nmAUvrNVyEqHzaRcQoMOp0R4m/oOZY9R28Fjck1C4CLyU6LsP4W6ZPb2U1vOIN1nJT
	 usNR27BgtEZHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C9C984FEC;
	Wed, 15 Apr 2026 02:53:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E12A283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 02:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A9F484FEA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 02:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iCUziI_RoxGS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 02:53:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 154A184FE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 154A184FE9
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 154A184FE9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 02:53:00 +0000 (UTC)
Received: from ms-a2 (92.192.13.160.dy.iij4u.or.jp [160.13.192.92])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 63F2qSsp035194
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 Apr 2026 11:52:28 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 kohei.enju@gmail.com, Kohei Enju <kohei@enjuk.jp>, stable@vger.kernel.org
Date: Wed, 15 Apr 2026 02:52:18 +0000
Message-ID: <20260415025226.114115-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=3+5pFTC9L4TcAgd/RnB8ZvQWCS/U/+fZRKbBPq/6RR8=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1776221548; v=1;
 b=tBTq3uwiwD5z03dO8vqZL864WNI/kPy8x1eH0MmgDZvWKMwbMaoArTJhH5akHj6G
 h9MxXMI8bXFLK0LoRSQ2y2SG1CSrfoDeWBKqQ5/VuRdyxDXoAqOKWOb8u/UkoASl
 5egcH5Wzpcth3LEeVwSQNetM7QoUip/zexFeGD6UuyDEiae69wzl0FB6op7GRmnV
 zZIKS0lYc4SNbXwOhcpBqYw6rMH57ISlnWrH7YjWkSMeBtVs1xanAcKBGzdAUo5/
 W0LEIhjWVXIbd80x8mC1UGUPZITzlv9kxqVCvwqWv4DASI9i5VWMtO2J4t7wIgx5
 AKIyR5dHuxP2fz++0I7h7g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=tBTq3uwi
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix potential skb leak in
 igc_fpe_xmit_smd_frame()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,linux.intel.com,gmail.com,enjuk.jp,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.957];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 2592D3FFDBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When igc_fpe_init_tx_descriptor() fails, no one takes care of an
allocated skb, leaking it. [1]
Use dev_kfree_skb_any() on failure.

Tested on an I226 adapter with the following command, while injecting
faults in igc_fpe_init_tx_descriptor() to trigger the error path.
 # ethtool --set-mm $DEV verify-enabled on tx-enabled on pmac-enabled on

[1]
unreferenced object 0xffff888113c6cdc0 (size 224):
...
  backtrace (crc be3d3fda):
    kmem_cache_alloc_node_noprof+0x3b1/0x410
    __alloc_skb+0xde/0x830
    igc_fpe_xmit_smd_frame.isra.0+0xad/0x1b0
    igc_fpe_send_mpacket+0x37/0x90
    ethtool_mmsv_verify_timer+0x15e/0x300

Cc: stable@vger.kernel.org
Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
Changes:
  v2:
    - change to idiomatic style with goto (Simon)
    - add Cc to stable (Alex)
    - add reprodunction steps (Alex)
  v1: https://lore.kernel.org/all/20260329145122.126040-1-kohei@enjuk.jp/
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 8a110145bfee..02dd9f0290a3 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -109,10 +109,16 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
 	__netif_tx_lock(nq, cpu);
 
 	err = igc_fpe_init_tx_descriptor(ring, skb, type);
-	igc_flush_tx_descriptors(ring);
+	if (err)
+		goto err_free_skb_any;
 
+	igc_flush_tx_descriptors(ring);
 	__netif_tx_unlock(nq);
+	return 0;
 
+err_free_skb_any:
+	__netif_tx_unlock(nq);
+	dev_kfree_skb_any(skb);
 	return err;
 }
 
-- 
2.51.0

