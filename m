Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781A64E34C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 22:37:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E48B82108;
	Thu, 15 Dec 2022 21:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E48B82108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671140258;
	bh=ssXy+gkOwYMAOUE+FZ9wKrBOBV5aVL9wowquu7W8tHE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8NesTLHmzuGNhjl2QZnRyMDKaow0ZrJLqH7ABLGPnBUUD/anc4wfztk6DohDHl8gT
	 3mpFBtuXuQw3QMEsIytnDk5Ef4E80HrFSRAteUNtrwL82OOxcKyJJBz+n60OXI9/Ta
	 BDwq+qtLxCuEnNVmDO6Q9dLjSz1DgtP93Q4iwCVDqwsZGJasWN9F1eJZ4kBIgrdOoe
	 K+Km2LOt4PQCyWutO+dtdFLz8EM4KhUUbqMawPBOBoyndh5VMGRW9aCjF2XWQ1fMBv
	 igjZsK1DwnUs3S/LKge/MaZPFgyiqghl3zYRuGXmME8J/1yjtpN0etLAF4P8epHeb9
	 9ZjhJabNjX3dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xkFg-DjdFVFG; Thu, 15 Dec 2022 21:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8581B820FF;
	Thu, 15 Dec 2022 21:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8581B820FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2FE11BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A73560E17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A73560E17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gWozKIJi_htu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Dec 2022 21:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E327B60DA5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E327B60DA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Dec 2022 21:37:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="383139041"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="383139041"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 13:37:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="756502436"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="756502436"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 13:37:30 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Dec 2022 13:36:37 -0800
Message-Id: <20221215213637.45065-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671140251; x=1702676251;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L0+ad0E4mc3TVvZm1i1Wv8dqYj2az52sYznjOD14gjA=;
 b=VMpR9H39aMGjTvyqbcdsfArm+ehu/kl+IqZKFYp6JsSToxZmlb7+nsuT
 O7I9B6CgKiw8YI8Eqhqm9OWFMRk0nrbyH+oA/GWX34wI9kYpmh4Ub2laV
 8AAFlQsQlHLfY6Smeb9WxC/65dTKKEHoDJKm8i/Ee+RZvY0wDyoUD4w4h
 9fHcwGG1WcInS52zCvg9KkDvsDG5nbxD5XkFYuHpswlAZ0C4lHa+o1V6q
 Z26sxftzRIxlgXOOwLbpZuZAXEtarxzw40XZUKSVg+BHbyC5XbhLtz+cf
 pe17jDL5gxycsEEnUM/uM9Wqx8r4RoB/5taCWoPhzgSZaXep9abkZRQL4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VMpR9H39
Subject: [Intel-wired-lan] [PATCH net-next] ice: Match parameter name for
 ice_cfg_phy_fc()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The parameter name in the function declaration and definition do not
match; adjust the naming for consistency and to avoid confusion.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 6a7898565072..8ba5f935a092 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -122,7 +122,7 @@ ice_set_fc(struct ice_port_info *pi, u8 *aq_failures,
 	   bool ena_auto_link_update);
 int
 ice_cfg_phy_fc(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
-	       enum ice_fc_mode fc);
+	       enum ice_fc_mode req_mode);
 bool
 ice_phy_caps_equals_cfg(struct ice_aqc_get_phy_caps_data *caps,
 			struct ice_aqc_set_phy_cfg_data *cfg);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
