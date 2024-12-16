Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3609F3E71
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 00:49:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE41A410E1;
	Mon, 16 Dec 2024 23:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQcejq2XpSSk; Mon, 16 Dec 2024 23:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0100640956
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734392968;
	bh=ix4Gh4iwbkjJuB3qgl+mlNRzP8fScSG0OnzqHfqlJNE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BqcKkvKaP170FnimA3ejRJr7pwfsTp9EH5FYeWfA6Jn4tY3vwovXS+pRf1gHbkqql
	 BLEwfOqkxYpHvxHTUb9f+Jent+e+OSZnCHCJspKGN0l7bfHfS5zG+UyO15HhwGk7u2
	 EKNbIcQ2F9n2qhJb7tNuLJ7cmLX61k17WsNmecpYvjw8DQbNy25qg8jipdV6jpBpar
	 9GAbXGZZCwLyLkcj8IZTU6+HpQgEHszddGygD+YpSTNi6iKnKyU2WGFpSuziWvwIZV
	 Ybm5MoRhLoX34+EGXnYFO8jsR9uNlzEQWxQ33ZcDstH34h/mHTTrl9Nme+tGtMbNrE
	 M3P2QeOodROLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0100640956;
	Mon, 16 Dec 2024 23:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EAA80E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D8BB560F63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RfAOQzhIYGW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 23:49:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 359F660E47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 359F660E47
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 359F660E47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 23:49:25 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-7265c18d79bso5018293b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:49:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734392964; x=1734997764;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ix4Gh4iwbkjJuB3qgl+mlNRzP8fScSG0OnzqHfqlJNE=;
 b=DBTPCgCuCvAxvkUlIbDJXYd30xZmnSkcSgZsj5ffUvwlMeq4W1zVojkb2N33JQzhE/
 bU1I3bjbvsbJhqYGciDPM9tWvUsbq4uCk6aFSrjeS5uA5VnU2q9/viBS7yDGHOunMKrZ
 Hr/qbk6QBK3duptKg6U4xwa/hyqEnXyXuyPqels6v+7bjJWFkJ2Nj8gmpj6zwQr/xmy6
 L3kuE7owtZx9qaulQapSEE8h8JcaMjFMfIBAjDWDUMJIa2jP+WPJkWxqMwCVJ31G3FUX
 aL46U7CT4mMkjWclPDDgAjuwB9eP3Xztiho3pv+9Xt6utGQwE9ewB7iZBRUycKvuBEd3
 vAiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXA4kI1UC2wqoFwzf4do0rKaoozJBuJub3alcBBGq1C+JEMFZiXa4JK4aph644qZDotBt5rts5y2wLPgiIL0P0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz1u6dH7OijPhbFKnilShw68qLASBW7RY5HMCb9x0xabN+fgYio
 l3Yai3ear0QU6fPrN0Sq9O9Qop8fmnFenkp+DOf312IfpTo+wsCI
X-Gm-Gg: ASbGnctaFP570z7wDD6WuPACqtiE4snnPPV/OvqqbR3MdzIkKzlcjfkFVfaB2y6p/6X
 NPmPLq0N7zQ1wniW2JwrxQm7XTNU1JaFfbbXMqdSjLqnzgMl8KsR1ANuSG7zWG3vuV4piDGX3QW
 o2Cge/WDgXY2VlAUVO8FLZz1J9yoV5Y4NScQgYUsdRZftUbPdNvS+lT+NXPjhHI8SB8E4l6VK2Z
 qo13WHmH9jX2gHbyO3PeJtCeAa051pLfClM5ZCHhts2furo2EklTEUpImMqty5/GFhQysE1MOoc
 PqEvZXJL2mjo
X-Google-Smtp-Source: AGHT+IGYMsnP5MYv4KoMNICzCXEjaaJx+QNzdrxPI66r0iStuH91FO6jk7p9jIJ0eN870nmzQlLqXA==
X-Received: by 2002:a05:6a20:734b:b0:1e1:bef7:af57 with SMTP id
 adf61e73a8af0-1e1dfd70b1cmr23634726637.21.1734392964480; 
 Mon, 16 Dec 2024 15:49:24 -0800 (PST)
Received: from jmaxwell-thinkpadp1gen4i.rmtau.csb ([125.254.29.139])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-801d5c3297asm4657901a12.70.2024.12.16.15.49.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2024 15:49:24 -0800 (PST)
From: Jon Maxwell <jmaxwell37@gmail.com>
To: anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jmaxwell37@gmail.com
Date: Tue, 17 Dec 2024 10:48:50 +1100
Message-ID: <20241216234850.494198-1-jmaxwell37@gmail.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734392964; x=1734997764; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ix4Gh4iwbkjJuB3qgl+mlNRzP8fScSG0OnzqHfqlJNE=;
 b=R60zKIoNlNcTMwjUaeSecKq5pdcX8qd1SRwfdHYFMcQEFmf43qPbE3AwdAnMcnZq8d
 3Ade5fyFmBTctPJ9swiq3F022bpa0ReOGCsfGO2xDjN1Cn8WQ3qe9LgAxap7b6MT+fCX
 kc21G0eGu2+1VtIDfVyMugAXIUEboNaKAmA8vpIG2frxkBFRh12W2DDihfjBWLWUaGZ1
 L48npI1jF917OZdf0Ir6pVhGwZtWoG62paUROK3xgIIFV/vR/H7J+XLkUAg21tcQeKCt
 HntpQncXvWVYUFC4sfSH1B7mQzAWJdrviOoRFTVDD4zEU/JG54ODLeVOsf6am89YGY28
 M4Dg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=R60zKIoN
Subject: [Intel-wired-lan] [net-next] ice: expose non_eop_descs to ethtool
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

The ixgbe driver exposes non_eop_descs to ethtool. Do the same for ice.

With this patch:

ethtool -S ens2f0np0 | grep non_eop_descs
     non_eop_descs: 956719320

Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 2 ++
 3 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2f5d6f974185..8ff94400864e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -345,6 +345,7 @@ struct ice_vsi {
 	u32 rx_buf_failed;
 	u32 rx_page_failed;
 	u16 num_q_vectors;
+	u64 non_eop_descs;
 	/* tell if only dynamic irq allocation is allowed */
 	bool irq_dyn_alloc;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3072634bf049..e85b664fa647 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -65,6 +65,7 @@ static const struct ice_stats ice_gstrings_vsi_stats[] = {
 	ICE_VSI_STAT("tx_linearize", tx_linearize),
 	ICE_VSI_STAT("tx_busy", tx_busy),
 	ICE_VSI_STAT("tx_restart", tx_restart),
+	ICE_VSI_STAT("non_eop_descs", non_eop_descs),
 };
 
 enum ice_ethtool_test_id {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0ab35607e5d5..948c38c0770b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6896,6 +6896,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	vsi->tx_linearize = 0;
 	vsi->rx_buf_failed = 0;
 	vsi->rx_page_failed = 0;
+	vsi->non_eop_descs = 0;
 
 	rcu_read_lock();
 
@@ -6916,6 +6917,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 		vsi_stats->rx_bytes += bytes;
 		vsi->rx_buf_failed += ring_stats->rx_stats.alloc_buf_failed;
 		vsi->rx_page_failed += ring_stats->rx_stats.alloc_page_failed;
+		vsi->non_eop_descs += ring_stats->rx_stats.non_eop_descs;
 	}
 
 	/* update XDP Tx rings counters */
-- 
2.47.1

