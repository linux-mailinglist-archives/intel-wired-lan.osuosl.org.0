Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 929DBA4C674
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 17:15:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4666981F60;
	Mon,  3 Mar 2025 16:15:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fC3czb5UUl4b; Mon,  3 Mar 2025 16:15:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A0C8820E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741018523;
	bh=ALzECRug3pCnEgmKD7GaeWIQgfl3zaHcGtQwIkelrJo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OqoJy6FHZAK0ZbD7w3M83uS5FVmztbl18PRUFOyW7r9gY45TQrD1+o3yqCaejkU0t
	 uwPwHvdWsH6T18nEMrleNW0g+1RZV3mfA9J81c1cL6GXqWiysh2kSQTNfWvOmwxgyC
	 Wveo64B4OCI0v14ps81gnvmzzix6mn4JgIeHo60BjjRKBcvUjOKD8qPbURSAs2/sLW
	 dcGUxvpg/OxkhyoqK9Ew1IoLoHTLKHPefXe+7Y2JDiPFq1w3tZsnN2iLs5IYCpLj0X
	 0chySwqb2R4Q9CrZ0eaaAwSGPa7kF6f87xvy7vnYJmlvy9bJKgx1knvVK5VW8YU4Kr
	 8hyzn5KXgR4Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A0C8820E7;
	Mon,  3 Mar 2025 16:15:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C410D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 282C4402F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:20:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8W3sp5Eq1wNa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 10:19:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=bookyungwook@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08C33400C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08C33400C4
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08C33400C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:19:58 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-2238d965199so21155765ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Mar 2025 02:19:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740997198; x=1741601998;
 h=content-transfer-encoding:cc:to:subject:from:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ALzECRug3pCnEgmKD7GaeWIQgfl3zaHcGtQwIkelrJo=;
 b=QyyKe3w/P/VxyWlKK65Yts5I6fdxg4CSREINjAeSdaBM+QkqtqgM2ZvIVRHcS2yCAd
 5IVivthHi/g1SOW0/lKLKbYqv97kHD0vkdQZI9wLnhy7DJrep/w/uEpa2t++AEmKfSLz
 Uk+MngHyc7qVeayHkb1ubmojj3B8LOj5RWPGVeswCm7EMV48LzUyTQsgfO1v2ETTP03G
 cWcnZg41hj7Sj58Gh3/4C+vvCNpPh4Y8o+wxyQy+KWDchv/P4JTJhwJuYCB1FctAmy6Y
 j1UfR02l6zR6tH9Yn3iiQFW2cgt4ZVIRCKmpfGahFu5zZG3IMbM7Aa49dgpIZ4gsUrED
 NwWA==
X-Gm-Message-State: AOJu0YxKzKWxmF0zEELCniyXOo8evNPJS1oltkX9J9HUn6EgrfmXv5CP
 hiXMflYQLBZV5IjbPxRmC+MJ/CKu1OgEUUi/OtIzdcEOdNK73WrE
X-Gm-Gg: ASbGncuHl7eJzXWbJnGfyLuqtzpkkYm6zmqpRhDBJ3SiQOYr9jFQJi92C7xw5IVJL6q
 FewXwHqGfj9EkKc9DJvWOOVCbTycioz5kTQgz1IdyNtsBJUp2Yhk9cHWKvNZHNebGaFsZsduEcW
 LZmF2Puf8s3odCA1sllo15HsGLZg4IXcsa/DHxx+73N8j2qspzyvqmxkoE7AZj8tsezcngHPx24
 ITL14cepyC0B+AJUngXmUZGlG0YdT0hUQUSDgInTGx7KFAxcSkVjXyOlYX68IaQLUp5FjCgicLj
 /VWledl421umTCeMi/i/s7J7kI+k4aZiHg5h1FlueogjKerszXTU4JU=
X-Google-Smtp-Source: AGHT+IHrGUCiyixgFG8XWQdXSW3V+lsIqez0Ar8UD/Zaws7YPzoId5LD3q4VQeuaq9BKNRu60//xrA==
X-Received: by 2002:a05:6a21:3a93:b0:1e1:aef4:9ce8 with SMTP id
 adf61e73a8af0-1f2f4dfc2bamr20722457637.28.1740997198226; 
 Mon, 03 Mar 2025 02:19:58 -0800 (PST)
