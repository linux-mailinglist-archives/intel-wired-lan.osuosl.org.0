Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D40B289719
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 22:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D20932E2D7;
	Fri,  9 Oct 2020 20:02:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIHEYpPoo-KX; Fri,  9 Oct 2020 20:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0EF32E2D2;
	Fri,  9 Oct 2020 20:01:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C64B1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 084A3871CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s6j0SkkpE1SO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 19:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B44B8704F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 19:53:14 +0000 (UTC)
IronPort-SDR: bnfyBTVldvgZaXPqjXtMX7cMf2preAP6LMa4h7j1Z+Mhc7wt58iEpUfJ41yFIepelMvB5iv68o
 3c1KV6ClSkwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="164744029"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="164744029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:13 -0700
IronPort-SDR: kHLawvWt7hk0hVI10Fetwn7tOzYF5yIQvhqqrAQq3flxek1V3ypdWT/2gH8vwQndln/BZvc5kH
 kTRjULDVKoGw==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="312652948"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:12 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Date: Fri,  9 Oct 2020 12:50:15 -0700
Message-Id: <20201009195033.3208459-41-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Oct 2020 20:01:20 +0000
Subject: [Intel-wired-lan] [PATCH RFC PKS/PMEM 40/58] net: Utilize new
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
Cc: linux-aio@kvack.org, Aviad Yehezkel <aviadye@nvidia.com>,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, linux-efi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, samba-technical@lists.samba.org,
 linux-f2fs-devel@lists.sourceforge.net, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, xen-devel@lists.xenproject.org,
 Daniel Borkmann <daniel@iogearbox.net>, linux-nvdimm@lists.01.org,
 Boris Pismenny <borisp@nvidia.com>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, io-uring@vger.kernel.org,
 cluster-devel@redhat.com, linux-cachefs@redhat.com,
 intel-wired-lan@lists.osuosl.org, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 linux-ext4@vger.kernel.org, linux-rdma@vger.kernel.org,
 Fenghua Yu <fenghua.yu@intel.com>, linux-afs@lists.infradead.org,
 linux-um@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-bcache@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 netdev@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-ntfs-dev@lists.sourceforge.net, target-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Anna Schumaker <anna.schumaker@netapp.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ira Weiny <ira.weiny@intel.com>

These kmap() calls in these drivers are localized to a single thread.
To avoid the over head of global PKRS updates use the new kmap_thread()
call.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>
Cc: Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
Cc: Anna Schumaker <anna.schumaker@netapp.com>
Cc: Boris Pismenny <borisp@nvidia.com>
Cc: Aviad Yehezkel <aviadye@nvidia.com>
Cc: John Fastabend <john.fastabend@gmail.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 net/ceph/messenger.c | 4 ++--
 net/core/datagram.c  | 4 ++--
 net/core/sock.c      | 8 ++++----
 net/ipv4/ip_output.c | 4 ++--
 net/sunrpc/cache.c   | 4 ++--
 net/sunrpc/xdr.c     | 8 ++++----
 net/tls/tls_device.c | 4 ++--
 7 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/net/ceph/messenger.c b/net/ceph/messenger.c
