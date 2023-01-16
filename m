Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1479E66E375
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9CA56107B;
	Tue, 17 Jan 2023 16:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9CA56107B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972620;
	bh=e8Vb8VkpVxbRjPkjtio+gCcxlVM0vMygFvUhUbuFhVg=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jzKxL5JtblL3M0Sg9ET+hKJ67QYmJ2FsU/Bp+rs9tdPgDOWD8vZdGCEq9nGKDN8en
	 tnIW+kJDS+LiIbD5ZfWcmYUOpBv7OEmWcyvjkLgBS1bECbD3JfbzXtF0y3J3qUsivC
	 l7ukYZRcXVgdjJd3bJ+AwgTPieIYWtVbT8LlElJmyl9ilLYIErA2nIwfEhKMLEHXI4
	 S2q/VvBvSUEKcyD0bFIfFPh43M4pTl42TigyYT23B0bVJ3hGm9KgopTXYHHS8zAA39
	 auVoHCaoAuByx1wcpTFhJpD98yc+3iYJFyyetAMPauKoiSA//6g92UI1ADvBOHdBOC
	 HXcuukD2vAl1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFmwthAkspXI; Tue, 17 Jan 2023 16:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7708260B50;
	Tue, 17 Jan 2023 16:23:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7708260B50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CF691BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C421812F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C421812F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJA7xnKEE-Tc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF5A812F0
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF5A812F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 23:58:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id 84B6019E1;
 Tue, 17 Jan 2023 00:52:49 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:24 +0100
MIME-Version: 1.0
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-9-0c53afa56aad@walle.cc>
References: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
In-Reply-To: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
To: Sean Wang <sean.wang@mediatek.com>, Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Byungho An <bh74.an@samsung.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta <salil.mehta@huawei.com>, 
 Tom Lendacky <thomas.lendacky@amd.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>
X-Mailer: b4 0.11.1
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=walle.cc; s=mail2022082101; t=1673913169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J3qYLXyBc6yIyyK/QL6G5uDCUOcpKKSAsCoCRDUkxmQ=;
 b=YRLOsOmaFRKZei5adzuAH0AgP0yhArS53j0xCeiNyf4eSu6cevLBmQGDmv02QXMGPTqM3I
 gc7cg5NS3j1olshw8fSbxCXYdhMBiQpsjv94lGCJPoKjOrH3O7yhIzo1EhDdxH+dHwixRs
 xbMVwbCnCMyg1iXDf1YJk0cH+LIr7mYprGlOKUO7u4oz/oTf9fipLNitiOmDX5rRotolKx
 fnRnVdGX0yoFKiCLfjm1mKcq9qrMOQBCXSZIkgKIduCXq1bWPpBCuXc45emkSorCXbtAdR
 zH3n77hq0VeJVDTwEkR+sJa4K4+YoZqEElUwoue1N1S4SRypLEU0ZLt6nCJXVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=YRLOsOma
Subject: [Intel-wired-lan] [PATCH net-next 09/12] amd-xgbe: Replace
 MII_ADDR_C45 with XGBE_ADDR_C45
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Michael Walle <michael@walle.cc>, intel-wired-lan@lists.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew Lunn <andrew@lunn.ch>

The xgbe driver reuses MII_ADDR_C45 for its own purpose. The values
derived with it are never passed to phylib or a linux MDIO bus driver.
In order that MII_ADDR_C45 can be removed, add an XGBE specific

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/net/ethernet/amd/xgbe/xgbe-common.h | 11 ++++++-----
 drivers/net/ethernet/amd/xgbe/xgbe-dev.c    | 16 ++++++++--------
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/amd/xgbe/xgbe-common.h b/drivers/net/ethernet/amd/xgbe/xgbe-common.h
index 466273b22f0a..3fd9728f817f 100644
--- a/drivers/net/ethernet/amd/xgbe/xgbe-common.h
+++ b/drivers/net/ethernet/amd/xgbe/xgbe-common.h
@@ -1699,20 +1699,21 @@ do {									\
 } while (0)
 
 /* Macros for building, reading or writing register values or bits
- * using MDIO.  Different from above because of the use of standardized
- * Linux include values.  No shifting is performed with the bit
- * operations, everything works on mask values.
+ * using MDIO.
  */
