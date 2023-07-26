Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12C763E66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 20:28:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C59B40B78;
	Wed, 26 Jul 2023 18:28:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C59B40B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690396085;
	bh=A2qg0mfVdVK66nkJO7vm8IrZ8sUUt+s5wwhjgZ99A5c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PJ5OYvlNJGQC+TdKLeSMDuu8lzY/37kbTqouz+LeySA68RBx+C7wMKOA6NUFNqXzq
	 PVC6pCjSf6bnXgIrjHhHBpX/IO1TiFjlXrQ1IRj1DCESsrXbxsbbQvwGkAeogizxF2
	 LeSN/eyaVvk0h6aK+rcTmORSCxzTNC27OuGPSKYQVjnwwRCgV2Q/AhsgXCVFzvXAFH
	 9G09Z5rUyw+YW7jQjAGsiXYrPF1KGhGNuvmYZPX9chrvePlKZVF+W17/p/HFCDdY/m
	 PqoKO7TPdhyXqqMrn8QMoOoGloEmBlNwlhlhXRxSEdVwiEJOO7bpH2gn34ejkHPHhE
	 dHE10OY8OCc1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ku00lYTC1QSL; Wed, 26 Jul 2023 18:28:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CA7140534;
	Wed, 26 Jul 2023 18:28:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CA7140534
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0415A1BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D264841E46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D264841E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEWJfcAU6Vo7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 18:27:57 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD79C41E0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD79C41E0B
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="358096574"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="358096574"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796684718"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="796684718"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 26 Jul 2023 11:27:42 -0700
Message-ID: <20230726182745.1326754-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690396077; x=1721932077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GtDOGXXSyj47BQ908U11+g3o3kY0fAQ30x4xiCEqrHQ=;
 b=a5Ld6nohT/xVrhEG9iRG36C9/LN2FL448fuNKKK13fOcuimXx2kVc6Rp
 CZkJVb3Uy0RMAEEFfYFB2+/D8aJpgFXz8TXGfK5aUZ2wZ43aD13NE/w/l
 7N8o6oN/1aciAFGvVgphjRhzgiiqXI5j2oNL4z/VIKINLg+ey0bxq88As
 cr0tkf+bf1JETbwf0mkS8AQL4Q/Toe6tet3FbEjPzgoYJQcCgR6PuItTp
 pxrwl3fAChR8ecUy1lcaxkktdmChok1gu/Ws6IsHQSXbN0JbAYTcbNjvA
 Af6isXcIwGeKgZUudCqYqV5tHpBkY5s8i+3I7uniTnCRXak2qcwg5hBF+
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a5Ld6noh
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] ice: PTP: cleanups for
 ice_ptp_hw.c
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series from Karol refactors a few minor issues in ice_ptp_hw.c around
timestamp register access and macro names.

Changes since v1:
* Fixed some typos
* Dropped patch 4 as an equivalent or better fix will go through net

Karol Kolacinski (3):
  ice: PTP: Clean up timestamp registers correctly
  ice: PTP: Rename macros used for PHY/QUAD port definitions
  ice: PTP: move quad value check inside ice_fill_phy_msg_e822

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 97 +++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_type.h   | 14 +--
 2 files changed, 68 insertions(+), 43 deletions(-)


base-commit: adfc2495f825bd31c514db14fd5b05bd2985fff7
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
