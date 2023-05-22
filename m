Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9778770B87A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 11:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F34940C1C;
	Mon, 22 May 2023 09:07:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F34940C1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684746421;
	bh=Xot8D8RKcThx9g8GS9rqZxak37rdNYJfI6VEK9OZsk4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AQKYGK1IUgN3x7epb6zrpA7D3VM8cWBwKN3fAk5HWAqo3dGfGQKN80QkJk0evBHw4
	 /blw3gwzLHxQHZ2YwtromluZQiHmnZeRWzCoEbyZUFdjIQmCh5WBvBlCCTjZKC5RvR
	 Yw3taV3ywI4UQ2R4DkoLauDn/8vfjZ1d9uv0oMKPY67y3HxWvBN8CRh03l7flcpAL2
	 oYG/B3kVcLGPLp0rqIEEsAehfFAd/X3blurem5zjUdu7AaaDOBFI3YX7n4Qew1XzL9
	 GPZd8cbUrvD0B15iBnd0Axyj+3LhIfjmQw/tcBiY1v89zBJPXGC5KvldIwP//phrgr
	 JHmOqpBpuXVTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB2w8NwESk6g; Mon, 22 May 2023 09:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C6D540BFE;
	Mon, 22 May 2023 09:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C6D540BFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A33F1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1136060BAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1136060BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TAb17td-X85 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 09:06:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3F6E60701
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3F6E60701
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="352892166"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="352892166"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 02:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="815601784"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="815601784"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2023 02:06:49 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 864AB3372E;
 Mon, 22 May 2023 10:06:48 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 11:05:32 +0200
Message-Id: <20230522090542.45679-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684746412; x=1716282412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1FQoGNDpARgeG1EPEIPg2rtBEXs/uG1DPbQvKEjpTCk=;
 b=Sosbj5Yw/r8yjGd9u2YEf0jEf7f7f/Ps6h6W6jk+2NEEMxojSdKzRkKB
 Rh3mkIXQx/va98vUWD8vt0SPiMPp7NTyb49jVryyjpfemDQzmbSME9BZi
 qzHIwm1AnFOZoAbMEc+36XwRR6gQ2VE5a3l+hroajnvjanvUvzWUNAK4U
 JOARZeNRUIuI6Ft5M2+ZfkrdovzpBp8vhuiUlvALSmC6PCwxB7lSm1+3b
 i4V/3hX/oBnedyFV9gYHcJY7bMUXQ8BPAiN3hxhKe6gES8NRaNj3bi1cX
 8/rBjt07OUZ1sd6D2j8cAiG56fM8J597gyZAT5TTAg39lSXag7aLsztRJ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sosbj5Yw
Subject: [Intel-wired-lan] [PATCH iwl-next v3 00/10] ice: switchdev bridge
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
Cc: netdev@vger.kernel.org
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
These are introduced in first 3 patches.
---
v2: two patches were droped from the series:
    - "ice: Remove exclusion code for RDMA+SRIOV" was sent as separate
      patch: https://lore.kernel.org/netdev/20230516113055.7336-1-wojciech.drewek@intel.com/
    - "ice: Ethtool fdb_cnt stats" was dropped because of the comments
      suggesting that ethtool is not a good option for such statistic.
      An alternative will be send as a separate patch.
v3: small changes in patch 5, 7 and 8 including kdoc, style fixes.

Marcin Szycik (2):
  ice: Add guard rule when creating FDB in switchdev
  ice: Add VLAN FDB support in switchdev mode

Michal Swiatkowski (2):
  ice: implement bridge port vlan
  ice: implement static version of ageing

Pawel Chmielewski (1):
  ice: add tracepoints for the switchdev bridge

Wojciech Drewek (5):
  ice: Minor switchdev fixes
  ice: Unset src prune on uplink VSI
  ice: Implement basic eswitch bridge setup
  ice: Switchdev FDB events support
  ice: Accept LAG netdevs in bridge offloads

 drivers/net/ethernet/intel/ice/Makefile       |    2 +-
 drivers/net/ethernet/intel/ice/ice.h          |    5 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   43 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 1346 +++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  121 ++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   25 +
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |    6 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |    2 +-
 drivers/net/ethernet/intel/ice/ice_repr.h     |    3 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   |   97 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |    5 +
 drivers/net/ethernet/intel/ice/ice_trace.h    |   90 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |  186 ++-
 .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |    3 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |   84 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |    8 +
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |    1 +
 19 files changed, 1896 insertions(+), 133 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.h

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
