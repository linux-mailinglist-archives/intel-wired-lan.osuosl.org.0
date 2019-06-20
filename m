Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B514DD78
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FAC182752;
	Thu, 20 Jun 2019 22:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOIMEXDmAcLX; Thu, 20 Jun 2019 22:52:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE26D869B6;
	Thu, 20 Jun 2019 22:52:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D753E1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D31BF20770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djmalg7HnvDZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D2C1A20389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:53:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:53:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135101"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:53:42 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:13 +0000
Message-Id: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset adds the ability to use unaligned chunks in the XDP umem.

Currently, all chunk addresses passed to the umem are masked to be chunk
size aligned (default is 2k, max is PAGE_SIZE). This limits where we can
place chunks within the umem as well as limiting the packet sizes that are
supported.

The changes in this patchset removes these restrictions, allowing XDP to be
more flexible in where it can place a chunk within a umem. By relaxing where
the chunks can be placed, it allows us to use an arbitrary buffer size and
place that wherever we have a free address in the umem. These changes add the
ability to support jumboframes and make it easy to integrate with other
existing frameworks that have their own memory management systems, such as
DPDK.

Structure of the patchset:
Patch 1:
  - Remove unnecessary masking and headroom addition during zero-copy Rx
    buffer recycling in i40e. This change is required in order for the
    buffer recycling to work in the unaligned chunk mode.

Patch 2:
  - Remove unnecessary masking and headroom addition during
    zero-copy Rx buffer recycling in ixgbe. This change is required in
    order for the  buffer recycling to work in the unaligned chunk mode.

Patch 3:
  - Adds an offset parameter to zero_copy_allocator. This change will
    enable us to calculate the original handle in zca_free. This will be
    required for unaligned chunk mode since we can't easily mask back to
    the original handle.

Patch 4:
  - Adds the offset parameter to i40e_zca_free. This change is needed for
    calculating the handle since we can't easily mask back to the original
    handle like we can in the aligned case.

Patch 5:
  - Adds the offset parameter to ixgbe_zca_free. This change is needed for
    calculating the handle since we can't easily mask back to the original
    handle like we can in the aligned case.


Patch 6:
  - Add infrastructure for unaligned chunks. Since we are dealing
    with unaligned chunks that could potentially cross a physical page
    boundary, we add checks to keep track of that information. We can
    later use this information to correctly handle buffers that are
    placed at an address where they cross a page boundary.

Patch 7:
  - Add flags for umem configuration to libbpf

Patch 8:
  - Modify xdpsock application to add a command line option for
    unaligned chunks

Patch 9:
  - Addition of command line argument to pass in a desired buffer size
    and buffer recycling for unaligned mode. Passing in a buffer size will
    allow the application to use unaligned chunks with the unaligned chunk
    mode. Since we are now using unaligned chunks, we need to recycle our
    buffers in a slightly different way.

Patch 10:
  - Adds hugepage support to the xdpsock application

Patch 11:
  - Documentation update to include the unaligned chunk scenario. We need
    to explicitly state that the incoming addresses are only masked in the
    aligned chunk mode and not the unaligned chunk mode.

Kevin Laatz (11):
  i40e: simplify Rx buffer recycle
  ixgbe: simplify Rx buffer recycle
  xdp: add offset param to zero_copy_allocator
  i40e: add offset to zca_free
  ixgbe: add offset to zca_free
  xsk: add support to allow unaligned chunk placement
  libbpf: add flags to umem config
  samples/bpf: add unaligned chunks mode support to xdpsock
  samples/bpf: add buffer recycling for unaligned chunks to xdpsock
  samples/bpf: use hugepages in xdpsock app
  doc/af_xdp: include unaligned chunk case

 Documentation/networking/af_xdp.rst           | 10 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 21 ++--
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  3 +-
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |  3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 21 ++--
 include/net/xdp.h                             |  3 +-
 include/net/xdp_sock.h                        |  2 +
 include/uapi/linux/if_xdp.h                   |  4 +
 net/core/xdp.c                                | 11 ++-
 net/xdp/xdp_umem.c                            | 17 ++--
 net/xdp/xsk.c                                 | 60 +++++++++--
 net/xdp/xsk_queue.h                           | 60 +++++++++--
 samples/bpf/xdpsock_user.c                    | 99 ++++++++++++++-----
 tools/include/uapi/linux/if_xdp.h             |  4 +
 tools/lib/bpf/xsk.c                           |  7 ++
 tools/lib/bpf/xsk.h                           |  2 +
 16 files changed, 241 insertions(+), 86 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
