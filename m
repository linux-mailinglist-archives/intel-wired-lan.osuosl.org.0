Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C9387BFA5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 16:12:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BB1E410AE;
	Thu, 14 Mar 2024 15:12:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oqQW0x6DCgFU; Thu, 14 Mar 2024 15:12:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBD93410A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710429121;
	bh=07iWg96Ug0ar28khXr8VtZgNx/Y3grwqg1hNcNbM4k4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T0Jrh+kwfWwv2nnxFki8axr3OauSIVfmGYXFmokdzh7/ZLFrwEd6WsRXnXAawW0uu
	 44xacqqPtuhOhqLObCZ0LIzN+VzZdb8UIygPXJBfEcCePDKC/dTZgx4XCkstOoSPik
	 kLS371EkhwmOU13TF7YpBWDLEbnjbiXOe4963ccyGj/+bQrZvN55xT0BG6hSAL7N/q
	 jizqA3XsonByMHLs4zAoTp/U7qEWIkoeQyUbmKygFRZDWTqZfB1hajmtDKYOfsLpC/
	 nQU+iAeDeRf9UNhIgYvI5H8aGLQ5Lwqkc3gjCh8FSbO2XCxN9z7NbBCb3wgBHUMPXv
	 7dNznU93lW3mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBD93410A0;
	Thu, 14 Mar 2024 15:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1B11BF31B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 09:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1773A40472
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 09:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qbXUe8m7SX-8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 09:15:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=ulrich.weber@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 405C5402D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 405C5402D4
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 405C5402D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 09:15:30 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-33d90dfe73cso433643f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 02:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710407728; x=1711012528;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=07iWg96Ug0ar28khXr8VtZgNx/Y3grwqg1hNcNbM4k4=;
 b=ExfB3Lhfg4rDlW97L6/RBxJx3DGYgBu3fJbtoJ/RvNhlarujNH7XjvrHJ+FSAMi8o6
 WN85bWOXCAHApLtkBpdoObiodtOZnytyWjiSY3cUaMoVA2M1O1iWjIEuQieykinsbVdW
 dqPBZheC9e+0+OAu/QcyKaVvGuePn8IAT1CvEj3COVCtknG0bOV2+1xrp6z1xBmOE/Ji
 Y7lKWWf447bE6OHF1Unh87qGDy0Vi/s1YTx12YRQn27WhvX3dOd7xUmKOkPIJWfJcGzf
 WpPjrEAcxSW/w5j3sACnf4Yt5nMoB9t7OrCxiCZ/TEl3V39QNswNd+hG6j3QvYptKYGV
 Tv0Q==
X-Gm-Message-State: AOJu0Yy+vbF4R7TWN8tuR8DqWJ0H3zmhzqMfTr7k0XRRw/O0jSej/zTe
 CN9JT++TTXXIZKCy07I+uW1YlrWoSC1IF76L2hMKDxUM38MV/kvTXcnr+jmi
X-Google-Smtp-Source: AGHT+IG908+PQ3nzLBjI0GQDkzIAmuEmSz4l/nrwvTsC9+ftw/0SdlwgCdcIf5wdw5CCK59J8srTtg==
X-Received: by 2002:adf:e745:0:b0:33e:7991:6105 with SMTP id
 c5-20020adfe745000000b0033e79916105mr969650wrn.16.1710407727888; 
 Thu, 14 Mar 2024 02:15:27 -0700 (PDT)
Received: from x11-12c.kopla.local ([87.130.86.114])
 by smtp.googlemail.com with ESMTPSA id
 n28-20020adf8b1c000000b0033e745176f5sm264751wra.110.2024.03.14.02.15.27
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Mar 2024 02:15:27 -0700 (PDT)
From: Ulrich Weber <ulrich.weber@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Mar 2024 10:15:13 +0100
Message-Id: <20240314091513.25984-1-ulrich.weber@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 14 Mar 2024 15:11:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710407728; x=1711012528; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=07iWg96Ug0ar28khXr8VtZgNx/Y3grwqg1hNcNbM4k4=;
 b=EO2xQnYqGSw6C5jyTxNkJKqLvVA+qTZRA3SxgfvK3frGTNDNBLLomGuGbSY14hn1bU
 47Kiwir4eG+S7veEe+fXm4uuXpfCIJ3UpCp1j8MSQ6G905c5iLv1ypw8Huqhyf8lP1km
 DIIwfahfSZXFOJX8J1OwAp+jtqCOqjbF4v5IfEAIq1AaWRz8HEv+crvsXs2my+StYC4R
 7pzV3fWExY+7tk5p64RC2IBoJlsLlLnDMx93lBneGQ8BnGivSk9AeiWMkp61//lbG0M0
 Ors6mgG0Qh/UMV/dHIjfLXJz/6iz7qLvukOrbM54KT5F90fkPBj5WfXtvyuSEnZgMevJ
 A+ZA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EO2xQnYq
Subject: [Intel-wired-lan] [PATCH] ice: set ethtool autoneg based on active
 cfg
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current logic uses ICE_AQ_AN_COMPLETED information to
flag if autonegotiation is enabled or disabled.

Since new ethtool netlink interface checks if there is
a configuration change or not and ignores the call, if
there is no change, this makes is impossible to disable
autonegotiation on links without established autoneg.

This will change the logic to check the active phy
configuration if autoneg is enabled or not.

Signed-off-by: Ulrich Weber <ulrich.weber@gmail.com>
---
 src/ice_ethtool.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/ice_ethtool.c b/src/ice_ethtool.c
index e1eeb16babb3..8fe475944f2c 100644
--- a/src/ice_ethtool.c
+++ b/src/ice_ethtool.c
@@ -2857,10 +2857,6 @@ ice_get_link_ksettings(struct net_device *netdev,
 	else
 		ice_get_settings_link_down(ks, netdev);
 
-	/* set autoneg settings */
-	ks->base.autoneg = (hw_link_info->an_info & ICE_AQ_AN_COMPLETED) ?
-		AUTONEG_ENABLE : AUTONEG_DISABLE;
-
 	/* set media type settings */
 
 	switch (vsi->port_info->phy.media_type) {
@@ -2912,6 +2908,10 @@ ice_get_link_ksettings(struct net_device *netdev,
 	if (err)
 		goto done;
 
+	/* set autoneg settings based on active configuration */
+	ks->base.autoneg = ice_is_phy_caps_an_enabled(caps) ?
+		AUTONEG_ENABLE : AUTONEG_DISABLE;
+
 	/* Set the advertised flow control based on the PHY capability */
 	if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
 	    (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {
@@ -2960,7 +2960,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
 #endif /* ETHTOOL_GFECPARAM */
 
-	/* Set supported and advertised autoneg */
+	/* Set supported and advertised autoneg based on media */
 	if (ice_is_phy_caps_an_enabled(caps)) {
 		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
 		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
-- 
2.40.1

