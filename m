Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6A582BE1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 11:09:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFF0E42DD8;
	Fri, 12 Jan 2024 10:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFF0E42DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705054180;
	bh=4dxvn5uCMMKTsaMZsUM/6xem9yrDV+cAeBPReCl1hgA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v9ETl0PMBhCfzorQaqRiv2ojG/8Gz/1yz4QXEH8mqqmm9oqp2LlQ+EKumx4s8MZla
	 nDatP/Kc4+9d5A5fX1kzi79MU9AF3Zd1A+e21DQ8sZGvAwfxJSsN8eMItpEmCT19li
	 OV7hbcdMHZU8jQDPTRilHyhYDykZ5fDVgbHxKROzP7v8xxMrXmnE6J3VfPrhCTXIAX
	 4cK/z87kM0oYU94dfM9btQRanNTNy5BQ4I4Zuva6Nt1kr/dmXpketW2gpgad6UmNoA
	 gW6hVyng+ZIKGlftgGdxaatJXh2KXMNOIJSRledMCvJaxQ/q7+sv6Md20DSMO+9VvZ
	 cK1SGweOqUDlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gzdCpWjQ7Km; Fri, 12 Jan 2024 10:09:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C89BA42DD6;
	Fri, 12 Jan 2024 10:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C89BA42DD6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC6F91BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C38F86FA2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C38F86FA2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHz--kDPmEzK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2FC016F652
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 10:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FC016F652
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867344"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; 
   d="scan'208";a="5867344"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 02:09:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="759083268"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="759083268"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 12 Jan 2024 02:09:28 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jan 2024 10:59:43 +0100
Message-Id: <20240112095945.450590-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705054174; x=1736590174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k538U04y1+gFCDAOeeVHduwRHtJ/O1vY62vfMQ93t+4=;
 b=d3DnJ03AW6GLmof3c/AD2Njf5eVAGQ/kYZOOOj5O2+mXMls2Si431pIL
 dUU7RKbzkc0SCGPAiNbFg3LFGejA92/SbGYYK2CfHwCE5lwSbEN5omuYN
 XG7EzU+SNt6xWCzVbynEYwpUemHjWxmnu82ZDT5+nnOujxG983HW08E49
 htwss2jq4M9CI81DeCCxkaV3O0nWqmnlCzmiR6Zy5gvv2nQBJ20Aadg6q
 wTdzc/ixVBAVg7ARf2x2lK+4de0p9vhhVT322vpaof5lJCsbyMmTc3jv2
 9llSEliQ4AdwcrTm7bCo6UKnypTUZ97HyHZDUgN+axb0MZcafOA/GVxq/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d3DnJ03A
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] i40e: Log FW state in
 recovery mode
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce logging FW state in recovery mode functionality.

1st patch adds implementation of admin command reading content of alt
ram.
2nd patch utilices the command to get trace buffer data and logs it
when entering recovery mode.

Jedrzej Jagielski (1):
  i40e-linux: Add support for reading Trace Buffer

Przemyslaw R Karpinski (1):
  i40e: Add read alternate indirect command

 drivers/net/ethernet/intel/i40e/i40e.h        |  2 +
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 40 +++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 35 ++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
 .../net/ethernet/intel/i40e/i40e_register.h   |  2 +
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  5 +++
 7 files changed, 89 insertions(+), 2 deletions(-)

-- 
2.31.1

