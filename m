Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9F7B1BAE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 12:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1AC48827F;
	Fri, 13 Sep 2019 10:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8guo364IecB; Fri, 13 Sep 2019 10:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 423A48826F;
	Fri, 13 Sep 2019 10:42:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B6231BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5713C2010D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1o2lu9MvjVg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2019 10:42:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 59C4620107
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 03:42:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="187784045"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.223.65])
 by orsmga003.jf.intel.com with ESMTP; 13 Sep 2019 03:42:17 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Fri, 13 Sep 2019 10:39:45 +0000
Message-Id: <20190913103948.32053-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH bpf-next v2 0/3] AF_XDP fixes for i40e,
 ixgbe and xdpsock
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ciara Loftus <ciara.loftus@intel.com>,
 kevin.laatz@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set contains some fixes for AF_XDP zero copy in the i40e and
ixgbe drivers as well as a fix for the 'xdpsock' sample application when
running in unaligned mode.

Patches 1 and 2 fix a regression for the i40e and ixgbe drivers which
caused the umem headroom to be added to the xdp handle twice, resulting in
an incorrect value being received by the user for the case where the umem
headroom is non-zero.

Patch 3 fixes an issue with the xdpsock sample application whereby the
start of the tx packet data (offset) was not being set correctly when the
application was being run in unaligned mode.

This patch set has been applied against commit a2c11b034142 ("kcm: use
BPF_PROG_RUN")

---
v2:
- Rearranged local variable order in i40e_run_xdp_zc and ixgbe_run_xdp_zc
to comply with coding standards.

Ciara Loftus (3):
  i40e: fix xdp handle calculations
  ixgbe: fix xdp handle calculations
  samples/bpf: fix xdpsock l2fwd tx for unaligned mode

 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 ++--
 samples/bpf/xdpsock_user.c                   | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
