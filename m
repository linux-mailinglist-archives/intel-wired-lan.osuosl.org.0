Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 661699A9370
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 00:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3682404A5;
	Mon, 21 Oct 2024 22:36:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4YeNq74cvK7h; Mon, 21 Oct 2024 22:36:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 972A0403FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729550160;
	bh=R+21hon7jB7Ze6MH6lzU0hyrhZwk9Xet7rRe7hsDfrQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IIfZ2843WGMdmngEhB1MMPu6ZGKESjsaZJzKr21YWnr+4Kxi64XY10MpxVTauCW3t
	 JZ/7Qswvlty6RSU9+EQxA+31how8v0l2ugIA9jozk7nXWNfhKT9EaKX1HrF3FAAVCA
	 IEoUPWJEyp/bP1Q648SKpExhpp+bDYEdaE3PgbhRL1/mb9OmBzt+1I0gknH+dL8nJQ
	 l0HJYtJZ2lBPUeAUwojROgAoyPzXc2PMJM/KH+ckn1WVXs0YAHX+qbpjilRhSsEOS4
	 VFwmr198TJvOpnLkSREdXWVd+Jg92TZKHHNFQiTXJXQzaUcqwj/LzD8nisWLikPYgC
	 NnlVzUjrw5a8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 972A0403FE;
	Mon, 21 Oct 2024 22:36:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BFE86963
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADBBC80D63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:35:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCp4PYDnTk14 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 22:35:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D271C80D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D271C80D62
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D271C80D62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 22:35:57 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-20c9978a221so57153705ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 15:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729550157; x=1730154957;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=R+21hon7jB7Ze6MH6lzU0hyrhZwk9Xet7rRe7hsDfrQ=;
 b=Ji2ocrGn5qoxGotO8Rh2Gcjbobee02lpAzi941JjxzrDcEuAiWpOhq5hvqBD43DuPX
 nqXpSz1oSLWojyAFQDDkI2Epnvfz5X7ZNOAaPo9GfZCEbHazHbELucpsuBlfTRzahk/y
 tBgXS+rsLSGdfZ5azrWfAup5BXPKN0BHJeRpjaq7iyON5NbD92biPl+VjeVqeHAMbch6
 LVVuWz4avLtcm1uQPFOYylbDlSMRV3ihl920ByRMszRwWETb2U1alcePlDyT48gjj7qF
 tbjFzPhxdoJTlmcrMLUcqRGei72sidbKK6Azg906/PJdBXnj/Vjhc8s3Aq51bU1YXGS9
 c1Tw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUq0o1D/dav7adbTIXv96axBuioMlOAHc2nnzHfh0sJtwPUZU1FprXwu+GxzIXNeKjmxkrA19Aavw26k59g1Io=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwXf2a8qgPKnARcHWaGBhT38W/ld5E3zMLKrMWtHjc2Ub+Vlgen
 2sX3JJeb5WrxXjuvsJN3Zs+JjGnppkcdXJJ9wVEqVn+d/TRPeBU4U+lRtrVu4hDPQZ07720q+9j
 y
X-Google-Smtp-Source: AGHT+IF3piS/fRA42347FWj61Lwbz0hs9de6WGfsiJ7XbyQ5WMZ9MBPYLBRxKS5gnyUcXdhPwbfDCA==
X-Received: by 2002:a17:902:d48e:b0:20c:f39e:4c25 with SMTP id
 d9443c01a7336-20e5a707c78mr214083015ad.8.1729550156983; 
 Mon, 21 Oct 2024 15:35:56 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e7f0db2desm30897655ad.203.2024.10.21.15.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2024 15:35:56 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: Joe Damato <jdamato@fastly.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Mon, 21 Oct 2024 22:35:51 +0000
Message-Id: <20241021223551.508030-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729550157; x=1730154957; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=R+21hon7jB7Ze6MH6lzU0hyrhZwk9Xet7rRe7hsDfrQ=;
 b=Ba21DVGZh7SUESSJWXilR5y4S/Lhl4ZHtAtNOdal9ezh7p4eq+8usUmIy0Bp1JiDMM
 OvIBAMeGSw/TvoIG5OhMM/o4YhUxhlJAfJ7a1apr1T5OHJPX7WUKojYOYhjHe9Z1fRQb
 13r/3IhGrtfkqJWKi0ItlLAImBnEW/CB1+sfg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Ba21DVGZ
Subject: [Intel-wired-lan] [PATCH intel-next] ice: Add support for
 persistent NAPI config
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

Use netif_napi_add_config to assign persistent per-NAPI config when
initializing NAPIs. This preserves NAPI config settings when queue
counts are adjusted.

Tested with an E810-2CQDA2 NIC.

Begin by setting the queue count to 4:

$ sudo ethtool -L eth4 combined 4

Check the queue settings:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 4}'
[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8452,
  'ifindex': 4,
  'irq': 2782},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8451,
  'ifindex': 4,
  'irq': 2781},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8450,
  'ifindex': 4,
  'irq': 2780},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8449,
  'ifindex': 4,
  'irq': 2779}]

Now, set the queue with NAPI ID 8451 to have a gro-flush-timeout of
1111:

$ sudo ./tools/net/ynl/cli.py \
            --spec Documentation/netlink/specs/netdev.yaml \
            --do napi-set --json='{"id": 8451, "gro-flush-timeout": 1111}'
None

Check that worked:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 4}'
[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8452,
  'ifindex': 4,
  'irq': 2782},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 1111,
  'id': 8451,
  'ifindex': 4,
  'irq': 2781},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8450,
  'ifindex': 4,
  'irq': 2780},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8449,
  'ifindex': 4,
  'irq': 2779}]

Now reduce the queue count to 2, which would destroy the queue with NAPI
ID 8451:

$ sudo ethtool -L eth4 combined 2

Check the queue settings, noting that NAPI ID 8451 is gone:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 4}'
[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8450,
  'ifindex': 4,
  'irq': 2780},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8449,
  'ifindex': 4,
  'irq': 2779}]

Now, increase the number of queues back to 4:

$ sudo ethtool -L eth4 combined 4

Dump the settings, expecting to see the same NAPI IDs as above and for
NAPI ID 8451 to have its gro-flush-timeout set to 1111:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 4}'
[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8452,
  'ifindex': 4,
  'irq': 2782},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 1111,
  'id': 8451,
  'ifindex': 4,
  'irq': 2781},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8450,
  'ifindex': 4,
  'irq': 2780},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8449,
  'ifindex': 4,
  'irq': 2779}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 3a8e156d7d86..82a9cd4ec7ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -156,7 +156,8 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	 * handler here (i.e. resume, reset/rebuild, etc.)
 	 */
 	if (vsi->netdev)
-		netif_napi_add(vsi->netdev, &q_vector->napi, ice_napi_poll);
+		netif_napi_add_config(vsi->netdev, &q_vector->napi,
+				      ice_napi_poll, v_idx);
 
 out:
 	/* tie q_vector and VSI together */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e74f96a8ad..a7d45a8ce7ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2777,8 +2777,10 @@ void ice_napi_add(struct ice_vsi *vsi)
 		return;
 
 	ice_for_each_q_vector(vsi, v_idx)
-		netif_napi_add(vsi->netdev, &vsi->q_vectors[v_idx]->napi,
-			       ice_napi_poll);
+		netif_napi_add_config(vsi->netdev,
+				      &vsi->q_vectors[v_idx]->napi,
+				      ice_napi_poll,
+				      v_idx);
 }
 
 /**

base-commit: 6f07cd8301706b661776074ddc97c991d107cc91
-- 
2.25.1

