Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C148DB09259
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 18:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCF4D83D4A;
	Thu, 17 Jul 2025 16:57:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3NawXoQJruwe; Thu, 17 Jul 2025 16:57:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80C568409C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752771475;
	bh=jQ1vp9t96g688s6H8JzFUi3+TdQLLl7WEbFsY8pVv4E=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Le7hBtwA9NkbqBZjyfc1W+BO1RtqjqNzskWKTI2rnRVtXcr15ZalX0yDGzSVTsZfs
	 iGtSiFsvbV9Ijse8VAP3z9IhOSlrrg2x8o1OQb7QKPQCIMVsy+FAcps10Oeq3B4TRU
	 DDYEOSCv2e5lle2/1u0l8qiOIbNAaY26xj6SGk6OPIF7uOWtbMUwtBY1GEegdjBmfe
	 7SfkhgzMioCzBrvpfvgw+ls8sZ38HPK5PDban1JzcBNgGM5iYX+x+ePTNxk38OHOjq
	 TkjBDphv6g4ib5KdcjRSGcQr7xjc6Q0/NhPQFQD4ib5dF4nDEdjPhIKxiwvXyZs50f
	 onkWqzxy82Rrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80C568409C;
	Thu, 17 Jul 2025 16:57:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FFE6A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A04941163
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pq6VQPZyYrDp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:57:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E55D41162
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E55D41162
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E55D41162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:46 +0000 (UTC)
X-CSE-ConnectionGUID: EEG5HZPmSGqgHbZaGEaZkg==
X-CSE-MsgGUID: jt98QUGuQHKtWb1lwCzX9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55211390"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="55211390"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:43 -0700
X-CSE-ConnectionGUID: yC0u1lUaQ32R9+62+xDLKw==
X-CSE-MsgGUID: h9lqSHrfTKKZ3p6DMIqKgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="158199872"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:43 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 17 Jul 2025 09:57:09 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
In-Reply-To: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, vgrinber@redhat.com, 
 netdev@vger.kernel.org
X-Mailer: b4 0.15-dev-d4ca8
X-Developer-Signature: v=1; a=openpgp-sha256; l=10067;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=VWXfSpgm0nFcoshv5HB8fhusJAyHwqzvzzhuTfNYcJc=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoxK7bb7T6Ov5NTGaGfcOuYTdU6x0p75YU5ySMWE57tW8
 dZ0tMR3lLIwiHExyIopsig4hKy8bjwhTOuNsxzMHFYmkCEMXJwCMJGGn4wM5+eZ5jtz202LyOK5
 yTSh3VHD5O7M7S+z3Xmmfetu6FVbzvBP0fxNiY26rH04S75K4Ebf/ntuU/iF0xkOcwX6pb32Oc8
 GAA==
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752771469; x=1784307469;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VWXfSpgm0nFcoshv5HB8fhusJAyHwqzvzzhuTfNYcJc=;
 b=dbDacIu8DgAAzZT40R61KUU3TZ5UZsFnJDbEu22XEim10fJsCHFsqu9X
 w/BYOpThbZQvHsk2RaLvXwnmFesBIfd0bL8795ppK4EBMisGW/BstydFM
 AydAj2YjvWGo1PLx3GUAQOkJlDSZp/Bfzn5VkLvI6Dqziu/ljnSkpzl+K
 FaBOXpI2RKsAwCcHIokwZ3NLV5XJhdd3zEwPXQoU+a0CfFHc+wJO5/1Bb
 SYferoDdawF2cHy9POkziTmGbsEpRS4DAP+CBnrs7wWhrmIhTo3R9s1hO
 Ktt3aLJ6qxDP8+v2y9RHp3rubfA8G4+HSN16wG7pytoTTKFDNqAsl8og7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dbDacIu8
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: don't leave device
 non-functional if Tx scheduler config fails
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

The ice_cfg_tx_topo function attempts to apply Tx scheduler topology
configuration based on NVM parameters, selecting either a 5 or 9 layer
topology.

