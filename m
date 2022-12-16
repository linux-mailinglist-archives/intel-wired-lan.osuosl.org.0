Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E4564F21C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Dec 2022 21:07:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0309440543;
	Fri, 16 Dec 2022 20:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0309440543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671221235;
	bh=R9BUWNFlwa5459B5sB4flDkKqawLJoDBRuKh8WEobcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j+on7IGzUA1ObU3VaBRwehsnhWdDWSKp8H1K8IZnkbiEzfC1JEJvK1XRqNrpJFWQe
	 pe/st2yXL4E+Q0dxxSCxBtSycWJ1CTLYBfft0sIrMUxg9vqbOF56xVvi0g221Y9rY+
	 w4PmVdz6GcrPUE1bl7ZaR0gviHBYdd7YFdX+rtdcqUc7sM4ZUTYpWtDC0u6jHJdH6N
	 BiBcVvr0rZIrzNTpqAUf/+TXVjCnyZu+LLhKjwg9C7HMw8nImBGxBGlPj3XVzEoOl8
	 KTowcFCWP1hfAQu7H6MJCWTTTArot/Z1LBgG4IWLawRjh9AJYPZC/647O/z57TgBIR
	 B+45VYmCgR3aA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3o6yIRLWBSQ; Fri, 16 Dec 2022 20:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14D16404E9;
	Fri, 16 Dec 2022 20:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14D16404E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAA931BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C339641983
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C339641983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6ZatvMX4vNI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Dec 2022 20:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5DF441900
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5DF441900
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Dec 2022 20:07:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="320932434"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="320932434"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="682385362"
X-IronPort-AV: E=Sophos;i="5.96,251,1665471600"; d="scan'208";a="682385362"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 12:07:08 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 12:06:55 -0800
Message-Id: <20221216200658.59833-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221216200658.59833-1-jesse.brandeburg@intel.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671221228; x=1702757228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dGGNpeG5ghFWKLBxxunkVNLuyA9oZwYh/oIwYY0lOoM=;
 b=JzmeA4tbIj0o6tMvc1yzgqLyaTS3IbdpfWnoxsBKCeDIxYJImQmCMHEn
 0/0k2U9ZDJBHBMjk63Q1K25cp5yHEtJDAK/lBaaNBmOV6AdKLFAuK5sUZ
 yzY1kavKQZqApUp0Bns8QcnfgK2+/aggo0CkuQ55DcrGwmxp4gOtqFkJp
 6MAF0STBBq0/7FsmGRZJ4PoFEDxX/yQH/noXRKHa7KBWDWtbvqoZouvr3
 52miPDJJcuwRphUOMcCrC6IO+bjJPgtsHbAjLtwX9KyQqul3NxIVh05lL
 2j34rvulOMlwq9iPSq2bRkFP3VF79rhBqkGa0+mxu247s/pRwoBUqnsPJ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JzmeA4tb
Subject: [Intel-wired-lan] [PATCH net-next v1 1/4] virtchnl: remove unused
 structure declaration
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Nothing uses virtchnl_msg, just remove it.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 include/linux/avf/virtchnl.h | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index d91af50ac58d..b1cfa84904b1 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -162,19 +162,6 @@ enum virtchnl_ops {
 #define VIRTCHNL_CHECK_UNION_LEN(n, X) enum virtchnl_static_asset_enum_##X \
 	{ virtchnl_static_assert_##X = (n)/((sizeof(union X) == (n)) ? 1 : 0) }
 
-/* Virtual channel message descriptor. This overlays the admin queue
- * descriptor. All other data is passed in external buffers.
- */
-
-struct virtchnl_msg {
-	u8 pad[8];			 /* AQ flags/opcode/len/retval fields */
-	enum virtchnl_ops v_opcode; /* avoid confusion with desc->opcode */
-	enum virtchnl_status_code v_retval;  /* ditto for desc->retval */
-	u32 vfid;			 /* used by PF when sending to VF */
-};
-
-VIRTCHNL_CHECK_STRUCT_LEN(20, virtchnl_msg);
-
 /* Message descriptions and data structures. */
 
 /* VIRTCHNL_OP_VERSION
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
