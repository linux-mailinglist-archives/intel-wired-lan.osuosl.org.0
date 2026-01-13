Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FED8D1B139
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 20:38:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE17782FE4;
	Tue, 13 Jan 2026 19:38:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khpjnyaJvtDh; Tue, 13 Jan 2026 19:38:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4067B82CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768333117;
	bh=8MBvfmxuMcCO73IdvE9zE4ZGV7RlaQbP1WsPPRE6fqU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FNbsQtlChz3hIvUGtGl/4b01KpCNxtt+e4Audy1B0JbQ3x4O5cC2wN7ILClu1+KUa
	 9FAhgGwJRm1nnx/UL+wj5tKfHSZ2FzsfYWyKoiDfLGYcyqTIhvM3pBQ2uUVgozZJjf
	 nXa47Myxulo6Nwn/I+1LOJNwDPcFccFUD7YPUvQi1L17pTUnFIEVtpTyzjygvpq4zU
	 HyozaEbDSGpgLINl1L83Gth3Ydn0oWXfi9igsmLsU+fn/jUIJkWp+D2DIDbfTusLfa
	 W9IBvaWCCv8PWfWgR3pDTh5zTECercHTB8U4oYuCfoe+XrVoYj6WtnBMWTC4NeatDe
	 JaaD993wCoU/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4067B82CAC;
	Tue, 13 Jan 2026 19:38:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36737231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32F2C40B20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZO6aUnQQrEaz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 19:38:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 626BA40B13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 626BA40B13
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 626BA40B13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 19:38:34 +0000 (UTC)
X-CSE-ConnectionGUID: yKlEEw5ETDKXYUiVdu3FaQ==
X-CSE-MsgGUID: vFWpF3hVR4ClxOPtyyEt2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80993456"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="80993456"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:38:33 -0800
X-CSE-ConnectionGUID: dqbogUP1SDWLHc3Tc6vOxA==
X-CSE-MsgGUID: 6+zm8e20QCatRrFaKjpMhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="208628974"
Received: from kasadzad-mobl.ger.corp.intel.com (HELO
 soc-5CG4396XFB.clients.intel.com) ([10.94.252.226])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 11:38:33 -0800
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Date: Tue, 13 Jan 2026 20:38:15 +0100
Message-ID: <20260113193817.582-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768333114; x=1799869114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2gbzhVuNwRNOd9dlkUNSoRgPuCM89j0AQ4uN19D6hAc=;
 b=hs35PnxAH9RtqPJKzTo/4OynvULR/kDk/Tp8HUv6244II3K2g0nHH/D9
 nKWfzlM7TcQ6QGtv8tWA/qjNm+pzv7rlbH0qZ5DNVRXTAuTdoKwoqJAVD
 m3uhg3l8ZokrbneLdrPjh4fLZWIUs0v7APxDjZGB3cU7a8dbsj789g0ON
 m2D2QHyK3006F9ZyKTyz4KnCj8glzZ+W3U9THDvs/3PwGxdH9Z5iYzRf9
 72IzHrcL677+mSW/TlQldCJoObZOXdA0z/PKTobcNevynGoVKqmnLyZTq
 t04fJmDdfBCcVxI1Ln/B62F387sIdBJfTgbdU2UlLGGzat1PHjgbV/Dtv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hs35PnxA
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ice: fix AQ command 0x06EE
 usage by retrying
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

The Admin Queue (AQ) command 0x06EE can return EBUSY when firmware link
management holds the i2c bus used to communicate with the module.

According to Intel(R) Ethernet Controller E810 Datasheet Rev 2.8 [1]
Section 3.3.10.4 Read/Write SFF EEPROM (0x06EE)
request should be retried upon receiving EBUSY from firmware.

Instead of relying on the caller of ice_aq_sff_eeprom() to implement
retrying, use the existing retry infrastructure in ice_sq_send_cmd_retry()
to always attempt retry on receiving EBUSY.

Reproduction steps
------------------
	# ethtool -m <interface_name>
	netlink error: Input/output error

Link: https://www.intel.com/content/www/us/en/content-details/613875/intel-ethernet-controller-e810-datasheet.html [1]

Jakub Staniszewski (2):
  ice: reintroduce retry mechanism for indirect AQ
  ice: fix retry for AQ command 0x06EE

 drivers/net/ethernet/intel/ice/ice_common.c  | 13 ++++++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 35 ++++++++------------
 2 files changed, 24 insertions(+), 24 deletions(-)


base-commit: 855e576f30278714c7ca067005f46807aca2e6d4
-- 
2.51.0

