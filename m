Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B234B2479C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CCAA82341;
	Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zHVz1YwUATKX; Wed, 13 Aug 2025 10:46:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A355A82309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081962;
	bh=gIP+qFXOYDCxXKIkGnB67/mDL8V7YQD44Aq89HYht3M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kWQZfZC/o8CMChGGZHRlXk3LUzmv9QDbE1pQBMQy+WO6RcNNW+7vpQFtfOni1kHwZ
	 WTQzZhRKzF4oG0gURUz+HyyzMcj/6y7SNVW69raz/wZ544vmgZ31m0U06as0Bf9vik
	 1eiUgGjr+WOtEkbBa5P2lCRg8mOs2ahSP1tksHPuZ/hsns6RvByTk2+YAHndA+gGe1
	 h0dCfmd5y8uL9RTrv+qCkpprQQgj/MabOPddzw8n02ZGhFHdjM7rDagHab+NWGY4eb
	 UlPDXAi5FF3v9hNhGyBmKltLwYh6KZ3RzSJwKRKPygdtOEzdO3sg8SX8vgL5Ut3a6M
	 Y4naJ+NpdIs9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A355A82309;
	Wed, 13 Aug 2025 10:46:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C5AF938
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFDD2402ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zf49EM-19V_R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 16FEF40296
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16FEF40296
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16FEF40296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:45:57 +0000 (UTC)
X-CSE-ConnectionGUID: 4yX12C++QcmIIUwzK53R5w==
X-CSE-MsgGUID: yy+lExh6QZ+kDTnC6xIYBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949611"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949611"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:45:57 -0700
X-CSE-ConnectionGUID: 3aXtKSgsT0WGWVuzmmfQyw==
X-CSE-MsgGUID: Yyh+KhR7Ruq3j0zfOyONpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066902"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:45:55 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9472F28781;
 Wed, 13 Aug 2025 11:45:53 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 13 Aug 2025 12:45:10 +0200
Message-ID: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081958; x=1786617958;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yLT7BDKccKmh7IL+6jcK22ShpJb0eR0hxsC+U/6WvuM=;
 b=YRi4cPP8FGMmoPGcjoTa2ujoUN1XKhnXXTQUS6vq6gNEfndkUFuFER0N
 ajJqEQtRTxqgSnB1yn9JFtfy0OiRrq2Lt983BfmUAF2cpakwzgcWih1fj
 54HZw6Z6Ut7X6lomccl2kEwSsm+LQBTt4EryUClHav4I9yxUK0Kao8OH+
 r8N3d8WFg5nR+0gDhTE6pCCHuRbVy5Gnvh7z4UVVC/e9RCtVmWBPwTDni
 xyzIrxWMIpgRDFSvPPQUhzvgeVyFM7ZRVuGQM3i8ACSK6LtYm07B02mAK
 2NwEBXSuQpG33um+ANJXlGuUG3fFZgU7uzTE7TNaznVF90ZlV7v4dXJG9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YRi4cPP8
Subject: [Intel-wired-lan] [PATCH iwl-net 0/8] i40e: virtchnl improvements
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

Improvements hardening PF-VF communication for i40e driver.
This patchset targets several issues that can cause undefined behavior
or be exploited in some other way.

Lukasz Czapnik (8):
  i40e: add validation for ring_len param
  i40e: fix idx validation in i40e_validate_queue_map
  i40e: fix idx validation in config queues msg
  i40e: fix input validation logic for action_meta
  i40e: fix validation of VF state in get resources
  i40e: add max boundary check for VF filters
  i40e: add mask to apply valid bits for itr_idx
  i40e: improve VF MAC filters accounting

 drivers/net/ethernet/intel/i40e/i40e.h        |   3 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  26 ++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 110 ++++++++++--------
 4 files changed, 90 insertions(+), 52 deletions(-)

-- 
2.50.0

