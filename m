Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CC872DEDA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2837416CE;
	Tue, 13 Jun 2023 10:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2837416CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651297;
	bh=xZ8IYZ5oOsK8IEtjPrD2ETXFaAjg9I74x+iX2h2jLHI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=viUNme4u1YJqYT4NF5DNXq5umc/XF103YFvm+6yZGdVrGBA0sVqeqr8G5IbjvQATz
	 9RDI1JHdVwheVK7lTYtpAw+FbuM1cN4n0PN6F40xdSkxZdb9urWhdwhYo4sk19DUJw
	 wi2FiydDbLGdJsSzrPI26Cl7/HC6Y3rv73zfNo4DJLtVAx/wFqNh1I+zyYY7JvPqTE
	 WvBwViha5WCElsLNDJHYmm9SbwSNRiyDhnzdIMkSvSB+dCcNkjPWp+87LjyEE/mXk8
	 9wvg8wvwUzBCqtX/II6uhlqN5+ibnre6h6Dx1YDc4wHSooNvJAHZ4/NDQSIkFUtnSc
	 RNsyhI8VFzX/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxO4Ma8UdXrc; Tue, 13 Jun 2023 10:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A56140492;
	Tue, 13 Jun 2023 10:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A56140492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13E0F1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DF73410A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DF73410A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yi5hv6e4lwi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 857F840591
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 857F840591
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="424168042"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="424168042"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="885787114"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="885787114"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2023 03:14:38 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 21A5335428;
 Tue, 13 Jun 2023 11:14:37 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 12:13:18 +0200
Message-Id: <20230613101330.87734-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651281; x=1718187281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+kY5nKPaEBbwg7KCkefqdPraFJ7q9fYjmgFyXAw1YQ=;
 b=Bi8HufeE07vMBpFqIRnGfJNJKB3Hw3d2/4q3BoD+KYEwA6SARgkdSTz2
 hILH508gJuT4peaEK+/DBoJt5HpW1BSOy62vE39HJ7n11u+IyhvnpSlw5
 8qC50Oskfy1CRpItqd4udPsk0GGZG+/UZrHDmxgitl2CEdTVb2ph0gMzC
 2ANAXJXLmDSFf7e1VdhAt4QhnkCcUyPELELb9nMyoFLNSkezg/zbR94wt
 k0LvoqtJSZqt91Nw7vM3Vg6mXAoMPNjW4i73r3Ev5IomElgralGUCZ6Ye
 ULvF0fStoG+qeySrnxVPw/GIxQdJgihlXLy/SrHrGfx5i6vphtF6Fxu2j
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bi8HufeE
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/12] ice: switchdev bridge
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
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
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 1302 +++++++++++++++++
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  121 ++
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
 19 files changed, 1855 insertions(+), 186 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch_br.h

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
