Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8715A80EECF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 15:30:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0654C415AB;
	Tue, 12 Dec 2023 14:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0654C415AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702391405;
	bh=KNk8KleBm+T0sYFWUn+sBgC/XCqLIWlYT7gstbz81rQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gDYHZVmHwLpXgcebfEacJichnvtgG6UdWo7uaw4x16KCMF1KJq/OUZQt6NV8ttgpZ
	 STWeYFHQqqgoUCjzwqyYgY6jDPMLycZuBOYwIb8b1qFwwHYgPh7hVKYbudAxtaeZ4h
	 Re7NTFIVxcyTNzI5EMIkRLWfnrCL7H0SAXo3nc4liTaOkC3sJ26601ysNx+q0b9bfi
	 b/svsHZT/dhqaUvGjV2XovXhDqcVuPNHWqw58kQvH3q8i6q1HHb0BRfDXGP3D/9AeO
	 uwWqf997PAp9DpFAa0F+4oyRLZZDaJFXYmEzl84zJ4CgnIyBodmyqkIfJGv6SER09L
	 Esf2qGEo5Iobw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4WASFN7iM2UM; Tue, 12 Dec 2023 14:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A0D2415C9;
	Tue, 12 Dec 2023 14:30:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0D2415C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 243C81BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECCE28289B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECCE28289B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ts56rp1uK2Cj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 14:29:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E03882798
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 14:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E03882798
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1887335"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; 
   d="scan'208";a="1887335"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 06:29:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1104923742"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="1104923742"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2023 06:29:44 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 12 Dec 2023 15:27:50 +0100
Message-ID: <20231212142752.935000-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702391397; x=1733927397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xv2qt7/sAoWAEZQgV2h0LqG0rMAj+aEH2dHkRRXSC5I=;
 b=DOUTdOEZy4smowu2+TUTn+AziuDDI2TMKjGsMMj8Xmk8/7koNPkOjxJv
 GRu99wCgkY9F0TDfSBkI/uHdy9PQRiAwGgou4YWkZosahpIWzfTNp+3Xc
 PCYjTfIs5UQiYPBQRg1wFcBahrD/oko6ssaJjaSBZB42Nf+UDP3SrFdw7
 T7DtqBaEfqS+PlWlFVsRXiRZl+GHVMld7HF3hFNWO6BDtpGMNLwq+syTF
 b67pdRGoLuD4XuwpFVmThAzFaAzMxHcN6CMsbIzD3NEobeuoG2Fj7uV6D
 Te6dy4zAt1Pj9B+56yGHoez3A5tifii/KA0Iy5f5RQU+8qxQMLoGLhFOC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DOUTdOEZ
Subject: [Intel-wired-lan] [PATCH net-next 0/2] idpf: add get/set for
 Ethtool's header split ringparam
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Andrew Lunn <andrew@lunn.ch>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the header split feature (putting headers in one smaller
buffer and then the data in a separate bigger one) is always enabled
in idpf when supported.
One may want to not have fragmented frames per each packet, for example,
to avoid XDP frags. To better optimize setups for particular workloads,
add ability to switch the header split state on and off via Ethtool's
ringparams, as well as to query the current status.
There's currently only GET in the Ethtool Netlink interface for now,
so add SET first. I suspect idpf is not the only one supporting this.

Alexander Lobakin (1):
  ethtool: add SET for TCP_DATA_SPLIT ringparam

Michal Kubiak (1):
  idpf: add get/set for Ethtool's header split ringparam

 drivers/net/ethernet/intel/idpf/idpf.h        |  7 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 11 ++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 65 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 12 ++--
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  2 +
 include/linux/ethtool.h                       |  2 +
 net/ethtool/rings.c                           | 12 ++++
 7 files changed, 104 insertions(+), 7 deletions(-)

-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
