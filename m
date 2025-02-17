Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60766A3801C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 11:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D1E1821C2;
	Mon, 17 Feb 2025 10:28:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ncNMYjrzRfhP; Mon, 17 Feb 2025 10:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02999821BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739788101;
	bh=8gHa24sX3PmCO30erIzNazfnUjtAkYl6mHvocLfcX50=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jeZ+XDGyGs1UzlULtCLMhdAFW7E+RecV1ILGZjzgNP4S57fv7efEsIwzvc68W7Me6
	 i6pGPu56L2x0h3uLabKn0R92OuPCjbCBMY+NA5ChB8VJJfcDgHOfRohk6kp/8YWYw0
	 NLMRvh1H6xEhhIpQhIfYffk6j6XcVcr0n3Rm9DKqUQb+1eJzT2lqeb4WzI1TyB1d7t
	 jY2KvXroMPF0bgqfJipavtFUBmVQpaYVg4VL7d34fPWvkTeWjc6LzcSBbtlweUjMNM
	 tnotOQ3mejwQVLdYj1sK+9Lw7y+F4NPgPavhH75d7+qiXXWzQgarV0EIAurtZnHAaf
	 YVpscGWD9jjXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02999821BD;
	Mon, 17 Feb 2025 10:28:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4507C72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2993F8218F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zVU8Ieu0HEY6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 10:28:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6BD7682190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BD7682190
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BD7682190
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 10:28:18 +0000 (UTC)
X-CSE-ConnectionGUID: USwUGrpxQCGVxlzLvs8TdQ==
X-CSE-MsgGUID: vQxm7dlRRcW4QOQlsCB7Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40168360"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="40168360"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 02:28:17 -0800
X-CSE-ConnectionGUID: 8J+pHJF7RWyOP6n2c9qmcQ==
X-CSE-MsgGUID: cWad0JMQTii9ikODgIM0Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114598207"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa010.fm.intel.com with ESMTP; 17 Feb 2025 02:28:16 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Mon, 17 Feb 2025 11:27:41 +0100
Message-ID: <20250217102744.300357-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739788098; x=1771324098;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nZjPci26EeRl0Lt6rghvQSdqDIAy8u8SjCiDpqkLlmY=;
 b=IZ7knV3JrHl102JtgOdObWMo62w5UN35tmBPs+gkGTtI2pzFIG6V3vCC
 ECSDloAhT2GEmO1qoJesQd2Zj0mcPUbCThRdFx5uGN94vTcnm2YE+0Apa
 wVbxBi7wOp0rNzv4nlR8agCZ+P/aSpn2mJuk0ao5bhBI3TbSCvMdmNXYU
 4ym/50Ap0UsC0qfiYcxyNeXotMfOq6bEbs91Ea6lXmT8RcK8UcbKNSdvv
 GmzoDj7hE/MsvR8XkHokLiX7Zlk4+jCmJBzC3ixs3NvfnsEDpxvtJyc8e
 6A+DdjPMad9AzkIk/B2UfnpAyIhH62R8I1QFljhageSFDIAcCNHbPfCgh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IZ7knV3J
Subject: [Intel-wired-lan] [iwl-net 0/4] ice: improve validation of virtchnl
 parameters
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

This patch series introduces improvements to the `ice` driver and `virtchnl`
interface by adding stricter validation checks and preventing potential
out-of-bounds scenarios.

Jan Glaza (3):
  virtchnl: make proto and filter action count unsigned
  ice: stop truncating queue ids when checking
  ice: validate queue quanta parameters to prevent OOB access

Lukasz Czapnik (1):
  ice: fix input validation for virtchnl BW

 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 39 +++++++++++++++----
 include/linux/avf/virtchnl.h                  |  4 +-
 2 files changed, 33 insertions(+), 10 deletions(-)

-- 
2.47.0

