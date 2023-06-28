Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B410C7414A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42FBC41933;
	Wed, 28 Jun 2023 15:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42FBC41933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965153;
	bh=uXm98JEwK3uv1wonKR/xeDE9frnpWRTnOmKk/pNVL0A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GwaRVUABkPzdBSxrh2ESP7srsZu27HmZB/TYAQ2+Yer2qkXHYMhVKWO0j/Qia79pQ
	 A7Skaicxx1+1eRz8851GVsDjbKm0HsiPrAucwX3fxWfbtXjc4TCsvTpWvDaSZFaLfy
	 TY7fblXvMDUeFCMFZ72EHmWczPrA7WnPGuhhL6XDi+IoynIw5B15LAypmyngt17oLq
	 ZeQJQAKCw/Mf7Bq9tPkGTwxrHjxQAL42NZ+dGwbgk1muMep2HqgBOynlGdIr9hD24C
	 lws5bOxDlmHn9SlcUSjaLiD7KKIsd7NDsDQjVmPwuzEZ1+s2wkadPOA+XKwjjFcxWz
	 vWno0X8P18gfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXgRIsiuf-Mt; Wed, 28 Jun 2023 15:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CFE2408E8;
	Wed, 28 Jun 2023 15:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CFE2408E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A83DB1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8040E81F91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8040E81F91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XmAu7qR0p4Kc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 02:51:26 +0000 (UTC)
X-Greylist: delayed 00:08:06 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F2E281F69
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp1.osuosl.org (Postfix) with SMTP id 5F2E281F69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 02:51:24 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id D81EF6032EB52;
 Wed, 28 Jun 2023 10:42:44 +0800 (CST)
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: wuych <yunchuan@nfschina.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, olteanv@gmail.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, irusskikh@marvell.com, yisen.zhuang@huawei.com,
 salil.mehta@huawei.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, steve.glendinning@shawell.net,
 iyappan@os.amperecomputing.com, keyur@os.amperecomputing.com,
 quan@os.amperecomputing.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
 mostrows@earthlink.net, xeb@mail.ru, qiang.zhao@nxp.com
Date: Wed, 28 Jun 2023 10:41:21 +0800
Message-Id: <20230628024121.1439149-1-yunchuan@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 28 Jun 2023 15:12:26 +0000
Subject: [Intel-wired-lan] [PATCH net-next 00/10] Remove unnecessary (void*)
 conversions
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 intel-wired-lan@lists.osuosl.org, yangyingliang@huawei.com,
 yunchuan@nfschina.com, linuxppc-dev@lists.ozlabs.org, ansuelsmth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove (void*) conversions under "drivers/net" directory.
According to the suggestion[1] of Jakub Kicinski, send these patches
in series of 10. 

wuych (10):
  net: dsa: ar9331: remove unnecessary (void*) conversions
  net: dsa: qca8k: remove unnecessary (void*) conversions
  atlantic:hw_atl2:hw_atl2_utils_fw: Remove unnecessary (void*)
    conversions
  ice: Remove unnecessary (void*) conversions
  ethernet: smsc: remove unnecessary (void*) conversions
  net: hns: Remove unnecessary (void*) conversions
  net: hns3: remove unnecessary (void*) conversions
  net: mdio: Remove unnecessary (void*) conversions
  net: ppp: remove unnecessary (void*) conversions
  net: wan: Remove unnecessary (void*) conversions

 drivers/net/dsa/qca/ar9331.c                     | 16 ++++++++--------
 drivers/net/dsa/qca/qca8k-8xxx.c                 |  2 +-
 drivers/net/dsa/qca/qca8k-common.c               |  6 +++---
 .../aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c |  2 +-
 .../net/ethernet/hisilicon/hns3/hns3_ethtool.c   |  2 +-
 drivers/net/ethernet/hisilicon/hns_mdio.c        | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c        |  4 ++--
 drivers/net/ethernet/smsc/smsc911x.c             |  4 ++--
 drivers/net/ethernet/smsc/smsc9420.c             |  4 ++--
 drivers/net/mdio/mdio-xgene.c                    |  8 ++++----
 drivers/net/ppp/pppoe.c                          |  4 ++--
 drivers/net/ppp/pptp.c                           |  4 ++--
 drivers/net/wan/fsl_ucc_hdlc.c                   |  2 +-
 13 files changed, 34 insertions(+), 34 deletions(-)

[1] https://lore.kernel.org/all/20230518194627.4f9a6b04@kernel.org/
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
