Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BDCB0EDB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D374860A44;
	Wed, 23 Jul 2025 08:54:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gqSYU_Ing7B3; Wed, 23 Jul 2025 08:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4717060A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260858;
	bh=YwFhinLP1Fsp+cB7676+3LQ6AV0wismQsbpAI8a2BLo=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k3IcsLJaC60p48AMBq181vKj1HsoryCJurGNDHM9vrkZltjxROV3xExRbaoLm3Nyt
	 dG+Ah5X6ge6CP6VXjzKot4w6RnsgGlsRRUj8wVNSiEQB4yezMYJScbI5rSxKKflEwy
	 Nppz5eVvSyezSVYTsl5IbHIo0Sn2MUZeRv6J8C+AfrdvZwQIwvrHridKctfiPqVuHY
	 JmrONPYKdnoE1uREpqvsdiuzbR6ZzCiKfcFoCAGYHppk+CF8RAFoud1cQRucsKv3xD
	 ZcByl/MZvQZjKAY4gHVaGnZprVZYocx3az7QiQWRDdaC0PQd0MroAALXY7sA9hhRMs
	 YgiyZiBjZbZvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4717060A65;
	Wed, 23 Jul 2025 08:54:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 047C6CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEF7940B21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zl3rBX8EoP-C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:54:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E7EEB40B87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7EEB40B87
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7EEB40B87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:15 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-60780d74c8cso11113799a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:54:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260854; x=1753865654;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YwFhinLP1Fsp+cB7676+3LQ6AV0wismQsbpAI8a2BLo=;
 b=Hl66PSmrkYfU4cof8Tf/nznY1sHhnBwildQzP1gdhMs4Ljl/mAmic2eZRBAFl6Wvi4
 XD2X9fDYNNFe+Ipu1YDYNxQ2SrMVV+6GFSwltmRtZe4P1zVXDl/g9VD+Fusq3qkg5VYk
 qCMdRTR5VaHmtOFmpaSfvZBbs1pRZQ6gvIaBvFW7ofQl6n5a+adRvHlo1C/H+2uTcQ+v
 jGDCUn1PT1ibbUyIHUzBoulS5d2H1ZUps4FrOeDsHS9pXzjeZPDjerOtCs31qVLJbTNd
 42skrlUY8oAHZY+icnnSDkAYRajAYAVuNeMAMS5dYqrzE+0fUcIzVMH2VVO3UHwb5w9/
 f70w==
X-Gm-Message-State: AOJu0YxD6vaNc5MCn8AeuBs6XJnvIJhm3yNVGxW6ZP4W75O738jwcyaW
 OQelaMhwpcT8yEpRs8qX2QmMEKrUspaxittfgg1RSfySduEEGG5K6mVkQae7FMM+gQ==
X-Gm-Gg: ASbGnctXYet8KX5kwKPsfJ7FHsTVEcFw+xkkNzBKqIWJVq0Ltg1cGtC4NGhtlhWdT7S
 SLTpJtLNgI6654mLFGueuRW7efatM1zlgcH7xJoU+SWUBzntIQ+hmA7MglGP4REZfIwy02HlnSP
 i/ZEwNoq97f2RdZEZ3dvxhoA+FbhVlDVAvj/eSHkVGHjTxlxHwiDd4cW8LobYFajs/bj8wnsKbb
 h16UfuTBRpl+8NUcrJOgTAZIhm7EU9CMlD1aTGp7YPEbbo2VSaysPiFG00rHfT70y6U2vUJc/d1
 4PsNwpQUa5CM56yPm1Alq6lSrQIK0m8bZwPmpHPql8R7zwYNqhnpFQNxMLTAelUjvoyrHuv7Rf+
 KsdNlv8CvmXTfQvqvoeDKWBrT
