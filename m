Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064587CB029
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:49:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E281B4151F;
	Mon, 16 Oct 2023 16:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E281B4151F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697474953;
	bh=yf1+t1Gcn80Tki4ma9JvcW+Mr71Xz0XTBDZTOR96mvM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gXPvJM6XIYAZZroAsMCGIcQJe3noGKyWkLyU9i7wxStxBDtRT/yXaVUSKoLQ+287S
	 66Nr6YKo8adKQUF9ghGGpbheLkOox7DgZIll2O4uWhU8bEPLRktwsmm7CjKoX6Oz9l
	 mlB0vzBCygEibf6ivz58WU4aiM+AkXqBMj4uJVk4rwXxiUycsBmInLESCS1uw/23kK
	 6dyh4NF8O0+MBnMW0AhfTooSq+jVReSa2JfCviEw1Nv2WxavofTcskX8VlGQvJw9Wx
	 doRtOJKc7KWAr2nBCZ+wgdEMUKw8y3/LmBZDyjRa5FSFuVzTnp6HWVSGya8oOzh4eb
	 BMa/v6yV4q03Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id msckcKAuv3MR; Mon, 16 Oct 2023 16:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A75BE40474;
	Mon, 16 Oct 2023 16:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A75BE40474
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9807B1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61FAD81AEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61FAD81AEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53z_4nUJoyuL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:49:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A36681A92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A36681A92
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-xpG1QAN7PQi-L2j31zBYAA-1; Mon, 16 Oct 2023 12:49:02 -0400
X-MC-Unique: xpG1QAN7PQi-L2j31zBYAA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C5191C0BB4E;
 Mon, 16 Oct 2023 16:49:02 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D67FA492BEE;
 Mon, 16 Oct 2023 16:49:00 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Oct 2023 18:48:45 +0200
Message-ID: <20231016164849.45691-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697474944;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=4pxibnTyWUA8a8vki+wQumNwDWmRgaUk+tRPZ+po4KY=;
 b=DaNKqz96JxbqJAQF/ns373uBm6eavvxtCrENDAkF1qFuSVlrIrYFh+eLjkv+9tnb6LTyZ6
 cVK7y4aXVIFsGyZdABCcuuFwOrbXV0ho9hr1RKaE5f7iqp1jbyUAEEZe1zppbR71g3o7BG
 b0MDXMep6MKTxl/FPh532zRWdUWMwJo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DaNKqz96
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] iavf: cleanups,
 dead code removal
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The first 3 patches are quite simple cleanups.
Patch 4 removes the whole unused iavf client interface and the
supporting code.

Michal Schmidt (4):
  iavf: rely on netdev's own registered state
  iavf: use unregister_netdev
  iavf: add a common function for undoing the interrupt scheme
  iavf: delete the iavf client interface

 drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  28 -
 drivers/net/ethernet/intel/iavf/iavf_client.c | 578 ------------------
 drivers/net/ethernet/intel/iavf/iavf_client.h | 169 -----
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 121 +---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  14 -
 6 files changed, 20 insertions(+), 892 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/iavf/iavf_client.c
 delete mode 100644 drivers/net/ethernet/intel/iavf/iavf_client.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
