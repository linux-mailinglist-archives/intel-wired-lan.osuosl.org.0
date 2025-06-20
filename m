Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B752AE20F8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 19:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 565BA60781;
	Fri, 20 Jun 2025 17:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oYqiHNwgsmec; Fri, 20 Jun 2025 17:32:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD40560EFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750440728;
	bh=7xUwAT2l/nmYbrQc87856wHojuFg8y4GLF1w9dGt8EQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I0yZimiPKG9TkKsLDbZWSifcUXmM7TYxMh1qIghRBznaBHvx1odMDUitAiqxw3Ho9
	 c1zmcdiXuql8HuYGO6EI0DvAXYRmLPjhHnPqOeR6hOY5+PX/UjzsTy1kMlkeX5aXTK
	 k/a/S8Ijtjr7+1PLkYgS8m8EcWwg5B7n3KyZA4YPIXU1ECaqDAYe/vkrdiDi1TLrgZ
	 0eSaG36gYhxySPAUtZ+WVNL3sxbLPrLvuoTTPs7H/f2eAv0SiSIjBSpeqz9IkYueDb
	 vhe7vIqatd6D8rQvYr81Yx+CW0ydSbSGTi07sxoXyAOU/yjnPtj1m8FcHBzmUBcoiG
	 AaQMj4Wjv1QzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD40560EFF;
	Fri, 20 Jun 2025 17:32:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E961154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24E5E6076D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LY7Sn-BuADox for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 17:32:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=arnd@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 679D56075F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 679D56075F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 679D56075F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:32:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7F9325C5919;
 Fri, 20 Jun 2025 17:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 034FBC4CEE3;
 Fri, 20 Jun 2025 17:32:00 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Simon Horman <horms@kernel.org>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 20 Jun 2025 19:31:24 +0200
Message-Id: <20250620173158.794034-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750440724;
 bh=VQXf0OScI8qbzE6+t1uRec3PMKWSQ3rs/L0oXJEmBy4=;
 h=From:To:Cc:Subject:Date:From;
 b=gc4J2vDd/ffRYTMRHW4o0khYZmGwctSzs9Ew9Fq+/O//m7NEW5VW2okaWU52ZGtdl
 ncGNuqliiFIqFPxtoMN98vlJPl7LU2aVocrQr8/vbZPPG+2R1JraSesXZbgvSZkdB3
 0iaC+MnTHGNgbnZW3SsYuSBpbiN8UHh/SuKyINOY7z9tZyxxCzwbkkbU70AIfPIpSZ
 fzyP+eEQFnRSnPuZ5njwZI8DSIHmj19rmUpDRqN4Amx/YSI+10oDpdr1ebTuKcinlC
 C1h+q8T2z8rlDuLBpncAT+HAYwAXJ8rk+cqd028HIcEGl/k8ZE7ZSYwfsjH7JFIcOT
 /BSrPmqHQl3nQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gc4J2vDd
Subject: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building with
 large NR_CPUS
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
---
v2: move rcu to just after the napi_struct [Alexander Lobakin]
---
 drivers/net/ethernet/intel/fm10k/fm10k.h | 3 ++-
 drivers/net/ethernet/intel/i40e/i40e.h   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 3 ++-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 6119a4108838..65a2816142d9 100644
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
index 54d5fdc303ca..c429252859d3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -946,6 +946,7 @@ struct i40e_q_vector {
 	u16 reg_idx;		/* register index of the interrupt */
 
 	struct napi_struct napi;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct i40e_ring_container rx;
 	struct i40e_ring_container tx;
@@ -956,7 +957,6 @@ struct i40e_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 	bool in_busy_poll;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index c6772cd2d802..3f9521d4e899 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -507,9 +507,10 @@ struct ixgbe_q_vector {
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

