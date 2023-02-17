Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6231B69B536
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 23:05:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C746841186;
	Fri, 17 Feb 2023 22:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C746841186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676671511;
	bh=MUxZ0kuyxq3/wNZG7dNsTCXVrPETNDxk5kwYhJ4vhSQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=k4VPXZ2kUA0cBJWBQaJaFo/eEsrOLfYDLmXVjDWfc4mkPki/NuhUZoGZDrVawp1Qw
	 tKP4nknWPH+BiPpNgsBN2ItqEOutF1u/7ro+RzBQtci66M+clzIUei003JCgakSpK1
	 +Gisvh6IeLwJ8sXAJyvyHw1E8jGGofTeIOC8LrClWlbxIvcuP+Q7gldrwDLVe+J1ek
	 fCWng8YOmVGmFksAn7Z05qjX14i6ogb5XAbKPlpsl34W5k4Rg8RJ4lQj8qgHYwP1L8
	 kqmW3V7i7Pt6hC6gHD9PW2y6JLiDDXuWuGzSfjk8NFMkyCRdJrLK88hYhafi39UuJg
	 /C/4/4X8fFW8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B14ny0Zx1G7e; Fri, 17 Feb 2023 22:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B284340124;
	Fri, 17 Feb 2023 22:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B284340124
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65E231BF28F
 for <intel-wired-lan@osuosl.org>; Fri, 17 Feb 2023 22:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F8A840124
 for <intel-wired-lan@osuosl.org>; Fri, 17 Feb 2023 22:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F8A840124
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQHVDQM-0JQM for <intel-wired-lan@osuosl.org>;
 Fri, 17 Feb 2023 22:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98B82400F8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98B82400F8
 for <intel-wired-lan@osuosl.org>; Fri, 17 Feb 2023 22:05:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="418323016"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="418323016"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 14:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="664011441"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="664011441"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga007.jf.intel.com with ESMTP; 17 Feb 2023 14:05:03 -0800
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 06B8C37E3E;
 Fri, 17 Feb 2023 22:05:02 +0000 (GMT)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 17 Feb 2023 23:03:59 +0100
Message-Id: <20230217220359.987004-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676671505; x=1708207505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kPLci2mPN5adOlpycF82Cz5uAugMGWK5mPO9s8BQBCc=;
 b=KQBytPBBjGKJVcPEhU9lj9pz88YacPwotaoS/PdjkkgNUlp0DsLl+GfH
 1hRPhIi/3zN0Sqgdc4I/QJcxgd4v/6KB+5gmLUf1VF6wCASCmjxmFyyQM
 dmElOhfrWiqZVOnMznQ9BjpFhVZZlMY56wmn0zSFEtNTbpAr4xSdMOsIi
 wO+jxzv82yVepyJsIlwaFP/WE3e3C2GsMO2YdfSnaVePmN/c10m66Rb9g
 eSDzbQQXY56d7jI3qfihFWrBw4X8RWAri97WwMyTdl5PRiIHEQLWNsfiH
 6WTofhiEboQU7JvXIPWL/UcfgxZNVma9m/SH2Ufi1+NQNdHg/PdCX/TNX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KQBytPBB
Subject: [Intel-wired-lan] [PATCH net-next v3 1/1] ice: Change assigning
 method of the CPU affinity masks
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With the introduction of sched_numa_hop_mask() and for_each_numa_hop_mask(),
the affinity masks for queue vectors can be conveniently set by preferring the
CPUs that are closest to the NUMA node of the parent PCI device.

Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
Changes since v2:
 * Pointers for cpumasks point to const struct cpumask
 * Removed unnecessary label
 * Removed redundant blank lines

Changes since v1:
 * Removed obsolete comment
 * Inverted condition for loop escape
 * Incrementing v_idx only in case of available cpu
---
 drivers/net/ethernet/intel/ice/ice_base.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1911d644dfa8..30dc1c3c290f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -121,9 +121,6 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 
 	if (vsi->type == ICE_VSI_VF)
 		goto out;
-	/* only set affinity_mask if the CPU is online */
-	if (cpu_online(v_idx))
-		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
 
 	/* This will not be called in the driver load path because the netdev
 	 * will not be created yet. All other cases with register the NAPI
@@ -662,8 +659,10 @@ int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx)
  */
 int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
 {
+	const struct cpumask *aff_mask, *last_aff_mask = cpu_none_mask;
 	struct device *dev = ice_pf_to_dev(vsi->back);
-	u16 v_idx;
+	int numa_node = dev->numa_node;
+	u16 v_idx, cpu = 0;
 	int err;
 
 	if (vsi->q_vectors[0]) {
@@ -677,7 +676,19 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
 			goto err_out;
 	}
 
-	return 0;
+	v_idx = 0;
+	for_each_numa_hop_mask(aff_mask, numa_node) {
+		for_each_cpu_andnot(cpu, aff_mask, last_aff_mask) {
+			if (v_idx >= vsi->num_q_vectors)
+				return 0;
+
+			if (cpu_online(cpu)) {
+				cpumask_set_cpu(cpu, &vsi->q_vectors[v_idx]->affinity_mask);
+				v_idx++;
+			}
+		}
+		last_aff_mask = aff_mask;
+	}
 
 err_out:
 	while (v_idx--)
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
