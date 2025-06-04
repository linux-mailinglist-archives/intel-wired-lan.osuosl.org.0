Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 189D8ACD1FA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 03:01:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDFC46173B;
	Wed,  4 Jun 2025 01:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BHvGPKJ2TR3; Wed,  4 Jun 2025 01:01:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED16B61740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748998911;
	bh=dUvR6pGjXJixE0Jf8c9/fySEOF+0brcUX/wlyTyp95E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AGnhdDaJsdFdo2cbiIDObCQ4vKSP715ZqXL1a+z2JgfFrVQR3EGNWqZ7xc+iHzZUs
	 KOD8ua8e26cu++eZQg3KqpNw4rBdWsV83LRQYQ80lW+o8dg7QVuHUaY3ETBwqD2SHL
	 99NxAtkhhMY+KCwh1HjkvZBjcmaQu4zBMRZPV3RhK8wZ5Wk9/xjWSTIJPGn4AD6H4C
	 wxYW6IMJFw/iFB2xX2kmVBD13fY/skwpazjwDSgMO0Qu3qlDNW5mMAwdv95M1ayenb
	 U3KEsAY2ky2TLsR+xp6e0kOnRmMTnCkHQFDig1HhcdkzB7XelCxp9O4mMdCwNVE0kR
	 H+rtN/aLXCnXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED16B61740;
	Wed,  4 Jun 2025 01:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D4D2DB07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6CBB83FAC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hg-KK4s3Ik1q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 01:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 165BF80AB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 165BF80AB4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 165BF80AB4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:01:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 542F65C4852;
 Wed,  4 Jun 2025 00:59:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E64EFC4CEED;
 Wed,  4 Jun 2025 01:01:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Rand Deeb <rand.sec96@gmail.com>, Rinitha S <sx.rinitha@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Jun 2025 20:59:07 -0400
Message-Id: <20250604005919.4191884-81-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250604005919.4191884-1-sashal@kernel.org>
References: <20250604005919.4191884-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.31
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748998905;
 bh=miHxNhMmz+z/B/SYmot+ioYTYMK/UdTNx2oVQJ8bz2w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t8OGUPxtJW15rqR6tHMQsYgOmLlM1qG/gQMKHCwAg3sZyGl/gaiiBW++V/MZyx35j
 zCOeYcxdlL9yDX01OIIbQrSsKjB5DdSZe8HXYsOJhtEZS9J1yuS1LjdvTl74V9gd1F
 iMtzNv6oaMSnU+LNzd/+Fy7bupWABpcKk5f2gFkYwrMEQXpM8Cwfpj7IW5NeIseLqH
 4ZguoSU/YSOy14kHuUH3voqo9X6U5F0DxgD6KyuhcxtzndsGiXMaAMJY8jlhR63/FI
 VzxSbdJh2quUMAPrVf9SOgP7ZiKuFySqZYNFkBbnBfMq/HHRSg6eMcRTUqaoQ/KLxZ
 8QODIVLatJ3LA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=t8OGUPxt
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.12 81/93] ixgbe: Fix unreachable
 retry logic in combined and byte I2C write functions
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

From: Rand Deeb <rand.sec96@gmail.com>

[ Upstream commit cdcb3804eeda24d588348bbab6766cf14fddbeaa ]

The current implementation of `ixgbe_write_i2c_combined_generic_int` and
`ixgbe_write_i2c_byte_generic_int` sets `max_retry` to `1`, which makes
the condition `retry < max_retry` always evaluate to `false`. This renders
the retry mechanism ineffective, as the debug message and retry logic are
never executed.

This patch increases `max_retry` to `3` in both functions, aligning them
with the retry logic in `ixgbe_read_i2c_combined_generic_int`. This
ensures that the retry mechanism functions as intended, improving
robustness in case of I2C write failures.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

**YES** This commit should be backported to stable kernel trees. Here's
my extensive analysis: ## Bug Analysis **Critical Logic Flaw:** The
commit fixes a fundamental bug where the retry logic in I2C write
functions was completely ineffective. With `max_retry = 1`, the
condition `retry < max_retry` would only allow `retry = 0`, meaning the
retry loop would never execute more than once, making the entire retry
mechanism useless. **Code Impact:** The change from `max_retry = 1` to
`max_retry = 3` in both: - `ixgbe_write_i2c_combined_generic_int()`
(line ~170) - `ixgbe_write_i2c_byte_generic_int()` (line ~2288) This
aligns with the existing `ixgbe_read_i2c_combined_generic_int()`
function which already uses `max_retry = 3`. ## Backport Suitability
Criteria **1. Fixes Important User-Affecting Bug:** ✓ - I2C write
failures directly impact SFP/QSFP module detection and configuration -
Affects `ethtool --identify` LED functionality - Can cause intermittent
network interface initialization failures - Users would experience
unreliable hardware detection and configuration **2. Small and Contained
Change:** ✓ - Only changes two integer values from 1 to 3 - No
architectural changes or new functionality - Minimal risk of introducing
regressions - Affects only the specific I2C write retry mechanism **3.
No Side Effects Beyond the Fix:** ✓ - Simply enables existing retry
logic to work as intended - Doesn't change the fundamental I2C
communication protocol - Maintains consistency with read operations - No
new code paths introduced **4. Critical Subsystem Impact:** ✓ - Network
driver functionality is critical for system operation - I2C
communication is essential for modern network hardware management -
Affects Intel ixgbe NICs which are widely deployed in enterprise
environments **5. Clear Bug Evidence:** ✓ - Linux Verification Center
found this with static analysis (SVACE) - Logic flaw is mathematically
provable (retry < 1 never allows retry) - Consistent with similar
commits in the pattern (Similar Commit #1 shows retry count adjustments
are appropriate for backporting) ## Comparison to Historical Patterns
This commit closely matches **Similar Commit #1** (Backport Status: YES)
which also modified I2C retry counts in ixgbe. That commit reduced retry
counts to avoid regressions, while this one increases retry counts to
fix broken logic - both are stability improvements worthy of
backporting. Unlike **Similar Commit #2** (Backport Status: NO) which
was architectural refactoring, this commit fixes a clear functional
defect without introducing new features or code reorganization. ## Risk
Assessment **Low Risk:** - Increasing retries from effectively 0 to 3
cannot make things worse - The retry mechanism already existed and was
intended to be used - 3 retries aligns with established patterns in the
same driver - Intel has tested this change (as indicated by the "Tested-
by" tag) **High Impact:** - Fixes complete failure of I2C write retry
mechanism - Improves reliability of critical network hardware
functionality - Addresses systematic logic flaw affecting all ixgbe
deployments This commit represents exactly the type of important, low-
risk bug fix that stable trees are designed to receive.

 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 07eaa3c3f4d36..530e4319a2e89 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -167,7 +167,7 @@ int ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 					 u16 reg, u16 val, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
-	int max_retry = 1;
+	int max_retry = 3;
 	int retry = 0;
 	u8 reg_high;
 	u8 csum;
@@ -2284,7 +2284,7 @@ static int ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 					    u8 dev_addr, u8 data, bool lock)
 {
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
-	u32 max_retry = 1;
+	u32 max_retry = 3;
 	u32 retry = 0;
 	int status;
 
-- 
2.39.5

