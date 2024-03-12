Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9FA879113
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 10:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E959881449;
	Tue, 12 Mar 2024 09:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3EAUokvjUTWH; Tue, 12 Mar 2024 09:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36D28813B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710236444;
	bh=B9fbTW88c5dd+uJ3t+O23Zk0Rd2E0M+rmOigqz72HeI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9d7rY373z1GzxX0ZmmV+dFVZQOpHClNklGsz5eBWABVlEvvqFcie53tG6rA4v4+C6
	 REw57WsNrCv6qi7zh0iHdQgZHCDVNt9j3AuENOFYZiH0b5d30xzwFMdfXT2WUBNfKv
	 WNZ2i6rwQtoRlziwsQkOQfA4axBUL76au9fnx2NnQhtfS47erE39cakyiQyUuvrvnD
	 Hexf6yAlQi62u/NmpwoLQ8olBLGYKle2FKnshz9CT6uEVzbcflKw3HO/miGzXSP0VB
	 1IaFrgBi5tf6nVdWjftyjJYnt6FC6rKhXuqshd/eGtBm9rNlRSF8KwnSl8MxkSoSsI
	 DqvpDrL7asevQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36D28813B7;
	Tue, 12 Mar 2024 09:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A7B61BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3684E81449
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6qgN37chEzL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 09:40:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12b; helo=mail-lf1-x12b.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52E87813B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52E87813B7
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52E87813B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 09:40:41 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id
 2adb3069b0e04-51321e71673so5875267e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 02:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710236439; x=1710841239;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B9fbTW88c5dd+uJ3t+O23Zk0Rd2E0M+rmOigqz72HeI=;
 b=nVu3MsdzXrisZOSAGSmEpLL37MOGTb9eRS22KRPZ0KCCvfe9q3dH4rPxEtF70VIk2K
 mPAYzXkt5fdRN2zkD2etQOoNFs3REpTEiKafIwJsPmm1yNQ/3KKTb98nwBbIIbOgyi7A
 /xAE2uxnjxKIdoKTFy9USzR+ht+XkScwp6NS6BPiElc0lyDWFSnBZxGfxpKcHqmaCKf1
 LAWQyI8tRgAYqsH+eOVYhlogyLyV8JfioRZp0j1xIB+vsDXYnZXNCqbvbrty8SLbM8/H
 pkhnqXURpwKKM9cRF9sNAocRiA0QBh++TUqJxjnfww4lQ1OrTE3L/xi53nlkgmqkKmCc
 reHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBCzDCw+oSjQy9KeblInrDae+qfJrwZJ/v3sT+/VC2/YEuz8vWJLfLefyt7HgIf2Qc0IOOjeKzSoIxcmOSaZFSmJSxq/BrziLASuwKko5uZw==
X-Gm-Message-State: AOJu0Yydul5mw4rfL+B0cKX2yeVklO+3tyQZ7VzZvJXeJio2SNi/CUCU
 +j/HwV6QcDwlYb+3eKGPqgvoRM0x+73IqhlSqlJFM3LjiujQ7ciq
X-Google-Smtp-Source: AGHT+IFuSl2KQf9S7ZnfmhVEsHDRf9lt5h2kPj4tW55Giijk7aCci9Cl7tyOz1BXGzJ4nqu7VKAttg==
X-Received: by 2002:ac2:5042:0:b0:513:9d46:5fec with SMTP id
 a2-20020ac25042000000b005139d465fecmr6006986lfm.15.1710236438599; 
 Tue, 12 Mar 2024 02:40:38 -0700 (PDT)
Received: from macminim1.retailmedia.com
 ([2a01:e0a:b14:c1f0:617b:c61e:d65f:861e])
 by smtp.googlemail.com with ESMTPSA id
 jt23-20020a05600c569700b00412f4afab4csm515346wmb.1.2024.03.12.02.40.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Mar 2024 02:40:37 -0700 (PDT)
From: Erwan Velu <erwanaliasr1@gmail.com>
X-Google-Original-From: Erwan Velu <e.velu@criteo.com>
To: 
Date: Tue, 12 Mar 2024 10:37:55 +0100
Message-ID: <20240312093757.770283-1-e.velu@criteo.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710236439; x=1710841239; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=B9fbTW88c5dd+uJ3t+O23Zk0Rd2E0M+rmOigqz72HeI=;
 b=jdCKWYWRynGYHn4P+b5R5ktVCQjFivNlEmjJnPPmw6XOTdjF3oR7vM/iW1MQqzVNoB
 1/iOLDX20uJqnSmKyDWrLgTuFg2bo93eepNlJDPrRFFlKGsoWy68O784SLS+jA1HUjQK
 nGdiOwCgCqzAwij/7xex/gDxTVlQNtrJVfL0EX6B6RY5dGxc6wEsqRjpHsoZD6wlQUgn
 g5WOi8dBSalpCkNfSnM3evRBSGklzMcjoRjqv6aeJa5Rf8SFIGwlZQh+cV7HYVvU6YzQ
 3Rj3i8MlOY434l9bVh6sWhuVI4tezJux+Qdk9djMyJuiesBQZagsO7LQfBzPaTtGlD0k
 etbA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jdCKWYWR
Subject: [Intel-wired-lan] [PATCH v2] i40e: Prevent setting MTU if greater
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
via i40e_aqc_opc_set_mac_config, but I didn't found a reliable way to do it.

At least, this commit prevents setting up an MTU greater than the current MFS.
It will avoid being in the position of having an MTU set to 9000 on the
netdev with a firmware refusing packets larger than 1536.

A typical trace looks like the following :
[  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000 which is greater than the current mfs: 1536

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

