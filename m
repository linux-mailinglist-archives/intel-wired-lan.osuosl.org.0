Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 002BCAFC545
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 810624099C;
	Tue,  8 Jul 2025 08:18:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 68BCwPLvl09R; Tue,  8 Jul 2025 08:18:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E78D1408D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962722;
	bh=BJiSUu3hWE44EXsDXKkg8pF1uNLtKLtK6eYZS81KaN8=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rdFChig9oSkXjhuWVU30CicbRVisuKI1mKH5QrSiK8NdMN7xMajqzFjhwu48H9L/z
	 n2ghkyCG532Q86OpHNFjUOo0ezimzEhcDqbUn7vn5n39gQb7UmfUkk//a2HX+toWKD
	 bjK6bIQQhwUq+JvHS0dMN1eixtkcNMxs+x5A/P5hAA+idJb9JKoGLU8UJ1Zskz43CT
	 sXklYO/aF21rTWc3V8PqSCo1K1SPiLkyiVqw7sLmTmFnTDtVTJQv/Vn66PUDz1NN+J
	 twX3jS/VGDL6O58pdsz+4sxRNbdCNwaxgVyxhT4Z1jSD1aVP+VOuyYGli/n6ngZp+7
	 sLbCg4k3IA8xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E78D1408D9;
	Tue,  8 Jul 2025 08:18:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D228C1BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3E56813B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_LMVfhSMWYs for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:18:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52d; helo=mail-ed1-x52d.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 132C4813C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 132C4813C3
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 132C4813C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:38 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-60867565fb5so6728859a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:18:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962717; x=1752567517;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BJiSUu3hWE44EXsDXKkg8pF1uNLtKLtK6eYZS81KaN8=;
 b=TgfyNLMaiP9JGrRzXW2rNqO9WvRqGa36JmA/Khxs9WpGRXUyq5kz7sx10/becHjzfg
 qet8qTioNqvv2G/AhL6O/k5Lber5fYHlClpptG8kve+w/iSSHkHexfBtFDLtG6ZgZilB
 vDg7B9gAqoGmViUsEbAHxJcLqzljsuDTM0bQ1HamE7piw4X/W7otRzwvmwdIWZMyDLVy
 5NdF0f5AgddKqeDRmaorTqeHezhz/8rUDMyXNQBalEhLLnjOArHSv0QK48iiguaXr9nM
 iJNHAcFtnYDBADNPDTqhqwf2ZVLChxs0XB91tJLQrxX1eb2eDIfbRJ4Uc5cTy3XPYzoZ
 EmzQ==
X-Gm-Message-State: AOJu0YzYANF9u7xes2o5Y2KpzEcWURCxMC8qEkQS5xHMZ6L7UJ+xYg+v
 du4FgsrHYwAIJRYSoxwwutAppQwO/+pFZoyuzi5QrVtMG8EKVHCdYbhlUcemLZD4Yw==
X-Gm-Gg: ASbGncuWZfoGsaBpId2XoJP0ZSGfwMDDyup/1k56iYA1PXQy0/wCYkKTT9G2liIDB8F
 cwVUx0Xow8txPx0ttUWc98BWXV0hyUEzebMdbJUqp4TMcAecGZKU8jWIz1VNEom/VEuZbtf4ZiS
 qUrsZlaTzS+2zksJO833YAPSF0UtH3IOYWiQWz+7VDzpxbuOHt7PEun0dOSYgOTn/wgZCaeohCp
 t7w6R068iE/DOht53oTOTyqtXgeJkaavCp8SgbeKqzz294E8BDjAxRbPrNRPwqV9EkaeOIxOncm
 YmkKLI0St80YFQuzd9wKc37URQZ9jQmMB6SevL9BPLYZCRLsAp2XD5ea6uzz+a1q
X-Google-Smtp-Source: AGHT+IH6lR2m+v3knkC3IYA1tue00Z6M59zefIm0jwHX8zDQCkZwXr6vajUJk9ZtXJhj60dlCyqTbQ==
X-Received: by 2002:a50:ab07:0:b0:60c:3d54:4d2d with SMTP id
 4fb4d7f45d1cf-6104ae32aafmr1281314a12.22.1751962716902; 
 Tue, 08 Jul 2025 01:18:36 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60fca667681sm6881085a12.16.2025.07.08.01.18.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:18:36 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <33f2005d-4c06-4ed4-b49e-6863ad72c4c0@jacekk.info>
Date: Tue, 8 Jul 2025 10:18:35 +0200
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
 d=jacekk.info; s=g2024; t=1751962717; x=1752567517; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BJiSUu3hWE44EXsDXKkg8pF1uNLtKLtK6eYZS81KaN8=;
 b=aEne4peedP/WhEtoNCeVKtL4nS/THTzgfP52SDMcJ0Th1f1hf2Vv6YxcBN+HJOtA3t
 s9GXczMjC4x6AUR2Kw6Gd2LJsMNvT3Y3O7tFXUwLNazvasjrs4JV3Ydf14JQRkM1oRya
 IJ4QXYaSe+FU7+I9Qzh3ofQw4r3UZNNUuP3T+JyjMGSCKA6Kn2hTD6c2BkK/A2hr0OFu
 gAZGL8Ert8nZ/rrjjgDI8pqjbj+QoVC5lknju0hqf8cuKEqKWro/aaV8qqsPIkCAn8Zl
 Psomdc6xRPGGmDaZdsYxbl3txMAFozDLi1DuXoT/134MkS9/rj0VaeGUuEBB7FUojust
 /A7w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=aEne4pee
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ixgbe: drop unnecessary
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
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 4ff19426ab74..cb28c26e12f2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -1739,7 +1739,7 @@ int ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 		}
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
 	return (int)checksum;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index c2353aed0120..07c4a42ea282 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -373,7 +373,7 @@ static int ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 		}
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
 	return (int)checksum;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index bfa647086c70..0cc80ce8fcdc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1060,7 +1060,7 @@ static int ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 			return status;
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
 	return (int)checksum;
 }
-- 
2.47.2

