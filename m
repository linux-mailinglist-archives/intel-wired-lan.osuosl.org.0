Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5218CB54F1A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D585860E37;
	Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6oRj3bc4_2N7; Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 092DD6110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683038;
	bh=SCRq+ytvjLkKcI/pJmLsWdlSO1mwi28DW7Oz0Rh5F7A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JOz0FIah01ixKi97CYCUyoE1BT6jkxdNaVFQnHmENscJ0JCE6efVUOBshLCSeaulJ
	 lOBH6tJ93QMwNMPxRIvWTNh7RJ9h/CIoKSDtaE6JGw6Y7eFXzii+cPot9hkON86HPK
	 6Mc5uFQo3lf5I2j7XRGSqGNke2mGl9G3foC4N1Q7UgkW6+enRyd++HaT9rDwqUw57S
	 TRJD6xM4KM0uR6z51vAPjnUXjtmb+ly+JVFKWa79U3Co+XMuQCn2EmiZSkqp+J5oQH
	 J7Wrm3HuD8fk+a6pe2Fbl4vQW3vpG+UaXhLaJVaVCFHI1IedPlFAHrOzx+gZ9Ddott
	 m5P6oIso6Gg7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 092DD6110E;
	Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD38425B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40EA9405E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMZTozmMqzGp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 85D7D40600
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85D7D40600
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85D7D40600
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:13 +0000 (UTC)
X-CSE-ConnectionGUID: YXcKjuL0TyyZMApeRdx8hQ==
X-CSE-MsgGUID: Rlubvp4kST+uPCGz153wKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461402"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461402"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:12 -0700
X-CSE-ConnectionGUID: 11Gjib9mRL6YF4hqKJkWSg==
X-CSE-MsgGUID: fTbjP3f9TcWMJpR1eD8piA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131207"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:10 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 43C092FC6F;
 Fri, 12 Sep 2025 14:17:09 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:19 +0200
Message-Id: <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683033; x=1789219033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nYp2Je62JFvuEy0NyipjKgzopzn1TOBoUnG0MujtZSg=;
 b=ntjwK4qejJ9g3tDZ3zyLtwHqQhzcsB/tB+W/TdH2tfMLa+WIpuD4/+rU
 x82qv1S3t8Z0FGF3m5365x2Iibhb3cTEvw0K1xh6/SWDe3UkIZ++Ph4w0
 prGJHwBP/VyM15oslxo1gDxQgWmUcO56ldNhP6/LyiOQ4kaInCDXHDgBh
 uzQv3HSMbuOX9un7VRUIDORiUxy7Jvb5NtbJHBFwMxWsjqSjwQJR51fwI
 qJLyE+gQNH8rjpgf/9k3//6RgmNFw4WhFdAcQT2rJBND5R8hXoptFPotH
 Rk5jWobuTYv468oXQrkriziTUeUi6KtxUStiC7cbSxRLzRxdS0xjuN0Uz
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ntjwK4qe
Subject: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL assumption
 of queue NAPI manipulation
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of making assumptions in comments move them into code.
Be also more precise, RTNL must be locked only when there is
NAPI, and we have VSIs w/o NAPI that call ice_vsi_clear_napi_queues()
during rmmod.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC:Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a439b5a61a56..3f1b2158be59 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2769,16 +2769,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
  * @vsi: VSI pointer
  *
  * Associate queue[s] with napi for all vectors.
- * The caller must hold rtnl_lock.
  */
 void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
 
 	if (!netdev)
 		return;
 
+	ASSERT_RTNL();
 	ice_for_each_rxq(vsi, q_idx)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_RX,
 				     &vsi->rx_rings[q_idx]->q_vector->napi);
@@ -2799,16 +2799,16 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
  * @vsi: VSI pointer
  *
  * Clear the association between all VSI queues queue[s] and napi.
- * The caller must hold rtnl_lock.
  */
 void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
 	int q_idx, v_idx;
 
 	if (!netdev)
 		return;
 
+	ASSERT_RTNL();
 	/* Clear the NAPI's interrupt number */
 	ice_for_each_q_vector(vsi, v_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
-- 
2.39.3

