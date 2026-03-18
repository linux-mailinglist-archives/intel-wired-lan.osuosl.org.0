Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLvmDX/AumkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:10:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A06E2BDE83
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:10:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD40360A9F;
	Wed, 18 Mar 2026 15:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sToGhH2yEpQN; Wed, 18 Mar 2026 15:10:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C3B60AA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846652;
	bh=l3RkPnsLYSDbKLEv/BKhHIWIll2IYC1YAGuzM3YXuSw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u1ZTZnEXa+/5AdOPQavqaydfXe01OH9MrQHDFAReOy/sEGrXYTNXjvPOjcLvMfo3W
	 nJcjrYcN2mxk6YXi9aY29hnhj4yPr3n+tCu/ul2Cds6TVfZwQsAk0Sde+c95er8DFA
	 eQi3ebT9XYa73f6Y1BbQc9wcITfrJR6fTPonmtti8dEaHp27eL0oB2Kwip6oyvkrVN
	 srDfHv/NiixAgaVVMnzpcKUIUeuKubLRzhJ2wwBzzZgCQBhcyx388VnOmti+H6mTUq
	 2B6+uHE6pihzltQ2taxuQLAbzAbVWVeZeCYrHiygqCb+oqDe/JK312NJ09DdJ4D9Vh
	 ex+zglYS9lUXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C3B60AA4;
	Wed, 18 Mar 2026 15:10:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5C8D1BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6E5C60AA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:10:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUBJ80GvWn8l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:10:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 101D760A9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 101D760A9F
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 101D760A9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:10:49 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-829865a8471so20442b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:10:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773846649; x=1774451449;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=l3RkPnsLYSDbKLEv/BKhHIWIll2IYC1YAGuzM3YXuSw=;
 b=Wx3nUaMOGNh09aq04kWuciLWuYr0W5jr1w4OAo0/XSSsBAG1XhL9DAVsz2MsDR266f
 ClAB7xZ3b1xL1BgiNtl90FuKEC6Og6ziCGQmt1vLScwNIde64quzD/SHZx/fv6YR7e+C
 G4AlitdoM8R8P6t+ThIDLOY/FLSctcpZtyQLHltQ478gZj3q5C7TQIfPGg14Dk3luKLI
 GWfL2sDWZfrM2hc+2L/6qmR7A7qg6+7LPAg4+l4FRlXS1c5vcjx3deCedjXNQSM4hbUM
 gaRcOJUxGdyq/4SwuMQ4IaC7RNFS7z8b8WRVOZXvufsDkpmtE/3k2UjIDgp83mMeAd2p
 gVig==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOPrfiHymXcAi0OQgWBiHQG6FfxKVA5NpZBgH1RubiHtw8n/JoMkoz7Kft4W8Cq7lXsg7Y706ZsTktpmPgpcY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxXKlb216EFs4Rlf4PE9qqqsrLggyrvnmTEsdhnm1XBnLcQ9uAe
 igsjYnBNZq2MJhiMjG2OVnBfzE33neGXr4lhbBT9OGp0U8vamLaeiwPM
X-Gm-Gg: ATEYQzwj+tcyYyx6TjviLmkAAo4078zAdqU3KzuRHc6qzzy8+bBZP0VXI+2CWf4MqrW
 l1zgwRj9x440Aeo1wb4LqGDb2JYvBXUH5DQIxqXlhs4HP80CTFGN6fnB5hzUzzyi/E9IVoZBPkR
 dSqY/BAbrr2DPN9Z5l9CZs8R6tVX8m97tIg/869w70vOYUwS9/MuZGA99lmDNXj8HuyXFMMpff0
 H42AlolvdT+JgqU0z2oiBr/0u1nw0X86HAAV1FaijQfwW19u9SidqYxDniAonXHBsxGdZGsuEHp
 3m2xOO+F2oOSFCf/+Xucs5s217CMQkbf0INEaWmBkSQrTPKMSS74Sij6pVg+PQ6OY1M23jj79d6
 PoD4ExPuEbcyM5Gdl3n5YC4TEKqtQ87FmkdGKU+cPw5VWPlHGk4Xhi+6HwtRKtOATkmHL8jY4s3
 CwmiGVoArCT+OY0zA/tklf
X-Received: by 2002:a05:6a00:3698:b0:824:9848:b020 with SMTP id
 d2e1a72fcca58-82a6b26e7a3mr3339406b3a.52.1773846649082; 
 Wed, 18 Mar 2026 08:10:49 -0700 (PDT)
Received: from lgs.. ([223.80.110.53]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82a6bef2fdbsm3090533b3a.56.2026.03.18.08.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 08:10:48 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>,
	stable@vger.kernel.org
Date: Wed, 18 Mar 2026 23:10:28 +0800
Message-ID: <20260318151028.634828-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773846649; x=1774451449; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=l3RkPnsLYSDbKLEv/BKhHIWIll2IYC1YAGuzM3YXuSw=;
 b=XkL0Y9Rg7SPbsFzBloM6dKjVJOm2MWGK7m0AyplSSiO8HsHltXhh+/CYf637EO0R+6
 n3UwMHWsgbUpJRdFmFtTNKDRbgAFEI2wnbF7FyQXoWm+AVRwGMbHbint57vZGVOD82ok
 GMTX5Y0fUGv5cxzk9tUFsTlkzgrjpWkSsYhuAsKtb7yuLyT7lsWbtKYGMw2lZTYJjb+L
 PVMv2cf2M7uF3VmTF3MAuHgSA87dbxL4jYCMkjEXMbA+jcDdKzptifjVbSRKQ2sbhdFA
 JecaGpFJIdjM6OoDpQnQm1nhnn6cjRgH4ANxPQ6ILiUbfhAiSLpb1dyosqKMt7hij/UL
 88rA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XkL0Y9Rg
Subject: [Intel-wired-lan] [PATCH] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:piotr.raczynski@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9A06E2BDE83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When auxiliary_device_add() fails, ice_sf_eth_activate() jumps to
aux_dev_uninit and calls auxiliary_device_uninit(&sf_dev->adev).

The device release callback ice_sf_dev_release() frees sf_dev, but
the current error path falls through to sf_dev_free and calls
kfree(sf_dev) again, causing a double free.

Keep kfree(sf_dev) for the auxiliary_device_init() failure path, but
avoid falling through to sf_dev_free after auxiliary_device_uninit().

Fixes: 13acc5c4cdbe ("ice: subfunction activation and base devlink ops")
Cc: stable@vger.kernel.org
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 1a2c94375ca7..ec6020338b9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -305,6 +305,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
 
 aux_dev_uninit:
 	auxiliary_device_uninit(&sf_dev->adev);
+	goto xa_erase;
 sf_dev_free:
 	kfree(sf_dev);
 xa_erase:
-- 
2.43.0

