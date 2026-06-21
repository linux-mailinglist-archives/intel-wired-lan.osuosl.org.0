Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HzyNHqDfN2r0UwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 14:57:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4CE6AAC80
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 14:57:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=v09Pfx7Q;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FD3F6FD80;
	Sun, 21 Jun 2026 12:57:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xKhDA0zCldAq; Sun, 21 Jun 2026 12:56:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BC6F6FD81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782046619;
	bh=OzuDjTBVZnVblzhpPthtqKRuK4UuaGylmLKeDqO4kyA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=v09Pfx7Q3vu9P5VlL3RSDfvzsEJNOvlstbpiJpMfmfXqth/P5mRV/ivF8xc9tiBw0
	 9wALGBJz9HoUS5XK5bxSARSb+B0GtHShzcayYX5M9+4tUKxfB+ZNCLcTYZPTbmgUHe
	 CZvJNuglQtcBwrS3OIbBqKy6CJwDRegE7JzyNcscEfizeLFxucEXxO80rgvFcb9Xhl
	 Bz/tE79FLZl27vpUfoJTDqaDKyZpbAKWzMbFlJMGlwoLUN9OjyjbGUu5DfcPPA8WhS
	 E1FpShPCNHCZRckCl9Bh//qwXITC3PceaaxPqGV6TGAHLsg7wpTFiwVIgF2tOc9iuS
	 RzD80NoZvQdFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC6F6FD81;
	Sun, 21 Jun 2026 12:56:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 72A8B367
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 584BD42E87
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:56:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t4xYrk-3lVDB for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jun 2026 12:56:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F4D142CA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F4D142CA0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F4D142CA0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:56:56 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117-JPdM09B7Nwa2c7Qefb0Okw-1; Sun, 21 Jun 2026 08:56:54 -0400
X-MC-Unique: JPdM09B7Nwa2c7Qefb0Okw-1
X-Mimecast-MFC-AGG-ID: JPdM09B7Nwa2c7Qefb0Okw_1782046613
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-462c1cf9003so3241110f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 05:56:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782046613; x=1782651413;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OzuDjTBVZnVblzhpPthtqKRuK4UuaGylmLKeDqO4kyA=;
 b=WvPxo3miw4rl2FBa9R8qU3ISnZyI7POwEsZUfuqjyF3zM+KJ70Mx+77tlZe1ktULUk
 RE91vZvZLwZl2gzaLcTx47+4rxf1L5jug0cMR1y+lL1BmArmkv25WxxgWx3O7wi4+7ZS
 PWOLdqDJ6+yFJmg9yl9wAyNp6sOoiYuZ/eDMhqZRAxWgkq1YGvrtZ+OGVNfA0WdLtlcD
 +xHGmRTzlpioLU9+oJw5mEAbIUf1Aj+UtWiXnIzD1WyTDwgCGc5gDkKNDSywphcHOijf
 S3LO7vzBGX6XyQf7YiNHkTN5Map9ciMVN1oM+z82iSdTb5OwrsITQKXAD+7O6yfwfRh5
 Tvlw==
X-Gm-Message-State: AOJu0Yxu89tlQZZ5MvK3pm0TckXeqKv1RMixym6tBzxK1h5jlJeZnGwP
 TfYFjQCBgSlQR/ToeHP680KnYctsJZFcEoNhCzjpwNNnU4KNBNYkxubRN90GFSqomdeqOQndbfj
 gnNp3HBdCeyNK4KNxN7eWvfKKEhISXUDNXLY9l0QrfvSAYeOb4ccpAgPtQ1Phd+KJH7tL5K6A/h
 Ly54gEDnd2K/Hs+Lju7zp08RYO9wx+bQfB7FayNjmlG5OKVr8VQ6LKew==
X-Gm-Gg: AfdE7cn3KSdMBmaXxeiCJysV5nVIFUlGDSoPcOJczuqfX5JZDsTseNcxtNnJrRwO6cP
 3il11CdhV/VRjsf6bm0N/Kk7+V/uQEZVihdyaLVe8DT+FHC2Gn17HbVz2N/7TCYfz8U+6Uc4tql
 qbmbPTOXb8eZcsiSUG935wHsyaK0ID5iYmstPCrdMksNAR+NPXWGw1rJcvwmGMohaJdPYcwRXPV
 KmhCUqPkfG8Mc1Fh3D+noT73cI5gcDNWWBkSQfy6v33KCLOaBYzVA2ByLzgUTkpZjEfQAnrK7nm
 +/qnFhEcfKol5lwDyBQeIyyfh537eFcOMyESKLEDskO3+/Lu4L9MqpW/cHwWwbr9ZizXoVtQIr4
 zlxRLpB2hTwgWMxRD02WgEy4=
