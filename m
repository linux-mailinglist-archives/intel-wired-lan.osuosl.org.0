Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9F796BF38
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:56:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DE7F811EC;
	Wed,  4 Sep 2024 13:56:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TyFNqntpXkDa; Wed,  4 Sep 2024 13:56:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 614FE80E93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458210;
	bh=pH5/nva7blU637n1lHlctRPIke79gY2kkCOW9Prjaao=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wifEA3KkerJvAErPyPc5PN4lrRwDax2dXXU66dZUZjKkkE5uUCdc9FgGizRb94cAo
	 XWEAZI43d92cDyHlvAAbMBQ4NQvmjY2PbosZN2P5ayRzV+WUBGc6dXYSvgpR1JTLYC
	 5WXK63aDcorsYdSJ2M7nmnYFWqlAF4K//5iv+hjMccJIsSbGp0jME0hlKu1Jugj6I4
	 ZqrqcG98yYWwWMEWRMSsxKYgdgswXeZD+GjqrBno1gfbxwj4dI8lqks36bHm7fMKbi
	 ytuzQdcJLssTJjLpO85MWItI5T8yddtn0VXUhy4Ichh7JEmkeFNfd2QtsNj9GgMYtX
	 2qn/s/eax86aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 614FE80E93;
	Wed,  4 Sep 2024 13:56:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4424F1BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F4FD40169
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JExB1vmGl69 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:56:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 804C04016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 804C04016B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 804C04016B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:56:44 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-262-gVpkTC81Mk-Tf-tyDDojqA-1; Wed,
 04 Sep 2024 09:56:39 -0400
X-MC-Unique: gVpkTC81Mk-Tf-tyDDojqA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0CB7919560A5; Wed,  4 Sep 2024 13:56:37 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.58])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8C4A9195608A; Wed,  4 Sep 2024 13:56:26 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Sep 2024 15:53:32 +0200
Message-ID: <cover.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725458203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pH5/nva7blU637n1lHlctRPIke79gY2kkCOW9Prjaao=;
 b=Au7Z/A0pDcNW3VRxmcN1nKhjvddiICvbynfZyayQE3YsQDNhMkxLofXwXeLuK1EICGg12h
 K8OdyvNWesIhvR3O98Kbw5aRgIdFkWonvSyDeZaoERmw1evGwkl/rXwaclSWHOoW0+nfMc
 Fv5dxDiqlehzaZ5CMy19GZnstVFELjg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Au7Z/A0p
Subject: [Intel-wired-lan] [PATCH v6 net-next 00/15] net: introduce TX H/W
 shaping API
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We have a plurality of shaping-related drivers API, but none flexible
enough to meet existing demand from vendors[1].

This series introduces new device APIs to configure in a flexible way
TX H/W shaping. The new functionalities are exposed via a newly
defined generic netlink interface and include introspection
capabilities. Some self-tests are included, on top of a dummy
netdevsim implementation. Finally a basic implementation for the iavf
driver is provided.

Some usage examples:

* Configure shaping on a given queue:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
	--do set --json '{"ifindex": '$IFINDEX',
			  "shaper": {"handle":
				     {"scope": "queue", "id":'$QUEUEID'},
			  "bw-max": 2000000}}'

* Container B/W sharing

The orchestration infrastructure wants to group the 
container-related queues under a RR scheduling and limit the aggregate
bandwidth:

./tools/net/ynl/cli.py --spec Documentation/netlink/specs/shaper.yaml \
	--do group --json '{"ifindex": '$IFINDEX',
			"leaves": [
			  {"handle": {"scope": "queue", "id":'$QID1'},
			   "weight": '$W1'}, 
			  {"handle": {"scope": "queue", "id":'$QID2'},
			   "weight": '$W2'}], 
			  {"handle": {"scope": "queue", "id":'$QID3'},
			   "weight": '$W3'}], 
			"node": {"handle": {"scope":"node"},
			 	 "bw-max": 10000000}}'
{'ifindex': $IFINDEX, 'handle': {'scope': 'node', 'id': 0}}

