Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +nhjOh6sMWreowUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:03:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F21056950E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:03:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="QUX/DF29";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2318E6F51F;
	Tue, 16 Jun 2026 20:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sKDZAbNbLBRY; Tue, 16 Jun 2026 20:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C414F6F522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781640217;
	bh=pTBYdMeHq7VVHqws7ev2yyFawcjMuxnArkjcGEAZaXc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QUX/DF29HtsjWKNiDbkDghOeoYQJ2I3QaASJ4pv1hVdosGP/XLSGeY3D+wAfKjWXY
	 MPr7PZaK+FLmNMc0eTUkp4vRsdAO20BiCUgCQIcWmcx2ejB9eBYlfsd3h54LEK0OAk
	 3Vxwl5i9iiQa7O4sHvWCch+R/jN86/Gk7kra1l0TmASrCVQlR73Ygb60R8erwaimEo
	 hYmf4ZdYIxEu0DCfg6wQAhyWog/RQBDDi8ThDo9lqVmC805X2G397cF9Z4ZT3Zzyrk
	 TIE7B84fRd+Z/yYVRhawFVVDVVr7ouEzOBL1tjk5Av36GRSU59RUedSbSXN+8Z74GM
	 NwQzDhJqN9dSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C414F6F522;
	Tue, 16 Jun 2026 20:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 439AE169
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32FD042B86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6m4kWo8Tu4NK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 20:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=croepha@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3852D42B4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3852D42B4C
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3852D42B4C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:02:06 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-7e266714bd3so58246137b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 13:02:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781640125; x=1782244925;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pTBYdMeHq7VVHqws7ev2yyFawcjMuxnArkjcGEAZaXc=;
 b=mbYNm1kNb6in7Amtu9h6BoC+qfCOI38nQgccdQLYkrmVgNHOCI7BmQtPVl3momrcqk
 tEZQIMWQwzwUJazkgtKwyhulTsow1MEvOv6KE6B1dcYvsLKCUj64GYn5BE0u+rBLSUiT
 QVdW/z1dvEv6IvwGcE1CeKKPVM1E0+Qtlq/yJkoDj1zOfwrLrhEnvTo3sh25TyIMCs9Y
 WGa4/ZuKvY+V43llbOSZMq9qHLU/gsPwETSmcV1v7f6tekp8kjX3tEGPG/gicS0A/fTm
 Z1rW/igYN65QfBT/PaF30RmbBKDAKH9jIEY5rOn0zOdBJ2Tp0jaZ16HGUn/K8j3dD8TX
 KlQw==
X-Gm-Message-State: AOJu0YzcVya0l+RAoVcT6kHiVB85C0ABItZpXo37UtG5qxlDFVLHOGJr
 4jT5drcZHUFVETqgX5CumEvAwJlCf4QNAdJfkoJ1U4uPJOa5vVsLLqhknPRDiHhZP/s=
X-Gm-Gg: Acq92OFgg5QWbOt3ep9pMvYAyf3mi8WTFopFZqG7TOKdj9A7rTcuwrFZDk2UBFouuKM
 Ynub6qTHfUeCpgpQ2kUdVjcXh0JqX6I+oT7AwiBgmQ8OjGQOsoOh0WG9hKzUh4a62Z/hMQlXJR9
 2R6g2T54GjbqSj2dHMUFFG6qM2dp/nRXLcUnyBRfGRFr+NhlHbuD6IhxP8OaE9Kqs4pHAxEDwHC
 zN4h5/bjf956ZzOYvUvgOv8t/KBMZhgbmm7J/6UdkGA3jceTtPYZBSo5gXCrVnKhRRelvySbJBN
 mDwMVd98GGdBfS7gc4QhD/RgHal6Yn8+44PwfF9JSXrqMMjMcfaLoq30xem9vC3issr08Awz8S9
 muPMfQTxYLR4tGMed8ZQvHx78SX69CvaSjHeZAoe360UtUn2xa2nzLlhez0v9sj7HudUycfN69/
 YFaMsAe7IslFggJDETLJ1o/aEqiQRfjZ+LZVzIzMPRTiTx/qPuI/R6dU/QYGY7Hfmn0fO6FHPMi
 w6XxzsJelWdNxlK
X-Received: by 2002:a05:690c:6c0e:b0:7fd:b458:7522 with SMTP id
 00721157ae682-7fe5e397695mr6300777b3.37.1781640124736; 
 Tue, 16 Jun 2026 13:02:04 -0700 (PDT)
