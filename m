Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 187629F0059
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 00:44:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7116A84552;
	Thu, 12 Dec 2024 23:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IkyrL8W73-83; Thu, 12 Dec 2024 23:43:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5FD28454F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734047016;
	bh=lVwHov0X10aPJDd/Xn/qoYct9Gn29vQtlHXe3AbUYiU=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yo9kxifOSWaLe+EaOlzZU7/aTkTvtlfmc1shNHCh/D8yO1wwFy80bTNFPDf42Y+IK
	 /Foq8BRsskCpG7zqAPEgVaiS2lhwzdHI4oUyoeXwR7L+sHNXR/HveEXXwdNSJutWD5
	 o/JOJS7kwCEQey1FOh2n0MGMxP4dcZqrFFGtZwk7WjZql2EqeRQO5IwcoDxpVMG0R6
	 SvSTwTtI0lz9JBFF585nMELHYnXv2EtixICd1KQ3Oh62sxZHUCZIzXtzdTwRNeExPj
	 CMmKjho2PggqYkxJvrSI1mPME1tTRqB6XUjUw3MsI0nasNyVBbXHI4YgQYYpW0LXOs
	 qlmGlmfzdsxlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5FD28454F;
	Thu, 12 Dec 2024 23:43:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EE53E115A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC122605FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cykzXK8DizN4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 23:34:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::549; helo=mail-pg1-x549.google.com;
 envelope-from=38hjbzwckd4uk0rjw44pxxpun.lxvrw2nu-5r0nm-ujwur121.x13x1u.x0p@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 34BE060698
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34BE060698
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34BE060698
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:09 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-8019f05c61aso818288a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734046448; x=1734651248;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lVwHov0X10aPJDd/Xn/qoYct9Gn29vQtlHXe3AbUYiU=;
 b=Su+XbTmHjVykpBlasQ+Pxb59YxEsbMRJUk8DB+pLB9XsCl6OZ6ncsME80nUthcdE/9
 RHCfGD2jjl7dY/uuNjciRLSPpAUIRDcvkm0jLeg+o3Rg2tGfgHWu4aPYAOUCMrfisrqZ
 ciFHZPxLy9oduziV/PkIfZ/bLwYiCKT/mfk3Rqr1PF/tR2383Tunoy5hFzkKqAhlLJPZ
 PRpyuBeM5Wpur1sovJ5p6E9Y90iqigq4elAkFHayRFsfoAZ+omPQ6VPT2xlGVZTH/+ez
 c9jqlrfirOlm14X6y974z04VdSQ+sCxbNUi4vje5x9gSim1dSW9C0RdPjfIEpmlfkGpt
 EwLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCt0I1wangUaEo/fy6A15sqcVKHYrD5wuzJ7lkI+3r7bAImGMy3978JTFESYJGfQpESNeQbdMcvtpoeeRGwo8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxkzI8mQgmPsj6vvKf/PE5efG635u+DZImCOVOEGVA5GXmtDI8C
 NSOmwBa4IxVtjSqJUHs01xUotErya+06QnCH6908gm4+V4zxCy+Rqv1QnHSNUMmR44u8/jQnzUb
 4nfBKSA==
X-Google-Smtp-Source: AGHT+IGe7FiBmEImdX0XEsLZOBwrOk+VTTkGoZbu8+xZqBSfxUA2PcZQtkQcbVVi3V7YTKio7yX0EY8giLOl
X-Received: from pji5.prod.google.com ([2002:a17:90b:3fc5:b0:2ea:4139:e72d])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:53d0:b0:2ea:a9ac:eee1
 with SMTP id 98e67ed59e1d1-2f28fb5fd68mr962924a91.10.1734046448532; Thu, 12
 Dec 2024 15:34:08 -0800 (PST)
Date: Thu, 12 Dec 2024 23:33:33 +0000
In-Reply-To: <20241212233333.3743239-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241212233333.3743239-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241212233333.3743239-4-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Manoj Vishwanathan <manojvishy@google.com>, 
 Brian Vazquez <brianvv@google.com>, Jacob Keller <jacob.e.keller@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 12 Dec 2024 23:43:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734046448; x=1734651248; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=lVwHov0X10aPJDd/Xn/qoYct9Gn29vQtlHXe3AbUYiU=;
 b=3B0cPHV4geZAu6b6RlTqgIujBqfsa0GCTODDL+fR1gK9ZzleOyDLnPmRZr5R4ODqJm
 jHqgrcbPCCq/tHElh0VNAUIkHJCaFlsZtyhC6goDmQZcWRMBa4zKahIJlh6Gifw+gFD3
 yuPDy8R++RqhaqTxQi5G0L+BtrUuEXOVkXHLCIUUtRt13n/4VOJyPNagyYtMAAscTeM5
 COOl1KnYh+v24m0i1yQ8+WNNOY84PX/R9mr2X/H1nUPeLEcUVvR9InLcVe4ybu7XixN3
 lhRSrvCUNF4R4P1CqlaP8RFXUGpkndZy6x1tQF/K35IfH3oujq9bLj3k6IB10iOIjuSx
 9RTA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=3B0cPHV4
Subject: [Intel-wired-lan] [iwl-next PATCH v3 3/3] idpf: add more info
 during virtchnl transaction time out
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

From: Manoj Vishwanathan <manojvishy@google.com>

Add more information related to the transaction like cookie, vc_op,
salt when transaction times out and include similar information
when transaction salt does not match.

Info output for transaction timeout:
-------------------
(op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
-------------------

Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 13274544f7f4..c7d82f142f4e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -517,8 +516,10 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
 		retval = -ENXIO;
 		goto only_unlock;
 	case IDPF_VC_XN_WAITING:
-		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
-				       params->vc_op, params->timeout_ms);
+		dev_notice_ratelimited(&adapter->pdev->dev,
+				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
+				       params->vc_op, cookie, xn->vc_op,
+				       xn->salt, params->timeout_ms);
 		retval = -ETIME;
 		break;
 	case IDPF_VC_XN_COMPLETED_SUCCESS:
@@ -615,8 +613,9 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
 	idpf_vc_xn_lock(xn);
 	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
 	if (xn->salt != salt) {
-		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
-				    xn->salt, salt);
+		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
+				    xn->vc_op, xn->salt, xn->state,
+				    ctlq_msg->cookie.mbx.chnl_opcode, salt);
 		idpf_vc_xn_unlock(xn);
 		return -EINVAL;
 	}
-- 
2.47.1.613.gc27f4b7a9f-goog

