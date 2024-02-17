Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED6D858C65
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 02:05:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 244E841F77;
	Sat, 17 Feb 2024 01:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EBnpBAAZ1IJ; Sat, 17 Feb 2024 01:05:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50FE741F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708131931;
	bh=8P/fpFcLy8ZlgTFRA9ZPvkWLPzrcf2VpBwqigJz6m0Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xjvR96xULhAIzIGF2pSWG+oEekAVbPOsfyl137SbMD63X/H7PPBJz55td2CKOlx3T
	 krHE5wiopvnkDlaCuAXm0OeL1dwfz3i0PHZytERksofshm01N817Mr6eaUCkSQ4GEK
	 g53SYynR2MAVaAbQ1c5GwCR0T+RaKxHxv/wPunlP+prEZmBRKwbNt2FVxxBropMkmK
	 NoQgdZNdvidCsF+2wDJ2Cj2Cd59xTDIOIyXVxYHEfB3uhc4sOjwkcW5egEuKZxVTSv
	 W+ey5vj7DQ5vdXngkoGRikTJWFBO8fyC+LudfUsEn/DMV7aYGz7u4zHi7cwyTj5Ki1
	 SrHPU4GAVmALw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50FE741F6F;
	Sat, 17 Feb 2024 01:05:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB1A1BF263
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5797941CDD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x2pANXIma9qY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 01:05:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 458DA405D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 458DA405D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 458DA405D6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 01:05:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="13671707"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="13671707"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 17:05:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3953424"
Received: from unknown (HELO vcostago-mobl3.lan) ([10.125.18.63])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 17:05:21 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Feb 2024 17:04:52 -0800
Message-ID: <20240217010455.58258-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708131928; x=1739667928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FQ9K7TIndVZzBY+pC4w0lO3OzwDekfu9F+7olBxUOr0=;
 b=J6ELvzWf2OH594QqrLJwy4NQCmHkv+whM6uhiO8z84RGFRTLKu4qLGMu
 YKCs84UbH1VRt3I8Z8ActaHv2dKdqWJ42a9i2IQWXes6g6oR+Ur06SUai
 gIvbtfHVgcbgEIRruO9yE4FYRbzXXJF8JLLcpkdDB9Y8VdpFy0komVrn/
 Lg1YcV8zx2UBPBr+8CIhtyg2aqmNhJV0W88CSgynwP8ZHtEjzLst1088N
 0dveQoqm3DG1mKjfTdm6hwurklMU/SGk3JnAAZisK+UDCwral7Z+S5Sme
 XDTIJfYCL7DzQzaKaTJjjyQu3Y/75hVjz8mQ2X0FfdrrDQAqvQYX28BqA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J6ELvzWf
Subject: [Intel-wired-lan] [iwl-net v1 0/2] igc/igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 richardcochran@gmail.com, kurt@linutronix.de, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

It was reported that i225/i226 could sometimes miss some time sync
events when two or more types of events (PPS and Timestamps was used
by the reporter) are being used at the same time under heavy traffic.

The core issue is that the driver was double clearing interrupts, as
the register is both "read to clear" and "write 1 to clear"
(documented in section 8.16.1 of the datasheet), and the handler was
doing both. Which could cause events to be missed if they happen
between the "read" and the "write".

Removing the write fixes the issue.

It was tracked down to commit 2c344ae24501 ("igc: Add support for TX
timestamping"), in which I added support for basic timestamp
operations, the issue is that as the hardware operates very similarly
to i210, I used igb code as inspiration. And indeed, the same double
clearing is present there.

But in the igb case, I haven't seen myself or heard about any issues
that seem related to this. So I think it's more like a possible issue.
But it seems like a good idea to fix it there was well.


Vinicius Costa Gomes (2):
  igc: Fix missing time sync events
  igb: Fix missing time sync events

 drivers/net/ethernet/intel/igb/igb_main.c | 23 +++++------------------
 drivers/net/ethernet/intel/igc/igc_main.c | 12 +-----------
 2 files changed, 6 insertions(+), 29 deletions(-)

-- 
2.43.2

