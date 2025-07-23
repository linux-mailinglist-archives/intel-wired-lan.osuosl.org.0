Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0EDB0EDB8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E4BC60BAF;
	Wed, 23 Jul 2025 08:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bu_8Jc1ggI6v; Wed, 23 Jul 2025 08:54:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9AEC60D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260883;
	bh=qo1JjA/ZHOZHQaFQYL9U7DcUFDkVhvHL8/LrZDqAz9g=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t3Jf/R4uNsoVNPT9NPR0rClRv6MdXe8TyjcSKTvg9/pQexREpiNoUsdbk8XtE4V4l
	 HH1esX8sT6Q54ZJTxKnIjJ6oW7pz0VgjVmUw1uN5RVIb7ZIoyhHxj7AHwzVdfxn9Og
	 pmNpPTEMto2pcOFx/kZwUrNhsY285K/rCDlDyagBlLKbKsPklQNV9ObmkBF6AjjOgh
	 gzLdvwMnH3lZwZ1FeGLKJXjKZvSY2pADlDSY3YLYSC6TV8VF92ZRitYvE9FDmejlhT
	 OS5tFl6lTEJN1fZZFq+Cbpn+9EuXIJ4is+ZRF91Jtr7oqAL2rqVLi9b4sqwz1WFo36
	 bU4RzQAtqXzXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9AEC60D72;
	Wed, 23 Jul 2025 08:54:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C382E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81B65403EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wmbDG-whIcil for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:54:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DBD6400B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DBD6400B7
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DBD6400B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:54:40 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-6077dea37easo9949124a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260878; x=1753865678;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qo1JjA/ZHOZHQaFQYL9U7DcUFDkVhvHL8/LrZDqAz9g=;
 b=JEQuFoR3kvinXs2krVsN++eNgDFzftpx+LB0sG/7LTgfUQSAWv5i9xO4HXKJvsc04p
 R+qh3UjGfaJX9CLxKGJy8y3gqDZctUayq8z0ZHD52ZpTrGTx7M1VkTyeQLe20BByn8EA
 dTU6iwYsP5ozubU+26kLJ7g/1Cp1REoDi4jCf6uhd8u4DHUrQochgBfa7UgczJNjXjZo
 vzQRmsiTU8znyqdv1eXp7nXVSMS9c5XYoPraunE8NYdLc6SrS54rq7VJc0h0AS2M49zX
 hHVzcwvN/w0vo+Wi9UVjBdZ0DIF09pvEkij7i1wqOEFq1oQvN05LyUY8ZYn0p1VCdK2h
 Kpdw==
X-Gm-Message-State: AOJu0Ywi5eTGtcW7umzIKZVy/KXkNgvhxjmRotytpL+D999VoGWnk82m
 gnLiiDC+3T5BUTEARmuVasEd8dWpHSs7DTgcyPMxSqY1FXFmKvb/Cq/HWHOtTeh5yQ==
X-Gm-Gg: ASbGncsvaIbnk5M62OyHYPEzfgZ6IEnDnKE1AOoI+vucTLSoTdsZiohGh3Eyy9uj8tp
 /Qxt7rRwZZALmQ6UlbXDfCgD26KzrFeI0nS2zbV5O7sWR29HdrF8V5j5sLy/S+VjWc4BdJsXCDz
 G68lkCTIMxIkuCUY6/iNCbXTLKdHTzU6GOk7OjZ6wtulbfimBPuilvxG5FhCh6flY7lB1QFrg8U
 txExwfmec1rotJEbIhEeBa6YvkJpW4kkfXhk5c+V46CjAu6PzPlzsr59qBsIHA17mDujsyN7PWn
 Z3+hUsk9Yy42kShNNSLeYQbTkiRaZFbT5zxRZMmj4+/NcvkrN/oFLKxIn/UIsRKipLrMovIhuzk
 XVPLh37E8myy5jShFZEL9LdIh
