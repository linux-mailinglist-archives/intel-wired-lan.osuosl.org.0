Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF60AFC543
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA11B80F03;
	Tue,  8 Jul 2025 08:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qHyDtoRqyEN; Tue,  8 Jul 2025 08:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3841880F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962697;
	bh=ECt+dIdgaw3umoEGmjzQgPet8hBsCkTrNh5MzSehM/M=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gMCtec1JfRrhI0i239YPJ9EFFfP5DW++IXNDfGtb1WsEGeOrN9LPHhvjSIKJFyd4J
	 /7ocEC7+tzGuXBj/LAAnGhfZRstnqggJbLcNcY1Hm2oAD13lmta0L9PEJJioN632d8
	 Qdwy07u9NB19jvC0ofjyentz/o6VWdxWXsZdx5feFDl+fwkU7IjHFffPPKUm3UvT6i
	 Wdy4GQexugfSWdaNQTdZojzlM1TYLj0hRvcRMqPGfNn0C/FI9ndbX7hFsWZMtDrmMf
	 qcAn0b/3uBl6NMmFWbfbckrJ+DbGJV1fyWcJcHNIzWB1J7eBkEzFzKZrAK5X/anow8
	 MegG2M/vyiO3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3841880F0E;
	Tue,  8 Jul 2025 08:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B702115F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D722406E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U5YzXizbpHpI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:18:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4CE6407BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4CE6407BC
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4CE6407BC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:18:13 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-ae0de1c378fso619392566b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962692; x=1752567492;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ECt+dIdgaw3umoEGmjzQgPet8hBsCkTrNh5MzSehM/M=;
 b=o1PurBkLfoyRSgNYSYWn3HqHduF0eeYrLnyvPcDv7BP4iX5qy+JaWhFqInVrtBZzh+
 XrEUcmK50j8mPyZ2xwxCh2/gvqcElWziUluHwUUdVNe1kTn5aMFItirDzhEk8jmNR5mS
 dXW85YmcfDLHTOC4dOxOCQrw/FYRvhhI91EiPK1ueeyGdv4AzzHz7++AgaLHamUWflmH
 t6dIwTc9KZo28JiPtmha1TmH/x7tl80Zw8EH7q3d73n91Qq21iaiLA68zTRgr3vdOdRx
 xKI2nn6oY7RREmVbUsbzuvpejji/7GqIrwZk/37gvxsFdalDcEshBefjLeqtVyAyuW3V
 Wrdg==
X-Gm-Message-State: AOJu0YydtGbygaHiWbw5uzF9lK7dTdnSQo/xUv0s/9YlPoxwJPS+M5q5
 c06s9ahvrohyncrHRbhAqAXpZYkeCgMNXYS7Pliqq2MaXaET05ICPRNFgtRVrGXXx+SbJnIbkuK
 nv/YEPQ==
X-Gm-Gg: ASbGnct0Ke95td/eZH3Jk+TZj996qAyKu6wVhXOUXifP9JIPbWDDWxxNSqKsyiAJvgb
 3/a4Kd1Xz5fErzUvHCHu8KCiEUuhzQDqCaZYxnQJGJKNwav1R00FmBH7mklU7EwDXtIqGJM/VZK
 ssVaUQy9fm+d2dTTBRwsX8OWYMt+FN3s7bKAx0K1cn+XJNpcJ+LswOrAKwc06GpD4V73y8fnzCC
 f2j1Dpna4DKUcGyo0tJpTHMPOsbmEEgqiClBdS7EBO1gWhJKxwmo9uE5hJ8vbd6YxpAIkzUXb1u
 SXZCBWYW6zqggugSv7ZSEQy5YAI2Qc1XCZx+BS6TbQ2+EOE2aLpqYcylVPFtA9yh
X-Google-Smtp-Source: AGHT+IH8qs65vRzOkiBv7Armbc4ZYw+Y95kPHGW+aoYsxCldr30MbvH4UbgdZEYl/QTOe4GB0PCvEQ==
X-Received: by 2002:a17:907:e916:b0:add:ed3a:e792 with SMTP id
 a640c23a62f3a-ae3fbd6160emr1558661666b.47.1751962691879; 
 Tue, 08 Jul 2025 01:18:11 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae3f66d93f2sm852055566b.19.2025.07.08.01.18.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:18:11 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <42811fde-9b80-44a5-bc0e-74d204e05fe7@jacekk.info>
Date: Tue, 8 Jul 2025 10:18:10 +0200
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
 d=jacekk.info; s=g2024; t=1751962692; x=1752567492; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ECt+dIdgaw3umoEGmjzQgPet8hBsCkTrNh5MzSehM/M=;
 b=bqqnZkJDIPGTQm4NoYyrCqJuTSSAtvc5ug43DNgAZo5gr96hAt7RHKJiP10R0f5wqK
 F2PXAVxI5IgZnC5gb4IwkuAXoSDDkHICeU3Q/MrrbQj212RSGl7GFBacD4FHmTmUAZ/N
 B1raC9DFGjaw1oj55+KuNLSPFdltGp03Okb1D6pyiV2AHjD6mvUkpOHzQDvLNZ32Nn/B
 tC2T9xGOBQPpRx5dZ1VLuXYe1d5Hw/FhXJOLngUkp2b9Zg4UwzwZ+VUGSX5dlQd9qNEi
 bVw1PaSdCWGVXrllnU8ytk5oTfy3z1heVGaH5Ri99nhdcq+u7y5icRLq45nko8ULBlHm
 0I8w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=bqqnZkJD
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] igc: drop unnecessary
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

