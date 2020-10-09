Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB00289721
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:02:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E56A2E2A0;
	Fri,  9 Oct 2020 20:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e3eFTK9pJAzh; Fri,  9 Oct 2020 20:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3DF472E309;
	Fri,  9 Oct 2020 20:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2A3B1BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CC3F2E2E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkKv3jec-0vZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id BB27F2E2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:51 +0000 (UTC)
IronPort-SDR: 1SzgDJMn4WfDQ2HX3pK77QIjs68CGKMLlfcn45jLLwuvxouMVTyX1WtA+Tbk2XcBxanKPbdm4P
 wMPGDZCt4oiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="145397676"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="145397676"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:51 -0700
IronPort-SDR: V1KD7wTraPak1zxWaGCn8NDyAgfcS4zsKsBv4Z0vY7HUn25qjJm9u99gQjtiJGVT+R+oXmWyM0
 H2mADCd5/x5Q==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="462301148"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:50 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:50:27 -0700
Message-Id: <20201009195033.3208459-53-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:20 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 52/58] mm: Utilize new
 kmap_thread()
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
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ira Weiny <ira.weiny@intel.com>

These kmap() calls are localized to a single thread.  To avoid the over
head of global PKRS updates use the new kmap_thread() call.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 mm/memory.c      | 8 ++++----
 mm/swapfile.c    | 4 ++--
 mm/userfaultfd.c | 4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/mm/memory.c b/mm/memory.c
index fcfc4ca36eba..75a054882d7a 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -4945,7 +4945,7 @@ int __access_remote_vm(struct task_struct *tsk, struct mm_struct *mm,
 			if (bytes > PAGE_SIZE-offset)
 				bytes = PAGE_SIZE-offset;
 
-			maddr = kmap(page);
+			maddr = kmap_thread(page);
 			if (write) {
 				copy_to_user_page(vma, page, addr,
 						  maddr + offset, buf, bytes);
@@ -4954,7 +4954,7 @@ int __access_remote_vm(struct task_struct *tsk, struct mm_struct *mm,
 				copy_from_user_page(vma, page, addr,
 						    buf, maddr + offset, bytes);
 			}
-			kunmap(page);
+			kunmap_thread(page);
 			put_page(page);
 		}
 		len -= bytes;
@@ -5216,14 +5216,14 @@ long copy_huge_page_from_user(struct page *dst_page,
 
 	for (i = 0; i < pages_per_huge_page; i++) {
 		if (allow_pagefault)
-			page_kaddr = kmap(dst_page + i);
+			page_kaddr = kmap_thread(dst_page + i);
 		else
 			page_kaddr = kmap_atomic(dst_page + i);
 		rc = copy_from_user(page_kaddr,
 				(const void __user *)(src + i * PAGE_SIZE),
 				PAGE_SIZE);
 		if (allow_pagefault)
-			kunmap(dst_page + i);
+			kunmap_thread(dst_page + i);
 		else
 			kunmap_atomic(page_kaddr);
 
diff --git a/mm/swapfile.c b/mm/swapfile.c
index debc94155f74..e3296ff95648 100644
--- a/mm/swapfile.c
+++ b/mm/swapfile.c
@@ -3219,7 +3219,7 @@ SYSCALL_DEFINE2(swapon, const char __user *, specialfile, int, swap_flags)
 		error = PTR_ERR(page);
 		goto bad_swap_unlock_inode;
 	}
-	swap_header = kmap(page);
+	swap_header = kmap_thread(page);
 
 	maxpages = read_swap_header(p, swap_header, inode);
 	if (unlikely(!maxpages)) {
@@ -3395,7 +3395,7 @@ SYSCALL_DEFINE2(swapon, const char __user *, specialfile, int, swap_flags)
 		filp_close(swap_file, NULL);
 out:
 	if (page && !IS_ERR(page)) {
-		kunmap(page);
+		kunmap_thread(page);
 		put_page(page);
 	}
 	if (name)
diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
index 9a3d451402d7..4d38c881bb2d 100644
--- a/mm/userfaultfd.c
+++ b/mm/userfaultfd.c
@@ -586,11 +586,11 @@ static __always_inline ssize_t __mcopy_atomic(struct mm_struct *dst_mm,
 			mmap_read_unlock(dst_mm);
 			BUG_ON(!page);
 
-			page_kaddr = kmap(page);
+			page_kaddr = kmap_thread(page);
 			err = copy_from_user(page_kaddr,
 					     (const void __user *) src_addr,
 					     PAGE_SIZE);
-			kunmap(page);
+			kunmap_thread(page);
 			if (unlikely(err)) {
 				err = -EFAULT;
 				goto out;
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
