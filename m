Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42582AE6F53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 138A660E13;
	Tue, 24 Jun 2025 19:14:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xfk5BYhU3WLD; Tue, 24 Jun 2025 19:14:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7561D612F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750792486;
	bh=i758Ky8oE7yqylYD7uxqKekAUdnnIo9/om6cPhIxexM=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UDr3+6i5GaPqmczEn1add7tzfcIDXOcjy9qhmmL/CfQIkASPHvoxkET1Jz5uAqX2J
	 4PN2TEiLw2qNynlGqjb1GpoNl0kFsnXbdIm79a3LS9+lAjUYm9o9bCxldXJg++DtJn
	 mXqBi4+9tWhMXXbJyXKzLYPfbxiFacY3zkDCMiJW/+S/ciRGJD1U3PJ3ssMhgPNBPE
	 I29WA78WCtCwEs/MVJgb091VI15fGC4ZtWefaz74ClZkvppGPmjbviW3L5fOGu5JXP
	 zphaDNL4xxWP1cANsybp3s432D2VLn23YgQrNosJpPCzrfUCT0VoIKEOgBGkZSJqVA
	 biCouj8wcfQPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7561D612F3;
	Tue, 24 Jun 2025 19:14:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D527143F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6A33407E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:14:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vkoRrTT3ZZqO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:14:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EF5354071E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF5354071E
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF5354071E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:14:43 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-adb2e9fd208so141872466b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750792482; x=1751397282;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i758Ky8oE7yqylYD7uxqKekAUdnnIo9/om6cPhIxexM=;
 b=ObrC9qszfpsnjgRcjQxGGZqC597cEDfRhgxPpC5qUdnQa4so61KYipFnXByNPKnuTE
 AMhYogCF/+ffeNkh2IJVCZPzicWEOMjc224oton+TQo2Zu83a0haOLn9CBNE+WBJRD0N
 hkoBLS7jN0yosUR6UJv8PuE95fObWvg/wC+UuTUwjStpGQgeqk1wFZv2Tiq2Sr2EfPSt
 dOnp1EAUuXacJ7NxjlfRgedbsZXOLXRvmdbVaHApcjqNbxIZdyLljj2dx1R5xzaxQQ/h
 G59luQtvhAji5zAigvf6bGiGr12QST0/HTbuaNsAeprNUDB3a13QY1NF3FPuSaJB9DlQ
 fDQA==
X-Gm-Message-State: AOJu0YwSoMk3IHJe8eJ4ldXe6vmkBWR4zvemwYJ1X748dY2CfXrLamm5
 IMW5GfSucanhCXVRru6060s+RJV0APaBBdzJZXzS6TupMHSl8FeljMfWWl5iG1IcBg==
X-Gm-Gg: ASbGnctxfsHdt+LXAswJ80G4XycWxO3TzlzaWnXAesZiYBw3wY1S7ug8CgK1AI/pFT6
 uE+RSkkBhSgS6Qj6I7io/tcmNGumy+ZGmCllHxfSEV4+4q4NoqJJJifmkr/XgeH1NXSTCHPSuTO
 cae06Uennp9dJaxmbxLnmWyq2qRyt5Tue6BeRcGCaer9+jk2ZkpTrRp2WmQw3p68EsDoWcL0U1K
 X0/K8Pl7rwAkRWsFA3U+cOpFEyO+4XGnGnjOVZ1N3EF+O7uMPQh34/jCa3sC6ZX0FSxSJffSxTj
 BtBsxZV8KpW7p1/PhiQKufhnb1NezBJIgNpceAlNrhvaswNBuomvz8QOFS+VCMEG
X-Google-Smtp-Source: AGHT+IGh+3ym/VJWtnmWq08iSJurV2ZoLlMoR+D33CMj9G53fcjK4wozO3Eitkg2sk8zbnY3++b52Q==
X-Received: by 2002:a17:907:9622:b0:add:ede0:b9d4 with SMTP id
 a640c23a62f3a-ae0beca03f0mr44977866b.0.1750792481952; 
 Tue, 24 Jun 2025 12:14:41 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0b5b764ecsm83597666b.5.2025.06.24.12.14.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:14:41 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
Date: Tue, 24 Jun 2025 21:14:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
Content-Language: en-US
In-Reply-To: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750792482; x=1751397282; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=i758Ky8oE7yqylYD7uxqKekAUdnnIo9/om6cPhIxexM=;
 b=Or1LrAZ6cgbibHwh5oXcC/PcMCN3+hZ4nzJ83ocifwEr+wfH4Ibsg7Ss25pQhaCBWn
 +ksCPQbFkXCkXpmHr+RKtVlsmZaEY5VL5jqgXES+LMiayYEGinTLsaKO6W/vApbIEW8u
 Orow45qr/l/qlD3mchh1GSPzx3jAQuEJtLyyl8yfuO2KC/2pnflYMI2ETppUgJB15qDK
 7wXS69/DoyCkvh3A63HX9QW4kJykvNfSDHUHtQcGtGUUuTTmQygnvM1i1JNr+fpPkWP7
 1nlYr4kswXj9FNKcuNzziwGafwoRD0k7ryMZbb5PYqqirrkHNjCPOc4gOMQbx9XPeYMs
 hIGA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=Or1LrAZ6
Subject: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
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
Tested-by: Vlad URSU <vlad@ursu.me>
Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
Cc: stable@vger.kernel.org
---
v2: new check to fix yet another checksum issue
v2 -> v3: fix variable bein compared, drop u16 cast
 drivers/net/ethernet/intel/e1000e/defines.h | 3 +++
 drivers/net/ethernet/intel/e1000e/nvm.c     | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index 8294a7c4f122..2dcf46080533 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -638,6 +638,9 @@
 /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
 #define NVM_SUM                    0xBABA
 
+/* Factory-default checksum value */
+#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
+
 /* PBA (printed board assembly) number words */
 #define NVM_PBA_OFFSET_0           8
 #define NVM_PBA_OFFSET_1           9
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index e609f4df86f4..56f2434bd00a 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		checksum += nvm_data;
 	}
 
+	if (hw->mac.type == e1000_pch_tgp && nvm_data == NVM_CHECKSUM_FACTORY_DEFAULT) {
+		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
+		return 0;
+	}
+
 	if (checksum != (u16)NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
-- 
2.47.2
