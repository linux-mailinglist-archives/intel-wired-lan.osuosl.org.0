Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CE7B0EDBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 10:55:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22EE160E0A;
	Wed, 23 Jul 2025 08:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l4fCNHbthM1Z; Wed, 23 Jul 2025 08:55:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AEC160E0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753260926;
	bh=juzgHf2ePJEjJPl/5wnbYlH7avu5i3YmzhJWj+DcCT8=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7RjN5BQ2os/n4gnpH8Uvs6Fk3DzMnugNWJxpLxKfj5zwdHk4Cr/AgdGarKPpH8g/B
	 U7JarX43rJ5bsSzZ6tdIbSLlBX1jzSdv8W8i/hCIrq6vcRDdxvpdRFElt+EPf4xyiW
	 RQGGyWg5DAcKJ84EBTYonjqLkQtHqkK7mXRxzzcdyyzRVI2EpFN3UMVf7otRDkxaUS
	 wk1nGz01VfOp89ap48DlQtmIw7VMU9IPLtG3PNMTXMi0/S+JJNTU71OQvEsy1YoIK3
	 iYgZM+4v97mFkmcLAUUin8GV138tah5x8/AdFnIF4Ww8sIcnVN9aehWdcFG7SQSyE8
	 k7z7o0yraw8ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AEC160E0F;
	Wed, 23 Jul 2025 08:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 67D25E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5832A80CA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQaav1fUitlD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 08:55:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9490280C6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9490280C6D
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9490280C6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 08:55:24 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-ae0c4945c76so872625966b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 01:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753260922; x=1753865722;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=juzgHf2ePJEjJPl/5wnbYlH7avu5i3YmzhJWj+DcCT8=;
 b=dBvr+KYjAv0/hur/d3a9KQ579pB1hIPV6fO7lrJ82R1ZNJYKKaZP2AMW7GAOIzwtMg
 x/VPfeb5/29U61q+RgxyAad42jRVFhVXDNXsrWa7lpM74yPkuJRcYCdXlFq/KgHeOiET
 KuHZEBKBHjlCHOaA6WWnS0D6+ionn084/ssGzA+zFy7/C6LoFbYLd3oBm1dkn/FuTG3Z
 +jspsOqdlZGjQqa1ZAcTZLuEci6N0SYj13Y+TCRk2h0fWrJbuX847ynQEGVNOxvdLC2k
 nLUiSBAEcyyAvzRN2dkDxqDcDVvrGi/zAXqTPL2geSVqLlnwqqdaA+yNwIHGTAA/Pmcv
 STnQ==
X-Gm-Message-State: AOJu0YwTQSv+uPDMv3aBtoNdXmpW2zM17+wnRKrrVN8PkYj5sa11cMRP
 qXXguB3leYfuj/hn0nNouHb5w6O+vG9JVWX8ok1ylryjSrrk5Kutgn6shPxFVc2Y7A==
X-Gm-Gg: ASbGncs8xpOyGwi08Bmp/nQHf9OnzKzdea1YZ/rmVUR4Vmwd+bgx8sD5gYFJbx2g1S0
 5l+roei6IjiJuh6XOJr+fnbOyTfdgl01wk3bXWREPU2Hrw0zXGfcaNQ/2LaomI6Go/mdSCTpOAB
 +KgPcnWhf+sdTZR+KPYWabjwuMTRGLtw2T7nKtUHvrrlaeiBwG6cUUeuSqB3kS0TeqSYY0R0pxZ
 Gz9+abdk28/W5FYzuN0BVd4epYZRUAQApVDTLUOwa47KoTBbTAmtUSpQ8wwk2L1POCbiLXl+kcq
 mDmF1mkmkJj48hF2jqw2ONBPseVPpPgGY3141/MnrVBYHXlnBFWLJtk/Uw0ZfxH4QLbj6qU+cxH
 FG43gkRKFgBgkBVPblUBPoIt4
X-Google-Smtp-Source: AGHT+IHmPfACLVJN2IkyJNVnQR5H3t14T3MZHdHktP85g0699zkzu+AM0vhSyq1zboQ8p1wx7g3EQg==
X-Received: by 2002:a17:907:7f09:b0:af0:f3d1:ad04 with SMTP id
 a640c23a62f3a-af2f9872c59mr179109466b.59.1753260922400; 
 Wed, 23 Jul 2025 01:55:22 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-612c8f37089sm8193809a12.20.2025.07.23.01.55.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jul 2025 01:55:22 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <8ae30b40-04e5-4400-92fb-86101b5c667d@jacekk.info>
Date: Wed, 23 Jul 2025 10:55:20 +0200
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
 d=jacekk.info; s=g2024; t=1753260922; x=1753865722; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=juzgHf2ePJEjJPl/5wnbYlH7avu5i3YmzhJWj+DcCT8=;
 b=It3ll1F1eMl4qRgoxKVuRi5aOqCDAapWBaVAEQZf7iGmWMX0UK/+6NdYtsSnQM4nhe
 VRYKdjR71ZbdtEqblT9/sC+zVpcCfKgO+W1yulzk3miQT19e0QXFGGPZeUcyobG3haUW
 u7d4rOFe+FvWqThHcyfax/hiZXCnhsxrLex3k7Uxu6tnQ/Irl9fseAZPGoi0NnbCpkp+
 SSQA/jg/i0tFFjCch0aBITuXePMy4HKp4qgEr84zYAqaFfRguZWrfdtIYgt3hrats7uk
 59t1L+ySfF33DQWjFuRnGqU+6mNm0Vdn+Jm48+jwK3/BDQL3F5BOmsT07UHB5A9CcYhj
 Dbqw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=It3ll1F1
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/5] igc: drop unnecessary
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

Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_nvm.c  | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 0dd61719f1ed..5226d10cc95b 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -435,7 +435,7 @@ static s32 igc_update_nvm_checksum_i225(struct igc_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = igc_write_nvm_srwr(hw, NVM_CHECKSUM_REG, 1,
 				     &checksum);
 	if (ret_val) {
diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
index efd121c03967..a47b8d39238c 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.c
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
@@ -123,7 +123,7 @@ s32 igc_validate_nvm_checksum(struct igc_hw *hw)
 		checksum += nvm_data;
 	}
 
-	if (checksum != (u16)NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		hw_dbg("NVM Checksum Invalid\n");
 		ret_val = -IGC_ERR_NVM;
 		goto out;
@@ -155,7 +155,7 @@ s32 igc_update_nvm_checksum(struct igc_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		hw_dbg("NVM Write Error while updating checksum.\n");
-- 
2.47.2

