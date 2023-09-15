Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13B7A220A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 17:12:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E479F41972;
	Fri, 15 Sep 2023 15:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E479F41972
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694790763;
	bh=GulTDOm8HAK8ZKl8JlDwYfv9xOJEZmPYS9ngl3BV4Xo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tz53ujlMnDmpxOMAXYQzet98Nrh6G3puvMpWgOKqwB0DPwD8AUdzVcqQcR2338o/p
	 paWqdBn6l36tT5Gk3JddSSzzNOVUuvY5HGrzNTHCra7PDlJIcwGH93Jl0toXdZYano
	 cAwAQzxBJPjrchT6K5l5aKbU74thMi1rjXWk0qcgxAScFmcAlDBNs2AWxkULFhPB9V
	 MnT6OvKhNrPkrFESvrPFfjgQ51v7sWb6ICWyYAHKpPATFmFCslhwMRaoWYFc3lDi7v
	 D7Qq0p43FPCMWIIidq/cU8fkn3HxTfmkuG1ri07P/H3BCvjxv5pCvq1G6mgqBpFtNv
	 /kxgNRo2fgv4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9-1JeQsOYnZ; Fri, 15 Sep 2023 15:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A294404FF;
	Fri, 15 Sep 2023 15:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A294404FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 741BB1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CA4283B87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CA4283B87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAPLXAhsGLu9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 15:12:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 714C783B86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 15:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 714C783B86
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410209399"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410209399"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868741732"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868741732"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 15 Sep 2023 08:12:27 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 227692FC61;
 Fri, 15 Sep 2023 16:12:26 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Sep 2023 17:09:52 +0200
Message-Id: <20230915150958.592564-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694790750; x=1726326750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ALwqO15zdrum/IQpPuwvwWfpBilsz8rYBf9BhL59poA=;
 b=baWLjRDWJwD7UxPR4DgsEcguy2kM/6HVy3GXtUGAM7pljttNu5KxN8Gj
 OJBsQVXaic916FtuViYg2LhduQ2qMdno5Scay7FvoeMYkyokVSWlMPGnF
 eOSYK9fsC0sGRM+54Fv7jLomAOd1fNav5h3CN79RLxtOpP2KlgYDwrLV5
 hLKkNOaMt6YcpwqZFe/5DWZFOVEq7yT1XE1DrtKvrNj+4a73ULpPZM7P2
 J4MPwGqJguA8VtbRSbsC0PgJ5l+Dhjgdn+DpiOjp1Hi/VZMV8uE7z37h5
 +C4Zk54mjgRerFak9sFNqnNNMtPlM2EKBzHE3CwDQPftUKq7JdNnG+5La
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=baWLjRDW
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/6] ice: Add basic E830
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org,
 andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an initial patchset adding the basic support for E830. E830 is
the 200G ethernet controller family that is a follow on to the E810 100G
family. The series adds new devices IDs, a new MAC type, several registers
and a support for new link speeds. As the new devices use another version
of ice_aqc_get_link_status_data admin command, the driver should use
different buffer length for this AQ command when loaded on E830.
---
Resending the original series, but with two patches moved to another
set [1], which the following series depends on.

[1] https://lore.kernel.org/netdev/20230915145522.586365-1-pawel.chmielewski@intel.com/
---

Alice Michael (1):
  ice: Add 200G speed/phy type use

Dan Nowlin (1):
  ice: Add support for E830 DDP package segment

Paul Greenwalt (2):
  ice: Add E830 device IDs, MAC type and registers
  ice: Add ice_get_link_status_datalen

Pawel Chmielewski (2):
  ice: Remove redundant zeroing of the fields.
  ice: Hook up 4 E830 devices by adding their IDs

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  94 ++--
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 426 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  27 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   8 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  24 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  52 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  71 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  29 +-
 12 files changed, 641 insertions(+), 171 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
