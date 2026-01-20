Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9CFD3C5B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:41:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91E4785860;
	Tue, 20 Jan 2026 10:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-jYUAqsRCqg; Tue, 20 Jan 2026 10:41:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B96B685866
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905713;
	bh=vXqI7hMS/Kaufwh1PNWEhBopBwCFOF5JfqZyMukX5bM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xV5keHj29wQ48cj6BNzaZVSY8wR/yhZPg/emymsdD6bw6EJN9sSh6m10bPG9F1t77
	 55Ma7idLHYj+Vs/0gd+a1kLk/3xbBk5c+tQA1geVM/K+SFzBkofAAqitGcq2m8Ru/Z
	 hh23vY6hMjnVJ4cIksGDJbwM5EOBNr6GnFvLBSxED8/13CucurLq1gZSFke9SAev9P
	 /rDlmgzTQeTjtRLlPc4b1161X9igbIbRLVn672CYUtDS2kV6gSMJ8CpEpn/HcbuK9e
	 1CrVQw5H40otzFteGLI3e/Iicfp9jj2YMXLCQ/1yxWZf0FGbsmNzHREg4fNntVCasc
	 tZeGHscYysNgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B96B685866;
	Tue, 20 Jan 2026 10:41:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BABC160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79BD585857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jCR7qGKgUrQT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:41:50 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 20 Jan 2026 10:41:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 84A068585A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84A068585A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84A068585A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:50 +0000 (UTC)
X-CSE-ConnectionGUID: NlwYVOSoTIeUGZMq3O2cQg==
X-CSE-MsgGUID: ALmVLqfgSwiJv7XtW0L6tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161724"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161724"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:43 -0800
X-CSE-ConnectionGUID: qiPffr16S3aR977f0cT+zA==
X-CSE-MsgGUID: STtrC8BySFmzypuaoBOerw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935839"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:41 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:31 +0100
Message-ID: <20260120103440.892326-1-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905710; x=1800441710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2JpWh8dIf4yeI7M+/s717Byn0Z1WOd8UO8wUvY6ozzg=;
 b=HG43SwvVcQWlju9yhScd7YkwL1KB5j84Sps8oxL3N2T0gt7T1DvqEATe
 rq6onxahF2m8pTYg9SlAE/gGdqjEfpDRNYSVjNid7WViNWBmUnGpdw9kc
 jI4jyATEUphXOKb6K6ftEUTaBALMdvJC89DH+mB+2tVuvNR5ViVWJhDgw
 I+BXmFFUcjQz+aX9icoik3S42jk8Z1TXp9UIiwK1IrC/r0c4bJCWvEfeG
 +LFXXT96hzaPmXtals927S25/fZpkxPIKWSdeKsJbjjV28hKfQi40g7cK
 /Iao38mOxiVstuSA11zSDsPKp4+myou4TRseFmxQhhOd31UGKYIXahpKc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HG43SwvV
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/8] ice: in VEB,
 prevent "cross-vlan" traffic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, packets that match MAC address of a VF will be sent to loopback
even if they would cross VLAN boundaries.  Effectively, this drops them.
In this patch series, we aim to address this behaviour by adding MAC,VLAN
to complement what MAC-only filters do to select packets for loopback.

To reproduce the issue have an E810 ($pfa) connected to another adapter
($pfb), then:

    # echo 2 >/sys/class/net/$pfa/device/sriov_numvfs
    # ip l set $pfa vf 0 vlan 4
    # ip l set $pfa vf 1 vlan 7
    # ip l set $pfa_vf0 netns $pfa_vf0_netns up
    # ip l set $pfa_vf1 netns $pfa_vf1_netns up
    # ip netns exec $pfa_vf0_netns ip a add 10.0.0.1/24 dev $pfa_vf0
    # ip netns exec $pfa_vf1_netns ip a add 10.0.0.2/24 dev $pfa_vf1

And for the $pfb:

    # echo 2 >/sys/class/net/$pfb/device/sriov_numvfs
    # ip l set $pfb vf 0 trust on spoof off vlan 4
    # ip l set $pfb vf 1 trust on spoof off vlan 7
    # ip l add $br type bridge
    # ip l set $pfb_vf0 master $br up
    # ip l set $pfb_vf1 master $br up
    # ip l set $br up

We expect $pfa_vf0 to be able to reach $pfa_vf1 through the $br on
the link partner.  Instead, ARP is unable to resolve 10.0.0.2/24.
ARP request is fine because it's broadcastd and bounces off $br, but
ARP reply is stuck in the internal switch because the destination MAC
matches $pfa_vf0 and filter restricts it to the loopback.

In testing I used: ip utility, iproute2-6.1.0, libbpf 1.3.0

Changes in v3:
  - Improve structure of reproduction description in cover letter.
  - LB_LAN masks and values no longer rely on boolean promotion.
  - ice_fill_sw_info() deals with u8 the entire time instead of building
    building lb_en and lan_en values at the end from booleans.
  - Refer to reproduction in cover letter in current 5/8.
  - Fixed some slip-ups "this patch" and "this commit" in commit
    messages across the series.  I did not consider this change for
    reviewed-by drop.

Changes in v2:
  - Use FIELD_GET et al. when handling fi.lb_en and fi.lan_en.
  - Rename /LB_LAN/ s/_MASK/_M/ because one of uses would need to break
    line.
  - Close open parenthesis in ice_vsi_update_bridge_mode() description.
  - Explain returns in ice_vsi_update_bridge_mode().

v2: https://lore.kernel.org/intel-wired-lan/20251125083456.28822-1-jakub.slepecki@intel.com/T/
v1: https://lore.kernel.org/intel-wired-lan/20251120162813.37942-1-jakub.slepecki@intel.com/T/

Jakub Slepecki (7):
  ice: in dvm, use outer VLAN in MAC,VLAN lookup
  ice: allow creating mac,vlan filters along mac filters
  ice: do not check for zero mac when creating mac filters
  ice: allow overriding lan_en, lb_en in switch
  ice: update mac,vlan rules when toggling between VEB and VEPA
  ice: add functions to query for vsi's pvids
  ice: in VEB, prevent "cross-vlan" traffic from hitting loopback

Michal Swiatkowski (1):
  ice: add mac vlan to filter API

 drivers/net/ethernet/intel/ice/ice_fltr.c     | 104 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fltr.h     |  10 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  56 ++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  56 +++++++---
 drivers/net/ethernet/intel/ice/ice_switch.c   |  79 +++++++++----
 drivers/net/ethernet/intel/ice/ice_switch.h   |  13 ++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   8 +-
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |  12 ++
 9 files changed, 295 insertions(+), 45 deletions(-)

-- 
2.43.0

