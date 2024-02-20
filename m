Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 524AB85CC53
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 00:57:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B465416C5;
	Tue, 20 Feb 2024 23:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NW7q1FbY5wzf; Tue, 20 Feb 2024 23:57:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 245B541638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708473444;
	bh=c0rg7jJY4DG9CK5e5GbNHeKFEqPGSBu+P0wVWO8Yzco=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Pcaaut0vNCJE/A/kg+7YdTSEiDNqo1nShJTq0ZD0XRrrc2MPFSYvf7/BwBOAnj4SB
	 K8xoj5S8sWsIfcgN7HpkNvPFJdQKCYZwlEEZVfJJbvFCNqvIt0oseEf1oF9XpUgrqe
	 wgKqTi2gLU9s3Xmzz8m5RF4PZM5NWVM1LB6GbbA16Z/ZoBEAvnn3wpG89hGF9AV4et
	 E3Vcl5EqVW4SWYxzON2UaxTnfXBGJcO7ZNQXsRN8mRu+5PRnQDFZwwyqrzvrrs2+Mg
	 uGw5uGPdvPkqBYfkzm9q+3V4WpvXbvwlXhVklewFZO6+3oW9kewUT0kAv4jxQwA17C
	 n4sboyyJtFMnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 245B541638;
	Tue, 20 Feb 2024 23:57:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9577E1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CE8B41560
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVV0mDhQglz1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 23:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 425264043A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 425264043A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 425264043A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20041757"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="20041757"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5092384"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.83])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:19 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 15:57:09 -0800
Message-ID: <20240220235712.241552-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708473441; x=1740009441;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J/HISYfX3p/bcLAW10Rix4cZqovbkcRYLd3vkTcS0p4=;
 b=KRjj+tTWsTfdTxto89zu1REYXzv2nL8ffO6QJrDdmKHmL4g26O5RKIH6
 J7ILKLzRetXnrI2I6rsrB84kKMAJX2elw8ZF+z9cluF9D8yVTmu5p7cwl
 M/spOcgZZnYnyLNQ0qBGAI1O57ajIHWmUfyLbrXtk76kBIvxK3L0Umpaq
 pf/6zW5aanSLkX7syNL7+Q5k6ZCKKLwX4xv/s3MKOPjvHCHgqk+dGERo0
 RTIF8Y8vrsXaiwaugcL7XsgcBKtzpK6n4HszHSyDzky9pzegFnseMx4Nt
 97Fawj0OJ0rFrop0o2kKhzfRDd8aAp+R6KhHj2917GHvFSudkCoMOQAJ2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KRjj+tTW
Subject: [Intel-wired-lan] [iwl-net v2 0/2] igc/igb: Fix missing time sync
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
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Changes from v1:
 - Reworded cover letter and commit messages, so it's clear that the
   issue is when the same kind of event happens "twice" it might be
   ignored (Richard Cochran);

Link to v1:
https://lore.kernel.org/all/20240217010455.58258-1-vinicius.gomes@intel.com/

It was reported that i225/i226 could sometimes miss some time sync
events when two or more types of events (PPS and Timestamps were used
by the reporter) are being used at the same time under heavy traffic.

The core issue is that the driver was double clearing interrupts, as
the register is both "read to clear" and "write 1 to clear"
(documented in section 8.16.1 of the datasheet), and the handler was
doing both. Which could cause events to be missed if the same kind of
event that triggered the handler happens again between the "read" and
the "write".

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

