Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD7765760
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 17:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26156408E6;
	Thu, 27 Jul 2023 15:23:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26156408E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690471403;
	bh=AwEstyHFlDjmNyTWtBN03IlsJIrp+5+z6rK0nWImqP0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E/siHbxVWNwcqsLfexbzusq0QQL6zPgn62G7DMyX35lz7i/J45rVPzStrHcQWxknl
	 JnjhxJkg81tr3pBGsZIx2TaD2y2IvdIJpfPqbF96bzEPg8TeBPg4RFL5hSAEA9kKtI
	 9PrOJy5kWeF9Cjd/E5Qv8gD7hD89b8tMmfyBnRGvtxCrNAxUnq+rCYD5iZfM9RhxTH
	 SGhMPJ231Y4h5Tl3zirFCeATQfqA5hbsLNXoPhwUdV5ZsXpSMbu3NxYWV60fVxSRTg
	 q3A9fiF6UjbSP+uUN1IIolUovOb/447PYbgFtWfSxDcXkFGzlSy3xObxbbXD4PDH67
	 4zcrmpNaCNSxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAdoqSObm4KD; Thu, 27 Jul 2023 15:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A3B2400A4;
	Thu, 27 Jul 2023 15:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A3B2400A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E03F1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 02:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA02E405BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 02:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA02E405BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VdJEevd7kj3H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 02:15:26 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jul 2023 02:15:26 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05CF940134
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05CF940134
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 02:15:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="365640274"
X-IronPort-AV: E=Sophos;i="6.01,233,1684825200"; d="scan'208";a="365640274"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 19:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796785220"
X-IronPort-AV: E=Sophos;i="6.01,233,1684825200"; d="scan'208";a="796785220"
Received: from dpdk-wuwenjun-icelake-ii.sh.intel.com ([10.67.110.188])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jul 2023 19:08:16 -0700
From: Wenjun Wu <wenjun1.wu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 10:10:16 +0800
Message-Id: <20230727021021.961119-1-wenjun1.wu@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 27 Jul 2023 15:23:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690424126; x=1721960126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/+Au7nJajsbX6QnKE7qKIgP7bbRcfr6Yj9UBbnT8/rM=;
 b=R0fIuOcX8BuQlKyWbvUnQ/u0IThBJdla4tKQ8ynyyXyZ7uzSDWFBi9LU
 M4t+jEl7Wg2DCAnrXRuZ1OUJMhOu8ocRjiNKPJz4dudlrqAvChos6ueTA
 KBn5nT2g/nlGn6x8pGKuFhyIUmEQ/rt+PD1AbE2V0IxtDXZ6PGeO1AiCt
 UOVydttGvUg28srKPWKtSwKVusDau998VmCOyoZoxNy02ZGOzWdqrMf8q
 KMth2DuE3Er02/x9M4nBMhSal4ltT5IN6NfvwI2QFxkH/TJVrbLjq5o0k
 fAHgaxZNexGVN6+jhGYiNZjQn4bBsut//pUVh6vPUQOMna9OhrOmYjgMJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0fIuOcX
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/5] iavf: Add devlink and
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
Cc: mitu.aggarwal@intel.com, qi.z.zhang@intel.com,
 Wenjun Wu <wenjun1.wu@intel.com>
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
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 317 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 include/linux/avf/virtchnl.h                  | 113 +++++
 18 files changed, 1225 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_devlink.h

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