Received: from dave-linux-desktop.. (c-68-53-106-116.hsd1.ky.comcast.net.
 [68.53.106.116]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7fcd0adc434sm24655707b3.22.2026.06.16.13.02.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2026 13:02:04 -0700 (PDT)
From: "=?UTF-8?q?Dave=20=F0=9F=A7=94=E2=80=8D=20Butler?=" <croepha@gmail.com>
X-Google-Original-From: =?UTF-8?q?Dave=20=F0=9F=A7=94=E2=80=8D=20Butler?=
 <david.butler@appgate.com>
To: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 aleksander.lobakin@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Cc: croepha@gmail.com,
	david.butler@appgate.com
Date: Tue, 16 Jun 2026 20:01:52 +0000
Message-ID: <20260616200152.1421033-1-david.butler@appgate.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Jun 2026 20:03:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781640125; x=1782244925; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=pTBYdMeHq7VVHqws7ev2yyFawcjMuxnArkjcGEAZaXc=;
 b=DiHsuIxgduixn8cLz6vubyNh/8hqbLNzqG0G1X/9AJsgchy0EVuOvRWkSrsp2E1jA4
 jhKhVex/Y1jPQJcPN8lk4LYi5EOfWdFcqsReY6JKqVPE9yEaVwN+YmZHJIoGt7qPp5pN
 VmL2YES+defldKi2MvMrM7Dc9aoMCA/kmmxPwZgA0aLont64XY7h7Lb5bbnCVPGaYlrs
 uWz05eDKW5MEZu310TRe1qSbv1Pq3VDYkBrsQ6xCRvyc8/vYNei2X4BR5y7F6JSwE1td
 97xfuxi92j8pz4WQrkpvLOXtvMRnY01GoZdQ3Re//n+AIWdtvbm6RWDm11z2M2JdvbDI
 INvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=DiHsuIxg
Subject: [Intel-wired-lan] [PATCH net] iavf: cap advertised max_pkt_size at
 the single-buffer HW limit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,appgate.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[croepha@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,appgate.com:mid,appgate.com:email,osuosl.org:dkim,osuosl.org:from_smtp,broadcom.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F21056950E3

From: Dave Butler <david.butler@appgate.com>

Since commit 5fa4caff59f2 ("iavf: switch to Page Pool")
iavf_configure_queues() advertises max_pkt_size to the PF as:

	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
	max_frame = min_not_zero(adapter->vf_res->max_mtu, max_frame);

LIBIE_MAX_RX_FRM_LEN (16382) is the multi-descriptor scatter/gather frame
ceiling, not a single-queue value, and it exceeds the E810 MAC frame size
maximum of 9728. Per the E810 datasheet (613875-009 section 13.2.2.17.1)
the Tx frame-size register PRTDCB_TDPUC.MAX_TXFRAME has a maximum of
0x2600 (9728); larger frames are discarded. The in-tree ice driver encodes
the same value as ICE_AQ_SET_MAC_FRAME_SIZE_MAX (== LIBIE_MAX_RX_BUF_LEN ==
9728), and the VF clamped max_frame to IAVF_MAX_RXBUFFER (9728) before this
commit.

When the PF advertises vf_res->max_mtu as 0, min_not_zero() leaves
max_frame at 16382. The Linux ice PF advertises max_mtu = port MAC frame
size (<= 9728), so a VF behind ice never sends more than that. The ESXi
"icen" PF on E810 advertises max_mtu as 0, so the VF sends
max_pkt_size = 16382, which icen rejects while programming the queue
context for VIRTCHNL_OP_CONFIG_VSI_QUEUES (opcode 6):

	icen_ConfigureTxQueue: VSI 8: Failed to set LAN Tx queue context for
	                       absolute Tx queue 64, Error: ICE_ERR_PARAM
	indrv_SendMsgToVf: VF 0: Failed opcode 6, Error -5

	iavf 0000:03:00.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 6
	iavf 0000:03:00.0 ethX: NETDEV WATCHDOG: transmit queue N timed out

The VF's queues never come up; under SR-IOV passthrough the mis-programmed
queue can also trigger a fatal IOMMU fault in the guest. Forcing only
max_pkt_size back to 9728 (and leaving the Page Pool rx_buf_len/
databuffer_size untouched) makes the VF come up; databuffer_size is not
involved. This was confirmed on two E810 NVM revisions (3.00 and 4.51) and
two icen versions (1.14.2.0 and the latest 2.3.3.0): all reject the
unpatched VF and accept the patched one, so the trigger is the icen PF
behaviour, not the firmware or icen revision. Reported by several users on
E810 + ESXi icen with v6.10+ guests:

Link: https://community.intel.com/t5/Ethernet-Products/E810-C-iavf-driver-issue-on-Linux-6-12/m-p/1737490
Link: https://access.redhat.com/solutions/6973766
Link: https://knowledge.broadcom.com/external/article/404315/sriov-enabled-vms-network-adaptor-goes-d.html

Cap max_frame at the single-buffer hardware limit, restoring the
pre-Page-Pool behaviour while keeping the Page Pool rx_buf_len unchanged.

Fixes: 5fa4caff59f2 ("iavf: switch to Page Pool")
Signed-off-by: Dave Butler <david.butler@appgate.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 4f2defd2331b..2632eeed776c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -382,6 +382,14 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 
 	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
 	max_frame = min_not_zero(adapter->vf_res->max_mtu, max_frame);
+	/* The PF programs max_pkt_size into the per-queue Rx context "rxmax".
+	 * LIBIE_MAX_RX_FRM_LEN is the multi-descriptor (S/G) frame ceiling
+	 * (16382), but that exceeds the E810 max MAC frame size (9728); some
+	 * PFs reject the out-of-range value with VIRTCHNL_STATUS_ERR_PARAM.
+	 * Cap it at the single-buffer HW limit (== the MAC frame max),
+	 * restoring the pre-Page-Pool behaviour.
+	 */
+	max_frame = min(max_frame, LIBIE_MAX_RX_BUF_LEN);
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */

base-commit: fbc6a80cb5d3fd4ac4b56e8c9d791dd17be890c4
-- 
2.43.0

