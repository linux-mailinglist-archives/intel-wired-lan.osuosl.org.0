Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EweCAcnSLmpC3wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 18:11:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E120C6817C9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 18:11:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="NtbOO/HH";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B98C60A96;
	Sun, 14 Jun 2026 16:11:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EhEnK5BkxUou; Sun, 14 Jun 2026 16:11:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2F3360ABB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781453509;
	bh=QPrD7vsVlbzeiOG2gzgEPheKRSPg/FcdoyT9Knl/jB4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NtbOO/HH5SqbAQUVqxX/9250Rvjcwl3FZjwJGQvKVJLpp7NtTcIf8IK8l9AGMHlBM
	 Qa0VovlLHHjxcHeEFy/KBV6GvJwB3KzyX3OgSGi3jbVHdTmVuNxJ9grdV1x1culA9V
	 C+YsspEkOfbyiOLxRsqedjnRYA2pc3YyxRvBM3fl8Y3KADaGOnBVP320UJq2YlKp1H
	 2xZUAONnZSqt78fl5r8EfESjfDndk3fhoxRQMhQ0R3HSH4by8fUWDJQuDwGk+T5JO7
	 F4sRvcaNPHb/Kv21aWYfcMAvAhZSGP1B5KwrOkotFXNh6pDq3bxizKdQdXOpqpXghU
	 bPgJa/pCZep6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2F3360ABB;
	Sun, 14 Jun 2026 16:11:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B3E8DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 16:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3CCAC83AE1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 16:11:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FTJGI-lSDlJW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 16:11:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4DBBB83ADE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DBBB83ADE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DBBB83ADE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 16:11:45 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-477-N_XgsJk1MEKzkaolRYRO8g-1; Sun, 14 Jun 2026 12:11:41 -0400
X-MC-Unique: N_XgsJk1MEKzkaolRYRO8g-1
X-Mimecast-MFC-AGG-ID: N_XgsJk1MEKzkaolRYRO8g_1781453500
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-45ef6417092so2217733f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 09:11:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781453500; x=1782058300;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QPrD7vsVlbzeiOG2gzgEPheKRSPg/FcdoyT9Knl/jB4=;
 b=kiWbr6ILNXrJOH37YKu72dYheYsP61fLa1v8k+3UBDfvnSEswCohAMYZPWxkxoxBjN
 dFyoDaCaotPKu1jT6mP3mstnoUgj/dHXv/KNYDdDNNEdZFp19rrjOJZvfdpSo5IPvTd2
 zp9UHhLNxrb8Ps5hJuIevsbWTbk1fRb1e8T+SP5OP1I1oLhSYNngTafDJB0aMb9qPuKl
 zzWJvpbbIUovg4Jv+tb/e2e1p1ZY3JUiJppVwA1A5T3c1UAdkhio0FG4uakfhOIH91LB
 1tbgtqM5iDGi34C66b4SN2tNw40NpcHEDt9ukmVRijPu1y3FOlcezQmup3RQ0k9UO1tQ
 cJ+g==
X-Gm-Message-State: AOJu0Yx1dQ5evc9i0MoH4Q+/oOwEPgA1i0Z8UlBw/Sj+pSvCB/uQu0xL
 c81nYJQHBxYYf+kFrlVB2nLv2fTHUAMnTy07aPH5eCmm13xogsLEZLh+cezhF/SBRH6q7LwRxkF
 aGjNM38fPDmHxrJ+P+sfuAHQOkPJ5Fv8hE7nVtfFUckZKCcWTsAtGaOVSFrHPI6HwrUVS5nR06q
 VzQj00+1QzOhDa663zOJImuEIX9iRt8o9xbvTRrtyByiKKNxgMAwOaYw==
