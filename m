Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 472269A9A02
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 08:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15FA74052B;
	Tue, 22 Oct 2024 06:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-E7ykP4Rheo; Tue, 22 Oct 2024 06:39:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49E9440524
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729579142;
	bh=JzHHlpBCUmGkaUP78patfBxa8lQf5/TBwFUqPpoQE1Y=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QTS6l8uHy/Jsae/2cRoatTSosNDZiuuprP2mPp+dgqrNPpMga2MxOo/b550OQSLGl
	 hkIIkZFhQVaO33HZcrLcttiZStSFGCSObQA+JdeuMs53saAAAXnt0k6ctHxdNo15vP
	 3ldgIhgi/uim0PvRXWe1XOPPVbHK1qDBGLD42TO2Wii3NNF0xPYwHagssR6ynrAVI/
	 0cAuTnWPHdVO/kgCSCofszxxzOU9rVKHlbcz4w2U01WoU7RyoGgz6jN4KTOFcGXZon
	 yBp1MVYQbZKWsbbNGMY6ZTHruzBLJ0Z3zCMIw5jaSsA/hBwhrRlH3qN1hBms61Tq/l
	 fBefC+7ZPOHZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49E9440524;
	Tue, 22 Oct 2024 06:39:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F309D2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E15EE80E57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyWbdFovrkCU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 06:38:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13F0180E4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13F0180E4C
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13F0180E4C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 06:38:58 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.174])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XXjBn3fhpzpXJ3;
 Tue, 22 Oct 2024 14:36:49 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id B6B52140384;
 Tue, 22 Oct 2024 14:38:46 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 22 Oct
 2024 14:38:45 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <maciej.fijalkowski@intel.com>, <vedang.patel@intel.com>,
 <jithu.joseph@intel.com>, <andre.guedes@intel.com>, <horms@kernel.org>,
 <jacob.e.keller@intel.com>, <sven.auhagen@voleatech.de>,
 <alexander.h.duyck@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>,
 <yuehaibing@huawei.com>
Date: Tue, 22 Oct 2024 14:56:19 +0800
Message-ID: <20241022065623.1282224-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH v3 net 0/4] Fix passing 0 to ERR_PTR in
 intel ether drivers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixing sparse error in xdp run code by introducing new variable xdp_res
instead of overloading this into the skb pointer as i40e drivers done
in commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") and
commit ae4393dfd472 ("i40e: fix broken XDP support").

v3: Fix uninitialized 'xdp_res' in patch 3 and 4 which Reported-by
    kernel test robot
v2: Fix this as i40e drivers done instead of return NULL in xdp run code

Yue Haibing (4):
  igc: Fix passing 0 to ERR_PTR in igc_xdp_run_prog()
  igb: Fix passing 0 to ERR_PTR in igb_run_xdp()
  ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()
  ixgbevf: Fix passing 0 to ERR_PTR in ixgbevf_run_xdp()

 drivers/net/ethernet/intel/igb/igb_main.c     | 22 +++++++-----------
 drivers/net/ethernet/intel/igc/igc_main.c     | 20 ++++++----------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
 4 files changed, 34 insertions(+), 54 deletions(-)

-- 
2.34.1

