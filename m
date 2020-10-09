Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A43D2896D8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62D112E2FE;
	Fri,  9 Oct 2020 20:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dxx+OB9zEiD2; Fri,  9 Oct 2020 20:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA29F2E2D9;
	Fri,  9 Oct 2020 20:01:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EB0A1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 48E4487726
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QFhmvqG1QkV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:51:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A341687636
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:51:39 +0000 (UTC)
IronPort-SDR: o4TAtrzRsvAzIDPL/xmJMNgPHpll5EkQ84sM/Dgm4uTYGSoYPd4cm2Z1fIxqh5D7wWt3PqFtpW
 TenKvfjIEL6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165592103"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="165592103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:39 -0700
IronPort-SDR: 6nDyG/rNIU8VCp7PRxt8N7VM6Ts7FaR6Cq3BMAOPdzxAbIieQhQY1hWISzmf8TSYIGXE2cP/wS
 1DDas2UbMNkw==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="345147432"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:37 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:49:49 -0700
Message-Id: <20201009195033.3208459-15-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:19 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 14/58] fs/cifs: Utilize new
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
 linux-f2fs-devel@lists.sourceforge.net, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ira Weiny <ira.weiny@intel.com>

The kmap() calls in this FS are localized to a single thread.  To avoid
the over head of global PKRS updates use the new kmap_thread() call.

Cc: Steve French <sfrench@samba.org>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/cifs/cifsencrypt.c |  6 +++---
 fs/cifs/file.c        | 16 ++++++++--------
 fs/cifs/smb2ops.c     |  8 ++++----
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/fs/cifs/cifsencrypt.c b/fs/cifs/cifsencrypt.c
index 9daa256f69d4..2f8232d01a56 100644
--- a/fs/cifs/cifsencrypt.c
+++ b/fs/cifs/cifsencrypt.c
@@ -82,17 +82,17 @@ int __cifs_calc_signature(struct smb_rqst *rqst,
 
 		rqst_page_get_length(rqst, i, &len, &offset);
 
-		kaddr = (char *) kmap(rqst->rq_pages[i]) + offset;
+		kaddr = (char *) kmap_thread(rqst->rq_pages[i]) + offset;
 
 		rc = crypto_shash_update(shash, kaddr, len);
 		if (rc) {
 			cifs_dbg(VFS, "%s: Could not update with payload\n",
 				 __func__);
-			kunmap(rqst->rq_pages[i]);
+			kunmap_thread(rqst->rq_pages[i]);
 			return rc;
 		}
 
-		kunmap(rqst->rq_pages[i]);
+		kunmap_thread(rqst->rq_pages[i]);
 	}
 
 	rc = crypto_shash_final(shash, signature);
diff --git a/fs/cifs/file.c b/fs/cifs/file.c
index be46fab4c96d..6db2caab8852 100644
--- a/fs/cifs/file.c
+++ b/fs/cifs/file.c
@@ -2145,17 +2145,17 @@ static int cifs_partialpagewrite(struct page *page, unsigned from, unsigned to)
 	inode = page->mapping->host;
 
 	offset += (loff_t)from;
-	write_data = kmap(page);
+	write_data = kmap_thread(page);
 	write_data += from;
 
 	if ((to > PAGE_SIZE) || (from > to)) {
-		kunmap(page);
+		kunmap_thread(page);
 		return -EIO;
 	}
 
 	/* racing with truncate? */
 	if (offset > mapping->host->i_size) {
-		kunmap(page);
+		kunmap_thread(page);
 		return 0; /* don't care */
 	}
 
@@ -2183,7 +2183,7 @@ static int cifs_partialpagewrite(struct page *page, unsigned from, unsigned to)
 			rc = -EIO;
 	}
 
-	kunmap(page);
+	kunmap_thread(page);
 	return rc;
 }
 
@@ -2559,10 +2559,10 @@ static int cifs_write_end(struct file *file, struct address_space *mapping,
 		   known which we might as well	leverage */
 		/* BB check if anything else missing out of ppw
 		   such as updating last write time */
-		page_data = kmap(page);
+		page_data = kmap_thread(page);
 		rc = cifs_write(cfile, pid, page_data + offset, copied, &pos);
 		/* if (rc < 0) should we set writebehind rc? */
-		kunmap(page);
+		kunmap_thread(page);
 
 		free_xid(xid);
 	} else {
@@ -4511,7 +4511,7 @@ static int cifs_readpage_worker(struct file *file, struct page *page,
 	if (rc == 0)
 		goto read_complete;
 
-	read_data = kmap(page);
+	read_data = kmap_thread(page);
 	/* for reads over a certain size could initiate async read ahead */
 
 	rc = cifs_read(file, read_data, PAGE_SIZE, poffset);
@@ -4540,7 +4540,7 @@ static int cifs_readpage_worker(struct file *file, struct page *page,
 	rc = 0;
 
 io_error:
-	kunmap(page);
+	kunmap_thread(page);
 	unlock_page(page);
 
 read_complete:
diff --git a/fs/cifs/smb2ops.c b/fs/cifs/smb2ops.c
index 32f90dc82c84..a3e7ebab38b6 100644
--- a/fs/cifs/smb2ops.c
+++ b/fs/cifs/smb2ops.c
@@ -4068,12 +4068,12 @@ smb3_init_transform_rq(struct TCP_Server_Info *server, int num_rqst,
 
 			rqst_page_get_length(&new_rq[i], j, &len, &offset);
 
-			dst = (char *) kmap(new_rq[i].rq_pages[j]) + offset;
-			src = (char *) kmap(old_rq[i - 1].rq_pages[j]) + offset;
+			dst = (char *) kmap_thread(new_rq[i].rq_pages[j]) + offset;
+			src = (char *) kmap_thread(old_rq[i - 1].rq_pages[j]) + offset;
 
 			memcpy(dst, src, len);
-			kunmap(new_rq[i].rq_pages[j]);
-			kunmap(old_rq[i - 1].rq_pages[j]);
+			kunmap_thread(new_rq[i].rq_pages[j]);
+			kunmap_thread(old_rq[i - 1].rq_pages[j]);
 		}
 	}
 
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
