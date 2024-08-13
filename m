Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55432950C38
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 20:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E46DF40731;
	Tue, 13 Aug 2024 18:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKKwIEvftUIn; Tue, 13 Aug 2024 18:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F02704071A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723573694;
	bh=2l203xNbbDmQFlGySVGE48ihh5ns60KyrsTrGKa57JU=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4C1Qs/Em4vnKGldsm5G6OXIOuWC3XF7cioKAocoZtfR390iOXLpFs8Uj8qJYBGNXp
	 roVejqlbATWNPNR4+srBh9hAdI213k86QoFHUjK31jEs2IAsG+tukDlWidIFdp9ySJ
	 rYio9oZiOHuJ4BwiMGnsnGdTVkD1D+fCqH9Hp6BQNZtHEie8tFjpFPAAqJHs1V1fB0
	 o61PdTGqbh5FspBKgRSV65grDM/ETaDh87lhvq7jt4OQt577NmFPZgHxNvhW+XRzft
	 15Q6PciJtfgBHR6yTkmaLJhPYEtZVbiOQTOBpStEosLISRQOjAy7kGvQ7Up7YFprx5
	 p+VS7Fh0I2qYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F02704071A;
	Tue, 13 Aug 2024 18:28:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACF421BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AD6860703
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0pmBDAXeD2wl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 18:28:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1149; helo=mail-yw1-x1149.google.com;
 envelope-from=3uqw7zgokdzeznabwivfultbbtyr.pbzvagry-jverq-ynayvfgf.bfhbfy.bet@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E114660629
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E114660629
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E114660629
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:11 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-68d1d966ef7so124505197b3.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:28:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723573691; x=1724178491;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2l203xNbbDmQFlGySVGE48ihh5ns60KyrsTrGKa57JU=;
 b=Czg2L3v3dfLuSbFdjf3i9PMqzFQx2X6HZVtw05WFTO8YDfyhM3+hxGE3cRAEIMXpdi
 +fdf9jfXQvmmZ0eBItidIc+wRjmaCU7S54XYTsScbFKzyEEapzzi7dYSiCqUcSSKfuNc
 k+uarC7c8w0NdADSmEwozA+Pk2y2paIqw6pULhQvkRaItP00mBNQF1GJKmVButKPuYj+
 3fEx0xZnZoDp543dXKmzuaYC2gOoVqLWSfmGLVBpyrypS96Yv1Yx4L4Q+TLV38rZ4QxT
 qGLYXVJWADY7L17A7SGT0If52uG5tJdhCSXBncO7CDbQ+mkCk0cL1Lltvx8y7eKXWbex
 CBvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ/6xdeOVbzWhIELsA8EegJ3VE/0yVbwmIwWQ0jI1A3PNV3PpJJpDUNSg3JOA14f2j2SXmekqykdZYMlWJHpTikk3uSDNoF2PHTAt0FUUwcA==
X-Gm-Message-State: AOJu0YxdtSk8+dYlDaceB9g7UKt4HyjJWL4PUbSSRRlywfZ3EieFePbY
 ddHN0TR5CGReM45lZyGSaej+OgGTybtNgQYv1qpvE2fGMdWTlXR9IpUwkdfRa7rqYIpFfaESfiy
 s/26IElrXcHeRAEboeg==
X-Google-Smtp-Source: AGHT+IEjC2wQwCxOJBrBI4mvt/RtCshXJNtsKgTfCt4RfM09XRcGt/PRVIU4C6Llzti+4BVUOLQboVqmXWvBEOBm
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a25:c5d1:0:b0:e0e:3f14:c29d with SMTP
 id 3f1490d57ef6-e1155a94bdbmr13662276.4.1723573690732; Tue, 13 Aug 2024
 11:28:10 -0700 (PDT)
Date: Tue, 13 Aug 2024 18:27:47 +0000
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240813182747.1770032-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813182747.1770032-6-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723573691; x=1724178491; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=2l203xNbbDmQFlGySVGE48ihh5ns60KyrsTrGKa57JU=;
 b=0LqsoasRsKt+acqNkcWW/OcpI5RgX4lXMvJhm7+N1s/tfC7LMi+Qvq8aq4+WKdT3xx
 gsX6ItT523rg00SQ402VUcnXVNUj7v+ECnxS48C02joHWLE8oA84OMfj6/Tp9QrJ02H5
 +9WSge93Z9zG+ndjQSuYQ7TFaoKqcwDgohzN2JezZGleMqCr5yFMsftLBAzPi+oHXsdj
 LVl4IFqWXBoYQKqUCHa+mJR/QFeRk1dDg7mkBH/rUoDr22x2l3kbZQByHowJf62w6qeU
 +rMr5+EpVZFYV+XFo3SZSog4xinL7YH+j3frycPJngFT6h48JoYnbwhoeBDi5tGhpDub
 XlMw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=0LqsoasR
Subject: [Intel-wired-lan] [PATCH v1 5/5] idpf: warn on possible ctlq
 overflow
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
Cc: netdev@vger.kernel.org, Willem de Bruijn <willemb@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Willem de Bruijn <willemb@google.com>

The virtchannel control queue is lossy to avoid deadlock. Ensure that
no losses occur in practice. Detect a full queue, when overflows may
have happened.

In practice, virtchnl is synchronous currenty and messages generally
take a single slot. Using up anywhere near the full ring is not
expected.

Tested: Running several traffic tests and no logs seen in the dmesg

Signed-off-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 07239afb285e..1852836d81e4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -218,6 +218,15 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
 	if (err)
 		goto err_kfree;
 
+	/* Warn if messages may have been dropped */
+	if (num_q_msg == IDPF_DFLT_MBX_Q_LEN) {
+		static atomic_t mbx_full = ATOMIC_INIT(0);
+		int cnt;
+
+		cnt = atomic_inc_return(&mbx_full);
+		net_warn_ratelimited("%s: ctlq full (%d)\n", __func__, cnt);
+	}
+
 	for (i = 0; i < num_q_msg; i++) {
 		if (!q_msg[i])
 			continue;
-- 
2.46.0.76.ge559c4bf1a-goog

