Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 904632896B4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42CAE878A9;
	Fri,  9 Oct 2020 20:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gju49PAyYT5v; Fri,  9 Oct 2020 20:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C83DD878B5;
	Fri,  9 Oct 2020 20:01:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 365381BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3267786FC5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI9aUr53MNJg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7001586C29
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:51 +0000 (UTC)
IronPort-SDR: 0LpYupgAWkthe0p9BngFFHyOa6IBa0iDfLpRzjs7XpEYxoq1DtHz6zy5+CibQ3LundN+qTH3Pw
 cUQQzqA1SICw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="153363466"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="153363466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:47 -0700
IronPort-SDR: vdHXKYZiEWUJ0fN4OExd2VqdiXE9aYdlaLF6p7mD2X3g24JwvvcNWIkVlfM1uW7/GA3kn+ap6+
 Rex2Wyxl2AaA==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="298531066"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:47 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:49:52 -0700
Message-Id: <20201009195033.3208459-18-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:19 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 17/58] fs/nilfs2: Utilize new
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
 amd-gfx@lists.freedesktop.org, io-uring@vger.kernel.org,
 cluster-devel@redhat.com, linux-cachefs@redhat.com,
 intel-wired-lan@lists.osuosl.org, xen-devel@lists.xenproject.org,
 linux-ext4@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>,
 linux-afs@lists.infradead.org, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>, linux-nfs@vger.kernel.org,
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

The kmap() calls in this FS are localized to a single thread.  To avoid
the over head of global PKRS updates use the new kmap_thread() call.

Cc: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/nilfs2/alloc.c  | 34 +++++++++++++++++-----------------
 fs/nilfs2/cpfile.c |  4 ++--
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/fs/nilfs2/alloc.c b/fs/nilfs2/alloc.c
index adf3bb0a8048..2aa4c34094ef 100644
--- a/fs/nilfs2/alloc.c
+++ b/fs/nilfs2/alloc.c
@@ -524,7 +524,7 @@ int nilfs_palloc_prepare_alloc_entry(struct inode *inode,
 		ret = nilfs_palloc_get_desc_block(inode, group, 1, &desc_bh);
 		if (ret < 0)
 			return ret;
-		desc_kaddr = kmap(desc_bh->b_page);
+		desc_kaddr = kmap_thread(desc_bh->b_page);
 		desc = nilfs_palloc_block_get_group_desc(
 			inode, group, desc_bh, desc_kaddr);
 		n = nilfs_palloc_rest_groups_in_desc_block(inode, group,
@@ -536,7 +536,7 @@ int nilfs_palloc_prepare_alloc_entry(struct inode *inode,
 					inode, group, 1, &bitmap_bh);
 				if (ret < 0)
 					goto out_desc;
-				bitmap_kaddr = kmap(bitmap_bh->b_page);
+				bitmap_kaddr = kmap_thread(bitmap_bh->b_page);
 				bitmap = bitmap_kaddr + bh_offset(bitmap_bh);
 				pos = nilfs_palloc_find_available_slot(
 					bitmap, group_offset,
@@ -547,21 +547,21 @@ int nilfs_palloc_prepare_alloc_entry(struct inode *inode,
 						desc, lock, -1);
 					req->pr_entry_nr =
 						entries_per_group * group + pos;
-					kunmap(desc_bh->b_page);
-					kunmap(bitmap_bh->b_page);
+					kunmap_thread(desc_bh->b_page);
+					kunmap_thread(bitmap_bh->b_page);
 
 					req->pr_desc_bh = desc_bh;
 					req->pr_bitmap_bh = bitmap_bh;
 					return 0;
 				}
-				kunmap(bitmap_bh->b_page);
+				kunmap_thread(bitmap_bh->b_page);
 				brelse(bitmap_bh);
 			}
 
 			group_offset = 0;
 		}
 
-		kunmap(desc_bh->b_page);
+		kunmap_thread(desc_bh->b_page);
 		brelse(desc_bh);
 	}
 
@@ -569,7 +569,7 @@ int nilfs_palloc_prepare_alloc_entry(struct inode *inode,
 	return -ENOSPC;
 
  out_desc:
-	kunmap(desc_bh->b_page);
+	kunmap_thread(desc_bh->b_page);
 	brelse(desc_bh);
 	return ret;
 }
