Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A91D776381
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 17:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23BDB83478;
	Wed,  9 Aug 2023 15:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23BDB83478
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691594146;
	bh=ou2IKvAPGZuKOeDy3IpbyrtepyIB5yxD0ubJ7s03CdM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=278IyIyjnLfgNFljsI7/gzNYC7sKgCBkKQgfasQXlyj0FFbeAbz97MtVMgsQ9WMFN
	 oW1KBsA9LYHlWoy/jSjU7lZtc/0efzBfuvTjhETxRImzAY7bfLcRZ5hmDTrpl3cF8N
	 P7cJEf0hZBjjwFs1zxLjFEiVSU3oilhVSzdhVELb/vsVPpg2M5BV8u0RLPxtmaYupm
	 Msp7LzhUvKYE2BXOxGTiQjl4Tezz8341RRWmnMg/wBcAmFRA/hCff6ghE4UHu0lm1w
	 6oKC4qP2VwFDIcP+EDmKzTjb8DWCiPTKYJqVdSkxYhYXP4odeG6C18jdWukdNGAq6D
	 aLw2WYLkuCHJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhljOH-C-_oK; Wed,  9 Aug 2023 15:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AA4683260;
	Wed,  9 Aug 2023 15:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AA4683260
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1ED1BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1420883260
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1420883260
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S2fw5N3paP3b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 15:15:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C0E283252
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C0E283252
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-471-18Dl6cEXPQyMvO52VygV8A-1; Wed, 09 Aug 2023 11:15:34 -0400
X-MC-Unique: 18Dl6cEXPQyMvO52VygV8A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2021885CBE2;
 Wed,  9 Aug 2023 15:15:33 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.226.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B0CE2026D4B;
 Wed,  9 Aug 2023 15:15:30 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Aug 2023 17:15:27 +0200
Message-ID: <20230809151529.842798-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691594138;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ByiVqdXmSCalgud7Z24F8Ynz17kP0hKEcv57t3Zsk6s=;
 b=EPYPv2ELYXN7gmZFvl0LsC7p5Stq+XxvQAdoi2OeB7NsPIPC7/xsTKJfCW6waIbjLWDM0S
 28u4Ic9E5mjwIKiGOHjT/Rm2rQLwBZPdnBmul80Pb794nH9CBFf6F9k1i9HBRp6TADi7dY
 qdAomOj1BLin+uvK9kETLswGMMS0Bl4=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EPYPv2EL
Subject: [Intel-wired-lan] [PATCH net v2 0/2] Fix VF to VM attach detach
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

v2: fixed typos in the description of the second patch

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
