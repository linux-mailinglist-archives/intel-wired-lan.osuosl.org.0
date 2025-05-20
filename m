Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D636ABD201
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00D854088F;
	Tue, 20 May 2025 08:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FIKf3pGOfL54; Tue, 20 May 2025 08:32:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5760440898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747729932;
	bh=QYwOZSsI8hjs35UBubBF8ilnkn0uGGlIyWCa07KKVXo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QQpB5AJge4lXW49iSs1dYYXkUQQWjRJbxO+z6c77q99gsxF883NbpzLm/ovSUrDha
	 jPObRjVwXPKWOcz/95B/mEljXVW5DZy3hMD5ScUTog5gKR7meRQL45FTBM05/+XAaK
	 dtTnFlrs9lhkAzyB9JH1d0KZbWtRmKBed1CUSTxh6kkWgtzTrHDce8IlJb6FBy4myH
	 0kDzeIySlGFSMqPdSK05yozRU/X/FI4DFLFZs33YWMgU0OEsAF5ty1piU9XuyjjRuD
	 YWdBWMi6EGoG7k7f6i6YxSszMIgdU++VmBtW9wUN6WBDlcaEAIHOzw9zxgBz7YgW2z
	 dDmta0eHZ2Bxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5760440898;
	Tue, 20 May 2025 08:32:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D6AD3193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8680814C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uwBsydJg2Slq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:32:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 23D9980DC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23D9980DC9
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23D9980DC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:09 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AA4764065A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:32:04 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-601dfef6bafso2083996a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 01:32:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747729917; x=1748334717;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=QYwOZSsI8hjs35UBubBF8ilnkn0uGGlIyWCa07KKVXo=;
 b=AbGCSlkMYFb3ocm6x1LTcavDErp+1P9ybwqc9ZMo1f2n8lUZOvtYgFq5tvN6TBWu2k
 K/TnrtDV8vXoycxnYxrYh9uY6BMVO83BMiMcqCYfGJV9vgwideTJ7C8AAKxHfKCL7wZq
 gepXmSOy3HRyGPZ/v1w3a4IuQlfo5TVTT2BfCqnXLJjKW1Grsc+pUzdV6MOT0yywrten
 xtZswwoo+KcRf9GuueH/LgmXhYN6kx7UN74Bk23VjeVHU5T47hTU4JldPqPLNZPlLFz8
 1jUnKZfb0x+de1vnIIpIthwrET2+Lt1aKT2DPdf24oGk84R0lNHS1RJ/WJmfofrnxjOk
 kZ2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3BRL5O1F7iWlLo/r6BqNO6UymYeBaQjjkOBw1/Ldi74AtJ1ZSWLGaucS6YYp+RTf7wL9jI9SCgYilxIQn9OE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyhw5WdTMRhdngwQ/y2t7fL3nnOLYL9XrzWjsqmTN1+CWLjUw7g
 mW3SPNHR+yqdZNDyKWpF4Mtr0haagIpL9kXL8gzPeQoTXvN+A87+W4i7Qo8XR3qFQB2250axw4g
 xRdQpywV0mLR4elJkXS5mLA4P699zF/AGRvzzC5/uchU7FPeRZMaID7V0Ty4GPNBB0J7JC6LgDq
 zCuPAREwjC86c=
X-Gm-Gg: ASbGnct09nb+lBu9R8kfEU/hjwTH7h6fHuidLQo+gKwvmt1sOY46lZG2sDek5Q1u1S/
 O9Q9lheVXl1AWj3VdBhwoTTlMVlGpqL0jBX7D40vgte7t9ekro3pmXzd8iPyEJU3ifQAXX0Of0u
 CIKZtd3EflW71wD+Zj9hVP9WPqBvaR0BMeXU/9ml4vLMey89aZhT5gIiCG0sIA8DsQKRjIZICSr
 6jPUjpY26CZ1bMt1DIGO1roxgpeI1OS2DqlXqQwZab1xzRQOZchL0pO2oGUqRKklrqyw2EqL6qW
 AWHtOnvrNT4=
X-Received: by 2002:a05:6402:5cd:b0:5f6:4a5b:9305 with SMTP id
 4fb4d7f45d1cf-60119cd4192mr13301407a12.33.1747729917592; 
 Tue, 20 May 2025 01:31:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1syGi74PV0b9b/ga204Wjx80qf3qBYeXuyNyUXirykm93ZieIuHmEWg/iwg1FYse/VIYaeA==
X-Received: by 2002:a05:6402:5cd:b0:5f6:4a5b:9305 with SMTP id
 4fb4d7f45d1cf-60119cd4192mr13301383a12.33.1747729917237; 
 Tue, 20 May 2025 01:31:57 -0700 (PDT)
Received: from rmalz.. ([89.64.24.203]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6005ae3b824sm6857875a12.79.2025.05.20.01.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 01:31:56 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Tue, 20 May 2025 10:31:52 +0200
Message-Id: <20250520083152.278979-3-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250520083152.278979-1-robert.malz@canonical.com>
References: <20250520083152.278979-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747729924;
 bh=QYwOZSsI8hjs35UBubBF8ilnkn0uGGlIyWCa07KKVXo=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=D4Nv0SXCOVdtJ9ZnfcMuJlEP8WDh6hwKybrheIHytOeKfPlnrx+DV9CANSEr2Xr/n
 hxjOO1zDYHjkG7J8b1INu+dOXabscelPrTlRpW27YfZ2A+Yg/Lp3QMgXVcL5d5UHbA
 nRh/Mbjps1wspzTom73kU33cQROgJLAzPTblNCT1ZTgpHv1FlZS2ZYjrP7yFP4LJRf
 aLZtQu+cLhxOQHj+Kq9dFO4Dy2y+vE7S6/u1QbSkF6GuVngrQ63QsCkjf9wbCXEBU9
 sFjSj2RyTYtwY/+PvCoiuyzwIZlfoWKdQbAFrxYyDEAF4P2SYmX54GQW9TGhntVQkn
 4MR/twYw86tYA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=D4Nv0SXC
Subject: [Intel-wired-lan] [PATCH v3 2/2] i40e: retry VFLR handling if there
 is ongoing VF reset
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
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 22d5b1ec2289..88e6bef69342 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
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