+
+#define XGBE_ADDR_C45 BIT(30)
+
 #define XMDIO_READ(_pdata, _mmd, _reg)					\
 	((_pdata)->hw_if.read_mmd_regs((_pdata), 0,			\
-		MII_ADDR_C45 | (_mmd << 16) | ((_reg) & 0xffff)))
+		XGBE_ADDR_C45 | (_mmd << 16) | ((_reg) & 0xffff)))
 
 #define XMDIO_READ_BITS(_pdata, _mmd, _reg, _mask)			\
 	(XMDIO_READ((_pdata), _mmd, _reg) & _mask)
 
 #define XMDIO_WRITE(_pdata, _mmd, _reg, _val)				\
 	((_pdata)->hw_if.write_mmd_regs((_pdata), 0,			\
-		MII_ADDR_C45 | (_mmd << 16) | ((_reg) & 0xffff), (_val)))
+		XGBE_ADDR_C45 | (_mmd << 16) | ((_reg) & 0xffff), (_val)))
 
 #define XMDIO_WRITE_BITS(_pdata, _mmd, _reg, _mask, _val)		\
 do {									\
diff --git a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c b/drivers/net/ethernet/amd/xgbe/xgbe-dev.c
index aafa02fb3fdf..f393228d41c7 100644
--- a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c
+++ b/drivers/net/ethernet/amd/xgbe/xgbe-dev.c
@@ -1157,8 +1157,8 @@ static int xgbe_read_mmd_regs_v2(struct xgbe_prv_data *pdata, int prtad,
 	unsigned int mmd_address, index, offset;
 	int mmd_data;
 
-	if (mmd_reg & MII_ADDR_C45)
-		mmd_address = mmd_reg & ~MII_ADDR_C45;
+	if (mmd_reg & XGBE_ADDR_C45)
+		mmd_address = mmd_reg & ~XGBE_ADDR_C45;
 	else
 		mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 
@@ -1189,8 +1189,8 @@ static void xgbe_write_mmd_regs_v2(struct xgbe_prv_data *pdata, int prtad,
 	unsigned long flags;
 	unsigned int mmd_address, index, offset;
 
-	if (mmd_reg & MII_ADDR_C45)
-		mmd_address = mmd_reg & ~MII_ADDR_C45;
+	if (mmd_reg & XGBE_ADDR_C45)
+		mmd_address = mmd_reg & ~XGBE_ADDR_C45;
 	else
 		mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 
@@ -1220,8 +1220,8 @@ static int xgbe_read_mmd_regs_v1(struct xgbe_prv_data *pdata, int prtad,
 	unsigned int mmd_address;
 	int mmd_data;
 
-	if (mmd_reg & MII_ADDR_C45)
-		mmd_address = mmd_reg & ~MII_ADDR_C45;
+	if (mmd_reg & XGBE_ADDR_C45)
+		mmd_address = mmd_reg & ~XGBE_ADDR_C45;
 	else
 		mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 
@@ -1248,8 +1248,8 @@ static void xgbe_write_mmd_regs_v1(struct xgbe_prv_data *pdata, int prtad,
 	unsigned int mmd_address;
 	unsigned long flags;
 
-	if (mmd_reg & MII_ADDR_C45)
-		mmd_address = mmd_reg & ~MII_ADDR_C45;
+	if (mmd_reg & XGBE_ADDR_C45)
+		mmd_address = mmd_reg & ~XGBE_ADDR_C45;
 	else
 		mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 

-- 
2.30.2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
