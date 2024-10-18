Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 505099A40EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 16:18:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C31D481BA9;
	Fri, 18 Oct 2024 14:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pp23HPlHts-r; Fri, 18 Oct 2024 14:18:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B55CB81BB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729261114;
	bh=l5BmEnW5HS3cPBT8PauyG+StEgmrtRzhCadwlbeKC5c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6giZq8grFpBVmT32gLDD1Dwi2UGExhbycCy59nU6pkixIat9HXhnZ1moqfIVTGetL
	 dNOYSVB7bUbefl3tgzcNavyitvZzAnMWPWTX31EQNommuRy6JpVSXn9k4yy4/UuYRl
	 isTlKzswDiewUabuz9NCnpX3DCMg7X1CZ1GGty/apG2gIbksIanTnnEkRMoUs953ow
	 uJluRQ54pfTzrPP0JruuEFiVHhtjvFRurKAbF1lplGb4yLDx26CSnggNvEWFLCKTy4
	 OViusXM3qHX2q1FewNN2/aD7D4C32vLqHpRfVAs1cS6mfOD5CJDiw0aXw4pATgyl3S
	 lpmI5GjRF7Y8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B55CB81BB0;
	Fri, 18 Oct 2024 14:18:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B32782072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 942B7408E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kZJLqqjvJtMv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 14:18:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65A20408E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65A20408E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65A20408E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 14:18:30 +0000 (UTC)
X-CSE-ConnectionGUID: z3OEWoqaS12YzLxWG9553Q==
X-CSE-MsgGUID: 6AzPICO4SG2vmLu4Y+LyKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="46293159"
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="46293159"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 07:18:30 -0700
X-CSE-ConnectionGUID: TY9o3tiUSomtCcdBTwRWkg==
X-CSE-MsgGUID: a95atw9TSeOq3Cmv+9kL7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="78929736"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 18 Oct 2024 07:18:29 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.186])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 819072FC64;
 Fri, 18 Oct 2024 15:18:27 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 18 Oct 2024 16:17:35 +0200
Message-ID: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729261111; x=1760797111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BMORuUBAGhC1VOexeLNj8xomPTU9KfvMfMcUnAu/XDU=;
 b=ZfZQU1cBWM7muqvidGFiGmqTlZXEhK5xyAWAx5npCGfYzZOu3umLqbz5
 4OYUWcpqtCNSiw0X/mmFIGsRRxKNgL1JUlC4CUvM2sorJcGY+9YeQWkmL
 uQH9jVChEJ1Z8O24rW3XgY19ByN8+cO/fgbRE8tPdTabsC1oMMrx5hagD
 GSf3pO++bI64zWOEktn6wEvr6993CseMOFylEnDJWRJ2Gyhp+Fj/29KPh
 vk7CBg10aoF5L0m6znXI65IGVaR/wfDjr76XToY+Uz3EZmfBTUA+p+668
 PmjBvtSxi79K8tUDo2XL7zc7s2SAPyMQygHhfhfXhGc1+zDXkBsxfrQ+i
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZfZQU1cB
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Refactor sending DDP +
 E830 support
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

This series refactors sending DDP segments in accordance to computing
"last" bit of AQ request (1st patch), then adds support for extended
format ("valid" + "last" bits in a new "flags" field) of DDP that was
changed to support Multi-Segment DDP packages needed by E830.

v3: (Simon)
added ice_ddp_send_ctx_set_err() to avoid "user" code setting
of the ctx->err directly, fix kdoc warnings, removed redundant;
rebased.

v2:
adjusted authorship, rebase, minor kdoc fix
https://lore.kernel.org/netdev/20241017100659.GD1697@kernel.org/T/

v1:
https://lore.kernel.org/intel-wired-lan/20240911110926.25384-4-przemyslaw.kitszel@intel.com

Przemek Kitszel (2):
  ice: refactor "last" segment of DDP pkg
  ice: support optional flags in signature segment header

 drivers/net/ethernet/intel/ice/ice_ddp.h |   5 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 301 ++++++++++++-----------
 2 files changed, 166 insertions(+), 140 deletions(-)


base-commit: f87a17ed3b51fba4dfdd8f8b643b5423a85fc551
-- 
2.46.0
