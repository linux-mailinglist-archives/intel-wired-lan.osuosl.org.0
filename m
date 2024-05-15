Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 457138C6A32
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 18:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D4668179A;
	Wed, 15 May 2024 16:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OxFiXgSXNyzR; Wed, 15 May 2024 16:09:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A74E81769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715789359;
	bh=nHwGMG/8e1jPWhLwRQQcBFDB70Kfbdd4OpVrbmWB7bQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J4ttCJiDME5ZQG+GMQX5sSSI/+S5/4G/SnH0SbwtvTwbHP4l67Gjbm51FHF7CVm1w
	 GYYoL0hV49kVuGEGbwuuTm6SIEqspPf+0GnKPlBlQMqg/uGGAoArXktiTbL1QYEG/3
	 8Bj8Q6UpGA2ipknQBYjBGlTfyC/Gi11rYBtYxJW2HUwy/zwgyA9o/2e+Q/rPZNZuhm
	 B78QkgnqH0ymBgkPLbDRlj9yu3OJl01QdsehMx2SU96qFBlGixY+9lpDueGCrBTyeK
	 fJVaf3sGSeXk4iLD5WSqRwR322KTBYpOrgov3fRcqjtZk8kpEi8Un8ySBMA6daroz6
	 FVSc4Vm39tu5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A74E81769;
	Wed, 15 May 2024 16:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D1591BF396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 461718179A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Xs7dNruFFh3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 16:09:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7C1BE816F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C1BE816F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C1BE816F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 16:09:15 +0000 (UTC)
X-CSE-ConnectionGUID: 1YgG36lYSmWXewJJy2G31w==
X-CSE-MsgGUID: wfc1JPDiQMSyAlQXbGjLuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11666348"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="11666348"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:09:15 -0700
X-CSE-ConnectionGUID: GANiKUvAR7uiRZ8GlOHq8g==
X-CSE-MsgGUID: 72pTt72QRii18KEvAsm9hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="62297177"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 15 May 2024 09:09:11 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3DA332878C;
 Wed, 15 May 2024 17:09:05 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 15 May 2024 18:02:13 +0200
Message-ID: <20240515160246.5181-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715789356; x=1747325356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nTVevPGzNWh4s9PReJpsEP/R9Arj6uGdwElEHpIpPH4=;
 b=n6NR1mc+iJMElevA92dvPV+cMFuEmxJqIHsp5v2YpBHo86XxOWEWh8Oh
 haohwcXGHQqDT1VtODWIM7cusR4HcfLeve52HHJDOiHDguLGSlwdGfMN2
 q1rVmnPkglf19obkOvfX9Rittzis9SG3SDyucUDBK2k/8H0Ywms4N2ERS
 uKiHl2GUKhwNALjyH1fddNVVc20f4GDcPhxoRXabolN2XEJGMbccR5ouc
 pCTUwnxSzs5mzBNV5i9N6QDbbwXhOaqsPwmMNGL6lD+Oqd1U3DMrTMxFg
 RDGOpYCIjTSXHQu1hriKjV1oeupZn+aGRgwYoUOQyjlE5CKNIBjpllN7a
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n6NR1mc+
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix AF_XDP problems after
 changing queue number
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Magnus Karlsson <magnus.karlsson@gmail.com>,
 igor.bagnucki@intel.com, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Presented fixes address the following test-case:
* Run xdpsock on queue 10
* change number of combined channels to 20
* observe an error on xdpsock side

The first 2 patches deal with errors, the last one addresses the lack of
traffic.

Larysa Zaremba (3):
  ice: remove af_xdp_zc_qps bitmap
  ice: add flag to distinguish reset from .ndo_bpf in XDP rings config
  ice: map XDP queues to vectors in ice_vsi_map_rings_to_vectors()

 drivers/net/ethernet/intel/ice/ice.h      |  44 +++++---
 drivers/net/ethernet/intel/ice/ice_base.c |   3 +
 drivers/net/ethernet/intel/ice/ice_lib.c  |  27 ++---
 drivers/net/ethernet/intel/ice/ice_main.c | 118 +++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_xsk.c  |  13 ++-
 5 files changed, 119 insertions(+), 86 deletions(-)

-- 
2.43.0

