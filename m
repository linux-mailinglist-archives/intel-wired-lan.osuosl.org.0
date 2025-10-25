Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65372C09CD4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 18:59:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6B8880A06;
	Sat, 25 Oct 2025 16:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lCwIgGKMUpnR; Sat, 25 Oct 2025 16:59:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 294208097B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761411559;
	bh=V5UsvXKw8wVOUzGMnnRnvmj8EMKArLdi449MgunOyZ4=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=d44xB7G/Uu94Kqg/V2yXklWPR4TvS0N/IVOLYAbt8SYxeKnQjLall1h+wHC6wwGZi
	 Uf4BAauftfQUPkeXLRve0KsTfd7d3D1ktVfVNgGQuM8s8zj9RQv1d7vDJ2UwZaBzk4
	 UelBhklf5zah+Au95X0nmMlEL8Vpqhrqn25j/n4WDWAYxS2DZwCbVoATaUDt8tk+EI
	 lR/p41kZQezQ8DeiXYijZEeSB5L4q9tfvR9OLx8Q/UmUL2w3bEMSDgQhTzTbx6mEID
	 y5ItQr+qH6/kO3f/BLGHcBPfFStWscFDr2PxXSHMvzootJW0ZXh43lUlk+UscuDtHC
	 ylmL9QKvIv6bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 294208097B;
	Sat, 25 Oct 2025 16:59:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BE2DD7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4D6C0402EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hndQbVVTaaC4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 16:59:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.83.148.184;
 helo=pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3869390cb=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1268F40296
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1268F40296
Received: from pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.83.148.184])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1268F40296
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:59:15 +0000 (UTC)
X-CSE-ConnectionGUID: eZFInZ5zTjyBRyWiJWEZhA==
X-CSE-MsgGUID: jAUVIkh2SL+2hX/TGUgopA==
X-IronPort-AV: E=Sophos;i="6.19,255,1754956800"; 
   d="scan'208";a="5508846"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2025 16:59:14 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:19462]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.18.50:2525]
 with esmtp (Farcaster)
 id d9296589-5fdb-4156-af46-1d48d63edab8; Sat, 25 Oct 2025 16:59:14 +0000 (UTC)
X-Farcaster-Flow-ID: d9296589-5fdb-4156-af46-1d48d63edab8
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 25 Oct 2025 16:59:14 +0000
Received: from b0be8375a521.amazon.com (10.37.245.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.29;
 Sat, 25 Oct 2025 16:59:12 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Mitch Williams
 <mitch.a.williams@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Sun, 26 Oct 2025 01:58:50 +0900
Message-ID: <20251025165902.80411-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.8]
X-ClientProxiedBy: EX19D042UWA002.ant.amazon.com (10.13.139.17) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1761411556; x=1792947556;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V5UsvXKw8wVOUzGMnnRnvmj8EMKArLdi449MgunOyZ4=;
 b=YS898EQWFy1ZrQOXTicleJlpE0OaocFUf9ZZ2vUAlqlRC2e+2K3QA+Xr
 /GvMpS1aWx9aJXhR534WaKmTXCb7aMb59ojxgT5gZ0Pnwad7c3YrnBLm9
 xP6pKtEAY8zVr/Gd0zvK58o+Ig5xv6Wnaw7gnvNqaxNEF0sPY05QUDlw5
 CPHjCMVS+4jHElqRgKiOO11L3ld0v0Fr8N7lQbSq1LodRO7QyT0QkVG5M
 MIW0Qmg61ZN7WNiW0sIlbk+LrjyYJHFgZztvdB4zL+jUoyYqJrDPjrqII
 ryCftt5SJcOssQCBKD4AQz1SRWS8p8LOcS82aiJhGSe3ptwDZQdme8WNt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=YS898EQW
Subject: [Intel-wired-lan] [PATCH iwl-net v1] iavf: fix off-by-one issues in
 iavf_config_rss_reg()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are off-by-one bugs when configuring RSS hash key and lookup
