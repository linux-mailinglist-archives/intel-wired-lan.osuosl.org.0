Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC16AAF72C5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jul 2025 13:46:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5A7360E0E;
	Thu,  3 Jul 2025 11:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tpp5YTzToB8L; Thu,  3 Jul 2025 11:46:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 234E860E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751543203;
	bh=tBx6NEC8GsoxyDD/gwqFwxuD6bEIQ8wrbTMKJedUbd8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qCjdCSJEAaP/X/m2/ZG9lCiWRk0YkvUHxX7GEXXhw61I+ukmEdTBw5vQAT5PZVJye
	 VPSJPTv8+nlCqaKuZXv9MtervsvYR/4WOHjb3lIqwuPmy7c7bvb7JcCqBH1TcT1MZa
	 erJaZosyAvyOmmM5TIjuOSBIOAMKq8LmaihuvVQWZAWmX++fARETbKbQsBzSt3Zs8M
	 dDWl9ZxGi2yvh/V17H4g3cY1Mtntg8VFqKv1P3TBDgES0VJ1UCwGuS368+7arClkiv
	 IRbH+cF8U/q0Z9+HQt+wIBPzV3o11yc2Z8W/nppUzGMYH/+MqbgaTbWcEFLnwsASUU
	 YV0PMTaUPwdfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 234E860E10;
	Thu,  3 Jul 2025 11:46:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23FE5193
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0994C4072F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWXjYXhLg3qe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jul 2025 11:46:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B5E04017B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B5E04017B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B5E04017B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jul 2025 11:46:41 +0000 (UTC)
X-CSE-ConnectionGUID: 4XlbVApoS5iZ6cEqjb9kTQ==
X-CSE-MsgGUID: kbWf0zOISGqCqUx7qERFKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="76411122"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="76411122"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 04:46:41 -0700
X-CSE-ConnectionGUID: RcthAU26TCegUM8ad0krlA==
X-CSE-MsgGUID: CWKNUrJmSgSMWUd1meejsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="153780323"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa006.jf.intel.com with ESMTP; 03 Jul 2025 04:46:39 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 david.kaplan@amd.com, dhowells@redhat.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu,  3 Jul 2025 13:30:21 +0200
Message-Id: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751543202; x=1783079202;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cgMuh17xA1ql/xkR2cAotkaIPYhgV1dPC0GUwBHrweQ=;
 b=iGwyaWD9mHgFnp0+u1bhZhOJQCtOJrvUdTIjyNhsp1qfQMd4fgEKQc7W
 p+73jZXy2wtkeWMeig/8CLLPSGeoH6gTAKj14p97Iv81eD11dbpetFXI/
 EzWLSdy70JSHd877MtlJYa6o/QzUv+x63/TKOBbBjRnyl5qq8wMpW2OdV
 hPWC5yAYwwWXsOO79Kqv58KNmrwWmr64Rs6uY+bJLefbwYWKDGSnylCyh
 7wyFQnQDnURurKwbAuhFUFeH3+LpdprMrsrHpjzWO6OsXEHBO8rHAjgtR
 wFGVS8YLDYjt0PVQ3qHrRcUqxTx8wQ8TnOEymHyngkmwgxqZhYOYeLjZS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iGwyaWD9
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] devlink: allow driver to
 freely name interfaces
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

Currently when adding devlink port it is prohibited to let
a driver name an interface on its own. In some scenarios
it would not be preferable to provide such limitation.

Remove triggering the warning when ndo_get_phys_port_name() is
implemented for driver which interface is about to get a devlink
port on.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 net/devlink/port.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/net/devlink/port.c b/net/devlink/port.c
index 939081a0e615..f885c8e73307 100644
--- a/net/devlink/port.c
+++ b/net/devlink/port.c
@@ -1161,23 +1161,6 @@ static void devlink_port_type_netdev_checks(struct devlink_port *devlink_port,
 {
 	const struct net_device_ops *ops = netdev->netdev_ops;
 
-	/* If driver registers devlink port, it should set devlink port
-	 * attributes accordingly so the compat functions are called
-	 * and the original ops are not used.
-	 */
-	if (ops->ndo_get_phys_port_name) {
-		/* Some drivers use the same set of ndos for netdevs
-		 * that have devlink_port registered and also for
-		 * those who don't. Make sure that ndo_get_phys_port_name
-		 * returns -EOPNOTSUPP here in case it is defined.
-		 * Warn if not.
-		 */
-		char name[IFNAMSIZ];
-		int err;
-
-		err = ops->ndo_get_phys_port_name(netdev, name, sizeof(name));
-		WARN_ON(err != -EOPNOTSUPP);
-	}
 	if (ops->ndo_get_port_parent_id) {
 		/* Some drivers use the same set of ndos for netdevs
 		 * that have devlink_port registered and also for
-- 
2.31.1