Received: from [147.47.189.163] ([147.47.189.163])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7363f2e8a34sm3287638b3a.168.2025.03.03.02.19.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Mar 2025 02:19:56 -0800 (PST)
Message-ID: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
Date: Mon, 3 Mar 2025 19:19:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Kyungwook Boo <bookyungwook@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 03 Mar 2025 16:15:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740997198; x=1741601998; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:from:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ALzECRug3pCnEgmKD7GaeWIQgfl3zaHcGtQwIkelrJo=;
 b=fPhSds6n57wFpB0bTk1okDfkFAaZ8bk4CYPR4YQLC1paMpWjrrtns7XPNnQlZtU3Wq
 j/5oAVf78YKn1QBMMnSmkyDBHtvJXx4ejxQ1jRRy973uJyzRtW7ipgDLXrvpudik3sNE
 m5iPg0WKSh5vgg22IoE0G0XBJrkjboRbuirvGSMAptqkrQqaMLdIWSyvhC2kf2SAjKFm
 IH+TM43Kz+7TZO7XYoZr/v6ZU2yTjomiPnl0HTrm+KGMJ7mzqiqfFDVRMRc/WVLHXr+d
 OcyvjOv64/4WJstGqNig+AMjl0vB4ULnwWVuZpkRKbmYCgSxKrNdsGT9a+5qzPZyRNjL
 AFYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=fPhSds6n
Subject: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
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

Hello,

It seems that there are invalid page MMIO write access in i40e_clear_hw()
due to an integer underflow from num_pf_int(also num_vf_int seems possible).

The following is a sample code in i40e_clear_hw():

val = rd32(hw, I40E_GLPCI_CNF2); // (1)
num_pf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_PF_N_MASK, val); // (2)
num_vf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_VF_N_MASK, val);
...
for (i = 0; i < num_pf_int - 2; i++)      // (3)
	wr32(hw, I40E_PFINT_DYN_CTLN(i), val);  // (4)
...
for (i = 0; i < num_pf_int - 2; i++)			// (5)
	wr32(hw, I40E_PFINT_LNKLSTN(i), val);
...
for (i = 0; i < num_vf_int - 2; i++)			// (6)
	wr32(hw, I40E_VPINT_LNKLSTN(i), val);

An example scenario for num_pf_int:
(1) val = 0 (if MMIO read value was 0)
(2) num_pf_int = 0 (also zero after bit field extraction from val)
(3) An integer underflow occurs (num_pf_int - 2 == 0xfffffffe)
(4) Out-of-bounds MMIO write access if access address exceeds the expected
range.

From above example scenario, the maximum access offset value can be around
0x4000347f8(=172G) which seems like this underflow is not intended(also there
are masking operations like (2) for num_pf_int), so I report this issue.

I think similar issue also could happen at (5) and (6).

The following is the patch method I propose:

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 370b4bddee44..97ef79be39b3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -848,19 +848,25 @@ void i40e_clear_hw(struct i40e_hw *hw)
 	/* stop all the interrupts */
 	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
 	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
-	for (i = 0; i < num_pf_int - 2; i++)
-		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
+	if (num_pf_int > 1) {
+		for (i = 0; i < num_pf_int - 2; i++)
+			wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
+	}
 
 	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
 	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
 	wr32(hw, I40E_PFINT_LNKLST0, val);
-	for (i = 0; i < num_pf_int - 2; i++)
-		wr32(hw, I40E_PFINT_LNKLSTN(i), val);
+	if (num_pf_int > 1) {
+		for (i = 0; i < num_pf_int - 2; i++)
+			wr32(hw, I40E_PFINT_LNKLSTN(i), val);
+	}
 	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
 	for (i = 0; i < num_vfs; i++)
 		wr32(hw, I40E_VPINT_LNKLST0(i), val);
-	for (i = 0; i < num_vf_int - 2; i++)
-		wr32(hw, I40E_VPINT_LNKLSTN(i), val);
+	if (num_vf_int > 1) {
+		for (i = 0; i < num_vf_int - 2; i++)
+			wr32(hw, I40E_VPINT_LNKLSTN(i), val);
+	}
 
 	/* warn the HW of the coming Tx disables */
 	for (i = 0; i < num_queues; i++) {


Could you check this?

Best regards,
Kyungwook Boo
