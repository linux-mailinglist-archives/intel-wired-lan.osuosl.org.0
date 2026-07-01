Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vc91O13gRGry2QoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 11:39:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A57496EBAA8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 11:39:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qMl7m+NX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BEA36144F;
	Wed,  1 Jul 2026 09:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1s7Z5FJKj73t; Wed,  1 Jul 2026 09:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4FC76147C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782898779;
	bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qMl7m+NXW6lVnkcWWXxXeD//8dnBoS8rOKGvrE3ZsLqeJ09jT9QuwVZqbMXX4i5jQ
	 hyhXAKO/8a7Bb8fnGClCJ3TYOqY+8XAXWwIB3FacmLLTY143HcLOG4i4uk+C+aXSh5
	 XPiw95P49ur00wyiNTm/RsNOpXtczbVGkbDkUEFXlkDiJxQ+o2wMlwRScfRXZARU7m
	 sjwO5EvdTLnw2K008CBnBlpENSl6+j8kxlMpNamzywQgsiZ56okh16xIOkjOTTNB4o
	 O0Bs4wdHpdMzPYzm8LBXuoX5BmxxccvAF6SuktiPjVNhMneUtOKFujsZL/h/KBQSyL
	 +dQxOJ1KiWydg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4FC76147C;
	Wed,  1 Jul 2026 09:39:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 292622D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 268856144E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2_VmmCOQPHl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 09:39:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B01461449
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B01461449
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B01461449
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 09:39:36 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-34-zcRkNfRMMZmIVVvGOnROWQ-1; Wed, 01 Jul 2026 05:39:32 -0400
X-MC-Unique: zcRkNfRMMZmIVVvGOnROWQ-1
X-Mimecast-MFC-AGG-ID: zcRkNfRMMZmIVVvGOnROWQ_1782898771
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-493ae2a6a72so4118355e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2026 02:39:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782898771; x=1783503571;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
 b=fiIj0wgw+F4noItbtBiFijlUs7FjTTstGuZlxrUoNSDCVOQqY3MpOdmXgCdhKdIMGx
 zvvHtCsNKnXxPW1mp7QzwBlBo2jrjtwbLkUA6FOiQbMYVjZ066BoZ2qKO0aGGsbZ/WF1
 cUUOXuJyWMIPoGuEfj8D8UhWW0Gh1eXT702BC05lbpm/r82yOv/JjFxz0c2qyDB2SOPm
 ZLGOnv3bCO6Vpmt1CdDBABkFsxbKrP3qPlEqtq+/Xw1WWodSwQ2qqw59kzXH22259PCi
 ZoBzmqcWqL/ayzIlk50kNpnFvNczPFWdZmh0IA80vMTGt7GBlG0Dtknmg63uodbUuiLF
 6xIA==
X-Gm-Message-State: AOJu0YxCytkFHmRLTTchznB4Df025WmYmfS3slG/srHQx+UOc+co4mPX
 VgHXdRLZWwq9Qxu54sMT6REcPLkLuFhGOHaZpCmql6xLJYyEMl1egfsUM2m4XNUpTZ0qatp9+W+
 Azj3cOX8iLTIY6v6IJkPg5vekBDscZCAwDAu9A2X98vNulBWNrK7ucRWAF2pxeiqfc9hHbCl6jB
 zTQDfzjR1iViNTDzJAOEjz99pb6bCOCTKAGJS35m8zrIhCt+QMfZN4lg==
X-Gm-Gg: AfdE7cmOI6BVMCzAXNcSjhWY18BQkeeiY2WYJyzddSZZ8dzJFh4RCdC13qTML13QxO/
 R5Gp4sZdJI7BLdDT4Q7eqleKBQA+ScQcKBqndwp7B4vcbutOxZi0zhE9EH1UZ0PNKGlgsoozVeD
 RAlBWXIf7CnCm6RHb4VNge5t0RxlUt4ZBpD4TCe1f/Dx0DzP7UHXzdUQuqijG0X5l3yw13EABbW
 zPezNKfabg4508cLcQ+SygULTJKDDkpgfu9QdAMxhvyif2hdSME9gts124sI2ltbCi18NulbHqO
 wtiHiiDQnZwbkIGPqxsAZY49D5Nbtr7g/pltKMPoLZ/I9SWNbQ456N+nDOnz7PUZVR49X0SDpO9
 cSiN9hbYA8aHo4Ms/Li6PBzHt
X-Received: by 2002:a05:600d:111:b0:493:bfea:2786 with SMTP id
 5b1f17b1804b1-493c2b9f630mr9813215e9.32.1782898771419; 
 Wed, 01 Jul 2026 02:39:31 -0700 (PDT)
X-Received: by 2002:a05:600d:111:b0:493:bfea:2786 with SMTP id
 5b1f17b1804b1-493c2b9f630mr9812745e9.32.1782898770918; 
 Wed, 01 Jul 2026 02:39:30 -0700 (PDT)
Received: from fedora.redhat.com ([216.128.14.135])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-475641e4cdesm16547001f8f.13.2026.07.01.02.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2026 02:39:30 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Date: Wed,  1 Jul 2026 12:38:30 +0300
Message-ID: <20260701093830.948756-2-mheib@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260701093830.948756-1-mheib@redhat.com>
References: <20260701093830.948756-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0LMYJNS9OBcTgpPsD65gZn9sSboEhriXK4yJBGVvTbA_1782898771
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782898775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
 b=IOis08uq9o7Vrp518tPBodmX31OUnObHKXvcsViBpM64OqgzYgQllFJrAqfmHP7SfnrORo
 TqvrA8Sjw5DDeaAak3B5qXOyekWt2pw+nHdUJC7CU41nAVB3/S+WykwMR8B6tUVL+FUXrQ
 oKViw+yWDI2xSL3/lfRFfZN2EFFLEts=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IOis08uq
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] i40e: add devlink
 parameter for Flow Director ATR sample rate
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
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mheib@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A57496EBAA8

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
 Documentation/networking/devlink/i40e.rst     | 20 +++++++++++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 36 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index 51c887f0dc83..2cea98b631ba 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -40,6 +40,26 @@ Parameters
 
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
+        Setting to ``0`` disables ATR sampling (no filters will be programmed)
+        The default value is ``20``.
 
 Info versions
 =============
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index 229179ccc131..cf487efdd803 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -33,12 +33,48 @@ static int i40e_max_mac_per_vf_get(struct devlink *devlink,
 	return 0;
 }
 
+static int i40e_atr_sample_rate_set(struct devlink *devlink,
+				    u32 id,
+				    struct devlink_param_gset_ctx *ctx,
+				    struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+	u32 sample_rate = ctx->val.vu32;
+
+	pf->atr_sample_rate = sample_rate;
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
+			     NULL),
 };
 
 static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
-- 
2.53.0

