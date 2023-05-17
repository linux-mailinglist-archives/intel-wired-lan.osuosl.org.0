Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9C17068D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DAA8429F0;
	Wed, 17 May 2023 13:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DAA8429F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684328627;
	bh=i1KYZPNvHa/1xj2Ly12MHdSYrulPaO/rA87RfElb2Ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zewiqK2ZcTN56pzc9+A1g7SEvV9uG0OxtBnSCSrIDurv2qY0mPwnB1vZRguFLrsYv
	 R0/e05agwDO+1UhDjJ2D6k9vIuOBkaWoEcJHkpGHZOJJAhWw5YM2dvOLu9loBietnK
	 kA3lhrZ1zDhLrLqn0chyyAUJjJqeQ/HlVdMxN4JROE0HGpajzQGbOAV4EnYS4xrfjX
	 rZZjhONDWGO1SiahuIw5d+Ry2t0ZkWXU0kg7ag1d6Z7g/Fw6yKcPkud0ZmMB0NHTvk
	 ggyamLDmKPTt6S68A/hlRJZxuxmk+IYXptGECFAr4YsAq82XHvA11Ym3bl1GwVyv+D
	 fYHAt+6+YHI3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id paV7S7OmON_H; Wed, 17 May 2023 13:03:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7A7440182;
	Wed, 17 May 2023 13:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7A7440182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C19821BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9832340182
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9832340182
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lq689BhvWEQv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0722A4026E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0722A4026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:03:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="332112199"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="332112199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="732418383"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="732418383"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:03:30 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 15:03:22 +0200
Message-Id: <20230517130323.332462-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517130323.332462-1-piotrx.gardocki@intel.com>
References: <20230517130323.332462-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684328616; x=1715864616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jPrzCUE6IAZlk2meSUQ8bOCLudIGvUHCb+t6Sa4sFI4=;
 b=nbT84pGOk929Jzzubkq1VaJ7ZuALRnWQL04L48vCftT64I0JOLN8yxdd
 dRfxEA9WXeR9Oh7WQuOuwUo3DnQG5PyL/7Z31Pe10AtBh3Mm98ou11ybz
 jEOTvai0lmHir4Vh/fERvpKJUmpqoW5s3OUWpSZzJ+bYOkIGucg/jdv+U
 LMHh5cjnd9rE4Xq74GaB9sjexCo9jyggaHign2AFd/WnHnGwpZ5hTKTPp
 c2pVjYR/GeDerDNvXsvncDl76vVqbQZZ8ANlKmtc4WShPhuNp4BFjvI3W
 Keo8pbz2U7dw83DJzJbMRuETj0DBhDHJVLaIBIOgCPe9aS+pUdCQrXLnS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nbT84pGO
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] iavf: add check for
 current MAC address in set_mac callback
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
Cc: przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some cases it is possible for kernel to come with request
to change primary MAC address to the address that is actually
already set on the given interface.

If the old and new MAC addresses are equal there is no need
for going through entire routine, including AdminQ and
waitqueue.

This patch adds proper check to return fast from the function
in these cases. The same check can also be found in i40e and
ice drivers.

An example of such case is adding an interface to bonding
channel in balance-alb mode:
modprobe bonding mode=balance-alb miimon=100 max_bonds=1
ip link set bond0 up
ifenslave bond0 <eth>

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e18d7cacf99c..888d063478a1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1085,6 +1085,12 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (!is_valid_ether_addr(addr->sa_data))
 		return -EADDRNOTAVAIL;
 
+	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
+		netdev_dbg(netdev, "already using mac address %pM\n",
+			   addr->sa_data);
+		return 0;
+	}
+
 	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
 
 	if (ret)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
