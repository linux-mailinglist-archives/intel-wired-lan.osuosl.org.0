Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3931CCBA1CD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 01:22:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7AB182907;
	Sat, 13 Dec 2025 00:22:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ft-PO3twQHuR; Sat, 13 Dec 2025 00:22:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAE02828DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765585368;
	bh=cg/KKfVLep3toZPAk5g9jgleUjnOCrRXUedzC2uEBgQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Okq2DiVcQ4f/vo7tV9XeEUzRVa0OdF68VlvTn0cIYjWQzaXe2hbrZ7k5UKbNlLe+7
	 TN1uz/3RH/P2IiuGHrCi0sd0UaJgmp5XkJ9ZZqzOIm428AouJH7GF0vTNdoFkhx1lf
	 mf31sMxMHriWgCkqRE+MmT5PO2l1JoXsEAw0fHP4OIngD1UElV9+ipkgZQ5RhVDcAq
	 TdkR2u7/m+YlOT3kffGz8L6J6AIYgH4z8IucwaXmHTSqhiFMbmmFDV85iecZQR0w6D
	 011yggm/KSh3PdLa8lonO2aV1N0RJcP0z8sC6SOT2dL6sDOq9AxObMJyFxEIuxJdKn
	 6p6vucYZOJlqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAE02828DE;
	Sat, 13 Dec 2025 00:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5127DE7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3895240A5C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sd1bwsKrcPgO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Dec 2025 00:22:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6336140A02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6336140A02
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6336140A02
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 00:22:45 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-2a081c163b0so6772385ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:22:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765585364; x=1766190164;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=cg/KKfVLep3toZPAk5g9jgleUjnOCrRXUedzC2uEBgQ=;
 b=By2e95YBWyhrrIEFnZPghK2fC8tB2k/v4GDDso+oK1ODOCvP8WrtCGFOFgBZxffZ2T
 hd3QjFlfWigiE8OyZm2JYW/JW74EEaY3/5LGesMRWfjqUwq6CaYgBSwBD49eBE0GIaZ/
 dRkYszYt6jzEhXDjHd/Saijmuum4Xlapt7AhTcEs9sq8jRPetNpliDiULMNF+YWfrGcV
 R+fph9CXV7j+ctqRXr6C1P935IeIG2Ylr1cyhbTGiipZ/P7eU7wxKLOZqpUA4RvarTHx
 c8nJncbTJdxiCrFkoxEM4KTz8YSRnrnJ2L1zHSYnAcGY0ENfV2464JFF4FGEe1sM2z4g
 OidQ==
X-Gm-Message-State: AOJu0YwK9vTZjrTAuXFByYOJIPSXGtK/cUNwxVWuRBEaZJg4XxM0XVKJ
 2Thx1AhDkx6v/XxI3txU7TQ4Uz+AOj3d53pu3bT+sHa8e+cqNm/IdYtG6pwqcObn9OzkpvUKqEF
 L5vCTpJQ=
X-Gm-Gg: AY/fxX4lcataLElxvxwtawdhm4tlBaMcMbJ0cjzcUIC950Y65ViMH/aeo+9vGQpM8Od
 S5pPq64n2U6CplZv6gfPNNhbN+jzrkDIUD4Y+s0IfapiR59ipefZfCkiMtNDM1tDa8L5zSW+/Ln
 95y9FNudyCQia5POC5sUgb9h0FyAcYY7ZPZeD5JZ0wj29wB7eqli653YtgrtxnEx+2dLoF5bbo9
 c0UZYVM9QFtHSJ2FRtNRIa2WnJ9S1kiMiN40EmKbajKow0jOdsLJoh3avIYlA7QmaNTatOvVNj6
 U0cwOCQHi7mlIKsaCqxu1fkDjfFBMoKaVIL94QcDAbwDlq0YreXu8BdxnpXJLBWv00MwWKSAJpv
 Ib1EiOSmhSs5gWJTMjzYO0B8p7tpkTWOYJr6q7wMod0m8aCkM/HclOLy/3RD3aH54PBT1OCPPtt
 e68GRVygYN/bRifCraBbFGK1OAth/hJQI7WdNOLNHLkvI=
