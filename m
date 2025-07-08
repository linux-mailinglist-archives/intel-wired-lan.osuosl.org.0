Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2759AFC53C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 10:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AE554071D;
	Tue,  8 Jul 2025 08:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rc7UcVm8Bl83; Tue,  8 Jul 2025 08:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 819D740747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751962618;
	bh=alMSpLLyvO2GyiUt4EFYi3zPSYajKqAuQFGQmWDvAF4=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uhFP1w9uGdRhh7qyDt/uAL8a3TGzm6B0fQGQkocsGFtyL4IaTGhhmXO9SAnnO8hfG
	 9H1JlDs+B0mAxXxlOP7hnaNmzpjed0YjcrK8f/M0/MceSWtQ/AMRJWeSAty+KU/5GX
	 v4AlmInpiLY0pj1ngBt14J+ej3YWMvuo6arfnQw8zI4Ezo/nhASNI2cH20QkO7QHD3
	 p/jCbWmDMMPbbSjcRf8yHEIxoE36qwbBTS1gm7ZfSFqohzFL/kREsOR8IjmfrXVDyN
	 bePuODdNx6JxfB2eCILMtrU/aNxCjaTzrWZuTWNhQVvWDazHnFf4rynr1J4WwWL52Z
	 7tupOqnrs97bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 819D740747;
	Tue,  8 Jul 2025 08:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 64AAC15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56083406E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xdnsAUXebN8D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 08:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6A21D406D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A21D406D8
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A21D406D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 08:16:55 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-60c5b8ee2d9so8948451a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Jul 2025 01:16:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751962613; x=1752567413;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=alMSpLLyvO2GyiUt4EFYi3zPSYajKqAuQFGQmWDvAF4=;
 b=iiwKMoMHp8imBQGX8FJmqMZjHofj9LNzsQo289vaXImzcDmKLcno9PMAbA3fMGw6r4
 baj3Bpz0z6G+QQ5Ibvb80soAFhk42tHBDjvS9IDmFigbhTh+xbyOLE9GWSfCZsIY+zmA
 vEFxcztzJ2gX8q335DFdommmgQoThmlZ151w2Z5uiMWd7L8G0poXRjxkV6rd+ietYyAL
 Wmi6R9OeROVtj4PUaLaelKKk5PxLP+bNZZbNAQeJykZ6y7mRoHUTNj80nQKLE+v/RDMF
 agfw2Y2H5n6UfVQPtlnhEtZGvuNpTC/JTer07F0XrsfnLsBnwYPElFDEaF2trR+gBLLZ
 wARg==
X-Gm-Message-State: AOJu0Yx93p8BpWPeE2A20gfX0dWVnqI9nsYOdDueN6sFgMvNQBvKRfyy
 IUX6j3IDKOMiX+qCB8EDx6xg2T+9KJrTkC4ntQzIpoawkygpxZYrgfqOv7RJWGAp+A==
X-Gm-Gg: ASbGncvexBtq1Y9DAeF+tTlitgkLh4V3OCfL06G4ZvW1L+I3TXlyYdIkAE9ZFrnlpwC
 Ai/GygtT1soORBIancDEUXZfqHZum5vVNQywXykpQYjTzVwIHzC3rmlW7h94fuK2/HPYk7fOy62
 SHL6mX0t5ml7HFcfOBbOAF+sE269KN+kNiiM1QvyBbYYSrHNGQYlQyxD2nkA3xkkzmswtleKCx9
 sXV01Vrv022fMp7Zvh22vkAivIn+b+/7TVR/1puR/YoTbQoqQevxjTK1MC6mR1zGIGANfVIZwAG
 ojqybXA9LqHRovAuQ8i/FvCuoobmg0fzBCyfqKElfHJ2lvsP/GUE5+BFLKDOzDb9I3YR3ISjMPA
 =
X-Google-Smtp-Source: AGHT+IGUG5jFVLTQJ4/OOyiECMuv5LIxsil65WhixC0o4oqqqU29Q8wWHBD1+DnpgbskzSK+q5zHsw==
X-Received: by 2002:a17:907:3e20:b0:ad8:96d2:f3a with SMTP id
 a640c23a62f3a-ae6b0b1f26dmr208544066b.8.1751962613079; 
 Tue, 08 Jul 2025 01:16:53 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae410916ee7sm622992866b.15.2025.07.08.01.16.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jul 2025 01:16:52 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
Date: Tue, 8 Jul 2025 10:16:52 +0200
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
 d=jacekk.info; s=g2024; t=1751962613; x=1752567413; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=alMSpLLyvO2GyiUt4EFYi3zPSYajKqAuQFGQmWDvAF4=;
 b=GjIjIuxzYu3msG/UKmzyQg1drbgjQ+wrFdSbPvoiDNr+LGWVmShniOWCuT5ar5cN3V
 zdAqQFKXZs6l5tZvGTE3BquJ45OycNLVagf/fcAmiJpkg8lzYnCuilDLYhru/phU0nt2
 xMJsNwwnuS1DPv5yzb0npouxBrGOvecuiilpYitJAC0iXbCUcvW1F9dsKqDG0GwXx9Bn
 uNzryuXC3IqP9d2FxyKftiIpdJ8FpjePo6+EL/TbUSxurogty1HvDqzApN/gNip8lPbc
 hOVUxkcEAbXdIUREHeKOqYYLKK49wDPyBdLKSug0GIZAGfY7o5a3mOTOUoqNZUSaHTRT
 BMJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=GjIjIuxz
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop unnecessary
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
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
 drivers/net/ethernet/intel/e1000/e1000_main.c    | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index d06d29c6c037..d152026a027b 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -806,7 +806,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)EEPROM_SUM) && !(*data))
+	if ((checksum != EEPROM_SUM) && !(*data))
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
index d8595e84326d..09acba2ed483 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -313,7 +313,7 @@ static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
 		} else {
 			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
 		}
-		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
+		if ((old_vid != E1000_MNG_VLAN_NONE) &&
 		    (vid != old_vid) &&
 		    !test_bit(old_vid, adapter->active_vlans))
 			e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
-- 
2.47.2

