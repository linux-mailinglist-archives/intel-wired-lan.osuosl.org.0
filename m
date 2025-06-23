Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 235F4AE497D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 18:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 234F1606E5;
	Mon, 23 Jun 2025 16:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TaLp3ioqijjH; Mon, 23 Jun 2025 16:01:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7766F60831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750694483;
	bh=GV9eywOsXK84WOKUgMvagNTBliIluKm+MCneZcnY37Y=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=41Gt0LM+u/Hwnz9KmUA9hOGDt4r5NO/5ZqXFmZEQwrwpxyCqsTeQ91u5gdl6n0b+/
	 y+U5bXTc8L33AIfCK0kykUbM62Oc7MrSvIs2gm/P2Dnkd7NmRIiRIZ9JIWt94IXVZO
	 2LWLVLRh0C5EBDzHq5THoJ8MBw62sfFCeN04tzezXEVzT/Nh6w4oNy0/6D8PmWiaER
	 kMwj5eyfg8TYSFSXMFLnkhiPHhgi5VrGoW9N1dVgulE7cLRFV4HAQw2pphNzRgz8Iw
	 kDPGaZ6XIvqTOOqcVRB0rxH/vHrrGziPUeTirGCjfiLKVu+RWgXBtoSyPq/6gMW89E
	 xIAFyinI9N9AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7766F60831;
	Mon, 23 Jun 2025 16:01:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 935AB154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 790FB407D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2JkdsVvmTc27 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 16:01:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BEE1E407B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEE1E407B6
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BEE1E407B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 16:01:20 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-60707b740a6so6616597a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 09:01:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750694479; x=1751299279;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GV9eywOsXK84WOKUgMvagNTBliIluKm+MCneZcnY37Y=;
 b=HSJxdgePyyeaIRKsoaph0bCiJvK+lqXVBmhhtzKZ5bzPdgiwubT826SF30hEbmNRIY
 6GPbMSqNLqiVm7g8ImXHCu1kr2ALHK32v6wA5TtAaRtk2lSGiAwAf6b5Lgigl2lznyB3
 Rp0TgCfQUIuf95z4+IoddiNU3aIxzi/Yp5aBHnO4WUw3dFFOWDIB5nLWqAc5kmRdqqLY
 zr+iJB5TcFQUgZ2sQ7Ze1ePVBxY2jDheRGq8sNNTBV6sOJSs2cGJMJc/AlC0rNA/N+cH
 sIlYnWnh785nXMueH/OvVoSp5HbwhRz6Mo1o3Jy5cTh7/25eW9l35l73xc4qamc0Nf0P
 19sw==
X-Gm-Message-State: AOJu0Yz6sqBh+F3/4R15zudXcZpXp4eH11Ft18yb4PpSrOXAHMFYOh86
 j+gAPaahTGCNugVF4A8C4Yxh1tQ8+sKQXUw1NjP7CXz1uJPE8c5KasmZJ2ywaVAXcA==
X-Gm-Gg: ASbGncuDsFILUuZaVyNdnam9Vbr0+STFDgiWNAWzot/RYdecUtaxrLBl4HcD4/2Bpir
 VQsavgbduAY0hiOO7a3nNXy9LZBv+ase34sPoSvG/M/PiEv9eHixJEjLO4ajPO4PLe+fvOb7/EL
 HN2rDahQGw3JY4rvNwDOYUAqA5pnE4czifPI3tl/qjCPiqXeXuWwow/V9kiH4eE9eXYahG7bRka
 7F9Avwu0VhholxmUL6+t+ycj1DsANHMgy6h5738cF00zCymXNawKiIz4td8KmM1llFPmbET22RD
 QayRq1oMMi218bCs1E/Tlyht8e26HZXDBk64xnQUK6tl5DRuvBCltmOmsxBIElY+
X-Google-Smtp-Source: AGHT+IFeFRf7fXY8ItbHGsczF5S/sRpaMQZSC5ENBtBuUJ/TvWbUeEnuAnFx8nQF8fRGIRrYzCtMHw==
X-Received: by 2002:a05:6402:3493:b0:607:e3ec:f8ea with SMTP id
 4fb4d7f45d1cf-60a1cd1a66cmr11552849a12.6.1750694478557; 
 Mon, 23 Jun 2025 09:01:18 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60a185449d5sm6231911a12.28.2025.06.23.09.01.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Jun 2025 09:01:18 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
Date: Mon, 23 Jun 2025 18:01:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
Content-Language: en-US
In-Reply-To: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750694479; x=1751299279; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=GV9eywOsXK84WOKUgMvagNTBliIluKm+MCneZcnY37Y=;
 b=pa6FwuxRhJH259gg5MXpT812l7dCzwKOpWpF3IFjfR/yfoT+kj2jWNnNDib9flNsJf
 Re89ifAvpTtxd554J9xnl+qv28Yzq4KeQOGyU5a/3dUbNKw7AFAyojnAkXreGKyHyACx
 nB94eBUzpx/GgIQ6gWcKUxNBs4tkTojvv+rhNVoDmVdlottYILbO7bP1fE9tTcrmqKcX
 5asYByTa+/SoZNOqaDvDZFi/1/9x5SVHxFWaPe0+csrz4orRnWffXP2t2f7bxvEEC5sk
 HBUz2Pnqodf7EcHYnGWLm/ZnpXNpT7dDNb7oKPiYTaoqgNkQ1RBmAhsBy4/EvZnv6OMI
 OohQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=pa6FwuxR
Subject: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

Unfortunately some systems have left the factory with an empty checksum.
NVM is not modifiable on this platform, hence ignore checksum 0xFFFF on
Tiger Lake systems to work around this.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
v2: new check to fix yet another checksum issue
 drivers/net/ethernet/intel/e1000e/defines.h | 1 +
 drivers/net/ethernet/intel/e1000e/nvm.c     | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index 8294a7c4f122..01696eb8dace 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -637,6 +637,7 @@
 
 /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
 #define NVM_SUM                    0xBABA
+#define NVM_SUM_FACTORY_DEFAULT    0xFFFF
 
 /* PBA (printed board assembly) number words */
 #define NVM_PBA_OFFSET_0           8
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index e609f4df86f4..37cbf9236d84 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		checksum += nvm_data;
 	}
 
+	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {
+		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
+		return 0;
+	}
+
 	if (checksum != (u16)NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
-- 
2.47.2

