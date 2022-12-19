Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C82650D8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 15:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBBDD4049F;
	Mon, 19 Dec 2022 14:42:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBBDD4049F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671460926;
	bh=5d9038PiMH/9siNzXeKRl1j9zFhLIZV6HYQ3g9h8R4w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3M7O1CnmKYisFpkaxoaZnwwwfk0IwLvztknYHoYi/cNrjLKVQjLS+NIG/tMoXra0J
	 vWuuPocrrqBxZtsNAfsuad4S59t5qFJQMCUb0md7lZEhSHPvHIbY4HuM6Ct3vO5e26
	 1fLd0X5A+e1t3ooUTeeuQQ7uRELkeLJm3GsstsWJyu9vZ9oItqmFi0n4d5jbE+8nxz
	 u33rWSzITMm4qD70sLR8icFRvfhkJU7fm1Xc7OC1Ps/NhGQGWDmXnnvWLplEGqJ1gD
	 4iF5iJhr7zNUl0gyc2q/Z1t/BL7Dk4ii0ulLLuwBuNwRejSZX5wA/65xlPFdQBOJWZ
	 3MxRFu8HGnO6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fjbUgMDNItUG; Mon, 19 Dec 2022 14:42:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D06C740143;
	Mon, 19 Dec 2022 14:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D06C740143
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 395CB1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09BB281381
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09BB281381
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZgbwlWFklDMI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 14:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B7C181380
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B7C181380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 14:41:58 +0000 (UTC)
Received: from kwepemm600001.china.huawei.com (unknown [172.30.72.55])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NbMnl0g9GzRq56;
 Mon, 19 Dec 2022 22:40:43 +0800 (CST)
Received: from huawei.com (10.175.113.133) by kwepemm600001.china.huawei.com
 (7.193.23.3) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Mon, 19 Dec
 2022 22:41:51 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <gregkh@linuxfoundation.org>, <rafael@kernel.org>,
 <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>
Date: Mon, 19 Dec 2022 22:41:03 +0800
Message-ID: <20221219144103.34789-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm600001.china.huawei.com (7.193.23.3)
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH] kobject: Fix slab-out-of-bounds in
 fill_kobj_path()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In kobject_get_path(), if kobj->name is changed between calls
get_kobj_path_length() and fill_kobj_path() and the length becomes
longer, then fill_kobj_path() will have an out-of-bounds bug.

The actual current problem occurs when the ixgbe probe.

In ixgbe_mii_bus_init(), if the length of netdev->dev.kobj.name
length becomes longer, out-of-bounds will occur.

cpu0                                         cpu1
ixgbe_probe
 register_netdev(netdev)
  netdev_register_kobject
   device_add
    kobject_uevent // Sending ADD events
                                             systemd-udevd // rename netdev
                                              dev_change_name
                                               device_rename
                                                kobject_rename
                                                |
 ixgbe_mii_bus_init                             |
  mdiobus_register                              |
   __mdiobus_register                           |
    device_register                             |
     device_add                                 |
      kobject_uevent                            |
       kobject_get_path                         |
        len = get_kobj_path_length // old name  |
        path = kzalloc(len, gfp_mask);          |
                                                kobj->name = name;
                                                /* name length becomes
                                                 * longer
                                                 */
        fill_kobj_path /* kobj path length is
                        * longer than path,
                        * resulting in out of
                        * bounds when filling path
                        */

This is the kasan report:

==================================================================
BUG: KASAN: slab-out-of-bounds in fill_kobj_path+0x50/0xc0
Write of size 7 at addr ff1100090573d1fd by task kworker/28:1/673

 Workqueue: events work_for_cpu_fn
 Call Trace:
 <TASK>
 dump_stack_lvl+0x34/0x48
 print_address_description.constprop.0+0x86/0x1e7
 print_report+0x36/0x4f
 kasan_report+0xad/0x130
 kasan_check_range+0x35/0x1c0
 memcpy+0x39/0x60
 fill_kobj_path+0x50/0xc0
 kobject_get_path+0x5a/0xc0
 kobject_uevent_env+0x140/0x460
 device_add+0x5c7/0x910
 __mdiobus_register+0x14e/0x490
 ixgbe_probe.cold+0x441/0x574 [ixgbe]
 local_pci_probe+0x78/0xc0
 work_for_cpu_fn+0x26/0x40
 process_one_work+0x3b6/0x6a0
 worker_thread+0x368/0x520
 kthread+0x165/0x1a0
 ret_from_fork+0x1f/0x30

This reproducer triggers that bug:

while:
do
    rmmod ixgbe
    sleep 0.5
    modprobe ixgbe
    sleep 0.5

When calling fill_kobj_path() to fill path, if the name length of
kobj becomes longer, return failure and retry.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 lib/kobject.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/lib/kobject.c b/lib/kobject.c
index a0b2dbfcfa23..d129f437b200 100644
--- a/lib/kobject.c
+++ b/lib/kobject.c
@@ -112,7 +112,7 @@ static int get_kobj_path_length(struct kobject *kobj)
 	return length;
 }
 
-static void fill_kobj_path(struct kobject *kobj, char *path, int length)
+static bool fill_kobj_path(struct kobject *kobj, char *path, int length)
 {
 	struct kobject *parent;
 
@@ -121,12 +121,16 @@ static void fill_kobj_path(struct kobject *kobj, char *path, int length)
 		int cur = strlen(kobject_name(parent));
 		/* back up enough to print this name with '/' */
 		length -= cur;
+		if (length < 0)
+			return false;
 		memcpy(path + length, kobject_name(parent), cur);
 		*(path + --length) = '/';
 	}
 
 	pr_debug("kobject: '%s' (%p): %s: path = '%s'\n", kobject_name(kobj),
 		 kobj, __func__, path);
+
+	return true;
 }
 
 /**
@@ -140,14 +144,20 @@ char *kobject_get_path(struct kobject *kobj, gfp_t gfp_mask)
 {
 	char *path;
 	int len;
+	bool ret;
 
+retry:
 	len = get_kobj_path_length(kobj);
 	if (len == 0)
 		return NULL;
 	path = kzalloc(len, gfp_mask);
 	if (!path)
 		return NULL;
-	fill_kobj_path(kobj, path, len);
+	ret = fill_kobj_path(kobj, path, len);
+	if (!ret) {
+		kfree(path);
+		goto retry;
+	}
 
 	return path;
 }
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
