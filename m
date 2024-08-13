Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0E3950C34
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 20:28:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C423406DC;
	Tue, 13 Aug 2024 18:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uoeSA3wM1DIE; Tue, 13 Aug 2024 18:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97341403C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723573684;
	bh=0FUwl2486l/jeLoGKzs9tmDqeNS+tAHZe3YD3ALXm7s=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hF84nMOvzGP7f0l/ckmy1/IX+tMYNcekt6Bk9dbRKDe/rBAYV3yCKVoycdwzw/cc8
	 MLix822/UcEi3AadgSKAAeYiEIxG14Bkw7mqWC9FSrnLOTRzDt/VYULXN0ZcudkOKN
	 T6DvkDbLQ/2ui0f+64b33FVsKXEr0kahA40K9xn3Uydbgc5MWOcmpqJMZ1+gLs9adZ
	 IKcWq/Ptsc0icrTVHuQ+HHUPs3Aaa3xhnIWpdlVZeWxNvzctJah5sehYhrs4qDhaBL
	 Op//xqszVe/irjfG1spHJ2bVRzKGzbU63FzEj4ffiudCyAKdX/HyAXQJ7/99CVi1S+
	 HSWPaX9VEoIQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97341403C2;
	Tue, 13 Aug 2024 18:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 097941BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBBDD60703
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ER61vlrYl-l for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 18:28:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b4a; helo=mail-yb1-xb4a.google.com;
 envelope-from=3r6w7zgokdyyocpqlxkujaiqqing.eqokpvgn-yktgf-ncpnkuvu.quwqun.qti@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2065060629
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2065060629
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2065060629
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:00 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-e0e3eb3feaeso9623422276.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723573680; x=1724178480;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0FUwl2486l/jeLoGKzs9tmDqeNS+tAHZe3YD3ALXm7s=;
 b=sDJsnwuksss9Gq3lbDkMB6yBGafdZ02tu2mQ9CHh8s8GD0tdxTLVVxGhHRlDTD1StR
 5LmM4nyQiEb1mto8mNPusB9lA+cKDQU1nd8JBm+JwLSalN5Fx8J/uY0J61rNwkw/X0Re
 zvO7BlkdCKFfQW2G+on1aiWlLZXo18lzGrWwz7Xc7UZzpZTRSQMPljfEFNMIna3ByEgP
 YJ46U1nnekBzL70CQvxdKk6ULTWNywFXtwIQWxKcr5xItz8fUsJJxPkQ3+nupV/5tjow
 YGWPj1fv6zReBOd4r8zLv9xz4+TzceIif65oN/AL7U/YR8uShY9PuadIGSngauxytKk0
 8tgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzduJA5pN0K57kcEtJdY4U3HZyyVfkT9WUQAXMrzHDtxOrfJVw5dfM5UU9I6E0vCHo1RkQmKBikMQBYEvNJXja4kHHcySCa2CyOx4r3VVr9A==
X-Gm-Message-State: AOJu0YyoQrM7a+2My5o/WbC22GO0Y3X+eRqVE5Nf8JhWKcpZwqabVc6v
 fk8sv3335+PFRE6PPBBNLRqkzlkOvwbpnXTJ6yp2005ki3kEcct2mkR2MswfhJVwZ0W8I+rUG0n
 8RIG+u38xnWqMwD9Ung==
X-Google-Smtp-Source: AGHT+IEtLel87VI5FBoqzbu00ocynCKeHOTMNEky1uO+1XuJvYBO+DGemsm7Z+Cht2r0k2SIU65ZGd3kOoHSPEw8
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a25:a223:0:b0:e0b:f1fd:1375 with SMTP
 id 3f1490d57ef6-e1155bafbf9mr618276.10.1723573679918; Tue, 13 Aug 2024
 11:27:59 -0700 (PDT)
Date: Tue, 13 Aug 2024 18:27:43 +0000
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240813182747.1770032-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813182747.1770032-2-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723573680; x=1724178480; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=0FUwl2486l/jeLoGKzs9tmDqeNS+tAHZe3YD3ALXm7s=;
 b=iO9RGx3SGXj1X/+EKvD/pMST372pJPiJkTdLobvnEyjlKeZx99dEgdaDFo22cx8e8G
 EUfwG3dfW7euXyQKI+TR8kitonyvM3CFdJjE45FqYvO/6UgfJ0m1Ee8XC34LW9uFkc1m
 SAJdVu/XfQhRDy5DSPpehpBvn1g4Z0Q9yDxjcj3lQVC7XUd73cEsuqbrrBn0sep5ALwl
 UfMu0l4QCWDHucFI1vzH6AreI9arCOuiGbqzSisRFOiUkp+hlj2wtgToSSOzGPfbvjSr
 E7MkV1hqdHIG+j1R0qdbrbDJoKWbc8OqmqBU/KRW8b5nTUfaouFVLOsFIzAr0sNltPT4
 7N6w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=iO9RGx3S
Subject: [Intel-wired-lan] [PATCH v1 1/5] idpf: address an rtnl lock splat
 in tx timeout recovery path
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adopt the same pattern as in other places in the code to take the rtnl
lock during hard resets.
Tested the patch by injecting tx timeout in IDPF , observe that idpf
recovers and IDPF comes back reachable

Without this patch causes there is a splat:
[  270.145214] WARNING: CPU:  PID:  at net/sched/sch_generic.c:534 dev_watchdog

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index af2879f03b8d..3c01be90fa75 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4328,14 +4328,26 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
 {
 	char *int_name;
 	int err;
+	bool hr_reset_in_prog;
 
 	err = idpf_vport_intr_init_vec_idx(vport);
 	if (err)
 		return err;
 
 	idpf_vport_intr_map_vector_to_qs(vport);
+	/**
+	 * If we're in normal up path, the stack already takes the
+	 * rtnl_lock for us, however, if we're doing up as a part of a
+	 * hard reset, we'll need to take the lock ourself before
+	 * touching the netdev.
+	 */
+	hr_reset_in_prog = test_bit(IDPF_HR_RESET_IN_PROG,
+				    vport->adapter->flags);
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
2.46.0.76.ge559c4bf1a-goog

