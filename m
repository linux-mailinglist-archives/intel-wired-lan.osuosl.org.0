Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937BB5539A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 20:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3041940911;
	Tue, 21 Jun 2022 18:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3041940911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655836910;
	bh=osbAmnCniZ5X/jEbzDTMpPRW6G0EXKKJENaMEY5oVIo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KOuK/zAEkkXoC3OanN/JTKCQjNjWbCcjsy6mV9sMiNiDuTM17kvKEOdoeLZo+2ajn
	 7rF2L2jia3j346O1J/HTQ6pnXiaS14/MB/Z0wr0OUTaPa+/hk7MyFEVaTLAUeIFeXQ
	 CdDT16sY9jNhzoQORCLkEcNoNQIkpwt3iAeCl7Ud4Loa+Hn+uN4qWb9bK8pmwzlFQj
	 owU0PWg6TF43o+WZlbIn41jIG8EA6Jt4sr1rpMnQ5YIIGZXC7t06Fm8fudX5yl0t+M
	 S0OGNGshs34dRAYF2bo4UtFYvC3KuHXCkAYPwn0N9FNIzTnZ8ero1VGinJCNnq/YLn
	 78RjrJm3SvkBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4AkmVh4z9MLi; Tue, 21 Jun 2022 18:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CB10404DA;
	Tue, 21 Jun 2022 18:41:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CB10404DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 592771BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 323B5404DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:41:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 323B5404DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5Ap9a9uF2GW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 18:41:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 816A3400B9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 816A3400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:41:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="260638581"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="260638581"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 11:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="643765645"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2022 11:38:55 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Jun 2022 14:38:44 -0400
Message-Id: <20220621183844.2293757-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655836903; x=1687372903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UhMf8zt0ooOZG9CeW+73uAiORZWFueCPp/JdsbdaXJs=;
 b=nCgZgoMa2mzCRX6vdTOGtQTaMOiatnr4kIgn/fuq71R9OYBk/w5+Wh0M
 OBVRXSxBxqHh5MMO+E9Q87L/mv2zSV2rwcQ795YYo83D6q48/vFeWDlaZ
 KbwuTE8aLbMWRQi8xyPYh8hxxgLMsCuyLZfKh+lzIcrIYkfQb/ibljPPO
 eAfKkvUNC/nMT72PrOCrfSbWfgo6xqiIEnvlsbkpP7DBMbSv7c8tt07xO
 08Vh7egxkLeDxiA4zUDDQUWJR0d8ToqcbvN8LyVdQw81h++F7kW9YMZim
 KZetVxMjCXsuabzLKTaA/+2l0Rb7/7UokRUeHZGShJqz/JtbN4AbKM8/K
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nCgZgoMa
Subject: [Intel-wired-lan] [PATCH net v1] iavf: enable tc filter
 configuration only if hw-tc-offload is on
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Allow configuration of tc filter only if NETIF_F_HW_TC is set for the
device.

Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 57c51a15bcbc..0be1652e554c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3847,6 +3847,12 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 		return -EINVAL;
 	}
 
+	if (!(adapter->netdev->features & NETIF_F_HW_TC)) {
+		dev_err(&adapter->pdev->dev,
+			"Can't apply TC flower filters, turn ON hw-tc-offload and try again");
+		return -EOPNOTSUPP;
+	}
+
 	filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 	if (!filter)
 		return -ENOMEM;
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