Q1 \
    \
Q2 -- node 0 -------  netdev
    / (bw-max: 10M)
Q3 / 

* Delegation

A containers wants to limit the aggregate B/W bandwidth of 2 of the 3
queues it owns - the starting configuration is the one from the
previous point:

SPEC=Documentation/netlink/specs/net_shaper.yaml
./tools/net/ynl/cli.py --spec $SPEC \
	--do group --json '{"ifindex": '$IFINDEX',
			"leaves": [ 
			  {"handle": {"scope": "queue", "id":'$QID1'},
			   "weight": '$W1'}, 
			  {"handle": {"scope": "queue", "id":'$QID2'},
			   "weight": '$W2'}], 
			"node": {"handle": {"scope": "node"},
				 "bw-max": 5000000 }}'
{'ifindex': $IFINDEX, 'handle': {'scope': 'node', 'id': 1}}

Q1 -- node 1 --------\
    / (bw-max: 5M)    \
Q2 /                   node 0 -------  netdev
                      /  (bw-max: 10M)
Q3 ------------------

* Cleanup:

To delete a single queue shaper:

./tools/net/ynl/cli.py --spec $SPEC --do delete --json \
	'{"ifindex": '$IFINDEX',
	  "handle": {"scope": "queue", "id":'$QID3'}}'

Q1 -- node 1 --------\
    / (bw-max: 5M)    \
Q2 /                   node 0 -------  netdev
                       (bw-max: 10M)

Deleting a node shaper relinks all its leaves to the node's parent:

./tools/net/ynl/cli.py --spec $SPEC --do delete --json \
	'{"ifindex": '$IFINDEX',
	  "handle": {"scope": "node", "id":1}}'

Q1 ------\
          \
          node 0 -------  netdev
         /  (bw-max: 10M)
Q2 -----

Deleting the last shaper under a node shaper deletes the node, too:

./tools/net/ynl/cli.py --spec $SPEC --do delete --json \
	'{"ifindex": '$IFINDEX',
	  "handle": {"scope": "queue", "id":'$QID1'}}'
./tools/net/ynl/cli.py --spec $SPEC --do delete --json \
	'{"ifindex": '$IFINDEX',
	  "handle": {"scope": "queue", "id":'$QID2'}}'
./tools/net/ynl/cli.py --spec $SPEC --do get --json \
	'{"ifindex": '$IFINDEX',
	  "handle": {"scope": "node", "id": 0}}'
Netlink error: No such file or directory
nl_len = 44 (28) nl_flags = 0x300 nl_type = 2
	error: -2
	extack: {'bad-attr': '.handle'}

[1] https://lore.kernel.org/netdev/20240405102313.GA310894@kernel.org/
---
Changes from v5:
 - handle/shaper unsplit
 - removed 'binding' from NL api
 - several helper renames
 - added rcu protection to shaper pointer
 - implemented value checking into the core
 - handle device channels reconf
 - consolidate NL ctx handling
 - dropped idr allocator, leverage the existing xarray
 - caps names shrinking
 - group() op is optional
 - cap callback can't fail
 - more self-tests

v5: https://lore.kernel.org/netdev/cover.1724944116.git.pabeni@redhat.com/

Changes from v4:
 - ops operate on struct binding
 - 'root' -> 'node' rename
 - most core function/helpers operate on 'binding'
 - use NL_SET_BAD_ATTR where possible
 - some code deduplication

v4: https://lore.kernel.org/netdev/cover.1724165948.git.pabeni@redhat.com/

Changes from v3:
 - rename
 - locking
 - delete operates on node, too

v3: https://lore.kernel.org/netdev/cover.1722357745.git.pabeni@redhat.com/

Changes from RFC v2:
 - added patch 1
 - fixed deprecated API usage

