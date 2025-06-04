Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B69AACD22A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 03:03:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2853761691;
	Wed,  4 Jun 2025 01:03:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ra4NOr5NSjz1; Wed,  4 Jun 2025 01:03:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C2061728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748999030;
	bh=qvyUXRbpnp6zCx9Sv+VauFfGG1mq4Mx9+fxQqCd2zXM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=12VbPN/RyW5uOlNTqjqIcd+fYRGRD8muyxl2h9a8T323cojsr42X3nw9x0N14Xuhp
	 7mcuV5WSFh9iV7Z9DrOExqVRBYvhbA0vIpGPWuxH9RgkCZQrv1D2y6AbbqdseYrlwo
	 Fc0smX3VMmjjJ+Bd/QGW5kwdbETV1Nlgi50jARz9Zzb3xTw6shHxoXeAlV6rfmdaGs
	 X+J1onxWeM3M1G+YEGyNlG29IDyou7hQ/tbugvjyE/VjNbaXzhh9xVFhaWNhIner7t
	 QOoB/VgVryeJ0JIjz2496gza+6/moWwNBoATyR4CSDURGcB0mme5MDIqDp0hbmFauZ
	 eW2ro4xHiJYdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C2061728;
	Wed,  4 Jun 2025 01:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 996BDB07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B33F83FF5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:03:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ib5a1mM5x7Wt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 01:03:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9796C84000
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9796C84000
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9796C84000
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:03:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id AD0E7629E5;
 Wed,  4 Jun 2025 01:03:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1928AC4CEEF;
 Wed,  4 Jun 2025 01:03:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, Simon Horman <horms@kernel.org>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Jun 2025 21:02:04 -0400
Message-Id: <20250604010213.3462-53-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250604010213.3462-1-sashal@kernel.org>
References: <20250604010213.3462-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.92
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748999026;
 bh=+YZpJG+r4L8oEtEpcYEUfYxPrOC3gNtxNQRubkCq43s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=edxU4pp1oPAYWXzeG6i59hirDIooFu/WYGo+vokb1Uu+igK5+mEjIASpIMMJ/q7BV
 m7vUx/xmv7WHmiIBu2CDDDJZebDs7X0uoyX3wdadEmCpGOnt4ySGhAWCbd9P37mv0u
 FeseTUU1WYlAKHnS0HeooSmVVh43H0Ru1fkpl9B1p839BbVrvDNO8aotP8TJi+YF2X
 5TlhBXvp+LHhq+ZDtjxt1ZIg+r8m4S91Naq1LRl00yPIkhbIWXiXPEGyCz16zXxH6u
 RgUdM0dODUVmnqEYneVZjj7Qowh5fJVZ+mx+H2zMFjzBAdT6R1fG+FCwiEn+uN9T9u
 nlD6H4NHGUmWQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=edxU4pp1
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.6 53/62] ice: fix check for
 existing switch rule
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

From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>

[ Upstream commit a808691df39b52cd9db861b118e88e18b63e2299 ]

In case the rule already exists and another VSI wants to subscribe to it
new VSI list is being created and both VSIs are moved to it.
Currently, the check for already existing VSI with the same rule is done
based on fdw_id.hw_vsi_id, which applies only to LOOKUP_RX flag.
Change it to vsi_handle. This is software VSI ID, but it can be applied
here, because vsi_map itself is also based on it.

Additionally change return status in case the VSI already exists in the
VSI map to "Already exists". Such case should be handled by the caller.

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

**YES** This commit should be backported to stable kernel trees. Here's
my detailed analysis: ## Bug Fix Nature This commit fixes a legitimate
bug in the Intel ice driver's switch rule handling logic. The issue
involves incorrect VSI (Virtual Station Interface) identification when
checking for existing switch rules, which can lead to: 1. **Incorrect
duplicate detection**: Using `fwd_id.hw_vsi_id` instead of `vsi_handle`
for comparison 2. **Inconsistent error handling**: Returning `0` instead
of `-EEXIST` when a VSI already exists in the VSI map ## Code Analysis
### Primary Fix (Line 3149): ```c -if (cur_fltr->fwd_id.hw_vsi_id ==
new_fltr->fwd_id.hw_vsi_id) +if (cur_fltr->vsi_handle ==
new_fltr->vsi_handle) ``` This change fixes the comparison logic to use
`vsi_handle` (software VSI ID) instead of `hw_vsi_id` (hardware VSI ID).
The commit message explains that `hw_vsi_id` only applies to `LOOKUP_RX`
flag, while `vsi_handle` is the correct identifier since `vsi_map` is
based on it. ### Secondary Fix (Line 5981): ```c -return 0; +return
-EEXIST; ``` This change ensures consistent error reporting when a VSI
already exists in the VSI map, allowing callers to handle this case
appropriately. ## Comparison with Similar Commits Looking at the
provided similar commits: - **Similar Commit #2** (Status: YES): Also
fixes switchdev rules book keeping with proper VSI handling - **Similar
Commit #5** (Status: YES): Removes unnecessary duplicate VSI ID checks
Both approved commits deal with VSI identification and handling issues,
similar to this commit. ## Backport Suitability Criteria ✅ **Fixes a bug
affecting users**: VSI rule management is critical for network
functionality ✅ **Small and contained**: Only 4 lines changed across 2
functions ✅ **No architectural changes**: Simply corrects existing logic
✅ **Minimal regression risk**: Changes are targeted and well-understood
✅ **Critical subsystem**: Network drivers are important for system
stability ✅ **Clear side effects**: The changes have predictable
behavior improvements ## Risk Assessment - **Low risk**: The changes are
surgical fixes to specific comparison logic - **Well-tested**: The
commit includes "Tested-by" tag from Intel QA - **Subsystem-confined**:
Changes are isolated to ice driver switch handling - **Backwards
compatible**: No API or behavioral changes for users The commit follows
stable tree rules perfectly: it's an important bugfix with minimal risk
that improves the reliability of network switch rule handling in the
Intel ice driver.

 drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 19f730a68fa21..ac004ef1d724d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3024,7 +3024,7 @@ ice_add_update_vsi_list(struct ice_hw *hw,
 		u16 vsi_handle_arr[2];
 
 		/* A rule already exists with the new VSI being added */
-		if (cur_fltr->fwd_id.hw_vsi_id == new_fltr->fwd_id.hw_vsi_id)
+		if (cur_fltr->vsi_handle == new_fltr->vsi_handle)
 			return -EEXIST;
 
 		vsi_handle_arr[0] = cur_fltr->vsi_handle;
@@ -5991,7 +5991,7 @@ ice_adv_add_update_vsi_list(struct ice_hw *hw,
 
 		/* A rule already exists with the new VSI being added */
 		if (test_bit(vsi_handle, m_entry->vsi_list_info->vsi_map))
-			return 0;
+			return -EEXIST;
 
 		/* Update the previously created VSI list set with
 		 * the new VSI ID passed in
-- 
2.39.5

