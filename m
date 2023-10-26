Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C17D7E98
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 10:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AECE4171D;
	Thu, 26 Oct 2023 08:38:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AECE4171D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698309521;
	bh=nJ4UtkkBqxdaBlCrPmtHnb0qQjjsZLiffXClFLsLNEs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cSpLNhHETXX8gUsCYvFQUDS/R1QoaJ/nlg48ApgnDwGpVc2c6x8pL6EFNg8ULgv9h
	 XXg5/Bq+Ar39zalMlOgjDYbuziVA5Mo79VfmStSS6+XWM2wtnhaodPsTOkP8Q5NRSp
	 Pt3LgEp2Sz91MtsIxLNAZCkwKYNdBgJWJBFEPArd5fApvY2iBO5HlAtja9pU+NiEsv
	 3ar7EANhzz05+pdSRnHkkyu6YAmRn9i+ghMeDlFItMOFDIDYC8NiJ+3JoYOyk3y5EC
	 seP6iBqR/pNeec0FHUuyUWyFoOEWS1Ln9zYPpW1qoKM5FqcWewsTWq5qPoYMUKEP5T
	 XG2VktgExtsFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTrPQKR1MHZW; Thu, 26 Oct 2023 08:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD61C416B3;
	Thu, 26 Oct 2023 08:38:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD61C416B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BE9E1BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3EA241700
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3EA241700
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TQg-ZGByax9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 08:38:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3DF4416B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 08:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3DF4416B3
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-320-qldHcjaqPfG72UpL-PRVFg-1; Thu,
 26 Oct 2023 04:38:26 -0400
X-MC-Unique: qldHcjaqPfG72UpL-PRVFg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B2F61C07244;
 Thu, 26 Oct 2023 08:38:25 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9BC671121319;
 Thu, 26 Oct 2023 08:38:23 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Oct 2023 10:38:22 +0200
Message-ID: <20231026083822.2622930-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698309511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=BGnModyxxabVDouEDH7V4XE5H33aX5s1L3RuIOlJgco=;
 b=G3N5hkGh7axU0OXKRj2vM3qqOSsvScP7JWlGXqdIKucc1PcIwosfEIOxH2D9FckY7tsIXC
 tB8PqWJVGZkhSAUVLTZpZWRVorqPNhEvUgHbmjR267jKQH1kakx2XJKSqxWv/bK5WoTol/
 bwfZpv+8VS+DCFpZMKLP4d21i/MpX94=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=G3N5hkGh
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Remove AQ register
 definitions for VF types
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
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i40e driver does not handle its VF device types so there
is no need to keep AdminQ register definitions for such
device types. Remove them.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_register.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index d561687303ea..2e1eaca44343 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -863,16 +863,6 @@
 #define I40E_PFPM_WUFC 0x0006B400 /* Reset: POR */
 #define I40E_PFPM_WUFC_MAG_SHIFT 1
 #define I40E_PFPM_WUFC_MAG_MASK I40E_MASK(0x1, I40E_PFPM_WUFC_MAG_SHIFT)
-#define I40E_VF_ARQBAH1 0x00006000 /* Reset: EMPR */
-#define I40E_VF_ARQBAL1 0x00006C00 /* Reset: EMPR */
-#define I40E_VF_ARQH1 0x00007400 /* Reset: EMPR */
-#define I40E_VF_ARQLEN1 0x00008000 /* Reset: EMPR */
-#define I40E_VF_ARQT1 0x00007000 /* Reset: EMPR */
-#define I40E_VF_ATQBAH1 0x00007800 /* Reset: EMPR */
-#define I40E_VF_ATQBAL1 0x00007C00 /* Reset: EMPR */
-#define I40E_VF_ATQH1 0x00006400 /* Reset: EMPR */
-#define I40E_VF_ATQLEN1 0x00006800 /* Reset: EMPR */
-#define I40E_VF_ATQT1 0x00008400 /* Reset: EMPR */
 #define I40E_VFQF_HLUT_MAX_INDEX 15
 
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
