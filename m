Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5276E2896E7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BE15878C0;
	Fri,  9 Oct 2020 20:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ppWx3Q0rjVIa; Fri,  9 Oct 2020 20:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 265B2878C6;
	Fri,  9 Oct 2020 20:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 51F471BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4747287621
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f51fevAKvy4g for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2017876C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:16 +0000 (UTC)
IronPort-SDR: Ydbvw56hd/rCumfdVNaUOzSk+Gc+LuMHa4l5jmyqHgrWu89BKyIWjRi8bRg6+4JXy9fcfqpqLW
 QsQC4B00QMDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="229715313"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="229715313"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:16 -0700
IronPort-SDR: tpdf2AjeaRc5H+9J2CTgDjuzQWeL2r1NHpqYA6zEYh1sueM+cncDhIB0ZXYbhrsfqtXGL/LVMU
 w/znFNAZKmjw==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="518801571"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:15 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:50:16 -0700
Message-Id: <20201009195033.3208459-42-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:20 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 41/58] drivers/target:
 Utilize new kmap_thread()
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

These kmap() calls in this driver are localized to a single thread.  To
avoid the over head of global PKRS updates use the new kmap_thread()
call.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 drivers/target/target_core_iblock.c    | 4 ++--
 drivers/target/target_core_rd.c        | 4 ++--
 drivers/target/target_core_transport.c | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/target/target_core_iblock.c b/drivers/target/target_core_iblock.c
index 1c181d31f4c8..df7b1568edb3 100644
--- a/drivers/target/target_core_iblock.c
+++ b/drivers/target/target_core_iblock.c
@@ -415,7 +415,7 @@ iblock_execute_zero_out(struct block_device *bdev, struct se_cmd *cmd)
 	unsigned char *buf, *not_zero;
 	int ret;
 
-	buf = kmap(sg_page(sg)) + sg->offset;
+	buf = kmap_thread(sg_page(sg)) + sg->offset;
 	if (!buf)
 		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 	/*
@@ -423,7 +423,7 @@ iblock_execute_zero_out(struct block_device *bdev, struct se_cmd *cmd)
 	 * incoming WRITE_SAME payload does not contain zeros.
 	 */
 	not_zero = memchr_inv(buf, 0x00, cmd->data_length);
-	kunmap(sg_page(sg));
+	kunmap_thread(sg_page(sg));
 
 	if (not_zero)
 		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
diff --git a/drivers/target/target_core_rd.c b/drivers/target/target_core_rd.c
index 408bd975170b..dbbdd39c5bf9 100644
--- a/drivers/target/target_core_rd.c
+++ b/drivers/target/target_core_rd.c
@@ -159,9 +159,9 @@ static int rd_allocate_sgl_table(struct rd_dev *rd_dev, struct rd_dev_sg_table *
 			sg_assign_page(&sg[j], pg);
 			sg[j].length = PAGE_SIZE;
 
-			p = kmap(pg);
+			p = kmap_thread(pg);
 			memset(p, init_payload, PAGE_SIZE);
-			kunmap(pg);
+			kunmap_thread(pg);
 		}
 
 		page_offset += sg_per_table;
diff --git a/drivers/target/target_core_transport.c b/drivers/target/target_core_transport.c
index ff26ab0a5f60..8d0bae5a92e5 100644
--- a/drivers/target/target_core_transport.c
+++ b/drivers/target/target_core_transport.c
@@ -1692,11 +1692,11 @@ int target_submit_cmd_map_sgls(struct se_cmd *se_cmd, struct se_session *se_sess
 			unsigned char *buf = NULL;
 
 			if (sgl)
-				buf = kmap(sg_page(sgl)) + sgl->offset;
+				buf = kmap_thread(sg_page(sgl)) + sgl->offset;
 
 			if (buf) {
 				memset(buf, 0, sgl->length);
-				kunmap(sg_page(sgl));
+				kunmap_thread(sg_page(sgl));
 			}
 		}
 
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
