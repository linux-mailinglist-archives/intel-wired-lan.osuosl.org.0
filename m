Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE5A6A73A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2019 13:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6224921537;
	Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eli59ttt2lsR; Tue, 16 Jul 2019 11:21:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E139204B6;
	Tue, 16 Jul 2019 11:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7911BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8913E85CA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TkIxo4dMDY87 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2019 11:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3F8C85BD5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2019 11:21:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 04:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="366631399"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.10])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jul 2019 04:21:44 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com
Date: Tue, 16 Jul 2019 03:06:27 +0000
Message-Id: <20190716030637.5634-1-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620090958.2135-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
Subject: [Intel-wired-lan] [PATCH v2 00/10] XDP unaligned chunk placement
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
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set adds the ability to use unaligned chunks in the XDP umem.

Currently, all chunk addresses passed to the umem are masked to be chunk
size aligned (default is 2k, max is PAGE_SIZE). This limits where we can
place chunks within the umem as well as limiting the packet sizes that are
supported.

The changes in this patch set removes these restrictions, allowing XDP to
be more flexible in where it can place a chunk within a umem. By relaxing
where the chunks can be placed, it allows us to use an arbitrary buffer
size and place that wherever we have a free address in the umem. These
changes add the ability to support arbitrary frame sizes up to 4k
(PAGE_SIZE) and make it easy to integrate with other existing frameworks
that have their own memory management systems, such as DPDK.

Since we are now dealing with arbitrary frame sizes, we need also need to
update how we pass around addresses. Currently, the addresses can simply be
masked to 2k to get back to the original address. This becomes less trivial
when using frame sizes that are not a 'power of 2' size. This patch set
modifies the Rx/Tx descriptor format to use the upper 16-bits of the addr
field for an offset value, leaving the lower 48-bits for the address (this
leaves us with 256 Terabytes, which should be enough!). We only need to use
the upper 16-bits to store the offset when running in unaligned mode.
Rather than adding the offset (headroom etc) to the address, we will store
it in the upper 16-bits of the address field. This way, we can easily add
the offset to the address where we need it, using some bit manipulation and
addition, and we can also easily get the original address wherever we need
it (for example in i40e_zca_free) by simply masking to get the lower
48-bits of the address field.

The numbers below were recorded with the following set up:
  - Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz
  - Intel Corporation Ethernet Controller XXV710 for 25GbE SFP28 (rev 02)
  - Driver: i40e
  - Application: xdpsock with l2fwd (single interface)

These are solely for comparing performance with and without the patches.
The largest drop was ~1% (in zero-copy mode).

+-------------------------+------------+-----------------+-------------+
| Buffer size: 2048       | SKB mode   | Zero-copy       | Copy        |
+-------------------------+------------+-----------------+-------------+
| Aligned (baseline)      | 1.7 Mpps   | 15.3 Mpps       | 2.08 Mpps   |
+-------------------------+------------+-----------------+-------------+
| Aligned (with patches)  | 1.7 Mpps   | 15.1 Mpps       | 2.08 Mpps   |
+-------------------------+------------+-----------------+-------------+
| Unaligned               | 1.7 Mpps   | 14.5 Mpps       | 2.08 Mpps   |
+-------------------------+------------+-----------------+-------------+ 

NOTE: We are currently working on the changes required in the Mellanox
driver. We will include these in the v3.

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
  - Add infrastructure for unaligned chunks. Since we are dealing with
    unaligned chunks that could potentially cross a physical page boundary,
    we add checks to keep track of that information. We can later use this
    information to correctly handle buffers that are placed at an address
    where they cross a page boundary.  This patch also modifies the
    existing Rx and Tx functions to use the new descriptor format. To
    handle addresses correctly, we need to mask appropriately based on
    whether we are in aligned or unaligned mode.

Patch 4:
  - This patch updates the i40e driver to make use of the new descriptor
    format. The new format is particularly useful here since we can now
    retrieve the original address in places like i40e_zca_free with ease.
    This saves us doing various calculations to get the original address
    back.

Patch 5:
  - This patch updates the ixgbe driver to make use of the new descriptor
    format. The new format is particularly useful here since we can now
    retrieve the original address in places like ixgbe_zca_free with ease.
    This saves us doing various calculations to get the original address
    back.

Patch 6:
  - Add flags for umem configuration to libbpf

Patch 7:
  - Modify xdpsock application to add a command line option for
    unaligned chunks

Patch 8:
  - Since we can now run the application in unaligned chunk mode, we need
    to make sure we recycle the buffers appropriately.

Patch 9:
  - Adds hugepage support to the xdpsock application

Patch 10:
  - Documentation update to include the unaligned chunk scenario. We need
    to explicitly state that the incoming addresses are only masked in the
    aligned chunk mode and not the unaligned chunk mode.

---
v2:
  - fixed checkpatch issues
  - fixed Rx buffer recycling for unaligned chunks in xdpsock
  - removed unused defines
  - fixed how chunk_size is calculated in xsk_diag.c
  - added some performance numbers to cover letter
  - modified descriptor format to make it easier to retrieve original
    address
  - removed patch adding off_t off to the zero copy allocator. This is no
    longer needed with the new descriptor format.

Kevin Laatz (10):
  i40e: simplify Rx buffer recycle
  ixgbe: simplify Rx buffer recycle
  xsk: add support to allow unaligned chunk placement
  i40e: modify driver for handling offsets
  ixgbe: modify driver for handling offsets
  libbpf: add flags to umem config
  samples/bpf: add unaligned chunks mode support to xdpsock
  samples/bpf: add buffer recycling for unaligned chunks to xdpsock
  samples/bpf: use hugepages in xdpsock app
  doc/af_xdp: include unaligned chunk case

 Documentation/networking/af_xdp.rst          | 10 ++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 39 +++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 39 +++++----
 include/net/xdp_sock.h                       |  2 +
 include/uapi/linux/if_xdp.h                  |  9 ++
 net/xdp/xdp_umem.c                           | 17 ++--
 net/xdp/xsk.c                                | 89 ++++++++++++++++----
 net/xdp/xsk_diag.c                           |  2 +-
 net/xdp/xsk_queue.h                          | 70 +++++++++++++--
 samples/bpf/xdpsock_user.c                   | 61 ++++++++++----
 tools/include/uapi/linux/if_xdp.h            |  4 +
 tools/lib/bpf/xsk.c                          |  3 +
 tools/lib/bpf/xsk.h                          |  2 +
 13 files changed, 266 insertions(+), 81 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