X-Gm-Gg: Acq92OFvMcamj38cObFZ9DiBpdCK8ANflQLWYaqbjqLBQ1AB0u4mBCV2fIzSJVeo3k1
 8ua5tSeZq2ARZSlLyprHmRafGfrSrgveBuCAnxAiOfZGzb0hVnJhlp69mx2bY2F8ocJsMq9F1Zd
 GhMdk3AIrlbqfiQP28IAnw8iZix0rvZ4uR779H6qXCyDfnf672/wt87BHmc4wBPyDf2poKcHQ+Z
 mI45OzC3W7VhB9ghcGXbghCyL7xH43SIN4G34lyXj+WcI718vhxwpkhS5nq3xSMzxlmMZcEQAbY
 DNtfPQqlc7BzfgwXT2vg4B39pTn7Q+osinjdv1H5pyS8aig2OxYiPuxoZkov7srqfAKVQy+bS0Q
 kWay7XOQ3zKpdbMdfLYquzdRkX+DiYQ==
X-Received: by 2002:a05:6000:290e:b0:45e:f381:cd7b with SMTP id
 ffacd0b85a97d-4606da6985fmr15513361f8f.8.1781453500461; 
 Sun, 14 Jun 2026 09:11:40 -0700 (PDT)
X-Received: by 2002:a05:6000:290e:b0:45e:f381:cd7b with SMTP id
 ffacd0b85a97d-4606da6985fmr15513312f8f.8.1781453499874; 
 Sun, 14 Jun 2026 09:11:39 -0700 (PDT)
Received: from fedora.redhat.com ([2a0d:3344:17d1:b608:8e5:8aea:ed86:b36b])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4606f2d933esm24468783f8f.33.2026.06.14.09.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2026 09:11:39 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Date: Sun, 14 Jun 2026 19:11:31 +0300
Message-ID: <20260614161131.192068-1-mheib@redhat.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: pO69ZQKASgWzLJfNi3iQrIV7wXGcWDLuGobJTrwwVDM_1781453500
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781453504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=QPrD7vsVlbzeiOG2gzgEPheKRSPg/FcdoyT9Knl/jB4=;
 b=iAsojaKcsVS38Eu7c5/DN++crHiPZSG67cV/qUcXjquyvPXgRqqg5FHSe5muBpoefRmUIR
 RgYzErDBDIBaJcPZJXXK+DaWYqctxZ45dd9d+lxR+CnV+imn1rqkwQlHxBntb9XXHLXa2I
 GZutLLdUUay3GfnmGYvPpzTcRIPs1Xk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=iAsojaKc
Subject: [Intel-wired-lan] [PATCH net-next] i40e: add devlink parameter for
 Flow Director ATR sample rate
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
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mheib@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E120C6817C9

From: Mohammad Heib <mheib@redhat.com>

The i40e driver uses Flow Director ATR to periodically update flow
steering information for active TCP flows. The update frequency is
currently controlled by I40E_DEFAULT_ATR_SAMPLE_RATE and is fixed at
driver build time.

On systems with a large number of queues and high-rate TCP workloads,
the default sampling interval can result in frequent Flow Director
reprogramming for long-lived flows.

The amount of TCP packet reordering observed on some systems is
sensitive to the ATR sampling interval. Increasing the interval reduces
Flow Director programming activity and can significantly reduce the
associated reordering.

Since the optimal sampling interval depends on the workload and system
configuration, a single fixed value is not suitable for all deployments.

Add a devlink parameter to allow administrators to tune the ATR sample
rate at runtime without rebuilding the driver or disabling ATR
functionality entirely.

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 Documentation/networking/devlink/i40e.rst     | 19 ++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 65 +++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  4 +-
 5 files changed, 90 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index 51c887f0dc83..704469aa9acf 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -40,6 +40,25 @@ Parameters
 
         The default value is ``0`` (internal calculation is used).
 
