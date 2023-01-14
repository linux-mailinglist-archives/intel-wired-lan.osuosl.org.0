Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D8166ABDA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 15:04:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B93A8415B5;
	Sat, 14 Jan 2023 14:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B93A8415B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673705080;
	bh=2uVxxFyzml45MDxqqNzfXZqvIYBwN4ssEEwhD1DPoaI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Crz5NL4bXU0N1c7DssWhU6xak7jHW3QB393STnBRoAUdDwhN+SxTBGOsGoEkZpCSb
	 nOm8mIJv6eJhHey/5+CYD39HDWu7eJ4xcnkvfsbV0C2vVj3+/1r0ST3T86zQDCFgSP
	 pNY3djyro/sOIdpufyYvd0mJjKk4CIFO3HuPkrkgLBMNb0fi6tUoT6lUI8sT3inWia
	 3+Nz6m4NC37MYZvbmz2p8n4BFRWrkVu7T2gr0Ex8rJzRfkGXI6QB+TbQlPQ+kjqz+h
	 elMeO9ekCKXpfqlN3X/DDlwdlec5JylSl3p7UFsHfOes0zfLHb/xH1Qp5bkOw4Ht9w
	 Nn18O5iacSddg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYCOYjsZupub; Sat, 14 Jan 2023 14:04:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC314157D;
	Sat, 14 Jan 2023 14:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC314157D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CEC61BF316
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 14:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 150744157D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 14:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 150744157D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zo1Ef2kp_JD0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 14:04:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB5DA4157A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB5DA4157A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 14:04:32 +0000 (UTC)
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-616-GlXNv0JLNPe5X1G9yAS2Vw-1; Sat, 14 Jan 2023 09:04:30 -0500
X-MC-Unique: GlXNv0JLNPe5X1G9yAS2Vw-1
Received: by mail-yw1-f197.google.com with SMTP id
 00721157ae682-4dd4d4591f7so55822257b3.15
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 06:04:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6F2gTFb1ZrF9f6ES4DXTz8rBxEV3JQ1L7+17Uewwhrc=;
 b=7k4IPYrZW4XNtk7tPxaDoOdhLNYEAJQGaTH8+UXYWTl8Aqj++gX4dMoPwLu7yvSIpd
 tb/vWftRmg8mFuw4h9IwVkklS92HxYnVnxntpQWirVAdnpHsuD3/5p1XaLxHkiAuTmjh
 tNljgbxdgMkf/onRzNO4dG4+jc6yrSMy/T/yCO2V3Xgw4BIPseeB1Zxc9TgkgBVKSeUW
 Ggmg7a9jiX/VBBVS/5mTz6wNZy48MC1Orm3j1Es/KO/f/yitBWHkFf7ApQzLTWXSvnmf
 5NprfFTu+RYRy0T79Velr144sMZw9Oe6F8ZvY3yOsTN6ff3JF2TmJKcBznfjVTLoPIif
 wB9g==
X-Gm-Message-State: AFqh2koQBsjuj1/FNRo5A8PNH8avKmMyCf5B4WHv+GZRaWkULvIEx50n
 D6NiWx/UYAEeaRd6dWNvHwAbdAa170f3Dqg54VQMGTilOiDu6mcMr/TQ8zFl3UAdJC14aOK78q6
 WFRitcQ1pa0czHVDljpJJ9npvBQp/qQ==
X-Received: by 2002:a05:7500:398d:b0:f1:c205:b468 with SMTP id
 lu13-20020a057500398d00b000f1c205b468mr303198gab.48.1673705069471; 
 Sat, 14 Jan 2023 06:04:29 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsVpjjeHbW3FsEjFjGQmccrBWIuIWhHpfGIsTLiovScnaV9wcQ0yrSXBbBjxnBKtOpqCbSnHw==
X-Received: by 2002:a05:7500:398d:b0:f1:c205:b468 with SMTP id
 lu13-20020a057500398d00b000f1c205b468mr303174gab.48.1673705069108; 
 Sat, 14 Jan 2023 06:04:29 -0800 (PST)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 br43-20020a05620a462b00b006ec771d8f89sm14675789qkb.112.2023.01.14.06.04.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Jan 2023 06:04:28 -0800 (PST)
From: Tom Rix <trix@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, nathan@kernel.org,
 ndesaulniers@google.com, vinicius.gomes@intel.com,
 jeffrey.t.kirsher@intel.com
Date: Sat, 14 Jan 2023 09:04:12 -0500
Message-Id: <20230114140412.3975245-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673705071;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=6F2gTFb1ZrF9f6ES4DXTz8rBxEV3JQ1L7+17Uewwhrc=;
 b=f6E4aAZ43upnMNvNLM8psAAu4pkjwikN2oOWZN+XMta3PLQdQxHAIy7blst8g9vDdTkeyh
 Piu3n8JF8OB4sahwYAb0Nf5tCHVHFRNKlc5M/oCXXX7jq+fjnku3xw22nD/ya5ZFcAEEE0
 dwA7wmTxwO3LeOSVka6bxL+rv0CQUMA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=f6E4aAZ4
Subject: [Intel-wired-lan] [PATCH] igc: return an error if the mac type is
 unknown in igc_ptp_systim_to_hwtstamp()
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

clang static analysis reports
drivers/net/ethernet/intel/igc/igc_ptp.c:673:3: warning: The left operand of
  '+' is a garbage value [core.UndefinedBinaryOperatorResult]
   ktime_add_ns(shhwtstamps.hwtstamp, adjust);
   ^            ~~~~~~~~~~~~~~~~~~~~

igc_ptp_systim_to_hwtstamp() silently returns without setting the hwtstamp
if the mac type is unknown.  This should be treated as an error.

Fixes: 81b055205e8b ("igc: Add support for RX timestamping")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index c34734d432e0..4e10ced736db 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -417,10 +417,12 @@ static int igc_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
  *
  * We need to convert the system time value stored in the RX/TXSTMP registers
  * into a hwtstamp which can be used by the upper level timestamping functions.
+ *
+ * Returns 0 on success.
  **/
-static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
-				       struct skb_shared_hwtstamps *hwtstamps,
-				       u64 systim)
+static int igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
+				      struct skb_shared_hwtstamps *hwtstamps,
+				      u64 systim)
 {
 	switch (adapter->hw.mac.type) {
 	case igc_i225:
@@ -430,8 +432,9 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
 						systim & 0xFFFFFFFF);
 		break;
 	default:
-		break;
+		return -EINVAL;
 	}
+	return 0;
 }
 
 /**
@@ -652,7 +655,8 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
 
 	regval = rd32(IGC_TXSTMPL);
 	regval |= (u64)rd32(IGC_TXSTMPH) << 32;
-	igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval);
+	if (igc_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval))
+		return;
 
 	switch (adapter->link_speed) {
 	case SPEED_10:
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
