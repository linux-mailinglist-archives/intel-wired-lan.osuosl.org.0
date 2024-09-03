Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8CF969D72
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 14:26:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2538460775;
	Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1eqQ5e0IJbt; Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 776B160622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725366375;
	bh=RgzSmqDp9tUWLtbZioK/tXQTTzhMwvqdrTDDYifPZ2M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8xHlm2NtS1jGOdlewVO9zs411vrFDMFCPHQqo5i3/nSCOYVhlt2y++nX6OZt8biJl
	 lpgRlRRqRg2emcVJsEXVEIF56VFuIQq1yyofneFypU52ttld6iRrYG9RI9iWo9NLBz
	 03VnyXuvJnJuL/GDHrSOfWFsy0DDoUPCDGGv/k00TpNVwtd37kAHi8n/XdyxYWnRfp
	 gA/IBi5VeJerUXtilkFI3qInoxPPF4POhl6UvnXFZe7Sct00Y3l1H+g1WGqwDBMhAC
	 kflV1Og1L/lDSOfWWwjpoVbBEmHZyxjS6DP4rbKRhAF2jHCTUlqmz6zH1CvfyTKlVJ
	 VQQLt2zoQTGXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 776B160622;
	Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9834B1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 838394034F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMISGjYLbAhA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:26:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.190;
 helo=szxga04-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D6E9402FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D6E9402FE
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D6E9402FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:11 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Wyl8j3jvfz20nRs;
 Tue,  3 Sep 2024 20:21:09 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 90E671A016C;
 Tue,  3 Sep 2024 20:26:05 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 3 Sep
 2024 20:26:04 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <ahmed.zaki@intel.com>, <yuehaibing@huawei.com>, <richardcochran@gmail.com>,
 <michal.swiatkowski@linux.intel.com>, <amritha.nambiar@intel.com>,
 <mateusz.polchlopek@intel.com>, <jacob.e.keller@intel.com>,
 <maciej.fijalkowski@intel.com>
Date: Tue, 3 Sep 2024 20:22:31 +0800
Message-ID: <20240903122234.964218-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next 0/3] Cleanup intel driver
 declarations
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Yue Haibing (3):
  iavf: Remove unused declarations
  igb: Cleanup unused declarations
  ice: Cleanup unused declarations

 drivers/net/ethernet/intel/iavf/iavf.h           | 10 ----------
 drivers/net/ethernet/intel/iavf/iavf_prototype.h |  3 ---
 drivers/net/ethernet/intel/ice/ice_eswitch.h     |  5 -----
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h   |  3 ---
 drivers/net/ethernet/intel/ice/ice_lib.h         |  2 --
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h      |  3 ---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h    |  1 -
 drivers/net/ethernet/intel/igb/e1000_mac.h       |  1 -
 drivers/net/ethernet/intel/igb/e1000_nvm.h       |  1 -
 9 files changed, 29 deletions(-)

-- 
2.34.1

