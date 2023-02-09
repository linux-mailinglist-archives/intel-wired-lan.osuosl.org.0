Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 773C6690F24
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 18:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 103208220B;
	Thu,  9 Feb 2023 17:26:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 103208220B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675963577;
	bh=HX/RLngWY1m533t2Bk4NwhHE/hgrWDy5r9UtXBrUjJ0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m/cz0DWuQOO5I6Ma+/vlptOE1Nfnzezg3Kuiky2OZsnird37cHogxJXkDJrFlv82/
	 CU7gylpUHLQWSI6kzJJNFf6G4oC2HGnpIYMAqS1fS0yCfiHLTU4xw3Lqm1G1j0QDsL
	 l9r5HS0LlyEzquiHHvVAfVlB5Lbd/K/QBpcbw+PLG0CPyKGS0vjcmdc5+nZJ/ZhDvc
	 bzS6Bcd7GmD1+s8+3lKsb/UrAp5wIKfMvpLo4dzgl+nLu5W2ywKTslziDA1jfhSjxO
	 Aic9oNT9unoZAPPoiLPzRRtzcxqM5Olhxhx7sHQ9UYJs3FqXD+bbF1EQ8ZQPusftjK
	 Nd6ZhkMhLZzrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id maXZWIZCY_Mk; Thu,  9 Feb 2023 17:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1845D82200;
	Thu,  9 Feb 2023 17:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1845D82200
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B02A51BF348
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 17:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6369E821FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 17:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6369E821FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUbkgas0KN8c for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Feb 2023 17:26:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC1B88223B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC1B88223B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Feb 2023 17:26:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="328816324"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="328816324"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 09:26:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="756491303"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="756491303"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Feb 2023 09:26:04 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com
Date: Thu,  9 Feb 2023 09:25:36 -0800
Message-Id: <20230209172536.3595838-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230209172536.3595838-1-anthony.l.nguyen@intel.com>
References: <20230209172536.3595838-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675963566; x=1707499566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fHXo6ApTB3zduMWDDlzyMnxUIDah2FaKjMBee3KFFr0=;
 b=TmHgK4lIEqO6TY8E0mXEySGTw5aWd6ORIkuqdH/dhPJKSfXfBRrW8PY7
 wL7mfauHSzoF2Eu+2BGUC1sJJ4bjxCo9rdyPVXXVS30zEkNjMBhj1X9gM
 /Pv3vDmdU7hB8qFZi8hBbXJcOZ4QJk/0tN3K64PLGqxgQkKoxfnwnGeKm
 V/przr0A9K/CPNPUrD1KtYmBhzovDryW6Yv/5kRn6+5zqMpRhlWAL1ba4
 scPcc3M0SWKctu2WUK5yRT8TyJe7k90qJZUdwa/BA60v98aGzJttOiDgP
 CMvJ/76f6t7QBaHniJ4IODT3W8vDF13WCieIcUEl1Uho55NMDTQ/snZ5m
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TmHgK4lI
Subject: [Intel-wired-lan] [PATCH net-next v2 5/5] net/i40e: Replace
 0-length array with flexible array
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@nvidia.com>,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>

Zero-length arrays are deprecated[1]. Replace struct i40e_lump_tracking's
"list" 0-length array with a flexible array. Detected with GCC 13,
using -fstrict-flex-arrays=3:

In function 'i40e_put_lump',
    inlined from 'i40e_clear_interrupt_scheme' at drivers/net/ethernet/intel/i40e/i40e_main.c:5145:2:
drivers/net/ethernet/intel/i40e/i40e_main.c:278:27: warning: array subscript <unknown> is outside array bounds of 'u16[0]' {aka 'short unsigned int[]'} [-Warray-bounds=]
  278 |                 pile->list[i] = 0;
      |                 ~~~~~~~~~~^~~
drivers/net/ethernet/intel/i40e/i40e.h: In function 'i40e_clear_interrupt_scheme':
drivers/net/ethernet/intel/i40e/i40e.h:179:13: note: while referencing 'list'
  179 |         u16 list[0];
      |             ^~~~

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#zero-length-and-one-element-arrays

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index c13b1e57f864..60ce4d15d82a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -177,7 +177,7 @@ enum i40e_interrupt_policy {
 
 struct i40e_lump_tracking {
 	u16 num_entries;
-	u16 list[0];
+	u16 list[];
 #define I40E_PILE_VALID_BIT  0x8000
 #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
 };
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
