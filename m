Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D6174D9C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5317C60F66;
	Mon, 10 Jul 2023 15:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5317C60F66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002563;
	bh=dKPlFye0uRSokerTo+4YGZvF6aOv1HvAvnvUOGZCrwY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KDDSCr8Ews1BAVNx6y1MxQAMPhyCvAK/qdzh8b/0aMdB86jpq0psvKQ+YjmpreMUC
	 rw7AXOnWzokNDPzlLv20eScft3c+sSQHrsOBOOUqJ0ScTr+ugoh+p8rtlDhbjTtBec
	 Mt/K1laJwLCCLBTHvOczQOdJ6E9TQOaCX8z32iibuMWpYp8uRmxtSeuSIoJNcqqSXF
	 yLbCHFTZxwzawow6+7th9MhlfyZ9Vjrdvv9NML+3X0oowt+pw8jCRTPfqFTOCdFsk3
	 jYradpTD4t55911K8/1hCAnNhNnMjwLtDEKlMRe12Bgy8CLdt/8AHyxtOUMgZIAnyc
	 sKvfuqSusqwng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqvK5hHPhIT5; Mon, 10 Jul 2023 15:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2372D60F5C;
	Mon, 10 Jul 2023 15:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2372D60F5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A62B1BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D717408AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D717408AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 726yD2RlD3D5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 06:39:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CD4A408A5
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp4.osuosl.org (Postfix) with SMTP id 0CD4A408A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 06:39:11 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 95B15602A11D5;
 Mon, 10 Jul 2023 14:38:41 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 irusskikh@marvell.com, rmody@marvell.com, skalluru@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, yisen.zhuang@huawei.com,
 salil.mehta@huawei.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, steve.glendinning@shawell.net,
 iyappan@os.amperecomputing.com, keyur@os.amperecomputing.com,
 quan@os.amperecomputing.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, mostrows@earthlink.net, xeb@mail.ru,
 qiang.zhao@nxp.com
Date: Mon, 10 Jul 2023 14:38:28 +0800
Message-Id: <20230710063828.172593-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:20 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 00/10] Remove unnecessary
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
 wuych <yunchuan@nfschina.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: wuych <yunchuan@nfschina.com>

Changes in v2:
	move declarations to be reverse xmas tree.
	compile it in net and net-next branch.
	remove some error patches in v1.

PATCH v1 link:
https://lore.kernel.org/all/20230628024121.1439149-1-yunchuan@nfschina.com/

wuych (10):
  net: wan: Remove unnecessary (void*) conversions
  net: atlantic: Remove unnecessary (void*) conversions
  net: ppp: Remove unnecessary (void*) conversions
  net: hns3: remove unnecessary (void*) conversions
  net: hns: Remove unnecessary (void*) conversions
  ice: remove unnecessary (void*) conversions
  ethernet: smsc: remove unnecessary (void*) conversions
  net: mdio: Remove unnecessary (void*) conversions
  can: ems_pci: Remove unnecessary (void*) conversions
  net: bna: Remove unnecessary (void*) conversions

 drivers/net/can/sja1000/ems_pci.c             |  6 +++---
 .../aquantia/atlantic/hw_atl2/hw_atl2.c       | 12 ++++++------
 .../atlantic/hw_atl2/hw_atl2_utils_fw.c       |  2 +-
 drivers/net/ethernet/brocade/bna/bnad.c       | 19 +++++++++----------
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  2 +-
 drivers/net/ethernet/hisilicon/hns_mdio.c     | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 ++--
 drivers/net/ethernet/smsc/smsc911x.c          |  4 ++--
 drivers/net/ethernet/smsc/smsc9420.c          |  4 ++--
 drivers/net/mdio/mdio-xgene.c                 |  4 ++--
 drivers/net/ppp/pppoe.c                       |  4 ++--
 drivers/net/ppp/pptp.c                        |  4 ++--
 drivers/net/wan/fsl_ucc_hdlc.c                |  6 +++---
 13 files changed, 40 insertions(+), 41 deletions(-)

-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
