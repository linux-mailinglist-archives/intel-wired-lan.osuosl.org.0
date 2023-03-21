Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE5E6C3329
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:47:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C92140BD2;
	Tue, 21 Mar 2023 13:47:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C92140BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679406438;
	bh=Cv1xBFHX05mbXmGMyqb1J3bhHv5tF8aPBtXAjQnQhbU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WbOkJoaQL5+HDum9yZ/pO5x1p1sXhWWxfFPzMJtRWSrM+A0F21gr47u9Sn1fdwZd+
	 o9LohxE3Mkbzk0UXTbKf7jzePOrevHLh5WhRCj5dBS+hebAECSBOYqZoXiN9PtUOaF
	 qJKQYkWkiprYu6WFbs5VhJJxxddE9kbW4WCVVm5jUOy52m9MUKjEfQ+55ELQUFp0YD
	 Rbx0rAJXZPAjLIDZanGGvfASAN27V6WdPHTJV4IT7Ss1YZ9N7P/Qx/OlWT0i0UwTPB
	 xs6DEG9S0eKv53/8WzYfMB+E6oryoI2MHNEcssqMpL1QSD8Kp1LCgBP/nR/sBt9D20
	 KnlTDouBIHTvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJIrHBJ0WFAt; Tue, 21 Mar 2023 13:47:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EDC840BCB;
	Tue, 21 Mar 2023 13:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EDC840BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B14C1BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1240C40BC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1240C40BC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ymr98lXoc_TK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17AD940BCB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17AD940BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:08 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-354-RJS224pMPayh0XBeCSSY6Q-1; Tue, 21 Mar 2023 09:47:04 -0400
X-MC-Unique: RJS224pMPayh0XBeCSSY6Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0C1F3815F79;
 Tue, 21 Mar 2023 13:47:02 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 62BA040C6E68;
 Tue, 21 Mar 2023 13:47:02 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 809E8300000D0;
 Tue, 21 Mar 2023 14:47:01 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 21 Mar 2023 14:47:01 +0100
Message-ID: <167940634187.2718137.10209374282891218398.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679406428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u0vcj8yQCVSq1K7a3xv3DSDoQVn1iGPLpiir1Gw25As=;
 b=W9sKI+GEmmq1Pa8Njiuf+hwKg4+Z3kuDyhwYLTq96gGN/9Ya7ZLBIF0TzxTLJqjdeHS67b
 gq58ciXdMx97Ugc2iUFMVUuXjtastES3vTEy3++QBbdtPg/YEOJ/CeXmjMEEJU0NDX3X5S
 dYuVMpx+Yx+c8vZWD3y7hSgcrSN8tS4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=W9sKI+GE
Subject: [Intel-wired-lan] [PATCH bpf-next V2 0/6] XDP-hints kfuncs for
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
