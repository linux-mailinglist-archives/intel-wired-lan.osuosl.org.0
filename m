Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC4A5E02F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 16:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7141C40905;
	Wed, 12 Mar 2025 15:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PfQYx-sBxhyz; Wed, 12 Mar 2025 15:22:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BC1240923
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741792975;
	bh=QwG6z8grGkJxE/FiYYDWxMFV+VNB7Xv16WuuoJFtwgQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fB/sD1bzlec0wjIpdyJYyMPKy5eMdf0fcBV/wpvPe9DF+VN5TrP4gK8A/amyhzCev
	 M4XjZ14phTn+2Kj7fr6pMGRA4lGZ7TW3QSkbH5zw7H0kpzP8dLGR87/d1odOFTU1e7
	 TuHKEFmpc4qB4ArfHCYQAz2QUCVIzvU+ZvyidH36e1EkfxGveJPsm32kbwNkZABLvM
	 7OxRNhvwBIyssZ5FscY1czLNe8GIye0mNPCzciReh37V43otFmQxRXyYW4+o44sH4o
	 rAIHYVmE0uylyhDPaZ2YkKQ2kXoFWqBSl9noNo8ud2GiIB85HCTJ2kXT1EwkXYmv1b
	 pmhvo795DcG2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BC1240923;
	Wed, 12 Mar 2025 15:22:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D223A1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B58738211B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 00QLft7LTRuT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 03:39:22 +0000 (UTC)
X-Greylist: delayed 977 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 12 Mar 2025 03:39:20 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B799820F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B799820F8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.36.163.20;
 helo=gate2.alliedtelesis.co.nz; envelope-from=hamishm@alliedtelesis.co.nz;
 receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B799820F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 03:39:20 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id D99E02C03CA;
 Wed, 12 Mar 2025 16:22:57 +1300 (NZDT)
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B67d0fe110000>; Wed, 12 Mar 2025 16:22:57 +1300
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.10])
 by pat.atlnz.lc (Postfix) with ESMTP id AF99213EE4B;
 Wed, 12 Mar 2025 16:22:57 +1300 (NZDT)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id AC305240364; Wed, 12 Mar 2025 16:22:57 +1300 (NZDT)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>
Date: Wed, 12 Mar 2025 16:22:50 +1300
Message-ID: <20250312032251.2259794-1-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ccpxrWDM c=1 sm=1 tr=0 ts=67d0fe11
 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=Vs1iUdzkB0EA:10 a=j5V92D-ZtT2g-DOZFCwA:9
 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Mailman-Approved-At: Wed, 12 Mar 2025 15:22:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1741749777;
 bh=QwG6z8grGkJxE/FiYYDWxMFV+VNB7Xv16WuuoJFtwgQ=;
 h=From:To:Cc:Subject:Date:From;
 b=vtv1aZn9ZOsel/Vubz0sfTWvZxafC+7G9HPmI67GYY2z5PH4JpB/dJlL0zHVjH00k
 gMj4vkNFB0hZoGZULudaOUPfEYRFc9Nqaawwl0wv2GvBQGJfwZ2CfefLdnCzMXY6ly
 NlO8Krq8emDT70+yCHPf+6MBD8nbkYTN220APQdYXOcbJIfjYoOZF3HjJCIwyf8ETz
 buu40FRXn3n3Bl9phUPZ4b33bGuuzKvFvkNpbIQQNt2Oh7QIOFPujbM+KeO+Qxgtm2
 u9AHnejr4UfaF0Nr8gKj5B0WYM+gxuKkLrhAC1h0WnHRgndp/K3Xv1FQWQlN4s0VrL
 jQonORjqnbzjw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=vtv1aZn9
Subject: [Intel-wired-lan] [PATCH net] igb: Prevent IPCFGN write resetting
 autoneg advertisement register
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

An issue is observed on the i210 when autonegotiation advertisement is se=
t
to a specific subset of the supported speeds but the requested settings
are not correctly set in the Copper Auto-Negotiation Advertisement Regist=
er
(Page 0, Register 4).
Initially, the advertisement register is correctly set by the driver code
(in igb_phy_setup_autoneg()) but this register's contents are modified as=
 a
result of a later write to the IPCNFG register in igb_set_eee_i350(). It =
is
unclear what the mechanism is for the write of the IPCNFG register to lea=
d
to the change in the autoneg advertisement register.
The issue can be observed by, for example, restricting the advertised spe=
ed
to just 10MFull. The expected result would be that the link would come up
at 10MFull, but actually the phy ends up advertising a full suite of spee=
ds
and the link will come up at 100MFull.

The problem is avoided by ensuring that the write to the IPCNFG register
occurs before the write to the autoneg advertisement register.

Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 32 ++++++++++++-----------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
index d368b753a467..f0c5ffa8450d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2382,6 +2382,23 @@ void igb_reset(struct igb_adapter *adapter)
 	    (adapter->flags & IGB_FLAG_MAS_ENABLE)) {
 		igb_enable_mas(adapter);
 	}
+
+	/* Re-establish EEE setting */
+	if (hw->phy.media_type =3D=3D e1000_media_type_copper) {
+		switch (mac->type) {
+		case e1000_i350:
+		case e1000_i210:
+		case e1000_i211:
+			igb_set_eee_i350(hw, true, true);
+			break;
+		case e1000_i354:
+			igb_set_eee_i354(hw, true, true);
+			break;
+		default:
+			break;
+		}
+	}
+
 	if (hw->mac.ops.init_hw(hw))
 		dev_err(&pdev->dev, "Hardware Error\n");
=20
@@ -2412,21 +2429,6 @@ void igb_reset(struct igb_adapter *adapter)
 		}
 	}
 #endif
-	/* Re-establish EEE setting */
-	if (hw->phy.media_type =3D=3D e1000_media_type_copper) {
-		switch (mac->type) {
-		case e1000_i350:
-		case e1000_i210:
-		case e1000_i211:
-			igb_set_eee_i350(hw, true, true);
-			break;
-		case e1000_i354:
-			igb_set_eee_i354(hw, true, true);
-			break;
-		default:
-			break;
-		}
-	}
 	if (!netif_running(adapter->netdev))
 		igb_power_down_link(adapter);
=20
--=20
2.48.1

