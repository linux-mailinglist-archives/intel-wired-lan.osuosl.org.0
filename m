Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C856978FB7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 11:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BF6D4047B;
	Sat, 14 Sep 2024 09:58:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G98ndcg_9q_5; Sat, 14 Sep 2024 09:58:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2EAC403C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726307886;
	bh=88eCWCoJ6XR75TD+7uqwXik/mRXRbb4L/oRDMA8RVAc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QGnz7D1TS+bR1ljbtknoZ+FJt2osEGtm0ZB8pumHdcsZgvaRkvx99rtZeu4ElLiek
	 wiq6Kv5dzEmdIxeerQrGklQo+ckBeIkkjZ20pXG8gGn1cANA/fG4bg3ECCFifWTznP
	 3NNhB08rTV2SbG/8uHtDGyETfCDCt7bz9MRl/Kb89xjGqM8TgBw8JHZxK4OhCDsV88
	 JERj+buEBc3uoDcv9/IZ4CLnsL8i72Ar+XFBHiaM5SsC838h/a4b3qwHZkMVew86A/
	 265FWtWCiY9eGBVm/uLvHwp73v2+uVkm2z7itxQTRsshFRQpYmCmnT0oRsdNHqw89R
	 jLSWtc4S74koQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2EAC403C9;
	Sat, 14 Sep 2024 09:58:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DBAA1BF280
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BC3160683
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:58:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NhmWiq67jjWp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 09:58:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 16A3760672
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16A3760672
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16A3760672
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:58:02 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-42cbface8d6so22789015e9.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 02:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726307881; x=1726912681;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=88eCWCoJ6XR75TD+7uqwXik/mRXRbb4L/oRDMA8RVAc=;
 b=Mksjku4HvgM0u1lyHW1qOHj6jTXy98Sq2xNF7HNbnykeEBBMA+vuY61ytEcUPxT4G1
 k/J8TkwaMGb1fH++vVR4pcAm/ciFwu1uAmy83/iKQy8eKkFvT10PfjoDmJHMrTGQHwVC
 kSXhw13s5KUvp6mzsi5aI69R1RicjggIQi02HtOAal/ExCU4SWMh1eUSoa8PmbMLE2dx
 5Luf6uev59V7gwOOUtF4oL4nxAspp1QcxGbwgwESCqN6o/k0JmSZbwThhJW4zxUonBd0
 leV1TzQ3vn1xnIwahSaicDT28IMArx6PLUnjQ3B/PDnpNSMrBoUX/P0eMkrSf/1Y2Tpp
 fuHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJ+H8WxfmGM5jin9OD+cGTD1XgTisAlFIOXN7G/EF48hGmYo6yHl9DNQr4zZm53t+gYKq8GlZZVuaJTRJcAH0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxi7VO9NSbbP12YjjJH68CSkfzwT4PsTW0d+rHFeoyTau4gTmAT
 fCMl6UovrlJBcxsXV7hzLYIZeRPG8zh3li3lItjNLKI6u9drSls9vt0Ys1rTSEI=
X-Google-Smtp-Source: AGHT+IH7GmXL2XmaP0VmzSlcMV8/a2NLWHWGYPOZMBM/UtK5vb5oZb81UImFpRwQaVXMv0UR3lG/Yw==
X-Received: by 2002:a05:600c:83c6:b0:42c:b220:4769 with SMTP id
 5b1f17b1804b1-42da2bd7679mr14208405e9.32.1726307881005; 
 Sat, 14 Sep 2024 02:58:01 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a90612b3eb6sm60495966b.105.2024.09.14.02.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2024 02:58:00 -0700 (PDT)
Date: Sat, 14 Sep 2024 12:57:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <6951d217-ac06-4482-a35d-15d757fd90a3@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1726307881; x=1726912681; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=88eCWCoJ6XR75TD+7uqwXik/mRXRbb4L/oRDMA8RVAc=;
 b=sooun3/F4T1tcetDY5Jso/QWrE26mkaS9RSQ2Q5bwM7xjiLBSnmNHVV2OpbUTk6DLE
 eVJ1+GkAqaQ2HrgwLeoRPtmb7DpqvyJuJNgMazUYdpCoD9mi5nLNhEvAOJa/vxWgTNwd
 wuMOngpN8/B3vNEtGlrkUUAjKifBQK2eg3gB6m2sgHdTx1WNZ+xMUSY3xo1G5D2yPnxR
 bqsgKqTvkyTPKkdoVejZYE/v8NqfpFtoVV+4NcT9fQrUBpSBycb47Imr62vNa7XnGGh9
 Til2BC13gHiTQ9g6YMV2Ols3i2dGFeIlgwOgeKcGLXPese0htmMJiupm8bVvQSFG2Gtg
 VNGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=sooun3/F
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix a NULL vs IS_ERR()
 check in probe()
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_allocate_sf() function returns error pointers on error.  It
doesn't return NULL.  Update the check to match.

Fixes: 177ef7f1e2a0 ("ice: base subfunction aux driver")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index d00389c405c4..75d7147e1c01 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -108,9 +108,9 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 	vsi->flags = ICE_VSI_FLAG_INIT;
 
 	priv = ice_allocate_sf(&adev->dev, pf);
-	if (!priv) {
+	if (IS_ERR(priv)) {
 		dev_err(dev, "Subfunction devlink alloc failed");
-		return -ENOMEM;
+		return PTR_ERR(priv);
 	}
 
 	priv->dev = sf_dev;
-- 
2.45.2