index d4d7a0e52491..0c49b8e333da 100644
--- a/net/ceph/messenger.c
+++ b/net/ceph/messenger.c
@@ -1535,10 +1535,10 @@ static u32 ceph_crc32c_page(u32 crc, struct page *page,
 {
 	char *kaddr;
 
-	kaddr = kmap(page);
+	kaddr = kmap_thread(page);
 	BUG_ON(kaddr == NULL);
 	crc = crc32c(crc, kaddr + page_offset, length);
-	kunmap(page);
+	kunmap_thread(page);
 
 	return crc;
 }
diff --git a/net/core/datagram.c b/net/core/datagram.c
index 639745d4f3b9..cbd0a343074a 100644
--- a/net/core/datagram.c
+++ b/net/core/datagram.c
@@ -441,14 +441,14 @@ static int __skb_datagram_iter(const struct sk_buff *skb, int offset,
 		end = start + skb_frag_size(frag);
 		if ((copy = end - offset) > 0) {
 			struct page *page = skb_frag_page(frag);
-			u8 *vaddr = kmap(page);
+			u8 *vaddr = kmap_thread(page);
 
 			if (copy > len)
 				copy = len;
 			n = INDIRECT_CALL_1(cb, simple_copy_to_iter,
 					vaddr + skb_frag_off(frag) + offset - start,
 					copy, data, to);
-			kunmap(page);
+			kunmap_thread(page);
 			offset += n;
 			if (n != copy)
 				goto short_copy;
diff --git a/net/core/sock.c b/net/core/sock.c
index 6c5c6b18eff4..9b46a75cd8c1 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -2846,11 +2846,11 @@ ssize_t sock_no_sendpage(struct socket *sock, struct page *page, int offset, siz
 	ssize_t res;
 	struct msghdr msg = {.msg_flags = flags};
 	struct kvec iov;
-	char *kaddr = kmap(page);
+	char *kaddr = kmap_thread(page);
 	iov.iov_base = kaddr + offset;
 	iov.iov_len = size;
 	res = kernel_sendmsg(sock, &msg, &iov, 1, size);
-	kunmap(page);
+	kunmap_thread(page);
 	return res;
 }
 EXPORT_SYMBOL(sock_no_sendpage);
@@ -2861,12 +2861,12 @@ ssize_t sock_no_sendpage_locked(struct sock *sk, struct page *page,
 	ssize_t res;
 	struct msghdr msg = {.msg_flags = flags};
 	struct kvec iov;
-	char *kaddr = kmap(page);
+	char *kaddr = kmap_thread(page);
 
 	iov.iov_base = kaddr + offset;
 	iov.iov_len = size;
 	res = kernel_sendmsg_locked(sk, &msg, &iov, 1, size);
-	kunmap(page);
+	kunmap_thread(page);
 	return res;
 }
 EXPORT_SYMBOL(sock_no_sendpage_locked);
diff --git a/net/ipv4/ip_output.c b/net/ipv4/ip_output.c
index e6f2ada9e7d5..05304fb251a4 100644
--- a/net/ipv4/ip_output.c
+++ b/net/ipv4/ip_output.c
@@ -949,9 +949,9 @@ csum_page(struct page *page, int offset, int copy)
 {
 	char *kaddr;
 	__wsum csum;
-	kaddr = kmap(page);
+	kaddr = kmap_thread(page);
 	csum = csum_partial(kaddr + offset, copy, 0);
-	kunmap(page);
+	kunmap_thread(page);
 	return csum;
 }
 
diff --git a/net/sunrpc/cache.c b/net/sunrpc/cache.c
index baef5ee43dbb..88193f2a8e6f 100644
--- a/net/sunrpc/cache.c
+++ b/net/sunrpc/cache.c
@@ -935,9 +935,9 @@ static ssize_t cache_downcall(struct address_space *mapping,
 	if (!page)
 		goto out_slow;
 
-	kaddr = kmap(page);
+	kaddr = kmap_thread(page);
 	ret = cache_do_downcall(kaddr, buf, count, cd);
-	kunmap(page);
+	kunmap_thread(page);
 	unlock_page(page);
 	put_page(page);
 	return ret;
diff --git a/net/sunrpc/xdr.c b/net/sunrpc/xdr.c
index be11d672b5b9..00afbb48fb0a 100644
--- a/net/sunrpc/xdr.c
+++ b/net/sunrpc/xdr.c
@@ -1353,7 +1353,7 @@ xdr_xcode_array2(struct xdr_buf *buf, unsigned int base,
 		base &= ~PAGE_MASK;
 		avail_page = min_t(unsigned int, PAGE_SIZE - base,
 					avail_here);
-		c = kmap(*ppages) + base;
+		c = kmap_thread(*ppages) + base;
 
 		while (avail_here) {
 			avail_here -= avail_page;
@@ -1429,9 +1429,9 @@ xdr_xcode_array2(struct xdr_buf *buf, unsigned int base,
 				}
 			}
 			if (avail_here) {
-				kunmap(*ppages);
+				kunmap_thread(*ppages);
 				ppages++;
-				c = kmap(*ppages);
+				c = kmap_thread(*ppages);
 			}
 
 			avail_page = min(avail_here,
@@ -1471,7 +1471,7 @@ xdr_xcode_array2(struct xdr_buf *buf, unsigned int base,
 out:
 	kfree(elem);
 	if (ppages)
-		kunmap(*ppages);
+		kunmap_thread(*ppages);
 	return err;
 }
 
diff --git a/net/tls/tls_device.c b/net/tls/tls_device.c
index b74e2741f74f..ead5b1c485f8 100644
--- a/net/tls/tls_device.c
+++ b/net/tls/tls_device.c
@@ -576,13 +576,13 @@ int tls_device_sendpage(struct sock *sk, struct page *page,
 		goto out;
 	}
 
-	kaddr = kmap(page);
+	kaddr = kmap_thread(page);
 	iov.iov_base = kaddr + offset;
 	iov.iov_len = size;
 	iov_iter_kvec(&msg_iter, WRITE, &iov, 1, size);
 	rc = tls_push_data(sk, &msg_iter, size,
 			   flags, TLS_RECORD_TYPE_DATA);
-	kunmap(page);
+	kunmap_thread(page);
 
 out:
 	release_sock(sk);
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
