Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LEgOZCFcGktYAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:51:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3B053116
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:51:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5C1E83E16;
	Wed, 21 Jan 2026 07:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z-Wo1LLGV8cV; Wed, 21 Jan 2026 07:51:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A58F83E17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768981902;
	bh=mwIPbOci5oaCyF1RQyLgWXCMn5I/M1luBxKEhZcFZB8=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=EpIRY/AWg38OY2m3qcyJHsPdSPvJ+hqpsq+InbnUPaXowh/xjgLKQGtarbI+r8koS
	 rHVKKQngJdt37OUskmtaYqAyb/oMaNvOj5iUWc2lVHZzV3Y3LgWB6/2HnS45ljjjh1
	 7sQEpt94GggFvgffj/KVlS8U5xJX0iodiKfQ+HVvSfbizsD+8Y1yiFMR3vk7zSXYax
	 AoQPyazOlQkwWa3mvh9ZLQVtR6Xo4AU7RsowzQD3ViJmuoIgPbUYHmF3L58Lhszt2H
	 n6FyIDzfnnaREKztAGHWWm1KdwbLMhP0WfzeLbOvP68z2q2d35QdgErqvkVxtagVq4
	 aBrE4BuxSKD3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A58F83E17;
	Wed, 21 Jan 2026 07:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E2011160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEA0C40B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eEeVrdIzsCS9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 07:51:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B96540B02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B96540B02
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B96540B02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:51:37 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C3F0F3FC03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:51:35 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-47edee0b11cso35290715e9.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 23:51:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768981895; x=1769586695;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mwIPbOci5oaCyF1RQyLgWXCMn5I/M1luBxKEhZcFZB8=;
 b=GbJGZv9Fjjdx/DLPzLn/5IrIlIjrxAlAgpYrnIk1hWQnChHifB0QWCRDBXNU+6qoGG
 gNaTe+zdFG6w0FnRzDWgnNw0ZannaSemnAZ8uUH3WX5cRRCFXQvh2h/ba5iPzzPks7xv
 jCb1c+jZ5SJENAbbhT97q/hPLOjavV1bImXYdohAht+wFjag5rX6pqPJkurvgOXthg5L
 P/PS5l4o7M6YSlX72WMs3xkLPgFXxPV0fLxWRiILOPLVpx7abGkGCtUl6elNcruZIwnT
 fHaOA+hln7X8yy7Y8mHxvMBue1AIoUvTbkVjUsNmWpvWmY1z2qpuqqrIe1K1EM0Y7P6F
 IUdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrZXVmqmqmkTIh05mjqblxifep3kg59mTr97Fd/6ShdQ5e/VDAgGjYw4M88F3OlkfJt1KxAss1hrBoXkCEUSQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzxZpQ//N0EZD96tP5sBUSyop7wQBb0bUaZfQCI0ybVLvApd0UE
 ifTSK/6CMuecP1OfyDY1c5wwmoxXHakRJcLCfhMq4OIeMIKaImB9AvzER6XFSRiQq97KchBKRYw
 Ocf326ZVjDC3EA0MjjjTu7rwm6+idICMOVO2ay8Dq61rCIy1gP76sKGjHXerbgMdDBm6Hm/gaoS
 n3PvKjqz8QM78=
X-Gm-Gg: AZuq6aILU16JS916n+VX3/nw7nQvxTU0eKkON7tszWxZtLCUUEo/SRgdh3tTplnbjAe
 xj1Jg3D35Ze1PZVYpTCjp7QEbQavdOfbwkOczqOkN2mP8YBLL2i716lQpxScAMWkrHBWKF+x9yC
 54f/1JAg+sg3wAZOE28TXlKQuCzbu5U8JHSAz/r/gD3CUR6nKm5ItWSAnqPpH4GTtF/hZk52Crp
 A1D+6K/0CuAr8WHG2+W3IRyY0yQDT5fqHPIlw33VZhVsLSzH6nn/vDRNA/CkjJ1OHaaYJsmkKws
 OS/qoifxGy8KbxGKaXG812Z0TonS+Nqbr3uXsS4xtJR1oqCELZygu7EKyW8ctkas7aku9oXUm8V
 ML3GjEKuNCXwpDHkIwIxp+9H46Q==
