Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D501A77CAF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Apr 2025 15:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28EDC61AC3;
	Tue,  1 Apr 2025 13:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a78oPJBAeVYo; Tue,  1 Apr 2025 13:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9425A61AC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743515439;
	bh=w0d3ejIB8ykp3itxWnlZMeX96K6W51JjpPdg3diXZpU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eRZV4DKcg5UJ8GNg9ZxTaLBW3Zypo0Rb4fHrsHBKoQRd3vv0L1CIwA54AVOD7SG+p
	 AapDKlB8VR3ksHp5+AeOD5JrAyhuDLUihVm5L6fMBYRQMU/uBoo6WJLpS+xw5IFRFx
	 ln8jtzuB+eSp8ZgxbEpKgErOBIA3dTmmMdUmKLao19MEMYNx4hg/FonGYT7vLzm1r8
	 CCBubIU7+jU50cAxA6tKWlpm8+/sojqlNXnnDpWZJmU1RTtR5qKScBdkhY/3u/yXOj
	 +7lmxsaz+z1K+rNBG6pzOLJEKsIlwsVokAP2u0dx1wvmotmCAlTtppNQxU+cb1r+4s
	 65rt0IW5sbmow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9425A61AC8;
	Tue,  1 Apr 2025 13:50:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E1D56121
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 13:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEB1C61ABF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 13:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Baf9FHabuEEl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 13:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1A3B06121E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A3B06121E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A3B06121E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 13:50:36 +0000 (UTC)
X-CSE-ConnectionGUID: 3itIincOTSWxYj9sjfWhuA==
X-CSE-MsgGUID: 78UVXD/0Qy2dCKj9L2lrnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="43987245"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="43987245"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 06:50:36 -0700
X-CSE-ConnectionGUID: WfeZqm49QkmEdayZ399bsw==
X-CSE-MsgGUID: c2bFjzdNQQ2mnWKppKHtTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="157328790"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 01 Apr 2025 06:50:33 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1391432EDE;
 Tue,  1 Apr 2025 14:50:32 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, peterz@infradead.org
Cc: andriy.shevchenko@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue,  1 Apr 2025 15:44:08 +0200
Message-Id: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743515437; x=1775051437;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=39dw4BZHdCa1g3Uare5eNbAKiAqjVx6gWMtRg8KXg6g=;
 b=P6B7Jt3VvS9KPznolE1NCkpd9yN5tB3VkvvAsrHsDPgTQFT2sWlT9/fm
 KQt1Uf75TRjA+k1rBVNxm6OfJKwZIGwIbun7BzU1Y3pou4w+SZaB2tQR5
 ixSTnd77RQpxLrKwKAZc4qqwfwnh1kso7WjslaxzQ7IcNRvQnCuBZyhvu
 C8mPZ92/j2kbRdZH0h/tkCuecMNuXpF+a+aSB0DuNTVAHfHlindOpZu0y
 ft8P4D/4oqn5qPX1BUfar98ECjaRnt1K/4xCZjRzM2tlSUFw/zlnZk//g
 v0WD1VL6rL5vdh0GchFZhFfwdhZwJEDPe5qHRUVvHpXpip1NgS0dr/fAb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P6B7Jt3V
Subject: [Intel-wired-lan] [RFC] slab: introduce auto_kfree macro
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

Add auto_kfree macro that acts as a higher level wrapper for manual
__free(kfree) invocation, and sets the pointer to NULL - to have both
well defined behavior also for the case code would lack other assignement.

Consider the following code:
int my_foo(int arg)
{
	struct my_dev_foo *foo __free(kfree); /* no assignement */

	foo = kzalloc(sizeof(*foo), GFP_KERNEL);
	/* ... */
}

So far it is fine and even optimal in terms of not assigning when
not needed. But it is typical to don't touch (and sadly to don't
think about) code that is not related to the change, so let's consider
an extension to the above, namely an "early return" style to check
arg prior to allocation:
int my_foo(int arg)
{
        struct my_dev_foo *foo __free(kfree); /* no assignement */
+
+	if (!arg)
+		return -EINVAL;
        foo = kzalloc(sizeof(*foo), GFP_KERNEL);
        /* ... */
}
Now we have uninitialized foo passed to kfree, what likely will crash.
One could argue that `= NULL` should be added to this patch, but it is
easy to forgot, especially when the foo declaration is outside of the
default git context.

With new auto_kfree, we simply will start with
	struct my_dev_foo *foo auto_kfree;
and be safe against future extensions.

I believe this will open up way for broader adoption of Scope Based
Resource Management, say in networking.
I also believe that my proposed name is special enough that it will
be easy to know/spot that the assignement is hidden.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/linux/slab.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 98e07e9e9e58..b943be0ce626 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -471,6 +471,7 @@ void kfree_sensitive(const void *objp);
 size_t __ksize(const void *objp);
 
 DEFINE_FREE(kfree, void *, if (!IS_ERR_OR_NULL(_T)) kfree(_T))
+#define auto_kfree __free(kfree) = NULL
 DEFINE_FREE(kfree_sensitive, void *, if (_T) kfree_sensitive(_T))
 
 /**
-- 
2.39.3

