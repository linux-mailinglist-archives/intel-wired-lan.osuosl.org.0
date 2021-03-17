Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C015D33E2AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:31:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 523CD6F598;
	Wed, 17 Mar 2021 00:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nxb5wz5PNnky; Wed, 17 Mar 2021 00:31:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56FCB6F48C;
	Wed, 17 Mar 2021 00:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5B2B1BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4E316F598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyrFoHmNy_7m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:31:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A5496F586
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:31:24 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id by2so593932qvb.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 17:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=4qWCqVImBqiNGcbpNgH2D2d40R+2Q4rCGcHOmfmqK94=;
 b=ez7noJXGJLJaWb/FW9rqTRHiK60l682BKhhEFckmd8JzrWgztK0WUnSwIGIJADXjcN
 SAbB6icklzdI/5jxZ+OdBRcTT3I7tDyrp/AO486GtdaDvaRAUB7ZXcYibaW2mQ+vbY2S
 UqC0Jk0pOzQqswznXDcOZVArwipb80g+IXPZXEHdwINp5N1ysRGOI5QlaV82gecYuBRq
 GfPdHte7mUR160DX//5+f91GwdbnAA1q22vpPPiID5p9pmFoV5SV8J7PqvtZLllXttb0
 bQ3GfwpHugYU1Mfn+U4p5Mm+0mf1VbhbKMl2IAdTYjdRf2irMP4LYY9jcqK3qe1Tcejh
 jVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=4qWCqVImBqiNGcbpNgH2D2d40R+2Q4rCGcHOmfmqK94=;
 b=Bjtm3smkEE772qCP9RMvF+jL0NYb9YBDoE+JDJiFZCvzGFAghwysOBMctAg2fA3TqE
 owLEoOrLL/zWcQnTVsIr2Q/JFx7992H2AfhfD2gd420e8wqqbJqc22it8SMBiUjEjj1d
 etMtLVnZi7flC+XlF/0LebEnqsKDT6sE74GHkg70Qf2YbcanLHNhPtHAwz9Y6ohDVUqt
 i62PMfNhkc/nbFEHahNxGU7QzkkbUQY3POe8luxFevu4BOUa1eLKeee5KyNqFD8T/IsZ
 3TeczxvIXbAz/nIyrXgIUiL4EeoleOLL7Nyl20U0uxO4ShZApgxw9GRhmOPLk/dYMhSo
 LbvQ==
X-Gm-Message-State: AOAM532YX9eCr1xWlRzoKoz3o05NNwb8pc57ufkI/HZja6TEPw3blFQp
 7LKCDbMNknizkEPwU/IUVXM=
X-Google-Smtp-Source: ABdhPJwo5n0qSL70uxUx+p6LoA0ZcSpdEs/I1UYyye2rOAKP5X7+ZD/aLf6sf4Q5A5TCyL5EXgsfKw==
X-Received: by 2002:ad4:4421:: with SMTP id e1mr2382674qvt.48.1615941083981;
 Tue, 16 Mar 2021 17:31:23 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id 124sm4896002qke.107.2021.03.16.17.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 17:31:23 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: davem@davemloft.net, kuba@kernel.org
Date: Tue, 16 Mar 2021 17:31:20 -0700
Message-ID: <161594108034.5644.17958637318710114762.stgit@localhost.localdomain>
In-Reply-To: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
References: <161594093708.5644.11391417312031401152.stgit@localhost.localdomain>
User-Agent: StGit/0.23
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 06/10] netvsc: Update driver
 to use ethtool_sprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, Kernel-team@fb.com, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, simon.horman@netronome.com, haiyangz@microsoft.com,
 drivers@pensando.io, salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 rmody@marvell.com, netdev@vger.kernel.org, netanel@amazon.com,
 saeedb@amazon.com, snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexanderduyck@fb.com>

Replace instances of sprintf or memcpy with a pointer update with
ethtool_sprintf.

Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>
---
 drivers/net/hyperv/netvsc_drv.c |   33 +++++++++++----------------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index 15f262b70489..97b5c9b60503 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -1612,34 +1612,23 @@ static void netvsc_get_strings(struct net_device *dev, u32 stringset, u8 *data)
 
 	switch (stringset) {
 	case ETH_SS_STATS:
-		for (i = 0; i < ARRAY_SIZE(netvsc_stats); i++) {
-			memcpy(p, netvsc_stats[i].name, ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ARRAY_SIZE(netvsc_stats); i++)
+			ethtool_sprintf(&p, netvsc_stats[i].name);
 
-		for (i = 0; i < ARRAY_SIZE(vf_stats); i++) {
-			memcpy(p, vf_stats[i].name, ETH_GSTRING_LEN);
-			p += ETH_GSTRING_LEN;
-		}
+		for (i = 0; i < ARRAY_SIZE(vf_stats); i++)
+			ethtool_sprintf(&p, vf_stats[i].name);
 
 		for (i = 0; i < nvdev->num_chn; i++) {
-			sprintf(p, "tx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "tx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_packets", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_bytes", i);
-			p += ETH_GSTRING_LEN;
-			sprintf(p, "rx_queue_%u_xdp_drop", i);
-			p += ETH_GSTRING_LEN;
+			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
+			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
+			ethtool_sprintf(&p, "rx_queue_%u_packets", i);
+			ethtool_sprintf(&p, "rx_queue_%u_bytes", i);
+			ethtool_sprintf(&p, "rx_queue_%u_xdp_drop", i);
 		}
 
 		for_each_present_cpu(cpu) {
-			for (i = 0; i < ARRAY_SIZE(pcpu_stats); i++) {
-				sprintf(p, pcpu_stats[i].name, cpu);
-				p += ETH_GSTRING_LEN;
-			}
+			for (i = 0; i < ARRAY_SIZE(pcpu_stats); i++)
+				ethtool_sprintf(&p, pcpu_stats[i].name, cpu);
 		}
 
 		break;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
