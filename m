Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA788C6740F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 05:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59B9C60EC5;
	Tue, 18 Nov 2025 04:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id whh8CZ6n-i_T; Tue, 18 Nov 2025 04:29:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4AB460EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763440187;
	bh=lC/oKuAN90AkvQVqckcyplmRaBnKNOk1YgNd/VtlXkE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BVlsXbSTVtb8Uue5KetMBCrvIFed9afdL3K0wFUevAohhtbN6XGW4TJ3T71+lqbrs
	 8f4CFwZeKag2Puugv8y+hp9cCllho3FkY2Sd8JiP5v5Rkuhe+O0DY0I/PzNt7vMTEN
	 2dZnP67tgz3ioYKgNjAVyOPfAlIUZP8Gt9ghow4tOpg5wbm/j3KdYgSH3dm9pFY5go
	 TCOpMlFUfWXxaCR0LgK9lrBSngsk+Mj6O1h1vQoH8VHzDFJzDHN7BVYP+UszyWrXtq
	 t9Rnl6gxbffW7adYr67rfZK4da+w61JcJxde6q4fyqjAIT06WtX9lAg/PkmBToaTPq
	 RvAgWquxnV1yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4AB460EF6;
	Tue, 18 Nov 2025 04:29:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD9CB158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3DBB40883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGj524E8_w2a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 04:29:45 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 18 Nov 2025 04:29:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E275B40867
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E275B40867
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E275B40867
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:29:44 +0000 (UTC)
X-CSE-ConnectionGUID: b8/CqnoeQnOB90/O0agatA==
X-CSE-MsgGUID: Kz8yf0r5S7i+y0JqJVjZ+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="82843560"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="82843560"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:22:37 -0800
X-CSE-ConnectionGUID: FQM6tLtXRfahRWQ2e/Hy5g==
X-CSE-MsgGUID: klmlslLXRpSlndRDJT6mIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="191086250"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by fmviesa009.fm.intel.com with ESMTP; 17 Nov 2025 20:22:36 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Sreedevi Joshi <sreedevi.joshi@intel.com>
Date: Mon, 17 Nov 2025 22:22:25 -0600
Message-Id: <20251118042228.381667-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763440185; x=1794976185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TG+f8mFqFQZKdFmpAfuFp3e9+EWf3Z2abx7yLO1SA1w=;
 b=km6ADa1KaLGVNJjLYdp4VeTgwxQiHTc2J4LUjcJ1fi0e4NEuMt7zohe2
 EztVE6VhuG3uvlwRq/cKf69vBn8kbU3TmOHtxm9JVvUgoOC4mDOj/9+nr
 IoqDxS6VHB4kFJDS4X08aciQa/HgoI1j1kt/6J/TyQgFsWxfr7kMdrORz
 DaTpSCkND2pB0kfSydsR7xW4GY/Jolxk9ApyXXqVnhfYmcTdjBU5HAosg
 mvQQKJD6ZICUbFHpJpWwILpHC1uyVIk+KKC0D7lOQuV0shyX8dhiUT223
 fBSxSgVjfxnl54f0ayiOF+zcZZIMoKfiaLXy7MpM6pSmPhwvfPRJhBdbv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=km6ADa1K
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: Fix issues in rxhash
 and rss lut logic
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

ethtool -K rxhash on/off and ethtool -x/-X related to setting up RSS LUT
indirection table have dependencies. There were some issues in the logic
that were resulting in NULL pointer issues and configuration constraints.
This series fixes these issues.

Sreedevi Joshi (3):
  idpf: Fix RSS LUT NULL pointer crash on early ethtool operations
  idpf: Fix RSS LUT configuration on down interfaces
  idpf: Fix RSS LUT NULL ptr issue after soft reset

 drivers/net/ethernet/intel/idpf/idpf.h        |  2 -
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 17 ++--
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 91 +++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 38 +++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  5 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
 6 files changed, 79 insertions(+), 83 deletions(-)

-- 
2.43.0