X-Received: by 2002:a05:600c:4e90:b0:47e:e20e:bba3 with SMTP id
 5b1f17b1804b1-4801eab54ccmr222724605e9.7.1768981895246; 
 Tue, 20 Jan 2026 23:51:35 -0800 (PST)
X-Received: by 2002:a05:600c:4e90:b0:47e:e20e:bba3 with SMTP id
 5b1f17b1804b1-4801eab54ccmr222724165e9.7.1768981894784; 
 Tue, 20 Jan 2026 23:51:34 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.12])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47f428ac749sm356728735e9.5.2026.01.20.23.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jan 2026 23:51:34 -0800 (PST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 21 Jan 2026 15:51:06 +0800
Message-ID: <20260121075106.401770-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1768981895;
 bh=mwIPbOci5oaCyF1RQyLgWXCMn5I/M1luBxKEhZcFZB8=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=PMVIdk8M5nP6R6TQOkf9K3W+c2O7BRLDw9uPgHWeeuQdfhqmCXm3N3B9jWHqRxTsN
 pyrig7sSr9nGypAGkOS1UUfZrR11+f7ypQ/jABQb3bhjclT68hKw0urWJW1sgnZEQt
 U1+gy/2xtc5eDtOV/lwmgLnbqcH/QRJiRqghvsoem8cA7Xb1eSCIgSxxzmF6y4K8za
 TH3jgbn5yiScO599fIqy/IBYUYQ8xK1PIzZoIRCywUIuh6Vnh0xLQgRgObq9nmEEP8
 siboIVmfb+TVH//AmVfV6tGljRJiYOoCc2LM25n3fOoJF/rsPjpH6iwJ3HLCHNY18w
 ndCOshDuYlzPhxr08CxmwyC5q7+CkO4Fq0+YvFngKYEnBjjQ5SKoiqgru2R8yOJWbq
 22eSVwBUj4H2u3zd0HE16buJaJH9GkniVK2QN2zi/A5/1nPkL9USjV9u+LYAdaCbpe
 sV+gHtw1cTYx1FqvuIEwUD3RvX6JbYIy31MU4f1+ztFswegTNLAMy36+1bfkbMWMbN
 vAdbtRy32lwKCZ9vZnmQn0it6gqaU7uI7+7ndv9zCfFRb51XkqCxIKHIx7XCeah1wD
 iS8HodvdF9uv2z6KtafDEziArjHqB7J71s4uOmUpoVXLMuNXsnPj8rVJsUuaVuawmz
 u4V7hpcUph5qMgqBginW5vPs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=PMVIdk8M
Subject: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,canonical.com:email,canonical.com:replyto,canonical.com:mid];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3B3B053116
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix race condition where PTP periodic work runs while VSI is being
rebuilt, accessing NULL vsi->rx_rings.

The sequence was:
1. ice_ptp_prepare_for_reset() cancels PTP work
2. ice_ptp_rebuild() immediately queues PTP work
3. VSI rebuild happens AFTER ice_ptp_rebuild()
4. PTP work runs and accesses NULL vsi->rx_rings

Fix: Keep PTP work cancelled during rebuild, only queue it after
VSI rebuild completes in ice_rebuild().

Added ice_ptp_queue_work() helper function to encapsulate the logic
for queuing PTP work, ensuring it's only queued when PTP is supported
and the state is ICE_PTP_READY.

