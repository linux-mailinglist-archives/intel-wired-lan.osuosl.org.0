Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 680CB9C28A4
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 01:12:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EF9541C2C;
	Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0oKKTp2HqoYv; Sat,  9 Nov 2024 00:12:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53BD241B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731111139;
	bh=cTGsEnC+x2qdEGQUXkKOT6leuBMBc0bavbYkK0ksVKs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OJu/SLCam3Rxf9jxIq7m+siB+3y0757ooJqAuqK/XPxKW1XEUCsNOMShO81lXbGVK
	 8G6VO75uBr9GEuZm6THQOQ9+3J65Cz7JI4FqTDvJHRtifRddQ5LVL84IaQy1niUD32
	 tYk+U43KWUCimZuraneYBAwZZ53nQZk192DaR7AxED2mmMLF3nOxK3p6ia0iTkZK5o
	 agsIF+9sM8uV0RWJmLNLJjA6viifZ/wgwUWIh0SaD1B45MbmMZSa+XBA6LlOxJVQxE
	 M9kbtxSpi6IlEqNBPjOKv/xKBTfuDDzHkYYBSVqSqD9ChJEvDoJ/kNNujUERQ91tcQ
	 BShBk8HOFKhdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53BD241B90;
	Sat,  9 Nov 2024 00:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 52978978
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 40E4F8453F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ENly7T9cwCko for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 00:12:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76BFD8453C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76BFD8453C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76BFD8453C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:16 +0000 (UTC)
X-CSE-ConnectionGUID: y/hqdm+ZQhKMv/4EYkswfQ==
X-CSE-MsgGUID: 1KBS8ZC+S2axQgXTaDFv9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="34795115"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="34795115"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:15 -0800
X-CSE-ConnectionGUID: cMNijbVZTEazeUYG85+Srw==
X-CSE-MsgGUID: IdRgU1DMSK6/rv0GppaE7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="90905914"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.245.163])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:14 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  8 Nov 2024 17:12:04 -0700
Message-ID: <20241109001206.213581-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731111136; x=1762647136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AjITPXx4oPzInPimR27fMUr+z7wdtMLtKa2dw61+mdE=;
 b=J4j0WWfdsaiP2AU9tGoCt1JMLX05NMWscwYUfRTgYd1QnzdlYUFcFliD
 ViFP/KRILFTMuneBcWM3Jml14+UjHn7xcHnUwCWPyZHIfWn+I0v/2Pj/7
 xCyT0IdQLEf/vA5/rL98OsZ+Xqhb/FeJDdurQvbLl3RByNKR6G4YcouVB
 9Ys47prZl9KzcLZbc0wHb2qJWnk9Se4g+NbVK9pEc8WXnRpqIyvWoEpfL
 4bREzm88NbGgYwyT0zKD19OFf5scTWSw35ZnBoxFW3gnJ5srTAD2fcwnL
 PKg2bT63sfwLHCCCjbbsQLFD2WXm+9/eCasPfoxVPwvsSPght4kkgAqXg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J4j0WWfd
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] idpf: Preserve IRQ affinity
 and sync IRQ
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

Currently the IRQ affinity settings fallback to defaults when interface
goes through a soft reset. Use irq_set_affinity_notifier() callbacks to
fix it. Also, wait for pending IRQ handler before interrupt configuration
is removed.

Sudheer Mogilappagari (2):
  idpf: preserve IRQ affinity settings across resets
  idpf: finish pending IRQ handling before freeing interrupt

 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 36 +++++++++++++++++++--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 +++-
 2 files changed, 39 insertions(+), 3 deletions(-)

-- 
2.43.0

