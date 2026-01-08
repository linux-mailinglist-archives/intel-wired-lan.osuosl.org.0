Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C16D057D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 19:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E4AB40AD1;
	Thu,  8 Jan 2026 18:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lP5MpmeTe1mp; Thu,  8 Jan 2026 18:25:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBEA040944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767896705;
	bh=MHGl94+ux8GLgo24B5u6dYefzPli6EsQ2mcDi+fRvlU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PUq+eQpzIE+LB0rHZw6JWGMUfG3KOQKG+N1ulwr0mV6UnVbBusJ9oPT2hkosoWfDB
	 c9umorsbpDS6YaV7zF2+vvisRL23XTz1zA8GpmoprpWeUv40fBtBEJyZhTdSj1YKjh
	 7MReZ7ys6yYEKik6eVvttu4Gl+1XGjiW1yZWve71clmg23/07lNBO0W5XsT/b2spUL
	 t5+sXsWwDJKpZHDLuivgUIl8MRBpJprIG5xHZNZI4OmjFPNOiFJtGvtvBp0CYOQ2ta
	 /Y/y1c0dPk5TDs2cQ8Q6FrDztJAwo70uJfvDMjCqNrGe750PxCZp344JScxBVTqG3h
	 kuJYP9e4G9gYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBEA040944;
	Thu,  8 Jan 2026 18:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1C41308
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A425782779
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vCqhtJt7F8nd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 18:25:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8472982726
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8472982726
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8472982726
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:25:01 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-22--exXMXVqM_mpK8EEj6O-pA-1; Thu,
 08 Jan 2026 13:24:56 -0500
X-MC-Unique: -exXMXVqM_mpK8EEj6O-pA-1
X-Mimecast-MFC-AGG-ID: -exXMXVqM_mpK8EEj6O-pA_1767896692
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C4E0A19560A3; Thu,  8 Jan 2026 18:24:52 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.20])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 906861800285; Thu,  8 Jan 2026 18:24:45 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Jan 2026 19:23:17 +0100
Message-ID: <20260108182318.20935-12-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-1-ivecera@redhat.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767896700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MHGl94+ux8GLgo24B5u6dYefzPli6EsQ2mcDi+fRvlU=;
 b=NH/ri+0JwcrRjs3zyUqvH4hS63lWzQkb1UdGrkDMtnexjV2eWynDikqHoZIe2dIY40ZZMz
 YOmrsQPxNJ9xi9bbz/xXWqPCxtd14ofkbZ2k/KdV6lJc510HcTorFwDNINLkUrtIfCGE3S
 gFb+MhLsx/+QzjcJWkO7l6cLkfVZk5k=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NH/ri+0J
Subject: [Intel-wired-lan] [PATCH net-next 11/12] drivers: Add support for
 DPLL reference count tracking
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update existing DPLL drivers to utilize the DPLL reference count
tracking infrastructure.

Add dpll_tracker fields to the drivers' internal device and pin
structures. Pass pointers to these trackers when calling
dpll_device_get/put() and dpll_pin_get/put().

This allows developers to inspect the specific references held by this
driver via debugfs when CONFIG_DPLL_REFCNT_TRACKER is enabled, aiding
in the debugging of resource leaks.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/zl3073x/dpll.c                    | 14 ++++++++------
 drivers/dpll/zl3073x/dpll.h                    |  2 ++
 drivers/net/ethernet/intel/ice/ice_dpll.c      | 15 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_dpll.h      |  4 ++++
 drivers/net/ethernet/mellanox/mlx5/core/dpll.c | 15 +++++++++------
 drivers/ptp/ptp_ocp.c                          | 17 ++++++++++-------
 6 files changed, 41 insertions(+), 26 deletions(-)

diff --git a/drivers/dpll/zl3073x/dpll.c b/drivers/dpll/zl3073x/dpll.c
index 5b2f9fd960fac..14f167394c9ed 100644
--- a/drivers/dpll/zl3073x/dpll.c
+++ b/drivers/dpll/zl3073x/dpll.c
@@ -29,6 +29,7 @@
  * @list: this DPLL pin list entry
  * @dpll: DPLL the pin is registered to
  * @dpll_pin: pointer to registered dpll_pin
+ * @tracker: tracking object for the acquired reference
  * @label: package label
  * @dir: pin direction
  * @id: pin id
