Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 097DBAB0F6A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 11:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D3D541575;
	Fri,  9 May 2025 09:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9SF3YpH3u0gH; Fri,  9 May 2025 09:43:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F6554156D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746783785;
	bh=kRs7OmIv3pCO0vM9zv8cGKSZhnnfy+nR9MZaS+h/O4k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=igAJwbhdCnQoUvkSXemVB26l9pOMJpQczp/H8Ob+zHKjCWXhfA/AVJ15lv/h10QrZ
	 FaNu/eiN7AgTZce+n/ek4dOTM1UQSaTu7zSH2xI4529U3g8SQ5N+T9+qDpJadhxIV6
	 wpNPNWRlq7PqBgapMRLOleNhLw15XK5pa29QUlN1pcWPvZpcplShlgli6t1v/gSSSh
	 ZGPpicZKBHRHeWsNgSq4WSx6JiR3T33v1D2OM/qNYkITLy1RorIEIo5EURhpJ01Spa
	 /NHn8Ke+cGvu427vWF0wVXMX4OSitHA9jZl3t3/1nHKThkgiN59fWfLDKaQNLx4p5O
	 ItLIm9ZFMpLrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F6554156D;
	Fri,  9 May 2025 09:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CAD3E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F173C60A3F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vt_36cYpB7Xn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 09:43:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 19F1960818
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19F1960818
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19F1960818
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 09:43:01 +0000 (UTC)
X-CSE-ConnectionGUID: aD3cnbN9TXGdTLWK+GpWvA==
X-CSE-MsgGUID: D5AbdVAxQ1WhHitHrBYiNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73985807"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73985807"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:43:01 -0700
X-CSE-ConnectionGUID: C07zW04QQ5eCNoL/o/mRag==
X-CSE-MsgGUID: OHnc+n6GTvWX9vS9LG1QnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136266690"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 02:42:58 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, jbrandeburg@cloudflare.com,
 netdev@vger.kernel.org, Michal Kubiak <michal.kubiak@intel.com>
Date: Fri,  9 May 2025 11:42:30 +0200
Message-ID: <20250509094233.197245-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746783782; x=1778319782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kU1eYwrtgwnm+VA+HpZ7w65H8GHTtgmzQV1UWy/XI/o=;
 b=VnsmXF1mL6GgLX4uhlOzkeJSF/erDjZs8kEvnifXKfPMAgOXGhdgq1Vf
 E6NkQ4eIJod1Hf4JncN1uzm/8AR9uBR9yKm1HSK6ALXZ61VlWzWJ7pRFX
 ql52biCW7bz++DkjDYQw1CD6dQPFrs4BY36kaT9izyPqBO+IQ9SEXkvbC
 y0EEpu/w9J2faU6R9ai0tHoND2xKNLCfkQSlsY2UmxqGXFuN7JWUmVjYm
 d0dGGaUwPYXhASkDlyaHuUNVUaMQz7NbpcDaoBbP2EoBtgam5WvfFm3Rd
 Bpq/fd38rgDO2kGzmg7tNpC/EfuBT6cc85WWfVGHpR8UatvXjmez1BkuM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VnsmXF1m
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] Fix XDP loading on
 machines with many CPUs
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

Hi,

Some of our customers have reported a crash problem when trying to load
the XDP program on machines with a large number of CPU cores. After
extensive debugging, it became clear that the root cause of the problem
lies in the Tx scheduler implementation, which does not seem to be able
to handle the creation of a large number of Tx queues (even though this
number does not exceed the number of available queues reported by the
FW).
This series addresses this problem.

First of all, the XDP callback should not crash even if the Tx scheduler
returns an error, so Patch #1 fixes this error handling and makes the
XDP callback fail gracefully.
Patch #2 fixes the problem where the Tx scheduler tries to create too
many nodes even though some of them have already been added to the
scheduler tree.
Finally, Patch #3 implements an improvement to the Tx scheduler tree
rebuild algorithm to add another VSI support node if it is necessary to
support all requested Tx rings.

As testing hints, I include sample failure scenarios below:
  1) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 321 and <= 640
     Error message:
        Failed to set LAN Tx queue context, error: -22
  2) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 641
     Error message:
        Failed VSI LAN queue config for XDP, error: -5
  3) Number of LAN Tx/Rx queue pairs: 252
     Number of CPUs in the system: 384
        a) Load the XDP program.
        b) Try to change (reduce or increase) the queue number using
           the `ethtool -L` command, for example:
                sudo ethtool -L <interface-name> combined 64
     Error message:
        Failed to set LAN Tx queue context, error: -22

Thanks,
Michal

---

v2:
  - fix the bug while the `ethtool -L` command did not work while
    the XDP program was running (Jesse),
  - in the patch #3, add a missing extension for `ice_sched_rm_vsi_cfg()`
    to  remove all VSI support nodes (including extra ones),
    associated with a given VSI (to fix the root cause of the problem
    mentioned above),
  - add a corresponding description to the commit message of
    the patch #3,
  - in the cover letter, add the testing hint to check the behavior
    on the `ethtool -L` command.

v1: https://lore.kernel.org/netdev/20250422153659.284868-1-michal.kubiak@intel.com/T/#ma677de2cd78d27402eead1d2a41ea0e0f656bc00

Michal Kubiak (3):
  ice: fix Tx scheduler error handling in XDP callback
  ice: create new Tx scheduler nodes for new queues only
  ice: fix rebuilding the Tx scheduler tree for large queue counts

 drivers/net/ethernet/intel/ice/ice_main.c  |  47 ++++--
 drivers/net/ethernet/intel/ice/ice_sched.c | 187 +++++++++++++++++----
 2 files changed, 187 insertions(+), 47 deletions(-)

-- 
2.45.2

