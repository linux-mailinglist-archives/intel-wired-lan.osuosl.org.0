Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6058AC820F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:19:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3815610D5;
	Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Rav0CBhg8qt; Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33733610DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764008359;
	bh=9iprVTNk6cZAkMWJ9/9S/EGM0b2WsW8vk/nq2Pv03p0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E6lXKCucCJuzrc842OZD5jZVK4DUtuCyqTszpNyItevMwUE4fPx+FIft6hwSJkNNW
	 ZE461UQUeeUIsw5tOvVnzfsYhYvYZMrHchEpQ2VKWvpokGbQ312z/iBalopwNGpr9b
	 LBtR0D95VxRUVYcjcv07xBZxAUW1VKzEt/MnO8jeyuTW9iqEpPwOgge9upL5nX5fNR
	 FVqmgnKVkhbaLTRkx/scxftBwdr/hbPsHDQw5/sseVXdoMzrajZ5eZyICFbM/BJ6eZ
	 F+h8EFdAY2nUtQDZcRBb+kbTpdAhd99EDNv8/Vhqk6ZaJYFdVwr6e0nHu0SyMF/WRJ
	 5CxHRrJAqcHjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33733610DF;
	Mon, 24 Nov 2025 18:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 835A934E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75AAE8250B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z3KMEs3rCP2I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.179;
 helo=mail-oi1-f179.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C8DD82DDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C8DD82DDE
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C8DD82DDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:19:16 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-450ccefe573so2094219b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:19:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764008355; x=1764613155;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9iprVTNk6cZAkMWJ9/9S/EGM0b2WsW8vk/nq2Pv03p0=;
 b=v+cAsbvtrDFEwj+9IPN3/qjyFkbZx9bNIcr1Z0PqDU7bvFHiiw8Vycn8uXkP+1Kb8I
 Swfqc/ZrkZodkboPBVmfF4DcrSHrNLVmHOltZ7yILdkYbXAb0yUzrZk0Uyx/zNz8c/9k
 +WpmYHoACgl9uA631m4NZqKSNvHxJnQK/0mQ+moX1Hrj28tNflQl9wPw/BH1Gbf7V5Tv
 n6ySGuQd/9RJz/dvJa0BKWNQfPRXu6Fou38iNMMlCkMVYHwTTnAJKQMRZXoExNCrJiBw
 y7qeGY4zWYd9TcFuxr6QbdZFl7PFZ0qefx5RVSiEPoKmvbJ81sIReMJIQFnHI2MgxzEh
 ZVdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUcvzYTJUDI9OXBiaPD+rp4iH2qXkfC0IJH82At8j0/kzreO6W9VWeStO5TahAEUkNfMtvc6hwUGFYbgaa/7aU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzwMPVu4Pwhlm/1dm3YJh+WOXC+9dCSEffPpAR8+mhe5UoresjW
 6xvx0n7dnbSQHkS9quYBEG5CDjm2S7TnW7EWL40hfsRZDoLlDHHRrXIv
X-Gm-Gg: ASbGncuBXNI4WEmF/YL+6SwSJAY0/ceaO0xGPTyR71fqCQnEZtDCvK83gwL2ASpzemZ
 Wm4TpEPCH1Ixj5KejhLyfYjuo/Iy1JYT6eCYemjnNjqENGqZx6dI15k7q0OCeHK9CcqeBmLrY03
 k5x9UsqsyAt5qa7+TExAl4M8FujYcTI+82wWmArp5WT+dmSgRjMLR3k7H0OQum1StQRhVrLokc7
 67ZC1+kgKmRLIaVRu4qtfEz/xczndfoUvoDbXwvJGmjp5nVChM957a397h3dP/qJHTjN5Z3m6rZ
 8UPrACCI9GPdoKPdd+zyLlfH7I8KI1FXUgl/G1JCqrIINdMzlYRDJN6r8SHC/njK9PY6E3nKSTF
 hFN5ie91hkHsV7DzhelScrRtl6qBV8a/r6nZfKV8SBSTkdMh0IzpbZWjeGnXjezzlhDs3B2sj5A
 e+A+HmufUAdoljxXlvzd7YoHA=
