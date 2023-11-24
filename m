Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4D47F782D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:50:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B36542187;
	Fri, 24 Nov 2023 15:50:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B36542187
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841025;
	bh=dEaoCyBFF2n5PXivjMyDBrYKc8H4ezWTDlOUy4Wl5ZI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NqjvRxgfvv81RpxBVScLYvyIDrKjehMjchIRPrPkPnUemxDVG/1WpTvv/Vnqgb6ct
	 1TlZWZsKq4fYbm/hbt1SHC7QziUr1rxqd8V5H+2W2W5fZD2y9fNRk6/3rYi//4Ekmp
	 3dpPeY6vWWlYxRoT0CEKwVTmR/o0AVz0mAEEtF2T4sbgVKg4opsKJit4ht6ZfQfPef
	 lUk8ibuA8DlSO53Nda9037GgrYrEauSWbPMy/y9VwzaifUU2zedjI+mZh8Jw9jHUMs
	 iV4l8p58FkMo5YkiyChQ3jGabGB+07/6xgJ4GwUbENQbDZjDRGYmH8MpWTTHidCw+M
	 LUxKb04CL4yRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2oxSjxD9UQVs; Fri, 24 Nov 2023 15:50:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B8A642158;
	Fri, 24 Nov 2023 15:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B8A642158
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 187DA1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF76C42174
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF76C42174
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVuMhlKoxFYb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26B2942171
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B2942171
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592433"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592433"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15659777"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:50:01 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:19 +0100
Message-ID: <20231124154732.1623518-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841008; x=1732377008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C2fNXu9LchJZpawCUkZ551134BYCp00pguSifkMlGMY=;
 b=dxrzZAvN7v90+Cz8fV+Dgszx0Tf8CUhMlUTDCKd+pojvCiz+y61OUJ8N
 mlAlg34sdnfajxU6Ks4KEydsLxxmrzMtRx/r7ic+YJxkRems0hme3PGX0
 zs9Z/9yYOX8RjUdtHYZbDuqV12b9FsRTsP5s78iUGm4HDFS+4Mk6eRAPh
 DT+Ezq856k98y8h5hxMcc9/OnufCtq8n6kKMfmepxhROvOgA7h4aXY1VE
 BtVIFqkIuugFetDqedywu4u+p7ui12yBRnmYBoOwqpjxzvD2GrzIcoXMB
 X48Sza+qEaOIxyluFUjjLFxQPl4ca5En0l4wlo+ZP7OJ7XIABGDIqH1pj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dxrzZAvN
Subject: [Intel-wired-lan] [PATCH net-next v5 01/14] page_pool: make sure
 frag API fields don't span between cachelines
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After commit 5027ec19f104 ("net: page_pool: split the page_pool_params
into fast and slow") that made &page_pool contain only "hot" params at
the start, cacheline boundary chops frag API fields group in the middle
again.
To not bother with this each time fast params get expanded or shrunk,
let's just align them to `4 * sizeof(long)`, the closest upper pow-2 to
their actual size (2 longs + 2 ints). This ensures 16-byte alignment for
the 32-bit architectures and 32-byte alignment for the 64-bit ones,
excluding unnecessary false-sharing.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index e1bb92c192de..989d07b831fc 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -127,7 +127,7 @@ struct page_pool {
 
 	bool has_init_callback;
 
-	long frag_users;
+	long frag_users __aligned(4 * sizeof(long));
 	struct page *frag_page;
 	unsigned int frag_offset;
 	u32 pages_state_hold_cnt;
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
