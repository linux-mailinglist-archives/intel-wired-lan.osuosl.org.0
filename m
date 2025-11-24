Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 522ACC7F396
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 08:41:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D957E822E6;
	Mon, 24 Nov 2025 07:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9JbeiMA11oh; Mon, 24 Nov 2025 07:40:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2387E822DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763970058;
	bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=flXl8CPZxPZ50QbLCbLOVJMaXUxqNZPFj7MV1Z2MS9NEZGtMd8lprBLYu0fHhskar
	 zPNXlb2UfpSP09mDWLpkr1V/dDaYERcXDzMnqghdLlpbavk3mirgXeq5zbTVK9rbkI
	 SVhX35Ysv1XajN9GvMAQ9DD6Qu/TFQnCgeb4YUDhwpsWepWOpxTSj6uPdbzF9zErVK
	 JN9CxxadpkQBPsR7qQzSiGwqoumeQkfy+LNIRBMvA9AotMFJXhbpdpiL/Ws/Ids+uQ
	 l9vp8lJUiF5OrdA6/BZ14t7z7zeetJ184blVsKn3GGExhRIkBzZU6Qzu6KlTqArc4m
	 mINrDgZdyOpBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2387E822DD;
	Mon, 24 Nov 2025 07:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 15FE6E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0E354008F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3k3fri03rePQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 07:40:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2129A4002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2129A4002D
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2129A4002D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:55 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-7acd9a03ba9so4478360b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 23:40:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763970054; x=1764574854;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
 b=je8etTPBNT+rZk2ERAAnWmLjK5JPH4HXVeafi3V63Ylro4R1hJWgmpPWdgNLBoXjNX
 BgdXGHESVaCbfUtKOV1xfA98USgcHVlTaJ3aFBmszGZuJrzFunDhOVCl0IcE5BVzQC49
 jYPcTaePql0KXJbEUWdDTiHRTmabF6inl3NjV+OM5txbgEAXRlH9gmAR4QfyJk8GHeSS
 MTc6kETIgnYj8MV1xQ9lgINHz2MFmfxAKRcE4B9xDn+6O1NvguNLKiN6RqW+hrNcRanp
 0U/FXZJofArgaJ5Jcb0DtdPjmW5INDuT8gKi6NmTvAXH5KdZ8U5E4OFhdHviVq6jA1+q
 LP6g==
X-Gm-Message-State: AOJu0YxJYGhGcv9Isl7B4S9sSAeTE9GlOJKARjND5//cRJvdTDhkIaNg
 YK8x42utp+IdRrb5VCireXQWOiMQCFJluYioeaB1bmgAYttuY7hfWn7j
X-Gm-Gg: ASbGnct4lU4HeFOmh6b01hMx0DR2KYTwL8HsVQJJlWrejBQcahApi8Qv8raGmq3Olut
 za/oCqxvY/7P4zc0DgLgW5y7w0rFddLSc7J066rWD1DTZ+INh7nsj0mz66Ek/oS2DS3ONZ0pTue
 aideKAJ9h1gL0xgEQPFV9DAVgpfJ6TxHZZt1jsSxpxRzECcK4V9SUpWsb1Rg2HjkZzsMajGYRwa
 yieB0uKoF0IW1JG2+nV1dU4uN+mmydMJBCfqjJkhiCPssm55e0fkLid+BpQKkezEHX/VX9XH01M
 TmEgX31jFA6MI2FDKlLomefceT5auqmV3CbxN8FBSnE3Z9bIO25R8sCETyFP3mmFNIldo/5jjoi
 m/w5pcMA+ihxUo2cGx5JZu0icJTrZ958c+hyq0AEh211+JU4Bo0WFHAhCPo3cobYyqSqrNEV8LL
 zL/BPM+emHcF4FJfIzNAA=
X-Google-Smtp-Source: AGHT+IEPYnRgpYVEveCbU01kGtjxHAKa5FApKeCv+NruF3NYPEK3DWUd1nec9k94JoygcajJ+fMyFg==
X-Received: by 2002:a05:6a20:729e:b0:35d:5d40:6d65 with SMTP id
 adf61e73a8af0-3614eaf5281mr12077444637.5.1763970054294; 
 Sun, 23 Nov 2025 23:40:54 -0800 (PST)
Received: from aheev.home ([2401:4900:8fce:eb65:99e9:53c:32e6:4996])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7c3f024b4aesm13410818b3a.33.2025.11.23.23.40.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Nov 2025 23:40:53 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Mon, 24 Nov 2025 13:10:41 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-1-a03fcd1937c0@gmail.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
In-Reply-To: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ally Heev <allyheev@gmail.com>, 
 Simon Horman <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1688; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=ufCbvxIRBVQHCzUSRhXUdWL2YVW5ycqhQc1EXb99qW8=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDJVuH+fLT8i4MiarX3V2Zfz45EtZhER13qC9RZ2f5gsf
 8Im5cfGjlIWBjEuBlkxRRZGUSk/vU1SE+IOJ32DmcPKBDKEgYtTACaiIMfwV6h4w7q5V16Ixuxm
 UhHxm80bEcQcUJAZGNYclnRZxP/0W0aGQ4tnBK49Nfv1myveZsyHYvm2Hlml7uQwOWOpUkzB7a+
 LOAE=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763970054; x=1764574854; darn=lists.osuosl.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to;
 bh=R+K9MAxb4ZBBa8U7x004Sm9bCoWfglzoRMNcWRH1ZAc=;
 b=Mg/cWcIihjunvbkWKODAnc/47Q4npAZTRRv/25YmctJ0sB78qU0Lk+zXu7JQ/e+uYX
 l6sXuwy6fPuUoGnETuU35YYImLktafEqJNz8GB7d28fZKhLrMA8ggJTqcgvjEyJjO4e4
 tEHHmYQ9hmE6aeax6FnrQ/Tvz9647AspN9sfq4u/NFEkFDdirYw/O7FZ1uUYC3FIqnhl
 NFUpibFf6llQtHKskO/9ZTEWrawcCZGHm1tvy9uBxVdVmT9E8lrp5pKgrYSdFjnA95be
 xfaOD/iYSnWoR7nvg02AGLsOSnlJ/GTUApZBwmIIxo5J7Mhtnvb3rYXxPoUm/FVdcG6R
 rR8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Mg/cWcIi
Subject: [Intel-wired-lan] [PATCH RESEND RFT net-next 1/2] ice: remove
 __free usage in ice_flow
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

usage of cleanup attributes is discouraged in net [1], achieve cleanup
using goto

Suggested-by: Simon Horman <horms@kernel.org>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
Signed-off-by: Ally Heev <allyheev@gmail.com>

[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

Signed-off-by: Ally Heev <allyheev@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..dd62f5f14d60401d6a24cb9f86664425db1532d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1573,7 +1573,7 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			 struct ice_parser_profile *prof, enum ice_block blk)
 {
 	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
-	struct ice_flow_prof_params *params __free(kfree);
+	struct ice_flow_prof_params *params = NULL;
 	u8 fv_words = hw->blk[blk].es.fvw;
 	int status;
 	int i, idx;
@@ -1621,12 +1621,14 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			      params->attr, params->attr_cnt,
 			      params->es, params->mask, false, false);
 	if (status)
-		return status;
+		goto out;
 
 	status = ice_flow_assoc_fdir_prof(hw, blk, dest_vsi, fdir_vsi, id);
 	if (status)
 		ice_rem_prof(hw, blk, id);
 
+out:
+	kfree(params);
 	return status;
 }
 

-- 
2.47.3

