Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4857CB70E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 20:50:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32232410E7;
	Thu, 11 Dec 2025 19:50:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OzCfThbhF1Bl; Thu, 11 Dec 2025 19:50:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A27F4093C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765482605;
	bh=Qxf+F7jVKT4v7iHZok399EWHR4sQcjFXObuf5lXOoY0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KCS7y1YVGvv4jbBsW/ixzzB1JnlOxUnRzcS+DDmQcRLyOLATilP0pSrwnaNdTGyj3
	 bxGl8inJpnAKYqThqG745M8ASPmzqGgqTBR9vMsvhBdrZDw9bW4yryS/J84w0Qb7uJ
	 q+9I/tONMjzfg2cQv9Ss/6JjOQIPPjFSoNwgakz9MCTXiSCivZjF8qqC8Dqic6aMFm
	 jtDpPlWNQiBcaZT82gl23VG/VMw8wyOpX4b8klLeVT3uawuTLwQ+cfpYKsDpE8WWHE
	 5aad7nsXuHc7N0V98it7UxKDw5Db8s5ZsC1DTikBJRLQ37nranZKdb0zFl7FHggtYl
	 ZzMiAcFMjQiDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A27F4093C;
	Thu, 11 Dec 2025 19:50:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 314BE2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E83580F6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M8NBA59qTTyF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 19:50:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F52480F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F52480F52
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F52480F52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:50:02 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-541-tc7NhJYeNDOMH-ZN5fYyxA-1; Thu,
 11 Dec 2025 14:49:57 -0500
X-MC-Unique: tc7NhJYeNDOMH-ZN5fYyxA-1
X-Mimecast-MFC-AGG-ID: tc7NhJYeNDOMH-ZN5fYyxA_1765482594
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0D533195605F; Thu, 11 Dec 2025 19:49:54 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.252])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id DA91A1956056; Thu, 11 Dec 2025 19:49:45 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Oros <poros@redhat.com>, Michal Schmidt <mschmidt@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Date: Thu, 11 Dec 2025 20:47:55 +0100
Message-ID: <20251211194756.234043-13-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-1-ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765482602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qxf+F7jVKT4v7iHZok399EWHR4sQcjFXObuf5lXOoY0=;
 b=c7Y6MKC9h6dX6mkqSABC7hiqEh6841zdYMQ/kKVOf9lmKKtMwqvLJUJRzbkGEiIc45hnjh
 1imsCnzBTu2T1roGvQefwNRQkWQ2jfEly6VaH9qgIcuGyDeq6o+daJcAk+2nD38VeYBO/x
 BttQGxHisqnifzGQbv0CxdwC+D1R63U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=c7Y6MKC9
Subject: [Intel-wired-lan] [PATCH RFC net-next 12/13] ice: dpll: Enable
 reference count tracking
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

Update the Intel ICE driver to utilize the DPLL reference count tracking
infrastructure.

Add .dpll_tracker fields to the internal struct ice_dpll and struct
ice_dpll_pin structures.

Pass pointers to these trackers to the dpll_device_get/put() and
dpll_pin_get/put() functions, replacing the temporary NULL values.

This enables developers to trace reference ownership for the ICE driver's
DPLL resources via the ref_tracker debugfs interface when
CONFIG_DPLL_REFCNT_TRACKER is enabled.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 16 +++++++++-------
 drivers/net/ethernet/intel/ice/ice_dpll.h |  4 ++++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 39cf26987b35c..ff1b597051e8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2814,7 +2814,7 @@ static void ice_dpll_release_pins(struct ice_dpll_pin *pins, int count)
 	int i;
 
 	for (i = 0; i < count; i++)
-		dpll_pin_put(pins[i].pin, NULL);
+		dpll_pin_put(pins[i].pin, &pins[i].tracker);
 }
 
 /**
@@ -2840,7 +2840,8 @@ ice_dpll_get_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 
 	for (i = 0; i < count; i++) {
 		pins[i].pin = dpll_pin_get(clock_id, i + start_idx, THIS_MODULE,
-					   &pins[i].prop, NULL, NULL);
+					   &pins[i].prop, NULL,
+					   &pins[i].tracker);
 		if (IS_ERR(pins[i].pin)) {
 			ret = PTR_ERR(pins[i].pin);
 			goto release_pins;
@@ -2851,7 +2852,7 @@ ice_dpll_get_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 
 release_pins:
 	while (--i >= 0)
-		dpll_pin_put(pins[i].pin, NULL);
+		dpll_pin_put(pins[i].pin, &pins[i].tracker);
 	return ret;
 }
 
@@ -3037,7 +3038,7 @@ static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
 	if (WARN_ON_ONCE(!vsi || !vsi->netdev))
 		return;
 	dpll_netdev_pin_clear(vsi->netdev);
-	dpll_pin_put(rclk->pin, NULL);
+	dpll_pin_put(rclk->pin, &rclk->tracker);
 }
 
 /**
@@ -3247,7 +3248,7 @@ ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
 {
 	if (cgu)
 		dpll_device_unregister(d->dpll, d->ops, d);
-	dpll_device_put(d->dpll, NULL);
+	dpll_device_put(d->dpll, &d->tracker);
 }
 
 /**
@@ -3271,7 +3272,8 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 	u64 clock_id = pf->dplls.clock_id;
 	int ret;
 
-	d->dpll = dpll_device_get(clock_id, d->dpll_idx, THIS_MODULE, NULL);
+	d->dpll = dpll_device_get(clock_id, d->dpll_idx, THIS_MODULE,
+				  &d->tracker);
 	if (IS_ERR(d->dpll)) {
 		ret = PTR_ERR(d->dpll);
 		dev_err(ice_pf_to_dev(pf),
@@ -3287,7 +3289,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 		ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, ops, d);
 		if (ret) {
-			dpll_device_put(d->dpll, NULL);
+			dpll_device_put(d->dpll, &d->tracker);
 			return ret;
 		}
 		d->ops = ops;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index c0da03384ce91..63fac6510df6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -23,6 +23,7 @@ enum ice_dpll_pin_sw {
 /** ice_dpll_pin - store info about pins
  * @pin: dpll pin structure
  * @pf: pointer to pf, which has registered the dpll_pin
+ * @tracker: reference count tracker
  * @idx: ice pin private idx
  * @num_parents: hols number of parent pins
  * @parent_idx: hold indexes of parent pins
@@ -37,6 +38,7 @@ enum ice_dpll_pin_sw {
 struct ice_dpll_pin {
 	struct dpll_pin *pin;
 	struct ice_pf *pf;
+	dpll_tracker tracker;
 	u8 idx;
 	u8 num_parents;
 	u8 parent_idx[ICE_DPLL_RCLK_NUM_MAX];
@@ -58,6 +60,7 @@ struct ice_dpll_pin {
 /** ice_dpll - store info required for DPLL control
  * @dpll: pointer to dpll dev
  * @pf: pointer to pf, which has registered the dpll_device
+ * @tracker: reference count tracker
  * @dpll_idx: index of dpll on the NIC
  * @input_idx: currently selected input index
  * @prev_input_idx: previously selected input index
@@ -76,6 +79,7 @@ struct ice_dpll_pin {
 struct ice_dpll {
 	struct dpll_device *dpll;
 	struct ice_pf *pf;
+	dpll_tracker tracker;
 	u8 dpll_idx;
 	u8 input_idx;
 	u8 prev_input_idx;
-- 
2.51.2

