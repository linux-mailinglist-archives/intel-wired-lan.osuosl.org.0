Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FA5986610
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 20:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C1184AD7;
	Wed, 25 Sep 2024 18:00:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JMEP2kjCa-Wl; Wed, 25 Sep 2024 18:00:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7927084AD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727287231;
	bh=ty8ZvXn5cWfdvsrzl25BDp4ju+D4IYBdiCKgGBJ2BYY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xvvLdKKx5WATj8E4iTPHnMeYTkzo9mDEnYLm62MUEDpeQZYufoegimPekmP6k48lw
	 lluVTJYeDiibDvQbnroTIAKo40NEeLrd89eRFxMxpB9XoFBN+9oMQkHJpwEqGRk5+N
	 NHD7DqPrWcd1FTCF71EhdxmdYYj9bNrCkTbgCF5QaL/5Lw/Hk4LgnIPWDmT3oTwzUV
	 ElMWkuXMpTcSfdNo5cmJXMNXrdYUq49QCeANUBoLaVuPaDtF70ililsDl6Lqlbnorv
	 wgynlu9SChGh0RsE3FVMfLzXOiOSIj+qxZ51RYW9dvjcDJnVq+ZLSmVQYH2nNZXuW7
	 dqNwpAwzQC37A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7927084AD9;
	Wed, 25 Sep 2024 18:00:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1B7A1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD5BC61187
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhZE-5AQB6N7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 18:00:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::229; helo=mail-oi1-x229.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24B4661184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24B4661184
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24B4661184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 18:00:25 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id
 5614622812f47-3e28ac7b12bso125570b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 11:00:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727287225; x=1727892025;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ty8ZvXn5cWfdvsrzl25BDp4ju+D4IYBdiCKgGBJ2BYY=;
 b=PJOAGCwKzVnw2dy99FJ58LR0uaov5Ulq1masdSEaO4iiXeWBna2apUeMX+sGYr0LwI
 OHhvOSBeeZL7IlnDk/KVqW7aHm7T7bJepO+iWJW8hE2v4fry4+2HfFAa5Nt3Fqbk0VPP
 Lt9epNKz+VUldH+P2DkNPhPJ3GNZ+Hb+Tnutruy+uTfPNr/8yTX3M6owYnSo42B0t22a
 aeNj/XKnxLLn4vjFVmmDioSScL2VFz4BxjJ1hUBllDqQX3GO2EXzC9e6/29aHlXOI5Sr
 bw2JyJDjVLGKy1z4z5LzOIs149AXSTye3gSgdn9vvpACDJhpbVfLlFwb6ZmNhgYGZwMq
 uXwA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUF8ETQRoQF5s/Sg84k0euv0fjKevo4YYXQTmAC3QmTSAhxmTZD4EjPR1uYP9MxRsJRdLi8xInzk5/wnyiFXFA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxHGKnR28Y9A5LEjfovcBcV4CPTDSK3O4pV7TL84cbO3PWJwI8g
 USUN6EfTJcS66dL5GxwljSlv/hf+62Hgwo8iuDvcnwerYMxr9DE8uWKZ5HTVuFo=
X-Google-Smtp-Source: AGHT+IFrP8g8SUkZ6SyAkNAIg0Auy6eTNjBZXrEvo7manzuVA2Z2kRrPA6C+keVdAoCb4ap17t+jjw==
X-Received: by 2002:a05:6808:159d:b0:3dd:3d77:2774 with SMTP id
 5614622812f47-3e29b7e521emr2707780b6e.43.1727287224906; 
 Wed, 25 Sep 2024 11:00:24 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7e6b7c73092sm2980539a12.64.2024.09.25.11.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 11:00:24 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2024 18:00:17 +0000
Message-Id: <20240925180017.82891-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925180017.82891-1-jdamato@fastly.com>
References: <20240925180017.82891-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727287225; x=1727892025; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ty8ZvXn5cWfdvsrzl25BDp4ju+D4IYBdiCKgGBJ2BYY=;
 b=IJySFRUT/G01C6smTUNept8JQnIZlHIa1so8JxcKKWrbkhWY88kvfhavJCurKdpj6i
 PRDfEzViVAqvlUrEY557XU9CYPe9Bf3VoIOhZORim/rrMx3JR1i+7M7b6ZUrubTFYe+H
 trB+aouL1jw2Ky32lTtDdPYTrZJRVXxbqAfXg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=IJySFRUT
Subject: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sizeof(struct napi_struct) can change. Don't hardcode the size to
400 bytes and instead use "sizeof(struct napi_struct)".

While fixing this, also move other calculations into compile time
defines.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index f0537826f840..d5e904ddcb6e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -437,9 +437,13 @@ struct idpf_q_vector {
 	cpumask_var_t affinity_mask;
 	__cacheline_group_end_aligned(cold);
 };
-libeth_cacheline_set_assert(struct idpf_q_vector, 112,
-			    424 + 2 * sizeof(struct dim),
-			    8 + sizeof(cpumask_var_t));
+
+#define IDPF_Q_VECTOR_RO_SZ (112)
+#define IDPF_Q_VECTOR_RW_SZ (sizeof(struct napi_struct) + 24 + \
+			     2 * sizeof(struct dim))
+#define IDPF_Q_VECTOR_COLD_SZ (8 + sizeof(cpumask_var_t))
+libeth_cacheline_set_assert(struct idpf_q_vector, IDPF_Q_VECTOR_RO_SZ,
+			    IDPF_Q_VECTOR_RW_SZ, IDPF_Q_VECTOR_COLD_SZ);
 
 struct idpf_rx_queue_stats {
 	u64_stats_t packets;
-- 
2.25.1

