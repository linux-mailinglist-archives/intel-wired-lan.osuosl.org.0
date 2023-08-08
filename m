Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB02773ADF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 17:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36F9A6117D;
	Tue,  8 Aug 2023 15:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36F9A6117D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691507559;
	bh=/hMoGJsda7r1mRzVzYIonC+qCbOKKUq9/pia0JFfCaw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IpjCJfi+iO9KYbwMZjIlO9FaEhjPCkARc1U8wfjZFBTMA2EIXwJSIPoa+w/k3ygZx
	 MO6ZtQh059+JKJ4YtoUtrnAVS1kCqfAUGbCx1hsuVeAQE6CQ0UI0y6SZENsN7fKvsc
	 4E1t2E8XwbtfIS74anqgo8/7zAiCRPpGs1AwwBW4UxfM90aU5Pmhbenw2RauTpVQss
	 XFDnczji+PisYgnZZKDNmbQVLbAmBUJMo97tPhc6hpEOk4LqU5evvwRNaQRLiT7/vy
	 t0tiEo+ima+647lZ5c89rzZuLTCHdlWcKI182rXwbD+gB5Zf0rzkTMceMTAkgmejaq
	 HPaWOsfF1ALAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVLK-K_Q-Rj0; Tue,  8 Aug 2023 15:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA5A86117F;
	Tue,  8 Aug 2023 15:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA5A86117F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9961BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E775040447
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E775040447
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mu3L7k6jWq1m for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 01:53:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7FD3404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 01:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7FD3404A8
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350997435"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="350997435"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 18:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801162721"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="801162721"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.188])
 by fmsmga004.fm.intel.com with ESMTP; 07 Aug 2023 18:53:52 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue,  8 Aug 2023 09:57:29 +0800
Message-Id: <20230808015734.1060525-1-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727021021.961119-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Aug 2023 15:12:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691459635; x=1722995635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yCX1f0D63BhxyBJ5lB2UOaTd7ZrJLybm3hSvnHjlN3A=;
 b=SjZF3JUyoInsZx3thUDEWYyGD+lvKsJ5rBzJYo8KjHwViP7Qo8XU6px9
 9Jt9QScjgnemFmcrEr/VqAm7jbsZgwjbvMazWn+0slBGU2a9wMu05bGlP
 vAeat+6XIrTTkcDd2naNtPKhxf9PDdsQW5SuMuw8niJN2JRCjw7+UaIuT
 dHr55pUtCgRJPJxRqPEpEAMGVKS5iUN1EtUj5clXURCFlo5GWCXh5RBRA
 bg7ifAUR1dw6jJIvBaEryBYZjvyu7ZY4u0Lh7dy7V65f2oPmia0xVSxom
 Zz11MZcYVyJ7D2X72Ze3kP8d3mVrgVY7DkIxGldCQseumAddttx0zz7Av
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SjZF3JUy
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] iavf: Add devlink and
 devlink rate support
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
Cc: anthony.l.nguyen@intel.com, Wenjun Wu <wenjun1.wu@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To allow user to configure queue bandwidth, devlink port support
is added to support devlink port rate API. [1]

Add devlink framework registration/unregistration on iavf driver
initialization and remove, and devlink port of DEVLINK_PORT_FLAVOUR_VIRTUAL
is created to be associated iavf netdevice.

iavf rate tree with root node, queue nodes, and leaf node is created
and registered with devlink rate when iavf adapter is configured, and
if PF indicates support of VIRTCHNL_VF_OFFLOAD_QOS through VF Resource /
Capability Exchange.

