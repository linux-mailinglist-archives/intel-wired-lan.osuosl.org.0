Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E34AC83FF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E65C6089F;
	Tue, 25 Nov 2025 08:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WbdnFMvImZAH; Tue, 25 Nov 2025 08:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B37C3608A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764059702;
	bh=qohgb8BVRx+4WiSHrYP4dwERerRLJssw2PKGAG+aYyU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OyPO68JA07Na1xQPf4SrnCBehDSsFVXFKgbtwvcHJCTO4SQnXvD0EIW9EVy1OzoMb
	 3LoIRYGI9COIqseS9NaxRIgYUW1Iq0hrQrUuFCu2tgRbn9CpvCnjhLSaJWmMww7DR8
	 c8fmZX05xJVJnE2Gr7py0to1XC/fKiAA1a2cGr1P8qXScmsj+cIJc8hjbPaKWR0CkZ
	 UKXFylHUv91NcgIqnEz2fZ4Aemb/1ODw+Zo0wIlOwbC0/4FNAE0iXwqzS+M3cwWU3T
	 W2R8FQvKQ8FIRMHXCSudsBJcNes2zhwErNEjXNG5cHwJAHwyLqMqP2Al69ATYaP2Om
	 WZE7CIYutp1+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B37C3608A4;
	Tue, 25 Nov 2025 08:35:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B42F1E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A601140583
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P2043x7ch7sT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:35:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD1D34051A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD1D34051A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD1D34051A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:35:00 +0000 (UTC)
X-CSE-ConnectionGUID: 5BYZqPv6RPexh3r1u9FIAQ==
X-CSE-MsgGUID: 1O4ujtPRQXeA6Rxgi2ASbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76694421"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76694421"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:35:00 -0800
X-CSE-ConnectionGUID: z7z3X2RGTY+yf1PRMR7r2w==
X-CSE-MsgGUID: KPiifWWsT5iYc8fdiJgy8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196749750"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa003.jf.intel.com with ESMTP; 25 Nov 2025 00:34:58 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 25 Nov 2025 09:34:48 +0100
Message-ID: <20251125083456.28822-1-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764059700; x=1795595700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/COM01iDe7ScHeWoXirsZZeq3NXY859DqpHTEVVreL0=;
 b=gDsWaMjpruJwtcgUeExIvKOGjAPfp6ntybWwmvKRZJWNU3hZP2U9eot7
 dD/w0fcgOzt/WzpNBmMf6ueMtlAp2ZBlJUbrQwWJAIY7vwV7NqNnmjSPQ
 9sq/Chf1lwdd3zt2qAi77Ry2DikCf+CZSLUNd1SBGPa2owzmm7IxgzUKb
 CYtQJmxaguajZAJAzAX0J/kq8FlOam+YHJMpu0mB6b8Wo4HhKFb+cXVA2
 dBzmK7v9ofYcSagJ/jUamEXi2Bo/y4CIro5L6SrkvxuU2afQmViI5J/LI
 IKotUwtTkxlGIkrYWGRfO5QKppaZeBuMO7Mlxhvss/61pe22Zlxnl/oyW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDsWaMjp
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/8] ice: in VEB,
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

To reproduce the issue have E810 connected to another adapter, then:

    ip l set $pfa vf 0 vlan 4
    ip l set $pfa vf 1 vlan 7
    ip l set $pfb vf 0 trust on spoof off vlan 4
    ip l set $pfb vf 1 trust on spoof off vlan 7
    ip l set $vfa0 netns $netns0 up
    ip l set $vfa1 netns $netns1 up
    ip netns exec $netns0 ip a add 10.0.0.1/24 dev $vfa0
    ip netns exec $netns1 ip a add 10.0.0.2/24 dev $vfa1
    ip l add $br type bridge
    ip l set $vfb0 master $br up
    ip l set $vfb1 master $br up
    ip l set $br up

Where $pfa is the E810 and $pfb is its link partner.  Send the packets
between $vfa0 and $vfa1.  We expect to see ICMP packets at the $br.
Instead, ARP is unable to resolve the 10.0.0.1 because the reply is
stuck in the internal switch.

Changes in v2:
  - Use FIELD_GET et al. when handling fi.lb_en and fi.lan_en.
  - Rename /LB_LAN/ s/_MASK/_M/ because one of uses would need to break
    line.
  - Close open parenthesis in ice_vsi_update_bridge_mode() description.
  - Explain returns in ice_vsi_update_bridge_mode().

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

