Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9225EAB6EB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 17:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 484B560A7B;
	Wed, 14 May 2025 15:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9OpJ7tGN1Im4; Wed, 14 May 2025 15:02:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACC3F60B34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747234958;
	bh=eJ6Gly97PUQf39g4PYqAseTk8kpWDYMCJC9Zl5UsN4o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kBohz/npFFTfFVxWEgBD1SrsY2tcIR1+hDyMNSOmbuqrZqNrZOZVeICNEVWj4yfYH
	 2bN3DUeRFU4o64SzO1yMtpHWc+oUMD7h5KNUYrXNLJan7WbqUCLXeK6hf+jT8NzFp5
	 HR9v6YmlhOIGDXox59YVjGiEM00FhLrMVProo8FxtI20AwdLxttsDzsSHoG2jrcbvK
	 KRuOkP39hYyheXAilOmEyw+y+oTcgp4kKBbFXhUjNkxMdlRyJwkwDXHvcGfIBMcOUI
	 QiNPdCoiy6jqL8DNkPI8JC95Pvhxy6wKqsnEXixh0om2oDp5tetjo/bkulzcy7zTI1
	 GjzA/IEgzHbSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACC3F60B34;
	Wed, 14 May 2025 15:02:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F94C12A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40BB4829DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:02:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74rNQyc7aVtd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 15:02:35 +0000 (UTC)
X-Greylist: delayed 310 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 May 2025 15:02:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 545038225C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 545038225C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 545038225C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:02:35 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E6EEF3F848
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:57:23 +0000 (UTC)
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43cf446681cso37318325e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 07:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747234643; x=1747839443;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eJ6Gly97PUQf39g4PYqAseTk8kpWDYMCJC9Zl5UsN4o=;
 b=iRF8lzfSeD2S65WbJ0a8Y9swNBO4MBNnXzML71C00dG92777sDKZdOuOgSwfLlFLNI
 zXzzRp0Zp0QhbF7TRh6DDpj3X2KFyS5EisMoHOQBBrpXkw2GYkuUNwcDUucgiqCElR3Q
 0wXOfisnLJHrHkmrmZNDyIYJexmeeEJga6fLw/yH1yXDU8g6DxN6TtcaOivYXZaLvTPf
 Bx+Y85rpoSYRV6NAryAf9MPZsnDexhYdImsxoV4yASmXC2TlG/OAA4EhRobE7KGnOw5v
 vLRDU5HPqLRlxHoul2SjSMFN1yYMzPHJqgRlzWIKUpM/beKP+3KYxP0lkW57XykuIUyD
 QiFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxnpikXtBrr113Af7JA2bnbPLc5MwPeXbPnYAesMmwzScstuscsexq08hgysqLFHbA9BN6D14NZbUGmwKPIUQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxO8WXCB1t3RV5PX5ttRVKL5mQVwTK0UM0PyPHK42HrUql7g+oB
 etFHXWj+YamWcS8A+6EvL8FaZIYYTxtLhFGzWtEaAdfSgr1LtVzPhWjE1sUOUN5ObuPQl/H80y/
 fybo3iSoLd3DBNStWEOI4BnoJa36m7/NJtuesOunIKnmTjQJ6NnZPogHtr7ChFA9UmcWjMFfNRs
 7ENayU/Jc=
X-Gm-Gg: ASbGncvhxps5GSgP7AZHr4cJ7O17pp3rHX8ker9cda/eVckJJY02aFn+8A7TYR1Glgh
 Mn9T9wpyFncatxWrNEBqFXhj5XaGj3W9AcqOsjrgO+p2TVh5fOHNeZ7wRSLC/y75xyexkGowJuz
 CwDnMjOgbf02rLaPxrc04ePlgHshu4/cNgH2SrEVIk7rZoZ3NTOUiVvUCZADI/MQkjJjCgxaIJ7
 ezbYPMs/vtyDvT4DedC5x6Czg9zcJ+lkiodbk2gm9TU6+LWNjXLFlZY+Wi7N6d15goKxO49ql3f
 rzv5WeQQJnFQdA==
X-Received: by 2002:a05:600c:a40a:b0:442:f4a3:8c5c with SMTP id
 5b1f17b1804b1-442f4a38df5mr29989615e9.10.1747234643451; 
 Wed, 14 May 2025 07:57:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSuB7tXsDIbAHlX6PMrLvGckFWYgd4dOo2H71kbxEJ7QeEIn4un94uLqKVeEVE2OesAMwOGg==
X-Received: by 2002:a05:600c:a40a:b0:442:f4a3:8c5c with SMTP id
 5b1f17b1804b1-442f4a38df5mr29989245e9.10.1747234643098; 
 Wed, 14 May 2025 07:57:23 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442f3369293sm34512765e9.6.2025.05.14.07.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 May 2025 07:57:22 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Wed, 14 May 2025 16:57:20 +0200
Message-Id: <20250514145720.91675-3-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514145720.91675-1-robert.malz@canonical.com>
References: <20250514145720.91675-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747234643;
 bh=eJ6Gly97PUQf39g4PYqAseTk8kpWDYMCJC9Zl5UsN4o=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=D+YQSnP2mBJA6NBlKoZqPg8g6HMnNoyej+EmKu1p7MU9dGw3tCOcPvlLCxbVBNC3u
 aTBSyGzpycTgY/XM606FeCogIhzt27p5IaHpOVyp0G3Ucfnp2PEfaEU2VKZ3ccvDzO
 hXhwJr6SiTRGaTwiGYHiT7+vJC4/ztO2AGZnl3RFzJaLn+srwfOe29epJa61mpgpvF
 ETBlKs5oEgt6pShgsOyZ5SXtB61kE7nUSDxzCg+kjP1mF1eoshbCtMPinRwyT9sCkS
 GED3xAbGgRsu4RlDzKlTTw5OE6Hd2BVFVBQ514WUOiMOjYG42ubjI/d3mdO7XjJKW7
 e/9c9fziw7cHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=D+YQSnP2
Subject: [Intel-wired-lan] [PATCH 2/2] i40e: retry VFLR handling if there is
 ongoing VF reset
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

When a VFLR interrupt is received during a VF reset initiated from a
different source, the VFLR may be not fully handled. This can
leave the VF in an undefined state.
To address this, set the I40E_VFLR_EVENT_PENDING bit again during VFLR
handling if the reset is not yet complete. This ensures the driver
will properly complete the VF reset in such scenarios.

Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
Signed-off-by: Robert Malz <robert.malz@canonical.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index abd72ab36af7..6b13ac85016f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
  * @vf: pointer to the VF structure
  * @flr: VFLR was issued or not
  *
- * Returns true if resets are disabled or was performed successfully,
- * false if reset is already in progress.
+ * Returns true if reset was performed successfully or if resets are
+ * disabled. False if reset is already in progress.
  **/
 bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 {
@@ -4328,7 +4328,10 @@ int i40e_vc_process_vflr_event(struct i40e_pf *pf)
 		reg = rd32(hw, I40E_GLGEN_VFLRSTAT(reg_idx));
 		if (reg & BIT(bit_idx))
 			/* i40e_reset_vf will clear the bit in GLGEN_VFLRSTAT */
-			i40e_reset_vf(vf, true);
+			if (!i40e_reset_vf(vf, true)) {
+				/* At least one VF did not finish resetting, retry next time */
+				set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
+			}
 	}
 
 	return 0;
-- 
2.34.1