@@ -44,6 +45,7 @@ struct zl3073x_dpll_pin {
 	struct list_head	list;
 	struct zl3073x_dpll	*dpll;
 	struct dpll_pin		*dpll_pin;
+	dpll_tracker		tracker;
 	char			label[8];
 	enum dpll_pin_direction	dir;
 	u8			id;
@@ -1368,7 +1370,7 @@ zl3073x_dpll_pin_register(struct zl3073x_dpll_pin *pin, u32 index)
 
 	/* Create or get existing DPLL pin */
 	pin->dpll_pin = dpll_pin_get(zldpll->dev->clock_id, index, THIS_MODULE,
-				     &props->dpll_props, NULL);
+				     &props->dpll_props, &pin->tracker);
 	if (IS_ERR(pin->dpll_pin)) {
 		rc = PTR_ERR(pin->dpll_pin);
 		goto err_pin_get;
@@ -1391,7 +1393,7 @@ zl3073x_dpll_pin_register(struct zl3073x_dpll_pin *pin, u32 index)
 	return 0;
 
 err_register:
-	dpll_pin_put(pin->dpll_pin, NULL);
+	dpll_pin_put(pin->dpll_pin, &pin->tracker);
 err_prio_get:
 	pin->dpll_pin = NULL;
 err_pin_get:
@@ -1422,7 +1424,7 @@ zl3073x_dpll_pin_unregister(struct zl3073x_dpll_pin *pin)
 	/* Unregister the pin */
 	dpll_pin_unregister(zldpll->dpll_dev, pin->dpll_pin, ops, pin);
 
-	dpll_pin_put(pin->dpll_pin, NULL);
+	dpll_pin_put(pin->dpll_pin, &pin->tracker);
 	pin->dpll_pin = NULL;
 }
 
@@ -1596,7 +1598,7 @@ zl3073x_dpll_device_register(struct zl3073x_dpll *zldpll)
 				       dpll_mode_refsel);
 
 	zldpll->dpll_dev = dpll_device_get(zldev->clock_id, zldpll->id,
-					   THIS_MODULE, NULL);
+					   THIS_MODULE, &zldpll->tracker);
 	if (IS_ERR(zldpll->dpll_dev)) {
 		rc = PTR_ERR(zldpll->dpll_dev);
 		zldpll->dpll_dev = NULL;
@@ -1608,7 +1610,7 @@ zl3073x_dpll_device_register(struct zl3073x_dpll *zldpll)
 				  zl3073x_prop_dpll_type_get(zldev, zldpll->id),
 				  &zl3073x_dpll_device_ops, zldpll);
 	if (rc) {
-		dpll_device_put(zldpll->dpll_dev, NULL);
+		dpll_device_put(zldpll->dpll_dev, &zldpll->tracker);
 		zldpll->dpll_dev = NULL;
 	}
 
@@ -1631,7 +1633,7 @@ zl3073x_dpll_device_unregister(struct zl3073x_dpll *zldpll)
 
 	dpll_device_unregister(zldpll->dpll_dev, &zl3073x_dpll_device_ops,
 			       zldpll);
-	dpll_device_put(zldpll->dpll_dev, NULL);
+	dpll_device_put(zldpll->dpll_dev, &zldpll->tracker);
 	zldpll->dpll_dev = NULL;
 }
 
diff --git a/drivers/dpll/zl3073x/dpll.h b/drivers/dpll/zl3073x/dpll.h
index e8c39b44b356c..c65c798c37927 100644
--- a/drivers/dpll/zl3073x/dpll.h
+++ b/drivers/dpll/zl3073x/dpll.h
@@ -18,6 +18,7 @@
  * @check_count: periodic check counter
  * @phase_monitor: is phase offset monitor enabled
  * @dpll_dev: pointer to registered DPLL device
+ * @tracker: tracking object for the acquired reference
  * @lock_status: last saved DPLL lock status
  * @pins: list of pins
  * @change_work: device change notification work
