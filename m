Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAEEAE19AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 13:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B64EF40E04;
	Fri, 20 Jun 2025 11:11:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVbqyXBps-AY; Fri, 20 Jun 2025 11:11:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06F3340E05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750417910;
	bh=t9XN626pIJg4Kzne6ifX6VlI/rjTvVqYEyVe5MIWj+U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E4d4ffgaEO1htBHI8NFUEzzaI+NFid6nH6IwTbQdqSc751sAViQhGNAMHEpVuzGgu
	 nTudrifIybKV3bGFHnVgRqXskm8hlLwYz/DSAonmDPP3pr42JEzIHBcbENBgyeQAMx
	 0bY1lWU7631dtSG2fFKiwB+92T8Gl9BTbIQ2GSBjjBW9aT6rxBpJ4R2hII12Sc6n8D
	 Sg69W6+04m6dxC0XOOOdrPjf+HUSl63EPOE3pLw8S0qmCRlz9Inw+MdywEVOaxLkSU
	 hc1d8M5IwXPDWDckW+xphW5NkFUcb1pdBBb1NNtsFE5bjvyrrDx99ucbPqIHuWDb2R
	 Wul3DsYHPMe8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06F3340E05;
	Fri, 20 Jun 2025 11:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D4801154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5E044007C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dYQh79Q0ehv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 11:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=arnd@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 072ED40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 072ED40024
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 072ED40024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 11:11:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5F7B761ADF;
 Fri, 20 Jun 2025 11:11:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9588EC4CEEE;
 Fri, 20 Jun 2025 11:11:43 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 20 Jun 2025 13:11:17 +0200
Message-Id: <20250620111141.3365031-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750417906;
 bh=5X5JisUrRK/k3YVJmaiudJluyTdp1KylB9TqvN8D1LY=;
 h=From:To:Cc:Subject:Date:From;
 b=W90dgTwB6eCGhJ8arE2TPezjW/8Lnf+JBLF+y839X7btEpKNtA+jUneqroPdCAhLI
 i0QC3ceKzfoJX67GKMx9TZ5qIzkuSCJPJz2qfezbnq7363g6tI7m1rSRMHv7qrUxA+
 7xe+ZGTmeK7LkBAnV7XDLr3MWQ54mlADQ7DoUWjBoYqmUdFjWSr+5p7mtamp1urwM5
 SxCiAlC4f6w2eJaq1dnH67mb8hdRt5Q7vazQcBZPUioGFspHZA1mrTmNJtFIOrwBTS
 cKC5QrEr3Lj3YCnCF9z1V4Sd+GxK8HTeAsAr2ALm/L7DuBH7Oyw57On/B6tdFO6c5j
 VilAvsqOtjHeA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=W90dgTwB
Subject: [Intel-wired-lan] [PATCH] ethernet: intel: fix building with large
 NR_CPUS
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
 drivers/net/ethernet/intel/fm10k/fm10k.h | 2 +-
 drivers/net/ethernet/intel/i40e/i40e.h   | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k.h b/drivers/net/ethernet/intel/fm10k/fm10k.h
index 6119a4108838..757a6fd81b7b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k.h
@@ -187,6 +187,7 @@ struct fm10k_q_vector {
 	u32 __iomem *itr;	/* pointer to ITR register for this vector */
 	u16 v_idx;		/* index of q_vector within interface array */
 	struct fm10k_ring_container rx, tx;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct napi_struct napi;
 	cpumask_t affinity_mask;
@@ -195,7 +196,6 @@ struct fm10k_q_vector {
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *dbg_q_vector;
 #endif /* CONFIG_DEBUG_FS */
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	/* for dynamic allocation of rings associated with this q_vector */
 	struct fm10k_ring ring[] ____cacheline_internodealigned_in_smp;
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 54d5fdc303ca..91aa88366c05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -944,6 +944,7 @@ struct i40e_q_vector {
 
 	u16 v_idx;		/* index in the vsi->q_vector array. */
 	u16 reg_idx;		/* register index of the interrupt */
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct napi_struct napi;
 
@@ -956,7 +957,6 @@ struct i40e_q_vector {
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
 
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 	bool in_busy_poll;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index c6772cd2d802..c6cfab0ff9d3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -505,11 +505,11 @@ struct ixgbe_q_vector {
 				 * represents the vector for this ring */
 	u16 itr;		/* Interrupt throttle rate written to EITR */
 	struct ixgbe_ring_container rx, tx;
+	struct rcu_head rcu;	/* to avoid race with update stats on free */
 
 	struct napi_struct napi;
 	cpumask_t affinity_mask;
 	int numa_node;
-	struct rcu_head rcu;	/* to avoid race with update stats on free */
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
-- 
2.39.5

