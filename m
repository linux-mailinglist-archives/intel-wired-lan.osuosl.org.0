Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFIOEK2sb2miEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC0747773
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C976480F78;
	Tue, 20 Jan 2026 16:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qp3GQIUw35zg; Tue, 20 Jan 2026 16:26:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94AFF80F6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768926372;
	bh=qavOGxN9mVcoUoS6WgbJ7acocVqABCcFByd5ApUfjsU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PEiOPpRUubGWpSscZpFh/oa4GLVYRf9/ZbkkZAHbPFT48xB11Dou0bdepyXNA4Ijr
	 YFSYF7HJaOGxy/T33hEd7d9pUW5FHR4It4X8Fli2lEGn3J4xKI+fMgDaxaHF8rDzqV
	 BUlQVSKoYAc+uGgREGw/KAvR36LNjA05JHURE0S0Su5Gn+qsB2wrRakWPvRRrWvVgZ
	 PJxu27cEJnqz1BRMrA/F9qQuEMRw2zFnB75b8lSivQKPyzSEhh4bPuUTca4xj3rmJH
	 HgvTQ4uS7IwkvyLMFH2yqfwPXl20NFEQX+Y4aNTvGxLT7kWTervWJOs+F+8zkIFdui
	 AzaALPvqnTNmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94AFF80F6E;
	Tue, 20 Jan 2026 16:26:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D4FD42CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C56E960FBE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMDwJNZPB6Yh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 16:28:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=mmyangfl@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 29E3B606EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29E3B606EE
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29E3B606EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:28:18 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-81dab89f286so2103388b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:28:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768840097; x=1769444897;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qavOGxN9mVcoUoS6WgbJ7acocVqABCcFByd5ApUfjsU=;
 b=SOweCwa+VAN+2ChCSsV0tavwQcsxrB8hkQZE7CTS57FrFimPLtjTOp4V+DB8guU5OP
 IQvx84w0XDz2vjRX4f42A9382g0adFjunULRwU/KDOCgiNbAizEEolVfc5k/G+g1Hdlu
 6PTxER9fJacRqQXrb6eLSa2EcQ+hc7WBpZD+wNLH9npxDgITO6rFYxsHmVQV57kLeUMB
 p5tvEODjERSMpUN5pxXEkC2m0TQJ8RnPrYUbqKZmB5RoLa18kMNkVL9pMfXJWBAA2ZcO
 i96GlRC7SRQj8HUvKPYZYYV3yByJl3U5eKxNq4vxl6FTmuJ4k4Fl83ETMySD1j+XrEF5
 k7wA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAlAu5zb60I7AwIpCTgIFgmD/rsMAZj7hSjeUIpmUJcfz9D34FBmGISFWoMHTERgZINUVLiNYko8k6t4sNcTw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy8baw7Z3zKgeW7rzMvlhiAY9GQcU3pv+svwpxhoohklV+G5fD7
 gK3vkp8CrvMoCypRaQyhuZLAGy7GjapUwRly3Lwudu3cK+4Wm5DUm3Hs
X-Gm-Gg: AY/fxX4P5ciDM7SHD5/PZPfow2GNQ11RuLQsurA4HSReuXx1tw+lD+3lehqr+Qcb1b8
 69Ir9rMqfaQBuDK7sxyNsp6Jefd2GPOCBmfgwN5eReAZrclAJPfejpnlN72tp0v0aIWld+5246O
 m9Pbu1CgfN52YL7+1p/jVHmgyN5sfgtVWs1W6uyzYE+LQOXImYLCkgUAvdV04rQTjy3vCTje7iu
 2vGtPthUn/Pkxl8ktf13uaFqD/Qd4JvRoZJMgUlD3cnXduPC+EYTFaOgDpZQskcb4nV+rgVzSq7
 zTknJ0eL/qNlEWQGkNLVHMfGDJfJcjcu4yKsx3HxM5YVwo4+HlL5JZrdvHRX0TnXvWdDI4/x5aD
 Efybe9NHXsv2k6455AsPSF3ONx7Vm9udOjcHmFS6xObv9DqvZETwFaDbHdYNnzxPJ0BBc+LQT6d
 3LoP6QjjFY5EEF09JsT3wa6Xaq1/LwUR800IAKsmhMpwWYrYDOKzdRww==
