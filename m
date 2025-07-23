Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE2AB0E7D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 02:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A07180B2A;
	Wed, 23 Jul 2025 00:59:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbiJ9jS4007j; Wed, 23 Jul 2025 00:59:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F4CF80B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753232344;
	bh=lvbT9RhvGOlUEO7Vrw1xLLIZUdua5DxqA2+Qx6KruXA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IIst2WhHSGV8tYUpw0s3bc8jgOQ6K1L4F8G/INmZ4rmJWLG6CTNNQ6X2Mdo+taWrO
	 5dAhITnqHJdIVpCsiK5LAHoB1IKwKiVuq6WHQqCYPXUaLLMo/qLOifztD0byBb5uRs
	 OJKkpNtG9w+05W/weZTH9u4HjR8mLAzv49yEMD16aVaOOz0gh4JPDlVHUw+s3Nmj1d
	 HV3u6E7YnfH/N2sijjWjX6lWqhfkeTm10SRg5B1ubAelqvwqdv9fjT0TdSfuNQWVXF
	 zuQCssCpDeEkJzi22kEABHf2RPw4cEh4MbtxKTC7KCIH/OnxYLj+DyZKIHjbDggLZm
	 vdOr615R8aueg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F4CF80B26;
	Wed, 23 Jul 2025 00:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ECB1DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2467180B21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SGGD1yR2hYpM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 00:59:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5B59980329
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B59980329
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B59980329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 00:59:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1A33244748;
 Wed, 23 Jul 2025 00:59:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB5DC4CEF1;
 Wed, 23 Jul 2025 00:58:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>, "David S . Miller" <davem@davemloft.net>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Sunitha Mekala <sunithax.d.mekala@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org
Date: Tue, 22 Jul 2025 20:58:55 -0400
Message-Id: <20250723005857.1023488-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.146
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753232342;
 bh=xpxC0HaQ5iKS9/OpNzFrREbtMWbZmy6Ch/hPvHHNVtA=;
 h=From:To:Cc:Subject:Date:From;
 b=ExAOSw0ZvI6xBpIPEn588QumKE9PsJ1/z8zNLDkrp4BmaPV1Z08E/tuvvbEJpTTV5
 3XxWkK/lL/QZ4yTtcuWqAnLZMkBOCxkDGYgqdN6ZKeC7+TgaqVomXrsRIQPtbqbdIn
 5F2O4gdmhbGKJdTUMjGVlIM5wboZiKs300+/CtRJD8WB7ItrX7sGlRziFsxhIQfCw8
 +AgJAHDOQzk181SigURU1egockHufH62IBnvPmxyB6K0szQuXxh9aerwD9Ps8/89PC
 ROJ/rhc0Ap+KK6BpTMQRIpy1ThWT6OMZHgmMqGOC3B41Z+Jb4B4NB5eImnv6cvhYqI
 ENKTV3fhTHZ4g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ExAOSw0Z
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.1 1/3] ethernet: intel: fix
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
index 22ac8c48ca340..61590e92f3abc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -980,6 +980,7 @@ struct i40e_q_vector {
 	u16 reg_idx;		/* register index of the interrupt */
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct i40e_ring_container rx;
 	struct i40e_ring_container tx;
@@ -990,7 +991,6 @@ struct i40e_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 	bool in_busy_poll;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 2bf387e52e202..f49b99b175ef4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -498,9 +498,10 @@ struct ixgbe_q_vector {
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