X-Google-Smtp-Source: AGHT+IEqHSydC4Hu/p5OXPbR7yBJvx2DQQ26Hmkiiu+GKXn+q0F3MLWMxPqPNgqwKUq4B1htfY/jqw==
X-Received: by 2002:a05:6808:6909:b0:450:4a1a:f2fe with SMTP id
 5614622812f47-451125636d5mr5002081b6e.0.1764008355458; 
 Mon, 24 Nov 2025 10:19:15 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:5::])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65782a6c8f3sm3705269eaf.7.2025.11.24.10.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Nov 2025 10:19:14 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Mon, 24 Nov 2025 10:19:08 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: michal.swiatkowski@linux.intel.com, michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2377; i=leitao@debian.org;
 h=from:subject:message-id; bh=hYkHdy6E073gG8/8HYCpA5Ni92JYVnpQPGGEfFxBtiE=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJKGdu6j0EG9hbb9HyGyHW5oZXkG7YcVlwfpm6
 JLDKhlV3RyJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSShnQAKCRA1o5Of/Hh3
 bR2TD/9T7TRemUBszcJz9c2nkROusEWKpX8iOtapjlin15Nh/mqs9JgiO/aLqRjnqGM9P9q7ilt
 CcMzA8av79+TwfbDG3EaeqfMM+frCGLmMJoNB1AIj9FyvsHedQL7Y2fOhmhXBqFC8+LUXENIIrB
 wISjYIqHW3cpuqR62A9ld2EmjAvFUjcYsAPqXoxaTswhRmbRM0xuirGS+0BX+2F8BYoH0fivTcA
 XL+k5liPVynjkXvHoho9lIj/zjJSGjx8FQfE9/Dup9tDXssj6AijrJhj4H7nXNwf23R2IGhY5KY
 m49cYq+KWlwQBTRNEI5/0cBRK7qy8IkcFK3nIqa5+7b3RtbRjOQtXF1ASHanLAe7PipM7QSuyL+
 PWMhyZX4vT+ZxUc44BUad4VgNPzYjtX8dGaNzhXJqbdspN+aOlLyOoqVmtz5y25meNHPQROeHuW
 FtOtc7dv4Vgqe+kVfjIIJ+rMXSiPNcme02JhDdSKlyr5Skmd76lZjoL85ALEcmDtX7ippDdTGw1
 oNCCKJXl490ovhGAp5Z9RjKeozCxe6bW5MBRQ+LHGQVZ3Vw9CZwTG83i07TSoIiGOdO2F4kKCfo
 ddj9c/6cvVNCMPyYT26Ei9fJ12QPWypIs4a2efgTkuDWVIQz6R0Wj0KVFzMWFmx8q3Kwae7Y/wZ
 yCD9h7LkNZ2pSfw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS from
 .get_rxnfc
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

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns idpf with the new
ethtool API for querying RX ring parameters.

I was not totatly convinced I needed to have the lock, but, I decided to
be on the safe side and get the exact same behaviour it was before.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index a5a1eec9ade8..1b21747b8b13 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -5,6 +5,25 @@
 #include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 
+/**
+ * idpf_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Returns the number of RX rings.
+ */
+static u32 idpf_get_rx_ring_count(struct net_device *netdev)
+{
+	struct idpf_vport *vport;
+	u32 num_rxq;
+
+	idpf_vport_ctrl_lock(netdev);
+	vport = idpf_netdev_to_vport(netdev);
+	num_rxq = vport->num_rxq;
+	idpf_vport_ctrl_unlock(netdev);
+
+	return num_rxq;
+}
+
 /**
  * idpf_get_rxnfc - command to get RX flow classification rules
  * @netdev: network interface device structure
@@ -28,9 +47,6 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vport->num_rxq;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = user_config->num_fsteer_fltrs;
 		cmd->data = idpf_fsteer_max_rules(vport);
@@ -1757,6 +1773,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.get_channels		= idpf_get_channels,
 	.get_rxnfc		= idpf_get_rxnfc,
 	.set_rxnfc		= idpf_set_rxnfc,
+	.get_rx_ring_count	= idpf_get_rx_ring_count,
 	.get_rxfh_key_size	= idpf_get_rxfh_key_size,
 	.get_rxfh_indir_size	= idpf_get_rxfh_indir_size,
 	.get_rxfh		= idpf_get_rxfh,

-- 
2.47.3

