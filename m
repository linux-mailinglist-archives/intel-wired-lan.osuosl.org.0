Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6659465F7D7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 00:46:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EBF782232;
	Thu,  5 Jan 2023 23:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EBF782232
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672962372;
	bh=mivuZNPMpJ1u2e5pNVZpfAkSqdsAWFm7gfIufY2O4Ws=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FbFm9fhShlkCOznapNu3NYMEQ7j0k3XAF0+hTY1sXvExi8z7rx0E401hCcmUbhBDS
	 5FHky8tsFBdYPyrchjSrjHPI1vk9N9g1iSF86KJ/V9tsv33WHL3L/xpp0mLihxHv32
	 jzIRUSNbltolJYPxiz2uqiGSFBkMztsO3jBlnsz+O9G7kaMIC8P56FCz6Vv90pWzh8
	 cfOiiIfre7L0IYdXcm6jrzTEYpF72OIIOCu9quF+98x8vXTwvWFypSNWvdEgFGNh4Z
	 ErNAx9DmdQOQ15RsRUXZquVxqCdW3+nbPnFbg6NYSDNZGHzQWHyT1cHuPnxegXzj2b
	 ufKnGkhIJ6cLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBkr7KELSPa2; Thu,  5 Jan 2023 23:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6965F82221;
	Thu,  5 Jan 2023 23:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6965F82221
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1D9C1BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 23:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBFB261297
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 23:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBFB261297
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FDxyLyE8nN8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 23:46:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6B2861295
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6B2861295
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 23:46:04 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id 17so21637pll.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Jan 2023 15:46:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ixmy6mGcgoBkvJjym9GQ9iC/bNIzdQTH6bspDgeDvy4=;
 b=tySvxQblY4wovrnIjdOFc9sVuiEOQTW9nNeEp/shvz1+u1aY3hfOsQ96LVljICyBju
 KdE5J8/sAnzzihaB1rgX2ranNG25XogE6Gkd4zvl4mt21aS8MD8r+uuCxj9aIFohNj6a
 Jgi9gLEvXt5rVcbqyUm2pbjvI7HdKKW+QgufBB5UYpTOX+hcQaPIpjBjEjPBBNpayO6b
 iko9hyMZo2HFTh2wXzylllr7IG0leOm9HrMXPb+XdPiFCjpbs5Jdoy9MgO8LPJ9jswRn
 FY3Pz/ZvdOdhg1lArNfhLbK6zxS/dUPickzoN19xha/t1VPsmOJMhYIWg2QXHb0nJQVQ
 5M3A==
X-Gm-Message-State: AFqh2kqZv8HBLch2Dgd+vPSl1xEOWgw4cYeh5rcz8BFX/oKk372XnqP6
 iIG02wPg36B0URuD7fg1LC5WAw==
X-Google-Smtp-Source: AMrXdXsQ29gxsjUu8TwAEiufSQwno9s8pvZUaHEdBElLVjiWT9haDQNYooObacLrznyAr376FCbTXg==
X-Received: by 2002:a17:902:8698:b0:193:a5b:ccf6 with SMTP id
 g24-20020a170902869800b001930a5bccf6mr1196588plo.0.1672962364271; 
 Thu, 05 Jan 2023 15:46:04 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a170903018500b0019258bcf3ffsm26402243plg.56.2023.01.05.15.46.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jan 2023 15:46:03 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Thu,  5 Jan 2023 15:46:01 -0800
Message-Id: <20230105234557.never.799-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1893; h=from:subject:message-id;
 bh=7oqp1H8bnjca8UKRWJizcoup+xvwTPIAvLIjStmgIhg=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjt2E5B/QBFZKrXqubEBxJWkonAnCaVOq5GJ3FscS0
 OD9vd36JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY7dhOQAKCRCJcvTf3G3AJlTVD/
 4hn023GoXsD0/jMdOjvZG3DjtedIRTLFclHpsVnAfKSEwTg9hkk/Z6AHKcCC/WsDyxnUfMCXmW5jZz
 8ziYYoZzJHtBy0M7wBUgzgxwdH9sOgg94Qj9AEj/ovDnfjJNMSSrorxm/PJre/U+RT3Hb9X3/W09I1
 Y1xRSvrO5TTjHUAOP90f7bnvp5A0BQ6uQ3RL6C0eOxSTcrVxhrv4pJiGYpRqW+xAa6dPkuYnw+zzwl
 0ItMswnDOsTQytcjgtcPqRqw7pmH5vzyGRzwkVo5V2TnNt3skeKNBMTfxnXrF6yOE1AMbun+X6rNzY
 R2XlShoDgfUIYEb7VF96k2Vwg9mF8fM+g0jC2iZjqmERyDj1Mnqu6s145AMUOv+z2LNUS3LvvF5xZr
 4+zoKrc14NELHWb1CZ6lCgBz/uyc9K6vGWTGTvLV080sqUd54uqJ00veOOAZRLij6afsCdGiiIzkZD
 H3Q860ipa63ykgKuAmxBGCuEyaWmzWO8NAyLN42H/gqOsV8Ydo7hpyWDOlDr8rvzmsq7XsZuMyLVib
 CXLtVIl18PrWLD4XpRayzh2gnMiIVnii32h496olyVC6QmZ9KKmM3zEhhoWojrFNclPf/HdZr4V+5x
 gtdYTagMrjmZ0n/yK08TAFqvMorhfXCKn5GqRMGQ90A5mg4MbO3wFzI/L8VA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Ixmy6mGcgoBkvJjym9GQ9iC/bNIzdQTH6bspDgeDvy4=;
 b=GQGTpbZ8i0H+pQVuEFS/65Vxh3N38d3B8Qxa0GhO13fYdDKPLvvcDpThsjFzLgM3iN
 HqqSkAojzTJ1ZyfI/h4Zf+xjZKbxsjbwWQnvxDePVyJWrCGpv9CFrDDTQBEsvMy/HxmT
 X6Xrpxmz7XzHy8xBw1arDnEJJ7/R1G+IWVPzw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=GQGTpbZ8
Subject: [Intel-wired-lan] [PATCH] net/i40e: Replace 0-length array with
 flexible array
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
Cc: Kees Cook <keescook@chromium.org>, intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
---
 drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 60e351665c70..3a1c28ca5bb4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -176,7 +176,7 @@ enum i40e_interrupt_policy {
 
 struct i40e_lump_tracking {
 	u16 num_entries;
-	u16 list[0];
+	u16 list[];
 #define I40E_PILE_VALID_BIT  0x8000
 #define I40E_IWARP_IRQ_PILE_ID  (I40E_PILE_VALID_BIT - 2)
 };
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
