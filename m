Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 811E1A65A77
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 18:21:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2DB14098B;
	Mon, 17 Mar 2025 17:21:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cFN6pGhscs3a; Mon, 17 Mar 2025 17:21:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A60CA4099B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742232071;
	bh=Pdy+gIcUJozBrDyGWdtSpsvlQR5bKFNfUvrA1WQZkmk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Am8LVByvCgiri+xN29UxJ/JcsY3bbfo/l1vg1HctAXeYjxJ8aLHt6FpBUAc+fS9XU
	 aUmHRjBamTSmGoRbVEyjBT5Dy1USlKrYPxPiobJCFPNh5LvtOh5rya5WvPRj8ZJcD3
	 0K92cACF3lvYsMM5IjrUo6FVNblrb7lKNrGViFH95JLd9sX7P8C6G57hrqh/Lly9Ok
	 E1MfL6irUmtk3mkDwcn0XESWmEzWwLkT8sVXyP+hk8awLVedcr/RnnDO/KzIkGeupE
	 nyiQ/zQkVANu+FTuNSygo35pxeeBt1gx8f93jEXTQBDJHC47Ut8KNeuPBIMdNyVRYL
	 mdF6/uicg3CvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A60CA4099B;
	Mon, 17 Mar 2025 17:21:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E01912E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 17:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2250360A9D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 17:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dbgzOEvBDXIa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 17:21:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=colin.i.king@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 445AB605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 445AB605FA
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 445AB605FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 17:21:03 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-43ce70f9afbso23878245e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 10:21:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742232061; x=1742836861;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Pdy+gIcUJozBrDyGWdtSpsvlQR5bKFNfUvrA1WQZkmk=;
 b=BqqV6crbcli7hejI6TIxky2R16fFjqf3Ge2Tj9e9BcLdH4IOZfoAB7AgQfsaBHrqPl
 pgSuE10eoaCyFztQjWnAq8htQhzj9jN+Vzn/CXUZ2etkkJYu/HVf/SeV6TyNYPVMBpPE
 b1Q1uoHCbJ20FduTcYoigI0y0fPVywTPPuxl0SwK5tmrneQoz25NIKYRHbpF9KkXuEcl
 JSIkkhjtlbp4e5wCw6BrOuXq6poQY8S8B/v4z903+7a/R+4dp3bKkNm5w/clmBDjIE4V
 MArdxeZ1UcmjP02BJIPJWkoDnVRkLyLX0OnOqqFxVGBLSAyWhzFW/Jz/R3+KJPa8QkLO
 XWuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKYU7lW4SKHOw9FXchy5hj46ZDMLew6e2/hRRTlLPIjhoB7CMMNT0D6QHdFTIBzsrKrTNPwJVAILo5wGPmEgQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzIrSnJDrs+4hCC2ENXBGqBwyE1WTtKRhF3vFc2/Wd5BDS1yEkn
 kA0LH6dvdiEezLyJQ1OKJC7+kO+sgtJ/FqU3Kco4Zri4aYo5dmvj
X-Gm-Gg: ASbGncs7bu/38+Vo9L73ODfoMqt/vSfOz/oJaHaUMB8UQr2l5tChJsYI+cmUpuegX0/
 39gQe/reBBFXQVEnrzPyBmra/NOIb3QpoW3yCdKAchsS85hcTaXN+m0XUf2cekczBalsldedjwO
 /tm3EPDvjTWP7yBYieXeRQAskj+UuF/lK7PYQkn2IF0MzmxB0KU97gR0QtY7uqdg6c/aYftd2M8
 CThDqqys5QHCO6yyDMYgZt4QCweRVoCu3HxZvKR7THhL9M1MltoOaWHHtlwox3HTg0xS+Tjfwr3
 tfTAWcNZ98fVf7kx1eFS/NqqKe7/zPqhhLxESH7uQdcCffsNqRtP+zFZ
X-Google-Smtp-Source: AGHT+IH9v1iH0ZDNn8ib73oFHv+E3KPSpU0dfOiqNhT6bKjdl8ETtAzm/796/PE1D1nATR6iMmssOg==
X-Received: by 2002:a05:600c:3399:b0:43d:2230:300f with SMTP id
 5b1f17b1804b1-43d2230311bmr123291775e9.0.1742232060997; 
 Mon, 17 Mar 2025 10:21:00 -0700 (PDT)
Received: from localhost ([194.120.133.58])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-43d1fe60965sm110941615e9.25.2025.03.17.10.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Mar 2025 10:21:00 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Mon, 17 Mar 2025 17:20:24 +0000
Message-ID: <20250317172024.526534-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742232061; x=1742836861; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Pdy+gIcUJozBrDyGWdtSpsvlQR5bKFNfUvrA1WQZkmk=;
 b=f2zcG1+ZBAGTxD2wyWwHYuWGptDnLC1JknByArKVgLT/0hi7S1XyajkjQp2uPyiZc1
 ORduGZIKfEHs+3T/GkfdSXI9mlNnujrdfbNDxfO6Igis8qKAXes0/VWTBC74L+ox0Jmi
 JVCQzHcOACcJRE42NSNMv8ygJco6boEl51hxTiPW1JfRmxixRWAqjbfX66OSq8Zo7cMl
 925aKV0NSRtGuKgtNPljOAsqtywXMwfY5P5J1pIwXPOEjC2vsFcYrcp+gU6OGdiycoJk
 AB3xlydbGSzzxu8eHxWDEu0ZOCbbhWi2yydOV+OZcSlz5ehbNKFXnP6hdeRHJx1b/lUm
 q9ow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=f2zcG1+Z
Subject: [Intel-wired-lan] [PATCH][next][V2] ice: make const read-only array
 dflt_rules static
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

Don't populate the const read-only array dflt_rules on the stack at run
time, instead make it static.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

---
V2: Remove additional changes not related to this commit.
---
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 1d118171de37..aceec184e89b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1605,7 +1605,7 @@ void ice_fdir_replay_fltrs(struct ice_pf *pf)
  */
 int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 {
-	const enum ice_fltr_ptype dflt_rules[] = {
+	static const enum ice_fltr_ptype dflt_rules[] = {
 		ICE_FLTR_PTYPE_NONF_IPV4_TCP, ICE_FLTR_PTYPE_NONF_IPV4_UDP,
 		ICE_FLTR_PTYPE_NONF_IPV6_TCP, ICE_FLTR_PTYPE_NONF_IPV6_UDP,
 	};
-- 
2.49.0

