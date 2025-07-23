Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7D1B0E7DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 02:59:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F21EB40F7E;
	Wed, 23 Jul 2025 00:59:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JPmdnkdKDrvI; Wed, 23 Jul 2025 00:59:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CBCF40FC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753232374;
	bh=Scxo/Ce7FKmaBE2WyDNLajp9Rlo6/wL57WwRolVgK3w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UVvUfBmaBldG7V77mGiN2z1oBiKskMxo0YujxP3oG6JYbVGYc9VYZt26kOBF8/hZN
	 W8n3vYDrLeYOd3gJ1HhHMVdn8saBqPd6a9IPFubExk7EPzUINFvFVq6IKpjDkz9Loj
	 dV5OJtyPEmFBe+5i6Vs2+O7cz9bcuwUOUwKPtIYZgkrdSOE6DDodyHCAvn+b5wWyWc
	 n5CZNb1OzX6LlfazV3mbfpmRzVYmhHb+fQ1RV0yNvMh4bNhKTzymYTkeOO2GMsTEVB
	 549A/0NdISVih6tRQQA6tvXnppV4wUlY7LYj93Fl1evUtjMJHwT7qx1KMw0jCSno7j
	 EAtrhYa+EUHrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CBCF40FC6;
	Wed, 23 Jul 2025 00:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78211DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E8BD8072A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3j_fjTJ_R2Ck for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 00:59:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8391880726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8391880726
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8391880726
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A8A06668BB;
 Wed, 23 Jul 2025 00:59:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD82BC4CEEB;
 Wed, 23 Jul 2025 00:59:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, "David S . Miller" <davem@davemloft.net>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Sunitha Mekala <sunithax.d.mekala@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jul 2025 20:59:24 -0400
Message-Id: <20250723005925.1023630-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.240
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753232370;
 bh=hzBxAooqxaH73dOWBczz2r0GKTXKr+B5PW7NY3kPFUE=;
 h=From:To:Cc:Subject:Date:From;
 b=TxVLgB7p5A30z3eBe3aq9a+HYs/spAMn6oCGrFsnaosqF46s1AhtYQixLIFXcxp1d
 XytloXlxeZClZJGe86C/DxLY+A6yp/Cy8Hz4xFLjrPi8661IGCtZCB7JDdvQtoZ19H
 HwHmxgGcUY+vkcqv7tHp/ZD0vaXCF0dV1UWNRbrE/FrrrqqIWOpC7zs2AzGE/aZEGJ
 Sc9k5Ia+w2z+tSDInUWWMq1koaGgRZO+YvNHpMlHIS5ilyBKZUwLtENFfidJ+bOfGS
 bP4JTkjYBCJNr0+/BXjW3TgvXOMTaZLi1zw/M6nNhID4CcrNJJ7WeaSaaED4t+BlT0
 9tkPCu6lIkY8g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TxVLgB7p
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.10 1/2] ethernet: intel: fix
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
index dd630b6bc74bd..add9a3107d9a0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -863,6 +863,7 @@ struct i40e_q_vector {
 	u16 reg_idx;		/* register index of the interrupt */
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct i40e_ring_container rx;
 	struct i40e_ring_container tx;
@@ -873,7 +874,6 @@ struct i40e_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 } ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 18251edbfabfb..3ea7095fc04f5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -457,9 +457,10 @@ struct ixgbe_q_vector {
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

