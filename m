Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA50AE6F91
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 21:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3699D60DA2;
	Tue, 24 Jun 2025 19:30:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjoc5d7tU2MK; Tue, 24 Jun 2025 19:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C934D60DC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750793419;
	bh=DMpQ9unMD0vkQzXMI0Rh2M7VMEt4C5NAu9LffZ9WmFQ=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2vyYGuvQVXoM/cLRhR1flTZbiuzLPQK2Wsv8r/rNVLkC+ZnrRfqHpEl40dB4qPUeO
	 RPB5UzLkA3PSM7kVbEKxthfSTGzlIiaEw6NiARsmpSXVpxhBtH53j3DHCm+dp75LSA
	 LHTao0fO06mQCkG3a+M4OfI5biTL16UuMVu7gf4ktCNDyEz93BTvG6oS0KyzYpDXVP
	 LShxmLBFS4TB0hENBTLKXtUjxO+kS0S2gZpGs5uMoRm23wqV+OoQkXka2XhrM7JH0F
	 rhU2VWnM13lwJB4WHOgG494OflBTm9BrZF2AdIwWNuIDbXGG75touHtiZNzrLZxz20
	 ajHQWqJGfplaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C934D60DC6;
	Tue, 24 Jun 2025 19:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AD7D6154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F27F60D4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKEFygCq4IvH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 19:30:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CF93960BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF93960BC7
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF93960BC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 19:30:16 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-607ea238c37so1854694a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 12:30:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750793415; x=1751398215;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DMpQ9unMD0vkQzXMI0Rh2M7VMEt4C5NAu9LffZ9WmFQ=;
 b=KaTTgi2ZuDmIolWaahriXRzxdlohXR07kKLCiMZaOMoZUvqODZaaYdex9dPa+rC2QS
 IzNg8qTYdm5E+jP73gIyHefj1IVlwFxSWVL+n/ufr5QIW4yaQyARiO71Hs/3VKRKa8wg
 ZH8mOvXTuJh4tm1K2mO4Cw97jEsSYTHSGW9Oi5QY2+QSRo/nAtB5z9U6xpZTiT257ag+
 hWAE0YovomvT1y5UtkyEo4nQpOAvzQxuz5SU4xfDdRKaM/VAAWGF1IhVeybtaPYWm22B
 pNo5Z6tTO8fZg0bsMVIA6KzDTknl7Q87xorFvE4bMX0IKNhO1eC1cKXPbKpQGA1FwmFq
 2Pgg==
X-Gm-Message-State: AOJu0YzuOkfTJd1XIS4FJ/we570ynmsmKDJbd21/wugrqTHXDDuxt/L2
 ExBflcWjy1rvjIuaEFteiYrzBcA6UTAyYl/mxMjo0lkr16+yoSoxJuKVyx6ZM6aRqA==
X-Gm-Gg: ASbGncs6PTvfNBT7uLwt8y5XQ8Q92onrjqhc2PtFqanTxQm7NQ8leyeyU3taJxb9apY
 +apOu73GBBl9NUWwNvCYVbf8kveIWheNIZRRGj04KET0cjF7eKpNj8wRJJSpsBD4wW0AVVrp9Le
 eXfEMiZIOQMB8c2k4aHNFxkaiWZ05cvhJBQAdzfjxk0h68d63VFB1xZkP7LlhziNpFJue2LRbMA
 TQ1tCESeQJP+Vn2LO6hvC0X90XNFZqq+4CumAFKyIe28n/4E/fOIwrPS/USiX7H8ls8x3Ks/wgl
 RtbDIohyfAvffFeKxeNTf7/NPYeXfCtCNZRrWOUj/WlTS8uJ4/s6mBp9ZI4EYOgE
X-Google-Smtp-Source: AGHT+IFezbP2szbIE/wQs/O6ve43dXVC5PTJwpz2lY37bdKGvUZx8jqZCzVi52lj1/qGG/hdQGvRXg==
X-Received: by 2002:a05:6402:3482:b0:606:a26c:6f46 with SMTP id
 4fb4d7f45d1cf-60c4dcd1340mr327a12.19.1750793414839; 
 Tue, 24 Jun 2025 12:30:14 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-60c2f46820asm1455544a12.47.2025.06.24.12.30.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Jun 2025 12:30:14 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <9aaa80eb-91bd-4b44-814a-65f740f00d5a@jacekk.info>
Date: Tue, 24 Jun 2025 21:30:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Language: en-US
In-Reply-To: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750793415; x=1751398215; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=DMpQ9unMD0vkQzXMI0Rh2M7VMEt4C5NAu9LffZ9WmFQ=;
 b=TO0oiW3YUqNp1RFiOfDBQkI/qcHb8/+YyK+5O0QJiiWN7yLzM7R4HMI+8t0+lNHPS2
 oSUjsYHf0cWghi3knCGK9gNqHToYsZuWlWTUXMs+jUJuPNUgfqV3CXdBcWa5xS6eTYe4
 PSLiOQBXs+9hN5O6S4+ZWk5xqP4L57w1YjTXd3DhbjR7mIsw6AqaJQse9SSbjPg0ODsA
 VDogJClwtIqhYJBoOVxxKSgiCHDSxBTcK8FU+SagBC9h1adeMa25CaZU0o8Fimhj8udg
 TuRzsXSg1krosSDM+sdwlP5YsbvQhv37cqJgbW8ZphfU7RuqwCmlOXTZMQ8V1UcuOPVd
 4NUw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=TO0oiW3Y
Subject: [Intel-wired-lan] [PATCH 2/4] e1000e: drop checksum constant cast
 to u16 in comparisons
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

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
 drivers/net/ethernet/intel/e1000e/nvm.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..80435577dc0d 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -959,7 +959,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	/* If Checksum is not Correct return error else test passed */
-	if ((checksum != (u16)NVM_SUM) && !(*data))
+	if ((checksum != NVM_SUM) && !(*data))
 		*data = 2;
 
 	return *data;
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index 56f2434bd00a..d1bc69984d71 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -563,7 +563,7 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
 		return 0;
 	}
 
-	if (checksum != (u16)NVM_SUM) {
+	if (checksum != NVM_SUM) {
 		e_dbg("NVM Checksum Invalid\n");
 		return -E1000_ERR_NVM;
 	}
-- 
2.47.2

