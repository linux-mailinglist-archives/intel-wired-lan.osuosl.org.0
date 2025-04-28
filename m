Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0AFA9F990
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 21:34:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5654581314;
	Mon, 28 Apr 2025 19:34:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p6r6TYWFcOF3; Mon, 28 Apr 2025 19:34:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C26528129D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745868862;
	bh=V0g2WbWt3nnK4BwcEM7q3GcdelIXCOcGufCS8eg+c64=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mKK2R62MVjQ7x+D7FdYS6013FqcjPBNu7Szr0sosVArI8hOJwbINhCxArgmBdqG/J
	 pbUEYVogqfVeo8aBq6f44x0XlOD8OkiOg9E/1csZ8WKVGZfQKn7fjR/RsKiBySbYkJ
	 NVU6wVO0oUpfu9vukzUOizXDHHjNRPp+4pF+yWqcVwJ2nKHfl3tst9jw8NGlwaHAWi
	 iziJ8HP7gMS0DI02/IZKfIsm10S3YxMdI+kcBuQAji+Nu4YVI9VIZYoMjx9rjiDhNu
	 nM0Z+b3+tS0MFWlf8u7OiZ1iLaJgdg3fGlgA/ELz5+vV1z5OlDTtALDrlHbT3BcNMN
	 eIWw3LsM/pbpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C26528129D;
	Mon, 28 Apr 2025 19:34:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA383C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBF2D812A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aqy0_dDOL55d for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 19:34:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 25880812A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25880812A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25880812A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 19:34:20 +0000 (UTC)
X-CSE-ConnectionGUID: wazrjvY9RIid8H+yQydXpg==
X-CSE-MsgGUID: +PcEm/RrTPOs3rjBQUaeMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58843958"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="58843958"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 12:34:20 -0700
X-CSE-ConnectionGUID: sKfnVF8hRi2nBXKIQZTNZA==
X-CSE-MsgGUID: Usb9NnBBTYyL8yUMWQBDRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="164572643"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 12:34:19 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 28 Apr 2025 15:33:39 -0400
Message-ID: <20250428193339.1692360-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745868860; x=1777404860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ee/mPLzhQa1ZU0Pb2/1h+Zkb9rbH8eBt8UG3MhdBooE=;
 b=NdF8sTMHKlWKyqJ0PeLpBfr2cFdNEoD1BVEnAo6R1sk1ccaS2U2p7JMs
 /XohrWbQwqh5KPyD8CJoAMixlazmViqptWy53DtWYctoRR4ohIl0zyCJw
 SedJ5lbuNqKpPmX+NovplcnYI0E3pUqSGZbaeT4sK1orh+uaES0l+5qoG
 /6cckgH+hhNIdxRwhQHPpn4CpL0PKEyHG5cYTTD7fxRZ9Vper9/feWNey
 OOy9u/TBGk8aNnxPaEcRl31AuznzmwlNfrt6sKqQMzCKCH7hK6U/rCR2Q
 tzcD/ONALoZLUXfksyGZIacJzlvcZBHAVnLOPdac0nDanzJ5/ueAYYUfa
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NdF8sTMH
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix LACP bonds without SRIOV
 environment
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

If an aggregate has the following conditions:
- The SRIOV LAG DDP package has been enabled
- The bond is in 802.3ad LACP mode
- The bond is disqualified from supporting SRIOV VF LAG
- Both interfaces were added simultaneously to the bond (same command)

Then there is a chance that the two interfaces will be assigned different
LACP Aggregator ID's.  This will cause a failure of the LACP control over
the bond.

To fix this, we can detect if the primary interface for the bond (as
defined by the driver) is not in switchdev mode, and exit the setup flow
if so.

Reproduction steps:

%> ip link add bond0 type bond mode 802.3ad miimon 100
%> ip link set bond0 up
%> ifenslave bond0 eth0 eth1
%> cat /proc/net/bonding/bond0 | grep Agg

Check for Aggregator IDs that differ.

Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event handler")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 22371011c249..2410aee59fb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1321,12 +1321,18 @@ static void ice_lag_changeupper_event(struct ice_lag *lag, void *ptr)
 		 */
 		if (!primary_lag) {
 			lag->primary = true;
+			if (!ice_is_switchdev_running(lag->pf))
+				return;
+
 			/* Configure primary's SWID to be shared */
 			ice_lag_primary_swid(lag, true);
 			primary_lag = lag;
 		} else {
 			u16 swid;
 
+			if (!ice_is_switchdev_running(primary_lag->pf))
+				return;
+
 			swid = primary_lag->pf->hw.port_info->sw_id;
 			ice_lag_set_swid(swid, lag, true);
 			ice_lag_add_prune_list(primary_lag, lag->pf);
-- 
2.49.0

