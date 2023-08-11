Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7219C7788B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 10:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 009B260BE2;
	Fri, 11 Aug 2023 08:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 009B260BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691741238;
	bh=t2+pFnoa4BEXToJaZfwsJf9C0IeLS8nNlukvFNTiebo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X9GrVtDs+UUbdAO5AP8ItGv2DcvbXbF5f/Ja0tWvwgJwNKCqOXH8R4tGudiO76JGV
	 Fj6eQiFtXBerDtDJku5tFNcDZ8xUIvLq207mVClxtiCQrKrGDD/ENkkllEL5lStrxe
	 QCit0+Yw3Z9SYAk5LO+zT6w/q/3yK6EOrgTisSD6hgm8PSTgeTT+sP1GwanGvdAoBR
	 njXw6I9cRXCFRWoMnX5bW34/e9X2cd35XVnMhyZnUecGZSdJTMrVVPAYnTMMuN0MuY
	 JquVGTApvhlQhDw5XNhDsEA7R+5ZUGiTNRadU0Z1B9pTarWBpaVGj+rMfSST8DROFv
	 NcTIOyIfkTntg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mXxA5JcwIhVz; Fri, 11 Aug 2023 08:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E734C60A74;
	Fri, 11 Aug 2023 08:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E734C60A74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 373881BF3D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E9DC4018F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E9DC4018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L56cOEbexn1p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 08:07:11 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2475840189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2475840189
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-166-ffz9JTtnMoGESd-qCma8iA-1; Fri, 11 Aug 2023 04:07:06 -0400
X-MC-Unique: ffz9JTtnMoGESd-qCma8iA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0D12185A7AB;
 Fri, 11 Aug 2023 08:07:05 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.224.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11DF12166B25;
 Fri, 11 Aug 2023 08:07:02 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 10:07:00 +0200
Message-ID: <20230811080702.1254319-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691741229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=b9zLg+YA7rcLTdlp6JGjuFJCkpAIeyWLtwLDufRRJuo=;
 b=CfukIGP53Zny5Fe2Igsv4dVUO+cepxoimTREh6HQRG/uxiw3XJpbqSWs3puyCULwpYyf8x
 Jh+7oqGPX//qplxKkOYSO2x+CqltZUPnC5yKA+Mmjf5tHtjuQe/q+ymld22xbdrMiTWrCv
 t1voVk5yu9aP4RmOBzeu6mGn7l/IczQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CfukIGP5
Subject: [Intel-wired-lan] [PATCH net v3 0/2] Fix VF to VM attach detach
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
Cc: slawomirx.laba@intel.com, przemyslawx.patynowski@intel.com,
 kamil.maziarz@intel.com, jesse.brandeburg@intel.com,
 norbertx.zulinski@intel.com, dawidx.wesierski@intel.com, edumazet@google.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

v3: added tags from previous reviews

v2: fixed typos in the description of the second patch
https://lore.kernel.org/netdev/20230809151529.842798-1-poros@redhat.com/

v1: https://lore.kernel.org/netdev/20230807094831.696626-1-poros@redhat.com/

Petr Oros (2):
  Revert "ice: Fix ice VF reset during iavf initialization"
  ice: Fix NULL pointer deref during VF reset

 drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 34 +++++--------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 -
 4 files changed, 12 insertions(+), 32 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
