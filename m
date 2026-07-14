Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ml4sDqeMVmqV8wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 21:23:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D901758351
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 21:23:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=aL0wKzQN;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E2060663;
	Tue, 14 Jul 2026 19:23:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CucRgUU1cgTB; Tue, 14 Jul 2026 19:23:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AF0960AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784056996;
	bh=4YxMZuS3O1N4LeRTy/92z3+raTT8LPy5OGFMt00nrLg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aL0wKzQNibbgz5ClktVzhC9CPKF1qq3QNwDQqK6uoK+bNlJmT1xZWLyQpif2dwbbE
	 P4XOx0TyrSDj6WLAjcNb6HEiRYP6k9DXC5TUuSJbTEQZ6HIrZ+JRVUbkuZjOhKA+W7
	 1d0g7GSs9gpKgqIIniKZZHMmXSefIDBhiMnlUlsroDMRrI5ek6H4ZEqVzaCpHWEeow
	 hgwKtEoUto/oR5VHE2azYPQKIttMxUoI3cARcGBBUuaR8r9gBtBww9tcjocpRheCNL
	 r8O/3V4VnitZqdS8mQyfvpT/pW8kZS4ZIrUwX3xies8dmVmR35SSI/icV1AqZ8WRce
	 YJAWQIqcV1BpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AF0960AC1;
	Tue, 14 Jul 2026 19:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1C2D499
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 19:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAC0040999
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 19:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIrEHXk-kcu7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 19:23:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10F7F4098F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10F7F4098F
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10F7F4098F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 19:23:13 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-38101f85591so1051332a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 12:23:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784056993; x=1784661793;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=4YxMZuS3O1N4LeRTy/92z3+raTT8LPy5OGFMt00nrLg=;
 b=RyGv3+88B/Is7UxmfhCzMo+wSeHMf33tVDPD5K86vrv9VwteYpLrMdOld8oNl6Udji
 qmq+Oe0chYSYaJAwik+UYypHMis0X3Aj27Rk1oNKWUnmLvlR3fFx5FXUbyqjGx97Dn0c
 2neHAPvPyCF0kB2CzzVmZodFvCCht5SLMGQXQcxDxKJc2L7T4YVXCppGv4Bs6Ry4wKTl
 5QZmaziiZEykd3WdeDJwT0fcn5mvE/26C5Bf4ZT/hyyhwHTparP34bdEWcHWQMHh9M/v
 sNRPRmXU5WXbXxNBsv301qrinZ6pOUH8dRHGEX5tR0KCOQA73qteYSw8zJ38plG3kKmJ
 5WvA==
X-Gm-Message-State: AOJu0YxshSnwfgVIvZ9jLj1V4fKmoTyx8pQbTgG6tA8yUW96ae1OvPlk
 2OFY05hjNZwtDsCe15Sv/zOnDjX5StTtpCbKq6mZPDOPholxbDRdEemmDIQUug==
X-Gm-Gg: AfdE7cltRWmX3jsnemOHa2dveMgr6NCELqaSSLKH/QFFF7sv5lGxf/h2ViFdcAHc2C5
 FVhKMmSN8lbH6P78YI/Vn6pY9gLdVaymGHpr1A7bPt6rHjIhx0DKgna8eu1fLD887QhygLuc2bP
 YkyZZkQpQbO1p/T7oNgTPizIfJZt9cpEMJSMdE7N4kQdcJ2ZYVXKXqVvYgRErzh9jiuwfTTidi3
 dD1bnptXNVUSiVfpyYw3zFIsdwIZog2ve+tt3s+G+I4Tnjni0uFW2LQm7rmihI//BQVJ21daRex
 OupuRJnCVFNHKUIxfLnfGhkRURIknqEsLQe1jsrlFxUHub39LI9SSyJxLYi88Prg92ZIEbphogW
 l4MqNTHqlV5SltUh+wdGqaAd9Re9jeCz1AwKZU4kOodQLmWrn4OOAB5i0JyTFMAtWpMNg0EIj51
 kjUqd1xVrZei8wRsoHSY/nUbWjjVYqOJnSx+Om30YvYOXzu/xvtjKXtNmOgtIvrvouMCHUyadvs
 3pXIChryJdooI7eH6dKRyw=
X-Received: by 2002:a17:90b:3c0f:b0:37f:f089:c81b with SMTP id
 98e67ed59e1d1-38dc8071aeamr11838700a91.3.1784056993076; 
 Tue, 14 Jul 2026 12:23:13 -0700 (PDT)
