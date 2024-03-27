Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A6188E8CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72A3882056;
	Wed, 27 Mar 2024 15:25:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5QMj4rCZRCDn; Wed, 27 Mar 2024 15:25:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A29818206E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553108;
	bh=pNHm1AyLJHs3zPZYQJCU8Iim9j4UiStbgV1GBhwtX7g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sFkTMeQ8H9h8V0JwHMgNfn+T62OlPkw+rU/0fPzhSfSx2cbiRgaEwnjU8dQVOKAje
	 yx5Sx+ukv54/29Gw9kOzAti85eMk598ETq6RzbTLuRXUCeSxwVv8+rAG+Ab7LgsBwa
	 7fSAy8L0HoRo5tIBJ2hPkt8ZbvGLIp0r5NQgJ9jBB9oOBkTMWjLzRb0aDu9zgrktnX
	 16enwaFoEQxLi5c6O12cG8EdSKfSmzI00Nxny0jsizqrPPNZn0vz1OcKHjrNPmjmwt
	 5bPWku458lOp99rceSvYBaz8QHSoyAwn7mexVzuqXsEWvPPbDMAZwz1pi0WMXTc9j4
	 g6/dbrHdgweug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A29818206E;
	Wed, 27 Mar 2024 15:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45CA31BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32282606EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oa7N5TUBRe9q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4A0C5605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A0C5605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A0C5605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:04 +0000 (UTC)
X-CSE-ConnectionGUID: QgDKd6vSTBGe0uM/iqkinA==
X-CSE-MsgGUID: ynE+l3hMRDKIhNhrJYfJtw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518189"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518189"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414219"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:01 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:46 +0100
Message-ID: <20240327152358.2368467-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553104; x=1743089104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9FH8aw4dGuAYnk5oSyIJywDfG0vyXaG4gNHbxtWks0Y=;
 b=Et7m7mJhQdqBJB+jj987fOH4SCFLy2zJKsdHKaY7mKFxf7Y0IIazcPlV
 L8Up+MXnSbTdt7dS5oPEl2a0Rc6KiP1dqr5FBDbLHLptgQdzpDawxqVVB
 YiqT3NcuRV9Uto3MbgUitJrh+HcGklYIGTJewPaNPuiY2Lf9n4jXXXCrd
 s6U8Jo9e1G1RBx2UY3+AT1+0Tj5/DJVhzbg49jSZv2EPukWLxErccFylA
 oqUEhmlRTgomk5Mg0bdPcSO/C0xeF+ehvc1cP820WBras/RMTqAwzpfcF
 LglsQ+uPw3a3aS58rR+AifMp4YdNG4x2q5D45SwC3aM74jcCf64/aBy2v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Et7m7mJh
Subject: [Intel-wired-lan] [PATCH net-next v6 09/21] fs/ntfs3: add prefix to
 bitmap_size() and use BITS_TO_U64()
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
Cc: Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

bitmap_size() is a pretty generic name and one may want to use it for
a generic bitmap API function. At the same time, its logic is
NTFS-specific, as it aligns to the sizeof(u64), not the sizeof(long)
(although it uses ideologically right ALIGN() instead of division).
Add the prefix 'ntfs3_' used for that FS (not just 'ntfs_' to not mix
it with the legacy module) and use generic BITS_TO_U64() while at it.

Suggested-by: Yury Norov <yury.norov@gmail.com> # BITS_TO_U64()
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 fs/ntfs3/ntfs_fs.h |  4 ++--
 fs/ntfs3/bitmap.c  |  4 ++--
 fs/ntfs3/fsntfs.c  |  2 +-
 fs/ntfs3/index.c   | 11 ++++++-----
 fs/ntfs3/super.c   |  2 +-
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/fs/ntfs3/ntfs_fs.h b/fs/ntfs3/ntfs_fs.h
index 79356fd29a14..ea5b5e814e63 100644
--- a/fs/ntfs3/ntfs_fs.h
+++ b/fs/ntfs3/ntfs_fs.h
@@ -966,9 +966,9 @@ static inline bool run_is_empty(struct runs_tree *run)
 }
 
 /* NTFS uses quad aligned bitmaps. */
-static inline size_t bitmap_size(size_t bits)
+static inline size_t ntfs3_bitmap_size(size_t bits)
 {
-	return ALIGN((bits + 7) >> 3, 8);
+	return BITS_TO_U64(bits) * sizeof(u64);
 }
 
 #define _100ns2seconds 10000000
