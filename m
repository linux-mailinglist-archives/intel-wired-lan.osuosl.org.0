Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 364FEB30F19
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 08:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDDB940929;
	Fri, 22 Aug 2025 06:39:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNGSCt-_aRW6; Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56EA840920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755844773;
	bh=wNTLayHdUpv6SF2pVZfsZ39pAhSViR2yV2xdsxBfZCo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=erM+2ycirg3qtRGoNcpHWWzeHX4jJQne2x31Ih5t1KyfsbammTfYI2T8SdSNGr+8w
	 g/VJzn/VIWQX4CZ2PLrrDwjY/WgI1aby0g7vxJqedgJlEcccbtaatL2vzzuHMlp0+w
	 xv5qtkLA2XbEBnl1Mr+rS0oDRKJ+A2jJ+6jq9/gZ6touLTpHqWobpDYXMFLyOKxJTc
	 NTCPfwlnC6EUrONv4yWtzTUopbReFdOYKPOfCXCmQaNfZe9tF812LwKw/DsiYb4DUI
	 9s/yorzR/bRRsCDTbU8TWmAxeFtNG6Jp78w0lObbmqym/Tj4WVhOi7wilMehzIEall
	 z269BOH4+Csjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56EA840920;
	Fri, 22 Aug 2025 06:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68903D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A19580B16
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I55YxRz88gOn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 06:39:30 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 22 Aug 2025 06:39:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0B6280B03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0B6280B03
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0B6280B03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:39:30 +0000 (UTC)
X-CSE-ConnectionGUID: ItzNKChvQl6NWl42lYUklw==
X-CSE-MsgGUID: M6XJVNvUTau4SYzNI9zzJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="75729040"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="75729040"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 23:32:23 -0700
X-CSE-ConnectionGUID: adHkSpiRTgKjxqIiF35GTQ==
X-CSE-MsgGUID: vX3hOmqwTiuXu+op+JfezQ==
X-ExtLoop1: 1
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa003.fm.intel.com with ESMTP; 21 Aug 2025 23:32:23 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: madhu.chittim@intel.com,
	Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Thu, 21 Aug 2025 23:32:06 -0700
Message-ID: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755844771; x=1787380771;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0Vd9rzPyPrIQFWR6FupRK+MOITWar1yAUtcXj730jWA=;
 b=OUQ21EcSs6OSmlCktwLsQu8ovVPsA1mA5N5TqM0SgtvTNtCq9H0y/jXG
 l123ECSSAm5yyQ/NGZRmb0fKNRHXoXaiH4JuKxnxF19/GSPosmDWQ2OXS
 ziEYWvEsJjYVeDGIRyqfNonXfqfsc2oveld1iHU2Mhe28fI1GPqZVoKyc
 l5HnT5V+4H0fCChMk52+BVlZPbPuXcBiQfrQfdifUCfFlBz+Z/yOFnXkt
 inaO0PLLOO0bdf+N82UxIveQJSfVZyZMuATabEpUeSy7SjtCanY/1oTGA
 qUVjGnfH8ODdNwbhIO95ZO/iSn9qKSfbt+6kaeIcvPpjcdLfjtBmq6CDr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OUQ21EcS
Subject: [Intel-wired-lan] [PATCH iwl-next v7 0/9] refactor IDPF resource
 access
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

Queue and vector resources for a given vport, are stored in the
idpf_vport structure. At the time of configuration, these resources are
accessed using vport pointer. Meaning, all the config path functions
are tied to the default queue and vector resources of the vport.

There are use cases which can make use of config path functions to
configure queue and vector resources that are not tied to any vport.
One such use case is PTP secondary mailbox creation (it would be in a
followup series). To configure queue and interrupt resources for such
cases, we can make use of the existing config infrastructure by passing
the necessary queue and vector resources info.

To achieve this, group the existing queue and vector resources into
default resource group and refactor the code to pass the resource
pointer to the config path functions.

This series also includes patches which generalizes the send virtchnl
message APIs and mailbox API that are necessary for the implementation
of PTP secondary mailbox.

---
v7:
* rebase on top of XDP series (v4)

v6:
* rebase on top of XDP series

v4:
* avoid returning an error in idpf_vport_init if PTP timestamp caps are
  not supported
* re-flow the commit messages and cover letter to ~72chars per line
  based on off-list feedback from Paul Menzel <pmenzel@molgen.mpg.de>

v3:
* rebase on top of libeth XDP and other patches

v2:
* rebase on top of PTP patch series

Pavan Kumar Linga (9):
  idpf: introduce local idpf structure to store virtchnl queue chunks
  idpf: use existing queue chunk info instead of preparing it
  idpf: introduce idpf_q_vec_rsrc struct and move vector resources to it
  idpf: move queue resources to idpf_q_vec_rsrc structure
  idpf: reshuffle idpf_vport struct members to avoid holes
  idpf: add rss_data field to RSS function parameters
  idpf: generalize send virtchnl message API
  idpf: avoid calling get_rx_ptypes for each vport
  idpf: generalize mailbox API

 drivers/net/ethernet/intel/idpf/idpf.h        |  175 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   18 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   87 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  220 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  651 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   37 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   21 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1124 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   80 +-
 drivers/net/ethernet/intel/idpf/xdp.c         |   33 +-
 drivers/net/ethernet/intel/idpf/xdp.h         |    6 +-
 12 files changed, 1292 insertions(+), 1177 deletions(-)

-- 
2.43.0

