Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE429C27BF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 23:47:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C50A60739;
	Fri,  8 Nov 2024 22:47:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JSZmH4VbZolC; Fri,  8 Nov 2024 22:47:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E78B6119A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731106067;
	bh=gTGDmVK+wM4vL6/Pnac4lc9B5JzG2KUxZ7eBa7mz3Tg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S3yzFDER4sswQgUXqa019HXpfskWj+aeywziSObLiJXoNws9rT8NRGhGNV8U6lZqA
	 D8wWnu+0my+h47X49GIzH7R4ddwNUxpY4nlK/8QFv0HZL4daXqOGxgZr5++2kfzYRP
	 9b19NpdHLZFDKhcc1+CJY8CzysW5SX/4ASBrwGqt3s8qN80xG7iYVbqTRQtPYyfpTU
	 IlS6pH5Q0bgOsWS7tQZZldoZCVwTEdO8G6JI9p6wdI4LUrk9YGfmGVP0NMMJ9w8Qj8
	 jjQsQONugrUuh5Qih3GhwcgcigpqusonJFxYyxd1fwRwwAGYU0i1/gf/FhAUl1/R8/
	 wMHieftXBHO1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E78B6119A;
	Fri,  8 Nov 2024 22:47:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F80FC2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4D0A6075E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DaEJMrnqSJm4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 22:47:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F04A660739
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F04A660739
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F04A660739
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:42 +0000 (UTC)
X-CSE-ConnectionGUID: NZngTbmmSkOZGw+Aebkidw==
X-CSE-MsgGUID: f2jsp7bhQpGFbDv7rVx6Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="31105538"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="31105538"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 14:47:40 -0800
X-CSE-ConnectionGUID: zRRzSBAcTxKTrRyxvE7WXQ==
X-CSE-MsgGUID: R7eu6qXFQKu+8iRblzEE9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="116588582"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa002.jf.intel.com with ESMTP; 08 Nov 2024 14:47:41 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri,  8 Nov 2024 17:36:40 -0500
Message-ID: <20241108223643.2614087-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731106063; x=1762642063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iTzs0lgxEYjJmNbaC7y38X/olVAVkiJ8flY9WtpCpGo=;
 b=eNicfwWVuy9oZ25BGQNmJWJwD62x429q3SRcghoiVuUQjxRWdfwz/E1n
 aAL+ORh3fkLemgKsiyPyBGB2huLdW4gkDwsES8omlnqDaW6c9igmJ49hX
 mH9HE2xYII5/1kNXQVBHBnK6A8fJo8WZ2tP3gx/jzoUt4ZMO9G1vUVidY
 ucK5QYwiOwAny+4lenOW9G2sTUQqsf4cFpgKNzDWbnvVXSqAamt0jgEsX
 XQLq2mioTe6narQRYG8OxkU1BL2qMDMPeO0KcyJBcXgSadOBS/H+bDoxq
 vCbbzh/Jm/09SgSwbBIBFdQEu3uorSzFaza9L2vvyZHMq9UFj+482YTkK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eNicfwWV
Subject: [Intel-wired-lan] [PATCH linux-firmware v1 0/3] ice: update DDP
 packages
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

This patch series updates the ice DDP packages to the latest versions.
This includes the ice, ice comms, and ice wireless edge packages.

This update adds support for E830 devices and 192B max header length.
The E830 support is provided using a dual segment package with one
segment for E810 and one for E830, which increases the package size.

Paul Greenwalt (3):
  ice: update ice DDP package to ice-1.3.41.0
  ice: update ice DDP comms package to 1.3.52.0
  ice: update ice DDP wireless_edge package to 1.3.20.0

 WHENCE                                        |   8 ++++----
 ...ms-1.3.45.0.pkg => ice_comms-1.3.52.0.pkg} | Bin 733736 -> 1434500 bytes
 ...3.0.pkg => ice_wireless_edge-1.3.20.0.pkg} | Bin 737832 -> 1442692 bytes
 .../{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg}    | Bin 692776 -> 1352580 bytes
 4 files changed, 4 insertions(+), 4 deletions(-)
 rename intel/ice/ddp-comms/{ice_comms-1.3.45.0.pkg => ice_comms-1.3.52.0.pkg} (50%)
 rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.13.0.pkg => ice_wireless_edge-1.3.20.0.pkg} (50%)
 rename intel/ice/ddp/{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg} (50%)

-- 
2.41.0

