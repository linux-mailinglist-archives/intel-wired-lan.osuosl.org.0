Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2A3D30CDC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 13:02:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16E9083B74;
	Fri, 16 Jan 2026 12:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1Y0pIFOEdxQ; Fri, 16 Jan 2026 12:02:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9423F85B82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768564950;
	bh=CbRNbW4dLhtV1qQ+XSSp+WL1eJWnjT0bwIfUXw93y1o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nWZNc93ZeY151N1AOEXp5PBAvQY2DZpuKFml5/rohMKb5llWb11lNALYvLWnWBaG2
	 3TJcmRFe4rP4Bcal4lM3qpZoK8O42LHy2JHufSgT5Q2JM/cD5rq9hz3wcTmL1JZsDA
	 Cb+sDo5pl/HylWE+RYHzaq85vRCP4ykHPH4HUGuJFJN2vbyQ16WCpup3bXeVBviaZp
	 9gzTYE5CWKWXM7aw1IGJedHe5lTMTh3+Q3+8v2HLdtpR0jTo28SS6p4GGInIKhh/tI
	 UfYRhjoNEk9ej9UoNd2Qnu5m0So43n5HWR1eixt5cTuEZgzQUrXjowkO85aj2Dxvd/
	 XHIjqXY2Ljn+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9423F85B82;
	Fri, 16 Jan 2026 12:02:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F05F223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3D3A83C86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5tN1aNRkwFtX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 12:02:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54A5183B74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54A5183B74
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54A5183B74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 12:02:28 +0000 (UTC)
X-CSE-ConnectionGUID: C3lVDgz2Rc6Ml0txAbr2Wg==
X-CSE-MsgGUID: hFcSgwKzQWGja94D8/0vlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="92542190"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="92542190"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 04:02:27 -0800
X-CSE-ConnectionGUID: juPtriiURyCn/AgQmw8Oig==
X-CSE-MsgGUID: CEBJNsVkSFKoNVdzUAb8FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="205645881"
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by fmviesa009.fm.intel.com with ESMTP; 16 Jan 2026 04:02:26 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Fri, 16 Jan 2026 13:23:06 +0100
Message-ID: <20260116122306.78200-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768564948; x=1800100948;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X4qf3eU27DL70bv5ck3IOiqNTfvbHsfrTGeivJyJjLw=;
 b=P39FDdHK9uy+aYxn+QRRNp4ERhdHAzVduofIzebS7RZL8u7lubp3jA3o
 Zqxvg9Z/aYEFmT3SAw3YWK5ePtOadlJHvzaFaeAsCWxaCEP7bmR9Ncznj
 s6v7vwoKZD8WlyVi4fZiqY3W14w2Zlh/A+nF+c7I2z1ilUA+5YduS2z2T
 HW9yrJHZiNT48LRwWFk7dmklqPy4OSKxLDyFaTBSciFn2hWoh5J4hwzgj
 4H6vICUlc4nVSzfPVGjKt00/cD5E+q3mCbugxL/D5f1A1ModW8068mHaX
 2thGSu59AtbRcg9GPy83O9DHjsVQGV55VqOY7YsqDhHCX/Vj294HQFuL4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P39FDdHK
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ixgbe: e610: add ACI dynamic
 debug
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

Enable dynamic debug (dyndbg) of Admin Command Interface (ACI) for e610
adapter. Utilizes the standard dynamic debug interface. For example to
enable dyndbg at driver load:

insmod ixgbe.ko dyndbg='+p'

ACI debug output for e610 adapter is immediately printed into a kernel
log (dmesg). Example output:

ixgbe 0000:01:00.0 eth0: CQ CMD: opcode 0x0701, flags 0x3003, datalen 0x0060, retval 0x0000
ixgbe 0000:01:00.0 eth0:       cookie (h,l) 0x00000000 0x00000000
ixgbe 0000:01:00.0 eth0:       param (0,1)  0x8194E044 0x00600000
ixgbe 0000:01:00.0 eth0:       addr (h,l)   0x00000000 0x00000000
ixgbe 0000:01:00.0 eth0: Buffer:
ixgbe 0000:01:00.0 eth0: 00000000: 01 00 17 00 00 00 00 00 00 00 00 00 00 00 00 00
ixgbe 0000:01:00.0 eth0: 00000010: 1d 00 00 00 0b d5 1e 15 5e 4b 90 63 aa 0b 21 31
ixgbe 0000:01:00.0 eth0: 00000020: 69 eb cd ab dc f8 8a fd f4 53 e2 dc 54 e0 81 fa
ixgbe 0000:01:00.0 eth0: 00000030: 12 dc 41 82 01 00 00 00 24 20 08 26 53 08 00 00
ixgbe 0000:01:00.0 eth0: 00000040: 08 00 14 00 00 00 00 00 00 00 00 00 00 00 00 00
ixgbe 0000:01:00.0 eth0: 00000050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
ixgbe 0000:01:00.0 eth0: CQ CMD: opcode 0x0009, flags 0x2003, datalen 0x0000, retval 0x0000
ixgbe 0000:01:00.0 eth0:       cookie (h,l) 0x00000000 0x00000000
ixgbe 0000:01:00.0 eth0:       param (0,1)  0x00000001 0x00000000
ixgbe 0000:01:00.0 eth0:       addr (h,l)   0x00000000 0x00000000

Piotr Kwapulinski (2):
  ixgbe: e610: add missing endianness conversion
  ixgbe: e610: add ACI dynamic debug

 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 119 ++++++++++++++++--
 1 file changed, 109 insertions(+), 10 deletions(-)

-- 
2.47.1

