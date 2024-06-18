Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF87190C768
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 12:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E77EC4057D;
	Tue, 18 Jun 2024 10:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQoaEaBHikPI; Tue, 18 Jun 2024 10:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22CB140592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718707413;
	bh=SM3Tfq9ps3bYvvtUd8DHgC3xHdPOTe7Hpx4XF+ct7zQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zCedh5MnoGyvv953zlpwgkiHSEG9EFzFi1S3M2zIN69RlEb9TzDWq/HYVf+XnEUKa
	 q1UZxspad4zgCGXlFEpfMcvUy0kb2ExWcYDQUOzxZpXedlNtFM3Mah3gjfA2/SDSHt
	 gfzwMFCiLxkR6Jh09cGYDukW3prsC1uxfUIoGTRLyUT7m0ugEXJQcLMqe1iqOl1XXI
	 wbTPsFeMw0G3/d2sO7mysUE0D77FNSiWmi2KSpzL0bRYimQkW31uuadayt6utPNe5k
	 EOaaa4QbTIPv8d2wYDcD7FVQWHIrSqCZXayopFLQTzHay+On+jdUpGttO4cUl01aFU
	 KuCzcP1EiMVxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22CB140592;
	Tue, 18 Jun 2024 10:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8AE1BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1614360B6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zhk1UbBNYTEO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 10:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DEEE60730
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DEEE60730
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DEEE60730
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:28 +0000 (UTC)
X-CSE-ConnectionGUID: WMVgC51nQ6SmVjWcW24HOg==
X-CSE-MsgGUID: 2UIeDNLTRz6yoaj6Y3x5KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15719455"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15719455"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 03:43:28 -0700
X-CSE-ConnectionGUID: NA2wzNRxS3OxWrqKT/KAag==
X-CSE-MsgGUID: nU0iYmc0SrW+IWloPXDEwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="42227762"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa007.jf.intel.com with ESMTP; 18 Jun 2024 03:43:26 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 12:41:37 +0200
Message-ID: <20240618104310.1429515-3-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240618104310.1429515-1-karol.kolacinski@intel.com>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718707408; x=1750243408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I2rHd+h8O2gHOSw9PqzrGE6GMI7NzzdGJkYn5swzmT4=;
 b=K4umkVWTpNH/PqNF9iPHkgfKv9+A/AorEHDSw8LfE4TV++AwKGHSmjtD
 Lx3wF43V6Ib+bOqFPf1gbdLc+jVnxTUF44co1vJZgqAGkRMCqfIcCtRGc
 3ZBHzwD1Ll22Qhjv86rxyfAZiZp5HT8CyiHNZkubQLeB1aCFZMPVbyoA5
 NDP0c37fFKelhcRj6BhOaf/T28IKr3Do9zcIm5SVxuNQH7uYf2p0e4UAI
 hDT1LjSwhqR0XEfI/MW9RCDdQ0QCX+fFhBxQ1z0GU12fCzSn0qDtQN0+F
 lGjBKHkdGusveUjFTPeRqmJ2jDn7PifYXSkmldp937fTBOXRNmhz38/OE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K4umkVWT
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: Don't process extts if
 PTP is disabled
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_extts_event() function can race with ice_ptp_release() and
result in a NULL pointer dereference which leads to a kernel panic.

Panic occurs because the ice_ptp_extts_event() function calls
ptp_clock_event() with a NULL pointer. The ice driver has already
released the PTP clock by the time the interrupt for the next external
timestamp event occurs.

To fix this, modify the ice_ptp_extts_event() function to check the
PTP state and bail early if PTP is not ready. To ensure that the IRQ
sees the state change, call synchronize_irq() before removing the PTP
clock.

Another potential fix would be to ensure that all the GPIO configuration
gets disabled during release of the driver. This is currently not
trivial as each device family has its own set of configuration which is
not shared across all devices. In addition, only some of the device
families use the pin configuration interface. For now, relying on the
state flag is the simpler solution.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 30f1f910e6d9..b952cad42f92 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1559,6 +1559,10 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 	u8 chan, tmr_idx;
 	u32 hi, lo;
 
+	/* Don't process timestamp events if PTP is not ready */
+	if (pf->ptp.state != ICE_PTP_READY)
+		return;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	/* Event time is captured by one of the two matched registers
 	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
@@ -1573,10 +1577,8 @@ void ice_ptp_extts_event(struct ice_pf *pf)
 			event.timestamp = (((u64)hi) << 32) | lo;
 			event.type = PTP_CLOCK_EXTTS;
 			event.index = chan;
-
-			/* Fire event */
-			ptp_clock_event(pf->ptp.clock, &event);
 			pf->ptp.ext_ts_irq &= ~(1 << chan);
+			ptp_clock_event(pf->ptp.clock, &event);
 		}
 	}
 }
-- 
2.43.0

