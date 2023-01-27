Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4B567EAFF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 17:34:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8443082C9C;
	Fri, 27 Jan 2023 16:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8443082C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674837264;
	bh=MJzsNWbMiFMIhcMLjlvSORE0I2qNhT/6wTVdnX4yIXE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g0UgPGN9ZQB3b+GAhrKv1eVVWmI3J9zEuMNDbc4FZ07G5+9j/tGuXSJ+q/tf8rZVa
	 c9BTOgfiZOgCs1bnHzQy84/z9GRBW674jePFISK5bmZCbOwRSwkxx5VxDDzOK2lDs+
	 rE9x1srlHWrA+iEpCAfkUEFfflViUoGUCHbxXb7sOXnMvTQKhOkcxobJrK/4u6/+fi
	 x3jWWeHDyTyP+ma/lqlWNI0Llw/d0QE1F1f8OhbGX/voDeyhIfauSS6mIDNIp626S+
	 ojgFRMJaxuJiNE+VaajH/GqB4ikFjB87V4n5Yj/97tM+qRFkCKHDgRh0U21HF2diPO
	 vweqBod2Q6/0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id exuUgMlvmlmC; Fri, 27 Jan 2023 16:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FC4382549;
	Fri, 27 Jan 2023 16:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FC4382549
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18A7D1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 13:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E45F061202
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 13:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E45F061202
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KwbExl8nsVta for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 13:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BBEB60EB8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BBEB60EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 13:22:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="327104428"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="327104428"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 05:22:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="665251026"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="665251026"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2023 05:22:58 -0800
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 Jan 2023 14:24:10 +0100
Message-Id: <20230127132410.2057599-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 27 Jan 2023 16:34:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674825780; x=1706361780;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kac3eQGDUMMk7dysz32fYnsUiDeO0zYiWeLeaPqZNbk=;
 b=hzN2sB3i1aBaU3PdZSM8hVxBwcTPjXA9e9ID1SU8qQr0FGI6jK7o1yOX
 Lge/UmRutFQToruV9fBumUScdMdWyOg0cvcDO6HTy23rb5E2vMJvSQtIV
 E6FAK3GPcZ8LegVfCqADG8p1RTdtIoNj1UD3LiT0Ts7c4TtBEKiznewI0
 LNeVz4xD3z+de1Ij9urMS1SVuSZp8wawpIsQYyTB4gxp8hZdm/28PFbCi
 Cj2+YKfQZCbVEZuon7aTWuLUUrlRSeE74J4XR735JqSuGHjgI4gQ8cxXz
 2NTrzUiphF9wp8lIKaVNkZyBSAMQ1ohBwpQO+DRKeBNHyzSL4jw+Cb4PQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hzN2sB3i
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dave Ertman <david.m.ertman@intel.com>

When creating the TLV to send to the FW for configuring DSCP mode PFC,the 
PFCENABLE field was being masked with a 4 bit mask (0xF), but this is an 8
bit bitmask for enabled classes for PFC.  This means that traffic classes 
4-7 could not be enabled for PFC.

Remove the mask completely, as it is not necessary, as we are assigning 8 
bits to an 8 bit field.

Fixes: 2a87bd73e50d ("ice: Add DSCP support")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 6be02f9b0b8c..789b99963910 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -1372,7 +1372,7 @@ ice_add_dscp_pfc_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	tlv->ouisubtype = htonl(ouisubtype);
 
 	buf[0] = dcbcfg->pfc.pfccap & 0xF;
-	buf[1] = dcbcfg->pfc.pfcena & 0xF;
+	buf[1] = dcbcfg->pfc.pfcena;
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
