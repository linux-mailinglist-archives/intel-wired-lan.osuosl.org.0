Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFGUIGRpg2kbmgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAAEE9428
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 16:44:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7976060DDB;
	Wed,  4 Feb 2026 15:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PtxmHHBAoWkZ; Wed,  4 Feb 2026 15:44:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C4F460E96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770219870;
	bh=605caM8QFn/Q6BoQfgl8wUaM8nuoNCpnRRs1vSNg1Jw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rO2VTdzNVeMjdwcGolMZNyQyD5sJczLDVlkDtpKBwnbuBslDzmLwe3EPjoxWHLVyv
	 Iry6n0TYJsGh9b772nPOiUmYGtzIRZcUSH4/2UAGzvEMR5bs5D5JID3/KBwJzmIjJc
	 dx2VgH9ETBbGbTTQMWzgj9wqCr6cCAUjNkx6S1rvOE4YwopD5wN0+p7+IGF+vmEcuO
	 ek4tI9iiNhjUvI7/drC1lWLXKqJhQfvumA3MpUMJjO9y6g9GaCCLQKbbqTqtNYTZF5
	 gA9+6rJujH7NbLR1gkNoSXPxz7b4x/usEdTcZTtd+D+ZbqIvU30y86OMZYyrPNmpMP
	 jH5v6cHUFtWyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C4F460E96;
	Wed,  4 Feb 2026 15:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D88D9F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9BB083DEC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MI4WqPjTnZzA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 15:44:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 631FF83E80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 631FF83E80
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 631FF83E80
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 15:44:22 +0000 (UTC)
X-CSE-ConnectionGUID: ukT+TBvPQjKOk9b6a6xvNw==
X-CSE-MsgGUID: 4fZTUOJYTB6cufhWf23AiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88987083"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="88987083"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:44:22 -0800
X-CSE-ConnectionGUID: M8LwvVyoQGq/Fp5bZVQpAg==
X-CSE-MsgGUID: BjTEwex8RuSWz07n+7Zpow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209494102"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2026 07:44:19 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed,  4 Feb 2026 16:44:11 +0100
Message-ID: <20260204154418.1285309-1-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770219862; x=1801755862;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gvwar865M8JYk60u78S+84i/r5rhjn3Vi0FJPnewpIk=;
 b=j4tAevyV/2aWaDJuavWsu1MtN/pneWvCIogZNjbL5QxBYkw2nMojZ/Da
 dmeOVBnGBcbqhpLbctpFp5b0+tSLai1OMousVKryorDKmskkNrfy+i35f
 Cy1kScEndawCH/liKa6PvbWvHrpOFc1BS+a0MFytRg1EFlIFbCOyltnTL
 8annMnT4glU5na45jPRy+AyqG3Gp7h69Dqt5nfU89JCd1YifOwnGyL2sM
 wfd9ZhMc7BSH6IlW5+apAKG/l3n04FQfeZe9LbUJU9HJELT8XfQtTr/0W
 fAJoRFYN3dEJW4472u0KEna9AoYe1FeN9huQtmEFdooe+tPeQ+dCju4RS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j4tAevyV
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/7] ice: in VEB,
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakub.slepecki@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CEAAEE9428
X-Rspamd-Action: no action

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

Changes in v4:
  - Removed "ice: do not check for zero mac when creating mac filters"
    patch.

Changes in v3:
  - Improve structure of reproduction description in cover letter.
  - LB_LAN masks and values no longer rely on boolean promotion.
  - ice_fill_sw_info() deals with u8 the entire time instead of building
    building lb_en and lan_en values at the end from booleans.
  - Refer to reproduction in cover letter in current 4/7.
  - Fixed some slip-ups "this patch" and "this commit" in commit
    messages across the series.  I did not consider this change for
    reviewed-by drop.

Changes in v2:
  - Use FIELD_GET et al. when handling fi.lb_en and fi.lan_en.
  - Rename /LB_LAN/ s/_MASK/_M/ because one of uses would need to break
    line.
  - Close open parenthesis in ice_vsi_update_bridge_mode() description.
  - Explain returns in ice_vsi_update_bridge_mode().

v3: https://lore.kernel.org/intel-wired-lan/20260120103440.892326-1-jakub.slepecki@intel.com/T/
v2: https://lore.kernel.org/intel-wired-lan/20251125083456.28822-1-jakub.slepecki@intel.com/T/
v1: https://lore.kernel.org/intel-wired-lan/20251120162813.37942-1-jakub.slepecki@intel.com/T/

Jakub Slepecki (6):
  ice: in dvm, use outer VLAN in MAC,VLAN lookup
  ice: allow creating mac,vlan filters along mac filters
  ice: allow overriding lan_en, lb_en in switch
  ice: update mac,vlan rules when toggling between VEB and VEPA
  ice: add functions to query for vsi's pvids
  ice: in VEB, prevent "cross-vlan" traffic from hitting loopback

Michal Swiatkowski (1):
  ice: add mac vlan to filter API

 drivers/net/ethernet/intel/ice/ice_fltr.c      |  104 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fltr.h      |   10 +
 drivers/net/ethernet/intel/ice/ice_lib.c       |   56 ++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h       |    2 
 drivers/net/ethernet/intel/ice/ice_main.c      |   56 ++++++--
 drivers/net/ethernet/intel/ice/ice_switch.c    |   83 ++++++++---
 drivers/net/ethernet/intel/ice/ice_switch.h    |   24 ++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c    |    8 -
 drivers/net/ethernet/intel/ice/ice_vlan_mode.c |   12 +
 9 files changed, 306 insertions(+), 49 deletions(-)

-- 
2.43.0

