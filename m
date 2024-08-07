Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCD9949D08
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 02:36:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 443D7404F5;
	Wed,  7 Aug 2024 00:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YltzVTsYyw3Y; Wed,  7 Aug 2024 00:36:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17F8740233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722991008;
	bh=TnDQmXxLcyAD7oVbGNtVI5t99KpPecLsnCHt8HL7kI4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l+sC0L+ccBqt/lXIXeVuaMN41HDbb4hJC/QRZEr1o+Bokt52/aDVjgR3jlN+e231z
	 WcPDyDy+j+kgcKVsfxL5KvhmFC7xAwFdDUiZpdfYm9AKvC9EElBGYOwFfYZL6VC3nB
	 0EJYVgIf07bUTBrSQf4EWdyUHDwCWT9aoT4wBvjYpoM252eeqOUaSP9+uTqcMeFftV
	 PmQ1HattIIO3Byiq+z2531NtyJnaaoD4qBB45o+X6v245jh655beE1kVKCO7QlAT8U
	 nMiYmPVg0IBBYADeo/nRD3LUayIyF6wNE8Vz8aY7bnLYfxss91eapczHS8KUALlZ3s
	 VvJRx/UyLCcVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17F8740233;
	Wed,  7 Aug 2024 00:36:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3201BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37AB7606C2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYhOgeBUPUHU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 00:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 580A060668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 580A060668
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 580A060668
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:44 +0000 (UTC)
X-CSE-ConnectionGUID: V7Ga3GPkT+moTdv04cTI9g==
X-CSE-MsgGUID: qfL9ORCoTpmlULuGFKXvXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31669741"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31669741"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 17:36:44 -0700
X-CSE-ConnectionGUID: 39nmRel1SXOo3mtdz+TAyg==
X-CSE-MsgGUID: 26VQOEdjS+yVeQdGg53hsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61496981"
Received: from timelab-spr09.ch.intel.com (HELO timelab-spr09.sc.intel.com)
 ([143.182.136.138])
 by orviesa003.jf.intel.com with ESMTP; 06 Aug 2024 17:36:43 -0700
From: christopher.s.hall@intel.com
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 17:30:27 -0700
Message-Id: <20240807003032.10300-1-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722991006; x=1754527006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QV9+GvHg6bYaP7NQb66ksRUUQwp1mzozYO2yGfHEd2g=;
 b=lpFwm/85jf0/9oTht3Ar0Pzw7lM4VjUgwTw1fpI5LvrzKLU83wNziumP
 474dFpH2+zVyHbpNDoxQBK71jFtfQ27FzbiVczxAVbmXvl0+h/4Lsvu+1
 55pZNmQnvIcrmf3EbvaeW5SFDirLq20HzcB0auzuYX5qOnlUxap3Ly0ku
 QV0St97n+bVHYMOR+BcTSl7qn8rIA/Nd1pCT5xQs+2J7vBkCZEBc2CRQE
 8S0h4C3V7fANJA6r0r8WrWOUUrtSvwcCvJY50s4ABPwl4fbEoVuptuC2q
 a6yWSTxiAVyKRwNfomJlKvFiRSPoI87mrXiElbbXLKJdCZIr4uLpyqywQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lpFwm/85
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/5] igc: PTM timeout fix
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
Cc: Christopher S M Hall <christopher.s.hall@intel.com>, david.zage@intel.com,
 vinschen@redhat.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christopher S M Hall <christopher.s.hall@intel.com>

There have been sporadic reports of PTM timeouts using i225/i226 devices

These timeouts have been root caused to:

1) Manipulating the PTM status register while PTM is enabled and triggered
2) The hardware retrying too quickly when an inappropriate response is
   received from the upstream device

The issue can be reproduced with the following:

$ sudo phc2sys -R 1000 -O 0 -i tsn0 -m

Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
quickly reproduce the issue.

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
  fails

Christopher S M Hall (5):
  igc: Ensure the PTM cycle is reliably triggered
  igc: Lengthen the hardware retry time to prevent timeouts
  igc: Move ktime snapshot into PTM retry loop
  igc: Reduce retry count to a more reasonable number
  igc: Add lock preventing multiple simultaneous PTM transactions

 drivers/net/ethernet/intel/igc/igc.h         |   1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   3 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 100 +++++++++++--------
 3 files changed, 63 insertions(+), 41 deletions(-)

-- 
2.34.1

