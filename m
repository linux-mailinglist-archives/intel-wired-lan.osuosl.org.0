Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C571190D3A2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 16:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7264B826B4;
	Tue, 18 Jun 2024 14:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0w2P0-skfTL; Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A44EA827B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718719810;
	bh=q9aMdQCD7OvZkZx85XVQWJnDAMPvbOnQBSFpJL9gnA8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ByGHADIBfpSz5neK2kuJypf9NsGY9rMuTqu2Ng9dfwTr16H4hXPWh/R0zshC/ZHyE
	 64JPYKBnkVsFcZU2bGoVEidn8pmdKsGz2UYs4FgCIgR4Cq8UBVfKbZVr2w5y0qDAgC
	 bS8Fsh+FSwwOCCe3jHInKjymVJ4V6s9zi/zh4v8FcsxK8EV77pC/hyNkYHw23kcIL+
	 0v6W8teub/T1z43kBUhdR7msK/jocjsUqz0OVku7JQZBTF8u8hHGUSMugQGDmlNPnF
	 310sYFtjxZ0F7v/LTgcGBnPgd03lLgr0pMAGIUKqiQ8OfSvFkGGoQe+BrB6HWg+BdT
	 9D8TgQaokAtUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A44EA827B5;
	Tue, 18 Jun 2024 14:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 312661BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E18D610AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zzLkj2B6D7vP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 14:10:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 095506101D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 095506101D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 095506101D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 14:10:07 +0000 (UTC)
X-CSE-ConnectionGUID: PsU6D8HsSvW2iEgyPAYmTw==
X-CSE-MsgGUID: VfPx6jU1SC+Z8dQZkRzQbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33137752"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33137752"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:10:05 -0700
X-CSE-ConnectionGUID: UDnd+3IzTE2sWQnLZBi3IQ==
X-CSE-MsgGUID: 1bdIKR+9TyqBc0TtWrxkmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46109775"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 18 Jun 2024 07:10:04 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 360EC34300;
 Tue, 18 Jun 2024 15:10:02 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 16:11:51 +0200
Message-ID: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718719808; x=1750255808;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jLZJ2E9FwdOd97vcEvkFHZd14MghabEtObOBy/yz4nQ=;
 b=H9PiSGAeuvlUchdBlWPWSVaez+fh31AUYW7xup3TliCgS9RhSPbNk7Dz
 VKzfMx4nx3DblSHUR2JfuBczRkHjqOz5sLM9hOzWw9+764riwVi+nDCa9
 OIuDvYsvf6MSdXMUhPcOe1yuRSZwkktuR51220tkgq24iYZ/yvya/hXgL
 BcA+VLMSPeSzQ2IXXdlIxpxFz56L6VjfLIEP/0B8/iSckWLbqr+ZJLt+J
 ldxvvWhndpg/oLe/PUdzHXaSdam042WFTuAfNk6q8XZEk70DNOGJZl76a
 mN8iktz5WU+SJ5z9EJczTgAucoMHnOszpaw85oJLmrJpe7fkxtklNwsTs
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H9PiSGAe
Subject: [Intel-wired-lan] [PATCH iwl-next 0/6] Switch API optimizations
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Optimize the process of creating a recipe in the switch block by removing
duplicate switch ID words and changing how result indexes are fitted into
recipes. In many cases this can decrease the number of recipes required to
add a certain set of rules, potentially allowing a more varied set of rules
to be created. Total rule count will also increase, since less words will
be left unused/wasted. There are only 64 rules available in total, so every
one counts.

After this modification, many fields and some structs became unused or were
simplified, resulting in overall simpler implementation.

Marcin Szycik (3):
  ice: Remove unused struct ice_prot_lkup_ext members
  ice: Optimize switch recipe creation
  ice: Remove unused members from switch API

Michal Swiatkowski (3):
  ice: Remove reading all recipes before adding a new one
  ice: Simplify bitmap setting in adding recipe
  ice: remove unused recipe bookkeeping data

 drivers/net/ethernet/intel/ice/ice_common.c   |   8 -
 .../ethernet/intel/ice/ice_protocol_type.h    |  43 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 652 ++++++------------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  20 +-
 4 files changed, 229 insertions(+), 494 deletions(-)

-- 
2.45.0

