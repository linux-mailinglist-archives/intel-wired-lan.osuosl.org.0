Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLQsHbNDq2nJbgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCCA227CD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5A3F83F06;
	Fri,  6 Mar 2026 21:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKIQCI6JYqLV; Fri,  6 Mar 2026 21:14:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5567383F14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772831661;
	bh=pMTRV/w5uF1FJW7BPbinMB5ysdrzJZZCY3sqGJfURo8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IWVAY4Bn/ARn5NWVyDUT3SJb1XWem1eK3u3Ldm8uF6Y6Rkk6g8Sox0phrdl26ufUb
	 MpZUE13qE+e+Jltu+o9ZNPeR1eoDcDjHD59wiuBYU+t5u0lhfSITVgYC7/Yybe7Rjc
	 47bTMA+EcB26xiSwhO4upJIlKpyKw8mjLbda7EZHmIbic5QCG4rJ3XY54i1I4NzLBs
	 pV6dheMWngaIdSuR3F3SBOONX2JUZA2THIGexiUnDqvDA2CD2c88kR7Dk6fDunySo0
	 dIMMsscvt6WRLXrSCx88ttip2NqJmRH0DB6ygXMx9yBxUpPqRLGelJSyIEls3ySoF5
	 hvdvvYFG2b0Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5567383F14;
	Fri,  6 Mar 2026 21:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1ACF223
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3A8E83EEE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WT6il_oZC_lB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 21:13:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DD08083EF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD08083EF9
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD08083EF9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:26 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-5a13e1cfa45so859373e87.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 13:13:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772831604; x=1773436404;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pMTRV/w5uF1FJW7BPbinMB5ysdrzJZZCY3sqGJfURo8=;
 b=EU24cc4K781U2d7Za1pkUZKqz9TLW9ZXie4R5maik4szMDwEDxkVVjN9Kn3V9xpQC8
 ezPsjCz/XkfowEAH+DFTNIRFaQQASm1uN4GssayTSvZWwLh4CvtSratG9gMHCJu2AhgP
 LeSVA7bQ19HEa+jp6DaZdYNgu3obnqfgrbr9ohdGxG7OFbRQ4p1m27icKldQg5aq39Dp
 SJJVvi9JSu8rnbHo1Yx4zWaccLXmi+9qE6a2aO32jJ7WHOqSGGS38MCeBXHvhoYYSloa
 vE3DYjW8EuutnD7vsyF/CyCUbbnlwavu2Chhk6auqMIWQpJntgN4A7M2OcpZxLk/nMcE
 nQKQ==
X-Gm-Message-State: AOJu0YxMxw7lvj50v9d7iQztDrZ/+BrJ+k6gYP/PYXO/CCS+hvtE/ZnH
 Kh2pbUDNgTelb1JwEOkl0sojzvouUGGTh3aDFlbM4W8sD0SLhWKhFaBqxKSz25Xp
X-Gm-Gg: ATEYQzz+f5w+oiWYCb0We/tMkVdwz2l2a2tHje7pH/GmEvQb1po1jVSRloHZA5ykenM
 HKxtzlDYF62qN4Gq75s1UrKirUSJRV/OOVdY3CLZXDVUHiewKRKsORftMMmBjHlZECDJ5s3ysfs
 NPb6zkqmPEsAfOYK6bl9Kvxl6f/PHfzK9e4V2ab+SvNiOJYGYdXi9ATe7szEj49YgFsuVHUkz/9
 aLcemGLZbgTikaNwjDO3FfhPYdChzbDLPrZhVR3zF1TIjXuineVXuTOlJy+bblxAF7sHNEyKj7Z
 DbsvuHNh4OukPetHO0HL3cGepe84plDLoiLCOHzFDQlnI5o+pzyxPV+FGQBK5TTArB7HPlNiI8A
 lY3115zNA9D6rbbtG4jldFwCQyV3xy9zcTjJ1Y7rmYexMfHH+cntxyF7I/bdwfsZlowtAP3japZ
 d5voT8
