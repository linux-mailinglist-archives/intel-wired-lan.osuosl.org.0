Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A269C689
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 01:31:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A71C020427;
	Sun, 25 Aug 2019 23:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9nP2N47Ky0dW; Sun, 25 Aug 2019 23:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 513AE20408;
	Sun, 25 Aug 2019 23:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B44641BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 19:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ACE4A886B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 19:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0MBDGefh5WF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 19:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 020FB886B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 19:14:37 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c2so6067933plz.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 12:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KfyCvX/wLd+xBmfJHt9z6f1mRRr5A8kveHSdf9q4hGs=;
 b=M8S8yGC7LZgC1vErDOoHct/w8T0Ps0GwHoxdt7XCW/IfGlv+EVwtweMFpwIQFAE4SD
 zVFIw0jNxfwQSqcSdGv7cN+S4s+iFP4Sb2vQbcC1TyP4fYa+0yaGs3YTCeHH2M4If8yW
 gXSxWTSeyXU54BisNezLnafFi1zDnev2HfUu8PAP4YLu7GkleyOEeaG0SRglUWQEmTzC
 D4FtgMwDXQ+8RKtyx04LwGz0XZ2VE+ntrggi+3qGwweHUQr8tH+knrFCt78IrSZoRr2J
 AUOt/k3rAB0FB/3geWDUNDkkJrIFYxMs5WUIvJycEFu/O68BpG3BwnkPYGPAa/gn/NN9
 fJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KfyCvX/wLd+xBmfJHt9z6f1mRRr5A8kveHSdf9q4hGs=;
 b=s4I4KGSjC4mfTDeDpKoB2z+7K0vVUfaK7ljsUOayWpBwKnW8smqIwJL0xSa6I3oCyE
 /MiHPNL5nafQMOvsb67XfI00vV/S6cA2ib4twzaU+PqKCRy8SiqzGjI1UIBKSGheeNcE
 nizd04UUXBCdXL4hf5/dt1ubWKBU4fWlPoI0oBzeVyv9CDP5tMUC0bmUmmotf/0JzuxO
 WPF9AeTIlQ1T31VfYbHQrknB+y86bLAHyv4vNbpL6lqkYoefFf07YNwJmJ3kFrHi4ECi
 kQWOmTd0MnjWggE8eJHh2sHCM2c86rEg2hgcLo5mCXZ2mXglL1Us5PDI3Z9n54YV6GOJ
 hLHA==
X-Gm-Message-State: APjAAAXIVD8ZzLUFHgvup9PRaaIiDicho+SaWYQ0SHjY55xjeJ51eyyD
 10mMqoYes+GlHCNOMnGxE2g=
X-Google-Smtp-Source: APXvYqy+0eDy7inwc30A38gZ65ippwvVtu3pIyFRgieb00b8trbyEm9Bnp8DP8TU36jggEXda6+rkA==
X-Received: by 2002:a17:902:3:: with SMTP id 3mr6767876pla.41.1566587677471;
 Fri, 23 Aug 2019 12:14:37 -0700 (PDT)
Received: from vm ([104.133.9.111])
 by smtp.gmail.com with ESMTPSA id h17sm4685829pfo.24.2019.08.23.12.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 12:14:37 -0700 (PDT)
From: Forrest Fleming <ffleming@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Fri, 23 Aug 2019 19:14:21 +0000
Message-Id: <20190823191421.3318-1-ffleming@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Sun, 25 Aug 2019 23:31:31 +0000
Subject: [Intel-wired-lan] [PATCH] net: intel: Cleanup e1000 - add space
 between }}
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 Forrest Fleming <ffleming@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

suggested by checkpatch

Signed-off-by: Forrest Fleming <ffleming@gmail.com>
---
 .../net/ethernet/intel/e1000/e1000_param.c    | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_param.c b/drivers/net/ethernet/intel/e1000/e1000_param.c
