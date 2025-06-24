Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41826AE5889
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED81B40954;
	Tue, 24 Jun 2025 00:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7sWkoHkKPtDG; Tue, 24 Jun 2025 00:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA45340767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725010;
	bh=Ivf4jpmmHgju+pI/ZjMTSJuHGeD3hpkCQ0kGR2VvmMY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gV6AEe6ufCLmZ14VqXBNqkvSQDerfoRNNZpkc8ofOzHQjuxpelkY2JoFCUJ3CBRw3
	 F0TZHkPi+mGFwyUt0uYZG+NSpK/qmzZV9jDTsOGoGE0TZNNRYgam5nzHKi2lQuoNC4
	 MDqBaA0cRLwaJd0kdIHydjAMhwdW18vWArg90Bg1rP7TrCux2UvYWVpJaEwOK+36ys
	 PSAdMf11K/ljg1RZZ2lxbO+5WFm1HzkOmeCdDOVX2i6FtAhwmWxhUOC9vq9zoYB4sy
	 j8ZDv72A6oVCqfU6vK2gUeW3btJcFuxO0DeD6rUoJvJoz9RaYMlCfNWbvKuI9qgBV1
	 I8OUMqZikXdXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA45340767;
	Tue, 24 Jun 2025 00:30:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C7165154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4492610AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UXhpR7JnIzIM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0FF8610A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0FF8610A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0FF8610A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:06 +0000 (UTC)
X-CSE-ConnectionGUID: 2LqtEpANSHWp2IX24VyXxA==
X-CSE-MsgGUID: u/pTfZBgR/+PX05d3vmFFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067908"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067908"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
X-CSE-ConnectionGUID: R2Ed3IvbSPGjghvOEmt/Fw==
X-CSE-MsgGUID: cMgRiCE8S2KLpMQWjZQZ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534030"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:05 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:29:56 -0700
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIXxWWgC/x2NywqDMBAAf0X23IUYfLW/UjykcdXFGENWRJD8e
 6O3mcvMBUKRSeBTXBDpYOHNZylfBdjZ+ImQh+ygla5VVba4LLhLcA55DXE7aCW/CxrHk78Rtf2
 ptjPD+G4gR0Kkkc9n8O1T+gP34eo/cAAAAA==
X-Change-ID: 20250417-kk-tspll-improvements-alignment-2cb078adf96
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725007; x=1782261007;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=M3dT3Lmb9P6DmC2Z6O4e6DegMD+JK3r2HsY4a9sPCkU=;
 b=Mk9Ihu/qK2iyAkFIKW1wxmK4GyXWvrQVrq1E5NTiotvyiIWSbpD8kTgT
 JJ5xvXQQXUIlXyRrElOIdIrM6G9HiMVvy2uC5hQFW6ZUBQ+3m8eYYBSi/
 6eeqlffXp0bYdg4veulr6GXlWFesvNSdTzb/NUhUHiCcH3nhVvRVcDKZz
 xP711bl9XlO+pxeKYXdNwSm2fmyoFxZjdLRy0Y55mbbHxIN7xnz0Ps/dg
 eowKuZXYFoLoyklWDZ0LWH+DCRMYgzAXCgJVdFMYm++6H8JnuiM/Gc4Li
 0xsDUlF+obSU3TUuhrrEgCZAk7lCBwGClM8YCi4WoCykJ3nLFpuWOTJX9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mk9Ihu/q
Subject: [Intel-wired-lan] [PATCH 0/8] ice: Separate TSPLL from PTP and
 cleanup
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

This is the remaining 8 patches from the previous submission. I've rebased
them on top of what Jakub pulled and deleted the control-flow macros.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (3):
      ice: clear time_sync_en field for E825-C during reprogramming
      ice: read TSPLL registers again before reporting status
      ice: default to TIME_REF instead of TXCO on E825-C

Karol Kolacinski (5):
      ice: use bitfields instead of unions for CGU regs
      ice: add multiple TSPLL helpers
      ice: wait before enabling TSPLL
      ice: fall back to TCXO on TSPLL lock fail
      ice: move TSPLL init calls to ice_ptp.c

 drivers/net/ethernet/intel/ice/ice_common.h | 212 +++-----------
 drivers/net/ethernet/intel/ice/ice_common.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  11 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  22 +-
 drivers/net/ethernet/intel/ice/ice_tspll.c  | 425 ++++++++++++++++++----------
 5 files changed, 315 insertions(+), 357 deletions(-)
---
base-commit: 96c16c59b705d02c29f6bef54858b5da78c3fb13
change-id: 20250417-kk-tspll-improvements-alignment-2cb078adf96

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