X-Received: by 2002:a05:6512:3b23:b0:5a1:2f7b:b5b0 with SMTP id
 2adb3069b0e04-5a13ccd4283mr1149039e87.23.1772831603857; 
 Fri, 06 Mar 2026 13:13:23 -0800 (PST)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a13d07e0f1sm554433e87.58.2026.03.06.13.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2026 13:13:22 -0800 (PST)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org, kurt@linutronix.de,
 maciej.fijalkowski@intel.com, Alex Dvoretsky <advoretsky@gmail.com>
Date: Fri,  6 Mar 2026 22:13:10 +0100
Message-ID: <20260306211310.1213330-4-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306211310.1213330-1-advoretsky@gmail.com>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 06 Mar 2026 21:14:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772831604; x=1773436404; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pMTRV/w5uF1FJW7BPbinMB5ysdrzJZZCY3sqGJfURo8=;
 b=fL96AjIVJyJs6dF7jytg2fq6OwqYUz3B3MHRkK6ynmGh0W6Kzz16KUAFRb8VQXYcH8
 MMf8StARyMJMvojK1x8Q7kfY9PV/E9e6qlTV/0O71jtDrcPb9OyDHjJPX3t+Oswirex5
 l8b2Iaa9GCRo2ePCIskZJE6AGWRQZDKMf45VOt4RvnZZZzJWycZzZNO+Q5+KilaSRHok
 9uVSraELHXiGhvcz5+hrKmxELfTxHPhkR36hPdlZIRnRivrd5uWJnvYoYfKUNsudZK8c
 uj0mM8TMNk8mp7Zd/88csEv8KFBvQhMyeHHJ+SE6YkM/ra8gqFuonDrnf8x4i+8xJxKR
 FiXA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=fL96AjIV
Subject: [Intel-wired-lan] [PATCH net 3/3] igb: add XDP transition guards in
 igb_xdp_setup()
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
X-Rspamd-Queue-Id: DDCCA227CD5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

igb_xdp_setup() calls igb_close() + igb_open() when transitioning
between XDP and non-XDP mode on a running device. This has two issues:

1. ndo_xsk_wakeup() runs under rcu_read_lock() and may still access
   the rings while igb_xdp_setup() removes the XDP program. Without
   waiting for an RCU grace period, igb_close() can tear down the
   rings while ndo_xsk_wakeup() is still executing. Add
   synchronize_rcu() before igb_close() when removing an XDP program
   to ensure all in-flight RCU readers complete first.

2. The igb_close()/igb_open() window leaves trans_start stale from
   before the close: the TX watchdog can fire a spurious timeout and
   queue a reset_task that races with igb_open(). Add
   netif_trans_update() after igb_open() to refresh the timestamp, and
   cancel_work() to cancel any reset_task that may have been queued
   while the device was down.

Note: cancel_work_sync() cannot be used here because igb_reset_task()
takes rtnl_lock, which is already held by the ndo_bpf caller. Plain
cancel_work() is sufficient: if reset_task is already running, it blocks
on rtnl_lock and will check __IGB_DOWN when it acquires it.

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Cc: stable@vger.kernel.org
Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ddb7ce9e97bf..9ba944bf67b4 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2913,6 +2913,9 @@ static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
 
 	/* device is up and bpf is added/removed, must setup the RX queues */
 	if (need_reset && running) {
+		if (!prog)
+			/* Wait for RCU readers (e.g. ndo_xsk_wakeup). */
+			synchronize_rcu();
 		igb_close(dev);
 	} else {
 		for (i = 0; i < adapter->num_rx_queues; i++)
@@ -2936,6 +2939,14 @@ static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
 	if (running)
 		igb_open(dev);
 
+	/* Refresh watchdog timestamp after reopen and cancel any
+	 * reset task queued while the device was down.
+	 */
+	if (need_reset && running) {
+		netif_trans_update(dev);
+		cancel_work(&adapter->reset_task);
+	}
+
 	return 0;
 }
 
-- 
2.51.0

