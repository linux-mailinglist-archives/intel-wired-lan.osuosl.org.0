Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EA2B0EDC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D33C160E93;
	Wed, 23 Jul 2025 08:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ssgzY4-J-BmP; Wed, 23 Jul 2025 08:55:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A5A560E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260945;
	bh=ugmq4lvRdEc1sG9XRhYE3BwB+7EDXuXGL4BxqjZaIU0=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uPiMhwoMIK2gLWXZ1yIC6BgSfVPp3vQpECHSQUp6D5u2Hz45YG4vB+7ZERsu5zkRi
	 Ka0AJDp7AGgsohRSOgj00hYVhFoxlyq+QmCPE12Dpt560feWD2PcNkto0vM0XIC0EE
	 k3NhyTgyMprNpN3OrJV0k6Jl+CjkK2EFWkqwwl4mf8MHe1EQi+ZWA06ET8nj/0mft7
	 nzMC80VDVteWNddnCgHYMgqzM0E9GGIEYQcJ6fCavcuGGMFifhm3wDrDfZDkNYmwth
	 HPQrMDYb1EWKQemCStXf5wxIa5tP/YattFq0lxOaYPw+FdgfM5WDTd4ksIJTVPB1J9
	 0X/haMuF1Eidw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A5A560E6B;
	Wed, 23 Jul 2025 08:55:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 547C3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4621840C59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3iKne0-8GFB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:55:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D33640B87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D33640B87
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D33640B87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:42 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-6097d144923so1504860a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:55:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260940; x=1753865740;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ugmq4lvRdEc1sG9XRhYE3BwB+7EDXuXGL4BxqjZaIU0=;
 b=aMX+3mKuMv2rhfl8KvXf+kHnIymgmFQ7oWvkf/qbLZXa6WEjogmdaxpZRm5JJibJ5u
 puz5GX1WxJJbq9frU1hDS7n9TONpm35KErUdc06rKGVBhQCifFiSJaljJU/bBfdLf54a
 Q5anpPrdor8Ydy6wj/MQt8jaJ0Jh/VABsJ/CjN9mbMW8xMjvoPuGm6mNZ3n1hEzvxcTZ
 ZVxiD85cmCUAYQyfIU5kVjxLYuQtMcEeTKcnhqUGppiql5dK/wcs42H06pE9tslZAiAF
 WNDT29qJWHE6iwoJXUCXNJzUBfxi/UIpyxoVdy9Tl4giIBl4Ag3GxudSNe2d5Oh6Feq9
 aJPg==
X-Gm-Message-State: AOJu0YyUp890f+FLx3V0UutqwEpkP+84HrkvB+Mx/XJSvHkaefwqb9dv
 g3+1ys07UtXZbI+s/aWBF9Snh2lJOWTi/Ktg6uuaAs+/rKnXJDYERZLUdYC5bR247Q==
X-Gm-Gg: ASbGncu5m6ugK7gdIvlgeaRwaTrzGHYpSvlR6RXFkUmR15UXX02hxp7JE8b5A7Y/eqr
 Y3gY/pDI/7KIoj/Csa5/oP0J54FzZvplEG8SnPi7BvklItAY8xz0WchGwKgker5hjexQPmCGeLA
 JZZy6heSFwV304TFGP3BJnCI/CECQlTdNfEhjBiWaG+/tsPobUG5PIW9+3gwd9Q1xjIWq5yGXsn
 wl5i6gwxaJc/fucA8kZmI9vX8SgSrKukk1Jl8+H0djyzFP1gQq4i1G9MIIsx/dWvXx/KmoHMcXD
 b2wkWuwKnPMumtHuteUP1OMgGIc5bV02R5xYsnI5PSx5x2AXW9C2hW23Fs8h69AH7YAND75gWa4
 N1Sqq8/C4uoA7OBA3GXOKlzI4
X-Google-Smtp-Source: AGHT+IFr//0fitN3glsKj9I2v7mcguCK3I5eSA/Kd/X79BOmkVy8sFxPK0cii8eiTLSIlLO2zEi80g==
X-Received: by 2002:a05:6402:3482:b0:612:e841:5630 with SMTP id
 4fb4d7f45d1cf-61346c8bb0fmr6021277a12.6.1753260939602; 
 Wed, 23 Jul 2025 01:55:39 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-612c90d55cesm8158991a12.72.2025.07.23.01.55.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:55:39 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
Date: Wed, 23 Jul 2025 10:55:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
Content-Language: en-US
In-Reply-To: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1753260940; x=1753865740; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ugmq4lvRdEc1sG9XRhYE3BwB+7EDXuXGL4BxqjZaIU0=;
 b=oBezDPrdtEBezukr6czATMPvAA/shILx+d80mxkAnPypeCbNl8ZacsivPxuMtFHRr9
 A1MDANF3DaTVWHTxfkp3o44Edr4dyrkL5bKazBMz+wXtjbv1tWQgmO1aj99NllFGH2lC
 +moRQICKFHZsqoYIyGxhzAnUCqsOyCmKwJrkUUlg4yFRimU/zQpFd5V1Ec6IETOsXLrh
 H+hZBKS1jvsUvEEvbkTsPF61EFdtAMlYH+NrDmOLJrkN8JtLwA7ARIf3BarJBeBrvJUo
 UwwD/csMhEDuRALY1RLTogYMHNcB3hzy7FyM5YLUX8P0lxBA8kkaUkQ8qZDnDRWO0AM4
 1sSA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=oBezDPrd
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop unnecessary
 casts to u16 / int
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
C's integer promotion rules make them ints no matter what.

Additionally drop cast from u16 to int in return statements.

Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c   | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c   | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 4ff19426ab74..3ea6765f9c5d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -1739,9 +1739,9 @@ int ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 		}
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
-	return (int)checksum;
+	return checksum;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index c2353aed0120..e67e2feb045b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -373,9 +373,9 @@ static int ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 		}
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
-	return (int)checksum;
+	return checksum;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index bfa647086c70..650c3e522c3e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1060,9 +1060,9 @@ static int ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 			return status;
 	}
 
-	checksum = (u16)IXGBE_EEPROM_SUM - checksum;
+	checksum = IXGBE_EEPROM_SUM - checksum;
 
-	return (int)checksum;
+	return checksum;
 }
 
 /** ixgbe_calc_eeprom_checksum_X550 - Calculates and returns the checksum
-- 
2.47.2