Received: from lab-kiba-ocxma-dut-01.. (191.68.231.218.rev.ocx2915.net.
 [218.231.68.191]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-38e16e1d2e8sm1979029a91.0.2026.07.14.12.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2026 12:23:11 -0700 (PDT)
From: Takeru Hayasaka <hayatake396@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, marcin.szycik@linux.intel.com,
 netdev@vger.kernel.org, Takeru Hayasaka <hayatake396@gmail.com>
Date: Tue, 14 Jul 2026 19:22:30 +0000
Message-ID: <20260714192302.631428-1-hayatake396@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1784056993; x=1784661793; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=4YxMZuS3O1N4LeRTy/92z3+raTT8LPy5OGFMt00nrLg=;
 b=Fyf+tOdOWanDAyTBO8eM2xskdOlsXm5Yf5k0erZVvTR8ywNkcyDRPaUx/c/FyKM89c
 TIQ9q9Kcn56uayJMLHbWQUjkVNOjKN3Xw0Tu35BE9mdGeejiPE5ALlfZJx+CIVXd7DAP
 nh9zSNX9iqU21LEIitgyN3MHHvDOwughycMaW7PFSlZiHFAlEh6Au8BpEfDQNfXWdc+7
 7S0Rs2z1nqbi5wD7UDEjJiHfax5eFmQWwsWcqyjyXfbiJpJd2QZnDcZOpphbo69GZPF8
 3dWy3+YWUX4J0lcRnM9UWDcYDkFnf8wuXamuXdoSMhA/hpm54BHx9s3yYSQIvI0Rqykb
 cPXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=Fyf+tOdO
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix empty PTYPE set for GTP
 RSS profiles
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,linux.intel.com,vger.kernel.org,gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[hayatake396@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D901758351

Configuring RSS for GTP flows via ethtool, e.g.

  ethtool -N <if> rx-flow-hash gtpu4 sde

is accepted but has no effect: the hash of GTP-U packets does not
include the TEID, so all traffic between a given SGW/PGW pair lands on
a single Rx queue. The GTP RSS configurations the driver installs by
default at VSI init are affected the same way.

ice_flow_set_rss_seg_info() does not set IPV_OTHER on GTP segments, and
such a segment carries no L4 header bit either. ice_flow_proc_seg_hdrs()
therefore takes the "no L4" branch and ANDs the PTYPE set with
ice_ptypes_ipv4_ofos_no_l4, or ice_ptypes_ipv4_il_no_l4 for the inner
segment. Neither holds a GTP PTYPE, so ANDing with ice_ptypes_gtpu
leaves the set empty: the profile matches no packet at all and the
configured TEID field never enters the hash.

Set IPV_OTHER on GTP segments so that the tunnel-inclusive PTYPE sets
are selected instead, which do contain the GTP PTYPEs.

Verified on E810 (kernel 7.2-rc2, COMMS DDP 1.3.63.0) by reading the RSS
hash from the Rx descriptor: GTP-U traffic varying only the TEID goes
from one constant hash on a single Rx queue to 4096 distinct hashes
across all Rx queues. The same holds for inner IPv6 (gtpu6) and for a
PDU session container extension header (gtpu4e); plain UDP flows are
unaffected.

Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_flow.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 121552c644cd..2156bf246921 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2088,6 +2088,14 @@ ice_flow_set_rss_seg_info(struct ice_flow_seg_info *segs, u8 seg_cnt,
 
 	ICE_FLOW_SET_HDRS(seg, cfg->addl_hdrs);
 
+	/* A GTP segment has no L4 header bit: without IPV_OTHER the "no L4"
+	 * PTYPE sets are picked, and they hold no GTP PTYPE at all.
+	 */
+	if (seg->hdrs & (ICE_FLOW_SEG_HDR_GTPU_IP | ICE_FLOW_SEG_HDR_GTPU_EH |
+			 ICE_FLOW_SEG_HDR_GTPU_UP | ICE_FLOW_SEG_HDR_GTPU_DWN |
+			 ICE_FLOW_SEG_HDR_GTPC | ICE_FLOW_SEG_HDR_GTPC_TEID))
+		seg->hdrs |= ICE_FLOW_SEG_HDR_IPV_OTHER;
+
 	/* set outer most header */
 	if (cfg->hdr_type == ICE_RSS_INNER_HEADERS_W_OUTER_IPV4)
 		segs[ICE_RSS_OUTER_HEADERS].hdrs |= ICE_FLOW_SEG_HDR_IPV4 |

base-commit: 1cd23ca80784223fa2204e16203f754da4e821f8
-- 
2.43.0

