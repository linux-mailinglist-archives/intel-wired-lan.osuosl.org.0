Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0387D9D8F4E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 00:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10BD7402ED;
	Mon, 25 Nov 2024 23:51:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id csvMaTIMx8Ek; Mon, 25 Nov 2024 23:51:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B03E40282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732578716;
	bh=XCGGwe4JM/rlFrrZiCYLqUtPqNoBjyfe81+iSxHxYjA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=92rBeM8qmnPs0kizhzMFNMYUVhSMpEyohVi3JXyxmlCRKViLX7Mdedp1wpJkt17Cl
	 BQVSBMDd+UqlH6IHrfGWnvRnBio0wjiweYXsLqWlszZDiL0kV/TNr1yg5R3wKKP8o7
	 LOHmxdloiJB46hGEvA2lowWcqZnxrcYfloSzIHhA/cvGU6WJexOdP4oD2XwO7GU7gu
	 EPhUCIhoxlBvHlohOhE80LBqnnpeJsiGQE/oaFG7Z3tLeiA5vpjbzec4k9rY6Fdh3h
	 ublPjkO7s3PaTVz9kqcwjKUnOcQGAFQrausU+Gl1wgri4o9juegL7GUZsT2kJ78+HF
	 PA8r5ypJKlesw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B03E40282;
	Mon, 25 Nov 2024 23:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0554281F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A92F40256
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yu_2F5j3NT1a for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2024 23:51:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B95C40206
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B95C40206
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B95C40206
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:51 +0000 (UTC)
X-CSE-ConnectionGUID: uEr59p0yTcGU0KNESDe8BQ==
X-CSE-MsgGUID: GWkR2lSFQR2Ee548vTIOfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="44108294"
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="44108294"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 15:51:51 -0800
X-CSE-ConnectionGUID: YdIOPK/AQGW0qjCv1KVWug==
X-CSE-MsgGUID: 96wT6VuZQE+skIbvjNrXHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="92239622"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa008.jf.intel.com with ESMTP; 25 Nov 2024 15:51:50 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, michal.kubiak@intel.com,
 aleksander.lobakin@intel.com, madhu.chittim@intel.com,
 netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>
Date: Mon, 25 Nov 2024 15:58:53 -0800
Message-Id: <20241125235855.64850-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732578713; x=1764114713;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vkih/UZod11dYlMo8JC2SR5Tm5sdnhTeyfXh3OixoCo=;
 b=kUDfde6Y5e9TqbJPGrVqlfU0pMQjMucqo5OUrC3O7VE5Y1TC0nVxIw3d
 LZUH0EOj38+V1HEhfgTg434SlU/PvuKtVMgMb0Iuqng17YmgUu4eSTJnc
 vRiIq7qWEfnMAacklrsy1RIE8MBJBAvYQCDv0ELO6MPB4fd8MxCbYwJPv
 t1ikhxa1rBP6YduApp9D7RnCAI+vOTrzBxg171BGtZCEVpF/UMevKkyrb
 HKiSGj07qs4cJkNSV8itNcLQEeAw99Gg96FBwJDpT6RJcZ+RpmwDcIEcJ
 mtQvnEV0t0lnWn10VoyI387Cj+M0pZw1ydEOCrBVMUXdoeR9m31BL9MiL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kUDfde6Y
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] idpf: trigger SW interrupt
 when exiting wb_on_itr mode
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

This patch series introduces SW triggered interrupt support for idpf,
then uses said interrupt to fix a race condition between completion
writebacks and re-enabling interrupts.

Joshua Hay (2):
  idpf: add support for SW triggered interrupts
  idpf: trigger SW interrupt when exiting wb_on_itr mode

 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  3 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 30 ++++++++++++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ++++-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  3 ++
 4 files changed, 33 insertions(+), 11 deletions(-)

-- 
2.39.2

