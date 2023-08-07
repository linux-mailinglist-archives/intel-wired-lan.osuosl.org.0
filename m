Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7DA7724D5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 15:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29D9981DD8;
	Mon,  7 Aug 2023 13:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29D9981DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691413258;
	bh=bxje2vkoVNQ+BSUDr8qiuLJLG0imEtl+k464CbwsWi0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Y2OvVi7JA4llVbKbV3rSRp0SLcQihMMeXy4TJggST30TwUqXz/idsagM9hyGdsrYM
	 zNLFDgCPqZ1kAu0Kmd5xcROtNwPUKGIRNSxpz/HKs1iAX6qzgXLzVGWX6NS5XVGYwK
	 ozEMDUADPG69rMzbmJqrA2m7n0uBUoNILRXZxMufed1VzSKuyL2d/6wBua3xHeKIL1
	 w7Osa2E3C40rgNkPiiEnc11JWyYv258FdtkuUTj3hlidTkoB8PnpPNMKF4yXJlQKJG
	 OKU8BqfHin9NIPH+X+AhdWK8DBnc/yphVzr+f/PqBqR1xAoVjKE6ALWCWBD1BxKh40
	 +m85qTPJsb1RA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bURFBj6PE6lu; Mon,  7 Aug 2023 13:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06CF281E4E;
	Mon,  7 Aug 2023 13:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06CF281E4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19D1B1BF951
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 13:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 217D760EB6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 13:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 217D760EB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XR0FMeqFvqUq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 13:00:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A04560E5D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 13:00:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A04560E5D
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="436867060"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="436867060"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 06:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="707858543"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="707858543"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.237.94.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 06:00:08 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 14:59:40 +0200
Message-Id: <20230807125940.985494-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691413211; x=1722949211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N4cmZUiMbyJa1n3VTRg3Mc/XlujlFcw9ZNvekFwc0FE=;
 b=gbGfsfPm32CliiJMc5TK0wnTuxjh/K7ag2UCzs8AKcPgDAzyEB/Tu7td
 We5R/WHFmbuTmL0wIrVaQq4Y/TfyqQV1Xm6/Izwtp/16e901mDruK5y/X
 y9eKG89Vqb2+qI4PhA0SjJ5t9un4MRuk4aMSBZ28BP47g+lpoEmwR1Lwv
 p+gLNyehXIaZBqlhjPh1HJfAzuUph2yma4/oKqqX1P6OlqGq58tSVIOMC
 HnRof6jBzeQz3yrLZ4rk32G0Al3PVgNMnxshZTP6n6WBcbupxoZpmZf2R
 5xqbv2kUGWUjZvVFX3CS/pBpbier8W9LQBu0ugVNVzV1VLYIju+v+OOkP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gbGfsfPm
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: do no process adminq tasks
 when __IAVF_IN_REMOVE_TASK is set
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Prevent schedule operations for adminq during device remove and when
__IAVF_IN_REMOVE_TASK flag is set. Currently, the iavf_down function
adds operations for adminq that shouldn't be processed when the device
is in the __IAVF_REMOVE state.

Reproduction:

echo 4 > /sys/bus/pci/devices/0000:17:00.0/sriov_numvfs
ip link set dev ens1f0 vf 0 trust on
ip link set dev ens1f0 vf 1 trust on
ip link set dev ens1f0 vf 2 trust on
ip link set dev ens1f0 vf 3 trust on

ip link set dev ens1f0 vf 0 mac 00:22:33:44:55:66
ip link set dev ens1f0 vf 1 mac 00:22:33:44:55:67
ip link set dev ens1f0 vf 2 mac 00:22:33:44:55:68
ip link set dev ens1f0 vf 3 mac 00:22:33:44:55:69

echo 0000:17:02.0 > /sys/bus/pci/devices/0000\:17\:02.0/driver/unbind
echo 0000:17:02.1 > /sys/bus/pci/devices/0000\:17\:02.1/driver/unbind
echo 0000:17:02.2 > /sys/bus/pci/devices/0000\:17\:02.2/driver/unbind
echo 0000:17:02.3 > /sys/bus/pci/devices/0000\:17\:02.3/driver/unbind
sleep 10
echo 0000:17:02.0 > /sys/bus/pci/drivers/iavf/bind
echo 0000:17:02.1 > /sys/bus/pci/drivers/iavf/bind
echo 0000:17:02.2 > /sys/bus/pci/drivers/iavf/bind
echo 0000:17:02.3 > /sys/bus/pci/drivers/iavf/bind

modprobe vfio-pci
echo 8086 154c > /sys/bus/pci/drivers/vfio-pci/new_id

qemu-system-x86_64 -accel kvm -m 4096 -cpu host \
-drive file=centos9.qcow2,if=none,id=virtio-disk0 \
-device virtio-blk-pci,drive=virtio-disk0,bootindex=0 -smp 4 \
-device vfio-pci,host=17:02.0 -net none \
-device vfio-pci,host=17:02.1 -net none \
-device vfio-pci,host=17:02.2 -net none \
-device vfio-pci,host=17:02.3 -net none \
-daemonize -vnc :5

Current result:
There is a probability that the mac of VF in guest is inconsistent with
it in host

Expected result:
When passthrough NIC VF to guest, the VF in guest should always get
the same mac as it in host.

Fixes: 14756b2ae265 ("iavf: Fix __IAVF_RESETTING state usage")
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f329f81c793d..7ebbf2a4c487 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1421,7 +1421,8 @@ void iavf_down(struct iavf_adapter *adapter)
 	iavf_clear_fdir_filters(adapter);
 	iavf_clear_adv_rss_conf(adapter);
 
-	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)) {
+	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
+	    !(test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))) {
 		/* cancel any current operation */
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		/* Schedule operations to close down the HW. Don't wait
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