Error log:
[  121.392544] ice 0000:60:00.1: PTP reset successful
[  121.392692] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  121.392712] #PF: supervisor read access in kernel mode
[  121.392720] #PF: error_code(0x0000) - not-present page
[  121.392727] PGD 0
[  121.392734] Oops: Oops: 0000 [#1] SMP NOPTI
[  121.392746] CPU: 8 UID: 0 PID: 1005 Comm: ice-ptp-0000:60 Tainted: G S                  6.19.0-rc6+ #4 PREEMPT(voluntary)
[  121.392761] Tainted: [S]=CPU_OUT_OF_SPEC
[  121.392773] RIP: 0010:ice_ptp_update_cached_phctime+0xbf/0x150 [ice]
[  121.393042] Call Trace:
[  121.393047]  <TASK>
[  121.393055]  ice_ptp_periodic_work+0x69/0x180 [ice]
[  121.393202]  kthread_worker_fn+0xa2/0x260
[  121.393216]  ? __pfx_ice_ptp_periodic_work+0x10/0x10 [ice]
[  121.393359]  ? __pfx_kthread_worker_fn+0x10/0x10
[  121.393371]  kthread+0x10d/0x230
[  121.393382]  ? __pfx_kthread+0x10/0x10
[  121.393393]  ret_from_fork+0x273/0x2b0
[  121.393407]  ? __pfx_kthread+0x10/0x10
[  121.393417]  ret_from_fork_asm+0x1a/0x30
[  121.393432]  </TASK>

Fixes: 803bef817807d ("ice: factor out ice_ptp_rebuild_owner()")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  3 +++
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 26 ++++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +++++
 3 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1851e9932cefe..2f5961573842d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7814,6 +7814,9 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	/* Restore timestamp mode settings after VSI rebuild */
 	ice_ptp_restore_timestamp_mode(pf);
+
+	/* Start PTP periodic work after VSI is fully rebuilt */
+	ice_ptp_queue_work(pf);
 	return;
 
 err_vsi_rebuild:
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 4c8d20f2d2c0a..8e5d93acaf108 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2817,6 +2817,20 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(err ? 10 : 500));
 }
 
+/**
+ * ice_ptp_queue_work - Queue PTP periodic work for a PF
+ * @pf: Board private structure
+ *
+ * Helper function to queue PTP periodic work after VSI rebuild completes.
+ * This ensures that PTP work only runs when VSI structures are ready.
+ */
+void ice_ptp_queue_work(struct ice_pf *pf)
+{
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags) &&
+	    pf->ptp.state == ICE_PTP_READY)
+		kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work, 0);
+}
+
 /**
  * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or rebuild
  * @pf: Board private structure
@@ -2835,10 +2849,15 @@ static void ice_ptp_prepare_rebuild_sec(struct ice_pf *pf, bool rebuild,
 		struct ice_pf *peer_pf = ptp_port_to_pf(port);
 
 		if (!ice_is_primary(&peer_pf->hw)) {
-			if (rebuild)
+			if (rebuild) {
+				/* TODO: When implementing rebuild=true:
+				 * 1. Ensure secondary PFs' VSIs are rebuilt
+				 * 2. Call ice_ptp_queue_work(peer_pf) after VSI rebuild
+				 */
 				ice_ptp_rebuild(peer_pf, reset_type);
-			else
+			} else {
 				ice_ptp_prepare_for_reset(peer_pf, reset_type);
+			}
 		}
 	}
 }
@@ -2984,9 +3003,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ptp->state = ICE_PTP_READY;
 
-	/* Start periodic work going */
-	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
-
 	dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
 	return;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 27016aac4f1e8..428f7f79343a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -317,6 +317,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf,
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 void ice_ptp_link_change(struct ice_pf *pf, bool linkup);
+void ice_ptp_queue_work(struct ice_pf *pf);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 
 static inline int ice_ptp_hwtstamp_get(struct net_device *netdev,
@@ -383,6 +384,10 @@ static inline void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 {
 }
 
+static inline void ice_ptp_queue_work(struct ice_pf *pf)
+{
+}
+
 static inline int ice_ptp_clock_index(struct ice_pf *pf)
 {
 	return -1;
-- 
2.43.0