As part of this flow, the driver acquires the "Global Configuration Lock",
which is a hardware resource associated with programming the DDP package
to the device. This "lock" is implemented by firmware as a way to
guarantee that only one PF can program the DDP for a device. Unlike a
traditional lock, once a PF has acquired this lock, no other PF will be
able to acquire it again (including that PF) until a CORER of the device.
Future requests to acquire the lock report that global configuration has
already completed.

The following flow is used to program the Tx topology:

 * Read the DDP package for scheduler configuration data
 * Acquire the global configuration lock
 * Program Tx scheduler topology according to DDP package data
 * Trigger a CORER which clears the global configuration lock

This is followed by the flow for programming the DDP package:

 * Acquire the global configuration lock (again)
 * Download the DDP package to the device
 * Release the global configuration lock.

However, if configuration of the Tx topology fails, (i.e.
ice_get_set_tx_topo returns an error code), the driver exits
ice_cfg_tx_topo() immediately, and fails to trigger CORER.

While the global configuration lock is held, the firmware rejects most
AdminQ commands, as it is waiting for the DDP package download (or Tx
scheduler topology programming) to occur.

The current driver flows assume that the global configuration lock has been
reset by CORER after programming the Tx topology. Thus, the same PF
attempts to acquire the global lock again, and fails. This results in the
driver reporting "an unknown error occurred when loading the DDP package".
It then attempts to enter safe mode, but ultimately fails to finish
ice_probe() since nearly all AdminQ command report error codes, and the
driver stops loading the device at some point during its initialization.

The only currently known way that ice_get_set_tx_topo() can fail is with
certain older DDP packages which contain invalid topology configuration, on
firmware versions which strictly validate this data. The most recent
releases of the DDP have resolved the invalid data. However, it is still
poor practice to essentially brick the device, and prevent access to the
device even through safe mode or recovery mode. It is also plausible that
this command could fail for some other reason in the future.

We cannot simply release the global lock after a failed call to
ice_get_set_tx_topo(). Releasing the lock indicates to firmware that global
configuration (downloading of the DDP) has completed. Future attempts by
this or other PFs to load the DDP will fail with a report that the DDP
package has already been downloaded. Then, PFs will enter safe mode as they
realize that the package on the device does not meet the minimum version
requirement to load. The reported error messages are confusing, as they
indicate the version of the default "safe mode" package in the NVM, rather
than the version of the file loaded from /lib/firmware.

Instead, we need to trigger CORER to clear global configuration. This is
the lowest level of hardware reset which clears the global configuration
lock and related state. It also clears any already downloaded DDP.
Crucially, it does *not* clear the Tx scheduler topology configuration.

Refactor ice_cfg_tx_topo() to always trigger a CORER after acquiring the
global lock, regardless of success or failure of the topology
configuration.

We need to re-initialize the HW structure when we trigger the CORER. Thus,
it makes sense for this to be the responsibility of ice_cfg_tx_topo()
rather than its caller, ice_init_tx_topology(). This avoids needless
re-initialization in cases where we don't attempt to update the Tx
scheduler topology, such as if it has already been programmed.

There is one catch: failure to re-initialize the HW struct should stop
ice_probe(). If this function fails, we won't have a valid HW structure and
cannot ensure the device is functioning properly. To handle this, ensure
ice_cfg_tx_topo() returns a limited set of error codes. Set aside one
specifically, -ENODEV, to indicate that the ice_init_tx_topology() should
fail and stop probe.

Other error codes indicate failure to apply the Tx scheduler topology. This
is treated as a non-fatal error, with an informational message informing
the system administrator that the updated Tx topology did not apply. This
allows the device to load and function with the default Tx scheduler
topology, rather than failing to load entirely.

Note that this use of CORER will not result in loops with future PFs
attempting to also load the invalid Tx topology configuration. The first PF
will acquire the global configuration lock as part of programming the DDP.
Each PF after this will attempt to acquire the global lock as part of
programming the Tx topology, and will fail with the indication from
firmware that global configuration is already complete. Tx scheduler
topology configuration is only performed during driver init (probe or
devlink reload) and not during cleanup for a CORER that happens after probe
completes.

