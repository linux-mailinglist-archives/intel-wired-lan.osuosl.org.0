Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iwT/J6XfN2r1UwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 14:57:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 100C46AAC83
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 14:57:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="zugpa/Uk";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B692866BD;
	Sun, 21 Jun 2026 12:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLHHYEFwCw_Y; Sun, 21 Jun 2026 12:57:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17DE8866C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782046626;
	bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zugpa/UkBjB+BJWXbO5VhUOs9EMXM8ASWdrN/08jz7fx4FzuyOHqM0Q4uTUVeOSPH
	 ZGG1mniwgGlvErU7UocCtqiEEyonKUyUm/Bk26VkID9yJJpqun8Ru4+coNQYExw7yH
	 s5y6UIrHCZoPlZbPi1SctTSwi8WOWkWek71BRfGDe2lg5DkKrIN/8tThA0FNjXhlxR
	 LhdA6zOv0Nav6YXpqG61HIy3mgg48V6VCgb0ghWHHgfNMN+DIhW9VC44x7lpz+XrS1
	 rsB1nbBzm3ZQIKP3VbLkMC//PVSaO1o3Df8x8V71QCvzDtbZWkppUDl2EWUB8cFzKH
	 oSMx0ZxPy7ECw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17DE8866C2;
	Sun, 21 Jun 2026 12:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 72E8E367
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 590DE6FD84
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qygZDCidZDk1 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jun 2026 12:57:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3AF0C6FD82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AF0C6FD82
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3AF0C6FD82
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 12:57:02 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-519-rscU8yoyPpameYpUSTkWpQ-1; Sun, 21 Jun 2026 08:56:57 -0400
X-MC-Unique: rscU8yoyPpameYpUSTkWpQ-1
X-Mimecast-MFC-AGG-ID: rscU8yoyPpameYpUSTkWpQ_1782046617
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-4621b17733cso1775775f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 05:56:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782046616; x=1782651416;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
 b=pbJCJ1hwVigVp9pDc8+hbG5qd0sH9nj1hhonm0pR5d+d65VCxcTJ7S0yb9vjyWwlXS
 0A2HCsXDRNS1V6l8XhCnXasWBNVvgh7vtpdsJpSt36w1XAB2VOhrp6KZzsbho+xZ1jR/
 kpkH6kdIOlKHe07nAGETXOxUcAqw08nwbBbPCxBvjfQDx5umP7Cuox8QRHZhIpPvGB1s
 leCXH909PScfFtuZXRc+28jRct2KHZey2jYwnutF0PqZj6v6NXGL+upUtjqX03wWbecc
 RGYRS6CQTaf5OMj6wq76rsCsmMlP0HjtUtUPjhuI7ae/tTWT9pHH/YJIIpE/yIaRe961
 M/uA==
X-Gm-Message-State: AOJu0Yw2WwxB5Q3sU6nJCpI8I5Dz8xU2ioR1L0iHFCWuQBTwu76o2m2F
 bwDbN4rE9uhg7TDUyKL5fqDq+ABWRg/siNSQ5p4aP96xlz7RMsNMW19I3wNGmfdQYLLM4Les8JJ
 jJNVaWp5oabwcLxyw1xSP6H3uyIcYmMBq8HPIA8ClLY4u8O7CcFjmeLq3L4s1iHkF5Qqzm7WRNR
 lgppoKjCPLha/okqhFwS362RV7E4bk/x3DZa8PaVhXBoE3e04bAJKtcw==
X-Gm-Gg: AfdE7clGHsT+vgzxAO6y1qjbM8LiVDT9mlXpsr4Eqg+ZxlUU31dalRC7+2tZZdsG2vr
 nL3ei6XyA7kFjjYy9my5Ml9j52KYmBa7+NQv1hBtOT8zdpIDZo9KwZE2g8536UJA6cocTtbLDOr
 6BQrU9BdxSuUCYIkvtDIX6Lw/Fpx9uMU8XtZijFKGuLntZv6ajGHyQgWo5MMvlTweFRFe0XA+0F
 eCpiqK3ABpMtLu+gFk4dHq+4DD6UqjNlEjo8iD6LmfQm+2Q8dIJNb8BO680UCacbu6gzmr17n2m
 sIayqZMvMakT/qiDBH0VC6vCfr348KqOTp/Qq0fBUxRChQL10Pl6SPX1jD5iB+Lj5so5qoogGZH
 juliH5OxdfMrITojjKpIshvk=
X-Received: by 2002:a5d:4e12:0:b0:45e:64b3:af44 with SMTP id
 ffacd0b85a97d-46509e548b3mr15099620f8f.36.1782046616561; 
 Sun, 21 Jun 2026 05:56:56 -0700 (PDT)
X-Received: by 2002:a5d:4e12:0:b0:45e:64b3:af44 with SMTP id
 ffacd0b85a97d-46509e548b3mr15099591f8f.36.1782046616160; 
 Sun, 21 Jun 2026 05:56:56 -0700 (PDT)
Received: from fedora.redhat.com ([216.128.14.31])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-466648c4f01sm17884258f8f.9.2026.06.21.05.56.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Jun 2026 05:56:55 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, Mohammad Heib <mheib@redhat.com>
Date: Sun, 21 Jun 2026 15:56:44 +0300
Message-ID: <20260621125644.253844-2-mheib@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260621125644.253844-1-mheib@redhat.com>
References: <20260621125644.253844-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: A-pdjl2yQ1pj6OeEx0GRznc1Tb_q5aPEcMt_MsuJACw_1782046617
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782046621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4f6w2MoA+XP+TjGC5G5VS3oEg0ZAwkShPaC9GG0r1lM=;
 b=h2thekVJ+wXCJ/4LBNfNrwgGixjWmzitzK22yH2F6sOvyq7eDIn6CrbBdpoimdRcdb/fkK
 qbllcKk3PhMVId5R3S23NY8Xw+kGrqDDMl9LQIKXBXMRheq+ZqbNecmdRmdBWsWtU4sgUZ
 mPdXb/F9Cx7CWVXuDI/NCnqGbCKHMc4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=h2thekVJ
Subject: [Intel-wired-lan] [PATCH 2/2 net-next,
 v2] i40e: add devlink parameter for Flow Director ATR sample rate
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp];
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
X-Rspamd-Queue-Id: 100C46AAC83

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

