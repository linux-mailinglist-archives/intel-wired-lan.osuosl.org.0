Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4161A28181
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 03:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76E6A6105D;
	Wed,  5 Feb 2025 02:01:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Zs5YKFrBoP2; Wed,  5 Feb 2025 02:01:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9FA161055
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738720863;
	bh=1pqa2nMObahGg20mTuq7MUIau6b65uMy85AgveeNAXg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CrgCHpmcFYT8UWhZcTa2CDgi7BrwZSUNwKetA6vxrnK2ZXIMN3nQqObob3nGPR4Wt
	 1wXcFg8En/hxlRVJbyFfnjQYEBu36mXYewTZkB/p1FOdleHbqIwUKK7Anki67hFIlt
	 GjM0YKGviL83BM7X7zQUQXDS/AjTX2NflGY1YE2BjHzUOi0NP6Tu36EIOa5iZBHFDZ
	 EO6ErGnsDOXKb0cawx2bA27jfZ0NmmEONNeC65smqXEd2tBBqXLF1Ydp8cYAQk0KOF
	 0eATu288UC635ibtYjYPVng63T7YdJyI1AEgvGgDP1YaMirTWFQpXoc6XOqZtHfc+F
	 EhDs55z5wy7AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9FA161055;
	Wed,  5 Feb 2025 02:01:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 628AA12A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:01:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E3E9411FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KZLiBncJ1K-o for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 02:01:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E0F52411E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0F52411E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0F52411E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:01:00 +0000 (UTC)
X-CSE-ConnectionGUID: RRzfNT4iQ2GpZWfwuvJ8qA==
X-CSE-MsgGUID: RguY42O1TYCithFu6SlJ0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43021021"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="43021021"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 18:01:00 -0800
X-CSE-ConnectionGUID: mJdXULY2SnausojlgyEbww==
X-CSE-MsgGUID: d5cpaGWJREGyG3UVNiFfRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147986415"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa001.jf.intel.com with ESMTP; 04 Feb 2025 18:01:00 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: sridhar.samudrala@intel.com, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>
Date: Tue,  4 Feb 2025 18:08:11 -0800
Message-Id: <20250205020811.2839702-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738720862; x=1770256862;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z2ijATb9IALlnNIyRKWOKd0e0sRLjAoUccc0LJZsRys=;
 b=dSeoRSK8BdLFYAsZ54KnO0gCB3HSWN8B4wBC15qe82mH3FIPn2kE0dFg
 wD6oMjMGgrmMk6cNwePD/TPsJFUKFclLf1hfHy6oes5UTwwfB34XKaqKA
 Zhb1ZfQ4Apia0D5SxQV/7KZ9zIDeFdYAGGpLfCf6IflTeeMavUSFNVN4d
 O3PjNouC6/8tAeCXhKaZ+Is0DeSn6W8rztfOl8UQ7eC6DBKP4p0lV3Dw7
 lNFa7aNycZoR+UDyVylTvk2UwLnoCYU6qZF7uxD1JaTgkdRC/PhPunNBB
 RFn830o88MVFkatFL6X3sANIALnuzvkknQPZgbLgtm70R2bQLZUDBZmVs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dSeoRSK8
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call set_real_num_queues
 in idpf_open
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

On initial driver load, alloc_etherdev_mqs is called with whatever max
queue values are provided by the control plane. However, if the driver
is loaded on a system where num_online_cpus() returns less than the max
queues, the netdev will think there are more queues than are actually
available. Only num_online_cpus() will be allocated, but
skb_get_queue_mapping(skb) could possibly return an index beyond the
range of allocated queues. Consequently, the packet is silently dropped
and it appears as if TX is broken.

Set the real number of queues during open so the netdev knows how many
queues will be allocated.

v2:
- call set_real_num_queues in idpf_open. Previous change called
  set_real_num_queues function in idpf_up_complete, but it is possible
  for up_complete to be called without holding the RTNL lock. If user
  brings up interface, then issues a reset, the init_task will call
  idpf_vport_open->idpf_up_complete. Since this is initiated by the
  driver, the RTNL lock is not taken.
- adjust title to reflect new changes.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 6df7f125ebde..9dc806411002 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2159,8 +2159,13 @@ static int idpf_open(struct net_device *netdev)
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
+	err = idpf_set_real_num_queues(vport);
+	if (err)
+		goto unlock;
+
 	err = idpf_vport_open(vport);
 
+unlock:
 	idpf_vport_ctrl_unlock(netdev);
 
 	return err;
-- 
2.39.2

