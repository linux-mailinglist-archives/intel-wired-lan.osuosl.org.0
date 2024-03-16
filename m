Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB787D99E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Mar 2024 10:44:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE55E606C9;
	Sat, 16 Mar 2024 09:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7yfegTwRqRd; Sat, 16 Mar 2024 09:44:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E81FC6067B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710582290;
	bh=eZiaMvkrAIYRvQGhX/VCrACQexpce25p/Aogx0gSR78=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4uAleUJBpVFTS0aQgW5L2qOT68LN5YZZlzK12A6rZ9xgTQtFrbS6nUzS8N9wDmVFD
	 5cUCpVlt52maZ4wPMBKE5+0gSJ8ojhKDZdeWwmyxTwg5eIKqaMtIfIg6ji81E7oT+S
	 NEZMh8JPVE2EwGaNC5YBQnD4NEFzNGt34NlvLSvXjkyPCT7V+R/dsT8VFADC4wecJL
	 nX8csvU4O782YF/q7n7SOR2tNrfARK7mXmn02uj0P+c7dqtvrCHCz4y6UwBWq+b7a8
	 SwbXp6rODC9mv6a2SHogf0ykrpSGfLxAoZwIE9rHe5zqpuwbPjdPjXXD9vcqtLVJn7
	 1K7cfmxasj3uA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E81FC6067B;
	Sat, 16 Mar 2024 09:44:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF96F1BF853
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 09:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB21E606C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 09:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNoS7DvaN0-G for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Mar 2024 09:44:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B1B4F6067B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1B4F6067B
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1B4F6067B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 09:44:46 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-34005b5927eso92221f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Mar 2024 02:44:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710582284; x=1711187084;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eZiaMvkrAIYRvQGhX/VCrACQexpce25p/Aogx0gSR78=;
 b=du5tTKTQRHlhRfKUYbzhzT6e0w8ub+j9fKidlx71xQrFCD5hQUykw00pQzFrCDNnuM
 CssaXQ1C/5IZdnTnp+p6CH90X5kedAdQTV/68+sngxjKgXuYa16SAvyHNROL46rnlbnC
 5GBZ9p2T8T1RXKhlul6tGjPubFn/Lwh9IW3KYHWCTjwtleNPknMZH8DvRCuwHZStSjBE
 b1zDJmHwwLR+1KNjsRcuhYOw5SdX5eP0IJ0dRzaNwlKHPqBX77+pYHepiwxZrt2XMP7g
 I6J+4zdRXzuQFrrMOS58r4RgimaJZCIFeefJBbTyLHJQrVVvWeGiwLjMNSBBV6/RCwfy
 jsWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTVJyh9yy5EGEsyYZgNxUa8ptIOQI7ta8U0nQCSJuydnF4atsJH9JteEmx7lPZcqTZdyollR5fQidHI7+A8ePGFWKCFNhMagrWd5MtCVoDzA==
X-Gm-Message-State: AOJu0Yye+9aTRYwh+NUmQRBJlT2twg61okvVoYwtPtM7nKtRZX5bi7ZG
 5F5IotGMaMirPAm9dQRx/VZAuiyGgX0HE05sfLWYP0BI7s7Hgq+ywkrmBTwn4t8=
X-Google-Smtp-Source: AGHT+IFOW1q6txMH9F3aIQBkLScKJhp062IvZBzvTzICyAWp7NA/r2UF046gqnjt7+cVDSSe9CEKdA==
X-Received: by 2002:a5d:47ac:0:b0:33e:d865:41f with SMTP id
 12-20020a5d47ac000000b0033ed865041fmr1595984wrb.35.1710582284437; 
 Sat, 16 Mar 2024 02:44:44 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 ay19-20020a5d6f13000000b0033e2291fbc0sm5157397wrb.68.2024.03.16.02.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Mar 2024 02:44:44 -0700 (PDT)
Date: Sat, 16 Mar 2024 12:44:40 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1710582284; x=1711187084; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eZiaMvkrAIYRvQGhX/VCrACQexpce25p/Aogx0gSR78=;
 b=KuxTGLRCEJugu/Kmfu4l3gqYBfNXDGWrhX63QGnQWC29GAMf8hUtWtTzIeTyMme6Rc
 FArT8N47lUjTUzJ0zR5sx4Cm5ZcxNnKwzOv4ao7J53Fx5h3kv5O42qPAEYG5a5BwIhSV
 6ewrICI7MB/uqRh57XH19GzGf+/sesslpCZB4YYsIxs32TWZXZJKzfJhzdejZgLkLHrc
 YkMJ10zcshpQ0xAhM6pgQrlCLMPBt1Uydp3JOC51cZFn2b8tyADbS1aE04pomWdZncI3
 q3b5ka8iwy5dFPCUKoHPRbJqKgtR2hLL/TqGCIHyLTRPUJ5FtvGym3Z3KvrhSaRbKeBf
 PjJA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=KuxTGLRC
Subject: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Automatically cleaned up pointers need to be initialized before exiting
their scope.  In this case, they need to be initialized to NULL before
any return statement.

Fixes: 90f821d72e11 ("ice: avoid unnecessary devm_ usage")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_common.c  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 4d8111aeb0ff..4b27d2bc2912 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1002,8 +1002,8 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
  */
 int ice_init_hw(struct ice_hw *hw)
 {
-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
-	void *mac_buf __free(kfree);
+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
+	void *mac_buf __free(kfree) = NULL;
 	u16 mac_buf_len;
 	int status;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 255a9c8151b4..78b833b3e1d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -941,11 +941,11 @@ static u64 ice_loopback_test(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
 	struct ice_pf *pf = orig_vsi->back;
+	u8 *tx_frame __free(kfree) = NULL;
 	u8 broadcast[ETH_ALEN], ret = 0;
 	int num_frames, valid_frames;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	u8 *tx_frame __free(kfree);
 	int i;
 
 	netdev_info(netdev, "loopback test\n");
-- 
2.43.0

