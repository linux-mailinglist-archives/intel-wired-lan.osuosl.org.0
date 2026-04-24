Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIlLCLPd6mkNFAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 05:04:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D340459474
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 05:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E47612C6;
	Fri, 24 Apr 2026 03:04:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 84ys3UPTOObj; Fri, 24 Apr 2026 03:04:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5204A612C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776999855;
	bh=fE6/Ks26kVTyFQ0eNTbStdq7kzWJK58GKRv4GCZ9rSE=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=gqn7daABuuNRpRFn58B60NgOLtDkRl3ejVGMjKyjf/aPMUkbGvCq7fDSgRtn1voKU
	 7T9NoqXAGQBqS4eIxgJJ6aX/nCsyl3BZuajfhPIvMqcCSI2wGzqVrp7R/aOhZMKoM9
	 JrWqBpy2GLtl8zX60qT35MkH97Rm/gDOUznYHLdWodZkI2GB0FpDQjxZ2GaI+ut+fM
	 SqM5qPV10jq8WbiZFnsXm2PIhAFMLZeL+k3+WcHr+vy0qx6rk3dbtVJl2WykRdiCfv
	 K3hUoxu5gyPzBJsBOOiF0v1HmOJNFmshFB5ArSrYEVizQd/8sBynaiSMTWjex1YTvH
	 sQB4EBa9mxksg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5204A612C1;
	Fri, 24 Apr 2026 03:04:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8BAB24D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA2FB612BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:04:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1GOKvlnqeJq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 03:04:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E68FA61149
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E68FA61149
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E68FA61149
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:04:12 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 79D393F9CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 03:04:09 +0000 (UTC)
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-2b241be0126so144373525ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 20:04:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776999848; x=1777604648;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fE6/Ks26kVTyFQ0eNTbStdq7kzWJK58GKRv4GCZ9rSE=;
 b=MNrEPANCAZ1shpGbN3SwfaTeYpXmWg+OOtS/03aCuDD4XeoEw5RlonUhR8fz8FJVQL
 hhL7mz7s4vv5pi82LTdyKlpn5u4wAK61oUZqWStvXELJdemc6O2NVmOp5XjA8M8pr+sd
 YEBXX9SAmExyQ4KLlG/CpQrj+fmNkNschOJE1mEFddaVWRnwrG1JpZ+j83zwp3SWUlve
 Uky2ozl3KvfiWN5oO/BNHFFDugDbgviDnll/ERmlcWSaVzyaXvIMNd3i+ZaWMksD3yRR
 ZkN7ES7td13LkFTy9IyEhktx4+jPynEyVfN/zo1S0BXEDgY8JRQwT8l4KqyDWOYQjOAi
 wtxg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/UWDKB9sb2VygYIIFVxWJcqhPn8T0GFwSGESj8ubbMMeNvVQFqZN9WRTShERIgKcUu0n5YR3j3MEgzcMM8rC4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxl8oPEfU5QrfnwMcpvQTcfgFvo4vLduToRsASVTkoKaw1vPUf6
 EPyqaWgCZpz3PlujWSkbvMCp4il1bhw0jifEirHFLBV3g/xqyy53OsaVKc8sgNdqBFq9w1abZgr
 WanAXRWc6NLCeiOviQTfFmdyflZ/4T8n1INjYrjbGx6Q3xxU/SmrAK2Uy727v5rtH08S7kbXmBJ
 8SVXVnAZhNEmc=
X-Gm-Gg: AeBDietNdHV/zRGsvXJDMRgLZy+oN24YQXo+7NdURtuMWQK3eZgd0N4vxz5oh6KROgG
 TkBoMW2Y52X3dzds+lKbQZTONg7aJ1GBeFcxKM3pyA7cFlDZHqlNNJrx3hzJbuJx80mXHGFKOxS
 JTNiv83jluVfE3SS9zfCzTldnynjTNNf1JONrFfSN8sngQGr8koNEpMKFmacjOtTfMUVesJmiKZ
 9D1G7tfYV3wsgbpI/f/EH8jaWeN1kz1/aSGlQDgXtQCZx7GVFdAYnj7+1gg5bzp0JWu6O6nazI3
 C0wajU5L2erMOfDVSwxEgEes850ATCSe3Sm7I2mXp0GLk2ntoTVKAEiyBElPD/swIZWTzyijao+
 8evWOV1GvyeWAwqk1uKVM7/B2YEKvOJoZpJXtyVjhY9SnBBR2