X-Google-Smtp-Source: AGHT+IEpdS6if48OizR1QeBtFs0aUr2J7HLnwvIpHnHe0VcYJJw/Q6u6ahntlfaZ21nluQi+tCBqCg==
X-Received: by 2002:a17:903:32d2:b0:297:c058:b69d with SMTP id
 d9443c01a7336-29f2404b7bcmr35622115ad.34.1765585364408; 
 Fri, 12 Dec 2025 16:22:44 -0800 (PST)
Received: from fedora-linux-42 ([104.160.131.201])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34abe1ffdf0sm2904719a91.4.2025.12.12.16.22.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Dec 2025 16:22:42 -0800 (PST)
From: Cody Haas <chaas@riotgames.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, netdev@vger.kernel.org, Cody Haas <chaas@riotgames.com>
Date: Fri, 12 Dec 2025 16:22:26 -0800
Message-ID: <20251213002226.556611-2-chaas@riotgames.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251213002226.556611-1-chaas@riotgames.com>
References: <20251213002226.556611-1-chaas@riotgames.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1765585364; x=1766190164; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cg/KKfVLep3toZPAk5g9jgleUjnOCrRXUedzC2uEBgQ=;
 b=CLMyssPS3tX8rpqsWzjtLoMfhXUOOv4MJAwb3DsWn5amoW4G6ZY4MN7hoiwEmqrvyf
 xSDMxoy7DXiJhWwKgu8/T7lY5X9+TufqPhuNECp2YhEnUiuoML7xH8crIe1ySxF9haAg
 TQ1PNPQ77Z4QIs2PC2FZv+y4y7jNKI9o+ODZo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=CLMyssPS
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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

Several ioctl functions have the ability to call ice_get_rxfh, however
all of these ioctl functions do not provide all of the expected
information in ethtool_rxfh_param. For example, ethtool_get_rxfh_indir does
not provide an rss_key. This previously caused ethtool_get_rxfh_indir to
always fail with -EINVAL.

This change draws inspiration from i40e_get_rss to handle this
situation, by only calling the appropriate rss helpers when the
necessary information has been provided via ethtool_rxfh_param.

Fixes: b66a972abb6b ("ice: Refactor ice_set/get_rss into LUT and key specific functions")
Signed-off-by: Cody Haas <chaas@riotgames.com>
Closes: https://lore.kernel.org/intel-wired-lan/CAH7f-UKkJV8MLY7zCdgCrGE55whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
 drivers/net/ethernet/intel/ice/ice_main.c    | 28 ++++++++++++++++++++
 3 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index c9104b13e1d2..87f4098324ed 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -953,6 +953,7 @@ void ice_map_xdp_rings(struct ice_vsi *vsi);
 int
 ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	     u32 flags);
+int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size);
 int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size);
 int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b0805704834d..a5c139cc536d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3649,11 +3649,7 @@ ice_get_rxfh(struct net_device *netdev, struct ethtool_rxfh_param *rxfh)
 	if (!lut)
 		return -ENOMEM;
 
-	err = ice_get_rss_key(vsi, rxfh->key);
-	if (err)
-		goto out;
-
-	err = ice_get_rss_lut(vsi, lut, vsi->rss_table_size);
+	err = ice_get_rss(vsi, rxfh->key, lut, vsi->rss_table_size);
 	if (err)
 		goto out;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b084839eb811..c653029f07c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8072,6 +8072,34 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 	return status;
 }
 
+/**
+ * ice_get_rss - Get RSS LUT and/or key
+ * @vsi: Pointer to VSI structure
+ * @seed: Buffer to store the key in
+ * @lut: Buffer to store the lookup table entries
+ * @lut_size: Size of buffer to store the lookup table entries
+ *
+ * Returns 0 on success, negative on failure
+ */
+int ice_get_rss(struct ice_vsi *vsi, u8 *seed, u8 *lut, u16 lut_size)
+{
+	int err;
+
+	if (seed) {
+		err = ice_get_rss_key(vsi, seed);
+		if (err)
+			return err;
+	}
+
+	if (lut) {
+		err = ice_get_rss_lut(vsi, lut, lut_size);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_set_rss_hfunc - Set RSS HASH function
  * @vsi: Pointer to VSI structure
-- 
2.51.1

