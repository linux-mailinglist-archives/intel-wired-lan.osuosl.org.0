Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4780286A035
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 20:29:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CAF6821E6;
	Tue, 27 Feb 2024 19:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4K8fIevzTWBh; Tue, 27 Feb 2024 19:29:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 475258219C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709062184;
	bh=TtO7eARrOzPr4vplwQY3fP3qCNMybXHa66yqZyCEb6A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=V5ocAUSW3a2Iok0C0nfIbPKZYx5WH75wxM+mJ4Ug/pFbVKoy3p0RKOA+Q0VVnQzvr
	 Js+QvxaDNR6vi+AlyTNb+o0TBGu8Rb5dL5a5L2tXYbDhu5mh/JLUtgCQT/UdJWuV9X
	 yhJQ33ON8kNmsULwtn7qNjD0iWcJyTQaFCPZtRk/nmupO4pz2cjYzQKcWdi3kVVPD8
	 WexM7QhTns5yN9RLX6u6fa+fe0f4qnMg4FQDUaaI3yF6rXLExBLPPNn7HEh11hZdiC
	 gPwyBArTm+5wtykK6cdh9lttoH83SfGzBZiITOS6mMBrc7lXCKvnfP+atcTH5Su1yE
	 cQ4fw3wBfo8og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 475258219C;
	Tue, 27 Feb 2024 19:29:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 464911BF362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31032414C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3Ufq7Zg9PLF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 19:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::233; helo=mail-lj1-x233.google.com;
 envelope-from=erwanaliasr1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 456674146F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 456674146F
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 456674146F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:27:28 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id
 38308e7fff4ca-2d24a727f78so65338731fa.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 11:27:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709062046; x=1709666846;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TtO7eARrOzPr4vplwQY3fP3qCNMybXHa66yqZyCEb6A=;
 b=SRjZbAaN55v3V9qHpIrSkTvXa/H//BpO8o6LqiVEIF5J6lJD3zkTM5GS1f3RtKr2WM
 BwBeDzLbb4dE5N4tiWaqDxgWhryIvEfpaKFL36Yid7ffUiTidERe564jzqtJISd/Bcs/
 fIily7s3boaxbQCnGBMWcsIvMQl019PBdUaM+71qXXT7ReAFd893GCd6lVBptGKqSs4C
 ltGJA4ZBM3gKqUqZLTRUTZsZiU0FGe3HMbQ/N+/YxaihlCPoupMBEL9YiQt4kmgA8+MP
 +vJEr40PdlxUhY+IuurnW0zbB/YFskWkPq3e95tWv3Y74TXTyNza+Kdf7QepcF3qPjRu
 azIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXpSN2400acGaZkIogrvjZWzOBSVCxmWjsZi3nKj9I2xd7Nx7jHRCFTYsVLf8d19eCc1Rjr0ALvvSzOzO4lyStAIEmbNY7NLhBQd+DSSuSMyw==
X-Gm-Message-State: AOJu0YzkzWW7gYYZbrBEo0+aqj3grvCZpqQWnqOYP4IPEWHSubnaeoaC
 FRbqzeaHTXYYMo+2g76FDiBiDEW5IKLti5QllOiBd5vXTZYC7ayj
X-Google-Smtp-Source: AGHT+IEERH23YsBcEq4wE6ogzVQxQFB1kkosdw4mF04em+goPWGBrBhI6JGtQmbxRvqegX3FYr3UhQ==
X-Received: by 2002:a2e:7315:0:b0:2d2:2eb7:9ab3 with SMTP id
 o21-20020a2e7315000000b002d22eb79ab3mr6912091ljc.32.1709062045563; 
 Tue, 27 Feb 2024 11:27:25 -0800 (PST)
Received: from macminim1.retailmedia.com
 ([2a01:e0a:b14:c1f0:617b:c61e:d65f:861e])
 by smtp.googlemail.com with ESMTPSA id
 18-20020a05600c025200b00412abfb0ed0sm2915784wmj.0.2024.02.27.11.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 11:27:24 -0800 (PST)
From: Erwan Velu <erwanaliasr1@gmail.com>
X-Google-Original-From: Erwan Velu <e.velu@criteo.com>
To: 
Date: Tue, 27 Feb 2024 20:27:03 +0100
Message-ID: <20240227192704.376176-1-e.velu@criteo.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Feb 2024 19:29:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709062046; x=1709666846; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=TtO7eARrOzPr4vplwQY3fP3qCNMybXHa66yqZyCEb6A=;
 b=FgaaEfOo4YLg+H8m3gWA0EbBL2VSeTuqxwOD2WBrJtZ8PiUhzH2Bg8zoQOyLTR937p
 +zgjdKCk4+79lvRE9f8fLtlW+dpcl/BoJdULaPbl018fVHb6CTzlXGwU74pIeVE3ltn/
 M7makie/Vd/CyzxTa5TJ5RNya0swKxzRDLvgffUhAHqOPQ1IUYM18vgW9uD/DuXH6KdW
 3kQBzcwyB034IoWymShTCE4IssBqhBk+VRIk1Xei2st8AWjgeYlKjr5DzzHluet7lVTG
 YY6si2FZJ++VmQX73SLhJ3QvVYe/w4GnPuY1hjjcNzmj/zZvoVvJLsU8jc5EKrpAbNwX
 0J8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FgaaEfOo
Subject: [Intel-wired-lan] [PATCH] i40e: Prevent setting MTU if greater than
 MFS
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
Cc: erwanaliasr1@gmail.com, Erwan Velu <e.velu@criteo.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
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
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 54eb55464e31..14fc70d854d3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2950,7 +2950,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
-	int frame_size;
+	int frame_size, mfs;
 
 	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
 	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
@@ -2959,6 +2959,13 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 		return -EINVAL;
 	}
 
+	mfs = pf->hw.phy.link_info.max_frame_size;
+	if (new_mtu > mfs) {
+		netdev_err(netdev, "Error changing mtu to %d which is greater than the current mfs: %d\n",
+			   new_mtu, mfs);
+		return -EINVAL;
+	}
+
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
 	netdev->mtu = new_mtu;
-- 
2.43.2

