Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A31A67E32
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 21:49:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E590B60C2C;
	Tue, 18 Mar 2025 20:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFnjNJQVbP4V; Tue, 18 Mar 2025 20:49:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDCDD60C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742330969;
	bh=vOxN+ZknqyDDX0vVNYFZ1rF8uRtHiCBa7wmST/H5E7g=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fdaZtOA+XvkyK47yDv3j4/6Jd9R+kGy2N3pEhYS9eYIF7WTu9pKNSuddCBHTMwW25
	 ifWbnKB9G0lx+mLokBmUOfPiERfb4jh0qr+CJnGNP5LkJOXxMM1zWgayA4GL8L2Q51
	 MeqBc6075dT0qK2F8HYW/o+6+xwjh4aJpmlAhWwtySItG4qUNG5i1YFDTHa5wF8bBt
	 pwVoBdWkPmQgdai0X0LoEGFaGfebIDfVkVs2uX6PPpUSa6VqLy+r31p9vgBwgsABDl
	 fBniKHCybq3rm7e2ImHsXKrXNJ4VO8Lfkju3dhIlcz/acEHvUh9WXxfVUHnFxTI2sI
	 lGvwLMcIpfWYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDCDD60C2D;
	Tue, 18 Mar 2025 20:49:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC687950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 20:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D048581492
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 20:46:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLr_mFLtepIN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 20:46:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52d; helo=mail-ed1-x52d.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6CA981466
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6CA981466
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6CA981466
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 20:46:35 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-5e60cfef9cfso8548862a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 13:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742330793; x=1742935593;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vOxN+ZknqyDDX0vVNYFZ1rF8uRtHiCBa7wmST/H5E7g=;
 b=m/QD4iCg2Ks4QLAj8QVekiNEm/KQAccePYvP1ISQAQcVk1y9zNiCd0C4XyK+ywzlwt
 D+wqdhhEElDGPVA9+WHC+b8bgAY4tVi1zW04V14XJ8FDou7UuBVo1G/hye4KZgNBZjQr
 RrSvMQE/LJyUYLgin6y8C8330M4IR4BLeiPkSr6JRUVQm3vOh0HDoLQS8mASZTl6+aj9
 5Z6oXXAkMz8sZC2pu7p8g2iWSVHATahyCsKC2tcx1vgbgqtkbKNTrQ8U930ToSaioKMT
 vyy7t4+A0QCWDcMwwV2bsHR1jk4eIDqxtBO3jajF8iUUPfGa7odoGjWP/XwmvJfUq831
 KyHw==
X-Gm-Message-State: AOJu0YwskE4FA7DD68a0B/3y/VGtkbcdohoxNsyMzNTo+Y3bowQa3GUA
 TtnszmpO+hlaxwRlQ/aJ7COBwP5nbX++MfCAhhofKBYrS2XDx1FTgSHI9sso/g==
X-Gm-Gg: ASbGncsiCMAxswh/cZDsccufwMbYsOqBvmjx/+9yjUU6E84RdGpSOTkKKA22uaS/siL
 vVW7IwztJKZOS74jE9bOP2WvkfQkoqNVegJlgZmRjcyKuiksPBhlrElNj8uQU54K3ev0HJJhVyR
 mhriIGo5puqlGhBwEteh/Xulso3UpnwY7kS1gjBK+A0ZcJ4pudQ67aK1mvfimpC6a02Hgo5tfdT
 tmEnruGnpw/BePUwXd21JU+hox5oPGBcKJSO9pZS8+KCEngPJZncD4qR1as7uCPGs+tN81sddLX
 oaTpFoR3nTUWtbf01YbeGmeKDOMLXG4XG7YmCVMhbSA=
X-Google-Smtp-Source: AGHT+IHuT5Q8Sx3B+XRIeJFH5Nv0x7Ff5aMv5XHIeldVLfzmgtrOAgutMuXojagHXaBw8zQjZMqy/A==
X-Received: by 2002:a05:6402:254d:b0:5e4:a88a:657 with SMTP id
 4fb4d7f45d1cf-5eb80fcaeb0mr162425a12.28.1742330793244; 
 Tue, 18 Mar 2025 13:46:33 -0700 (PDT)
