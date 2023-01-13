Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFB7668E43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 07:50:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 810B760F36;
	Fri, 13 Jan 2023 06:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 810B760F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673592643;
	bh=o9JcK3BDQ3mT6M9jLxnvh+Pu/la2sVwXiv92de6IxgU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9kMEKCx924Pni7P1nl+lKMWQahiQpXQhEoxvtDOqKrcP0/asYWLWP93sshsqjnchI
	 QvvHVzPCWSQDUDfcYFbAm/Z7nkrnxrPCZZqSIYcEVdIGjljnMkIv7+ykCw0LvMCw+s
	 j9CWg5mcnv4MVuQ5bm5nWYepJiiYTJyGIHPrz81Qop8oP9WlMug7WUx4VzWlZjfj3y
	 qEHdRcjq51XToFDBakKC+whBMlZOrkai81hQwYrNhX6nW4nqY/tMTUFxhevO9W1Z1A
	 0ApklNs6xVPbeiVhTGdq+qOzLFKFDqUzTV3v3r7psWDKEjU8WGvECPhlKGxhZYT3Lc
	 qg8i4nOJfIVVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0hubAJDHdqx; Fri, 13 Jan 2023 06:50:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79F3560F35;
	Fri, 13 Jan 2023 06:50:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79F3560F35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BA441BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63C8A417B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63C8A417B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84QXUmfnHm_d for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 06:50:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16A8541799
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16A8541799
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:50:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304311174"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="304311174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 22:50:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="746834388"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="746834388"
Received: from unknown (HELO intel-71.bj.intel.com) ([10.238.154.71])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2023 22:50:32 -0800
From: Zhu Yanjun <yanjun.zhu@intel.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Fri, 13 Jan 2023 18:19:12 -0500
Message-Id: <20230113231912.22423-1-yanjun.zhu@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673592636; x=1705128636;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=azzSjfiS8JW8TRsrRsEric/+iTuGrHz6TiqdBGzypA0=;
 b=S2avTGhbLIiOxaRubu7+464ImuBK1wKZE2JY3BM03s9IjIXw06KReupS
 7UE3Zzxf7yVOP6N5QV49IlEiWnjEmC0lJ0s0nPh1iV/7soa2NHLmTqeGA
 FZ+vhkWI6AaucG+RERFvXq0Ci45AHJ1XtzdLbElv/Ap3k/dcDxOzqMSPb
 s7QRRW5McEhlAvXn6E/rKz1P6eqjdmfG2G/z/2+pv7fVqlG1PNpsNl1zC
 iHQANziL/JC8JUUTWrVwPcsaDrNpC9z56j37qAzC0eTgORTDOm1aiOeiZ
 sVOWRe4PoJpMheymHcxH/13hCVYJAF1YjKpKr16/h3PRXOHoukn4ps3FS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S2avTGhb
Subject: [Intel-wired-lan] [PATCH 1/1] ice: Add the CEE DCBX support in the
 comments
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
Cc: Zhu Yanjun <yanjun.zhu@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhu Yanjun <yanjun.zhu@linux.dev>

From the function ice_parse_org_tlv, CEE DCBX TLV is also supported.
The comments are changed.

Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 6be02f9b0b8c..7964405efa77 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -566,7 +566,7 @@ ice_parse_cee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
  * @tlv: Organization specific TLV
  * @dcbcfg: Local store to update ETS REC data
  *
- * Currently only IEEE 802.1Qaz TLV is supported, all others
+ * Currently IEEE 802.1Qaz and CEE DCBX TLV are supported, others
  * will be returned
  */
 static void
@@ -585,7 +585,7 @@ ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 		ice_parse_cee_tlv(tlv, dcbcfg);
 		break;
 	default:
-		break;
+		break; /* Other OUIs not supported */
 	}
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
