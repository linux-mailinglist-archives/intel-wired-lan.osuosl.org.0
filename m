Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB56B1A98
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 06:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA46D6124C;
	Thu,  9 Mar 2023 05:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA46D6124C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678338628;
	bh=QZ1UT+6QDkNgR+0fQQddjnHbD7v1ZYICS6R34Yn/0hU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=m1ZgIrfAn0yXbfEZ349AwjCEzvhD/6ychi568HtHSvz+rFLCChWWLoZIOfEZcnvsb
	 HNGIOJUcR161w1GFHaRk7duDaHBRhuJQrGwb+gDelIpP6v2AllBIjf47JViXbUo2Ef
	 iIsiNXewbICofOfG7ARrkM1mvMlXEoMo0V0Be9xwG/bX1O+87zWNk83zWJXpa1WipP
	 EydN51XYYN6a1YYFj56FXQZx80yX3Wsy0K3Cul1sln1ksTfIaum45IvM4o7spkIggQ
	 dzKReiJElxpSVTNLvnZhtwAwR/1/4LXvX9HqkyUlqJa323CyMuf5rVIEr+UDmqoRmk
	 3TFgLoffKP0GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtLwqJQVVq4C; Thu,  9 Mar 2023 05:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8EB96121B;
	Thu,  9 Mar 2023 05:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8EB96121B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C50A01BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C96F41850
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C96F41850
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cRO8zpAv0RH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 05:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 662BF4184C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 662BF4184C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 05:10:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="333823748"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="333823748"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 21:10:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="709710012"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="709710012"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.39])
 by orsmga001.jf.intel.com with ESMTP; 08 Mar 2023 21:10:15 -0800
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Mar 2023 13:10:11 +0800
Message-Id: <20230309051011.1165676-1-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678338617; x=1709874617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uPEf4F+KXLDuImBHIguuIJ/dzZcRoMQCG48Gcw335UM=;
 b=Kv5Nz4fLjslqg5o/CYJRzN46ZDE/miZtJ1ryurvd8P1C2SMQUEwon76w
 qRZ5NkKkHDSDcN8DttHgtwi9AtfjfZ/2jbyyy+qxPJfPe2Bi322jMqpZg
 pUe3deQgN8EqQJvCgz5sLMNjkRAY8d+f7aD7A93QpULq6h0ZycQSdQdfj
 ZnmvSA75L0iH2uBz/jMGKUpg2i5MKlQisjh8RvobEoA8fcgOCY9jpLns7
 TYLG/TrTQk7K+lWvIQYMw+6vM5Q4kNsUNVpEXgR2HMNYKPW7tB+fLxK62
 4Y47SCrQR3qcxXh5ZQOebvrbABdWvInmbaVcSBhU49LosiVGWuemnAbE3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kv5Nz4fL
Subject: [Intel-wired-lan] [PATCH net] ice: add profile conflict check for
 AVF FDIR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add profile conflict check while adding some FDIR rules to aviod
unexpected flow behavior, rules may have conflict including:
        IPv4 <---> {IPv4_UDP, IPv4_TCP, IPv4_SCTP}
        IPv6 <---> {IPv6_UDP, IPv6_TCP, IPv6_SCTP}

For example, when we create an FDIR rule for IPv4, this rule will work
on packets including IPv4, IPv4_UDP, IPv4_TCP and IPv4_SCTP. But if we
then create an FDIR rule for IPv4_UDP and then destroy it, the first
FDIR rule for IPv4 cannot work on pkt IPv4_UDP then.

To prevent this unexpected behavior, we add restriction in software
when creating FDIR rules by adding necessary profile conflict check.

Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index e6ef6b303222..1431789c194e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -541,6 +541,71 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
 	}
 }
 
+/**
+ * ice_vc_fdir_has_prof_conflict
+ * @vf: pointer to the VF structure
+ * @conf: FDIR configuration for each filter
+ *
+ * Check if @conf has conflicting profile with existing profiles
+ *
+ * Return: true on success, and false on error.
+ */
+static bool
+ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
+			      struct virtchnl_fdir_fltr_conf *conf)
+{
+	struct ice_fdir_fltr *desc;
+
+	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
+		struct virtchnl_fdir_fltr_conf *existing_conf =
+						to_fltr_conf_from_desc(desc);
+		struct ice_fdir_fltr *a = &existing_conf->input;
+		struct ice_fdir_fltr *b = &conf->input;
+
+		enum ice_fltr_ptype flow_type_a = a->flow_type;
+		enum ice_fltr_ptype flow_type_b = b->flow_type;
+
+		/* No need to compare two rules with different tunnel type */
+		if (existing_conf->ttype != conf->ttype)
+			continue;
+
+		/* No need to compare two rules with same protocol */
+		if (flow_type_a == flow_type_b)
+			continue;
+
+		switch (flow_type_a) {
+		case ICE_FLTR_PTYPE_NONF_IPV4_UDP:
+		case ICE_FLTR_PTYPE_NONF_IPV4_TCP:
+		case ICE_FLTR_PTYPE_NONF_IPV4_SCTP:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_OTHER)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV4_OTHER:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV4_SCTP)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV6_UDP:
+		case ICE_FLTR_PTYPE_NONF_IPV6_TCP:
+		case ICE_FLTR_PTYPE_NONF_IPV6_SCTP:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_OTHER)
+				return true;
+			break;
+		case ICE_FLTR_PTYPE_NONF_IPV6_OTHER:
+			if (flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_UDP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
+			    flow_type_b == ICE_FLTR_PTYPE_NONF_IPV6_SCTP)
+				return true;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return false;
+}
+
 /**
  * ice_vc_fdir_write_flow_prof
  * @vf: pointer to the VF structure
@@ -677,6 +742,12 @@ ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	enum ice_fltr_ptype flow;
 	int ret;
 
+	ret = ice_vc_fdir_has_prof_conflict(vf, conf);
+	if (ret) {
+		dev_dbg(dev, "Found flow prof conflict for VF %d\n", vf->vf_id);
+		return ret;
+	}
+
 	flow = input->flow_type;
 	ret = ice_vc_fdir_alloc_prof(vf, flow);
 	if (ret) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