X-Received: by 2002:a05:6000:461e:b0:464:b8d7:e5d8 with SMTP id
 ffacd0b85a97d-4656c69b646mr15818577f8f.14.1782046612868; 
 Sun, 21 Jun 2026 05:56:52 -0700 (PDT)
X-Received: by 2002:a05:6000:461e:b0:464:b8d7:e5d8 with SMTP id
 ffacd0b85a97d-4656c69b646mr15818536f8f.14.1782046612468; 
 Sun, 21 Jun 2026 05:56:52 -0700 (PDT)
Received: from fedora.redhat.com ([216.128.14.31])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-466648c4f01sm17884258f8f.9.2026.06.21.05.56.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2026 05:56:51 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Date: Sun, 21 Jun 2026 15:56:43 +0300
Message-ID: <20260621125644.253844-1-mheib@redhat.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: c_hLJ_EZZ-75D6I9LZpgE-6fngK6sMoMc1TtNUBuLQY_1782046613
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782046615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OzuDjTBVZnVblzhpPthtqKRuK4UuaGylmLKeDqO4kyA=;
 b=ASTSQAm3Mn9GbgLA2vJ6VD/YzpiV8c8DV8/g28YbmmwE23rLFRxayjls2MqnylqVtDsc6y
 49bIdcDBuNrRDyyt6G1Lgm7ljA3ZZs0xM84MxBcXSn8BblETHqEPMmVO4MBN8d7AW+NIvc
 oPXyUfD13/hX+mRxOBNqy0hDaNcGWxg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=ASTSQAm3
Subject: [Intel-wired-lan] [PATCH 1/2 net-next,
 v1] i40e: move ATR sample rate from ring to PF level
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mheib@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A4CE6AAC80

From: Mohammad Heib <mheib@redhat.com>

The ATR sample rate is currently stored per-ring and initialized when each
TX ring is configured. Since the sample rate is a global policy that
applies uniformly across all rings, it makes more sense to store it at
the PF level.

Move atr_sample_rate from struct i40e_ring to struct i40e_pf and initialize
it once during i40e_sw_init(). Update i40e_atr() to reference the PF-level
field. Change atr_count from u8 to u32 to match the sample rate type.

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h | 3 +--
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 1b6a8fbaa648..88eb40ee45f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -487,6 +487,7 @@ struct i40e_pf {
 	u16 rss_size_max;          /* HW defined max RSS queues */
 	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
 	u16 num_alloc_vsi;         /* num VSIs this driver supports */
+	u32 atr_sample_rate;
 	bool wol_en;
 
 	struct hlist_head fdir_filter_list;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d59750c490f4..9695d160bc59 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3457,12 +3457,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 		ring->xsk_pool = i40e_xsk_pool(ring);
 
 	/* some ATR related tx ring init */
-	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
-		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
-		ring->atr_count = 0;
-	} else {
-		ring->atr_sample_rate = 0;
-	}
+	ring->atr_count = 0;
 
 	/* configure XPS */
 	i40e_config_xps_tx_ring(ring);
@@ -12745,6 +12740,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
 		}
 	}
 
+	pf->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
+
 	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
 	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
 		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 61525ab7d21e..da94cb2ce94d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2882,7 +2882,7 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 		return;
 
 	/* if sampling is disabled do nothing */
-	if (!tx_ring->atr_sample_rate)
+	if (!pf->atr_sample_rate)
 		return;
 
 	/* Currently only IPv4/IPv6 with TCP is supported */
@@ -2934,7 +2934,7 @@ static void i40e_atr(struct i40e_ring *tx_ring, struct sk_buff *skb,
 	if (!th->fin &&
 	    !th->syn &&
 	    !th->rst &&
-	    (tx_ring->atr_count < tx_ring->atr_sample_rate))
+	    (tx_ring->atr_count < pf->atr_sample_rate))
 		return;
 
 	tx_ring->atr_count = 0;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index bb741ff3e5f2..be587f804e7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -372,8 +372,7 @@ struct i40e_ring {
 	u16 next_to_clean;
 	u16 xdp_tx_active;
 
-	u8 atr_sample_rate;
-	u8 atr_count;
+	u32 atr_count;
 
 	bool ring_active;		/* is ring online or not */
 	bool arm_wb;		/* do something to arm write back */
-- 
2.53.0

