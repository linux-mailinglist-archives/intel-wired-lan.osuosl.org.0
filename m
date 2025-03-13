Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2147A5F94C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 16:12:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F270C41A08;
	Thu, 13 Mar 2025 15:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id irnJeoQHLBMN; Thu, 13 Mar 2025 15:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C1A741A10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741878747;
	bh=JvQ7dzhduECDrLpiYmThBQ/FoZ4MRllET4xAKqhw1E8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T3wCRloDYvrlM+v8vu5TmPJQ7m0t1h+HudiDFuES+FI8YFBoIt56IdGeoJENTz+LB
	 fzWy/Dr8kPJLIALSW1P4SfuPe0YFh50JN96FExk6XEBj2ihFYmdZA4oqO5D0kaGUrt
	 jZGg7xH0UeVeBig8ytcAPRpAyzr8DchRxXa5m/LZ0MzjU4ADkXBWgTX60XMVaMxbsE
	 i9NoTiQFRv3FLLyaAKbn1zy1xoDZy0q92SJlXjplywjRQEXeQy3QIkJNhhwnkXj4BZ
	 F1FWnQm5CYpOPxnI160ro/rz7TGiGPdGSTJmrLltG5cOwoxfFHOIdErNe1nA+PJMmW
	 vRNw/KNARo+eQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C1A741A10;
	Thu, 13 Mar 2025 15:12:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C8FF115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E27B607BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DOlDXVqjyy_v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 09:36:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=rsalvaterra@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 637FC60777
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 637FC60777
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 637FC60777
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 09:36:55 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-43ce70f9afbso6058095e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 02:36:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741858613; x=1742463413;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JvQ7dzhduECDrLpiYmThBQ/FoZ4MRllET4xAKqhw1E8=;
 b=wBoK8sC2/bWsANEK2daV+kVE5QQTPUCJOAiuZIQqGzMUyuiAjhRUJSCF4uYeTF3oLU
 9CsiEE+x6sSwu1hW/KJLWQ+frtuLj5tgi8R2KZVCeoaSFZiJ4X+iChhc+HEueCsCKD/v
 4LgC1Wfp4IINWdJN2Jlqqhlpe0Qe4ywXzw4jqdzrKm4MSJ0y1pwJ1SIl5iIgeTgVIiSf
 Pelft9LISadrHsNnS5/GxTPdmFrp0WJVHuZ1cN0SdMhfLQLhSJInKSdrkvHpCNOxYHC6
 HwcdAr5OotCL21Xe4uLoSH9y8s4d2kd2numI91N5vB6JSsYBvm6yzqdxwdWekePRHzGn
 t+uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrtsNj3kjb/IQ32mwpQH5oK56/Lccsdvk/qeGc93OUGAedF/OIuJ/TS+XtZK32CsiDv78LO2Fb4kJFPO599NA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzyZH4yGTXppAiNubhD2lUPRwPWRFeZPX0S38u35dMed13McFGo
 61vf2MNTiwmrveu9FZbj+BDY8NtxQla8oY3Oy1PvCJktNl4hI7s=
X-Gm-Gg: ASbGncvZ1bgmMdmhAj/Ms9E6JXkBv1SDlf8AFd986/6Q6bqsOkfjEBtv0VzoVLEMPFh
 3axK9Ez7Bia3r69urU8YCIPVSvzCmxbIwByKgyLIZNsHaihrJ7o9u2siMFu6EMYba0i4BneuLeD
 q0MywuPIN44hvyBXTsngSz1GA94mvTZAqWc/a+zBrj+A9XCrPLKWmPD+vFa1Cr2wo9m9TsFolQn
 rDqeFo9SP8emoVCi+d+VYfrmo5X+3F7LUDBWc0FDqqzEN1D9e+Bl3BTP+l9OzEqCIfNEKBFMgVt
 lNJ9EF8tERbmNxCvThiJL8MzYMhtpgY6TRHnJjHflL5/
X-Google-Smtp-Source: AGHT+IH4SxyWBmHQREG2JRZBSCpc9n97vp7qOSWmSGUrlsH7EaBDPGRKB6Rc9iE5qfhPMASjZ32mWg==
X-Received: by 2002:a05:600c:1ca6:b0:43d:9f2:6274 with SMTP id
 5b1f17b1804b1-43d09f264eemr53241605e9.14.1741858612924; 
 Thu, 13 Mar 2025 02:36:52 -0700 (PDT)
Received: from phoenix.rocket.internal ([2a12:26c0:200b:2402::14])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43d0a8c5ccasm47178835e9.26.2025.03.13.02.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Mar 2025 02:36:52 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: edumazet@google.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 13 Mar 2025 09:35:22 +0000
Message-ID: <20250313093615.8037-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 13 Mar 2025 15:12:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741858613; x=1742463413; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=JvQ7dzhduECDrLpiYmThBQ/FoZ4MRllET4xAKqhw1E8=;
 b=R8ByPrQYY3QpAxv+yEKnvUbJRIYkB6Py7/yPdbSrwjKqXylF1K8H4GhYdzKrO8tN8K
 9NrnQWA1eNDSmYzHqAf1EooGG8CkmGy837OlG5VbbDAlLPk9mcgsMJbNtc4JSv0yGYBc
 GnWc7DMMhc7fbI0vCGVinmmxN8WTkoVYJi0ewFVo8RWRumPluYDYFUXoXdO09YhfqZvb
 Ts3BlyG/5OzK8kv/RsCR/ve/Unj/gZSMXRn5wN/epNESA9DmSxdY9dbo7T9082oc2q8v
 RqliOa01f7asqn28Zb92OP9/4Kx8i46shyR/JITIRD/ZJ1aUc9AY9WX9D17FIL456Smd
 vGJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=R8ByPrQY
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
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

This is enabled by default in other Intel drivers I've checked (e1000, e1000e,
iavf, igb and ice). Fixes an out-of-the-box performance issue when running
OpenWrt on typical mini-PCs with igc-supported Ethernet controllers and 802.1Q
VLAN configurations, as ethtool isn't part of the default packages and sane
defaults are expected.

In my specific case, with an Intel N100-based machine with four I226-V Ethernet
controllers, my upload performance increased from under 30 Mb/s to the expected
~1 Gb/s.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 84307bb7313e..1cb9ce8aa743 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7049,6 +7049,9 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
 			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
 
+	/* enable HW vlan tag insertion/stripping by default */
+	netdev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX;
+
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
 	netdev->max_mtu = MAX_STD_JUMBO_FRAME_SIZE;
-- 
2.48.1