X-Received: by 2002:a05:6a00:2e20:b0:81f:45ff:48b0 with SMTP id
 d2e1a72fcca58-81f9f68f9c5mr10820529b3a.13.1768840097295; 
 Mon, 19 Jan 2026 08:28:17 -0800 (PST)
Received: from d.home.mmyangfl.tk ([2001:19f0:8001:1644:5400:5ff:fe3e:12b1])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-81fa1291fbcsm9644981b3a.55.2026.01.19.08.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jan 2026 08:28:16 -0800 (PST)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Phani Burra <phani.r.burra@intel.com>,
 Willem de Bruijn <willemb@google.com>, Alan Brady <alan.brady@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Tue, 20 Jan 2026 00:27:16 +0800
Message-ID: <20260119162720.1463859-1-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 20 Jan 2026 16:26:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768840097; x=1769444897; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qavOGxN9mVcoUoS6WgbJ7acocVqABCcFByd5ApUfjsU=;
 b=SBt8/fXSsbhAQssxeLNgVrBUtkVs/3XDh5AxUx0Jv3GakcjvwdwiDlvE+tL1f6nUiv
 YsBI7pAyetMwDU9JZvoxTMvqJfaaTEJYxGZmrXnQVvBQbHFlcbilLKJhiwhbmMtEVGTO
 4cdPw+wTzJJFSQYsaLbpj2MK2+vxqxOUTxPxJZ822EwhlVAMfrke1XLUHl27J80XFCZa
 Q6KieTC4v2kGmj2Yy9OAcBcgbRJrCpJ0JYIfPuDjmsZiQNsc35EO4OO7zNaHf8Q2vB+U
 orSa4oBWNriv6n4vf5aZ5/z3ByKb0vp4AR5eQaQwp0F4KEVW2N1FIsBZmsoHki9rDrk5
 uRhw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=SBt8/fXS
Subject: [Intel-wired-lan] [PATCH net] idpf: Fix data race in idpf_net_dim
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:mmyangfl@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.kumar.linga@intel.com,m:phani.r.burra@intel.com,m:willemb@google.com,m:alan.brady@intel.com,m:sridhar.samudrala@intel.com,m:joshua.a.hay@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mmyangfl@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ACC0747773
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In idpf_net_dim(), some statistics protected by u64_stats_sync, are read
and accumulated in ignorance of possible u64_stats_fetch_retry() events.
The correct way to copy statistics is already illustrated by
idpf_add_queue_stats(). Fix this by reading them into temporary variables
first.

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
Signed-off-by: David Yang <mmyangfl@gmail.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 97a5fe766b6b..66ba645e8b90 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3956,7 +3956,7 @@ static void idpf_update_dim_sample(struct idpf_q_vector *q_vector,
 static void idpf_net_dim(struct idpf_q_vector *q_vector)
 {
 	struct dim_sample dim_sample = { };
-	u64 packets, bytes;
+	u64 packets, bytes, pkts, bts;
 	u32 i;
 
 	if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
@@ -3968,9 +3968,12 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 
 		do {
 			start = u64_stats_fetch_begin(&txq->stats_sync);
-			packets += u64_stats_read(&txq->q_stats.packets);
-			bytes += u64_stats_read(&txq->q_stats.bytes);
+			pkts = u64_stats_read(&txq->q_stats.packets);
+			bts = u64_stats_read(&txq->q_stats.bytes);
 		} while (u64_stats_fetch_retry(&txq->stats_sync, start));
+
+		packets += pkts;
+		bytes += bts;
 	}
 
 	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
@@ -3987,9 +3990,12 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 
 		do {
 			start = u64_stats_fetch_begin(&rxq->stats_sync);
-			packets += u64_stats_read(&rxq->q_stats.packets);
-			bytes += u64_stats_read(&rxq->q_stats.bytes);
+			pkts = u64_stats_read(&rxq->q_stats.packets);
+			bts = u64_stats_read(&rxq->q_stats.bytes);
 		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
+
+		packets += pkts;
+		bytes += bts;
 	}
 
 	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,
-- 
2.51.0

