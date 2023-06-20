Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5C773689F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0950B418BB;
	Tue, 20 Jun 2023 10:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0950B418BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255287;
	bh=Nmh/12kFrgHePKqHPyLclkitjccObV9siISzOLpdKw4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kmLWwcVDdf0eO79hXrStFeKYBvnoDRWR108GJ4nlXdCUib3Wv6DEJcX1usy0Xi81W
	 zNlVoF1wD51LkiJbsuETEkvx+dVX6xvMwmIWZ/lANS0bnj+OGYX3fF2Jb0WUXb1+Ut
	 EJGm2VXmaovVhPOE82ldqZz6yUoRUwOcuzJPzj1zDFOLVDhK3bIaXMwl9Y6YeYt8Pa
	 KAxDRpt2DV+Smhn6ihhQlplBOXGYp9RA58FdA81nla0brVmwgs0mach78zzzMZ93Sw
	 S3/ST+LzeGQhqeXMOrAbr9SxsAAr+M1g0GZz49Eog/1mTErxVBV+oZVH4UV5UVg1DC
	 GGRnUzQxJ8/8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ow86BgyeovCW; Tue, 20 Jun 2023 10:01:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB72D417E4;
	Tue, 20 Jun 2023 10:01:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB72D417E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71B301BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 447046125C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 447046125C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nyXa7x4IRgPD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85B7E60D59
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85B7E60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688397"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688397"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227302"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227302"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:55 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:53 +0000
Message-Id: <20230620100001.5331-8-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255258; x=1718791258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5HpYoyKV3E7hVshY/z3xjfSj9l1/Y/ffPoIQ0SRbdo=;
 b=ISRasS4FcGIjsbFu3dYOrzTRVVe4YvsrKJKjWRb9HwpTViGBRHz4WAWn
 dEO2tH+Rp9srN2rB5eTw0C6vKuLm9l3rooHpWmHSlM+dZADMg2JzSWxo+
 XszfVvKYBdUO+KDpCVURHZwaLIUIdL+gvO/858eVMJu8e2w3RAovBWurJ
 BNfcEV9rBTyg4JWkZVQJbDZXKbrL3Yxkb4TbG+dkJmqVlIqUsatRky9ps
 pOpqfciquja9LZvr7jtAAUoN0poE4UkJC152EiHDhcilurDNIUTV6TZYd
 New9pFhdoMKZG5lXgJr6AxnGqn6enNcnBTW12xVxwONLwiUtHK6QFHmh5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISRasS4F
Subject: [Intel-wired-lan] [PATCH iwl-next V1 07/15] ice: do not notify VF
 link state during migration
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF driver will notify VF link state when replaying virtual channel
commands GET_VF_RESOURCE and ENABLE_QUEUES.

Block PF driver to send message to VF if it is migrating.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index ce8afceb5a8e..9c860663a012 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -233,6 +233,9 @@ void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 	struct virtchnl_pf_event pfe = { 0 };
 	struct ice_hw *hw = &vf->pf->hw;
 
+	if (test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
+		return;
+
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
