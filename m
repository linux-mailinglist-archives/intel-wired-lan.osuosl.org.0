Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49731A5420C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 06:26:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BABC060F06;
	Thu,  6 Mar 2025 05:26:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYHh_YOrdzdO; Thu,  6 Mar 2025 05:26:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAF9560C17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741238761;
	bh=9QDabgt74hchcw11vM5ZQO4fhwXVE7xUCtKdYmU3HQA=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FXf5i5I5SNjqEbUk0zgoMN/hm0+m7XZaWH6ukXSMzRDOwm0plzGwYnBNZ/pdnYekl
	 VW1N9CdLMzKG+O7aoHAA7e2uFbXWe1nJ4+LHWut2uRxYb0RolDCehabB2OWktxjPPL
	 vp+PdteeG4Hwc63BIZOlW8mm3lgeaAzLMdZ4t6pKf+WLpQBvgYsqYVktKI485lOJqp
	 qXIc4imFYNR+3L0w8hUl1OFKkqyP5yB+W3d89miJnvbpmz2uB4P3FlL5+qwulmxo2V
	 djgOqM1M0oyvJzwqJA6SJAu7E5In9NQpDNY0qK59dr5W1cjXU1CaTCQ4GtsK3qo3QH
	 L6uuTpTICLH+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAF9560C17;
	Thu,  6 Mar 2025 05:26:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E5DAE2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 05:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E53D81159
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 05:25:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KPudb6wtkim for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 05:25:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A4C081CA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A4C081CA0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A4C081CA0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 05:25:58 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-224100e9a5cso3518605ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 21:25:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741238758; x=1741843558;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=9QDabgt74hchcw11vM5ZQO4fhwXVE7xUCtKdYmU3HQA=;
 b=BCdua67TvPWMfqwT6bc/ioYdWbSLp0hi+1yES+WQgz42JlZbKs4Sx1cs4ha6+Hlxx0
 nwBJAJh4aJ5hC3i1lJBZqKl8WKhriEKYZGC6CYciZ7gcYwhKEEMn//NDwOLjA0etRWGu
 +OOjglIDIgQQvYeoANXlqkB734lsikEbc6JTtnpcTNySx8xUGodmVdMKfEg2Er4OnlJT
 LGPX3/FmwmvCVXjI4wIwkxylxBZ4aQitH/+EwjT8HcAryJ3SSdzJd5Rbe6M91Jh42be1
 s/3yWcYg83DBCQc7SPWSL3oh5efUG8Kj5AG6i11uXoxDU4UC0GWvVMMjE3sni3g+M/RB
 l79Q==
X-Gm-Message-State: AOJu0YwMecN2abQEtUHrzjBoReo3KPy6zIqWzwN1208JrTeXZa+AmLsp
 N5uMp0MqjU/p+FcmpT28+Qm4z3meGwwASXl9y9ibP/OgTUYP7LtAkBbBlAlV
X-Gm-Gg: ASbGncuik6shsB3s2VaKR6Li2DumWjIJgdGc/zz1b3M0PWqqNR1qW7itMdeIh9nV1RH
 JWGd2sQyPyvGlFWkhngRWJRVfhA/p6GXUbZlnQDDKzji2NzWL6ADL8/tLYfYwx6BFbyp3sla56J
 MDhym5/xtHe3Ju7jQpZ+qWHRkWMy9ktDItdknQ4Z7M1yQgKOY3Or36EA49NdcUh07lx2C95BJFy
 yip4mw8Nk6PUui4GFrrohtecE0vcwsxGkgRLrgk9sHj7CeBLiPcRcBkp+Wuj3HOv+rmbk5x6YdN
 zdlPWplirR3F15gFqdzMeecgZwfoeJ12jeOy1SrkB6Ozy5AdkwQRDNE=
X-Google-Smtp-Source: AGHT+IGnEX3Pf3lGI9K3Fats2RMMy6ant6SEVTbN2BeD72fY2StFq63MptV+0LfkddSY93pqHLTOzQ==
X-Received: by 2002:a05:6a00:244f:b0:736:6151:c6ca with SMTP id
 d2e1a72fcca58-73682b4aa32mr8352042b3a.4.1741238756195; 
 Wed, 05 Mar 2025 21:25:56 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-736984f7268sm394020b3a.116.2025.03.05.21.25.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Mar 2025 21:25:55 -0800 (PST)
Message-ID: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
Date: Thu, 6 Mar 2025 14:25:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
From: Kyungwook Boo <bookyungwook@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741238758; x=1741843558; darn=lists.osuosl.org;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9QDabgt74hchcw11vM5ZQO4fhwXVE7xUCtKdYmU3HQA=;
 b=AO6lU497vXhOcvVtoSJtUa1wuUa2kbejHftxPO5ZAxqvog6aiDOMEUwmvvsKvNK+pp
 ntwL+csMpUPH0I70ymU76h/7JhQm3DR4L4CMarpw8pD8Ic8nIlN9xZAJbvVWsJca9yZb
 me0RcIMjuDjAj9Xk3hR5tA7G3zcCA4u2apLHHkW5mhDTxV3XhM+2oSwlSweiXO/7Q+sH
 OgP0px8nz0ZGvTd+ydvfl4JmbOhI0KfmbkDRa/WT3VrkSrf8jxZbf4D8HahxKhEqXV8i
 CcBy0/D3yuxmIFDFa9H2klwZKOcA3I91dhBPCGLxLoPHsiLJAEziEkHcAseVzea7g8Ts
 X+pQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=AO6lU497
Subject: [Intel-wired-lan] [PATCH] i40e: fix MMIO write access to an invalid
 page in i40e_clear_hw
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

In i40e_clear_hw(), when the device sends a specific input(e.g., 0),
an integer underflow in the num_{pf,vf}_int variables can occur,
leading to MMIO write access to an invalid page.

To fix this, we change the type of the unsigned integer variables
num_{pf,vf}_int to signed integers. Additionally, in the for-loop where the
integer underflow occurs, we also change the type of the loop variable i to
a signed integer.

Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
Signed-off-by: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 370b4bddee44..9a73cb94dc5e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -817,8 +817,8 @@ int i40e_pf_reset(struct i40e_hw *hw)
 void i40e_clear_hw(struct i40e_hw *hw)
 {
 	u32 num_queues, base_queue;
-	u32 num_pf_int;
-	u32 num_vf_int;
+	s32 num_pf_int;
+	s32 num_vf_int;
 	u32 num_vfs;
 	u32 i, j;
 	u32 val;
@@ -848,18 +848,18 @@ void i40e_clear_hw(struct i40e_hw *hw)
 	/* stop all the interrupts */
 	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
 	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
-	for (i = 0; i < num_pf_int - 2; i++)
+	for (s32 i = 0; i < num_pf_int - 2; i++)
 		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
 
 	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
 	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
 	wr32(hw, I40E_PFINT_LNKLST0, val);
-	for (i = 0; i < num_pf_int - 2; i++)
+	for (s32 i = 0; i < num_pf_int - 2; i++)
 		wr32(hw, I40E_PFINT_LNKLSTN(i), val);
 	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
 	for (i = 0; i < num_vfs; i++)
 		wr32(hw, I40E_VPINT_LNKLST0(i), val);
-	for (i = 0; i < num_vf_int - 2; i++)
+	for (s32 i = 0; i < num_vf_int - 2; i++)
 		wr32(hw, I40E_VPINT_LNKLSTN(i), val);
 
 	/* warn the HW of the coming Tx disables */
-- 
2.25.1
