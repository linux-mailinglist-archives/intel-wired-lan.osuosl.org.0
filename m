Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE60931298
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 12:50:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F37340538;
	Mon, 15 Jul 2024 10:50:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nTg-94HUkoja; Mon, 15 Jul 2024 10:50:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF2E9403C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721040619;
	bh=5n3KPPXi8tklR8kk+dyC6gRrEr2rhdUPWyPC5f2w+P8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RjPVsTuHc5AclZNYPPQI4Wu8EXDIgZhECQd7RWEV2CsphdJ5Q+xauzPuSB+L7Pho9
	 /byE78dA9FQDCnXH79rc6mR8JG/4sZN54g3wuyRYpoHgHivcK9l13dVGC3Estw8r4W
	 vPcBfMY/AVqNWLJyYehRBjTkoU8hL5nmPZcPP4ZBy4kK7ZXfGyDS692SVPW8ruIPTz
	 ZbqE779UtRvFJAPEULhhPZkq+GTW9LDsc16E3Hmdr12OAlbAa3lFmbobxvRvatDiyi
	 cbNOtDqzraw0SBYOX1YEKJqn/H+uxTxQ9uDV3r2Oc7kFY5WS2NhWWz9I3Tr+FgnRAs
	 e9QdBGT6ODApw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF2E9403C8;
	Mon, 15 Jul 2024 10:50:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8485D1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B82B607DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f4w3BYCrrQsc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 10:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4CC2607EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4CC2607EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4CC2607EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 10:50:16 +0000 (UTC)
X-CSE-ConnectionGUID: vQQgPc6ZShugHGwNn5/xhg==
X-CSE-MsgGUID: xkmwfdiYQDiUFDKVG/COeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18608974"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18608974"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 03:50:16 -0700
X-CSE-ConnectionGUID: 2ISnqq1US+yIqeEcq0LNlA==
X-CSE-MsgGUID: XiOKpQE1S5Gr6gfGlQQkyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="49545131"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa009.fm.intel.com with ESMTP; 15 Jul 2024 03:50:15 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 15 Jul 2024 12:48:43 +0200
Message-ID: <20240715104845.51419-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721040617; x=1752576617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xEuylVJbMZlQtdVSzPl1C/uAWlhBXQX9XqnLI+Z9gZc=;
 b=SQGPryqCyyjfzOrdCkpwJEqRDQWatPcdPMV2sQMaOXBEE+Wx2jlaPPyW
 Lvsl6rIg4GfJ1uAjzcUZC1Q4QwQKuKCTVvCaWB9MdmLTQyp68/oaUz4AM
 p9zf92palfcXW62mqDZGiPmU4LrSW+6E0miHTIGFPNXX4Nz0rbgEKY4IC
 4EZZH2ngSsWVa+zVE5xJMAqyPhRVtYqiOtG7lXl/ppwhBoqeU7e1uKBda
 91pI9/uq+Feo7aAe6wnhyTWcnnjgTlGhaiDaI0G8eSHPn6iZorPaTAudj
 a2cuwFp308klBYsX/BKxqUZwOwHyfFgjCXJVswR+hzEnhYglc5hq0WKfX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SQGPryqC
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/2] ice: Reset procedure fixes
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixes preventing possible races between resets (CORER etc)
and OICR ISR invocation / PTP hardware access


Grzegorz Nitka (2):
  ice: Fix reset handler
  ice: Skip PTP HW writes during PTP reset procedure

 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 4 ++++
 2 files changed, 6 insertions(+)

-- 
2.43.0

