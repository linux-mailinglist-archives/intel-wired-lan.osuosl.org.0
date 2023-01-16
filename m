Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBD666E382
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:24:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F69961086;
	Tue, 17 Jan 2023 16:24:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F69961086
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972665;
	bh=xnhTHm83cBgJWgLdyvLDOeJK/obWWadf6FjGe4nmmnA=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XEuOvoN7UiX2EUs3PVkfzrP8xIexbhbdgtVI6GxqlmtxzrAIXuIvtJS0taSL59ow1
	 o49+CNMlS4flJ9w9H10xpw2xCmANeRnGgPWlMJFaMjgbCptk7nXt0Vl405oom2HrhA
	 tZq0j7NhfuEeeB/7n1ZEG+AFe8k1QuLFn2qxilQovYm5H6oKIeDkzBkaKaYvbpobax
	 BYviJ0SDfROUMeIMlHJBEBfGvoHV5XgVv/iDg6PipnFzQLMMWuXEQfW//i79DopBoL
	 1xNfmhxWH8h4yfIWB+g6vb6N2/1WMrw5xi02SzaxUUSCyZG8zguzqHKqtvtoIAYfn5
	 GNaF6RJEZWRoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-qHLKdFMxUT; Tue, 17 Jan 2023 16:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA5C561084;
	Tue, 17 Jan 2023 16:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA5C561084
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3326D1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 405B780CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 405B780CB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cmok7TnVnoz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51BD180CC8
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51BD180CC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 00:03:44 +0000 (UTC)
Received: from mwalle01.sab.local (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mail.3ffe.de (Postfix) with ESMTPSA id DE3F39EF;
 Tue, 17 Jan 2023 00:52:43 +0100 (CET)
From: Michael Walle <michael@walle.cc>
Date: Tue, 17 Jan 2023 00:52:16 +0100
Message-Id: <20230116-net-next-c45-seperation-part-3-v1-0-0c53afa56aad@walle.cc>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADDjxWMC/zWNwQrCMBBEf6Xs2YWmsSr+injYpBubgzHshlIo/
 Xe3goc5PIZ5s4GyZFa4dxsIL1nzpxi4UwdxpvJizJMxDP3ge+cuWLhZ1obxPKJyZaFmG6wkDT2m
 0d+uIU7JM4FJAiljECpxPjRv0sZyFFU45fX3/IC/FJ77/gWfYfhdkwAAAA==
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
 d=walle.cc; s=mail2022082101; t=1673913164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=9NXyj08/VRkafMXUB3qax5P2d+sp7z57TdP+lU677PQ=;
 b=QoNpfy8VBKQeOx6xUXRguUzScp9m6a8QuHLmFjdrfJ4Hv+VB6QWFzA9/K5FJUXhtkFIpAe
 vVGRcUajt5L9FgpRePe0Gz1995DAO7uzFOlveXFzz/4nfK0BBWRxuzndc0GBIOusSzOJOA
 aOExxMBt49LfEq8zFMShRC/dRfg7sIzHt+9gS/RJdqZOCrfxHblHB7Me/YBO1zCm91LCMX
 dVMhyJzUqnldGcJVw0ArXJthYmR7NU6svZtEbAspTyvM/Ek+SHwGjvJ10I5iOdb84gGDMJ
 LnIu0QRkmDd032PAmLZQVnaDqiJnqz+Ix40SsKp4IUl3DsFay3+CNRoGom/QRA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=walle.cc header.i=@walle.cc
 header.a=rsa-sha256 header.s=mail2022082101 header.b=QoNpfy8V
Subject: [Intel-wired-lan] [PATCH net-next 00/12] net: mdio: Continue
 separating C22 and C45
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

I've picked this older series from Andrew up and rebased it onto
the latest net-next.

This is the third (and hopefully last) patch set in the series which
separates the C22 and C45 MDIO bus transactions at the API level to the
MDIO bus drivers.

The first patch is a newer version of the former "net: dsa: Separate C22
and C45 MDIO bus transaction methods", which only contains the mt7530
changes. Although posted as v1, because this is a new series, there is a
changelog included in the patch comment section.

The last patch is a new one, which isn't from Andrew's tree.

To: Sean Wang <sean.wang@mediatek.com>
To: Landen Chao <Landen.Chao@mediatek.com>
To: DENG Qingfang <dqfext@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
To: Eric Dumazet <edumazet@google.com>
To: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: Russell King <linux@armlinux.org.uk>
To: Byungho An <bh74.an@samsung.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Yisen Zhuang <yisen.zhuang@huawei.com>
To: Salil Mehta <salil.mehta@huawei.com>
To: Tom Lendacky <thomas.lendacky@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Michael Walle <michael@walle.cc>

---
Andrew Lunn (11):
      net: dsa: mt7530: Separate C22 and C45 MDIO bus transactions
      net: sxgbe: Separate C22 and C45 transactions
      net: nixge: Separate C22 and C45 transactions
      net: macb: Separate C22 and C45 transactions
      ixgbe: Separate C22 and C45 transactions
      ixgbe: Use C45 mdiobus accessors
      net: hns: Separate C22 and C45 transactions
      amd-xgbe: Separate C22 and C45 transactions
      amd-xgbe: Replace MII_ADDR_C45 with XGBE_ADDR_C45
      net: dsa: sja1105: C45 only transactions for PCS
      net: dsa: sja1105: Separate C22 and C45 transactions for T1 MDIO bus

Michael Walle (1):
      net: ethernet: renesas: rswitch: C45 only transactions

 drivers/net/dsa/mt7530.c                        |  87 ++++-----
 drivers/net/dsa/mt7530.h                        |  15 +-
 drivers/net/dsa/sja1105/sja1105.h               |  16 +-
 drivers/net/dsa/sja1105/sja1105_mdio.c          | 131 ++++++-------
 drivers/net/dsa/sja1105/sja1105_spi.c           |  24 +--
 drivers/net/ethernet/amd/xgbe/xgbe-common.h     |  11 +-
 drivers/net/ethernet/amd/xgbe/xgbe-dev.c        |  91 ++++++---
 drivers/net/ethernet/amd/xgbe/xgbe-phy-v2.c     | 120 +++++++++---
 drivers/net/ethernet/amd/xgbe/xgbe.h            |   7 +-
 drivers/net/ethernet/cadence/macb_main.c        | 161 ++++++++++------
 drivers/net/ethernet/hisilicon/hns_mdio.c       | 192 +++++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c   |   6 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c    | 237 ++++++++++++++++++------
 drivers/net/ethernet/ni/nixge.c                 | 141 ++++++++------
 drivers/net/ethernet/renesas/rswitch.c          |  28 +--
 drivers/net/ethernet/samsung/sxgbe/sxgbe_mdio.c | 105 ++++++++---
 16 files changed, 906 insertions(+), 466 deletions(-)
---
base-commit: c941c0a15bee01a702d82793fe605326d453d9a7
change-id: 20230116-net-next-c45-seperation-part-3-f5387bcdf3ea

Best regards,
-- 
Michael Walle <michael@walle.cc>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
