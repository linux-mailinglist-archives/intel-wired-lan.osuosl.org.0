Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C93721C16
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FAAE60C04;
	Mon,  5 Jun 2023 02:45:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FAAE60C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685933114;
	bh=blChS+y78LIuM+DOmNnUcjPUnqw0e9P8cR8ayedBt4Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=I5h7pKKLMzQR8xub7cbguzT8HYgeoT0hIXsVqfJytSQxjo9F0LsK8FJE+F8FpSF8A
	 1ENTAPDacJsaMmIph0mKPUun8VvEjoAoGqLtBjTPppbFq4+vNBi5LDnqvr+SAW4c9H
	 B8BfNKWH6Spb6Su0sIi5mTCH6ENLy3JT2bYo5rfsR5TOV0pss3nAVz/szwio75FlCK
	 zE2xgEmW+ClKlRRz0Q9WShFi/J/hmJE1H+3/qDmOtc6coWQlCVXZAXNfANdVf2XW8v
	 0evs2NWdJKhMBXkYHxvIpZMIjazXqs3bsLyyIELX24QtWPGe6Su1239Te10ItWT+5e
	 jLab00DJGMrVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLUYQLFHprfc; Mon,  5 Jun 2023 02:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5470460BB9;
	Mon,  5 Jun 2023 02:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5470460BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9DA51BF336
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DF8081FDB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DF8081FDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NYUrrTp-D5bG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA5D281F97
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA5D281F97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="355119119"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="355119119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="821001495"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="821001495"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2023 19:45:00 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:44:50 +0800
Message-Id: <20230605024453.2378898-1-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685933102; x=1717469102;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i4Vaf8b56XrIMg+JZ09tQnUUfoGfJtKRrFj7ufepS1I=;
 b=TvvCgXdnAgMIu11PGvhHunDgTVelZJvA5nqicQmGDW6Mb+tciz5ONu/7
 QxtS2q8pAxVhYjqu28f2TxJr1psfxOzV4O/xqKEgBWvwskZ755LQy//JD
 cjJ+QhA29NeeEC6as/lY3Igsf+NooMTmRTXsoY0SFxJLjudJffnD8HDt3
 p7HmXjuwPXCDFQpzFfqc583nOF1ru47IKff6I9+yYvJQTuTqXSHD/WYq9
 iLfCKG9vB5mcP42z3P7Q+Ut/XeRvtQcTwyn9y5GzRPGnHF/sW82wSudkP
 RsU2UOcWG0aZ674J/N/6YfiihTc2JeXhjSpemcIqMkGwCQwCN9x4wETPJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TvvCgXdn
Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] Enable the raw flow
 filtering for FDIR
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set provides a method for applications to send down
training packets & masks (in binary) to the driver to do Flow
Director (FDIR) filtering. Based on the Parser Library, these
binary data would be used by the driver to figure out the infomations
that are needed to create/destroy the FDIR rule in the FDIR stage.

With this patch set, the raw flow filtering for FDIR could be enabled
to allow new flow offloading features to be supported without any
driver changes (only need to update the Dynamic Device
Personalization package).

Junfeng Guo (3):
  virtchnl: support raw packet in protocol header
  ice: add method to disable FDIR SWAP option
  ice: enable Protocol Agnostic Flow Offloading FDIR

 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  98 +++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   5 +-
 drivers/net/ethernet/intel/ice/ice_flow.c     | 109 ++++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 448 +++++++++++++++++-
 include/linux/avf/virtchnl.h                  |  12 +-
 7 files changed, 678 insertions(+), 7 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
