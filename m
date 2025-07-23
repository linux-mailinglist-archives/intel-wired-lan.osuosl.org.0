Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CC4B0E7BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 02:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D68DE80B21;
	Wed, 23 Jul 2025 00:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FXmeOVwd_q1x; Wed, 23 Jul 2025 00:57:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D77D680B22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753232260;
	bh=x3FL8Gxb1ISuG718kL3NTt/SlchHD/k8VwiZPUBoC/s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kw6wTlAs6pxzW7XCl7ApfFXlHtKM57F2z9OO2vBoSRLj3VYJ70/thhsc3oBbcuQ0y
	 UZM/2vObjvqbF7/+ZGj/mp/rnvWMoXsuhJ8OzPZ0VQ11MT9waUYS5Fc4QWLTF33m7b
	 9WHlFsfHw9l0R5EH9AQAyNgHKpfjoOWBZmDrL5KteBSKuUa5NydJzyi7wFuYCq9B74
	 gNxfXECNBpSp2LOl+jd2/9l30yO9ac6BLh3mIb8NNWZmkzDydW9nF0k0eeEXDhbmJc
	 x9EBjC5hFs63H4HE2VHlyuMenefmp41+Wz+8P6GKCx8diDjK8dHqC99ddQcVaQiyEr
	 inu6porlAb3hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D77D680B22;
	Wed, 23 Jul 2025 00:57:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BA08E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 315FD40825
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:57:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgEiWHsmB8SX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 00:57:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68FD44059F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68FD44059F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68FD44059F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:57:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id CF583668BB;
 Wed, 23 Jul 2025 00:57:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DD02C4CEEB;
 Wed, 23 Jul 2025 00:57:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, "David S . Miller" <davem@davemloft.net>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Sunitha Mekala <sunithax.d.mekala@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jul 2025 20:57:16 -0400
Message-Id: <20250723005722.1022962-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250723005722.1022962-1-sashal@kernel.org>
References: <20250723005722.1022962-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.15.7
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753232256;
 bh=eRGZgiepFENo5HzI1+vv24JQbE+Pcu1r/GeDZjn5IWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WCShDo4UzAVzFOmmdj85IZ3y1EGIi8Jy9TIglHdTK4AjwKvkW/xRV2ZnOvsreUltF
 WRvmGVwcb9Qev7yUHlVKhWh45twAE5xQeCat4J3/E+0+ieeNEOIJWMXUy3WEtCdX6X
 oR3M/hw+3J+GqInP4VBo36GiBwSrcrrpTdOF4+PjZq4/GNAbRwXdlk+vYDiAMGsU0C
 caRbN1bhOd5yT01Ys4+8Zhyytk1hDcPExbQ1JbA38ALrJ/rSGaqjdo2WuC+F+7g7Fe
 lQs5HuA9bf0c42dtW4UnwWS3gwmK8NcfjSK55FanbDAgXZHyCHQ0Z54ChbxkOUtKc/
 WXkVgyR1gUnuA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WCShDo4U
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.15 3/8] ethernet: intel: fix
 building with large NR_CPUS
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 24171a5a4a952c26568ff0d2a0bc8c4708a95e1d ]

With large values of CONFIG_NR_CPUS, three Intel ethernet drivers fail to
compile like:

In function ‘i40e_free_q_vector’,
    inlined from ‘i40e_vsi_alloc_q_vectors’ at drivers/net/ethernet/intel/i40e/i40e_main.c:12112:3:
  571 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
include/linux/rcupdate.h:1084:17: note: in expansion of macro ‘BUILD_BUG_ON’
 1084 |                 BUILD_BUG_ON(offsetof(typeof(*(ptr)), rhf) >= 4096);    \
drivers/net/ethernet/intel/i40e/i40e_main.c:5113:9: note: in expansion of macro ‘kfree_rcu’
 5113 |         kfree_rcu(q_vector, rcu);
      |         ^~~~~~~~~

The problem is that the 'rcu' member in 'q_vector' is too far from the start
of the structure. Move this member before the CPU mask instead, in all three
drivers.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: David S. Miller <davem@davemloft.net>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**YES**

This commit should be backported to stable kernel trees for the
following reasons:

1. **Compilation Failure Fix**: This fixes a build-time compilation
   failure that occurs with large values of CONFIG_NR_CPUS. The error
   prevents the kernel from building successfully, which is a
   significant issue for systems configured with high CPU counts.

2. **Root Cause**: The issue stems from the `kfree_rcu()` macro in
   `include/linux/rcupdate.h:1084` which includes a
   `BUILD_BUG_ON(offsetof(typeof(*(ptr)), rhf) >= 4096)` check. This
   compile-time assertion ensures that the RCU head field is within the
   first 4096 bytes of the structure.

3. **Simple and Safe Fix**: The fix is straightforward - it moves the
   `struct rcu_head rcu` member earlier in the structure, placing it
   before the `cpumask_t affinity_mask` member. This is a safe change
   because:
   - It only reorders structure members
   - The RCU head doesn't need to be at any specific location
     functionally
   - Moving it earlier reduces the offset from the structure start
   - No functional code changes are required

4. **Affects Multiple Drivers**: The issue affects three Intel ethernet
   drivers (i40e, ixgbe, fm10k), all of which are fixed identically by
   moving the rcu member earlier in their respective q_vector
   structures.

5. **Configuration-Dependent Bug**: This bug only manifests with large
   CONFIG_NR_CPUS values (likely >= 512 or higher), where the
   `cpumask_t` type becomes large enough to push the rcu member beyond
   the 4096-byte offset limit. Systems with high core counts are
   becoming more common in production environments.

6. **No Risk of Regression**: The change is minimal and doesn't alter
   any functionality. It's purely a structural reordering that maintains
   all existing behavior while fixing the compilation issue.

7. **Meets Stable Criteria**: This fix clearly meets the stable kernel
   criteria as it:
   - Fixes a real bug (compilation failure)
   - Is minimal and contained
   - Has no risk of introducing new issues
   - Affects users with legitimate configurations

The commit is an excellent candidate for stable backporting as it fixes
a real compilation issue that prevents kernel builds on systems with
large CPU counts, and the fix is trivial with no risk of regression.

 drivers/net/ethernet/intel/fm10k/fm10k.h | 3 ++-
 drivers/net/ethernet/intel/i40e/i40e.h   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 3 ++-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 6119a41088381..65a2816142d96 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -189,13 +189,14 @@ struct fm10k_q_vector {
 	struct fm10k_ring_container rx, tx;
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
+
 	cpumask_t affinity_mask;
 	char name[IFNAMSIZ + 9];
 
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *dbg_q_vector;
 #endif /* CONFIG_DEBUG_FS */
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	/* for dynamic allocation of rings associated with this q_vector */
 	struct fm10k_ring ring[] ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index c67963bfe14ed..7c600d6e66ba7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -945,6 +945,7 @@ struct i40e_q_vector {
 	u16 reg_idx;		/* register index of the interrupt */
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct i40e_ring_container rx;
 	struct i40e_ring_container tx;
@@ -955,7 +956,6 @@ struct i40e_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 	bool in_busy_poll;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index e6a380d4929bd..fb43fba5daa1f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -505,9 +505,10 @@ struct ixgbe_q_vector {
 	struct ixgbe_ring_container rx, tx;
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
+
 	cpumask_t affinity_mask;
 	int numa_node;
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
-- 
2.39.5

