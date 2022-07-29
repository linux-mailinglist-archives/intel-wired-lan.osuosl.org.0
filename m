Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF405850F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 15:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD8B061093;
	Fri, 29 Jul 2022 13:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD8B061093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659101736;
	bh=n9ywwnVyUTU/ZBl5lSjHWgnO1xM8ImMaS3JO96YJxqI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NOfibwGnJoNEMn1GdT2dFY9TsmoEnsHMh6ukQMJ3AWwJqvkPC2wE3kKoT1+O/3V9Y
	 v6wNQL56LgQAzvCnO1AEhG0YpeYl/H8qO8FFA5uJHNlmFkWfqrqRdqSaAYApUjhSCM
	 bzlBCeVzZWaYVeX5+c5nXOS4loq4QgNzNEDl9v2etdJnCDYf2HThpmT8F4fzuFHX9o
	 /GJZcUnvuEe6cO/EbFsoDJhoqIRytAxMCV4bqY4rOnLHmvEgTB6pVQdizxl11xNx8J
	 9+arHQByKVCnNJ0mubYNE5jSt/qNmIC2Nvn4rLSUfFWFGx5eRPFMey3UcQlbaoqExG
	 crRVO+UYbnjXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dQ67g594wTs2; Fri, 29 Jul 2022 13:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE3206107A;
	Fri, 29 Jul 2022 13:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE3206107A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3641C1BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 098E24170A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 098E24170A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YWB_3E4DrdAg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 10:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4172241725
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4172241725
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:24:59 +0000 (UTC)
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.54])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4LvNnz3H3rzWg24;
 Fri, 29 Jul 2022 18:20:55 +0800 (CST)
Received: from kwepemm600016.china.huawei.com (7.193.23.20) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 29 Jul 2022 18:24:50 +0800
Received: from localhost.localdomain (10.67.165.24) by
 kwepemm600016.china.huawei.com (7.193.23.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 29 Jul 2022 18:24:50 +0800
From: Guangbin Huang <huangguangbin2@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <edumazet@google.com>,
 <pabeni@redhat.com>, <snelson@pensando.io>, <brett@pensando.io>,
 <drivers@pensando.io>, <anthony.l.nguyen@intel.com>,
 <jesse.brandeburg@intel.com>
Date: Fri, 29 Jul 2022 18:17:53 +0800
Message-ID: <20220729101755.4798-1-huangguangbin2@huawei.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600016.china.huawei.com (7.193.23.20)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 29 Jul 2022 13:35:27 +0000
Subject: [Intel-wired-lan] [PATCH net 0/2] net: fix using wrong flags to
 check features
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
Cc: huangguangbin2@huawei.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 lipeng321@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We find that some drivers may use wrong flags to check features, so fix
them.

Jian Shen (2):
  net: ice: fix error NETIF_F_HW_VLAN_CTAG_FILTER check in
    ice_vsi_sync_fltr()
  net: ionic: fix error check for vlan flags in ionic_set_nic_features()

 drivers/net/ethernet/intel/ice/ice_main.c       | 2 +-
 drivers/net/ethernet/pensando/ionic/ionic_lif.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
