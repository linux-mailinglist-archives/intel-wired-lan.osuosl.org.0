Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8434E9A44
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 16:59:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B381F400D0;
	Mon, 28 Mar 2022 14:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSykLI1Mvn8q; Mon, 28 Mar 2022 14:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DD124042B;
	Mon, 28 Mar 2022 14:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 612A11BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FD5E4091D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMIQhN-7n9Lt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Mar 2022 14:59:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4B8E4067F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648479550; x=1680015550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HcCYnixe90jH0GR7s+9nALNGTtearJlDzMspSeZcRFY=;
 b=EFXzm0ALrtWIOqnHkkXvmfNkKF6n1v/3fqxg67rA6crjadVmX23QPgw5
 jGNlR/wfSBA4XX+0G6A0WDO0KfG7uDl9sbgf5MtNdvqpYfjFib5iec/DW
 hy8ps2RQCa1lCmCi/SdW/70/QTLNznC/nuAPLHgwYrpk+X9EjU6b/7BLu
 K89JhQnF7UuxgVTmjdgASAot079XMaTHcSs3s/vQLiacxB6DlMn7xuHC+
 NrhyVJlWj9engzCa3qUiDgC6HcZHr0ijmwHKADK2f+P1+H9gDg4e4/IIL
 V/oz1TaLMBSbKUd3N7+k0hQRJbzozEuowWaxIG3AB0cNO0ZpYOd3dyE31 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="258731773"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258731773"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="521046256"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 28 Mar 2022 07:58:51 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22SEwnLH015696; Mon, 28 Mar 2022 15:58:50 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Mar 2022 16:58:27 +0200
Message-Id: <20220328145828.10097-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
References: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: link representors to
 PCI device
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Link port representors to parent PCI device to benefit from
systemd defined naming scheme.

Example from ip tool:
 - without linking:
  eth0 ...
 - with linking:
  eth0 ...
  altname enp24s0f0npf0vf0

The port representor name is being shown in altname, because the name is
longer than IFNAMSIZ (16) limit. Altname can be used in ip tool.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 848f2adea563..78ee82511329 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -333,6 +333,7 @@ static int ice_repr_add(struct ice_vf *vf)
 	repr->netdev->min_mtu = ETH_MIN_MTU;
 	repr->netdev->max_mtu = ICE_MAX_MTU;
 
+	SET_NETDEV_DEV(repr->netdev, ice_pf_to_dev(vf->pf));
 	err = ice_repr_reg_netdev(repr->netdev);
 	if (err)
 		goto err_netdev;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