@@ -605,10 +605,10 @@ void nilfs_palloc_commit_free_entry(struct inode *inode,
 	spinlock_t *lock;
 
 	group = nilfs_palloc_group(inode, req->pr_entry_nr, &group_offset);
-	desc_kaddr = kmap(req->pr_desc_bh->b_page);
+	desc_kaddr = kmap_thread(req->pr_desc_bh->b_page);
 	desc = nilfs_palloc_block_get_group_desc(inode, group,
 						 req->pr_desc_bh, desc_kaddr);
-	bitmap_kaddr = kmap(req->pr_bitmap_bh->b_page);
+	bitmap_kaddr = kmap_thread(req->pr_bitmap_bh->b_page);
 	bitmap = bitmap_kaddr + bh_offset(req->pr_bitmap_bh);
 	lock = nilfs_mdt_bgl_lock(inode, group);
 
@@ -620,8 +620,8 @@ void nilfs_palloc_commit_free_entry(struct inode *inode,
 	else
 		nilfs_palloc_group_desc_add_entries(desc, lock, 1);
 
-	kunmap(req->pr_bitmap_bh->b_page);
-	kunmap(req->pr_desc_bh->b_page);
+	kunmap_thread(req->pr_bitmap_bh->b_page);
+	kunmap_thread(req->pr_desc_bh->b_page);
 
 	mark_buffer_dirty(req->pr_desc_bh);
 	mark_buffer_dirty(req->pr_bitmap_bh);
@@ -646,10 +646,10 @@ void nilfs_palloc_abort_alloc_entry(struct inode *inode,
 	spinlock_t *lock;
 
 	group = nilfs_palloc_group(inode, req->pr_entry_nr, &group_offset);
-	desc_kaddr = kmap(req->pr_desc_bh->b_page);
+	desc_kaddr = kmap_thread(req->pr_desc_bh->b_page);
 	desc = nilfs_palloc_block_get_group_desc(inode, group,
 						 req->pr_desc_bh, desc_kaddr);
-	bitmap_kaddr = kmap(req->pr_bitmap_bh->b_page);
+	bitmap_kaddr = kmap_thread(req->pr_bitmap_bh->b_page);
 	bitmap = bitmap_kaddr + bh_offset(req->pr_bitmap_bh);
 	lock = nilfs_mdt_bgl_lock(inode, group);
 
@@ -661,8 +661,8 @@ void nilfs_palloc_abort_alloc_entry(struct inode *inode,
 	else
 		nilfs_palloc_group_desc_add_entries(desc, lock, 1);
 
-	kunmap(req->pr_bitmap_bh->b_page);
-	kunmap(req->pr_desc_bh->b_page);
+	kunmap_thread(req->pr_bitmap_bh->b_page);
+	kunmap_thread(req->pr_desc_bh->b_page);
 
 	brelse(req->pr_bitmap_bh);
 	brelse(req->pr_desc_bh);
@@ -754,7 +754,7 @@ int nilfs_palloc_freev(struct inode *inode, __u64 *entry_nrs, size_t nitems)
 		/* Get the first entry number of the group */
 		group_min_nr = (__u64)group * epg;
 
-		bitmap_kaddr = kmap(bitmap_bh->b_page);
+		bitmap_kaddr = kmap_thread(bitmap_bh->b_page);
 		bitmap = bitmap_kaddr + bh_offset(bitmap_bh);
 		lock = nilfs_mdt_bgl_lock(inode, group);
 
@@ -800,7 +800,7 @@ int nilfs_palloc_freev(struct inode *inode, __u64 *entry_nrs, size_t nitems)
 			entry_start = rounddown(group_offset, epb);
 		} while (true);
 
-		kunmap(bitmap_bh->b_page);
+		kunmap_thread(bitmap_bh->b_page);
 		mark_buffer_dirty(bitmap_bh);
 		brelse(bitmap_bh);
 
diff --git a/fs/nilfs2/cpfile.c b/fs/nilfs2/cpfile.c
index 86d4d850d130..402ab8bfce29 100644
--- a/fs/nilfs2/cpfile.c
+++ b/fs/nilfs2/cpfile.c
@@ -235,11 +235,11 @@ int nilfs_cpfile_get_checkpoint(struct inode *cpfile,
 	ret = nilfs_cpfile_get_checkpoint_block(cpfile, cno, create, &cp_bh);
 	if (ret < 0)
 		goto out_header;
-	kaddr = kmap(cp_bh->b_page);
+	kaddr = kmap_thread(cp_bh->b_page);
 	cp = nilfs_cpfile_block_get_checkpoint(cpfile, cno, cp_bh, kaddr);
 	if (nilfs_checkpoint_invalid(cp)) {
 		if (!create) {
-			kunmap(cp_bh->b_page);
+			kunmap_thread(cp_bh->b_page);
 			brelse(cp_bh);
 			ret = -ENOENT;
 			goto out_header;
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