table, causing out-of-bounds reads to memory [1] and out-of-bounds
writes to device registers.

Before commit 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS"),
the loop upper bounds were:
    i <= I40E_VFQF_{HKEY,HLUT}_MAX_INDEX
which is safe since the value is the last valid index.

That commit changed the bounds to:
    i <= adapter->rss_{key,lut}_size / 4
where `rss_{key,lut}_size / 4` is the number of dwords, so the last
valid index is `(rss_{key,lut}_size / 4) - 1`. Therefore, using `<=`
accesses one element past the end.

Fix the issues by using `<` instead of `<=`, ensuring we do not exceed
the bounds.

[1] KASAN splat about rss_key_size off-by-one
  BUG: KASAN: slab-out-of-bounds in iavf_config_rss+0x619/0x800
  Read of size 4 at addr ffff888102c50134 by task kworker/u8:6/63

  CPU: 0 UID: 0 PID: 63 Comm: kworker/u8:6 Not tainted 6.18.0-rc2-enjuk-tnguy-00378-g3005f5b77652-dirty #156 PREEMPT(voluntary)
  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
  Workqueue: iavf iavf_watchdog_task
  Call Trace:
   <TASK>
   dump_stack_lvl+0x6f/0xb0
   print_report+0x170/0x4f3
   kasan_report+0xe1/0x1a0
   iavf_config_rss+0x619/0x800
   iavf_watchdog_task+0x2be7/0x3230
   process_one_work+0x7fd/0x1420
   worker_thread+0x4d1/0xd40
   kthread+0x344/0x660
   ret_from_fork+0x249/0x320
   ret_from_fork_asm+0x1a/0x30
   </TASK>

  Allocated by task 63:
   kasan_save_stack+0x30/0x50
   kasan_save_track+0x14/0x30
   __kasan_kmalloc+0x7f/0x90
   __kmalloc_noprof+0x246/0x6f0
   iavf_watchdog_task+0x28fc/0x3230
   process_one_work+0x7fd/0x1420
   worker_thread+0x4d1/0xd40
   kthread+0x344/0x660
   ret_from_fork+0x249/0x320
   ret_from_fork_asm+0x1a/0x30

  The buggy address belongs to the object at ffff888102c50100
   which belongs to the cache kmalloc-64 of size 64
  The buggy address is located 0 bytes to the right of
   allocated 52-byte region [ffff888102c50100, ffff888102c50134)

  The buggy address belongs to the physical page:
  page: refcount:0 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x102c50
  flags: 0x200000000000000(node=0|zone=2)
  page_type: f5(slab)
  raw: 0200000000000000 ffff8881000418c0 dead000000000122 0000000000000000
  raw: 0000000000000000 0000000080200020 00000000f5000000 0000000000000000
  page dumped because: kasan: bad access detected

  Memory state around the buggy address:
   ffff888102c50000: 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc
   ffff888102c50080: 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc
  >ffff888102c50100: 00 00 00 00 00 00 04 fc fc fc fc fc fc fc fc fc
                                       ^
   ffff888102c50180: 00 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc
   ffff888102c50200: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc

Fixes: 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS")
Signed-off-by: Kohei Enju <enjuk@amazon.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c2fbe443ef85..4b0fc8f354bc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1726,11 +1726,11 @@ static int iavf_config_rss_reg(struct iavf_adapter *adapter)
 	u16 i;
 
 	dw = (u32 *)adapter->rss_key;
-	for (i = 0; i <= adapter->rss_key_size / 4; i++)
+	for (i = 0; i < adapter->rss_key_size / 4; i++)
 		wr32(hw, IAVF_VFQF_HKEY(i), dw[i]);
 
 	dw = (u32 *)adapter->rss_lut;
-	for (i = 0; i <= adapter->rss_lut_size / 4; i++)
+	for (i = 0; i < adapter->rss_lut_size / 4; i++)
 		wr32(hw, IAVF_VFQF_HLUT(i), dw[i]);
 
 	iavf_flush(hw);
-- 
2.51.0

