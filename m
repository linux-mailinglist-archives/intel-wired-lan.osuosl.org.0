Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22254BC4AA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 14:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CABF040B27;
	Wed,  8 Oct 2025 12:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8QlG94JrNvpg; Wed,  8 Oct 2025 12:00:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6B8D40A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759924812;
	bh=s2NLFNQHc96RvCqZX4156s9TdA0sHIeKEPfacnxoJGg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lL9fBj+3Ce/0CIYcMOlfeUr18aRNtJLkeHon82Nc4zqfW/8wnFxoqiZ5SCQZR7+vM
	 h4kGu1Zi/MVA/xl4vlrC0rH1bQXJTkHEOs13jDQXxUzth2fIZT5dPfgTH1epsGIrPq
	 UXqttD92EC4NGlJHi0IfQw5XneiOwr8vpqwerGFX2V5Y5vzJJb8Bf4PO2gfG7aFleK
	 M050yWuipp7GN/S1JUPDQhY3OrMGcJVo6xyoZn8fWa4vclqyMA4yXDzg0PQyiY6GKk
	 BDmmdK/IJLy/WfcrTQHxGFWkyk1EgBc9iVc6J5yYyf38Fk3W26W+Tubs9yAgLDrsly
	 a8yMnqzn3cejQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6B8D40A4D;
	Wed,  8 Oct 2025 12:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D65D226
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FCF3408F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:00:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tLtV41b9sRxn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 12:00:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BE6EE408DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE6EE408DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE6EE408DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 12:00:06 +0000 (UTC)
X-CSE-ConnectionGUID: yxsLKizCQFy3Cku+ZDdiIA==
X-CSE-MsgGUID: va22iQjSRUG5OPxf0UUZPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="73541157"
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="73541157"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:00:06 -0700
X-CSE-ConnectionGUID: qlmCwMTjQZKyzrMO7KmdDQ==
X-CSE-MsgGUID: BZJmvj+ZRPKr6FtJHShHNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="180090586"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa007.fm.intel.com with ESMTP; 08 Oct 2025 05:00:04 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Oct 2025 13:58:11 +0200
Message-Id: <20251008115811.1578695-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759924806; x=1791460806;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XGOe8jWd4nVrbi8ZdLlMxwTp5ZPj5CcYqRnLiotT1vI=;
 b=QKqUWKsJRQBj723rAPxobfQAlz0jaQtJc0FO0k0TjGU0evryElhUGfX8
 cISxxcA1hTaOdMfcAsjb5UZXtmeiQRtz6CshP0DcsaD55fP3jx49VooaA
 yCy/DjGdux4XJ5SZzT7tA8T/fVj2MaMFnZx9ZaH5M/tr+/Q6jjOxdHbkt
 wocNBIPwr7nABcfe7ZCiePXVVJFG1q2XobgQ2UwYA5Yn1elfXJ20X1RB0
 eNPgJGYquli2HbpqnK8W8bT/d4HLgUHZOMt7bC2Ty9piBGN9Vvg2b+HVG
 e5GzgBZD7qIqatyYh0uddbT2ds68F/T0jBPwZBBSjjDC48I+RLE+M8bfg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QKqUWKsJ
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix PTP cleanup on driver
 removal in error path
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve PTP feature cleanup in error path by adding explicit call to
ice_ptp_cleanup_pf in the case in which PTP feature is not fully
operational at the time of driver removal (which is indicated by
ptp->state flag).
At the driver probe, if PTP feature is supported, each PF adds its own
port to the list of ports controlled by ice_adapter object.
Analogously, at the driver remove, it's expected each PF is
responsible for removing previously added port from the list.
If for some reason (like errors in reset handling, NVM update etc.), PTP
feature has not rebuilt successfully, the driver is still responsible for
proper clearing ice_adapter port list. It's done by calling
ice_ptp_cleanup_pf function.
Otherwise, the following call trace is observed when ice_adapter object
is freed (port list is not empty, as it is expected at this stage):

[  T93022] ------------[ cut here ]------------
[  T93022] WARNING: CPU: 10 PID: 93022 at
ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice]
...
[  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice]
...
[  T93022] Call Trace:
[  T93022]  <TASK>
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  ? __warn.cold+0xb0/0x10e
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  ? report_bug+0xd8/0x150
[  T93022]  ? handle_bug+0xe9/0x110
[  T93022]  ? exc_invalid_op+0x17/0x70
[  T93022]  ? asm_exc_invalid_op+0x1a/0x20
[  T93022]  ? ice_adapter_put+0xef/0x100 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
[  T93022]  pci_device_remove+0x42/0xb0
[  T93022]  device_release_driver_internal+0x19f/0x200
[  T93022]  driver_detach+0x48/0x90
[  T93022]  bus_remove_driver+0x70/0xf0
[  T93022]  pci_unregister_driver+0x42/0xb0
[  T93022]  ice_module_exit+0x10/0xdb0 [ice
33d2647ad4f6d866d41eefff1806df37c68aef0c]
...
[  T93022] ---[ end trace 0000000000000000 ]---
[  T93022] ice: module unloaded

Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index fb0f6365a6d6..c43a7973d70f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3282,8 +3282,10 @@ void ice_ptp_init(struct ice_pf *pf)
  */
 void ice_ptp_release(struct ice_pf *pf)
 {
-	if (pf->ptp.state != ICE_PTP_READY)
+	if (pf->ptp.state != ICE_PTP_READY) {
+		ice_ptp_cleanup_pf(pf);
 		return;
+	}
 
 	pf->ptp.state = ICE_PTP_UNINIT;
 

base-commit: 8b223715f39c8a944abff2831c47d5509fdb6e57
-- 
2.39.3