diff --git a/fs/ntfs3/bitmap.c b/fs/ntfs3/bitmap.c
index 845f9b22deef..c9eb01ccee51 100644
--- a/fs/ntfs3/bitmap.c
+++ b/fs/ntfs3/bitmap.c
@@ -654,7 +654,7 @@ int wnd_init(struct wnd_bitmap *wnd, struct super_block *sb, size_t nbits)
 	wnd->total_zeroes = nbits;
 	wnd->extent_max = MINUS_ONE_T;
 	wnd->zone_bit = wnd->zone_end = 0;
-	wnd->nwnd = bytes_to_block(sb, bitmap_size(nbits));
+	wnd->nwnd = bytes_to_block(sb, ntfs3_bitmap_size(nbits));
 	wnd->bits_last = nbits & (wbits - 1);
 	if (!wnd->bits_last)
 		wnd->bits_last = wbits;
@@ -1347,7 +1347,7 @@ int wnd_extend(struct wnd_bitmap *wnd, size_t new_bits)
 		return -EINVAL;
 
 	/* Align to 8 byte boundary. */
-	new_wnd = bytes_to_block(sb, bitmap_size(new_bits));
+	new_wnd = bytes_to_block(sb, ntfs3_bitmap_size(new_bits));
 	new_last = new_bits & (wbits - 1);
 	if (!new_last)
 		new_last = wbits;
diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
index ae2ef5c11868..626d3f2c7e2d 100644
--- a/fs/ntfs3/fsntfs.c
+++ b/fs/ntfs3/fsntfs.c
@@ -522,7 +522,7 @@ static int ntfs_extend_mft(struct ntfs_sb_info *sbi)
 	ni->mi.dirty = true;
 
 	/* Step 2: Resize $MFT::BITMAP. */
-	new_bitmap_bytes = bitmap_size(new_mft_total);
+	new_bitmap_bytes = ntfs3_bitmap_size(new_mft_total);
 
 	err = attr_set_size(ni, ATTR_BITMAP, NULL, 0, &sbi->mft.bitmap.run,
 			    new_bitmap_bytes, &new_bitmap_bytes, true, NULL);
diff --git a/fs/ntfs3/index.c b/fs/ntfs3/index.c
index daabaad63aaf..43796aaa3d97 100644
--- a/fs/ntfs3/index.c
+++ b/fs/ntfs3/index.c
@@ -1456,8 +1456,8 @@ static int indx_create_allocate(struct ntfs_index *indx, struct ntfs_inode *ni,
 
 	alloc->nres.valid_size = alloc->nres.data_size = cpu_to_le64(data_size);
 
-	err = ni_insert_resident(ni, bitmap_size(1), ATTR_BITMAP, in->name,
-				 in->name_len, &bitmap, NULL, NULL);
+	err = ni_insert_resident(ni, ntfs3_bitmap_size(1), ATTR_BITMAP,
+				 in->name, in->name_len, &bitmap, NULL, NULL);
 	if (err)
 		goto out2;
 
@@ -1518,8 +1518,9 @@ static int indx_add_allocate(struct ntfs_index *indx, struct ntfs_inode *ni,
 	if (bmp) {
 		/* Increase bitmap. */
 		err = attr_set_size(ni, ATTR_BITMAP, in->name, in->name_len,
-				    &indx->bitmap_run, bitmap_size(bit + 1),
-				    NULL, true, NULL);
+				    &indx->bitmap_run,
+				    ntfs3_bitmap_size(bit + 1), NULL, true,
+				    NULL);
 		if (err)
 			goto out1;
 	}
@@ -2092,7 +2093,7 @@ static int indx_shrink(struct ntfs_index *indx, struct ntfs_inode *ni,
 	if (in->name == I30_NAME)
 		i_size_write(&ni->vfs_inode, new_data);
 
-	bpb = bitmap_size(bit);
+	bpb = ntfs3_bitmap_size(bit);
 	if (bpb * 8 == nbits)
 		return 0;
 
diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
index 9df7c20d066f..71dfeb0c4323 100644
--- a/fs/ntfs3/super.c
+++ b/fs/ntfs3/super.c
@@ -1341,7 +1341,7 @@ static int ntfs_fill_super(struct super_block *sb, struct fs_context *fc)
 
 	/* Check bitmap boundary. */
 	tt = sbi->used.bitmap.nbits;
-	if (inode->i_size < bitmap_size(tt)) {
+	if (inode->i_size < ntfs3_bitmap_size(tt)) {
 		ntfs_err(sb, "$Bitmap is corrupted.");
 		err = -EINVAL;
 		goto put_inode_out;
-- 
2.44.0

