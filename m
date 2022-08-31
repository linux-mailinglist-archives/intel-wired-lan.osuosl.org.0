Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEB95A7F4C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 15:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FC7082E1A;
	Wed, 31 Aug 2022 13:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FC7082E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661954047;
	bh=KbgPoKFNICpnqIfk+9JNCWKgQe6DUm3BQN4UlZU/uOc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UWACbJfNbNJEYaHMczcAIbGOfWrMtmD8AhzRsYW/EO97C6SDudKARTwmtax97AaFw
	 GrpNIEbA9ZPPGD1RHWI/o3u6hm4nNdTh5bQ+Qo5v5KyHK0DfkSLW+Ij1i5RFmHFbOI
	 cLv/A1ppYGLXSEM/3rfInkARE0JxOQcHti3AGEuGiS4zg/XraceWlGL4ILudyD8pLa
	 6qSBRKJ68iyPaOg8FHqMYK3WwaJXHPx9e2V5m9QpqJEdVh1aspicAajnr7+fqqT0Fb
	 cFvf5fiQOscy02upf9NjaymnU6VUwrmT8EizZGdjvO8WZ3whAQd3TgV1icusKr79rn
	 COPfXryOshJsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQ3P_ngFWp5i; Wed, 31 Aug 2022 13:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E3C182CA5;
	Wed, 31 Aug 2022 13:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E3C182CA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31F871BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17EEB4168A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17EEB4168A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t--W4uQbwOVl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 13:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B18F40299
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B18F40299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 13:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="282423722"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="282423722"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 06:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="738109768"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 31 Aug 2022 06:53:56 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Aug 2022 15:52:43 +0200
Message-Id: <20220831135243.8623-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661954038; x=1693490038;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UOvkrGJznFMYyC1T1aKaUSyFot2hwJgxwVvvrJ0q0ng=;
 b=iGU+DvrSLlhQwB+SLtiLdLp5MuqQzGo2vZez/yMN2CjYgA1g2J+v8KNv
 O67x/3OjwszFWi7cYQ8L7E6XRUt7OU0ZPROl7jUdkB9mxS7IQL4ndKWPu
 VEtV0Ytmb5gOLCEw6x1XP6t+eYJMs1wJe1o06xAcMEMFrkZ/qjBsv1dY5
 c8qrS6jjhpJoZTYe/O7jzQLu/AgPH63TmBYf5IroI3WUBOzzkcSZhqWUH
 tk7mortQE44KY7YNPu8Jmj14f0DWnGaZui6aqPYAKrv5NnqaYvAmOnza8
 PPYfZfobdwlSFBLaCf54HtO2oV0yQxJsSHsc7Pe6wDUxtz436rwslPUCC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iGU+DvrS
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix change VF's mac address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

Previously changing mac address gives false negative because
ip link set <interface> address <MAC> return with
RTNLINK: Permission denied.
In iavf_set_mac check, if mac was handled by PF, was on start of
iavf_set_mac even before mac was added to adapter's list of mac.
Because this check returns always true and it never waits for
PF's response.

Move iavf_is_mac_handled to wait_event_interruptible_timeout
instead of false. Now it will wait for PF's response and then
check if address was added or rejected.

Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f39440ad5c50..94e4cc4011f3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1077,7 +1077,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	struct sockaddr *addr = p;
-	bool handle_mac = iavf_is_mac_set_handled(netdev, addr->sa_data);
 	int ret;
 
 	if (!is_valid_ether_addr(addr->sa_data))
@@ -1094,10 +1093,10 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 		return 0;
 	}
 
-	if (handle_mac)
-		goto done;
-
-	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue, false, msecs_to_jiffies(2500));
+	ret = wait_event_interruptible_timeout
+			(adapter->vc_waitqueue,
+			 iavf_is_mac_set_handled(netdev, addr->sa_data),
+			 msecs_to_jiffies(2500));
 
 	/* If ret < 0 then it means wait was interrupted.
 	 * If ret == 0 then it means we got a timeout.
@@ -1111,7 +1110,6 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 	if (!ret)
 		return -EAGAIN;
 
-done:
 	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		return -EACCES;
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
