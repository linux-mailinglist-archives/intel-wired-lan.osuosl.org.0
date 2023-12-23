Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F54981D16D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8FEA42DA0;
	Sat, 23 Dec 2023 02:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8FEA42DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300370;
	bh=ilvc2ZKNF49vUKFntGx/2nVp7RVWgUEUcRgbMbYkSWQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1zgUAqZYo9p0kWS1hulZpdy3BEHo2sgATAICWZ2J4QDYZJljRFjpkWSxWpIacWRk4
	 dASmBawgHJTPDcSP4AeH2YwrVgqJP5+cnmaAnjic8FY0otZpFz+HtRXdGcHgyU3IPB
	 Q4CvIGKoXtXzBaL3SZiHFcAOIuhPln3/tWgxjv9c1dY1z05/aHByMS6Qm6Sqy8cCkx
	 m05lno4hO1aPHCBWUbdb6O7fgWYGitE8FCTP6iMq6up9w1UUveoXPrjEksgKlCNDq8
	 IwaXISL8+5J+JcIhhVIcX1fXws5kI/tn6gryqfThUWyoUuob5tvPrq+BH9bPmhUVJn
	 40f7VMhBLj0Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-SvUBfbHrBQ; Sat, 23 Dec 2023 02:59:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96C9D40348;
	Sat, 23 Dec 2023 02:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96C9D40348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 752511BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D97060A9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D97060A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwfkbQkfWCi3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8F0E60A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8F0E60A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610905"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610905"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537510"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:02 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:36 +0100
Message-ID: <20231223025554.2316836-17-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300345; x=1734836345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Cam6ielx4SiTFi9eZoINF4R5A6ww9rh77PqH8LO7LY=;
 b=MvEWwNfdMDBTgN8s8ujU89w5D54sd0rs8g/+9h8OQZHikMWsFrL6t+Ze
 t4Z4ezLdZmOsRWEtbqP+jLlGE4saKDjMrJk3okORnCKZrt7mZNpdQmQxx
 AACzWfD+RQU4+PtxNFyrT2wYRsNpzWgbt4rswAgh4uxxRxpOE1Vz0dZ9D
 r1io/UicwYBhD9lqNHD1yFZxTf1uZnMLhswJwU8Py7HVAsWlf3VK+0l8d
 quV7wZ+0di3I0gPzTLFMr3BfK+zWRdI4HPTciKjea0os4HeNQcdFsJqhf
 O5B5ver9jj4jOiotDKYYr+yYHEztXlNf985sNn/rb4gl6gFp8iauUAWRN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MvEWwNfd
Subject: [Intel-wired-lan] [PATCH RFC net-next 16/34] jump_label: export
 static_key_slow_{inc, dec}_cpuslocked()
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sometimes, there's a need to modify a lot of static keys or modify the
same key multiple times in a loop. In that case, it seems more optimal
to lock cpu_read_lock once and then call _cpuslocked() variants.
The enable/disable functions are already exported, the refcounted
counterparts however are not. Fix that to allow modules to save some
cycles.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 kernel/jump_label.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/jump_label.c b/kernel/jump_label.c
index d9c822bbffb8..f0375372b484 100644
--- a/kernel/jump_label.c
+++ b/kernel/jump_label.c
@@ -177,6 +177,7 @@ bool static_key_slow_inc_cpuslocked(struct static_key *key)
 	jump_label_unlock();
 	return true;
 }
+EXPORT_SYMBOL_GPL(static_key_slow_inc_cpuslocked);
 
 bool static_key_slow_inc(struct static_key *key)
 {
@@ -304,6 +305,7 @@ void static_key_slow_dec_cpuslocked(struct static_key *key)
 	STATIC_KEY_CHECK_USE(key);
 	__static_key_slow_dec_cpuslocked(key);
 }
+EXPORT_SYMBOL_GPL(static_key_slow_dec_cpuslocked);
 
 void __static_key_slow_dec_deferred(struct static_key *key,
 				    struct delayed_work *work,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
