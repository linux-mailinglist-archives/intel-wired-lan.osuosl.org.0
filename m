Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6297198A9AE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 18:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C11CB81022;
	Mon, 30 Sep 2024 16:24:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYPLOFXJWjWb; Mon, 30 Sep 2024 16:24:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CF6D8102A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727713478;
	bh=Vp8feoqdAky18wo/b0zvz2eHXjnj8M+1w7vQomtljxY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zi815GzFtq0JeGaFC8+ImJXbmNKL1pofLW5/o6TI7paOfYeWYHaHtMOQi/X54t8gE
	 d4gOzWoK5Gd7H7s08k6wxDjYCI5IfLwayGTA/JnhaKhKOHS8mPx8eMtEf1JCbX5m5X
	 bvMywZ+rFUVzx5+WW4VP9SW5rL+IZRhGrnkCe5IngvjSsYb8CTQTzaC7JM2hjc5fpZ
	 E0oUnFKkuTs7DIdS9iFbLhqAZeKJgQGYBtMiZNFoYSrywmRV9W7fcfcU5Dev/MJ/Uc
	 4DoCSyLi9LNY1iqrzEity1N4xzca/VKbkk5b0RdGnr4cB+/iXkGrqTJyrUBmuvJTA1
	 euDwN2MaH479Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CF6D8102A;
	Mon, 30 Sep 2024 16:24:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED5341BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E91B1606CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zQ7SPLWFZ2dV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 16:24:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 51A73606B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51A73606B3
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51A73606B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 16:24:33 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-20b7a4336easo9908205ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 09:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727713472; x=1728318272;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Vp8feoqdAky18wo/b0zvz2eHXjnj8M+1w7vQomtljxY=;
 b=shT84Wwobrkvb5CrKHHLP4Cs1lOxLjbti2bXW/dvPbkAYGT6NwZcl67cXyvR/ZOVy2
 59x3Bjs7uHpIOweHEpfFuqYowub8qQ+tsZgm/3V+3idw59oDTxiKfGkFUQgM0QXGC7Y7
 Hfb3FpQgy5vCV5H1s7Sw7eCc9pAqSNpf8HicHNhWSlwJKjsohYYikV4cpdm3W42NiJtL
 XP52jINw1vVGnZ+G+JIQiauLFRKJ1y1Q2iqDkyqmdY5XNCxbaCbtvmRWULBz4I/Nlk/k
 LcCmZOSe5CgsaS/5C2c+WTTC89ykG9lwvI7mVdA1SIczCsOOyZdVhnqcw9zoQyDgxxgU
 Wmug==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdvPUf6UjFjjK9lWnV0hpx0DSPm000ikSnq5uS1bIqt8VAZ1LNPFNZbBuLd/EKYkXQcvuQkrT1EfdsM0tZsD8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzZMCeYQ1c3NNMk1QZbPQYe3da3lErSEaRMImC2tz3LwxJZz0iz
 0SmRXaOs5me+PrG8Pew31q1pSBWdzj4M/LsUKkxDM7YG2NmYwvi3XrUiy5ZyKDY=
X-Google-Smtp-Source: AGHT+IFjpq6oB/rF3b4HdxDd9AuevTEwTzCo5XR0fDrLWvCVK+j+fq4uhFs+PIXISYEYpZkvXoIz4g==
X-Received: by 2002:a05:6a21:139b:b0:1cf:47b3:cbbe with SMTP id
 adf61e73a8af0-1d4fa7ae130mr16805435637.45.1727713472592; 
 Mon, 30 Sep 2024 09:24:32 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71b2649f879sm6411451b3a.22.2024.09.30.09.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 09:24:32 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 16:24:22 +0000
Message-Id: <20240930162422.288995-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240930162422.288995-1-jdamato@fastly.com>
References: <20240930162422.288995-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727713472; x=1728318272; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vp8feoqdAky18wo/b0zvz2eHXjnj8M+1w7vQomtljxY=;
 b=EorRV1fBf3mKYN4nEwZyyN71ZHi0N9PhcabVMxkh5Jyz91e7691CTAWh8SqBAL1IIX
 j1IB6cOot79A8jfi7sl/3vLdBOyRVBS4bVpJL6BIGjkgbZmLjRCknjxCDcjKM8irgRSl
 02CekBQ2SFfZ1artzErxB1BZ7n9J0HuWjKAGg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=EorRV1fB
Subject: [Intel-wired-lan] [net-next v2 1/1] idpf: Don't hard code
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
 Simon Horman <horms@kernel.org>,
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
Reviewed-by: Simon Horman <horms@kernel.org>
---
 v2:
   - Added Simon Horman's Reviewed-by tag

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