RFC v2: https://lore.kernel.org/netdev/cover.1721851988.git.pabeni@redhat.com/

Changes from RFC v1:
 - set() and delete() ops operate on a single shaper
 - added group() op to allow grouping and nesting
 - split the NL implementation into multiple patches to help reviewing

RFC v1: https://lore.kernel.org/netdev/cover.1719518113.git.pabeni@redhat.com/

Paolo Abeni (11):
  genetlink: extend info user-storage to match NL cb ctx
  netlink: spec: add shaper YAML spec
  net-shapers: implement NL get operation
  net-shapers: implement NL set and delete operations
  net-shapers: implement NL group operation
  net-shapers: implement delete support for NODE scope shaper
  net-shapers: implement shaper cleanup on queue deletion
  netlink: spec: add shaper introspection support
  net: shaper: implement introspection support
  net-shapers: implement cap validation in the core
  testing: net-drv: add basic shaper test

Sudheer Mogilappagari (2):
  iavf: Add net_shaper_ops support
  iavf: add support to exchange qos capabilities

Wenjun Wu (2):
  virtchnl: support queue rate limit and quanta size configuration
  ice: Support VF queue rate limit and quanta size configuration

 Documentation/netlink/specs/net_shaper.yaml   |  401 +++++
 Documentation/networking/kapi.rst             |    3 +
 MAINTAINERS                                   |    1 +
 drivers/net/Kconfig                           |    1 +
 drivers/net/ethernet/intel/Kconfig            |    1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |   13 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  159 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |    2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  157 +-
 drivers/net/ethernet/intel/ice/ice.h          |    2 +
 drivers/net/ethernet/intel/ice/ice_base.c     |    2 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   21 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    8 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |    1 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |    8 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  335 ++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   11 +
 .../intel/ice/ice_virtchnl_allowlist.c        |    6 +
 drivers/net/netdevsim/netdev.c                |   39 +
 drivers/net/vxlan/vxlan_mdb.c                 |    2 +-
 include/linux/avf/virtchnl.h                  |  119 ++
 include/linux/netdevice.h                     |   21 +
 include/linux/netlink.h                       |    5 +-
 include/net/genetlink.h                       |    8 +-
 include/net/net_shaper.h                      |  120 ++
 include/uapi/linux/net_shaper.h               |   97 ++
 net/Kconfig                                   |    3 +
 net/Makefile                                  |    1 +
 net/core/dev.c                                |    8 +
 net/core/dev.h                                |   10 +
 net/core/netdev-genl.c                        |    2 +-
 net/core/rtnetlink.c                          |    2 +-
 net/devlink/devl_internal.h                   |    2 +-
 net/ethtool/rss.c                             |    2 +-
 net/netfilter/nf_conntrack_netlink.c          |    2 +-
 net/netlink/genetlink.c                       |    4 +-
 net/shaper/Makefile                           |    8 +
 net/shaper/shaper.c                           | 1460 +++++++++++++++++
 net/shaper/shaper_nl_gen.c                    |  162 ++
 net/shaper/shaper_nl_gen.h                    |   46 +
 tools/testing/selftests/drivers/net/Makefile  |    1 +
 tools/testing/selftests/drivers/net/shaper.py |  458 ++++++
 .../testing/selftests/net/lib/py/__init__.py  |    1 +
 tools/testing/selftests/net/lib/py/ynl.py     |    5 +
 45 files changed, 3707 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/netlink/specs/net_shaper.yaml
 create mode 100644 include/net/net_shaper.h
 create mode 100644 include/uapi/linux/net_shaper.h
 create mode 100644 net/shaper/Makefile
 create mode 100644 net/shaper/shaper.c
 create mode 100644 net/shaper/shaper_nl_gen.c
 create mode 100644 net/shaper/shaper_nl_gen.h
 create mode 100755 tools/testing/selftests/drivers/net/shaper.py

-- 
2.45.2