X-Received: by 2002:a17:902:ffce:b0:2b7:ade8:2407 with SMTP id
 d9443c01a7336-2b7ade826f8mr55540105ad.19.1776999848123; 
 Thu, 23 Apr 2026 20:04:08 -0700 (PDT)
X-Received: by 2002:a17:902:ffce:b0:2b7:ade8:2407 with SMTP id
 d9443c01a7336-2b7ade826f8mr55539845ad.19.1776999847810; 
 Thu, 23 Apr 2026 20:04:07 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b5fab0caa9sm206428625ad.40.2026.04.23.20.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2026 20:04:07 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Kohei Enju <kohei@enjuk.jp>
Date: Fri, 24 Apr 2026 11:03:45 +0800
Message-ID: <20260424030345.1140665-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1776999849;
 bh=fE6/Ks26kVTyFQ0eNTbStdq7kzWJK58GKRv4GCZ9rSE=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=eFBn2lKVreUFfWrnDbTwASagI0zYxXvEMBpF8AxQlaJDNqdlP+rsv+SFZxj7YV2qd
 INlS3eI0SmTGc+jEiOc119bfWdVY75w/T3vzW4zk2UY2zmRoSVD1zbXpPq6R0GYbAS
 toncHdfHEpo9F+kZwJvNucOe3uTpOgDuSG9N98Y/dSY3AhKgUb7eHzhw2pnCzTifbB
 nE2phv8ey3gfrpbD8HPvPL5c5fx0MfKGJFkJXygqkUOgnQjvsAUz1KnjazX3zf5YKi
 TuGt8FmFnNka7mbOaxgyqbl0yj1s9ZhIoZDlKCusppacNLC0qF2Cs08mLiIA8czdsr
 Nlyu1SanV1MPAkRtW5tNiW8ioNszq5DsPL7y9F2wEN/mQ1P4jwOTREsc+VtTQBg3+/
 NN8v6eT8dJnBDVe9+bcB9w4qSdLLTU00KxJjR6gGQ+sHnnfecgW9t7YtMMYzJm/Hur
 IpYG3LHizyd7KgRyTj8fxwm62Qcb9jmMHnwO6OYCLVdpPMdoDbjwOv+HbSY4xkD7la
 gaddGyugrtVDk8AeKdUWLRR9MaiRXVtXqMjRHlGtMXECmSBV5CW+1Ufu6Lck0s/Esj
 /f3X5Jj6ymbQQoZz4cI+pl+6nivpQ0jehqNsaLGH1L1Ay50EvRRVi6VFk2DtWDGi+w
 NysMQ3q6HDnXiKxQkFaOH3YM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=eFBn2lKV
Subject: [Intel-wired-lan] [PATCH v2] ice: wait for reset completion in
 ice_resume()
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
X-Rspamd-Queue-Id: 9D340459474
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,canonical.com:replyto,canonical.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

ice_resume() schedules an asynchronous PF reset and returns
immediately. The reset runs later in ice_service_task(). If
userspace tries to bring up the net device before the reset
finishes, ice_open() fails with -EBUSY:

  ice_resume()
    ice_schedule_reset()          # sets ICE_PFR_REQ, returns
  ...
  ice_open()
    ice_is_reset_in_progress()    # ICE_PFR_REQ still set, -EBUSY
  ...
  ice_service_task()
    ice_do_reset()
      ice_rebuild()               # clears ICE_PFR_REQ, too late

Reproduced on E800 series NICs during suspend/resume with irdma
enabled, where the aux device probe widens the race window.

Wait for the reset to complete before returning from ice_resume().

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Cc: stable@vger.kernel.org
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
v2: reword comment to clarify best-effort semantics (Kohei Enju)

 drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5f92377d4dfc2..a81eb21ea87c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5635,6 +5635,15 @@ static int ice_resume(struct device *dev)
 	/* Restart the service task */
 	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
 
+	/* Best-effort wait for the scheduled reset to finish so that the
+	 * device is operational before returning. Without this, userspace
+	 * (e.g. NetworkManager) may try to open the net device while the
+	 * asynchronous reset is still in progress, hitting -EBUSY.
+	 */
+	ret = ice_wait_for_reset(pf, 10 * HZ);
+	if (ret)
+		dev_err(dev, "Wait for reset failed during resume: %d\n", ret);
+
 	return 0;
 }
 
-- 
2.43.0

