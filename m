Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FAA7D4989
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 10:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 008228443A;
	Tue, 24 Oct 2023 08:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 008228443A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698135150;
	bh=VQpRPq4Wj9uoSPx20v3ceG8WWOv8GMcc/gLINjjLsjA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tsRnIAB3GqvFHKO2k73GXmG4KHOIJfhb9o2mTBeHvkBhhGHYx9/+m+fTMrIDIuhju
	 3mhoI42em002RflaeOLh4KRCZA3BJFRxYmX2YxrxfxZhWtZWyxzIOdLzR3xRbRdu/E
	 TuaRL311Ygfc9mYD16BoINepsZvgMvcDL7Uf+1WzHX0ZGpJjjOkQXB52XWvGDOzaPW
	 YUoH+HCo3jk5LfhKDYwTKuWVdYLQDNJBM2kuyEZ1cPhLLOXkH7JtENRmS0dQ8f8wm5
	 Z0ZOwl5vMEqwGLo+dy7urXVKL0RgIcqYQYRyXYLLmU+yDbhNosa7nB+gnVsJCqVDLi
	 k2qu7zkSrh9+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E6h4RUTNc14N; Tue, 24 Oct 2023 08:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 757DA8443C;
	Tue, 24 Oct 2023 08:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 757DA8443C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8501BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A73F6FA96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A73F6FA96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBTdurJnuTCT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 08:12:22 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 949906F5FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 949906F5FE
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-277-yxYj-cPHOz2shsJQt_URWg-1; Tue, 24 Oct 2023 04:12:16 -0400
X-MC-Unique: yxYj-cPHOz2shsJQt_URWg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D73231019C86;
 Tue, 24 Oct 2023 08:12:15 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC239492BFB;
 Tue, 24 Oct 2023 08:12:13 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 10:12:08 +0200
Message-ID: <20231024081211.677502-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698135141;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=M4KgBKcWnOf+HdfkmOB81ZgiYiCuChuxsC6xnZ9eoT8=;
 b=GfrjyfmgHZ7j3YzCoskLDNjo2ZLPr45DsPNYrUcgNsZU3Fxqls+jaJfHgnDpmjgwafbSvC
 MgpuF4FQBBVnjBflrgTnTfHEKNmRN5woFy9ALLyhLfaoCJU7OVaWnOQjC0MarHYBsHkqcj
 zUNygIyiXA2wRsvQalSUtRq0075cylI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Gfrjyfmg
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] i40e: Add and use version
 check helpers
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 dacampbe@redhat.com, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series moves an existing check for AQ API version to header file,
adds another ones for firmware version check and use them to refactor
existing open-coded version checks.

Series content:
Patch 1: Moves i40e_is_aq_api_ver_ge() helper to header file
Patch 2: Adds another helpers to check running FW version
Patch 3: Re-factors existing open-coded checks to use the new helpers

Changes:
v2 - Fixed indentation

Ivan Vecera (3):
  i40e: Move i40e_is_aq_api_ver_ge helper
  i40e: Add other helpers to check version of running firmware and AQ API
  i40e: Use helpers to check running FW and AQ API versions

 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 56 ++++++---------
 drivers/net/ethernet/intel/i40e/i40e_common.c | 48 +++++--------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  7 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 68 +++++++++++++++++++
 5 files changed, 108 insertions(+), 77 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
