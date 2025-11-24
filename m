Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8B3C80746
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 13:27:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A88DE60701;
	Mon, 24 Nov 2025 12:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FxVzGKRtzbq8; Mon, 24 Nov 2025 12:27:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97C1860EF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763987226;
	bh=rdwvykLvqLu18QtLV7kZqWnMSfXtxgJ54nPd2Dol7/o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2RtuUBN9Jm3Sg2qBu5y43DoV9LNkBbeCh7J+VYSeR8rKgHvaKJBwIOrZiWEpDT9fG
	 khpz/7o81WgCYwyoY+PFwJX4GHeuTQOjyksaBALgCQ0Ibbf9Q3b5S8JMBcQmSYieOW
	 MJT/R9fnjeVDQWkkmgrK4e746DNzgVQHzHA6V19Ro1lA3EKk91GroJieYmAgPUX6+8
	 w7AFBlmC5MQjYQvWCAHkk5Pho1n9HR8coatDaHQhsRZnNaCCLkpIv8U81n+yqgTmMj
	 FJwb6LwFhbTuYO3TZRswl7AcS82R9niKqxgfo4vvz9a5zqz5N4OmIXzGWatI56u5zd
	 NuxlKkBbgOo5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97C1860EF7;
	Mon, 24 Nov 2025 12:27:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA7E1E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1761407DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:27:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kR9WvumNo_LU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 12:27:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3BECD40360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BECD40360
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BECD40360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 12:27:01 +0000 (UTC)
X-CSE-ConnectionGUID: Yi/VOjw9SwCKD6xPZJRMfg==
X-CSE-MsgGUID: Fuf0L59cRSir5ZZhIKD2Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="69849031"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="69849031"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 04:27:00 -0800
X-CSE-ConnectionGUID: qd7UZLKaTNaStvlm5MjRkg==
X-CSE-MsgGUID: HcyMEv+mSsGY6g7/HUK0eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="222974367"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 24 Nov 2025 04:26:57 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7EADC12675;
 Mon, 24 Nov 2025 12:26:55 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, pmenzel@molgen.mpg.de,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 24 Nov 2025 13:26:08 +0100
Message-ID: <20251124122609.3087-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763987222; x=1795523222;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n4uS7cY2Gdwgpfx6orBB2cLgvouFnA/lGwTYuSPflBI=;
 b=NHZ9aEBYHbUP6GuEO5+LSn5DLs1oKkfi25+rq+f6L6mmQ8Iozx8HqX33
 CjAkdXJVUaaDuz6otv+KFe7aabzX26fvvYb2ZbaEkGtq+LM6lWtsVHYYI
 EdQN28m9zQNorDQrb+YcWfRBmunrI322KACgLEkk95o+MjRA0d2JyNQYR
 J67gNlkTQnuScYqgla1Xhsk8L3iupKQSiPjR8zFTmQNkJ+dCNkFavZGzX
 x4/7BQodsWvEI++aHMFNJh3t0qy7QAbPq3mN4BH1/y+vVQmf9TLAvSTx4
 ndXOZlUDeOr+4zVQW7cPXfoHQZZzpN65cVUKg2x8FMGe0qRI4tADnJ7gy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NHZ9aEBY
Subject: [Intel-wired-lan] [PATCH linux-firmware v3] ice: update DDP LAG
 package to 1.3.2.0
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

Highlights of changes since 1.3.1.0:

- Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
  active-active mode. This uses a dual-segment package with one segment
  for E810 and one for E830, which increases package size.

Testing hints:
  # Install ice_lag package - refer to Dynamic Device Personalization
  # section in:
  # Documentation/networking/device_drivers/ethernet/intel/ice.rst
  # in kernel tree.
  modprobe ice
  devlink dev eswitch set $PF1_PCI mode switchdev
  ip link add $BR type bridge
  echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
  ip link add $BOND type bond miimon 100 mode 802.3ad
  ip link set $PF1 down
  ip link set $PF1 master $BOND
  ip link set $PF2 down
  ip link set $PF2 master $BOND
  ip link set $BOND master $BR
  ip link set $VF1_PR master $BR
  # Configure link partner in 802.3ad bond mode - e.g. for Linux partner
  # the same commands as above, but without VF, bridge and switchdev.
  # Verify both links in bond are transmitting/receiving VF traffic.
  # Verify connectivity still works after pulling one of the cables -
  # e.g. physically, or (if using ice on link partner):
  ethtool --set-priv-flags $PF1 link-down-on-close on
  ip link set $PF1 down

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v3:
  * Extend testing hints
  * Don't use bullet points for testing hints
v2: Update WHENCE
---
 WHENCE                                        |   2 +-
 ...ce_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename intel/ice/ddp-lag/{ice_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} (49%)

diff --git a/WHENCE b/WHENCE
index 02e6d3575f99..7b63c659f100 100644
--- a/WHENCE
+++ b/WHENCE
@@ -6970,7 +6970,7 @@ Driver: ice - Intel(R) Ethernet Connection E800 Series
 
 File: intel/ice/ddp/ice-1.3.43.0.pkg
 Link: intel/ice/ddp/ice.pkg -> ice-1.3.43.0.pkg
-File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
+File: intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
 
diff --git a/intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg b/intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
similarity index 49%
rename from intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
rename to intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
index c527bec3908fc5473274c7f28ab3aac8ab3b15cb..a4ef6465b9e6c849ef6636c3ddba5a306efeb05a 100644
GIT binary patch
delta 42745
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

delta 18208
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
KOA9FHnEwY_`ZYBG

-- 
2.49.0

