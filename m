Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCDAAED76B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 10:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D48D46116A;
	Mon, 30 Jun 2025 08:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KY_Zi04ecugy; Mon, 30 Jun 2025 08:35:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8870C6136F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751272505;
	bh=C+gUbT9aHifoGPBMBwjpCJyvBKNl1VAoZReu69+v/wE=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pamyT02o9Xcsp2QDYwthbHNEMGvGh9tSrEe0Wzq/Wthcr1kAyzH64WXxzRZZrqfIA
	 mFG91Fd3S+hWgCfMldfDllBpSPu0iJ5dXewHCdxt8hYS03dY35P3gpQvZSToYkraB4
	 wy/+BpxFo50FLUMa39nVPkoEM3Bv8DROAd1l+FBFdbJH/FasJXANOROGZDTt/RYsV/
	 UJhJD/P6L0+VG8VLZtaJEVsklZIkmZSbPFy8g8lJ3LYzAqa2oLJbuS6TuZH1BArPMS
	 n+A+XbwqpY8kQCG+ovccMTwKXvzjql/2BlIbLQYMTESsqr2tdIxmdY2bsh00q4rspx
	 TaWbKCth7pvYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8870C6136F;
	Mon, 30 Jun 2025 08:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94EDD1C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8669241630
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:35:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tgZb29nWU1Ep for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 08:35:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::631; helo=mail-ej1-x631.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C6F6C40172
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6F6C40172
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6F6C40172
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 08:35:03 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-ae0e0271d82so698790066b.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 01:35:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751272502; x=1751877302;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=C+gUbT9aHifoGPBMBwjpCJyvBKNl1VAoZReu69+v/wE=;
 b=iMewzQT5EwsRWRFBQcrTLKqB/+SfQHnsgKp4UPdKnbboDJ56Ct7LARSIQB02suJmHP
 3X6Bn+z74lFmJxEXmz3K4qSOcN8qtQjnLU8oApICSYhNX0NDAK/ad8ML/pz0GRI5c+jO
 H/lOTMEprLIBsGOt1HC4AIJ+tGtWt4igk6JNNxV2GqHWj9DcERHsCXrbPW1nWBd11DXh
 EXsR8O9aauWz4A14jya9BIZ3RifsDjt0UoWQQ8FdPHV2dMiESVIucP10BJLqM8GoBqfg
 lsQzIPuxzZATtaRWcgTAwTGKurw0eDobzr7oopwCwizgTq47XO0JJYWpjperS72sJNfY
 Yhmw==
X-Gm-Message-State: AOJu0YyuOsoJjLKmhMp/CQAGagHtgJ4wVCMgnv9OFB7GhkFuhTeYy1d7
 JGTeBgIQShijU/Qq6BeWbYKtJ9n/xSVE3eLE0Z2bIjDVZXpb9VKLfhjvFgiblEZs3A==
X-Gm-Gg: ASbGncuT1zNaBTFQeg4RISlElhw1fEtIXkHZ0hj0+Ou1JMFd2tgwHnv82dR4og7Wfst
 qVl65XH25+VZCkxL7A/ggxpIX/BkDsoUV6XN6IsglbkMa7aqfj++p15mf8X5RHGzbsU42Ips5Nf
 EMlXWwoXwUVr0rRf7krox8YIBUz/5vKHuFLeZGf9tJEEltZjsRiUXw9N852z3TO+x923SQXeXsh
 Zzo2BaGsFUpnv4VclEpbOidTSVje1S7up6f77ltKoQ6jIOln4a7WHbWMe8PMorxYQlFHFafwKXK
 sHPq8CH08DFF+BRqbLZFF2MZq0UZ4IRvIYcRwajSjlvlDwpMW9Z99e5uUv09DkML
X-Google-Smtp-Source: AGHT+IH/T30kQj3wWajjJInTipqkpt/+zHcGETsFy1EeW1ixfGoQnxnikZCFVF0R9CqSva1q7DNB0w==
X-Received: by 2002:a17:907:9802:b0:ae0:e065:ddfb with SMTP id
 a640c23a62f3a-ae34fd8932cmr1006397166b.18.1751272501411; 
 Mon, 30 Jun 2025 01:35:01 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae35363a75csm623995166b.7.2025.06.30.01.35.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Jun 2025 01:35:01 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
Date: Mon, 30 Jun 2025 10:35:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Vlad URSU <vlad@ursu.me>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
Content-Language: en-US
In-Reply-To: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1751272502; x=1751877302; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=C+gUbT9aHifoGPBMBwjpCJyvBKNl1VAoZReu69+v/wE=;
 b=0aT7d95W9XCbk/VzwhpyV2lvawS9zXL9qfKk6/5zen6tgGpHruDtqhnXHn6ycDLjKM
 OfHddua47VuLteuGXWct2qQ0ayCUFKqwRDl9TzIvFKWhI1YNKlXUv5SXfCrHFv1t7Jyt
 sWNUh8uSjIrjbFISOuftOKW+OuHINDcjSlyDXfVWytuzuEIdkwIodDQAlS6F50vlV1sK
 vFKAUS8gYc/O5pQU3WyAA95pinrHBHDbLAGXBMVNV2URgN5QOki2nTqSvp49JzAnzDMA
 4APAdavpAL3TtR53fNJDh6ra6cKW5ePiudESnL/yoKE4a7Mi8p7HwglkqHyfBQD+4a2p
 VRlA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=0aT7d95W
Subject: [Intel-wired-lan] [PATCH v4 2/2] e1000e: ignore uninitialized
 checksum word on tgp
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

As described by Vitaly Lifshits:

> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> driver cannot perform checksum validation and correction. This means
> that all NVM images must leave the factory with correct checksum and
> checksum valid bit set.

Unfortunately some systems have left the factory with an uninitialized
value of 0xFFFF at register address 0x3F (checksum word location).
So on Tiger Lake platform we ignore the computed checksum when such
condition is encountered.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Tested-by: Vlad URSU <vlad@ursu.me>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/intel/e1000e/defines.h | 3 +++
 drivers/net/ethernet/intel/e1000e/nvm.c     | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index 8294a7c4f122..ba331899d186 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -638,6 +638,9 @@
 /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
 #define NVM_SUM                    0xBABA
 
+/* Uninitialized ("empty") checksum word value */
+#define NVM_CHECKSUM_UNINITIALIZED 0xFFFF
+
 /* PBA (printed board assembly) number words */
 #define NVM_PBA_OFFSET_0           8
 #define NVM_PBA_OFFSET_1           9
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index e609f4df86f4..16369e6d245a 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -558,6 +558,12 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		checksum += nvm_data;
 	}
 
+	if (hw->mac.type == e1000_pch_tgp &&
+	    nvm_data == NVM_CHECKSUM_UNINITIALIZED) {
+		e_dbg("Uninitialized NVM Checksum on TGP platform - ignoring\n");
+		return 0;
+	}
+
 	if (checksum != (u16)NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
-- 
2.47.2

