Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD36716E5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 10:01:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E820417A5;
	Wed, 18 Jan 2023 09:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E820417A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674032494;
	bh=W/rt1UDAeMT8oRqDcJLDJ0SaCVFQNCbKeC9dhiw0upo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=do8SJvfM+A98LMzeY3dIAkQXdppF+uOGAe9btJSCstPKh8oiP1Zy9KjiqBGSVnG7E
	 GgYvXo90ho1dAWeIUKXgY2gd/Yvxv4URlQ1TPiJKZKibQAaul9faVuWGe7UC0soz0a
	 9WINFvjY97RYxwYHoEYbqzL7Et0YAKzlMKJAQ8oWEBG4GPG5aO/rWDFna1HowDgOlG
	 gyubT22JqIpviz3lX17Llq+BQ95IzAO+u7/7ak0WHFwSC1QrgkjDUDPgmqHSZvo/BS
	 5Asw20aOojFVZz+V0SdKrdDespEMI8FLNcxHPelVxJUkGOzxfBlnQro5oikkWTAd/A
	 n1qoGZRrfrS7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TT-cdq72uV_o; Wed, 18 Jan 2023 09:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03FDA41781;
	Wed, 18 Jan 2023 09:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03FDA41781
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D15F1BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB38881EE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB38881EE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OWojHxdpm0yQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 09:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 101F081ED5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 101F081ED5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 09:01:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F126B61733;
 Wed, 18 Jan 2023 09:01:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FBEC433D2;
 Wed, 18 Jan 2023 09:01:22 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shannon Nelson <shannon.nelson@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Wed, 18 Jan 2023 10:01:05 +0100
Message-Id: <20230118090120.2081560-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674032485;
 bh=NLYd7TN6vH/s+v7UK420x0jDdP0vK/RzDH5BQQI3Y18=;
 h=From:To:Cc:Subject:Date:From;
 b=f2ti79ww970dIOt3KZ0XH9Tuw2nWIvtSyhV5GxRydxxL2HkeIJGviT3aWAp8dCcec
 fFBdV1Z/Vcm4InuSIId2ZPOSVpU1k0e5lvf72w/CVbBYd0oTDqiWjQnKzxge+e2vgh
 dy78n3FwHREzxmd/NQtu8fg2/qW9RPEAIx2fqevG1XQzK/YDF+g/jXQqNnzeoeOIjo
 NCcjymomjT7hFr520Ls2+UnkqDqLroQeaoJu/PrxCDou0oRlB3PXgOK1J3ijyeo4V1
 aiELqaE3n8eiW7TtHPG6NWzSzz/YOeog64RLE18uhNUMnFTT7/doyCH9dRVRZG/Dit
 32w9+xG+ZlgCA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=f2ti79ww
Subject: [Intel-wired-lan] [PATCH] i40e: fix dma alloc/free prototypes
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

gcc-13 notices a mismatch between the declaration and the definition
for a few functions that apparently used to return a i40e_status_code
instead of an int:

drivers/net/ethernet/intel/i40e/i40e_main.c:129:5: error: conflicting types for 'i40e_allocate_dma_mem_d' due to enum/integer mismatch; have 'int(struct i40e_hw *, struct i40e_dma_mem *, u64,  u32)' {aka 'int(struct i40e_hw *, struct i40e_dma_mem *, long long unsigned int,  unsigned int)'} [-Werror=enum-int-mismatch]
  129 | int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
      |     ^~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/net/ethernet/intel/i40e/i40e_type.h:8,
                 from drivers/net/ethernet/intel/i40e/i40e.h:41,
                 from drivers/net/ethernet/intel/i40e/i40e_main.c:12:
drivers/net/ethernet/intel/i40e/i40e_osdep.h:40:25: note: previous declaration of 'i40e_allocate_dma_mem_d' with type 'i40e_status(struct i40e_hw *, struct i40e_dma_mem *, u64,  u32)' {aka 'enum i40e_status_code(struct i40e_hw *, struct i40e_dma_mem *, long long unsigned int,  unsigned int)'}
   40 |                         i40e_allocate_dma_mem_d(h, m, s, a)
      |                         ^~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/i40e/i40e_alloc.h:23:13: note: in expansion of macro 'i40e_allocate_dma_mem'
   23 | i40e_status i40e_allocate_dma_mem(struct i40e_hw *hw,
      |             ^~~~~~~~~~~~~~~~~~~~~

Change the prototypes to match the definition.

Fixes: 56a62fc86895 ("i40e: init code and hardware support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/intel/i40e/i40e_alloc.h | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
index cb8689222c8b..e9c4a8fda9de 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
@@ -20,16 +20,14 @@ enum i40e_memory_type {
 };
 
 /* prototype for functions used for dynamic memory allocation */
-i40e_status i40e_allocate_dma_mem(struct i40e_hw *hw,
-					    struct i40e_dma_mem *mem,
-					    enum i40e_memory_type type,
-					    u64 size, u32 alignment);
-i40e_status i40e_free_dma_mem(struct i40e_hw *hw,
-					struct i40e_dma_mem *mem);
-i40e_status i40e_allocate_virt_mem(struct i40e_hw *hw,
-					     struct i40e_virt_mem *mem,
-					     u32 size);
-i40e_status i40e_free_virt_mem(struct i40e_hw *hw,
-					 struct i40e_virt_mem *mem);
+int i40e_allocate_dma_mem(struct i40e_hw *hw,
+			  struct i40e_dma_mem *mem,
+			  enum i40e_memory_type type,
+			  u64 size, u32 alignment);
+int i40e_free_dma_mem(struct i40e_hw *hw, struct i40e_dma_mem *mem);
+int i40e_allocate_virt_mem(struct i40e_hw *hw,
+			   struct i40e_virt_mem *mem,
+			   u32 size);
+int i40e_free_virt_mem(struct i40e_hw *hw, struct i40e_virt_mem *mem);
 
 #endif /* _I40E_ALLOC_H_ */
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
