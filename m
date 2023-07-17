Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B537567E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 17:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A46B781451;
	Mon, 17 Jul 2023 15:27:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A46B781451
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689607631;
	bh=eJsRKoSarg/xn2UM3TvpjZD1PyR88Ef29Rc+0tPEmJA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Dt5aDWrC3qZdM4ArTxFHe7trtrYOC5YJH/d+e+DzgBhneMJa24aIiXpBEboWnydul
	 xcUVphBDv+poguqu2aQxtXiDCitGHyKsLtIQs5TzHl8AcpzpAvm6kovsYZ7oVw80fK
	 ovXFPCTJsvyPiPO0ebi9/f17ymj0NkTntUGpTg2E+AwvOM09rvwsdvSpBumOB7OUpm
	 Z7RirHirR5q63sg4//1ey6csEY0cM2EBtK35zchsgLn8aIySG7Ef45Hf9rlanHcDdS
	 7Y/i1kFE/+qLjKsEZouxoj3Jl7I4vkC/GFl2Hn8RpXZncAcFGWiqSGzQxIrhw/fms2
	 8IazCKWtqQSkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uyyg9ymWMBxd; Mon, 17 Jul 2023 15:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84A4681454;
	Mon, 17 Jul 2023 15:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84A4681454
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33C9E1BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 03:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09ECF40931
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 03:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09ECF40931
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnnhmYQLFbj3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 03:10:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E85D4092F
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp4.osuosl.org (Postfix) with SMTP id 4E85D4092F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 03:10:25 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 79B6E6012605B;
 Mon, 17 Jul 2023 11:09:44 +0800 (CST)
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Wu Yunchuan <yunchuan@nfschina.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 irusskikh@marvell.com, rmody@marvell.com, skalluru@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, yisen.zhuang@huawei.com,
 salil.mehta@huawei.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, steve.glendinning@shawell.net,
 iyappan@os.amperecomputing.com, keyur@os.amperecomputing.com,
 quan@os.amperecomputing.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, mostrows@earthlink.net, xeb@mail.ru
Date: Mon, 17 Jul 2023 11:09:37 +0800
Message-Id: <20230717030937.53818-1-yunchuan@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 Jul 2023 15:27:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next v3 0/9] Remove unnecessary
 (void*) conversions
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
Cc: uttenthaler@ems-wuensche.com, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 yunchuan@nfschina.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove (void*) conversions under "drivers/net" directory.

Changes in v3:
	change the author name to my full name "Wu Yunchuan".
	improve the commit message to be more clearly.

Changes in v2: 
        move declarations to be reverse xmas tree.
        compile it in net and net-next branch.
        remove some error patches in v1. 

PATCH v2 link:
https://lore.kernel.org/all/20230710063828.172593-1-suhui@nfschina.com/
PATCH v1 link:
https://lore.kernel.org/all/20230628024121.1439149-1-yunchuan@nfschina.com/

Wu Yunchuan (9):
  net: atlantic: Remove unnecessary (void*) conversions
  net: ppp: Remove unnecessary (void*) conversions
  net: hns3: remove unnecessary (void*) conversions.
  net: hns: Remove unnecessary (void*) conversions
  ice: remove unnecessary (void*) conversions
  ethernet: smsc: remove unnecessary (void*) conversions
  net: mdio: Remove unnecessary (void*) conversions
  can: ems_pci: Remove unnecessary (void*) conversions
  net: bna: Remove unnecessary (void*) conversions

 drivers/net/can/sja1000/ems_pci.c                   |  6 +++---
 .../ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c    | 12 ++++++------
 .../aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c    |  2 +-
 drivers/net/ethernet/brocade/bna/bnad.c             | 13 ++++++-------
 drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c  |  2 +-
 drivers/net/ethernet/hisilicon/hns_mdio.c           | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c           |  4 ++--
 drivers/net/ethernet/smsc/smsc911x.c                |  4 ++--
 drivers/net/ethernet/smsc/smsc9420.c                |  4 ++--
 drivers/net/mdio/mdio-xgene.c                       |  4 ++--
 drivers/net/ppp/pppoe.c                             |  4 ++--
 drivers/net/ppp/pptp.c                              |  4 ++--
 12 files changed, 34 insertions(+), 35 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
