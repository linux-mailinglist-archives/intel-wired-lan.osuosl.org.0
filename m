Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2DC757D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 17:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B60C847F2;
	Thu, 20 Nov 2025 16:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gY3cb1ccK89Y; Thu, 20 Nov 2025 16:57:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D075C84804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763657868;
	bh=2fnFtKe0YBSt9DolQQ0Gy2EB6h4daTO03VQjl1Z5J0s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XK0Tvj4HPtLFDr+BEMGPW/KK/AuDuetuZlFVKyJLejHzEaBeZLthRqm20j2IeiY4N
	 lf+r8+R9lUFqZaama5XcHs3AEgPskMUxs99KX9cPou1+m9h10j1kjeey5csmCHnl2w
	 rtLu/7SBt7uSTUXb92/nXBB/DH7QHzN7tOxXmHHnJ1M01yRIy08tkuq0OZfvRyjN89
	 WP82JT4zzXwILT3V3J2KPy2e1qmxe+ox1G/ninlL/bJV5KgviwslXOHW1SdOHBPJ9N
	 15fO8QNgEJcWjREPJYZtQDD32Ai7R+znGxgxDZPjn/QzTWNGOcTk+XNVNAIeRrZ+AS
	 RJNUjeeritabA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D075C84804;
	Thu, 20 Nov 2025 16:57:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA9B5158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0A1A6125B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywOMDV8w09zB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 16:28:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8E8161073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8E8161073
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8E8161073
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 16:28:17 +0000 (UTC)
X-CSE-ConnectionGUID: byBMHtvbTgOzzSVmyPbnCg==
X-CSE-MsgGUID: nen7U5nNRkKDhc+WT2806w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69599280"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69599280"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 08:28:17 -0800
X-CSE-ConnectionGUID: tq7KI/JMR3+ujQjtikJ/Cw==
X-CSE-MsgGUID: 9U5BzslsQqmc6nn8awrjiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="191531277"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by orviesa008.jf.intel.com with ESMTP; 20 Nov 2025 08:28:15 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com
Date: Thu, 20 Nov 2025 17:28:05 +0100
Message-ID: <20251120162813.37942-1-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 20 Nov 2025 16:57:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763656097; x=1795192097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8JIE/NAhqf0XKlA4PBiWOtHObaDWqMMcngXrjCqMSKE=;
 b=epYihk9KFqha+DCWGGG/1s7Ron54VAVnDoSvom+XJLWYyR9YU1C2kBlX
 9fkSDMyHSiLsS9pS2wWH6E8D714OtS9HjxeFCBH3fR2NNuDaGzG8kM0I2
 ZzvWhgn+b8N2r3V1EYnK9c8+Zru9dmzZCRIjR6DFRqESGRpkvmcYpkgB9
 x/PGybciiStfyD9CqwTM8jAx/1zaG4NtL4YgjKGstv36De3JMM0hZdEuv
 u8YtSKEViSZyeBGYerbjYL27bAJMW/q44D1vYiWsW/Z+AXupT0MkSjwrO
 UaQdxAnDr8k7AcqUCfaR3NPeetZrupMdkZdInH/P9/vYQSikbcCKJrnw+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=epYihk9K
Subject: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: in VEB,
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
 drivers/net/ethernet/intel/ice/ice_main.c     |  46 ++++++--
 drivers/net/ethernet/intel/ice/ice_switch.c   |  79 +++++++++----
 drivers/net/ethernet/intel/ice/ice_switch.h   |  12 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   8 +-
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |  12 ++
 9 files changed, 285 insertions(+), 44 deletions(-)

-- 
2.43.0