@@ -31,6 +32,7 @@ struct zl3073x_dpll {
 	u8				check_count;
 	bool				phase_monitor;
 	struct dpll_device		*dpll_dev;
+	dpll_tracker			tracker;
 	enum dpll_lock_status		lock_status;
 	struct list_head		pins;
 	struct work_struct		change_work;
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 64b7b045ecd58..4eca62688d834 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2814,7 +2814,7 @@ static void ice_dpll_release_pins(struct ice_dpll_pin *pins, int count)
 	int i;
 
 	for (i = 0; i < count; i++)
-		dpll_pin_put(pins[i].pin, NULL);
+		dpll_pin_put(pins[i].pin, &pins[i].tracker);
 }
 
 /**
@@ -2840,7 +2840,7 @@ ice_dpll_get_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 
 	for (i = 0; i < count; i++) {
 		pins[i].pin = dpll_pin_get(clock_id, i + start_idx, THIS_MODULE,
-					   &pins[i].prop, NULL);
+					   &pins[i].prop, &pins[i].tracker);
 		if (IS_ERR(pins[i].pin)) {
 			ret = PTR_ERR(pins[i].pin);
 			goto release_pins;
@@ -2851,7 +2851,7 @@ ice_dpll_get_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 
 release_pins:
 	while (--i >= 0)
-		dpll_pin_put(pins[i].pin, NULL);
+		dpll_pin_put(pins[i].pin, &pins[i].tracker);
 	return ret;
 }
 
@@ -3037,7 +3037,7 @@ static void ice_dpll_deinit_rclk_pin(struct ice_pf *pf)
 	if (WARN_ON_ONCE(!vsi || !vsi->netdev))
 		return;
 	dpll_netdev_pin_clear(vsi->netdev);
-	dpll_pin_put(rclk->pin, NULL);
+	dpll_pin_put(rclk->pin, &rclk->tracker);
 }
 
 /**
@@ -3247,7 +3247,7 @@ ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
 {
 	if (cgu)
 		dpll_device_unregister(d->dpll, d->ops, d);
-	dpll_device_put(d->dpll, NULL);
+	dpll_device_put(d->dpll, &d->tracker);
 }
 
 /**
@@ -3271,7 +3271,8 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 	u64 clock_id = pf->dplls.clock_id;
 	int ret;
 
-	d->dpll = dpll_device_get(clock_id, d->dpll_idx, THIS_MODULE, NULL);
+	d->dpll = dpll_device_get(clock_id, d->dpll_idx, THIS_MODULE,
+				  &d->tracker);
 	if (IS_ERR(d->dpll)) {
 		ret = PTR_ERR(d->dpll);
 		dev_err(ice_pf_to_dev(pf),
@@ -3287,7 +3288,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
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
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
index 7c6789c478fee..e1f3d4dae557e 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
@@ -9,7 +9,9 @@
  */
 struct mlx5_dpll {
 	struct dpll_device *dpll;
+	dpll_tracker dpll_tracker;
 	struct dpll_pin *dpll_pin;
+	dpll_tracker pin_tracker;
 	struct mlx5_core_dev *mdev;
 	struct workqueue_struct *wq;
 	struct delayed_work work;
@@ -438,7 +440,8 @@ static int mlx5_dpll_probe(struct auxiliary_device *adev,
 	auxiliary_set_drvdata(adev, mdpll);
 
 	/* Multiple mdev instances might share one DPLL device. */
-	mdpll->dpll = dpll_device_get(clock_id, 0, THIS_MODULE, NULL);
+	mdpll->dpll = dpll_device_get(clock_id, 0, THIS_MODULE,
+				      &mdpll->dpll_tracker);
 	if (IS_ERR(mdpll->dpll)) {
 		err = PTR_ERR(mdpll->dpll);
 		goto err_free_mdpll;
@@ -452,7 +455,7 @@ static int mlx5_dpll_probe(struct auxiliary_device *adev,
 	/* Multiple mdev instances might share one DPLL pin. */
 	mdpll->dpll_pin = dpll_pin_get(clock_id, mlx5_get_dev_index(mdev),
 				       THIS_MODULE, &mlx5_dpll_pin_properties,
-				       NULL);
+				       &mdpll->pin_tracker);
 	if (IS_ERR(mdpll->dpll_pin)) {
 		err = PTR_ERR(mdpll->dpll_pin);
 		goto err_unregister_dpll_device;
@@ -480,11 +483,11 @@ static int mlx5_dpll_probe(struct auxiliary_device *adev,
 	dpll_pin_unregister(mdpll->dpll, mdpll->dpll_pin,
 			    &mlx5_dpll_pins_ops, mdpll);
 err_put_dpll_pin:
-	dpll_pin_put(mdpll->dpll_pin, NULL);
+	dpll_pin_put(mdpll->dpll_pin, &mdpll->pin_tracker);
 err_unregister_dpll_device:
 	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
 err_put_dpll_device:
-	dpll_device_put(mdpll->dpll, NULL);
+	dpll_device_put(mdpll->dpll, &mdpll->dpll_tracker);
 err_free_mdpll:
 	kfree(mdpll);
 	return err;
@@ -500,9 +503,9 @@ static void mlx5_dpll_remove(struct auxiliary_device *adev)
 	destroy_workqueue(mdpll->wq);
 	dpll_pin_unregister(mdpll->dpll, mdpll->dpll_pin,
 			    &mlx5_dpll_pins_ops, mdpll);
-	dpll_pin_put(mdpll->dpll_pin, NULL);
+	dpll_pin_put(mdpll->dpll_pin, &mdpll->pin_tracker);
 	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
-	dpll_device_put(mdpll->dpll, NULL);
+	dpll_device_put(mdpll->dpll, &mdpll->dpll_tracker);
 	kfree(mdpll);
 
 	mlx5_dpll_synce_status_set(mdev,
diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index f39b3966b3e8c..1b16a9c3d7fdc 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -285,6 +285,7 @@ struct ptp_ocp_sma_connector {
 	u8	default_fcn;
 	struct dpll_pin		   *dpll_pin;
 	struct dpll_pin_properties dpll_prop;
+	dpll_tracker		   tracker;
 };
 
 struct ocp_attr_group {
@@ -383,6 +384,7 @@ struct ptp_ocp {
 	struct ptp_ocp_sma_connector sma[OCP_SMA_NUM];
 	const struct ocp_sma_op *sma_op;
 	struct dpll_device *dpll;
+	dpll_tracker tracker;
 	int signals_nr;
 	int freq_in_nr;
 };
@@ -4788,7 +4790,7 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	devlink_register(devlink);
 
 	clkid = pci_get_dsn(pdev);
-	bp->dpll = dpll_device_get(clkid, 0, THIS_MODULE, NULL);
+	bp->dpll = dpll_device_get(clkid, 0, THIS_MODULE, &bp->tracker);
 	if (IS_ERR(bp->dpll)) {
 		err = PTR_ERR(bp->dpll);
 		dev_err(&pdev->dev, "dpll_device_alloc failed\n");
@@ -4801,7 +4803,8 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	for (i = 0; i < OCP_SMA_NUM; i++) {
 		bp->sma[i].dpll_pin = dpll_pin_get(clkid, i, THIS_MODULE,
-						   &bp->sma[i].dpll_prop, NULL);
+						   &bp->sma[i].dpll_prop,
+						   &bp->sma[i].tracker);
 		if (IS_ERR(bp->sma[i].dpll_pin)) {
 			err = PTR_ERR(bp->sma[i].dpll_pin);
 			goto out_dpll;
@@ -4810,7 +4813,7 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		err = dpll_pin_register(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops,
 					&bp->sma[i]);
 		if (err) {
-			dpll_pin_put(bp->sma[i].dpll_pin, NULL);
+			dpll_pin_put(bp->sma[i].dpll_pin, &bp->sma[i].tracker);
 			goto out_dpll;
 		}
 	}
@@ -4820,9 +4823,9 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 out_dpll:
 	while (i--) {
 		dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, &bp->sma[i]);
-		dpll_pin_put(bp->sma[i].dpll_pin, NULL);
+		dpll_pin_put(bp->sma[i].dpll_pin, &bp->sma[i].tracker);
 	}
-	dpll_device_put(bp->dpll, NULL);
+	dpll_device_put(bp->dpll, &bp->tracker);
 out:
 	ptp_ocp_detach(bp);
 out_disable:
@@ -4843,11 +4846,11 @@ ptp_ocp_remove(struct pci_dev *pdev)
 	for (i = 0; i < OCP_SMA_NUM; i++) {
 		if (bp->sma[i].dpll_pin) {
 			dpll_pin_unregister(bp->dpll, bp->sma[i].dpll_pin, &dpll_pins_ops, &bp->sma[i]);
-			dpll_pin_put(bp->sma[i].dpll_pin, NULL);
+			dpll_pin_put(bp->sma[i].dpll_pin, &bp->sma[i].tracker);
 		}
 	}
 	dpll_device_unregister(bp->dpll, &dpll_ops, bp);
-	dpll_device_put(bp->dpll, NULL);
+	dpll_device_put(bp->dpll, &bp->tracker);
 	devlink_unregister(devlink);
 	ptp_ocp_detach(bp);
 	pci_disable_device(pdev);
-- 
2.52.0

