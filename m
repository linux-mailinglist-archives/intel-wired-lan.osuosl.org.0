Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD21ACD26E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 03:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0196860AC0;
	Wed,  4 Jun 2025 01:07:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id niGy5LbszQuH; Wed,  4 Jun 2025 01:07:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1068060E5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748999229;
	bh=wRQP6LeZgkr8C14q812qEpFcreGX3NdTH/B2ZRj8G94=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sRY7bKKgo/gKTTGCCzoYU4lkvXm+BrNL1tsMQH0yGEuUEvc2D8J3+6XZa31V+BWr1
	 FE4j9KV5WiEqhWQx5YAtZWfxf8GIBzBtQdEsFzDu4DRS3piz+6SoP9NhmAIEiW5iGx
	 FmfYXwzZ4nYj0i/L/0WchsC2ZJvboLHL9bfmLtdPoseUTpEUoheVYhmetp1jrZfSVV
	 6nwCA0YYOMvwnCGXxyiZZZkJXyI8AUMIMRORKL5MmGIgVQOhGl+X1BhEjiXufNAXlr
	 YgPaq7GljHHTB4cJTZwuYttCvosWhd8v7t/QLT9UObXggHKTs9U5XmeGgxfuMUcBES
	 puIJGnPbbkxAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1068060E5F;
	Wed,  4 Jun 2025 01:07:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A67E8B07
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9875860E5F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:07:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t5sjJqCIRNxp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 01:07:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5E7E60AC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5E7E60AC0
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5E7E60AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 01:07:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C56C3629E7;
 Wed,  4 Jun 2025 01:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59FDCC4CEF1;
 Wed,  4 Jun 2025 01:07:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Kyungwook Boo <bookyungwook@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Rinitha S <sx.rinitha@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Jun 2025 21:06:20 -0400
Message-Id: <20250604010620.6819-27-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250604010620.6819-1-sashal@kernel.org>
References: <20250604010620.6819-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.237
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748999225;
 bh=f9pe371bfVM+NCLlwvH8RUcb1sRpdDFn/m/OdfgMml8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ifWEptMQbyNfy/Tr/cfZAxdv3GXA4Rk96Sk6/0iDRFoyjSAnXG26xUJN3XVLq3R7H
 Yqcn+UlZm3GahPcqT9R771qCYUC1ZUKbsCNdBvobr5tgl2lkhEYcCwF5cf1/xmpB6i
 4U7if8V6QOP+i4PcTvTmJ+BpV+GysoM4V4bcdvza8EfLLQD2FvpWyE3cXOfnIm+mcL
 Z7Hvk0eOnfmduTounBYg9A/fOeQHVfvkUXoje2rqaB5PCBL3/6doU5R0m3AB7RsYht
 P5KiLbOxj7lnKvAUyjKLxkbamMbykeXQc0Y54/7+sUxSiHLQLn8os8G/o4rkdj94sC
 mPmcHQ65bfXjA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ifWEptMQ
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.10 27/27] i40e: fix MMIO write
 access to an invalid page in i40e_clear_hw
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

From: Kyungwook Boo <bookyungwook@gmail.com>

[ Upstream commit 015bac5daca978448f2671478c553ce1f300c21e ]

When the device sends a specific input, an integer underflow can occur, leading
to MMIO write access to an invalid page.

Prevent the integer underflow by changing the type of related variables.

Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

**YES** This commit should be backported to stable kernel trees. Here's
my extensive analysis: ## Analysis of Code Changes The commit changes
variable types in `i40e_clear_hw()` from unsigned (`u32`) to signed
(`s32`) for: 1. `num_pf_int` - number of PF interrupts 2. `num_vf_int` -
number of VF interrupts 3. `i` - loop counter variable **Critical
Security Issue**: The problem occurs when hardware registers contain
malicious values where `num_pf_int` or `num_vf_int` could be 0 or 1. In
the loops at lines 852-853 and 858-859: ```c for (i = 0; i < num_pf_int
- 2; i++) wr32(hw, I40E_PFINT_DYN_CTLN(i), val); ``` If `num_pf_int` is
0 or 1, then `num_pf_int - 2` becomes a large positive number due to
unsigned integer underflow (0xFFFFFFFE or 0xFFFFFFFF), causing the loop
to iterate billions of times and write to invalid MMIO addresses,
leading to system crashes or potential security vulnerabilities. ##
Comparison with Similar Commits This fix follows the **exact same
pattern** as Similar Commit #2 (fc6f716a5069), which was marked **YES**
for backporting. That commit addressed the same class of vulnerability
in the same function: - **Similar Commit #2**: Added bounds checking (`j
>= base_queue`, `j >= i`) to prevent underflow in queue/VF calculations
- **Current Commit**: Changes variable types to signed to prevent
underflow in interrupt calculations Both fixes address **integer
underflow vulnerabilities in `i40e_clear_hw()`** that can lead to **MMIO
writes to invalid memory pages**. ## Backport Suitability Criteria ✅
**Fixes important security bug**: Prevents system crashes and potential
memory corruption ✅ **Small, contained change**: Only changes variable
types, no logic changes ✅ **Minimal side effects**: Type changes are
safe and don't affect functionality ✅ **No architectural changes**:
Simple type fix ✅ **Critical subsystem**: Network driver, but change is
isolated ✅ **Clear commit message**: Explicitly describes the security
issue ✅ **Follows stable rules**: Important security bugfix with minimal
risk ## Historical Context The vulnerability was introduced in commit
838d41d92a90 ("i40e: clear all queues and interrupts") from 2014. A
related fix (fc6f716a5069) was already applied for similar underflow
issues in the same function and was backported. This commit completes
the fix by addressing the remaining underflow vectors. ## Risk
Assessment **Risk: MINIMAL** - This is a simple type change that: -
Makes signed arithmetic behave correctly - Prevents undefined behavior
from unsigned underflow - Has no functional impact on normal operation -
Only affects error conditions with malformed hardware registers The fix
is **essential for security** and has **virtually zero regression
risk**, making it an ideal candidate for stable backporting.

 drivers/net/ethernet/intel/i40e/i40e_common.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 59a467f7aba3f..430f236be6538 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1320,10 +1320,11 @@ i40e_status i40e_pf_reset(struct i40e_hw *hw)
 void i40e_clear_hw(struct i40e_hw *hw)
 {
 	u32 num_queues, base_queue;
-	u32 num_pf_int;
-	u32 num_vf_int;
+	s32 num_pf_int;
+	s32 num_vf_int;
 	u32 num_vfs;
-	u32 i, j;
+	s32 i;
+	u32 j;
 	u32 val;
 	u32 eol = 0x7ff;
 
-- 
2.39.5