Fixes: 91427e6d9030 ("ice: Support 5 layer topology")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c  | 44 ++++++++++++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++----
 2 files changed, 41 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 59323c019544..bc525de019de 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2374,7 +2374,13 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
  * The function will apply the new Tx topology from the package buffer
  * if available.
  *
- * Return: zero when update was successful, negative values otherwise.
+ * Return:
+ * * 0 - Successfully applied topology configuration.
+ * * -EBUSY - Failed to acquire global configuration lock.
+ * * -EEXIST - Topology configuration has already been applied.
+ * * -EIO - Unable to apply topology configuration.
+ * * -ENODEV - Failed to re-initialize device after applying configuration.
+ * * Other negative error codes indicate unexpected failures.
  */
 int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 {
@@ -2407,7 +2413,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
-		return status;
+		return -EIO;
 	}
 
 	/* Is default topology already applied ? */
@@ -2494,31 +2500,45 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
 	if (status) {
 		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
-		return status;
+		return -EBUSY;
 	}
 
 	/* Check if reset was triggered already. */
 	reg = rd32(hw, GLGEN_RSTAT);
 	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
-		/* Reset is in progress, re-init the HW again */
 		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. Layer topology might be applied already\n");
 		ice_check_reset(hw);
-		return 0;
+		/* Reset is in progress, re-init the HW again */
+		goto reinit_hw;
 	}
 
 	/* Set new topology */
 	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
 	if (status) {
-		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
-		return status;
+		ice_debug(hw, ICE_DBG_INIT, "Failed to set Tx topology, status %pe\n",
+			  ERR_PTR(status));
+		/* only report -EIO here as the caller checks the error value
+		 * and reports an informational error message informing that
+		 * the driver failed to program Tx topology.
+		 */
+		status = -EIO;
 	}
 
-	/* New topology is updated, delay 1 second before issuing the CORER */
+	/* Even if Tx topology config failed, we need to CORE reset here to
+	 * clear the global configuration lock. Delay 1 second to allow
+	 * hardware to settle then issue a CORER
+	 */
 	msleep(1000);
 	ice_reset(hw, ICE_RESET_CORER);
-	/* CORER will clear the global lock, so no explicit call
-	 * required for release.
-	 */
+	ice_check_reset(hw);
 
-	return 0;
+reinit_hw:
+	/* Since we triggered a CORER, re-initialize hardware */
+	ice_deinit_hw(hw);
+	if (ice_init_hw(hw)) {
+		ice_debug(hw, ICE_DBG_INIT, "Failed to re-init hardware after setting Tx topology\n");
+		return -ENODEV;
+	}
+
+	return status;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c44bb8153ad0..b31b3aa2b662 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4532,17 +4532,21 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
 			dev_info(dev, "Tx scheduling layers switching feature disabled\n");
 		else
 			dev_info(dev, "Tx scheduling layers switching feature enabled\n");
-		/* if there was a change in topology ice_cfg_tx_topo triggered
-		 * a CORER and we need to re-init hw
+		return 0;
+	} else if (err == -ENODEV) {
+		/* If we failed to re-initialize the device, we can no longer
+		 * continue loading.
 		 */
-		ice_deinit_hw(hw);
-		err = ice_init_hw(hw);
-
+		dev_warn(dev, "Failed to initialize hardware after applying Tx scheduling configuration.\n");
 		return err;
 	} else if (err == -EIO) {
 		dev_info(dev, "DDP package does not support Tx scheduling layers switching feature - please update to the latest DDP package and try again\n");
+		return 0;
 	}
 
+	/* Do not treat this as a fatal error. */
+	dev_info(dev, "Failed to apply Tx scheduling configuration, err %pe\n",
+		 ERR_PTR(err));
 	return 0;
 }
 

-- 
2.50.0.349.ga842a77808e9

