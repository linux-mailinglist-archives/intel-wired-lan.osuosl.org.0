Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E438700B3C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9D1742A8E;
	Fri, 12 May 2023 15:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9D1742A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904789;
	bh=HM0UiDJGjbwR5d5Qgxrn79EikQ2dwyEINKxzWOgZ/dQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=chYY2Z8ER1Ckp/aLsMOz9Hvcpwcte4RJdnQl6awXYEEXvlrBpDrycWuKmWi7opsnT
	 C+mx8Zh5jczSYJY2CNzQ27oO+Q+kqHYu0n+d4gMxAKAa0qBcGSeUmUC4qdE3yYBWPR
	 2M/+XUbWyNY6XBKOvAkF4wahLa2z3h+srPX52dq0sbkG4GcS02dXrkhEm+QOdz/F/2
	 QtVO1k8J7GkyUUluYP/jNKwTINlsMZ44ijS08CDFkko6qXM+2xIeWhpe4kZQJpn2il
	 5o6AZ7V1XFt2M5RGVr4ohRKGaGVYLu/PFXJejh9EVWUbvObk3aPJ6QbjpVdy4D6W8W
	 HWA/89TsVtTuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t6tNQYvEWr3S; Fri, 12 May 2023 15:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65D4242A8C;
	Fri, 12 May 2023 15:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65D4242A8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E3731BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C728414F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C728414F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebAAbtATCKO1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C31784018B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C31784018B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:19:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349651131"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349651131"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030118846"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030118846"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:19:35 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2306C35FB7;
 Fri, 12 May 2023 16:19:34 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:24 +0200
Message-Id: <20230512151639.992033-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904781; x=1715440781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AEHmn3N8eoQi8YuZE7vwKcyyiqTTaYlvbYO6EcoCop8=;
 b=WFEy9yqrQpncjAqwMNQSXsPIwGfRwiedwaMMxFtVwEfig5IDJJztqcTy
 vXMvfxVbU5xAKRqRkk+eU3e/aS1nRWN3tceYuL5k3EHFQ2DDPsjJRdWHI
 d87xOSz8hoslAfBadfOwpCUomf0A83MSoV3jYwzAYzx/GZcu3FopakFvu
 A42hp5XSl6qrb5p6bA4gJlAdlM9g1MQu7uyPEGb/kjYzJw16mT+ho5MS3
 QOMOzVqM5MMzVHn4QlL2DMbtn67LvrB9leC4LqbqnnKyH/5jTRFw+gAK6
 TnYP7cDvtNSvT4yx9ueNd55mDZCWcCXyzXq9odKKGXrp/yN9hyBiPs5Pd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WFEy9yqr
Subject: [Intel-wired-lan] [PATCH bpf-next 00/15] new kfunc XDP hints and
 ice implementation
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series introduces XDP hints support into ice driver and adds new kfunc
hints that utilize hardware capabilities.

- patches 01-04 refactors driver descriptor to skb fields processing code,
  making it more reusable without changing any behavior.

- patches 05-08 add support add support for existing hints (timestamp and 
  hash) in ice driver.

- patches 09-12 introduce new kfunc hints, namely 2 VLAN tag hints 
  (ctag & stag separately) and "checksum level", which is basically
  a CHECKSUM_UNNECESSARY indicator. Then those hints are implemented in
  ice driver.

- patches 13-15 adjust xdp_hw_metadata to account for new hints.

- in particular, patch 14 lifts the limitation on data_meta size to be
  32 or lower, because all the information that needs to be passed into
  AF_XDP from XDP in xdp_hw_metadata no longer fits into 32 bytes.

Aleksander Lobakin (1):
  net, xdp: allow metadata > 32

Larysa Zaremba (14):
  ice: make RX hash reading code more reusable
  ice: make RX HW timestamp reading code more reusable
  ice: make RX checksum checking code more reusable
  ice: Make ptype internal to descriptor info processing
  ice: Introduce ice_xdp_buff
  ice: Support HW timestamp hint
  ice: Support RX hash XDP hint
  ice: Support XDP hints in AF_XDP ZC mode
  xdp: Add VLAN tag hint
  ice: Implement VLAN tag hint
  xdp: Add checksum level hint
  ice: Implement checksum level hint
  selftests/bpf: Allow VLAN packets in xdp_hw_metadata
  selftests/bpf: Add flags and new hints to xdp_hw_metadata

 Documentation/networking/xdp-rx-metadata.rst  |  14 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 412 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  13 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  23 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 311 +++++++++++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  13 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  16 +-
 include/linux/netdevice.h                     |   3 +
 include/linux/skbuff.h                        |  13 +-
 include/net/xdp.h                             |  16 +-
 kernel/bpf/offload.c                          |   6 +
 net/core/xdp.c                                |  36 ++
 .../selftests/bpf/progs/xdp_hw_metadata.c     |  49 ++-
 tools/testing/selftests/bpf/xdp_hw_metadata.c |  29 +-
 tools/testing/selftests/bpf/xdp_metadata.h    |  36 +-
 19 files changed, 738 insertions(+), 296 deletions(-)

-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