X-Google-Smtp-Source: AGHT+IGnmMk+0kiIX3NqiPRuuUf1SFPcGJGD6KepEiqMgcI2JDIyFsHCFHhAddW2P9MLUPMB6KmmXw==
X-Received: by 2002:a05:6402:3492:b0:613:50d2:8bbc with SMTP id
 4fb4d7f45d1cf-6149b5d46d9mr1851549a12.33.1753260878447; 
 Wed, 23 Jul 2025 01:54:38 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-612f15f596dsm6415041a12.51.2025.07.23.01.54.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:54:38 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <6d05300d-e5d7-409e-8b78-a7c3da21ed32@jacekk.info>
Date: Wed, 23 Jul 2025 10:54:35 +0200
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
 d=jacekk.info; s=g2024; t=1753260878; x=1753865678; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=qo1JjA/ZHOZHQaFQYL9U7DcUFDkVhvHL8/LrZDqAz9g=;
 b=M4Hj1dJazkKcM3gjsNElCAKO58bx2YM5vPfytNMJDgZa/nDbtmd4jj+l3nH8bVCmAA
 F3gadBAGRRjhhBHGIpxozPwAo7UzgZ5jx2LqClvpUppMEJLUtWwQYfpkg3sXZIKALwZh
 0AP7ANBKXT5bo4btyzqd7FR6Gghvdv0wxbDCwwhvp/Jj+Fx46NzJ6Xnxrnab9XWNzPBs
 Jr2u2cM/bfru4kUnEP0+FYuRsrnC1LMWkRGPlRZzKDHJLPSWYBr63irHzp/K5Liz4Gyr
 5rlMH2jjXFwD+BBmYSEtxoz9dVMbn1TmeJE1PjIg9lLOn6w6HAFlOE6QWclkSXQz5tbP
 kVxg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=M4Hj1dJa
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/5] e1000e: drop unnecessary
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
 drivers/net/ethernet/intel/e1000e/e1000.h   | 2 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c  | 4 ++--
 drivers/net/ethernet/intel/e1000e/nvm.c     | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 952898151565..018e61aea787 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -64,7 +64,7 @@ struct e1000_info;
 #define AUTO_ALL_MODES			0
 #define E1000_EEPROM_APME		0x0400
 
-#define E1000_MNG_VLAN_NONE		(-1)
+#define E1000_MNG_VLAN_NONE		0xFFFF
 
 #define DEFAULT_JUMBO			9234
 
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index c0bbb12eed2e..06482ad50508 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -959,7 +959,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)NVM_SUM) && !(*data))
+	if (checksum != NVM_SUM && !(*data))
 		*data = 2;
 
 	return *data;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 7719e15813ee..58cfc63e95ac 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -2761,7 +2761,7 @@ static void e1000e_vlan_filter_disable(struct e1000_adapter *adapter)
 		rctl &= ~(E1000_RCTL_VFE | E1000_RCTL_CFIEN);
 		ew32(RCTL, rctl);
 
-		if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
+		if (adapter->mng_vlan_id != E1000_MNG_VLAN_NONE) {
 			e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
 					       adapter->mng_vlan_id);
 			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
@@ -2828,7 +2828,7 @@ static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
 		adapter->mng_vlan_id = vid;
 	}
 
-	if ((old_vid != (u16)E1000_MNG_VLAN_NONE) && (vid != old_vid))
+	if (old_vid != E1000_MNG_VLAN_NONE && vid != old_vid)
 		e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q), old_vid);
 }
 
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index 16369e6d245a..4bde1c9de1b9 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -564,7 +564,7 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		return 0;
 	}
 
-	if (checksum != (u16)NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
 	}
@@ -594,7 +594,7 @@ s32 e1000e_update_nvm_checksum_generic(struct e1000_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = e1000_write_nvm(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		e_dbg("NVM Write Error while updating checksum.\n");
-- 
2.47.2

