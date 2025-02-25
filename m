Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BE1A438C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04A6381DF9;
	Tue, 25 Feb 2025 09:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SKO_TBQxHsT; Tue, 25 Feb 2025 09:09:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60FD081DF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474548;
	bh=C3ULZtUoYa+2EKBDg1kTwHYKPe8avFrUySM1zMXcnbg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ml2svouKnW5t0J99/8w1PMwGYOT8VTiz8hcs6R8tctZT7ifG3jSKK6hIV93IbIOrQ
	 Z17/BVy4f+VKTBiV7gymTBlZZQB8S4mKla6Qna2l180CIc7umPAQ55GXqV7k09T3IT
	 p5KoMxwZoIVYYHonERTcQkswk5vGaRhxwOMMu2xvBCIvlTg9BRv9zY2wr7inmxIPCl
	 jhilz5f4ZBIc9nDdZCr4CzgNuJ9v1/BssIFoGqRsI9Sv0VlgTzQfNpEeob1LcZ9f4N
	 6iMV4lDG7ouK9QsXIaIEp005hYT6fFwo6lsZwNJloOpgpgKRjpZvxSm9qvZyuUz35A
	 vlAvRB0gyZXQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60FD081DF0;
	Tue, 25 Feb 2025 09:09:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D473A2DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0BCD4071B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pXf-P2Z8ZSDw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF76C40A12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF76C40A12
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF76C40A12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:04 +0000 (UTC)
X-CSE-ConnectionGUID: 9XNyqiRLT1esFpoyiKjtvg==
X-CSE-MsgGUID: tuvUgtH+TNCLnIsuIsBEKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810285"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810285"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:04 -0800
X-CSE-ConnectionGUID: l3qYIBBmRBi/S55cr8jQaw==
X-CSE-MsgGUID: xxHHLYjYRMCUUEhFz6wYow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275455"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:03 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:43 +0100
Message-ID: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474546; x=1772010546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FU+O1e+YZ+rOaKF4ncQzawYy76qQnRc2DJx5v5qVT4U=;
 b=L8OEZUDUEeo119QiVbMnDsHW+ulP/gMOolKwgtbCP252nvw+7aL9Sejk
 LQtWXkGi6jWjEdeUDHZ+8yCo7E46RKCgiPJ7nWOXSIQNc6lb2+t2nBkJ7
 EHRyPtZD1G4q7G7juDCewo87WRN37u9Qn6HJVA7Cy9jOES3m8r8OO9us4
 HrfjF1OafB47k1GpHUv20tslFO1Zny961W46HlA4t8OlLXzBT/Kw+Woul
 EmX1tW4VqSufLmvi1Im8GUGPEKXNezUdiJJOrTJ7ZAyPTgfO9ukspTDxl
 ZvkKtc1s3ATCBK7lh3U5WutZk9OLp8gB02K93CXMRwA67UXezxTF1GRt0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L8OEZUDU
Subject: [Intel-wired-lan] [iwl-net v2 0/5] ice: fix validation issues in
 virtchnl parameters
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

This patch series addresses validation issues in the virtchnl interface
of the ice driver. These fixes correct improper value checking,
ensuring that the driver can properly handle and reject invalid inputs
from potentially malicious VFs. By fixing validation mechanisms,
these patches strictly enforce existing constraints to prevent
out-of-bounds scenarios, making the system more robust against incorrect
or unexpected data. 

---

v2 -> v1:
attached Mateusz's related patch
rephrase some commit messages to indicate that this are feixes and should target net

---

Jan Glaza (3):
  virtchnl: make proto and filter action count unsigned
  ice: stop truncating queue ids when checking
  ice: validate queue quanta parameters to prevent OOB access

Lukasz Czapnik (1):
  ice: fix input validation for virtchnl BW

Mateusz Polchlopek (1):
  ice: fix using untrusted value of pkt_len in ice_vc_fdir_parse_raw()

 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 39 +++++++++++++++----
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 ++++++++----
 include/linux/avf/virtchnl.h                  |  4 +-
 3 files changed, 50 insertions(+), 18 deletions(-)

-- 
2.47.0

