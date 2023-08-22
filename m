Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC3278462B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32F4C40272;
	Tue, 22 Aug 2023 15:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32F4C40272
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692719386;
	bh=ctBSNCRsylKa93wi5HSQjtgt5kimINp4QJEiWewp5iA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zI2KqZtrSTU/1zqSbl+IoioAX2Aluur/ZAFC1tuwKXE6ccNY5aEb0RE0xt+MhBx6H
	 KmBUPdhnERbAb54DnruufrMD5+MOZG+BntWnYeEC7Lp52cfv2FKPVIGFUyNtZ/V68X
	 aTEKKElgYK5b4YjZcJUldsMSdbPb3LQQ7F1LoVOGkjvdv0H+wR3BqioeFljmAzPggM
	 cJEwT6WxbQMuk9/qb15FxhyK9XwL/9rDb8X3v77I8W8q9u4fj3F5zggkmV4etvUYBA
	 9Y3MLXc6X66eiivytTVhx6O79AfuFohb422RfUliJdB1Tj5zZ1o4izj572j5ih2nNc
	 J6B9ap1rwLvUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnZv56qzmVf7; Tue, 22 Aug 2023 15:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B71834012F;
	Tue, 22 Aug 2023 15:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B71834012F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28DE71BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 005BB60E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 005BB60E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bM2vjm6fF3Vm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 03:35:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 638F960B71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 03:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 638F960B71
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373738203"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="373738203"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739149337"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="739149337"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.152])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2023 20:35:24 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue, 22 Aug 2023 11:39:58 +0800
Message-Id: <20230822034003.31628-1-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727021021.961119-1-wenjun1.wu@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 22 Aug 2023 15:49:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692675328; x=1724211328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IDjHvJCkgR9BZBy8I0QPXQ6ytxuhXb3xADP+6B5/38E=;
 b=VTWhsP1NHtBolpSFSMDgROCB0vY436NoDBtDGeiWt3jDnkBAEJ0KuNKE
 ZHwNPSBdmpIAbmRSfybVQx6YXWcLIf6gomcKGgRXkG6P0HK/GZcSJhyeL
 k1Zg7K7I2NOL3mGt+zX+h4hh+zno0gczS175eXSBU6ZCsNJaL9Y02qpVW
 6tFswN8x2ziAGFHZMVQwkNH8/pNNBNEX+6AQi0VbKmvvEIIxyA8xL6XTz
 e3QzScm9/KhHhyWQzEPrRp/+pMvTfDldOciF+ELO4YPmHDUwW05lh91iS
 v8ZmQ3GUBT6OuioQeQq+ZYYyycuioDr0c2huJe0OBtwIC0NlJ4DksDqc2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VTWhsP1N
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
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

v4:
- Rearrange the ice_vf_qs_bw structure, put the largest number first
- Minimize the scope of values
- Remove the unnecessary brackets
- Remove the unnecessary memory allocation.
- Added Error Code and moved devlink registration before aq lock initialization
- Changed devlink registration for error handling in case of allocation failure
- Used kcalloc for object array memory allocation and initialization
- Changed functions & comments for readability

v3:
- Rebase the code
- Changed rate node max/share set function description
- Put variable in local scope

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
 drivers/net/ethernet/intel/iavf/iavf.h        |  19 +
 .../net/ethernet/intel/iavf/iavf_devlink.c    | 377 ++++++++++++++++++
 .../net/ethernet/intel/iavf/iavf_devlink.h    |  38 ++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  64 ++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 231 ++++++++++-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 310 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 include/linux/avf/virtchnl.h                  | 119 ++++++
 18 files changed, 1218 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
