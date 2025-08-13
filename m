Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CE0B247A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 385F36081E;
	Wed, 13 Aug 2025 10:46:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFM9stqVVDVa; Wed, 13 Aug 2025 10:46:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF1EE60815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081968;
	bh=qd+s1nyVpTLkIniztaDkLZGXx6pkB/+OdmVC2ldNyok=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DCZ6Uk49DFXd4jdA0g+mxsVvI81M3JONN9x0ntbc80Uf4i2P1JKEGoTXARZZaqqxp
	 Fd1utK8btDX3HJPR4CXsbnmJv6wKSQw+UevECFc5cHED+vQzO9RvqoJC/NfI4KkMPP
	 ChImv2DY3Xp8+8+njrxuR9uNLpmszefSE5vYg/NLh33q8VCEmAfbLcHJknUYxT4KhH
	 VOh8zwcZNejnzC22tXIkQT6eeRDnO97NftvD/1gsSJzPaIa3c35sf3wF7SoLddwiaB
	 jnGf+jKfcLac7729/LW3TEp/xlvYmnE5bC3SxoCL6K3V9mO09eKvWaHtpS1/oBt15S
	 JQRD3wWp9Wa0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF1EE60815;
	Wed, 13 Aug 2025 10:46:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F8B61C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00487402F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BFm5n9KMANUP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B5A440240
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B5A440240
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B5A440240
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-CSE-ConnectionGUID: VFc9xmn5T+yrWK2ZG27IKA==
X-CSE-MsgGUID: 27x9ofIGT56TQUi8ERWgzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949632"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949632"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:46:03 -0700
X-CSE-ConnectionGUID: tbxNdg07SyOchbbBJIzK/g==
X-CSE-MsgGUID: Zm5QPGHJRpqUq9e2VwVP8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066924"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:46:01 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9CB1228786;
 Wed, 13 Aug 2025 11:45:59 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 12:45:17 +0200
Message-ID: <20250813104552.61027-8-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081963; x=1786617963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yw0BsxIigipDU7En65kDIiacJgE/xxTlF1j0SvsBzqk=;
 b=Bvc6+mumaNLJOMNV4ql9ObixSRFM+D7Nb2fcQQ6hv4x+buVaPQ1MRbyk
 BXu9qIcswfP0Qu4NPvy/Ev0slxi9woULZ27sGEQA12Jo2hwDdnBWV/7Kc
 /WG2TRziTGO47qsH4qVc/KWTA8vhNVsQlQSUNP9WC7vGhOXKtDkfK6Ujf
 sztAPl5Rmqm/ppkaY0pfwzRLI622vk5AQV+xjeTO8nJe0xrUnIrIVCkM/
 6cNGXti6zxj6tyo9WTZxx3eH/05fENwY8dv9PVkmrQEodGiBxgI4o6L5q
 PthbQZ0wcemuA9Gykz40l/Sp9BntsGE1YTd0gSa/r16hs/5I2KsKrQmZP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bvc6+mum
Subject: [Intel-wired-lan] [PATCH iwl-net 7/8] i40e: add mask to apply valid
 bits for itr_idx
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

The ITR index (itr_idx) is only 2 bits wide. When constructing the
register value for QINT_RQCTL, all fields are ORed together. Without
masking, higher bits from itr_idx may overwrite adjacent fields in the
register.

Apply I40E_QINT_RQCTL_ITR_INDX_MASK to ensure only the intended bits are
set.

Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index f29941c00342..f9b2197f0942 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -448,7 +448,7 @@ static void i40e_config_irq_link_list(struct i40e_vf *vf, u16 vsi_id,
 		    (qtype << I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT) |
 		    (pf_queue_id << I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT) |
 		    BIT(I40E_QINT_RQCTL_CAUSE_ENA_SHIFT) |
-		    (itr_idx << I40E_QINT_RQCTL_ITR_INDX_SHIFT);
+		    FIELD_PREP(I40E_QINT_RQCTL_ITR_INDX_MASK, itr_idx);
 		wr32(hw, reg_idx, reg);
 	}
 
-- 
2.50.0

