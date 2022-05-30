Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A5053865C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 May 2022 18:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A48381B48;
	Mon, 30 May 2022 16:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gi9um5AaMtHn; Mon, 30 May 2022 16:51:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7119B81A99;
	Mon, 30 May 2022 16:51:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 054CA1BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 16:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E580D40A9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 16:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkmSbFIiQkGv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 16:51:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3FE440A2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 16:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653929502; x=1685465502;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NoQ5V4OVXSGsrnmdg0Oft+LIvUFnSESgGBO73wysDHY=;
 b=lriUKgQ2IVa9bFu2RD1zyk/oFs/HtCDNUCOlnwbGhyBwuv1/+wOUWom7
 1N3SJf1nQ08/B8Md0vI5xRB2ZMrLG4hWKv76ICe9mogl02ww5Na34WInj
 /SBmI3+9msLF8+1k8eYysw7zOZ1bOOj2C36ULDABykzB6/UAQy2JbVz6o
 KA6kvrShjDJtdt1EwnXLMk9rORwbphkE1LxKjWySRORO1wA2Yt/8rboZX
 gOLVbykySvltvrktJOD0tDcrv0k1sk0nUsRQmQTPR3WVTWYBJozXoa2nv
 sCFB3OvjC7m3eUtq75WjBiygC363MFosnKP86jykFNNAGqQWsQzpONiyn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="361420096"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="361420096"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 09:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="679210507"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2022 09:51:40 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 24UGpdAk027973; Mon, 30 May 2022 17:51:39 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 May 2022 18:51:22 +0200
Message-Id: <20220530165122.8804-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: disable stripping in
 default VSI ctx
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In case when driver is in eswitch mode, having VLAN stripping enabled
causes failure in communication. All VLAN configuration commands are
blocked. Because of that VF driver can't disable VLAN stripping at
initialization. It leads to the situation when VLAN stripping on VF VSI
is on, but in kernel it is off.

To prevent this, disable VLAN stripping in VSI initialization. It doesn't
break other usecases, because it is set according to kernel settings.

To reproduce:
modprobe ice
devlink dev eswitch set $PF_PCI mode switchdev
ip link add br0 type bridge
ip link set br0 up
ip link set $PF_DEV master br0
ip link set $PF_DEV up
echo 1 > /sys/class/net/$PF_DEV/device/sriov_numvfs
ip link set $VF1 up
ip link set $VF1_PR master br0
ip link set $VF1_PR up
ip link add link $VF1 name vlan100 type vlan id 100
ip addr add $VLAN_IP/$MASK dev vlan100
ip link set vlan100 up

On link partner:
ip link add link $PF name vlan100 type vlan id 100
ip addr add $PEER_VLAN_IP/$MASK dev vlan100
ip link set vlan100 up
ping $VLAN_IP

Ping fails.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2:
   * Small corrections in commit msg
   * Added reproduction steps
   * Removed Fixes tag, added squash note

This patch should be squashed with "ice: remove VLAN representor specific
logs"
 drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 70961c0343e7..b28fb8eacffb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -887,6 +887,9 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 			(ICE_AQ_VSI_OUTER_TAG_VLAN_8100 <<
 			 ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
 			ICE_AQ_VSI_OUTER_TAG_TYPE_M;
+		ctxt->info.outer_vlan_flags |=
+			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_EMODE_M,
+				   ICE_AQ_VSI_OUTER_VLAN_EMODE_NOTHING);
 	}
 	/* Have 1:1 UP mapping for both ingress/egress tables */
 	table |= ICE_UP_TABLE_TRANSLATE(0, 0);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
