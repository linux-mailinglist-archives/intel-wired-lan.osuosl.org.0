Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD776AFC541
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 467AB80C4D;
	Tue,  8 Jul 2025 08:17:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xa0ivf_yjAq; Tue,  8 Jul 2025 08:17:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7CA880C54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962674;
	bh=24dFRVGPxiOPQ14wcYYid+zRefxCt8O1+HU2iy6DtlE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YvriGwCg7LxYuViuzt7wix4fEPZAAM3CzeQI9dOBCDluycFH1ZKRHHNz2Jhk63+E/
	 KIgL5fQ8cmCQ8UXbm1aroHEdL63ycQ7OgKYUW+WW08MZXGwVoXuzpf5buFGwdZ+PRY
	 lDaiVY1YVGvpmcJeaPlMKy46NB7PucJYUfBQawMnM8W9PINbm0mwx23NA8B8R0qsOR
	 77DJTbCmVjoWMqmiN5Z4KgiLLrE2VsXkjsBwwo7jIanYj6o280/o6d9JmPxpy66siD
	 +kw3II8fWtW04whqTUOaTE09jG16X81PCn4Xv4fx8trScyFWRJcyn+8e+T6Q93juoT
	 3LW9KtcQ3TY7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7CA880C54;
	Tue,  8 Jul 2025 08:17:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16CDE15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1E744003A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6O0rihPT5-p9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:17:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2197A400E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2197A400E3
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2197A400E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:17:51 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-608acb0a27fso5475141a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962670; x=1752567470;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=24dFRVGPxiOPQ14wcYYid+zRefxCt8O1+HU2iy6DtlE=;
 b=Z7ba9NDzMRczAJUnF63kacHYs9TZs1LNCczDZhhZK/6D5cASg5QjE7DfiufT+CR8mt
 pB17SLy07WDV79FIRDBUiE8TJ64BgVZCRebxhokmMcRgr1faPUy2S3YbNvbP6U2RXKiw
 GMV53Wp5GBewXb9LKnj2kpYMPJKepjGJKby64a5axU3EMfiDT4Ut0fNarinLEJ4jazar
 4MA4hMc7Q+biwPF3nOEv0Nk6zKDLrN4j0AcYh8G7CwLUXG7ifHUPfjgILdfz6pAQYPhd
 zrAjHj6dXPCrpNIM4GV9BwOmy6RytZK4BzQuzuneQ77mqGVX+0d+di3DhejKxzYeIKxg
 T3Zw==
X-Gm-Message-State: AOJu0YyRKtHI9l8yEpEZVV5OsJgdEQSmmnZ6eujneZRA8GC/PY+XMyiD
 mR0wfSJtCpk5Wyaby6IZkABdqfD36cBy8e5DIhr6A5/UOc3fLY8q9rxukBjx6N3Tjg==
X-Gm-Gg: ASbGncvyYuTCbKEOuO1A3sdyFLNTB8R3s63fsJMO/xe0PQvqzdeN53k2lXLoKivR4Y9
 Mo8q69c9EHiAGU9CfJydmt9WfhNlb0dz7iytpanjVUvDT+tkxaOFYv5RDUCs6pUbXm2xW7Y3Fp5
 TrFkE9ObQSaDE7c+68doJDM8HH0x/i0uTLnShL6YUBTiUIJZPGk+SYar5sl2WRFcvvHjC2ZmCHi
 v/H1i8J13jPsrNYwuKTu1gfm2pAMCwPLo4pBCZ2EeUtUiPu4OCQq9ZrwXsEJPzDmI3LJZeQvELm
 JbY3/INs9+tMllwT9HZLGCyumQaemohcQgNJQyS5rb4bW14sF2s7PgsNC3n2WUSl
X-Google-Smtp-Source: AGHT+IFm7f1M9UA+aAJqKhCL80um1g0BN8ATSzspyHhyzGV3yuSxZ8i8Fn0NG67RS/zDuG7SuBK39Q==
X-Received: by 2002:a05:6402:518c:b0:607:35d8:4cf8 with SMTP id
 4fb4d7f45d1cf-60fd65156admr14881266a12.11.1751962670055; 
 Tue, 08 Jul 2025 01:17:50 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60fca695d50sm6822392a12.24.2025.07.08.01.17.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:17:49 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <b6d736c0-ea5a-4b94-a633-dc54c6283895@jacekk.info>
Date: Tue, 8 Jul 2025 10:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
Content-Language: en-US
In-Reply-To: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751962670; x=1752567470; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=24dFRVGPxiOPQ14wcYYid+zRefxCt8O1+HU2iy6DtlE=;
 b=e1MFxQSJtQcL8rEkExnpASbI76OLWhBBjdWykk5YGbLJNINfBbcZMYABFxbArcTRyN
 SB2g1TGOS/toRaIbvCjtAUqa0wGLsuV6H4XPPv5nnUQU4IEWoVUqMwKiIqoHWgTGD6X1
 Z6WcDJwKJTc2ll0tyMLBkMFETETtV5NJ4XUOp5FL4UFg7spuOF6XemrkUj9p5JMYyB/M
 DHY7SRp12oGAzW5RFOrOVTBwL16u9qo+OZA8dN1b3cnlWw+vrGWSKQ0v52KuW/RMP28f
 k8AIqqPFWvZ1+U/EkvgTJE9oIY+l/z9b8m6wy6/tTv6k+ePrQpL63NawsSP2Z3xvdrUc
 5gNg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=e1MFxQSJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] igb: drop unnecessary
 constant casts to u16
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

Remove unnecessary casts of constant values to u16.
Let the C type system do it's job.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_i210.c  | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c   | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 64dfc362d1dc..44a85ad749a4 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -2372,7 +2372,7 @@ static s32 igb_validate_nvm_checksum_with_offset(struct e1000_hw *hw,
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16) NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -E1000_ERR_NVM;
 		goto out;
@@ -2406,7 +2406,7 @@ static s32 igb_update_nvm_checksum_with_offset(struct e1000_hw *hw, u16 offset)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16) NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, (NVM_CHECKSUM_REG + offset), 1,
 				&checksum);
 	if (ret_val)
diff --git a/drivers/net/ethernet/intel/igb/e1000_i210.c b/drivers/net/ethernet/intel/igb/e1000_i210.c
index 503b239868e8..9db29b231d6a 100644
--- a/drivers/net/ethernet/intel/igb/e1000_i210.c
+++ b/drivers/net/ethernet/intel/igb/e1000_i210.c
@@ -602,7 +602,7 @@ static s32 igb_update_nvm_checksum_i210(struct e1000_hw *hw)
 			}
 			checksum += nvm_data;
 		}
-		checksum = (u16) NVM_SUM - checksum;
+		checksum = NVM_SUM - checksum;
 		ret_val = igb_write_nvm_srwr(hw, NVM_CHECKSUM_REG, 1,
 						&checksum);
 		if (ret_val) {
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index 2dcd64d6dec3..c8638502c2be 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -636,7 +636,7 @@ s32 igb_validate_nvm_checksum(struct e1000_hw *hw)
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16) NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -E1000_ERR_NVM;
 		goto out;
@@ -668,7 +668,7 @@ s32 igb_update_nvm_checksum(struct e1000_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16) NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		hw_dbg("NVM Write Error while updating checksum.\n");
-- 
2.47.2

