Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0F36DBC9A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 21:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBF6141DE0;
	Sat,  8 Apr 2023 19:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBF6141DE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680981898;
	bh=xdGFQXyqtFuYZBBEpWBLJjmjyZJIhv2kaYSMT8Mf1eE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=viIARAix0E6TDrtWXJ1Z4ZC475z1OeHXdic8y8PO8i8n0IKhBsscjQk9azSIV2faI
	 eXJBzHLg85VArJnky1QzfMCFu8eztjRvb+evAj8qG6ewfL/LLbrhl8bWmB5+WWRk/2
	 I5QqOnSM9k9pZxYnVMqAtFqC9RnhpQT2l/ijCd+pSHg6/Zebz5/FjnXAw7Xhzw1lFw
	 sPdwaf6EOL17IrCDlwo5kJ//rHpZPwlOWj6TTqjUAIR5wkjfQDw+v0HSM5Fysu4rPq
	 p3ORHAdZWG8KjE4ab2gLDDwjvwKHRWfotA76LqDDSlfOhpQ4iEBsUOI82EU/GEJJ/W
	 tyTdzXrNBEsXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id izC4htjqJy8V; Sat,  8 Apr 2023 19:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44DEE41D65;
	Sat,  8 Apr 2023 19:24:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44DEE41D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 314691C31BE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B0C982293
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B0C982293
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SWaAIGhowZNc for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 19:24:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2ADED82277
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2ADED82277
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-167-P2_bZ6THPmCcPhtHfVUSpg-1; Sat, 08 Apr 2023 15:24:43 -0400
X-MC-Unique: P2_bZ6THPmCcPhtHfVUSpg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96F7C3C0C88C;
 Sat,  8 Apr 2023 19:24:42 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E508492C14;
 Sat,  8 Apr 2023 19:24:42 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 641AB307372E8;
 Sat,  8 Apr 2023 21:24:41 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sat, 08 Apr 2023 21:24:41 +0200
Message-ID: <168098188134.96582.7870014252568928901.stgit@firesoul>
In-Reply-To: <168098183268.96582.7852359418481981062.stgit@firesoul>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680981888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+TaSHMvwM09VD5vY0j30SG5yCXiQxaklbNl6ijmKOnE=;
 b=Qacd8Gh8ADbTPTwA1ah+6ZTiFj1HrCb2S8rBlMBqLzNgP4bQILbJfVKIzc1kkxC+FvC1rs
 KnetsLoYZRdLtGHS+b/Ni8V8/iZBryGkSZ1eGWXrCIADaFueab3foCmw2AvmiaVyCiSpDx
 KIIlf+x8I97ikx0Vd0luWT2vaAGk5i0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Qacd8Gh8
Subject: [Intel-wired-lan] [PATCH bpf V7 1/7] selftests/bpf: xdp_hw_metadata
 default disable bpf_printk
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, tariqt@nvidia.com,
 yoong.siang.song@intel.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The tool xdp_hw_metadata can be used by driver developers
implementing XDP-hints kfuncs.  The tool transfers the
XDP-hints via metadata information to an AF_XDP userspace
process. When everything works the bpf_printk calls are
unncesssary.  Thus, disable bpf_printk by default, but
make it easy to reenable for driver developers to use
when debugging their driver implementation.

This also converts bpf_printk "forwarding UDP:9091 to AF_XDP"
into a code comment.  The bpf_printk's that are important
to the driver developers is when bpf_xdp_adjust_meta fails.
The likely mistake from driver developers is expected to
be that they didn't implement XDP metadata adjust support.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 4c55b4d79d3d..980eb60d8e5b 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -5,6 +5,19 @@
 #include <bpf/bpf_helpers.h>
 #include <bpf/bpf_endian.h>
 
+/* Per default below bpf_printk() calls are disabled.  Can be
+ * reenabled manually for convenience by XDP-hints driver developer,
+ * when troublshooting the drivers kfuncs implementation details.
+ *
+ * Remember BPF-prog bpf_printk info output can be access via:
+ *  /sys/kernel/debug/tracing/trace_pipe
+ */
+//#define DEBUG	1
+#ifndef DEBUG
+#undef  bpf_printk
+#define bpf_printk(fmt, ...) ({})
+#endif
+
 struct {
 	__uint(type, BPF_MAP_TYPE_XSKMAP);
 	__uint(max_entries, 256);
@@ -49,11 +62,10 @@ int rx(struct xdp_md *ctx)
 	if (!udp)
 		return XDP_PASS;
 
+	/* Forwarding UDP:9091 to AF_XDP */
 	if (udp->dest != bpf_htons(9091))
 		return XDP_PASS;
 
-	bpf_printk("forwarding UDP:9091 to AF_XDP");
-
 	ret = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
 	if (ret != 0) {
 		bpf_printk("bpf_xdp_adjust_meta returned %d", ret);


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
