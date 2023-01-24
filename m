Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B7D678F62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 05:39:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B40EB41724;
	Tue, 24 Jan 2023 04:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B40EB41724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674535173;
	bh=dfDJpM4BGQZaUvSTmXBVsaymLTYtXd+B1ux71gBLvZA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oucIkuSw9vaio1uG1sh0OrFGPsUbeDeL+drDnyf2EjvDeJKtYPyICRV7wd14R1JkD
	 4opYMo/1ZMdgTb2asG9ufEURgsJypWlB9JLOPbLaEdcyC36UdRB5iWsVTLDPNYr7nP
	 SjCgvGSFlXuFqCzM7IU4kBFeJLgSU/wwP9UWt0CFMgsGTE2yOnovf0Sy342FSF38gg
	 YfNNRXpq3EyeVDgGt97t3GAJHhgLGXnhsL9Pbn777zCwFbdMH6VCWo90mNpewR+bSr
	 m4kpd9bVziOwPyFACMRLp+yViASr0PWvtYu3UVXilNiSClecnCbOxvDaaxRdDGpAEw
	 hn8HjRF851ZjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWY9MzkiW4x1; Tue, 24 Jan 2023 04:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 814DD41705;
	Tue, 24 Jan 2023 04:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 814DD41705
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 085261BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E27034013B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:39:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E27034013B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rL1DQV8O2-3T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 04:39:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29DC1400CB
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29DC1400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 04:39:26 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id d10so10531623pgm.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 20:39:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Qth+m+QqGWxa6ejWDP+asO5qvuiiNmuGk9SYTp9o8fg=;
 b=D83dGZ/5PlHoxZFA6qBenI7GMX6SUU7SRpWko73Gbxq23SqdHy4zzNEvxqYLGy33Kt
 jzj3xlExh+yDeRsvoVvaeYBZE9rOsJtiuw+xfxsEEpww+tQ5ssc1Ui0bwJHBNxHHhEpp
 CC0Z9QlilVi71Yav/tpz+VcR2831j6bVfeVFI+wZMwIAXBphsRirS2ylJRFcrPDRMjGt
 W12l9OSDwImo355k/1nP+uAjyDK+JltH/OnkEhyIbZFjNqM9fkyUz+MB3vElisWwIeWe
 OiSXz+vaxFhJ0zC35Awrgs2snpw/gymku2ouiUTQAPEEUyVE3DMkWe8PUJ2rVP2NkNGq
 k6Vg==
X-Gm-Message-State: AFqh2ko960ynwid9e6K5daCnvrzzapmUQTO1Ww//6AUdNPHThVVNj0Eb
 9ZxisesieWsCcVM5yAzHXs8gtQ==
X-Google-Smtp-Source: AMrXdXsLLP6eHtR36AvPy1ebq6ivCLVzOgdUmrJIJhIdk0x3oZSlvx/SGzSnTLDGwmEoFZyYoWT5jQ==
X-Received: by 2002:aa7:8f09:0:b0:587:364f:17f5 with SMTP id
 x9-20020aa78f09000000b00587364f17f5mr47311121pfr.7.1674535165628; 
 Mon, 23 Jan 2023 20:39:25 -0800 (PST)
Received: from alarm.flets-east.jp ([2400:4050:a840:1e00:4457:c267:5e09:481b])
 by smtp.gmail.com with ESMTPSA id
 u13-20020a62790d000000b0058bcb7b437bsm433260pfc.215.2023.01.23.20.39.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Jan 2023 20:39:25 -0800 (PST)
From: Akihiko Odaki <akihiko.odaki@daynix.com>
To: 
Date: Tue, 24 Jan 2023 13:39:15 +0900
Message-Id: <20230124043915.12952-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Qth+m+QqGWxa6ejWDP+asO5qvuiiNmuGk9SYTp9o8fg=;
 b=1lKKJ5GlJElAqYaZqiACcFiLIJRt3bxsMn/0bpuBHgK3rb1tWJBWisJ2KnsvAtuyES
 AomzmzTwAu+zA5xdSYgoOhrRUav+SYUQsSQcceyqahqckz6Ng0BOLN+q8T6LlcqxF7hr
 7N4/8fwvRlgQlkKux5IukXNZiowUavCAkT0pGxBnpacVWTv7g99AJ3cG377zT2HCcQCV
 yRwkB7amUr/q/HPrak6mz2eyNr29NSa+X9U8dxbauKKAqgPc/6TXXB9qAuPH7pUlKRky
 iDAMnpkgmQy9jmT5GiZlEfl5+BdxrSsbgNB19nU/n9Y8KiLJ4NozW+FgJO+UiK2C4Xrd
 L0+g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=1lKKJ5Gl
Subject: [Intel-wired-lan] [PATCH RESEND] igbvf: Fix rx_buffer_len
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
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
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