+.. list-table:: Driver specific parameters implemented
+    :widths: 5 5 90
+
+    * - Name
+      - Mode
+      - Description
+    * - ``atr_sample_rate``
+      - runtime
+      - Controls how frequently Flow Director ATR updates flow steering
+        information for active TCP flows.
+
+        ATR programs Flow Director entries based on sampled transmitted
+        packets. The sampling interval is specified as the number of
+        transmitted packets between ATR updates.
+
+        Lower values increase Flow Director programming activity, while
+        higher values reduce the update frequency.
+
+        The default value is ``20``.
 
 Info versions
 =============
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 1b6a8fbaa648..88eb40ee45f0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -487,6 +487,7 @@ struct i40e_pf {
 	u16 rss_size_max;          /* HW defined max RSS queues */
 	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
 	u16 num_alloc_vsi;         /* num VSIs this driver supports */
+	u32 atr_sample_rate;
 	bool wol_en;
 
 	struct hlist_head fdir_filter_list;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index 229179ccc131..16e51762db45 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -33,12 +33,77 @@ static int i40e_max_mac_per_vf_get(struct devlink *devlink,
 	return 0;
 }
 
+static int i40e_atr_sample_rate_set(struct devlink *devlink,
+				    u32 id,
+				    struct devlink_param_gset_ctx *ctx,
+				    struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+	struct i40e_vsi *vsi;
+	u32 sample_rate = ctx->val.vu32;
+	int i;
+
+	pf->atr_sample_rate = sample_rate;
+
+	if (!test_bit(I40E_FLAG_FD_ATR_ENA, pf->flags))
+		return 0;
+
+	vsi = i40e_pf_get_main_vsi(pf);
+	if (!vsi)
+		return 0;
+
+	for (i = 0; i < vsi->num_queue_pairs; i++) {
+		if (!vsi->tx_rings[i])
+			continue;
+		vsi->tx_rings[i]->atr_sample_rate = sample_rate;
+		vsi->tx_rings[i]->atr_count = 0;
+	}
+
+	return 0;
+}
+
+static int i40e_atr_sample_rate_get(struct devlink *devlink,
+				    u32 id,
+				    struct devlink_param_gset_ctx *ctx,
+				    struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+
+	ctx->val.vu32 = pf->atr_sample_rate;
+
+	return 0;
+}
+
+static int i40e_atr_sample_rate_validate(struct devlink *devlink, u32 id,
+					 union devlink_param_value val,
+					 struct netlink_ext_ack *extack)
+{
+	if (!val.vu32) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "ATR sample rate must be greater than 0");
+		return -EINVAL;
+	}
+	return 0;
+}
+
+enum i40e_dl_param_id {
+	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
+};
+
 static const struct devlink_param i40e_dl_params[] = {
 	DEVLINK_PARAM_GENERIC(MAX_MAC_PER_VF,
 			      BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      i40e_max_mac_per_vf_get,
 			      i40e_max_mac_per_vf_set,
 			      NULL),
+	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_ATR_SAMPLE_RATE,
+			     "atr_sample_rate",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     i40e_atr_sample_rate_get,
+			     i40e_atr_sample_rate_set,
+			     i40e_atr_sample_rate_validate),
 };
 
 static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d59750c490f4..9c8144970a34 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3458,7 +3458,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 
 	/* some ATR related tx ring init */
 	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
-		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
+		ring->atr_sample_rate = vsi->back->atr_sample_rate;
 		ring->atr_count = 0;
 	} else {
 		ring->atr_sample_rate = 0;
@@ -12745,6 +12745,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
 		}
 	}
 
+	pf->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
+
 	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
 	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
 		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index bb741ff3e5f2..7e29e9244c3a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -372,8 +372,8 @@ struct i40e_ring {
 	u16 next_to_clean;
 	u16 xdp_tx_active;
 
-	u8 atr_sample_rate;
-	u8 atr_count;
+	u32 atr_sample_rate;
+	u32 atr_count;
 
 	bool ring_active;		/* is ring online or not */
 	bool arm_wb;		/* do something to arm write back */
-- 
2.53.0

