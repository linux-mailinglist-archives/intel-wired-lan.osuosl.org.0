Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJDfI3W28WngjwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 09:42:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D42C4909E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 09:42:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A7F74220F;
	Wed, 29 Apr 2026 07:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mD-RaEgzPeCH; Wed, 29 Apr 2026 07:42:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA73F42212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777448561;
	bh=HhhqAOSf7r+oyqHVrybWEak9RazPKJT+nJg4pzZIXqM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lh0mEjJL5DbDCO+ouGu8SO6dhpEQrZFlInTM2038eEQzhdlv7OPp6lpY0dlait2nA
	 ft6Zf8Y+cjecbjPgxLil92HuFVPWiJZ6jHJMIwAb7YG1eILBZz9tpOFbjnQNv23EfF
	 qLgwkfS2eK5g9sGR099rZj3d/LJPde1pCdDN/sv5W8abBQO1S8UuQPIVSQeU3ho4qY
	 /zDi31s1PhS1UAZs0BkgrLgUm58aoRA1+xo2YclzdTOaSyWSBKwt/gg4AJrZmH752/
	 pyO2ymWkr45puDN1IyLhQd07q2mITZZfHV24J+Dk9yfwsSvu7rwhfyl904vMw2uLSO
	 TrJwDXlerst3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA73F42212;
	Wed, 29 Apr 2026 07:42:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CAC01B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 07:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2137140AE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 07:42:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OT4A-Wo0krlq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 07:42:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E033D4044A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E033D4044A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E033D4044A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 07:42:38 +0000 (UTC)
X-CSE-ConnectionGUID: ILy6+06JRj++BYRZtTOWfg==
X-CSE-MsgGUID: J6QmZCOkT1CETFEPbUsYQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89833761"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89833761"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 00:42:38 -0700
X-CSE-ConnectionGUID: 8EIVIcpZRqitLPI+BaAevg==
X-CSE-MsgGUID: CeyFazFEQhSIaQZgcZd+ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="235968120"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 29 Apr 2026 00:42:35 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0A62A27BA2;
 Wed, 29 Apr 2026 08:42:32 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Willem de Bruijn <willemb@google.com>,
 Alice Michael <alice.michael@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 29 Apr 2026 09:42:30 +0200
Message-ID: <20260429074232.180528-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777448559; x=1808984559;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cr0vQaNUqcHT5qkJDPRkR29t4xZtKhdC8p1BUKcPsvY=;
 b=i/z50MRc5q2gQA6wuQLdhj5dGsVknE5cJHbKtL1pnYfD+F87QKbE83FQ
 SCo8CKimzyx5r6T6BvYMZD5uyjoWTB7sKjSPa0QKd1CoOLmK2VObPAZLG
 jASbeew4pA59oEfZH4UrgqW/f6k6n8ozHRDd1vN2HoU2uPHTO0bM+Kf8T
 Y1GWIByLlD0W2njhwJN7ndkzyIMhwSeFepUWcBdcY/wCuNagNAJlQyFzx
 A5vGgf2TuyGTbGpxVTT60t/7GTZgL7w+4ssSATGaroBSqLZfP+7sO2Ob6
 huVwSBef9P6+zilPmykd7GQQr7zPF1Iskjd3dZsts0UQn3HbUtrzc4EN5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i/z50MRc
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix RSS LUT memcpy size
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
X-Rspamd-Queue-Id: 7D42C4909E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,sashiko.dev:url];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.963];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

Based on the following feedback from Sashiko (received for iXD phase 1
patchset, but valid for the net tree):

 "Is the bounds check xn_params.recv_mem.iov_len < lut_buf_size sufficient?
  Since lut_buf_size only represents the size of the array elements, should
  this check instead verify that the payload is at least
  sizeof(struct virtchnl2_rss_lut) + lut_buf_size?

  [...]

  Does memcpy copy the correct amount of data here? rss_lut_size stores the
  number of 32-bit entries, not the size in bytes. Should it use
  lut_buf_size or rss_data->rss_lut_size * sizeof(u32) instead?"

After inspecting the code, it was concluded that RSS memcpy size is in fact
4 times smaller than it has to be, since a single array entry in a u32, and
rss_data->rss_lut_size is clearly used as an array size. Required Rx buffer
size is also too small, but this is a common issue in the idpf code.

Use a full buffer size (lut_buf_size) instead of the array length
(rss_data->rss_lut_size) when doing memcpy of RSS lookup table.
While at it, increase required Rx buffer size to a whole flex-array
containing structure instead of just the array.

Link: https://sashiko.dev/#/patchset/20260323174052.5355-1-larysa.zaremba%40intel.com?part=8
Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index be66f9b2e101..a97d2e9b54d4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2916,7 +2916,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 		return -EIO;
 
 	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
-	if (reply_sz < lut_buf_size)
+	if (reply_sz < lut_buf_size + sizeof(struct virtchnl2_rss_lut))
 		return -EIO;
 
 	/* size didn't change, we can reuse existing lut buf */
@@ -2933,7 +2933,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
 	}
 
 do_memcpy:
-	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
+	memcpy(rss_data->rss_lut, recv_rl->lut, lut_buf_size);
 
 	return 0;
 }
-- 
2.47.0

