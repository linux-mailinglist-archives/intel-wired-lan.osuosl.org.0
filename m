Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FE72896EC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:01:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 591E7878DB;
	Fri,  9 Oct 2020 20:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sAxXrn7XqvZ3; Fri,  9 Oct 2020 20:01:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7650878DD;
	Fri,  9 Oct 2020 20:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 958DE1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8EF3E878A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1j3SVLaPmIzQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:53:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 928C2873F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:41 +0000 (UTC)
IronPort-SDR: FpXVEAu2GSfYAahL7l4SaFmLpabfX2GYOwA7sHw6S5udOjMZPLKNwTv7sGrz8jeFCDAryowbqM
 xLHK0EdmiNhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="229715363"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="229715363"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:41 -0700
IronPort-SDR: t/zSGeR++7wfj+VtFM7nhfyp5h0blfdWqDlNHnP/5jl48Bm08GFuTiLpDu6MwkEQ7bZpMY8SQr
 l7ztZVCdgy3g==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="419537249"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:40 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:50:24 -0700
Message-Id: <20201009195033.3208459-50-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:20 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 49/58] drivers/misc: Utilize
 new kmap_thread()
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
Cc: linux-aio@kvack.org, linux-efi@vger.kernel.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 samba-technical@lists.samba.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, linux-cachefs@redhat.com,
 intel-wired-lan@lists.osuosl.org, xen-devel@lists.xenproject.org,
 linux-ext4@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>,
 linux-um@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-bcache@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 io-uring@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ira Weiny <ira.weiny@intel.com>

These kmap() calls are localized to a single thread.  To avoid the over
head of global PKRS updates use the new kmap_thread() call.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 drivers/misc/vmw_vmci/vmci_queue_pair.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/misc/vmw_vmci/vmci_queue_pair.c b/drivers/misc/vmw_vmci/vmci_queue_pair.c
index 8531ae781195..f308abb8ad03 100644
--- a/drivers/misc/vmw_vmci/vmci_queue_pair.c
+++ b/drivers/misc/vmw_vmci/vmci_queue_pair.c
@@ -343,7 +343,7 @@ static int qp_memcpy_to_queue_iter(struct vmci_queue *queue,
 		size_t to_copy;
 
 		if (kernel_if->host)
-			va = kmap(kernel_if->u.h.page[page_index]);
+			va = kmap_thread(kernel_if->u.h.page[page_index]);
 		else
 			va = kernel_if->u.g.vas[page_index + 1];
 			/* Skip header. */
@@ -357,12 +357,12 @@ static int qp_memcpy_to_queue_iter(struct vmci_queue *queue,
 		if (!copy_from_iter_full((u8 *)va + page_offset, to_copy,
 					 from)) {
 			if (kernel_if->host)
-				kunmap(kernel_if->u.h.page[page_index]);
+				kunmap_thread(kernel_if->u.h.page[page_index]);
 			return VMCI_ERROR_INVALID_ARGS;
 		}
 		bytes_copied += to_copy;
 		if (kernel_if->host)
-			kunmap(kernel_if->u.h.page[page_index]);
+			kunmap_thread(kernel_if->u.h.page[page_index]);
 	}
 
 	return VMCI_SUCCESS;
@@ -391,7 +391,7 @@ static int qp_memcpy_from_queue_iter(struct iov_iter *to,
 		int err;
 
 		if (kernel_if->host)
-			va = kmap(kernel_if->u.h.page[page_index]);
+			va = kmap_thread(kernel_if->u.h.page[page_index]);
 		else
 			va = kernel_if->u.g.vas[page_index + 1];
 			/* Skip header. */
@@ -405,12 +405,12 @@ static int qp_memcpy_from_queue_iter(struct iov_iter *to,
 		err = copy_to_iter((u8 *)va + page_offset, to_copy, to);
 		if (err != to_copy) {
 			if (kernel_if->host)
-				kunmap(kernel_if->u.h.page[page_index]);
+				kunmap_thread(kernel_if->u.h.page[page_index]);
 			return VMCI_ERROR_INVALID_ARGS;
 		}
 		bytes_copied += to_copy;
 		if (kernel_if->host)
-			kunmap(kernel_if->u.h.page[page_index]);
+			kunmap_thread(kernel_if->u.h.page[page_index]);
 	}
 
 	return VMCI_SUCCESS;
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
