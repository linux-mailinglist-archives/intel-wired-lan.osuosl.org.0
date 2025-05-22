Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF0EAC1122
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 18:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ECA280A50;
	Thu, 22 May 2025 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GsQo_eBHVO_b; Thu, 22 May 2025 16:35:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA63680A5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747931749;
	bh=enSteaE1w/rrH5xMQpB9ifFnJ1KPI3D2U6D0/TSd5wM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0DY+Uh3ItwuLkisrhN2SRP0KlyRfElCl7zBM9fJvj73brWVo+iHieWVCbRXju/zEG
	 a+98A4watuV4EuAOK2boaDODF8tXhp0UVHT7y9hWERb/MvI/hXQ/kctKiGeAuGFfRc
	 BTxBwAv2yNrZ4c3W3IHN16PQyvBmciVThaIaHN38a3rBFhi9WvxrZ+7vxUVPgILpe5
	 WSmw/Ne3V7DL3w9Bg3VDggr+OgsxnkgnIGA7dMibl1RImdEEUvqcBc5qoqCBqq7Upv
	 iVj1ybxARm72NySm02V8N6fjxB41KqQPPHlu+C336nyGbvUo3PAsP+0YRMuo5xrPLH
	 gXmuyO21OYIjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA63680A5B;
	Thu, 22 May 2025 16:35:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 07208106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED1ED4056D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:35:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AObBCrfb73jH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 16:35:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D6104017B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D6104017B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D6104017B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:35:47 +0000 (UTC)
X-CSE-ConnectionGUID: mnQVNFg8Sz2WT+K8Cgc7ow==
X-CSE-MsgGUID: OO1piaktTOODcg89ZnfHkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49889028"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="49889028"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 09:35:47 -0700
X-CSE-ConnectionGUID: a6/QFpl9RSWoEr/nOLM3sQ==
X-CSE-MsgGUID: WjNNFZnOQTmzoaUNJRYBHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145631339"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa004.jf.intel.com with ESMTP; 22 May 2025 09:35:42 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 22 May 2025 18:29:35 +0200
Message-Id: <20250522162938.1490791-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747931747; x=1779467747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ux9eZaPRebseznFfCMQVDgdu76v+ODiKx1nrwgRY7uY=;
 b=d5sqAFJWp01PhGd8YXa/ZAG0IWkPZgXEuNDFiiJz1PYfU2zENUengRXE
 OV8U6/nConmqr9NPjbtbTqTofwsJQfXDHwpiKjLJ7SUKri7pTzPY0CivD
 JpwyDBQxCoGTOFYTzRPyUS+iR2zYrCkaRwc3dWHIXf9jbHncBD8aww8ti
 fduMLtSTC3f1Mk0WzPVcEByjWJzPcGLVA8UZeaCB4J1PhVsXjbXe6tnLQ
 23nsLxAmK4LuSTxdxeJIJHUofIFVT2b8FW7i8FHN7IR6lJLfWUG0RzMJC
 iiPM0uADPIMMqTqElxN1uqJ21potkRiy3FbmkgXSEmID3WOUlKiOLC9I9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d5sqAFJW
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] dpll: add Reference SYNC
 feature
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

The device may support the Reference SYNC feature, which allows the
combination of two inputs into a Reference SYNC pair. In this
configuration, clock signals from both inputs are used to synchronize
the dpll device. The higher frequency signal is utilized for the loop
bandwidth of the DPLL, while the lower frequency signal is used to
syntonize the output signal of the DPLL device. This feature enables
the provision of a high-quality loop bandwidth signal from an external
source.

A capable input provides a list of inputs that can be paired to create
a Reference SYNC pair. To control this feature, the user must request a
desired state for a target pin: use ``DPLL_PIN_STATE_CONNECTED`` to
enable or ``DPLL_PIN_STATE_DISCONNECTED`` to disable the feature. Only
two pins can be bound to form a Reference SYNC pair at any given time.

Verify pins bind state/capabilities:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-get \
 --json '{"id":0}'
{'board-label': 'CVL-SDP22',
 'id': 0,
 [...]
 'reference-sync': [{'id': 1, 'state': 'disconnected'}],
 [...]}

Bind the pins by setting connected state between them:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-set \
 --json '{"id":0, "reference-sync":{"id":1, "state":"connected"}}'

Verify pins bind state:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-get \
 --json '{"id":0}'
{'board-label': 'CVL-SDP22',
 'id': 0,
 [...]
 'reference-sync': [{'id': 1, 'state': 'connected'}],
 [...]}

Unbind the pins by setting disconnected state between them:
$ ./tools/net/ynl/pyynl/cli.py \
 --spec Documentation/netlink/specs/dpll.yaml \
 --do pin-set \
 --json '{"id":0, "reference-sync":{"id":1, "state":"disconnected"}}'

v3:
- no change.

Arkadiusz Kubalewski (3):
  dpll: add reference-sync netlink attribute
  dpll: add reference sync get/set
  ice: add ref-sync dpll pins

 Documentation/driver-api/dpll.rst             |  25 +++
 Documentation/netlink/specs/dpll.yaml         |  19 ++
 drivers/dpll/dpll_core.c                      |  27 +++
 drivers/dpll/dpll_core.h                      |   2 +
 drivers/dpll/dpll_netlink.c                   | 188 ++++++++++++++++--
 drivers/dpll/dpll_nl.c                        |  10 +-
 drivers/dpll/dpll_nl.h                        |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 186 +++++++++++++++++
 include/linux/dpll.h                          |  10 +
 include/uapi/linux/dpll.h                     |   1 +
 11 files changed, 451 insertions(+), 20 deletions(-)


base-commit: 4ff4d86f6cceb6bea583bdb230e5439655778cce
-- 
2.38.1

