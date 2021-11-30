Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5700F4628FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 01:17:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8385405B9;
	Tue, 30 Nov 2021 00:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BgTpAxO0jolg; Tue, 30 Nov 2021 00:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7BB140478;
	Tue, 30 Nov 2021 00:17:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55CB21BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BE2060D57
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-UiiOCySfs5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 00:17:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C82F6069A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 00:17:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="322343842"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="322343842"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 16:17:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="511927985"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2021 16:17:19 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 Nov 2021 16:15:58 -0800
Message-Id: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 0/6] Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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

From: Brett Creeley <brett.creeley@intel.com>

This patch series adds support in the iavf driver for communicating and
using VIRTCHNL_VF_OFFLOAD_VLAN_V2. The current VIRTCHNL_VF_OFFLOAD_VLAN
is very limited and covers all 802.1Q VLAN offloads and filtering with
no granularity.

The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 adds more granularity, flexibility,
and support for 802.1ad offloads and filtering. This includes the VF
negotiating which VLAN offloads/filtering it's allowed, where VLAN tags
should be inserted and/or stripped into and from descriptors, and the
supported VLAN protocols.
---
v2:
- Remove excess newline
- Remove 'inline' use
- Fix incorrect flag usage
- Change BIT() to BIT_ULL() for 32 bit build issue

Brett Creeley (6):
  virtchnl: Add support for new VLAN capabilities
  iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
  iavf: Add support VIRTCHNL_VF_OFFLOAD_VLAN_V2 during netdev config
  iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
  iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload
    enable/disable
  iavf: Restrict maximum VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2

 drivers/net/ethernet/intel/iavf/iavf.h        | 105 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 767 +++++++++++++++---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  71 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  30 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 534 ++++++++++--
 include/linux/avf/virtchnl.h                  | 377 +++++++++
 6 files changed, 1637 insertions(+), 247 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
