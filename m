Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E24E564EEB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 09:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46EB660BFF;
	Mon,  4 Jul 2022 07:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46EB660BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656920663;
	bh=iiDCYgW4/8p3452dK41c7UK6Mu7ihGdPIBRpQ2yqKI0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IeBbpx1pSuhqBbMlQHcDDp+2ZSd1tsvjfgb7o1ZwG/AeqhMMAq2c+Y6z1y+PQb3zD
	 j9mTNgT0Rn2vR3tXOTuVoqaJ/pOFFCENHX5InTwDv7BKNNhFla0xUGtGOWkWZGN4en
	 PbwyP62H0izzy+POTrT/MX0rXbgUKlZD5tbWQDO9Tzvk8tYwqI1PYdB2nBc+wtK8xK
	 Qo8D4I2PGEID3uXFjGgEhpnhhKT2o4xI0gnSCwZ5yvS+WXJcP7n9iGEoB440ZLLXgx
	 OonTO+PhEfawVhsEscLFzaTtOqjqSvZWT/8ucj5sT7lxPcM5y9uhRvrUywNFObDBwe
	 HR2JUACVnpFyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CjMLGK_SccSa; Mon,  4 Jul 2022 07:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4673D60B2B;
	Mon,  4 Jul 2022 07:44:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4673D60B2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2631BF36B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 07:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D2D440984
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 07:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D2D440984
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lM0lCYpIVcCM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 07:44:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52F484094C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52F484094C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 07:44:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="263482461"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="263482461"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 00:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="660113015"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2022 00:44:04 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 09:43:43 +0200
Message-Id: <20220704074343.1221343-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656920655; x=1688456655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SXA2RHBBSEPtT2pTIpx7z4hE0b51Yq7YIbSRfM5jeHE=;
 b=cC1eaLfEOs3HCmUX71vC54uL6UtSgD63Y8Vj0dqRp7KojBSmWznQokte
 l3CsnIA8t9IDc9XdhxG/DKi0lutf7L48dCST3ZL3VQU7BGSEXUU9PL/+7
 raqolnuyVIgZdeScRWmhQ/gdiycSpApnZyo26GmQjPg41XGMgrNkwnd+o
 1PNI1Uz7EJueNigQ4D0Fio0H9px8zL8ldW+XTl9yAxTyHMTo9t5n6PeD2
 SFSr9jetRQMCEsX2OW+6e6hzOEP7qdq44muJlkR25WV8Pqd84UYYG2PAx
 fFN2OHgKlXUVhZFw4IdDL49MVFH+UydzS11dZsmxa+0bfWZPG92oGsyA1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cC1eaLfE
Subject: [Intel-wired-lan] [PATCH net v1 0/2] i40e: Fix ethtool rx-flow-hash
 setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

When enabling flow type for RSS hash via ethtool:

  ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d

the driver would fail to setup this setting on X722
device since it was using the mask on the register
dedicated for X710 devices.

Implement a bitmap to collect the flow pc types that
shall be applied on the inset and hena registers.
Apply a different mask on the register when setting the
RSS hash for the X722 device.

Michal Jaron (2):
  i40e: Fix ethtool rx-flow-hash setting for X722
  i40e: Refactor i40e_set_rss_hash_opt

 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 103 +++++++++++-------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   4 +
 2 files changed, 67 insertions(+), 40 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
