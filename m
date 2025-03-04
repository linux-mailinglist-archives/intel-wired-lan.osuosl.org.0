Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5112A4DBE0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:09:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58AD760A9B;
	Tue,  4 Mar 2025 11:09:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCCNKy9XIl7y; Tue,  4 Mar 2025 11:09:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A44F960A6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741086542;
	bh=wCaIVRDz/RhSLHpaHDRhVVs5ey/La0clVYrvn3kRruY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tDSO3cIzPVhCap5hLVJCJeL6gROdr+NPxg0iPPR952S3PuqRK64ZQjs7khaEDDDvD
	 XxnD7ZedL5uhlKdgW6bR8WnWw47QNUqZgJYKBcrITSCKBvGnqgNoyvoUrm10jbaTVz
	 dj61yhlNYnzzwG3KX2J5u6NyM771lXcukgf/EdcTMUpy2WS/Nts47fpCOPJMM8QUNN
	 ZSafmspPeSG6sEvZS0Z2IVNFEbLB8BZmEifBGJN/GMXHpJF4/MUAdfPe+SYzrNwCiZ
	 xw4hZKNYUqoSGvqvBJI11yNbWHtm0A1pQNLRd7U88MVoVKxxo78gCumEJmhZIAmAvn
	 V0GGScl0O3CfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A44F960A6A;
	Tue,  4 Mar 2025 11:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DDFAC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25959812A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JycvfI2w-13T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:09:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5618D81195
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5618D81195
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5618D81195
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:00 +0000 (UTC)
X-CSE-ConnectionGUID: MDvjjzMWSRGJfWsZJjl/JQ==
X-CSE-MsgGUID: pXyhzlOMTlyyv5+Tg0nHtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41246993"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41246993"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:08:59 -0800
X-CSE-ConnectionGUID: /ALizo0SSiKC8ACjARWuBw==
X-CSE-MsgGUID: LC90gxo2QvuMEo3ya4TWUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118341235"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa007.fm.intel.com with ESMTP; 04 Mar 2025 03:08:59 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue,  4 Mar 2025 12:08:29 +0100
Message-ID: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741086540; x=1772622540;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lQt0v6clScT8tF7sJdLeACojniDkejJ4n7Vxm1H0j/A=;
 b=T/ucTgPC88e8Kqf+YDXBx3zH6ZfvIl0OtSESLBpusXkUFRWpg8eQE3RU
 ghrWMDhXX6fdTat2RXrY/D4aCma/HUFM1aB1+z2BfiC/wj1h87o35I8a5
 eojuns/fMQexBJZLs7Icg5hw+VOxByUjxobSWBWie0iMK8Gsyt2f6P+KW
 wocSzwLHxlAjj5SK3gW3mClXGncijh5nAZbZYyT4q/+HrPLGD1Odl83IS
 8uZ4vakG1drIOVZGV60bmpEPqRc8WwT9FxhVzS6enUgxSMLMLCQoo2y4e
 kcR5ak9Zue+JJdIrCzGTnPdFS+o67fzgEzCc+vj1GbBinP7WoE0KgAa3z
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T/ucTgPC
Subject: [Intel-wired-lan] [iwl-net v3 0/5] ice: fix validation issues in
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

v3 -> v2:
removed redundant check and fixed kfree being called on uninitialized var in 5. patch

v2 -> v1:
attached Mateusz's related patch
rephrase some commit messages to indicate that this are fixes and should target net

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
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 24 +++++++-----
 include/linux/avf/virtchnl.h                  |  4 +-
 3 files changed, 48 insertions(+), 19 deletions(-)

-- 
2.47.0

