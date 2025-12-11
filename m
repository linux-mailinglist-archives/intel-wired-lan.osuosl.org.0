Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0D8CB70BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 20:48:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 578CC80749;
	Thu, 11 Dec 2025 19:48:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BqVaQtL1WGf; Thu, 11 Dec 2025 19:48:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C71B280EC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765482535;
	bh=Jv6m2YMgKN7T4jwsVlPhMquuzv61VeZD4CVTT9gh09M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kFz09sFYgDXrRBjEk75HbRBateQHlqVoWU71FyYZo5eFwww+VKs9mlAssRu36CcdF
	 dsNP0Ul9N0+OFvZcvdK8nwkn7PJruWIoNqYb7KR+NTnwWFTkU/BjsgA9wyi45+5PrB
	 8CjsdI9NTfLZ/YaqQWjJG1owCqXDeDmMKf7uwb+Dyl1PrR+QZUb9e0mmk084f2Nkhp
	 a29Q45jnFPqS/3D7c/xKWA3Hp7v7W8hmydrV9mZUecR2d0cnDDumLylN4QmfaE7mVt
	 dYYLg33nOZPwyphINtJOrZDkrUd/xY8m21ACBto5+1xHNHXKANvRK0frpYSeHYPBVp
	 R1t4VUlk64RDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71B280EC3;
	Thu, 11 Dec 2025 19:48:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D5F7CE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3BFE40029
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDejbA94xweM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 19:48:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C489040012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C489040012
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C489040012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:53 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-624-waC6Rb6FMYa-kLKHaMNgfA-1; Thu,
 11 Dec 2025 14:48:47 -0500
X-MC-Unique: waC6Rb6FMYa-kLKHaMNgfA-1
X-Mimecast-MFC-AGG-ID: waC6Rb6FMYa-kLKHaMNgfA_1765482523
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8670B195FCF7; Thu, 11 Dec 2025 19:48:43 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.252])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id D11691956056; Thu, 11 Dec 2025 19:48:34 +0000 (UTC)
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
Date: Thu, 11 Dec 2025 20:47:47 +0100
Message-ID: <20251211194756.234043-5-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-1-ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765482532;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jv6m2YMgKN7T4jwsVlPhMquuzv61VeZD4CVTT9gh09M=;
 b=RV6DAP4xUvKB0HOxWKoXQrGaVXOBaSrB6IUSQX1lGsmjrqALR0mSdI5TfCv9THVWJlpKtd
 cEitPuNFMFOZ8ViBvvjBIUFDX+XAPY1nmuEPIM80wA8RgA5uaa5scA9eSHxCDQKMKpQLRh
 GKJA0WrLs9FkjNe1pSLr1BmndOX12KM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=RV6DAP4x
Subject: [Intel-wired-lan] [PATCH RFC net-next 04/13] dpll: zl3073x:
 register pins with fwnode handle
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

Pass the firmware node handle to dpll_pin_get() when registering pins
in the zl3073x driver.

This allows the DPLL core to associate the created pin object with its
corresponding firmware node. Consequently, this enables consumer
drivers (such as network drivers) to locate and request this specific
pin using the fwnode_dpll_pin_find() helper.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/zl3073x/dpll.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dpll/zl3073x/dpll.c b/drivers/dpll/zl3073x/dpll.c
index cf2ad3031e5d7..198cc2b703e96 100644
--- a/drivers/dpll/zl3073x/dpll.c
+++ b/drivers/dpll/zl3073x/dpll.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/netlink.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/sprintf.h>
 
@@ -1368,7 +1369,7 @@ zl3073x_dpll_pin_register(struct zl3073x_dpll_pin *pin, u32 index)
 
 	/* Create or get existing DPLL pin */
 	pin->dpll_pin = dpll_pin_get(zldpll->dev->clock_id, index, THIS_MODULE,
-				     &props->dpll_props, NULL);
+				     &props->dpll_props, props->fwnode);
 	if (IS_ERR(pin->dpll_pin)) {
 		rc = PTR_ERR(pin->dpll_pin);
 		goto err_pin_get;
-- 
2.51.2

