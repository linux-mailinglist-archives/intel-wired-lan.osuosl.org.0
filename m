Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13B7EE31B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 15:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6656941A3B;
	Thu, 16 Nov 2023 14:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6656941A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700145695;
	bh=FaTR8UWQez5bv98irbr6U2vLQ/eLrQf8kElzI3+LUgk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FBWN05erobsGIwrKf4KV5rlp0aYxLl7klg1A5pXCn4JCJ0QmXI6dgE0ZL+iQKjQz9
	 McL6ngx+pHPSb/kuoE2N7w6Slsq7/6sdi7RLYFQTj4Q2c/0997ScYFPvJiJd0lIy8K
	 6J87P2qFNyMMXM4yPfENBo541IzghWe2Jy4ukFLOGybEljbQCyLxW7gEoDIBmdBq1f
	 QwsY3mDM+2W98BmOsRQvXXjbUUFaiAxizjfIwCAKGLULlzeXS/FDdr7uAVONJxRxBP
	 ym4YcYl3M2KbZ72iA3L/z1C3KjHYDZ5Srh16nus1K72WXBV4m1d5BQ5H5eSLt6+TEb
	 h93Ws2Cb4f9Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qgmiRVLLWvcU; Thu, 16 Nov 2023 14:41:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EA0C402F3;
	Thu, 16 Nov 2023 14:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EA0C402F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE0D1BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F8CC6FA7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:41:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F8CC6FA7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdYI4dg4ljuJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 14:41:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2D076FA7A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2D076FA7A
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-277-ahEH4LZvP-aUNoHtbYXUAQ-1; Thu,
 16 Nov 2023 09:41:23 -0500
X-MC-Unique: ahEH4LZvP-aUNoHtbYXUAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CC442800B42;
 Thu, 16 Nov 2023 14:41:22 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 956761121306;
 Thu, 16 Nov 2023 14:41:20 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Nov 2023 15:41:14 +0100
Message-ID: <20231116144119.78769-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700145686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=0n2sOTqh54K6KjJovop+KA+rmVAdCcqfFg/Rllk/gGo=;
 b=AYAGySi+wL0foSh3QHeZusCZ+oEduVE6MsLQ4KV0c9lY7GeTxBoGn5acr0xzqi9ySdXq4y
 5EWjamUlH6/zp4aEuGWFCxBxzvVf2afVhHKCjTyw0q+2CsMZYo7DFIU/UjJ20QkqNb2jUO
 J4pPuwTdSoWK4s6KSsBzzen+LLZ+Iz4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AYAGySi+
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] i40e: Simplify VSI and
 VEB handling
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
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

Changelog:
v1->v2 - small correction in patch 4 description
       - changed helper names in patch 3

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
