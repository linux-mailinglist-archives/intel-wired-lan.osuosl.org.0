Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 866117E9C88
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Nov 2023 13:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02ECF82123;
	Mon, 13 Nov 2023 12:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02ECF82123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699880353;
	bh=sFmXDUgr6FV5UJ6lzYSKBUTm7pHzmMvYAfFwAgwR3SY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7KliDVgcYUcuz66iFchZZrH8pKtjZDpR7A8ADpjjLuCX7UeYYd4+fAlA5OyAbMGtg
	 XfqPBqerHO/ZHDLPNLXGeYtLwOxpcTe1kC2fsPJSHe0cUwhav6gS7DWhONZdPt7tVP
	 NIHkzcwi9qmbBv8MNpiGuyFn9XSzWC983mkKZEN6AkYiN6wDu5tJBDyYzB9kufPWqy
	 GTvlvDF0t5VSMQ5lv0x2M9s2Ju9YaRCTOREdMBvnwSLEAf17LZNtbeoPJBiQ6AsI/g
	 kP5XdSnjascVrdmSxG8ZYeFbBEZgV8rU8gF2NgtmegmTFLvqLczWcWIASVdnjXto88
	 1FQyUqvKLaThw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sN_zEaXx1hZB; Mon, 13 Nov 2023 12:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCAB381C6E;
	Mon, 13 Nov 2023 12:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCAB381C6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFF751BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B874160F6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B874160F6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t2WrZNc9C3XV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Nov 2023 12:59:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11DF960EFB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 12:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11DF960EFB
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-5CSz-NxGPJ6eMczELJzkPA-1; Mon, 13 Nov 2023 07:58:59 -0500
X-MC-Unique: 5CSz-NxGPJ6eMczELJzkPA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FCC7101A52D;
 Mon, 13 Nov 2023 12:58:59 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CF3136EE;
 Mon, 13 Nov 2023 12:58:57 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Nov 2023 13:58:51 +0100
Message-ID: <20231113125856.346047-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699880344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6hxrdskRZTcyj60uetuEZg5uoGSEuNK90978XmZljko=;
 b=IW37acbCieB0uJ+R1/qFerTXuhWHXX8AqZDCeXZEgKNtWR0Ibl3+BNfOuwxYTzNyPj6eJx
 43CQO3gs+mpBeJ5Xr82sSe1sgvyvhyU1WRmqu8kzop+TLWJG11jKJ/dJ/mMV5Nbpy8vFO9
 qNnwLw8IUFAS7f3bQngeVFGteSBDJd0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IW37acbC
Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] i40e: Simplify VSI and VEB
 handling
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series simplifies handling of VSIs and VEBs by introducing for-each
iterating macros, 'find' helper functions. Also removes the VEB
recursion because the VEBs cannot have sub-VEBs according datasheet and
fixes the support for floating VEBs.

The series content:
Patch 1 - Uses existing helper function for find FDIR VSI instead of loop
Patch 2 - Adds and uses macros to iterate VSI and VEB arrays
Patch 3 - Adds 2 helper functions to find VSIs and VEBs by their SEID
Patch 4 - Fixes broken support for floating VEBs
Patch 5 - Removes VEB recursion and simplifies VEB handling

Ivan Vecera (5):
  i40e: Use existing helper to find flow director VSI
  i40e: Introduce and use macros for iterating VSIs and VEBs
  i40e: Add helpers to find VSI and VEB by SEID and use them
  i40e: Fix broken support for floating VEBs
  i40e: Remove VEB recursion

 drivers/net/ethernet/intel/i40e/i40e.h        |  91 ++-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  10 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  97 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 563 ++++++++----------
 4 files changed, 371 insertions(+), 390 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
