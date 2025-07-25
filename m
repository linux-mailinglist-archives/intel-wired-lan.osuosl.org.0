Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A423B123F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 20:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC6A341D79;
	Fri, 25 Jul 2025 18:34:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AnD4xIWb7Qyh; Fri, 25 Jul 2025 18:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFFE641CD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753468493;
	bh=w4tKWd4/d2e5xBpXXojKBitYOVaYFVOef53QzIJTl14=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7JBfSPZi+L9CIYCwJuyEWA1JIO4FKAtO4yPAOJRgzbpYEmiPHp5Ml3biHjArtIjH4
	 WhwYpWbV29yTC7+IicArMIAQ0R/Kh4x5OQ841PC66gd4vKO4Lvw6n+Stv8trDbYeFh
	 1GS0UlwHms29uiKKXCy/94YcFJLOB0yrTidrNdtFaegMrKaK7ia0sAJhQyBft5Mowm
	 px0oa3TDpasW2kC/CBWaJ3kfWkp5ldtIEHNLfhUobwhAiMKk0icwX8hlb9JB/XSQie
	 cGDP43OEgeAYMborfBFoiRCg2JAZOhFD9uGumMyQKrdDNT0hTqRU32ibwJKWqKY6UM
	 ONEOwWRbw6lKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFFE641CD7;
	Fri, 25 Jul 2025 18:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A454909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B9DA4087E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5sp6QE2tlLGT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 18:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E8684005B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E8684005B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E8684005B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 18:34:50 +0000 (UTC)
X-CSE-ConnectionGUID: np03c+hbTN+l53+4cpuFpQ==
X-CSE-MsgGUID: g/Y50KZpQiyS0dFW/Lmb5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="81252335"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81252335"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 11:34:49 -0700
X-CSE-ConnectionGUID: ylsHY4aGSha1zb4ZC/5cPw==
X-CSE-MsgGUID: 0eG/o7oHTO+htGAzRgtL3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="160803940"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa009.jf.intel.com with ESMTP; 25 Jul 2025 11:34:50 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Joshua Hay <joshua.a.hay@intel.com>
Date: Fri, 25 Jul 2025 11:42:17 -0700
Message-Id: <20250725184223.4084821-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753468491; x=1785004491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YTbYY2bm7XH8SBLFJ+M84jk1vGPJeS0Rcpzvb0M8XqM=;
 b=iC6quJXw2B+1ze7W/iE5eq74f4I9SIK7Gi1hQNS0abkZAiNkWcdO6WfA
 4RFg82KS9tKiNeIj/FXdU0GDxSZpmq33+geopJp9gYih4JeLmc8VSPPPV
 qapKOxmLpuZ4V97yU0GJAG2l11crFfiszohl2c5fy6VhMLCABpxepYApO
 oTc2fShakZwjE4deRfk/EsfXFHBkXJvUM95XOeDJDHtTt2zYBRZw9x7EY
 C4jh8wgmWtX43WfY+NRgApATGqpG9ehHkFpTCKYzpwcNSPWqubMLxYpXA
 dLv0vZqNI1hOWeYexNQGGDgvF0jDtg0HNLXlKdC3k0EGTnC/qgifl8Uzc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iC6quJXw
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/6] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
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

This series fixes a stability issue in the flow scheduling Tx send/clean
path that results in a Tx timeout.

The existing guardrails in the Tx path were not sufficient to prevent
the driver from reusing completion tags that were still in flight (held
by the HW).  This collision would cause the driver to erroneously clean
the wrong packet thus leaving the descriptor ring in a bad state.

The main point of this fix is to replace the flow scheduling buffer ring
with a large pool/array of buffers.  The completion tag then simply is
the index into this array.  The driver tracks the free tags and pulls
the next free one from a refillq.  The cleaning routines simply use the
completion tag from the completion descriptor to index into the array to
quickly find the buffers to clean.

All of the code to support the refactor is added first to ensure traffic
still passes with each patch.  The final patch then removes all of the
obsolete stashing code.

---
v3:
- Remove unreachable code in patch 4
- Update comment format

v2:
https://lore.kernel.org/intel-wired-lan/20250718002150.2724409-1-joshua.a.hay@intel.com/T/#t

v1:
https://lore.kernel.org/intel-wired-lan/c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de/T/#maf9f464c598951ee860e5dd24ef8a451a488c5a0


Joshua Hay (6):
  idpf: add support for Tx refillqs in flow scheduling mode
  idpf: improve when to set RE bit logic
  idpf: simplify and fix splitq Tx packet rollback error path
  idpf: replace flow scheduling buffer ring with buffer pool
  idpf: stop Tx if there are insufficient buffer resources
  idpf: remove obsolete stashing code

 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  61 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 722 +++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  87 +--
 3 files changed, 355 insertions(+), 515 deletions(-)

-- 
2.39.2

