Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C149563ADBF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:31:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0344C409FC;
	Mon, 28 Nov 2022 16:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0344C409FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653116;
	bh=24pXhnZNclgOFaZAay2uGQnuRAEwfUNwLjEYE61yL1Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=il95lPoBF7pBphukLVNnM5CM0O0YfEQVfSHMROZ3ywvPNif+Rc69/uneTKgEBdsOV
	 huk510Zo1F5gycqO8hdL3Lq3stMUTtyoMNgRVq1pRdMWkz/oZctMxr13FdTBoHAOkx
	 OvJDShHRGCY746mCzbZo0cILldvZG1WPp0D0AtM2xv0I0HvtrCRV0QPMtnPeGFCUeN
	 2kGtz5C5IDeE6UPMa5FqbSz97TZwUBWU6xCMEpBjy4dP3peqn6DeFVldhQRGACryxX
	 c1YGy3b/3ilihM8to0RthBMHpRQAi6GMKJgVBa0VgeKt/twK9/BGvgsIWI/54ouKtQ
	 LTsVeJZ+SUhfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iiabxIK_cvl0; Mon, 28 Nov 2022 16:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C69B5408AD;
	Mon, 28 Nov 2022 16:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C69B5408AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B44D61BF59F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B54181A2B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B54181A2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rrynnqX2W0-U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 20:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE79F819ED
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE79F819ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:24:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315304924"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315304924"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 12:24:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="674845837"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="674845837"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 23 Nov 2022 12:24:16 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Nov 2022 15:19:26 -0500
Message-Id: <20221123201926.159418-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669235056; x=1700771056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QXeMTFACCvSY22g+Ei44Qv6n9p0lbxSzaaN0Fsuv3es=;
 b=B6GByVYq+74tWVIFx4etUtm29ai7fc0xvHhtwfuGoAd99w7nUMlLMgVT
 nmYcQT3OArc6DtNtMLdW2bNg0Rtmp6qerVahBpi2a9C/T2/lPqe/wrGvK
 pJdN0EjOyt5WTWiYHeZrrbIULVvHCkTedZVJIdZkVi0p+EIBdo2oOTHa4
 1M24PBycvt8NTxvqeRRsntzK3ehiMNyGzSbPoANBS6a2gv+ZVC9+OeEbg
 cnkn6M+QyacD9XaEtGWdJYkktpIVPs5xmaF2c/AFm/vXW3C248ow4lY5v
 cz06PTiGz0mUmv9DpP+cqJr6/YTqUb4G/qcZrlkIvUYqls+yvzjxwpMbp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B6GByVYq
Subject: [Intel-wired-lan] [PATCH RFC net-next 0/1] idpf: add IDPF driver
 for initial feedback
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 shailendra.bhatnagar@intel.com, madhu.chittim@intel.com,
 phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This adds the Infrastructure Data Path Function (IDPF) driver
code as a single RFC patch. The main idea is to introduce the
IDPF driver just for initial feedback while this code is being
prepared into a proper series to be submitted to the mailing list
i.e. this patch is not intended to be merged but to get the feedback.

IDPF driver is used for both physical and virtual functions.
Except for some of the device operations, rest of the functionality
is same for both PF and VF. It uses virtchnl version2 opcodes and
structures defined in 'virtchnl2' header file which helps the driver
to learn most of the capabilities and register offsets from the
device Control Plane (CP) instead of assuming the default values.

Pavan Kumar Linga (1):
  idpf: introduce IDPF driver

 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   20 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  847 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  646 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  128 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  190 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  212 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1477 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  136 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  422 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  119 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2663 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  128 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1331 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4937 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  852 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  195 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3980 +++++++++++++
 include/linux/avf/virtchnl2.h                 | 1490 +++++
 include/linux/avf/virtchnl2_lan_desc.h        |  605 ++
 23 files changed, 20584 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
 create mode 100644 include/linux/avf/virtchnl2.h
 create mode 100644 include/linux/avf/virtchnl2_lan_desc.h

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
