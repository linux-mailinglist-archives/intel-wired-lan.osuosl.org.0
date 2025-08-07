Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7644B1DC82
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 19:35:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06DCA806C6;
	Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nm5jEBkK-ScC; Thu,  7 Aug 2025 17:35:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67EBD806C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754588140;
	bh=EAnEbA4l9VNK2yo90jP10nAp8/QuzhyTkNb36B1NzEY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ggq1T0q92BlBxSUh/+nr3V1RVXPpsxy8b/ffUVyKqekaeF7U96MGVc3ZlIT9+JFIZ
	 jX39KM46c/y6oTU929tRQbzUCiHaDzBlTPzOd1+AL3OMSYmXQGgC0hbnILT4m4EsrJ
	 Cu/ggViYw6wz03xjgEICJpunkXsrVhQnWuAdE6zpEiqW9G1d2mS90ZCS6OIoiSBV31
	 kCgfDfeVKQIJZaqjSWNmmyzoguGJtiuKIyIYSDOsdkDINq+BwKU75NufXOj2Dn88Pi
	 +IBcjtgHT0tgPybAHboApDZoW5qrMM0VtwkeNt/4MszQWuPVHa2aH6+n+y96LGF03T
	 gaiRMH1T7dOyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67EBD806C9;
	Thu,  7 Aug 2025 17:35:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EF27D31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D952340059
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VGUqf-NhIN8O for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 38E9740027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38E9740027
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38E9740027
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:37 +0000 (UTC)
X-CSE-ConnectionGUID: W6SkYRbnSlGv8d6GX9dnEQ==
X-CSE-MsgGUID: aYRYw6hST2Om+QyEqEIuCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74511375"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74511375"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
X-CSE-ConnectionGUID: Nsq6/E+kSfCtV9EO58lh3A==
X-CSE-MsgGUID: WmNTzC3ERpyGeEMCMfOaeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164787188"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 07 Aug 2025 10:35:25 -0700
Message-Id: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN7jlGgC/x2MSwqAMAxEryJZG6hStXgVcVE0avxUaYsK4t0Nw
 mze8GYeCOSZAtTJA55ODrw7gSxNoJusGwm5F4Zc5YUyqsJ5Qe4IB74xSkK024HeSlUMZLTRZaW
 sBtkfnsT6vxvga0VHEdr3/QDL39pndAAAAA==
X-Change-ID: 20250807-jk-ice-fix-tx-tstamp-race-5fe8484670a4
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=1746;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=qX7eESPtFbbBYbqvdVvIwZ9KO5pH19YjcurNTasPwYQ=;
 b=kA0DAAoWapZdPm8PKOgByyZiAGiU4+TITF5IQ+PwW0ILDc3UzhqUJSvD55w6UpesToNbvja2S
 Ih1BAAWCgAdFiEEIEBUqdczkFYq7EMeapZdPm8PKOgFAmiU4+QACgkQapZdPm8PKOho6QD+OKQ2
 +EN8EGmcgUn4hl3xai5Gx1TkfLV8knvU3IxG2wcBAN1Mo+jQ7172qfJxf8f+Xk6XEnrwtpVk+2U
 S9y2AFLQL
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754588138; x=1786124138;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=qX7eESPtFbbBYbqvdVvIwZ9KO5pH19YjcurNTasPwYQ=;
 b=nHQz48wfh/5cnLh0z8Jc1UK6LSp6n2XiJYIXCjEuE81iSbOMeTuvw6Nc
 iW6qk+/Mgthn3bWiRP/+nSppZj4vj1TJhq9nZeqf6bi3rLX5we6+nM2JD
 7uC4jx9FbYMmky+Jd4SlNdb16hkqNINXmdtis69aA3SUJ215aJWpi3954
 Maa+357WPG0HYLWi84Vkmklm2riN6nmiiMYw+q4+SKj096CEKnPKMhMKj
 obBP7WogVWiHRjr6uyE+rCq3zZK/k/ooDX08Zlqokg/CWQ96gVC79bYtU
 Skk0qIjkAgHQ9YkHGKwl8wjTtCEiV/qH06CJxuinA1fu4/v1sfeknZA35
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nHQz48wf
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ice: fix NULL access of
 tx->in_use
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

Recent versions of the E810 firmware have support for a "low latency"
interface for accessing Tx timestamps without interacting over the AdminQ.

Unfortunately, a couple of the functions involved with this logic don't
properly check if the Tx timestamp tracker is initialized. This can lead to
a use-after-free or NULL pointer access violation:

[245977.278756] BUG: kernel NULL pointer dereference, address: 0000000000000000
[245977.278774] RIP: 0010:_find_first_bit+0x19/0x40
[245977.278796] Call Trace:
[245977.278809]  ? ice_misc_intr+0x364/0x380 [ice]

This happens because the reset flow in the driver re-initializes the
tracker. If a Tx timestamp interrupt occurs concurrently with a reset, the
ineractions race and the crash can occur.

I split the fixes to two separate patches because the extra interrupt for
low latency came in a different kernel. Hopefully this aids with
backporting the fix.

This was originally reported on an older kernel prior to f9472aaabd1f
("ice: Process TSYN IRQ in a separate function"), which has a similar bug,
but at a different code point. I plan to look into if any stable kernels
need a separate fix after this.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      ice: fix NULL access of tx->in_use in ice_ptp_ts_irq
      ice: fix NULL access of tx->in_use in ice_ll_ts_intr

 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 13 ++++++++-----
 2 files changed, 15 insertions(+), 10 deletions(-)
---
base-commit: d942fe13f72bec92f6c689fbd74c5ec38228c16a
change-id: 20250807-jk-ice-fix-tx-tstamp-race-5fe8484670a4

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