[root@localhost ~]# devlink port function rate show
pci/0000:af:01.0/txq_15: type node parent iavf_root
pci/0000:af:01.0/txq_14: type node parent iavf_root
pci/0000:af:01.0/txq_13: type node parent iavf_root
pci/0000:af:01.0/txq_12: type node parent iavf_root
pci/0000:af:01.0/txq_11: type node parent iavf_root
pci/0000:af:01.0/txq_10: type node parent iavf_root
pci/0000:af:01.0/txq_9: type node parent iavf_root
pci/0000:af:01.0/txq_8: type node parent iavf_root
pci/0000:af:01.0/txq_7: type node parent iavf_root
pci/0000:af:01.0/txq_6: type node parent iavf_root
pci/0000:af:01.0/txq_5: type node parent iavf_root
pci/0000:af:01.0/txq_4: type node parent iavf_root
pci/0000:af:01.0/txq_3: type node parent iavf_root
pci/0000:af:01.0/txq_2: type node parent iavf_root
pci/0000:af:01.0/txq_1: type node parent iavf_root
pci/0000:af:01.0/txq_0: type node parent iavf_root
pci/0000:af:01.0/iavf_root: type node


                         +---------+
                         |   root  |
                         +----+----+
                              |
            |-----------------|-----------------|
       +----v----+       +----v----+       +----v----+
       |  txq_0  |       |  txq_1  |       |  txq_x  |
       +----+----+       +----+----+       +----+----+

User can configure the tx_max and tx_share of each queue. Once any one of the
queues are fully configured, VIRTCHNL opcodes of VIRTCHNL_OP_CONFIG_QUEUE_BW
and VIRTCHNL_OP_CONFIG_QUANTA will be sent to PF to configure queues allocated
to VF

Example:

1.To Set the queue tx_share:
devlink port function rate set pci/0000:af:01.0 txq_0 tx_share 100 MBps

2.To Set the queue tx_max:
devlink port function rate set pci/0000:af:01.0 txq_0 tx_max 200 MBps

3.To Show Current devlink port rate info:
devlink port function rate function show
[root@localhost ~]# devlink port function rate show
pci/0000:af:01.0/txq_15: type node parent iavf_root
pci/0000:af:01.0/txq_14: type node parent iavf_root
pci/0000:af:01.0/txq_13: type node parent iavf_root
pci/0000:af:01.0/txq_12: type node parent iavf_root
pci/0000:af:01.0/txq_11: type node parent iavf_root
pci/0000:af:01.0/txq_10: type node parent iavf_root
pci/0000:af:01.0/txq_9: type node parent iavf_root
pci/0000:af:01.0/txq_8: type node parent iavf_root
pci/0000:af:01.0/txq_7: type node parent iavf_root
pci/0000:af:01.0/txq_6: type node parent iavf_root
pci/0000:af:01.0/txq_5: type node parent iavf_root
pci/0000:af:01.0/txq_4: type node parent iavf_root
pci/0000:af:01.0/txq_3: type node parent iavf_root
pci/0000:af:01.0/txq_2: type node parent iavf_root
pci/0000:af:01.0/txq_1: type node parent iavf_root
pci/0000:af:01.0/txq_0: type node tx_share 800Mbit tx_max 1600Mbit parent iavf_root
pci/0000:af:01.0/iavf_root: type node


[1]https://lore.kernel.org/netdev/20221115104825.172668-1-michal.wilczynski@intel.com/

Change log:

v2:
- Change static array to flex array
- Use struct_size helper
- Align all the error code types in the function
- Move the register field definitions to the right place in the file
- Fix coding style
- Adapted to queue bw cfg and qos cap list virtchnl message with flex array fields

---
Jun Zhang (3):
  iavf: Add devlink and devlink port support
  iavf: Add devlink port function rate API support
  iavf: Add VIRTCHNL Opcodes Support for Queue bw Setting

Wenjun Wu (2):
  virtchnl: support queue rate limit and quanta size configuration
  ice: Support VF queue rate limit and quanta size configuration

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  20 +
 .../net/ethernet/intel/iavf/iavf_devlink.c    | 388 ++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_devlink.h    |  39 ++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  60 ++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 228 +++++++++-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 312 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 include/linux/avf/virtchnl.h                  | 114 +++++
 18 files changed, 1221 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
