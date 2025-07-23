Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B78F4B0EDBB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:55:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 626C560D72;
	Wed, 23 Jul 2025 08:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fUXpgs8N3o0z; Wed, 23 Jul 2025 08:55:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CD1E60DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260909;
	bh=OO3hkZCI/hl9D2rt5NQeL5ZTj0MVc7ns0plUwyPF45U=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7G9LZ6314mGaCgodCibbxrVjC+DlXtuGm4pVHWAwo2HQeqO4bIaKQ//YcVVzmk3r7
	 twZUsem6iq3eq6/v0rb9+Kj7BsDJJklyizwGmZWMHCsj8vtI7PFSc1egHkL2MnSpWu
	 If8WzrNMzlWo2o21Ry+q7cKf6OLVqRaEefmdOoAJ5Kzm+JarA9i0eEzLB1J+XMOu9y
	 p1LJuX9Dzx0GVxlwDTGYuTnF0suAkSRXpy+cSjhaEyikNZZKhqBL8aS0BnkSv34fS0
	 yV0YPYv6iLPA1qzejEzpbNmTCt11KJcGS5abi0YWVdo9XKvLymYxTgBlVuV0dvgYKq
	 A31+bQnIsBh9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CD1E60DA6;
	Wed, 23 Jul 2025 08:55:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 84B42CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8203C60A65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1v_Qtj8X2POn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:55:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A760860D6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A760860D6B
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A760860D6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:07 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-611f74c1837so12334371a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:55:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260905; x=1753865705;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OO3hkZCI/hl9D2rt5NQeL5ZTj0MVc7ns0plUwyPF45U=;
 b=LJAC0og++vsWChyuWaP73/l291GiecjnFp3uKuwGeQeFvY+2EqCGziZnotf1KeEvwN
 UwTPNUzoLvzUzptT3Vslgfpua17H7Av1E5fYhl6v5fCiji+VXk3F3I5b1FTcVJuB6s3s
 L42EcDKWbHuNrVmBarmgiJ4rTlWRERMn6u6BjKnaLOjDv7tKiM5e8BB4XWmZmFn5l0jt
 tJ0An9wtvtLsM5KOdsPzSPciyuV6L+KqeIO8KUGQ4jF48jyzmoFpy1cAkerYTwOr3xpO
 /E9hfO8bYlkCZiTQ06bMysCYF2liTIOJi6BiARFIjqbWHTaJAaXz5wH/YR8cidlz+T+z
 oO2Q==
X-Gm-Message-State: AOJu0Yx0zTR/L/mXVGVF4JTgGccZusICfn4tc70ajI9gAwdhf4LNf3MA
 gFNeXK1Dd4K6KRzJrSyqZYTa16PlssaOqt9GTr7oXkPKkzoeiJcuXwWtdrt51UfA+Q==
X-Gm-Gg: ASbGnctB0kAAWlkjiH14XofsKP24oaKw6e/gsOYkZnGvGO4rIE94gOhTvqr2tWwjBvK
 hCvUp1yT8BlaYyLGQeFx2rpBfiaDjM7m+bYOT0+h1YgQZMFyxY3y/eCyhsx3Lkn2CF2EuF341xU
 IeeBPu8MkMe05QeWskCPW8Wzt/8NynGmJArWh9mV4f1rjPWyWOUPZKmxU4llZskAN8fHMKfkyt7
 aXMm3pFTGoDkKjJlL70dY4vtl+NAY5cZkVHOI+Qceeang3EOTgGcRIu8vPpuprfhX9a2ZIaOh3E
 tkEAsWj6C62peAdMMXh0wFqxMxDpK2cKl2PYwdqlGp3bBSHMyHa1D32lZCVBKFyBVlewl5RSBAI
 Jx+kxrPvNaxQzF6dXoGi8/7OX
X-Google-Smtp-Source: AGHT+IHugY9AzEC6chudp2ZjRD4/AKt/gWnSYmnh8PGoxNyHRfQxVx5J4iw534Ri7XEBn9ICeBaNoQ==
X-Received: by 2002:a17:907:6d0e:b0:ae3:69a8:8da4 with SMTP id
 a640c23a62f3a-af2f66d4f13mr173312266b.9.1753260905321; 
 Wed, 23 Jul 2025 01:55:05 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aec6c79d6c6sm1015408366b.32.2025.07.23.01.55.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:55:04 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <e16d5318-3e5c-4a4a-a629-ba221a5f04c5@jacekk.info>
Date: Wed, 23 Jul 2025 10:55:03 +0200
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
 d=jacekk.info; s=g2024; t=1753260905; x=1753865705; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=OO3hkZCI/hl9D2rt5NQeL5ZTj0MVc7ns0plUwyPF45U=;
 b=nU6KZEKWkfF/jymucsqlowTES2VhpVDV5rGA0iKOceLj54/zk+GHZOKBWm3x3Y/c/B
 ZnCKZNP65GUI/zgzXSuYFtFWL8xLkocOBPsZkvtfCo3z8z+XJm1cA8EkvhmiDF3Or0v4
 qIkprgxXgfQUpAmi490drrkJt067K0VqKBb0zYLs6MKWHMAgbAilaYdbmtenxKEaKNbK
 n+6VdqL0YFonMYzIkjli5uMKZfjy7XxMnVr/7PzFkofFtYLcHdaBOXChqfCBwuJ+UTBl
 ex8nU2DK7fjs9f7XZPs6afSwdKkE1nobJnIHY7GZc3FIaJSn1mV+L+OSH/a6kn5XsqDp
 uHMg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=nU6KZEKW
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/5] igb: drop unnecessary
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

Additionally replace IGB_MNG_VLAN_NONE with resulting value
rather than casting -1 to u16.

Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 4 ++--
 drivers/net/ethernet/intel/igb/e1000_i210.c  | 2 +-
 drivers/net/ethernet/intel/igb/e1000_nvm.c   | 4 ++--
 drivers/net/ethernet/intel/igb/igb.h         | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c    | 3 +--
 5 files changed, 7 insertions(+), 8 deletions(-)

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
diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index c3f4f7cd264e..0fff1df81b7b 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -217,7 +217,7 @@ static inline int igb_skb_pad(void)
 #define IGB_MASTER_SLAVE	e1000_ms_hw_default
 #endif
 
-#define IGB_MNG_VLAN_NONE	-1
+#define IGB_MNG_VLAN_NONE	0xFFFF
 
 enum igb_tx_flags {
 	/* cmd_type flags */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a9a7a94ae61e..5e63d7f6a568 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1531,8 +1531,7 @@ static void igb_update_mng_vlan(struct igb_adapter *adapter)
 		adapter->mng_vlan_id = IGB_MNG_VLAN_NONE;
 	}
 
-	if ((old_vid != (u16)IGB_MNG_VLAN_NONE) &&
-	    (vid != old_vid) &&
+	if (old_vid != IGB_MNG_VLAN_NONE && vid != old_vid &&
 	    !test_bit(old_vid, adapter->active_vlans)) {
 		/* remove VID from filter table */
 		igb_vfta_set(hw, vid, pf_id, false, true);
-- 
2.47.2