Received: from [10.2.1.132] ([194.53.194.238])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5e816968bfbsm8049409a12.17.2025.03.18.13.46.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Mar 2025 13:46:33 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
Date: Tue, 18 Mar 2025 21:46:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 18 Mar 2025 20:49:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1742330793; x=1742935593; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:cc:to:subject:user-agent
 :mime-version:date:message-id:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vOxN+ZknqyDDX0vVNYFZ1rF8uRtHiCBa7wmST/H5E7g=;
 b=Cv3b4Y0X6l8EHJs5vIt+eu1moo+K7DuJneVhA8atmdhfney1Gwx/q8mcMbt8MVyz7y
 DSwdrL+U6aLPfCP0AN5UdUQ78pRa+Va5pGcjPzC36ofjq+oVVzG2Dxs+2r8jepSggJ1T
 X01leKuro119taOtrd2Mu+ilHR9JBq3hIqG2ALTcIBzQYFaJsTBk+9dnWQ/NrZn3ssHr
 nFxF0Gyy4MEC/ApNyJqSVuN5D9jqaYH6ZyLg5mLSQlV/I07jtd/0NrnSrTuM4zfFpdu8
 7N1otGoDuf9LlFSLYDJXhRC9ZLtcc20XLNYl7n45HIuA/j0Nq+3ryCURW20SbZaqWVlK
 r+nA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=Cv3b4Y0X
Subject: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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

Many laptops and motherboards including I219-V network card have
invalid NVM checksum. While in most instances checksum is fixed by
e1000e module or by using bootutil, some setups are resistant to NVM
modifications. This result in the network card being completely
unusable.

It seems to be the case on Dell Latitude 5420 where UEFI firmware
corrupts (in this module's sense) checksums on each boot. No set of
BIOS options seems to help.

This commit adds e1000e module option called VerifyNVMChecksum
(defaults to 1) that allows advanced users to skip checkum verification
by setting it to 0.

Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
Cc: stable@vger.kernel.org
---
 drivers/net/ethernet/intel/e1000e/e1000.h  |  1 +
 drivers/net/ethernet/intel/e1000e/netdev.c | 22 ++++++++--------
 drivers/net/ethernet/intel/e1000e/param.c  | 30 ++++++++++++++++++++++
 3 files changed, 43 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba9c19e6994c..61dcc88dd2ff 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -461,6 +461,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
 #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
 #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
 #define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
+#define FLAG2_VERIFY_NVM_CHECKSUM         BIT(16)
 
 #define E1000_RX_DESC_PS(R, i)	    \
 	(&(((union e1000_rx_desc_packet_split *)((R).desc))[i]))
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 286155efcedf..b99b22dcaba4 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7567,16 +7567,18 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 	adapter->hw.mac.ops.reset_hw(&adapter->hw);
 
-	/* systems with ASPM and others may see the checksum fail on the first
-	 * attempt. Let's give it a few tries
-	 */
-	for (i = 0;; i++) {
-		if (e1000_validate_nvm_checksum(&adapter->hw) >= 0)
-			break;
-		if (i == 2) {
-			dev_err(&pdev->dev, "The NVM Checksum Is Not Valid\n");
-			err = -EIO;
-			goto err_eeprom;
+	if (adapter->flags2 & FLAG2_VERIFY_NVM_CHECKSUM) {
+		/* systems with ASPM and others may see the checksum fail on the first
+		* attempt. Let's give it a few tries
+		*/
+		for (i = 0;; i++) {
+			if (e1000_validate_nvm_checksum(&adapter->hw) >= 0)
+				break;
+			if (i == 2) {
+				dev_err(&pdev->dev, "The NVM Checksum Is Not Valid\n");
+				err = -EIO;
+				goto err_eeprom;
+			}
 		}
 	}
 
diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index 3132d8f2f207..8711eb10dd11 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -127,6 +127,15 @@ E1000_PARAM(KumeranLockLoss, "Enable Kumeran lock loss workaround");
 E1000_PARAM(WriteProtectNVM,
 	    "Write-protect NVM [WARNING: disabling this can lead to corrupted NVM]");
 
+/* Verify NVM Checksum
+ *
+ * Valid Range: 0, 1
+ *
+ * Default Value: 1 (enabled)
+ */
+E1000_PARAM(VerifyNVMChecksum,
+	    "Verify NVM checksum [WARNING: disabling can cause invalid behavior]");
+
 /* Enable CRC Stripping
  *
  * Valid Range: 0, 1
@@ -524,4 +533,25 @@ void e1000e_check_options(struct e1000_adapter *adapter)
 			}
 		}
 	}
+	/* Verify NVM checksum */
+	{
+		static const struct e1000_option opt = {
+			.type = enable_option,
+			.name = "Verify NVM checksum",
+			.err  = "defaulting to Enabled",
+			.def  = OPTION_ENABLED
+		};
+
+		if (num_VerifyNVMChecksum > bd) {
+			unsigned int verify_nvm_checksum =
+				VerifyNVMChecksum[bd];
+			e1000_validate_option(&verify_nvm_checksum, &opt,
+						adapter);
+			if (verify_nvm_checksum)
+				adapter->flags2 |= FLAG2_VERIFY_NVM_CHECKSUM;
+		} else {
+			if (opt.def)
+				adapter->flags2 |= FLAG2_VERIFY_NVM_CHECKSUM;
+		}
+	}
 }
-- 
2.39.5