index d3f29ffe1e47..1a1f2f0237f9 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_param.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_param.c
@@ -266,7 +266,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.arg  = { .r = {
 				.min = E1000_MIN_TXD,
 				.max = mac_type < e1000_82544 ? E1000_MAX_TXD : E1000_MAX_82544_TXD
-				}}
+				} }
 		};
 
 		if (num_TxDescriptors > bd) {
@@ -295,7 +295,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 				.min = E1000_MIN_RXD,
 				.max = mac_type < e1000_82544 ? E1000_MAX_RXD :
 				       E1000_MAX_82544_RXD
-			}}
+			} }
 		};
 
 		if (num_RxDescriptors > bd) {
@@ -341,7 +341,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "reading default settings from EEPROM",
 			.def  = E1000_FC_DEFAULT,
 			.arg  = { .l = { .nr = ARRAY_SIZE(fc_list),
-					 .p = fc_list }}
+					 .p = fc_list } }
 		};
 
 		if (num_FlowControl > bd) {
@@ -359,7 +359,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "using default of " __MODULE_STRING(DEFAULT_TIDV),
 			.def  = DEFAULT_TIDV,
 			.arg  = { .r = { .min = MIN_TXDELAY,
-					 .max = MAX_TXDELAY }}
+					 .max = MAX_TXDELAY } }
 		};
 
 		if (num_TxIntDelay > bd) {
@@ -377,7 +377,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "using default of " __MODULE_STRING(DEFAULT_TADV),
 			.def  = DEFAULT_TADV,
 			.arg  = { .r = { .min = MIN_TXABSDELAY,
-					 .max = MAX_TXABSDELAY }}
+					 .max = MAX_TXABSDELAY } }
 		};
 
 		if (num_TxAbsIntDelay > bd) {
@@ -395,7 +395,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "using default of " __MODULE_STRING(DEFAULT_RDTR),
 			.def  = DEFAULT_RDTR,
 			.arg  = { .r = { .min = MIN_RXDELAY,
-					 .max = MAX_RXDELAY }}
+					 .max = MAX_RXDELAY } }
 		};
 
 		if (num_RxIntDelay > bd) {
@@ -413,7 +413,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "using default of " __MODULE_STRING(DEFAULT_RADV),
 			.def  = DEFAULT_RADV,
 			.arg  = { .r = { .min = MIN_RXABSDELAY,
-					 .max = MAX_RXABSDELAY }}
+					 .max = MAX_RXABSDELAY } }
 		};
 
 		if (num_RxAbsIntDelay > bd) {
@@ -431,7 +431,7 @@ void e1000_check_options(struct e1000_adapter *adapter)
 			.err  = "using default of " __MODULE_STRING(DEFAULT_ITR),
 			.def  = DEFAULT_ITR,
 			.arg  = { .r = { .min = MIN_ITR,
-					 .max = MAX_ITR }}
+					 .max = MAX_ITR } }
 		};
 
 		if (num_InterruptThrottleRate > bd) {
@@ -545,7 +545,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 			{          0, "" },
 			{   SPEED_10, "" },
 			{  SPEED_100, "" },
-			{ SPEED_1000, "" }};
+			{ SPEED_1000, "" } };
 
 		opt = (struct e1000_option) {
 			.type = list_option,
@@ -553,7 +553,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 			.err  = "parameter ignored",
 			.def  = 0,
 			.arg  = { .l = { .nr = ARRAY_SIZE(speed_list),
-					 .p = speed_list }}
+					 .p = speed_list } }
 		};
 
 		if (num_Speed > bd) {
@@ -567,7 +567,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 		static const struct e1000_opt_list dplx_list[] = {
 			{           0, "" },
 			{ HALF_DUPLEX, "" },
-			{ FULL_DUPLEX, "" }};
+			{ FULL_DUPLEX, "" } };
 
 		opt = (struct e1000_option) {
 			.type = list_option,
@@ -575,7 +575,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 			.err  = "parameter ignored",
 			.def  = 0,
 			.arg  = { .l = { .nr = ARRAY_SIZE(dplx_list),
-					 .p = dplx_list }}
+					 .p = dplx_list } }
 		};
 
 		if (num_Duplex > bd) {
@@ -623,7 +623,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 			 { 0x2c, AA "1000/FD, 100/FD, 100/HD" },
 			 { 0x2d, AA "1000/FD, 100/FD, 100/HD, 10/HD" },
 			 { 0x2e, AA "1000/FD, 100/FD, 100/HD, 10/FD" },
-			 { 0x2f, AA "1000/FD, 100/FD, 100/HD, 10/FD, 10/HD" }};
+			 { 0x2f, AA "1000/FD, 100/FD, 100/HD, 10/FD, 10/HD" } };
 
 		opt = (struct e1000_option) {
 			.type = list_option,
@@ -631,7 +631,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 			.err  = "parameter ignored",
 			.def  = AUTONEG_ADV_DEFAULT,
 			.arg  = { .l = { .nr = ARRAY_SIZE(an_list),
-					 .p = an_list }}
+					 .p = an_list } }
 		};
 
 		if (num_AutoNeg > bd) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
