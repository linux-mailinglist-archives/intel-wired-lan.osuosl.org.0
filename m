Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D190E6C4FD8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 969B182253;
	Wed, 22 Mar 2023 16:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 969B182253
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679500894;
	bh=kDAStB4OBhQAjWbJkqsMdmT68H1nvl2qhro4u4YACss=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Aee5FOViY/x21UuVLaclT29uRpKTv76T97ql9hXUB5hS6gtrDSUwW+ZJLUXcyBkFm
	 bgWe9rN6KmLXoLlwrZSqw48NuLR9EV/wRDHECeMtlZhJUO87naTM8ofbKVkwKZYyJj
	 Juw48NFz0LIldq+WJixh6Rj1DKK6UoZsI7lag1q9mY0p/j7SLfbCnQTp7ynNsZ4QUC
	 xMuW08IceZUbyEpEMIvmg5URMZ6xSvLDver0hCOPKe66nBSQGSEtpOXMAzl+tmG9SQ
	 ZDnsmOW1OpuF0Q7nsW6op5f3qbLqMtCneYQPsA+ustDUFw3cAVCDgQH/l0wNAJHhys
	 CDbh0xWKbaHVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBDvxTy56umY; Wed, 22 Mar 2023 16:01:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2F4B8225C;
	Wed, 22 Mar 2023 16:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2F4B8225C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BB441BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13C646144E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13C646144E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76ttkhArN6rY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:01:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C737660B12
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C737660B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:27 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-kI6ftGVvNrafzbLAcP1GOA-1; Wed, 22 Mar 2023 12:01:22 -0400
X-MC-Unique: kI6ftGVvNrafzbLAcP1GOA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B62F91C07561;
 Wed, 22 Mar 2023 16:01:13 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E43E1410F1C;
 Wed, 22 Mar 2023 16:01:13 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 5873630736C72;
 Wed, 22 Mar 2023 17:01:12 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Wed, 22 Mar 2023 17:01:12 +0100
Message-ID: <167950085059.2796265.16405349421776056766.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679500885;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u0vcj8yQCVSq1K7a3xv3DSDoQVn1iGPLpiir1Gw25As=;
 b=BHW0pzdLKJlaO4lf0k8OZbciubdOTpti3wx1kmNhg4R+HuVTFvBalDWwoVtdQeDCCY2URR
 JddabTjjUUp3H+HNsX5SqWdafYUawuSBa8P6LO6rabzlsomWCnyFeH+VNgzbHAM2UjCWw+
 avwfwExhm1IzccNjtbLei4PE0DPmsTA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BHW0pzdL
Subject: [Intel-wired-lan] [PATCH bpf-next V3 0/6] XDP-hints kfuncs for
 Intel driver igc
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implemented XDP-hints metadata kfuncs for Intel driver igc.

Primarily used the tool in tools/testing/selftests/bpf/ xdp_hw_metadata,
when doing driver development of these features. Recommend other driver
developers to do the same. In the process xdp_hw_metadata was updated to
help assist development. I've documented my practical experience with igc
and tool here[1].

[1] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org

This patchset implement RX-hash as a simple u32 value (as this is the
current kfunc API), but my experience with RX-hash is that we will also
need to provide the Hash-type for this raw value to be useful to
BPF-developers. This will be addressed in followup work once this patchset
lands.

---

Jesper Dangaard Brouer (6):
      igc: enable and fix RX hash usage by netstack
      selftests/bpf: xdp_hw_metadata track more timestamps
      selftests/bpf: xdp_hw_metadata RX hash return code info
      igc: add igc_xdp_buff wrapper for xdp_buff in driver
      igc: add XDP hints kfuncs for RX timestamp
      igc: add XDP hints kfuncs for RX hash


 drivers/net/ethernet/intel/igc/igc.h          | 35 +++++++
 drivers/net/ethernet/intel/igc/igc_main.c     | 94 ++++++++++++++++---
 .../selftests/bpf/progs/xdp_hw_metadata.c     | 18 ++--
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 51 ++++++++--
 tools/testing/selftests/bpf/xdp_metadata.h    |  1 +
 5 files changed, 176 insertions(+), 23 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