X-Google-Smtp-Source: AGHT+IEOfAQFG4XfDLR1ZHY1+R3DV8DpDsiIuZ1b48cLRDUnrFY8OtpIByBn69HwDiml2biFfyRhAg==
X-Received: by 2002:a05:6402:3716:b0:602:e46:638 with SMTP id
 4fb4d7f45d1cf-6149b5c412fmr2018190a12.26.1753260853543; 
 Wed, 23 Jul 2025 01:54:13 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-612c903f9basm8265087a12.47.2025.07.23.01.54.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:54:13 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <6abd035f-c568-424c-bdbc-6b9cbcb45e1e@jacekk.info>
Date: Wed, 23 Jul 2025 10:54:11 +0200
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
 d=jacekk.info; s=g2024; t=1753260854; x=1753865654; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=YwFhinLP1Fsp+cB7676+3LQ6AV0wismQsbpAI8a2BLo=;
 b=B8nCamQZGXZoBL92Aw5YJZtk1KiHsWVUqJKNZO9KKSZ5cFAg21RnpfP6hCLBaW2VZk
 jTpgF1VyecPtnM/DZHaThfVUDHAxkN7FRWI+1EAgCHZtd5E4FHyTNVW8Mi+ZhJrVEh6R
 lL/4P2cQWX1ifGYKSCrkd7UQH+1Txd5Zrw9PwbDTGX1ocx0o61YWr6/eIlcUjWQ2OnLa
 RUZGMf9aJwUpiuSsmZWJJ/szz1kq4wPZfNPkbq6uNgWWCMXPfXl3XS0GPlFKpmSbc3gn
 elbS4Xtc/BWLshkH+2BJlW6AtCI3gXXV1JIOX92hNuoGh7G9erpaqVXGmx2ye+Te1ktw
 aOMg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=B8nCamQZ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/5] e1000: drop unnecessary
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
C's integer promotion rules make them ints no matter what.

Additionally replace E1000_MNG_VLAN_NONE with resulting value
rather than casting -1 to u16.

Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000.h         | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
 drivers/net/ethernet/intel/e1000/e1000_main.c    | 3 +--
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000.h b/drivers/net/ethernet/intel/e1000/e1000.h
index 75f3fd1d8d6e..ea6ccf4b728b 100644
--- a/drivers/net/ethernet/intel/e1000/e1000.h
+++ b/drivers/net/ethernet/intel/e1000/e1000.h
@@ -116,7 +116,7 @@ struct e1000_adapter;
 #define E1000_MASTER_SLAVE	e1000_ms_hw_default
 #endif
 
-#define E1000_MNG_VLAN_NONE	(-1)
+#define E1000_MNG_VLAN_NONE	0xFFFF
 
 /* wrapper around a pointer to a socket buffer,
  * so a DMA handle can be stored along with the buffer
diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index d06d29c6c037..726365c567ef 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -806,7 +806,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)EEPROM_SUM) && !(*data))
+	if (checksum != EEPROM_SUM && !(*data))
 		*data = 2;
 
 	return *data;
diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index f9328f2e669f..0e5de52b1067 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3970,7 +3970,7 @@ s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 		return E1000_SUCCESS;
 
 #endif
-	if (checksum == (u16)EEPROM_SUM)
+	if (checksum == EEPROM_SUM)
 		return E1000_SUCCESS;
 	else {
 		e_dbg("EEPROM Checksum Invalid\n");
@@ -3997,7 +3997,7 @@ s32 e1000_update_eeprom_checksum(struct e1000_hw *hw)
 		}
 		checksum += eeprom_data;
 	}
-	checksum = (u16)EEPROM_SUM - checksum;
+	checksum = EEPROM_SUM - checksum;
 	if (e1000_write_eeprom(hw, EEPROM_CHECKSUM_REG, 1, &checksum) < 0) {
 		e_dbg("EEPROM Write Error\n");
 		return -E1000_ERR_EEPROM;
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index d8595e84326d..292389aceb2d 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -313,8 +313,7 @@ static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
 		} else {
 			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
 		}
-		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
-		    (vid != old_vid) &&
+		if (old_vid != E1000_MNG_VLAN_NONE && vid != old_vid &&
 		    !test_bit(old_vid, adapter->active_vlans))
 			e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
 					       old_vid);
-- 
2.47.2

