Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5296B84FED2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 22:27:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 895364048D;
	Fri,  9 Feb 2024 21:27:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfJXRrUDJfqo; Fri,  9 Feb 2024 21:27:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ABF640173
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707514068;
	bh=v74QpbWsc3wJfDHzDChlICNMO/uVZgtBNhgxt0rN+3U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VC/E+cjZi32J7XexZuTSUbImnszNzGcZIhxkKZddMIDnwD1C1CXuq1zjOV8rp7rYz
	 /Td1PHAo5dUm4Sz0n2bXOIqUw0y38TtfMtQN2k0JV4wvz4XNLFDIHAc7dDEgGqMbkX
	 gbU3mNcyKpHBMLYtgcxJK0vEO3uU/fUQHmJ9hpX/cx3uXu6p7jDj9UjO7rZRc2XO/h
	 d5dyW8xim7/M+q4RofrOY3kBYHAxMLy+kri24lssEE00d3h4No76aOYpNOoc6SdLE1
	 xCJbKxXyOSHuV5ZNvAc81cb+a0hH0T44SN3+V91MzbFmUohGuI/Mu4uA4K3K1MVWW7
	 YuWEhheRrZ5Fg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ABF640173;
	Fri,  9 Feb 2024 21:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08FE61BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E74AA4043E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WPslBNoacFCq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 21:27:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B64F400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B64F400D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B64F400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5321564"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5321564"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 13:27:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6681829"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa003.jf.intel.com with ESMTP; 09 Feb 2024 13:27:42 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 22:24:29 +0100
Message-Id: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707514064; x=1739050064;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sHsb8gXYpkPpGdHSHp1+/Yw7reLdTrFJt6m1RYZWZ/Q=;
 b=f/OEmu+PkGihqzO9zGSng8+jkAK3xL2AnTJt/IOMGRt/+eBO9Qr4Shkr
 /xBbfS3OKIZ/5nGPJvfGYpbE/v3YqNmxFQHkfqXZavLwiHipY1PfnmoKp
 GsMXX3fFUlAS/18zv+/MaotTi7R+J8ft9HxokTeAmjiNA+Cyr24F//qvr
 B3wt/+RKrDvTZLjvUMT1ifFZpy2j69lZ2tMaOhuhIRzVlk4TOpLAQnuLq
 omzswevw8vTHp8b+0Qe+ltFmjMEN28v6/injL7wwLkMs8RCe6h+QPo93L
 9bGk+nhtA3TE5w7OqrIX8/FQ0lkIMpYPRAPvvrwDwD/G4k342PlzO5oV4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f/OEmu+P
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/3] ice: fix dpll data access
 on PF reset
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
Cc: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow to acquire data or alter configuration of dpll and pins if PF
reset is in progress.


Arkadiusz Kubalewski (3):
  ice: fix dpll and dpll_pin data access on PF reset
  ice: fix dpll periodic work data updates on PF reset
  ice: fix pin phase adjust updates on PF reset

 drivers/net/ethernet/intel/ice/ice_dpll.c | 46 ++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)


base-commit: b1011aaeb1aacceb4a4f998ef5bc23358971cff6
-- 
2.38.1

