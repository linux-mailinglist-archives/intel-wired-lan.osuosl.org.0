Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFAE87A4A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 10:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1532A40C28;
	Wed, 13 Mar 2024 09:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f828V2U12hiG; Wed, 13 Mar 2024 09:08:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C65CA41176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710320881;
	bh=qeyRcTWGmV3/k4pJx5f4EP1VJdXvmC5lkMw80S3xkUw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JopB7WCEB8vGswm1r7g8T9TDIT9EHrzOOthysnSU9axepiK3k37oPNz3WBukCLKG2
	 s12FtX0AYPiIkVmnCYh8KexKUNFSd+DmQUvejJQ0naBE4U7FRMSmMJQDNtlk9SCV4q
	 UhNa6H0+fTaCUheyq4XxfBibpwwBSm3p6z+Giy4fvySmzGH5GZMkx0q8WEOKYUtmer
	 eH0ZbnBK/0k2R8uRYhJWW4wXbDwxsKcdFWMMGNL+7Z9bjICMa1rNj+8UTghAGGlHSz
	 9xJxFF3yj2yEE7yM7281HKHbdQ5CoGk2dC7U5gIAA5kIQ0wBPcXAEbIag3uTOIKi9X
	 btHSkYUc6bJ0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C65CA41176;
	Wed, 13 Mar 2024 09:08:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0E01BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D8CB801E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ry1YECrscPbJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 09:07:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 05D5F8089B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05D5F8089B
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05D5F8089B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:07:57 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-33e9def4a6dso2123450f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 02:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710320876; x=1710925676;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qeyRcTWGmV3/k4pJx5f4EP1VJdXvmC5lkMw80S3xkUw=;
 b=jNPxJKtHHdkJ5PJqyml/gLZHTbK3FdvA45UmM6chzYGi1ZHGOHuGC9yxxPj07oS3Yp
 9CdKyvlglfylOwzvPuxhON2LqPafWLgaVJhxc6STD42gUYnd8vjV+MVPNl3giRNHPIPz
 v5aQCU3w6CeI+a6iO9VizPTG6BReMDNaZ+fyDyd/g8nGuR6Qyf6pcAnQ6t7vf5LiHFSd
 RTJuwlN7hZeILMnDVUi4NrN4JQGK4lQg6Bnvcp9t7MY+pFpOIW9OJSdRahIkmatRbBAM
 PULOK/3h5uUPzCHjb+V95Vk370aZ6TA9vaa2jTbilsxO+B1co0IcYn0JidZ5udpogQsG
 CpsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUfzRU1N8r3W5YMRltqQs9mShR+Hd950LDNUvbJhO8Z7p7mzjXJ5hkfXfEO8+q1UZbtX06cf/o8R80iDkRiYwUDI9zlVjIiAnNIum5OaWBLA==
X-Gm-Message-State: AOJu0YyRjN5mvaVaoAmj+UHlye6Di5/eef3WvRSF7w0fvt/hqFk0XKQ+
 HWW2qHSY03TJL/lb5FsGePYYfxf0Hqu9k/ZXzYTKGnj2aj6yhbVu
X-Google-Smtp-Source: AGHT+IGQtxdwxe8pKAZExDB4/7R09XkTOzJiihwXGrw5ONx4PGCG032jr3RFNQifqzfamZvvJyvPeQ==
X-Received: by 2002:a05:6000:400d:b0:33d:2d2c:f404 with SMTP id
 cp13-20020a056000400d00b0033d2d2cf404mr1749690wrb.15.1710320875703; 
 Wed, 13 Mar 2024 02:07:55 -0700 (PDT)
Received: from macminim1.retailmedia.com
 ([2a01:e0a:b14:c1f0:617b:c61e:d65f:861e])
 by smtp.googlemail.com with ESMTPSA id
 y9-20020a056000108900b0033e206a0a7asm11200676wrw.26.2024.03.13.02.07.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Mar 2024 02:07:55 -0700 (PDT)
From: Erwan Velu <erwanaliasr1@gmail.com>
X-Google-Original-From: Erwan Velu <e.velu@criteo.com>
To: 
Date: Wed, 13 Mar 2024 10:07:16 +0100
Message-ID: <20240313090719.33627-2-e.velu@criteo.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710320876; x=1710925676; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=qeyRcTWGmV3/k4pJx5f4EP1VJdXvmC5lkMw80S3xkUw=;
 b=Nhal2xPkoxXuiJO4h/KE6UJjjrURVR5e/q1A2F2REIuUEOcmx+ecsaRBuF5e+vO6Q/
 FnzAQkpUEB0XS0oWzVGmvizdVgj9t3jxksbL8O6tyhmanp0/goWc2hN8Yd338PmTizLE
 R5CaWmMsZ+qQlpvOry84LqZ8ltGPlMq73V7bEGzjrN0CasKFS4mWe8dtxpv3vAKPWpZB
 m5T6ZYlybJYL9AasNWK9vW6Xcut1Ii6r3PzS5JemOSWmC4WPeAKubURtPtRg8ziEupPR
 qCJPPW5vE6hzcCG7T0Sh7wU7Ex+IfOT58n3GItVrnC6HIYjkXKdg3HrlN+YrNVWF1hyD
 ZSwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Nhal2xPk
Subject: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU if
 greater than MFS
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

Commit 6871a7de705 ("[intelxl] Use admin queue to set port MAC address
and maximum frame size") from iPXE project set the MFS to 0x600 = 1536.
See https://github.com/ipxe/ipxe/commit/6871a7de705

At boot time the i40e driver complains about it with
the following message but continues.

	MFS for port 1 has been set below the default: 600

If the MTU size is increased, the driver accepts it but large packets will
not be processed by the firmware generating tx_errors. The issue is pretty
silent for users. i.e doing TCP in such context will generates lots of
retransmissions until the proper window size (below 1500) will be used.

To fix this case, it would have been ideal to increase the MFS,
via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.

At least, commit prevents setting up an MTU greater than the current MFS.
It will avoid being in the position of having an MTU set to 9000 on the
netdev with a firmware refusing packets larger than 1536.

A typical trace looks like:
[  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000, Max is 1500. MFS is too small.

Signed-off-by: Erwan Velu <e.velu@criteo.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f86578857e8a..85ecf2f3de18 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2946,7 +2946,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
-	int frame_size;
+	int frame_size, mfs, max_mtu;
 
 	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
 	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
@@ -2955,6 +2955,14 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
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

