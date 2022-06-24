Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A580559A8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 15:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5507C6147D;
	Fri, 24 Jun 2022 13:42:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5507C6147D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656078154;
	bh=idZdUwCMGxKJuUXiSZnHDtGR4ZWnjRNJ8/7s03cL04s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OhR4huygueC+A9llT7x99tgA5lOdG+YzpNZr40zSYEd6uubG9mXShRxnyP4nBa32n
	 V25i13F4TgaGz16uOVx4YaOEcLjebqZ0yM8XkaFv40Lg0CL8tvvLN/NGDlC/h3NhmA
	 S+CyoUxyPei9fpsAYy0T08Jk6oHBHIsj6fnPabLlFMbY4izf5elALIVUSVRuEjgaKt
	 tQLrJwz8H6AMme+QCjRgp4aNbqxBSsQBneSC3C9I2JimHo2nBFB/Q0G141NvCyw7aJ
	 Gkx70TPUlie763k21gy8ZcKNoC0b9b4E7AO2BhoP0JHcdbiaDy9oo01zmvxacChVdC
	 R8302p9sCg6Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_9hh3DOExvj; Fri, 24 Jun 2022 13:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DCC361478;
	Fri, 24 Jun 2022 13:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DCC361478
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 751451BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D0C282835
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D0C282835
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RmnOszPiP9Lc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 13:42:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 589A381AEF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 589A381AEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 13:42:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="269732725"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="269732725"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="621720579"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 24 Jun 2022 06:42:20 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25ODgI7W005567; Fri, 24 Jun 2022 14:42:18 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Jun 2022 15:41:30 +0200
Message-Id: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656078146; x=1687614146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UN1zVcZt17t43F9YUs2koAAnwY/AV/i1iLRoI+KLsh8=;
 b=SP+gv1eVycfot2m1Vz91zoBZzdGB6KJn26HNUyHfrESXMzDnD67SLvTn
 tX7UPd2WPb8/UQhTEHK80e385gLlq3pgFiNYhatsEcsVQEQWMYVTNIiIn
 tay8MxsySnrKPw8/TsLGavsmRXVmjacOvtt9DPQqlLr+20J/mWQBNHfSk
 vUWcPvo6b/FgYUfCMFoREkl0PBPZFN+HHFFBPS941gsBbSZ9oDGgnBb/m
 dM4wYTWdYNHYCbqawIBWADE44NKg3sbnv/qPzAkgGGwUz2wcBkvjesSFp
 VBUGF5tYRDO/iewU79KILEjoABmle2a+d9N8l43Cq+5y0Yz0qWqLdW44M
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SP+gv1eV
Subject: [Intel-wired-lan] [RFC PATCH net-next 0/4] ice: PPPoE offload
 support
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 elic@nvidia.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 zhangkaiheb@126.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, gustavoars@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for dissecting PPPoE and PPP-specific fields in flow dissector:
PPPoE session id and PPP protocol type. Add support for those fields in
tc-flower and support offloading PPPoE. Finally, add support for hardware
offload of PPPoE packets in switchdev mode in ice driver.

Example filter:
tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
    1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR

Changes in iproute2 are required to use the new fields.

ICE COMMS DDP package is required to create a filter in ice.

Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
will add this feature.

[0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com

Marcin Szycik (1):
  ice: Add support for PPPoE hardware offload

Wojciech Drewek (3):
  flow_dissector: Add PPPoE dissectors
  net/sched: flower: Add PPPoE filter
  flow_offload: Introduce flow_match_pppoe

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |  11 ++
 drivers/net/ethernet/intel/ice/ice_switch.c   | 165 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  94 ++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   8 +
 include/net/flow_dissector.h                  |  11 ++
 include/net/flow_offload.h                    |   6 +
 include/uapi/linux/pkt_cls.h                  |   3 +
 net/core/flow_dissector.c                     |  51 +++++-
 net/core/flow_offload.c                       |   7 +
 net/sched/cls_flower.c                        |  46 +++++
 12 files changed, 391 insertions(+), 17 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
