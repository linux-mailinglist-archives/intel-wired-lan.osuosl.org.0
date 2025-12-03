Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A64B6CA1260
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 19:49:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20FAE61794;
	Wed,  3 Dec 2025 18:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3yK4i9Hc9GAL; Wed,  3 Dec 2025 18:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5F9361795
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764787759;
	bh=Q5fcgijNXgcog1NQQ0SrD5tvcPgm/urwfZJh5xcxU04=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Onlkypqu/Ac3UyGT4ykRz+tlYU2FSqsTtq4yN03XNYJO5Oz4XAY0cNNYxpe+dQpHl
	 +4SnM4GzZfFfTs+VJ9i6EdevoCDuvAwdiUkuVUfdO3GTwGPrpw4Ze/fix374cwYvY3
	 V1qbGubRD8AcijqZLS7Xhccoctl/9zZUH2TAw3VfsRmGezeQT2XEN4M6u4z4WXtnAb
	 ot3gv6tjC3Rp+Pa0ms65wjwajkG6pIRvEQErzobV+EiSNZ7f39qJDnJDfb7CQRm7j/
	 iWD4Ko9YSVW9JkZ6Hqp5mhdiDhJ9brzK2yrvqIpTxqJ0lR4yn9eOc5zoQWSadlrUr3
	 JW3VQu1vBzEkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5F9361795;
	Wed,  3 Dec 2025 18:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 00D4AE7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E750A412B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5KBFgKYQQEe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 18:49:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D92D2405EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D92D2405EF
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D92D2405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 18:49:16 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-298287a26c3so1332985ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Dec 2025 10:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764787756; x=1765392556;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q5fcgijNXgcog1NQQ0SrD5tvcPgm/urwfZJh5xcxU04=;
 b=ld4CZ5GQslYuwIhNxg8uZXcDGKyEXbquahCsBS2CEcG12lpcGc/MYjmIStUPIqZV6R
 ByOs+FxpvWypbVWekZSZWi0bM4P8rv2lEUgzCbNnCmLNmQVd5ehHBQjLbG5E1WO2nboU
 EdbtJVps9ytldBEwzcycst3ifdPwSHWLKKB7CRrJh4JHZB7HM6eiZcAL/iXNM3HAQg2k
 2hxHSkRgSiEAeWtV909kAnAtfnSCcFztZC92C2x0D9G7/1nXN09AEA00TrfRJa0gcplt
 fLP01KRFODz0DS792HjMSO+FaFH05TXedkia8LYDWBbW8HCL11dbj46XoXmsOeC+nbtx
 jvqw==
X-Gm-Message-State: AOJu0YxoKnt+4+K2FgVLnjXE/DblsfCLsJGcjZ+JemrsYTrDRh4zgPY+
 rdZUz4TA9M0Y9qnseqyrvV1Cv2F2eQ8rZ7eTUKMPzYnhjx71ie3qV2FVuZZCp8uWhk6eCtOzLwc
 7U6bJ1/A=
X-Gm-Gg: ASbGnctvMP610k9b/QG8fhgYaZus+RD1Ly7AZNKQn4gkZqQSeFaFg3q30h+Azx87pzn
 Bb/FT6+plJnQ7FKKwNu/f4R+EHCr8ZBv7qvj2+53NOuOoSY2/6qC34fos1+LTmn9lf9pQVdKzq3
 dCiGMJn0UGBsOPXxWuNmP1x7kXOFWUV4wVUh1ftpKE6vVwkrAePwostD2M0ZulCwnPcisJtxkOm
 yfX9T0xwPDMhLpkJX3q5gIQcodSl8MC4uMXEuzttoQc/OiKSwIHrjp7YsELSfG4EjNZOPNlTSDu
 sS2tokj226Mx6x7G4+LJOqOAnnWufCjiozufa4S0IEB4l5EFFPO4nPUNr+e/hBsL6GAwhjLnXgo
 SDBwX2/qME7fOdnCex/DP3grqcWbouRatDq9NUhTYMR3CfGZ8cTj11mc5q6TwLuapRfsSuQeuhp
 7iwe7UVx9SMhVgD9f9sOuj5ZtsPzFwYA==
X-Google-Smtp-Source: AGHT+IEOkPKDS3ippA/UZg8WG1ViC6k8rM1VU78/b27/3arzrdHMa+kWVMjojpoJ+dMN6p0wTajEAw==
X-Received: by 2002:a17:903:3204:b0:295:8c51:6505 with SMTP id
 d9443c01a7336-29d68413f26mr42077895ad.33.1764787755912; 
 Wed, 03 Dec 2025 10:49:15 -0800 (PST)
Received: from fedora-linux-42 ([104.160.130.6])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29bceb4af8bsm191703995ad.81.2025.12.03.10.49.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 10:49:15 -0800 (PST)
From: Cody Haas <chaas@riotgames.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, Cody Haas <chaas@riotgames.com>
Date: Wed,  3 Dec 2025 10:49:09 -0800
Message-ID: <20251203184909.422955-2-chaas@riotgames.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251203184909.422955-1-chaas@riotgames.com>
References: <20251203184909.422955-1-chaas@riotgames.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1764787756; x=1765392556; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q5fcgijNXgcog1NQQ0SrD5tvcPgm/urwfZJh5xcxU04=;
 b=XnWbIQ9mKkVYHPPhL232nBx9J8F6ynzFRG0n2ah48aq7ZvckBvCzkCncCfk3mOxlU3
 sFNJ2xFDRHDhNHRKAcgXX8lejBjPGM5cfVl7jdaP8ehnbxzz0PjKDK8gSPXjw79AmbNi
 g+Q/xn8mB0S0ULUTTNubv2TEF1oFnqb+koPx0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=XnWbIQ9m
Subject: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Fix persistent failure
 in ice_get_rxfh
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
all of these iotctl functions do not provide all of the expected
information in ethtool_rxfh_param. For example,ethtool_get_rxfh_indir does
not provide an rss_key. Previously, caused ethtool_get_rxfh_indir to
always fail with an -EINVAL.

This change draws inspiration from i40e_get_rss to handle this
situation, by only calling the appropriate rss helpers when the
necessary information has been provided via ethtool_rxfh_param.

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
index b084839eb811..7b409b9fca5c 100644
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
+	int status = 0;
+
+	if (lut) {
+		status = ice_get_rss_lut(vsi, lut, lut_size);
+		if (status)
+			return status;
+	}
+
+	if (seed) {
+		status = ice_get_rss_key(vsi, seed);
+		if (status)
+			return status;
+	}
+
+	return status;
+}
+
 /**
  * ice_set_rss_hfunc - Set RSS HASH function
  * @vsi: Pointer to VSI structure
-- 
2.50.0

