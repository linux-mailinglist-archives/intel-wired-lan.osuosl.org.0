Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C838395F8C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 20:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56661405D6;
	Mon, 26 Aug 2024 18:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHSJkA_qEi_o; Mon, 26 Aug 2024 18:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5920540520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724695842;
	bh=nTNZrCkUq0xQZGeO6ycrGRNs3S9b409ZMww8HwDIlNs=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q1slZoCOhHbS6uEHfcaz+dSSKPJhMWcIdxogTY4TQH7MFgUZ6ldjNoT3a096ViUqA
	 KJA9HZyex8dWJL22ptrto67HD6ZWkMSF7ztbVan3Z3Sqkx3DmgXusvaehRK+EVR3nu
	 MB0QyHi6hV7qjdNyjNz17HxDD4XEdzBgDyHPb5WVohDPu/+rHNVkEFnJEIM0YJw/M5
	 /oB4OfXNfEXCFkC6csUGmif5QVO/AXbAJzrL4jGx2Xa0S58UpNEi0sCwYDn9RyzE/1
	 adh/l4ZnJQV9tSAmGYzwiILIJ7ET1+p6qswBqGjEDK0ibd4s5ElJaJjON0SLIBoDLD
	 ytSJJ4Mbhr9Rw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5920540520;
	Mon, 26 Aug 2024 18:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2240A1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B7CA60632
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1wvIkiRfHnf2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 18:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1149; helo=mail-yw1-x1149.google.com;
 envelope-from=3hsxmzgokdxkbzcd8k7h6n5dd5a3.1db7ci3a-l7g32-azca7hih.dhjdha.dg5@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55EF960067
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55EF960067
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55EF960067
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:39 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-6643016423fso93146177b3.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724695838; x=1725300638;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nTNZrCkUq0xQZGeO6ycrGRNs3S9b409ZMww8HwDIlNs=;
 b=nbZt7bGnJr8Y69J1cXaetzLQFJ8pF51ezg8CxSF1KcER1itPG4EGPcvpVuY7M0sL2k
 coT8unMJNlI8dWpFW02z8E9uq0JgFtUh9ZrvSbK59udmrKTSJgHZ95crV7oD32CkEXFY
 wFmymaQhwX/G1R8ikIxBsCFAkNPnXYXzVL0RWDrc00tc7CnjKldiNW/AnXil6qFvErwn
 ds60yKJEZEXYUWaeFgqJHl6OTBJvLfN9z3C9cfTK78P+Bif3v9DsR60QXoBHykjYtlEl
 EMHm0+Oy079MPhHWsSK8niH3cnU22/7ivEIpxeVj+J5fdIZRixCztfOrp9UO/AUwgrjH
 bwKg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNyNzWvD6hR+EYSTCa6PQGHuy0dvVUZV/zGfVcRuSYoOxtfaBimA9EtxY0hrlF/CnGu60HTDY1WWJMiBkSqr0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywoktjc1R+j6JOdDvooZl4cRFZo17B/id3fW9jN4ymwxnj31CfH
 7IPdldhYfnP++udGC3nuoxJbiOM7LPz33lCL/oaUCgqY89/5v/5gLyDUGlIphKG+xGiURpM04du
 0OIb1Y0E8n/paoC/yIQ==
X-Google-Smtp-Source: AGHT+IGW2j9ktjrj8oF1PNYZ6a7M4kWNRrFjbvWYuEMXzqV8XYqAMNE4C7OSAkSZQUqUASb5aIzsnNsN20PmRRO7
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a81:8b4c:0:b0:6b9:fd00:95cf with SMTP
 id 00721157ae682-6c6288b107amr1615827b3.6.1724695838182; Mon, 26 Aug 2024
 11:10:38 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:10:29 +0000
In-Reply-To: <20240826181032.3042222-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240826181032.3042222-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Message-ID: <20240826181032.3042222-2-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724695838; x=1725300638; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=nTNZrCkUq0xQZGeO6ycrGRNs3S9b409ZMww8HwDIlNs=;
 b=WQld2ciNaMJsKmYftlnGmXrYhaq+IMp20+EYcgo0ziGMBAeBP2+ckNl8IiRNuAP8BX
 nilJhJXuJcrybfeLG0CxEB1C5Ej4blfEgeLaXbJQ2cAAxv/DUaeGu6lRQBAuB2TLJxFr
 Sf2s8tFw4TQNMTMQ4wBmrgC9t9dJkcsGSIoK4PwSVQNt9AEGQrRIhRJamtAY4unAqvtZ
 moQDCtUhH/aUCBoWI64X0feLKsWU6feOwSfGBTmfeGWsZRij415VKlTRfOw04UGPrLnD
 79WF0Y1dJ4hicvXHvPfeWlOnx+lppljmIzEbwCQdUuf062l3R/bFzCvYd+OiMLxalZzh
 mfAA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=WQld2ciN
Subject: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 1/4] idpf: address an
 rtnl lock splat in tx timeout recovery path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, David Decotigny <decot@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: David Decotigny <decot@google.com>

Adopt the same pattern as in other places in the code to take the rtnl
lock during hard resets.
Tested the patch by injecting tx timeout in IDPF , observe that idpf
recovers and IDPF comes back reachable

Without this patch causes there is a splat:
[  270.145214] WARNING: CPU:  PID:  at net/sched/sch_generic.c:534 dev_watchdog

Fixes: d4d5587182664 (idpf: initialize interrupts and enable vport)
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index af2879f03b8d..806a8b6ea5c5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4326,6 +4326,7 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
  */
 int idpf_vport_intr_init(struct idpf_vport *vport)
 {
+	bool hr_reset_in_prog;
 	char *int_name;
 	int err;
 
@@ -4334,8 +4335,19 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
 		return err;
 
 	idpf_vport_intr_map_vector_to_qs(vport);
+	/** 
+	 * If we're in normal up path, the stack already takes the
+	 * rtnl_lock for us, however, if we're doing up as a part of a
+	 * hard reset, we'll need to take the lock ourself before
+	 * touching the netdev.
+	 */
+	hr_reset_in_prog = test_bit(IDPF_HR_RESET_IN_PROG,
+					vport->adapter->flags);
+	if (hr_reset_in_prog)
+		rtnl_lock();
 	idpf_vport_intr_napi_add_all(vport);
-
+	if (hr_reset_in_prog)
+		rtnl_unlock();
 	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
 	if (err)
 		goto unroll_vectors_alloc;
-- 
2.46.0.295.g3b9ea8a38a-goog

