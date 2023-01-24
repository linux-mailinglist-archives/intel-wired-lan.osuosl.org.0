Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE919678F5B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 05:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B050C60E8E;
	Tue, 24 Jan 2023 04:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B050C60E8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674535098;
	bh=dfDJpM4BGQZaUvSTmXBVsaymLTYtXd+B1ux71gBLvZA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TOIe5e+60BYa37jYs5aZuXR5IX9viOXP2iCuz0Uu7p//csUIfqda0pKcDexoo40R6
	 hJ9Ouen8z5PjMMAMicVg2yQ4w7tzJSwS7UAk3s9B6S/Tm/7ShiCiUEJqhfOtB+gLFa
	 PiU2VBk+/WhiKpdMmor9K6otDBrBEPz6u2nkkKaNTTfjp66O0JdbWg35jyi8NeY56V
	 CpiGw0AuDrWiLCIvhm6FDppzkbp40SaTo3N/ZkMlFPscamys+PDC0+Er1WPxuMqjZh
	 /NPPiRjeXduCKE728J3C5XfBQBc/6xTMLohueVvmwE6ZTYIaH3+pyW8bhOikA73cAg
	 01HSWtaoBspAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuS4VBBcPtxs; Tue, 24 Jan 2023 04:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96CCA60D7B;
	Tue, 24 Jan 2023 04:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96CCA60D7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7151BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35D518201F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35D518201F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hnQ-9RV3wohg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 04:38:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CB3781FEB
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CB3781FEB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:38:11 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id 207so10410091pfv.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 20:38:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Qth+m+QqGWxa6ejWDP+asO5qvuiiNmuGk9SYTp9o8fg=;
 b=pOP7rLJ5dQ6VNVLRATZnWlj8wTaHq+u20oiXHDs/gqpEjEidHoOpg3N2tDzIw3fbCL
 ODafLksaQ9XKp2OrwZWU7hZL4iPbdBl7PU8gabE4S69qk8fEz8IG/aHDUlv9ZFvKhmG9
 zFTcP9stHnVgCJ9POinObNrZVGPjCcHY9ljBoDaHCVQUaE85MuyuEbP8yNayApsjMse4
 AWdVwpC+3/edYL3zKO336Y0nqxtdh1u/6hUK7MidweA+WTEnlf1K5nUN6gmsvmA49mIM
 1+fRQrn/hYalvzrZYvlQOwkETKsmsxg9CW3MdmXBWNp1xK1b11YYRjFirKkEal/r/rGS
 LFZQ==
X-Gm-Message-State: AFqh2kpjI1GTeTxbOSd/IvoEU1D40LHgoL4rLElhk8FjmAXkKNzKIkQ9
 2asLK9R/s4y53lN9MOkqT0N8Iw==
X-Google-Smtp-Source: AMrXdXtyih9dRVgVDCARxZSXV17MBKBYOQC7pzp5ks/rsxZkL7r4M3UN+hqUKx1eZRtTr+9ggeQV1Q==
X-Received: by 2002:a62:61c4:0:b0:581:a8dc:8f95 with SMTP id
 v187-20020a6261c4000000b00581a8dc8f95mr26644556pfb.12.1674535090975; 
 Mon, 23 Jan 2023 20:38:10 -0800 (PST)
Received: from alarm.flets-east.jp ([2400:4050:a840:1e00:4457:c267:5e09:481b])
 by smtp.gmail.com with ESMTPSA id
 e26-20020a62ee1a000000b00574e84ed847sm457082pfi.24.2023.01.23.20.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Jan 2023 20:38:10 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 24 Jan 2023 13:37:59 +0900
Message-Id: <20230124043759.12884-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Qth+m+QqGWxa6ejWDP+asO5qvuiiNmuGk9SYTp9o8fg=;
 b=10gRHtJrXtDcx78CEUcmAg79jFs9KInyfeIRzxMVXx69dtRvO85ykEUv7nkYnbMrkl
 dkxCM2hDfJ2dpApAu2EngE52uFnIdpO9oWHAIWeYnXMwwUm+zP4koqIrLfflOf8gCTIf
 UV9DGsdAmlJ2oUktrZaSChQKPdV6+C35DoRACre/qNolhTevL0/JcqR3cTA9Pv2zrWfx
 vLLT1y2KFok5Y1lRgppvNbptn9HGueB9ZywM8LIkca6M+Fsnxl3BLEJkL08OazhzZqM0
 apR2uigxh2d0RrV50Tis9LLbNuO2XQMjg/gVTB/a673I4M/3vkVA4KY2wvvjrX5O41ou
 G/yA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=10gRHtJr
Subject: [Intel-wired-lan] [PATCH] igbvf: Fix rx_buffer_len
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Yan Vugenfirer <yvugenfi@redhat.com>, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni Jakub Kicinski <"pabeni@redhat.comkuba"@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When rx_buffer_len is not aligned by 1024, igbvf sets the aligned size
to SRRCTL while the buffer is allocated with the unaligned size. This
allows the device to write more data than rx_buffer_len, resulting in
memory corruption. Align rx_buffer_len itself so that the buffer will
be allocated with the aligned size.

The condition to split RX packet header, which uses rx_buffer_len, is
also modified so that it doesn't change the behavior for the same
actual (unaligned) packet size. Actually the new condition is not
identical with the old one as it will no longer request splitting when
the actual packet size is exactly 2048, but that should be negligible.

Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 3a32809510fc..b6bca78198fa 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1341,10 +1341,9 @@ static void igbvf_setup_srrctl(struct igbvf_adapter *adapter)
 	srrctl |= E1000_SRRCTL_DROP_EN;
 
 	/* Setup buffer sizes */
-	srrctl |= ALIGN(adapter->rx_buffer_len, 1024) >>
-		  E1000_SRRCTL_BSIZEPKT_SHIFT;
+	srrctl |= adapter->rx_buffer_len >> E1000_SRRCTL_BSIZEPKT_SHIFT;
 
-	if (adapter->rx_buffer_len < 2048) {
+	if (adapter->rx_buffer_len <= 2048) {
 		adapter->rx_ps_hdr_size = 0;
 		srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
 	} else {
@@ -1625,7 +1624,7 @@ static int igbvf_sw_init(struct igbvf_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	s32 rc;
 
-	adapter->rx_buffer_len = ETH_FRAME_LEN + VLAN_HLEN + ETH_FCS_LEN;
+	adapter->rx_buffer_len = ALIGN(ETH_FRAME_LEN + VLAN_HLEN + ETH_FCS_LEN, 1024);
 	adapter->rx_ps_hdr_size = 0;
 	adapter->max_frame_size = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;
 	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
@@ -2429,6 +2428,8 @@ static int igbvf_change_mtu(struct net_device *netdev, int new_mtu)
 		adapter->rx_buffer_len = ETH_FRAME_LEN + VLAN_HLEN +
 					 ETH_FCS_LEN;
 
+	adapter->rx_buffer_len = ALIGN(adapter->rx_buffer_len, 1024);
+
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
 	netdev->mtu = new_mtu;
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
