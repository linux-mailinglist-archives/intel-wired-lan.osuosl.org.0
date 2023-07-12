Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9577375057F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 346884138F;
	Wed, 12 Jul 2023 11:05:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 346884138F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159936;
	bh=YTAj1IfWoGVUzXKovMUGG14e9tDEOlp9O4MwL5n+CPI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sMUugJJfeGMZC5mr2qj0qbGZfaceYnoy09MDioZp2wjtvMXMdRJ1k03VJy+huWSnt
	 3dVx3WvvPAYS79KTYfO7pZPl07nDDJBo9UqMY9XCvF99mVSAjxzFkg4zfFp4zor3yK
	 9t/UWiXWqKJV3K+gThck2nmgdBGa/+lCgf4rVY/DIYGIknWSi1qyRzj0tzUiVgKjl7
	 3dSUF3LjeUJN4vadC128pHoz8BqS84PLst0dGu7LuxVt7PT+B2372qtxtQ6bM9UBC5
	 1mdcOR0+kpzqaHM+dBSmQfSVLXhidFK2qk+7+YxzZN7vv0M/B8ZzGRUKsKGafaVGjw
	 +CVq2eaLShmzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4_tkIN9eE9C; Wed, 12 Jul 2023 11:05:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEEE2400DA;
	Wed, 12 Jul 2023 11:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEEE2400DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 889CE1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 513786110B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 513786110B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRTsGxqDrrkk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADD0060F36
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADD0060F36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993753"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993753"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093732"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093732"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:04:56 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CA67A34966;
 Wed, 12 Jul 2023 12:04:54 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:25 +0200
Message-Id: <20230712110337.8030-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159909; x=1720695909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IL77i0aNCpws1wKBl0ewdlRnKcbl/Ue98o+c0g+oBqc=;
 b=MUMrpF+1ESmf+zgeIf9/VtSkRS8JyvOqSHQe0paql9uTsa0Ho0y4Z54J
 /ftz3rNZWU6L4MAZX0wFhKvmg/FrE/pi0LWJY/IwwiLhVax1MJq9sjbkq
 aV1HYOi6Okp821N3kkyjs9FRdL31TbME3JGCcXz/zpL56S3qnndYk/d9B
 ICVWxtxYHDErbtUHlB9ytAr+sPeDGYqAPD7l7aA99c/sGOIGTRNP0v8/o
 K5JP02ozL7iqTZLcGdrW7NWnh6vWXlUJjtlJeQ7A0ndl2/Q8k7HVQc4IG
 5VYLuLXRjXytzprClBbFt40lSTbUQOqQrJHgNZk70zoQCAozFeN/lu55w
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MUMrpF+1
Subject: [Intel-wired-lan] [PATCH iwl-next v6 00/12] ice: switchdev bridge
 offload
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Linux bridge provides ability to learn MAC addresses and vlans
detected on bridge's ports. As a result of this, FDB (forward data base)
entries are created and they can be offloaded to the HW. By adding
VF's port representors to the bridge together with the uplink netdev,
we can learn VF's and link partner's MAC addresses. This is achieved
by slow/exception-path, where packets that do not match any filters
(FDB entries in this case) are send to the bridge ports.

Driver keeps track of the netdevs added to the bridge
by listening for NETDEV_CHANGEUPPER event. We distinguish two types
of bridge ports: uplink port and VF's representor port. Linux
bridge always learns src MAC of the packet on rx path. With the
current slow-path implementation, it means that we will learn
VF's MAC on port repr (when the VF transmits the packet) and
link partner's MAC on uplink (when we receive it on uplink from LAN).

The driver is notified about learning of the MAC/VLAN by
SWITCHDEV_FDB_{ADD|DEL}_TO_DEVICE events. This is followed by creation
of the HW filter. The direction of the filter is based on port
type (uplink or VF repr). In case of the uplink, rule forwards
the packets to the LAN (matching on link partner's MAC). When the
notification is received on VF repr then the rule forwards the
packets to the associated VF (matching on VF's MAC).

This approach would not work on its own however. This is because if
one of the directions is offloaded, then the bridge would not be able
to learn the other one. If the egress rule is added (learned on uplink)
then the response from the VF will be sent directly to the LAN.
The packet will not got through slow-path, it would not be seen on
VF's port repr. Because of that, the bridge would not learn VF's MAC.

This is solved by introducing guard rule. It prevents forward rule from
working until the opposite direction is offloaded.

Aging is not fully supported yet, aging time is static for now. The
follow up submissions will introduce counters that will allow us to
keep track if the rule is actually being used or not.

A few fixes/changes are needed for this feature to work with ice driver.
These are introduced in first 5 patches.
---
v2: two patches were droped from the series:
    - "ice: Remove exclusion code for RDMA+SRIOV" was sent as separate
      patch: https://lore.kernel.org/netdev/20230516113055.7336-1-wojciech.drewek@intel.com/
    - "ice: Ethtool fdb_cnt stats" was dropped because of the comments
      suggesting that ethtool is not a good option for such statistic.
      An alternative will be send as a separate patch.
v3: small changes in patch 5, 7 and 8 including kdoc, style fixes.
v4: split 1st patch in the series into 4 as Paul suggested
v5: drop "ice: Accept LAG netdevs in bridge offloads" patch,
    it will go with LAG patchset, I kept dev_hold and dev_put since the
    discussion was not resolved
v6: resolve Vlad's comments: delete FDB entries associated with
    deleted vlan, add missing vlan_ops calls when clearing pvid

Marcin Szycik (2):
  ice: Add guard rule when creating FDB in switchdev
  ice: Add VLAN FDB support in switchdev mode

Michal Swiatkowski (2):
  ice: implement bridge port vlan
  ice: implement static version of ageing

Pawel Chmielewski (1):
  ice: add tracepoints for the switchdev bridge

Wojciech Drewek (7):
  ice: Skip adv rules removal upon switchdev release
  ice: Prohibit rx mode change in switchdev mode
  ice: Don't tx before switchdev is fully configured
  ice: Disable vlan pruning for uplink VSI
  ice: Unset src prune on uplink VSI
  ice: Implement basic eswitch bridge setup
  ice: Switchdev FDB events support

 drivers/net/ethernet/intel/ice/Makefile       |    2 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   46 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 1308 +++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  120 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   25 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |    4 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |    2 +-
 drivers/net/ethernet/intel/ice/ice_repr.h     |    3 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |  150 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |    6 +-
 drivers/net/ethernet/intel/ice/ice_trace.h    |   90 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  186 +--
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |    4 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |   84 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |    8 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |    1 +
 19 files changed, 1860 insertions(+), 186 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.h

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
