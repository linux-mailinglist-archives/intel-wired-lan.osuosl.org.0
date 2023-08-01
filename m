Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449076B3E4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B0414019C;
	Tue,  1 Aug 2023 11:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B0414019C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890789;
	bh=epHa7Zqqs7/MlClKVSV/43dOBZaXKNEqUW1Rf1ZEh5A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bGjaSpq8l2/s158tim6uTiwwB+Js3JLaFLneZR+cLTm5WZpHkRGe1fXPpfgTL9EtR
	 A6wvEckunYAuBPbzfAecRWAbztg/cobCnV+aDQG72CsCTbRoxgPeeU2Ud6w36dAllf
	 KwgL+sv9BsGA7nG3T5EVApV7OlvA+2yP8+igzeCnT9b05M/sRrknQANMH8/mkaob7i
	 7ocifUfpEYf4N572oEHpzaAQ73LAR+yNBLTII1s2hKy8gF0nNCrZb8SS4wShAysVIa
	 GrLJVUkV5chBrWvgkjiuZx7evExS7px4tqocn/PE7SHeubfo7cUu2kDgqLNTci4q4q
	 XGrFNxMYaWtEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oBagzTlTEsKQ; Tue,  1 Aug 2023 11:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 179A0402CE;
	Tue,  1 Aug 2023 11:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 179A0402CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A04D1BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A011D400E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:52:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A011D400E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLM056QLTWhJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:52:49 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0A5C404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0A5C404ED
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="400227225"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="400227225"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="763724183"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="763724183"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga001.jf.intel.com with ESMTP; 01 Aug 2023 04:52:45 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F0FA633BE9;
 Tue,  1 Aug 2023 12:52:44 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:52:35 +0200
Message-ID: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890768; x=1722426768;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vz8MpFbjdPZwI4Zomx3rfUcIZePee+GoqM6hOk1R53E=;
 b=dbDuRupjoDqvMAFhWVMB0GnV5AyamvY0KShggPizpO4TA0mzx5IPIIAc
 VeE5kBtBVgmAD+Ly4zoGVWRnlevuByjcG74YWyzHt5VxXrhASoBGzQ9to
 Pq03OSjhgmQ/BZZSbnfMZAFZYoY+vZXQpOcMu9CCNzMoet2k3LQ2lDMuN
 0FtgWNpxeA9UbXGvz3XOFF8HqXbdtPnxJj+BCqYorhOM9/dy9Mg34xZ16
 vOKgyhnj+CKRAVTLa4VggCKXqAQSkvoKDUEGasaN1NMt5MLq6ROjI7yBD
 +D3799M4yqs5k1wamKVU8rYRaChAKgSx0H/S3YBuQTvgptqROH2U+dF4X
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbDuRupj
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Block switchdev mode when
 ADQ is acvite and vice versa
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ADQ and switchdev are not supported simultaneously. Enabling both at the
same time can result in nullptr dereference.

To prevent this, check if ADQ is active when changing devlink mode to
switchdev mode, and check if switchdev is active when enabling ADQ.

Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ad0a007b7398..2ea5aaceee11 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -538,6 +538,11 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		break;
 	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
 	{
+		if (ice_is_adq_active(pf)) {
+			dev_err(ice_pf_to_dev(pf), "switchdev cannot be configured - ADQ is active. Delete ADQ configs using TC and try again\n");
+			return -EOPNOTSUPP;
+		}
+
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
 			 pf->hw.pf_id);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cf92c39467c8..2468b6018613 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8834,6 +8834,12 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 			}
 		}
 
+		if (ice_is_eswitch_mode_switchdev(pf)) {
+			netdev_err(netdev, "TC MQPRIO offload not supported, switchdev is enabled\n");
+			err = -EOPNOTSUPP;
+			goto adev_unlock;
+		}
+
 		/* setup traffic classifier for receive side */
 		mutex_lock(&pf->tc_mutex);
 		err = ice_setup_tc_mqprio_qdisc(netdev, type_data);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
