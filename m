Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B6DABD621
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 13:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26C5980D08;
	Tue, 20 May 2025 11:08:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eMPbRPR3Wwyo; Tue, 20 May 2025 11:08:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 946BB80CBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747739321;
	bh=iY0NoAFhYO6t4isKSdUzHphIMyMAsy4P59WO+8iSlIc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=40yYttm/h1+zjZSDO/TM9VGwzFeWttazwK0cPqVIQ0cxHIzcbpP0nCOcUiLW26/bi
	 Gc06gDERbwgxYt4Kys5bUTbhSKQ8c/Ba0KdhnscjQyzXPjgzP6fK8MONQYvMm6DkAH
	 2k5+9zQfHmpp8/cHCPy3l1nHnYSiqdvTF0vK6exdRRmHBqdjwFwUmyy76zmb9Gz84H
	 nfKwlmd8rUUue2CUT2hcnESpoRMDaEt0/90Q3PYSjKGjkORiMVkRJu0TxxWTTLoKnE
	 NF1Tm6xu9Z+tssNM3CHkjXQQYI7Ja+HyJNeKD0wLOp4+cN1WPWQwQlNGgfaWAcZJ6C
	 T29njO6KcqrTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 946BB80CBB;
	Tue, 20 May 2025 11:08:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BB49D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD3B3404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5AzICt_NY30s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 11:08:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4FA6C404CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FA6C404CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FA6C404CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:35 +0000 (UTC)
X-CSE-ConnectionGUID: 0IIKht3lQq2mFMlroUii9A==
X-CSE-MsgGUID: Tv9GAcxCQdSd1VIxJoSBpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="75069252"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75069252"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 04:08:34 -0700
X-CSE-ConnectionGUID: WVHCpj7ASOa8fet55TEsNg==
X-CSE-MsgGUID: dm57KL7lQtGc4IcJ8P+Jhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140172934"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2025 04:08:32 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Karol Kolacinski <karol.kolacinski@intel.com>
Date: Tue, 20 May 2025 13:06:25 +0200
Message-ID: <20250520110823.1937981-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747739315; x=1779275315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9VqCyJhQQwff319kyxXfCBphCq6+lUfEFzq7CPaGFcI=;
 b=HJan+FdMraSLsieVhHCk5bv9/AXxeuFBfCrmUhlpmVe62TBYmHYWebh2
 z378CeJSDxJ97y4mQSIxy+YahFlFHNAHfIY/dqtG7oYqxspPyC+uow0Q5
 Pc2kknnZFHiRZJZ64kZxFURY8Bq4n6XMiYfdo2B279tEFuF17udCHO4Z5
 GTM2AjeoqhMIu4OAugyrvqupYGHlm//MyVEJM5LZpGr5oqMubULtnk5Eh
 W5+HMFuv18NfRjrhA0rJX5W1ZSd1FtUQw68uI5xkRZvHIDeRnpW3O82No
 NMQ7+PZ+cin4QPTjBM6V/ZF4BYntjlhL5xuYVHQuT91v7KMD4Q8E2izi+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJan+FdM
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: Read Tx timestamps in
 the IRQ top half
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

On all E82X products (E822, E823 and E825), Tx timestamps are read using
sideband queue.
This is a very robust HW queue and it's used only for accessing PHYs and
CGU, which means it can use spin_locks and delays instead of mutexes and
sleeps like slow admin queue handled by the FW.

This allows reading the sideband queue in the top half of the interrupt
and allows to avoid bottom half scheduling delays, which speeds up Tx
timestamping process significantly.

Introduce new structure ice_sq_ops, which allows to assign lock/unlock
operations based on the queue type on queue init.

Karol Kolacinski (4):
  ice: skip completion for sideband queue writes
  ice: refactor ice_sq_send_cmd and ice_shutdown_sq
  ice: use spin_lock for sideband queue send queue
  ice: read Tx timestamps in the IRQ top half

 drivers/net/ethernet/intel/ice/ice_common.c   |  21 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 252 +++++++++++-------
 drivers/net/ethernet/intel/ice/ice_controlq.h |  20 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  46 ++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  62 +++--
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   5 +-
 7 files changed, 251 insertions(+), 158 deletions(-)


base-commit: 82bb0098b73f72a026b4bb49206a8c1d90974edc
-- 
2.49.0

