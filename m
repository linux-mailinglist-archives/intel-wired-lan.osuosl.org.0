Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 714767EE40E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 16:21:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07E664286A;
	Thu, 16 Nov 2023 15:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07E664286A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700148091;
	bh=+HFV5FU9Z9UOaucAZAsnkk+ql87o8aFYtt5gn0sKFA4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GB5DKbXJEldY+9/cy2W8arJpQk9juRmfaCG/5bZzD1DOPACP3CkFnOhar1TRKML8H
	 LsCc2lphxZCcGDhh8rxm2pABg4jKFq4T+L+BmHs6lQFV/fSXo3paYBiH9KPbnggi1i
	 UT7xC/iLIafQGCE1Tz1DqG6I6FpFFvKtYqrB3AnOXg3XTpI2lpkYaLi12OoP5YnGJp
	 NZXRBwTg42TRB8FQs2Yj3wVqyMJxLwFn3BzaVh72ooRymHok28Ig09yWh9lV1Nkihx
	 n/q58YMDGHj+M7vWDQm3eWt+2j0y5sayII5Tl1vaQB+kXAmCuzhWfe8P+dJuqrCUz3
	 lVRueHUc3Mikw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sy5EE0YzENRO; Thu, 16 Nov 2023 15:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A20C842861;
	Thu, 16 Nov 2023 15:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A20C842861
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C45CE1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9935941A14
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9935941A14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXjsUnogHLi3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 15:21:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9663E400E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 15:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9663E400E7
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-86-vXhr4sYiNEWe0sMGxZlHsg-1; Thu, 16 Nov 2023 10:21:18 -0500
X-MC-Unique: vXhr4sYiNEWe0sMGxZlHsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46F6388D184;
 Thu, 16 Nov 2023 15:21:17 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 65F8640C6EB9;
 Thu, 16 Nov 2023 15:21:15 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Nov 2023 16:21:09 +0100
Message-ID: <20231116152114.88515-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700148082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=DV6T2aL0JMAo25GbZDKP1OmNls93+HQ+M7fhmNoylb4=;
 b=OlO+ndeE6lRnqptAKIwoW786lEhWX51DaovwZdb1+Xj97fryM2ebZPNepK+rcUSoeydwmw
 W0fLmN047NBECPA/byKg9gp6SGV1+MEl+Nn0653zkQEvFz7yaI93+JbVSkKFTWW5fB827/
 ayAl6TJH/06HF/UCcVMEh1xM0mrIjTc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OlO+ndeE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/5] i40e: Simplify VSI and
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
v2->v3 - correct patch files (v2 was broken)

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
