Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C1887912E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E24EA81770;
	Tue, 12 Mar 2024 09:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFtRzgKwhcc7; Tue, 12 Mar 2024 09:43:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E8C5813ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710236597;
	bh=uoqfNTOher8F7aZMvhGDS1s31WUJBL1ec+Cnak2BGb8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mT4zr2xfcV4Z3x5wid1Z2suIXKPzYGvXGdphlhF/q4QLykCp4EzbbLmvjdz5JoS7j
	 J7SKLXCM359EI8IfGFT+l26NGWUNPAhcMyNT3WNHGE1HwVwJlt6qmAYX4abskKX4w/
	 FQXHg4AXvAG7Wkmj5o0tg8FF8owLPCnwCXWfausFW0Jhj0wBXB/ShOcQrZhWm5yQH8
	 4fNamyza64BD4sHAACsS/lJJ8/q1HrWGsWMIiZP5FhUFE4OJXRSFDkw5+cQD3qdJMz
	 F6yFZM4AbILVCw1Ywez15ayxmvHYSYyYo4SZc5wxwjN4AgSW1VLj1aNJOC6y5zTeto
	 ShDPenDdgT8+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E8C5813ED;
	Tue, 12 Mar 2024 09:43:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1E3D1BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D9116082B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kS0M0MIfVYCd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:43:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B1340606C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1340606C6
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1340606C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:43:13 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-41332865abfso3956005e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 02:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710236591; x=1710841391;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uoqfNTOher8F7aZMvhGDS1s31WUJBL1ec+Cnak2BGb8=;
 b=UUbdbj/SAG33RaXnW8utYj8voqLhafvhjMWmePNpAIl8jWdRXiusoF6mitcmiirObU
 60vVzJHDg1hGvBrikdDAD/anYd9+rMC1p8TGuwIR8UZkpjbQojppRXFDRUDI/xu9MfY0
 S2DS5BuUlKc1m/9XGtP5C/uVj3lN3/VuIcy/8DZOmBugb897C8wf6mafTdsos/x6fDMn
 JtQJNbyh9dNXv8q8p1xwprpwylIsFagtEoyjAWr1yZYJ5UwDlUbDGM5CxdR28Y6zy+Yq
 ndYfmCogS89nsmvtVbBQGjxFLIvOuvetWxAscUY/IoQm/nNSX/v0KkYvaCSnGAY4gJUS
 Lpvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXUU6WCT2UEZC7+Y0XB7J70Md2A75Zucim+d495oYDuA6LcRDcSyHdDWgKLF/uP7vqXFuiNe18KJRbYbpJ9l5rqTxS3ru62LCoMpICLqEmUA==
X-Gm-Message-State: AOJu0Yz/q4RqcX64sw751SdvUqFJFtgEdzQlXNeKlo4DYC6XdQOIML/e
 RTSdQQe0kJi4EuOXD2XJX5M6RE6VY49SJMG0VHqnUk8cIVDNszLe
X-Google-Smtp-Source: AGHT+IECjFuMZy1SfLMIE60ClZtCBQcRzU0eZOk1kmor4I0WnatKXFkXhxVgKRFmtao5WFP3qSOoew==
X-Received: by 2002:a05:600c:4ed4:b0:413:3b75:2b36 with SMTP id
 g20-20020a05600c4ed400b004133b752b36mr733113wmq.1.1710236591300; 
 Tue, 12 Mar 2024 02:43:11 -0700 (PDT)
Received: from macminim1.retailmedia.com
 ([2a01:e0a:b14:c1f0:617b:c61e:d65f:861e])
 by smtp.googlemail.com with ESMTPSA id
 o17-20020a05600c4fd100b00413320f795fsm2178049wmq.35.2024.03.12.02.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Mar 2024 02:43:10 -0700 (PDT)
From: Erwan Velu <erwanaliasr1@gmail.com>
X-Google-Original-From: Erwan Velu <e.velu@criteo.com>
To: 
Date: Tue, 12 Mar 2024 10:42:58 +0100
Message-ID: <20240312094259.770554-1-e.velu@criteo.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710236591; x=1710841391; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uoqfNTOher8F7aZMvhGDS1s31WUJBL1ec+Cnak2BGb8=;
 b=TrjzQFjPwlxGn5oxekvOHe4cbwXfS+XSYwb8TtBlrDxiqkFv1yZ67hlv/oyo49OVuB
 F9KUDglEvBqjAWJIaYakk2fBwNfL+bLzqDFpj9iXdwSVvBsgffaid4bbYy/M7eSoziQ8
 glAaojkZinaLLReKVaOl4Ji/2JPiI9u59qZXJicP9OdtKRUZvxNfS3NKbOoLqwVsB42p
 sRpM5o4vIURrjslBCKG2T5SRTpcTyA+/E04Hc5v5nnBF2eONpoCc66KuWNYnOAxnyT84
 Yfj2YBIswEoLalFXA32GyR0Mk971jvV17zTXNA4sLhCvV4h9hhbWs6ykRjd4wnfqgX2F
 SBTQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TrjzQFjP
Subject: [Intel-wired-lan] [PATCH v3] i40e: Prevent setting MTU if greater
 than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 6871a7de705b6f6a4046f0d19da9bcd689c3bc8e from iPXE project is
setting the MFS to 0x600 = 1536.

At boot time the i40e driver complains about it with
the following message but continues.

	MFS for port 1 has been set below the default: 600

If the MTU size is increased, the driver accept it but large packets will not
be processed by the firmware generating tx_errors. The issue is pretty
silent for users. i.e doing TCP in such context will generates lots of
retransmissions until the proper window size (below 1500) will be used.

To fix this case, it would have been ideal to increase the MFS,
via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.

At least, this commit prevents setting up an MTU greater than the current MFS.
It will avoid being in the position of having an MTU set to 9000 on the
netdev with a firmware refusing packets larger than 1536.

Signed-off-by: Erwan Velu <e.velu@criteo.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 89a3401d20ab..225b2fd0449e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2950,7 +2950,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
-	int frame_size;
+	int frame_size, mfs, max_mtu;
 
 	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
 	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
@@ -2959,6 +2959,14 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 		return -EINVAL;
 	}
 
+	mfs = pf->hw.phy.link_info.max_frame_size;
+	max_mtu = mfs - I40E_PACKET_HDR_PAD;
+	if (new_mtu > max_mtu) {
+		netdev_err(netdev, "Error changing mtu to %d, Max is %d. MFS is too small.\n",
+			   new_mtu, max_mtu);
+		return -EINVAL;
+	}
+
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
 	netdev->mtu = new_mtu;
-- 
2.44.0

