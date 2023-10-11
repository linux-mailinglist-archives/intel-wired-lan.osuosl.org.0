Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4542D7C57D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 17:13:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1E0341F1E;
	Wed, 11 Oct 2023 15:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1E0341F1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697037193;
	bh=osi3pzim07xhpuDdBDhjYghwdtTWfp6P82EzpXPq3ZE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qdxZwz0T9hvf6Z4rsfMPbPghpVEHdR0LNKcLbRhCd3U+Y5IkOFT/pVii4EBWYOCYX
	 My4C9/3egBdlHbGWIJOg1Ck00/vkMN4QqVbTO5ppUmWFWpUP7ukQMGEJMoY4K5+zvg
	 L//gf1PXrw8gWaH3uVm/kymfmoF2RizWWcTbCE/DsZ0KsO1CasqmE9OEI4wqSJayq7
	 DwdXscakYQwYJQB/44AAFke0N7lmxzkHJ0K6beeVXwzWD2CFDJAu/8/Out/XA5TQ1R
	 JElj9EbN9Xsir6SAKSkr+v0orvlYUIVjtS0NZnZW5ZjlDR1OJTwachcpD0KSXeVOBN
	 +OXY4VcR7vKnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v8MhZRUCG-zm; Wed, 11 Oct 2023 15:13:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72F0E41F0F;
	Wed, 11 Oct 2023 15:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72F0E41F0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7748B1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 15:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E918402A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 15:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E918402A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tb3KK7AJACGC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 15:12:40 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3864240C10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 15:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3864240C10
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-9a6190af24aso1212626466b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697037157; x=1697641957;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FAgFeLpEzvuaN6Ug5hM7a4CNPu1b9UntxyrTaGBWUvc=;
 b=Mj3JsW2trL5hDilCEaGMZM5IONEbBZK5J2AM6Ae2cBVPLh4ggUz8Yut5tl2l8ZD7Hb
 t2Wc+0Qo6/XPcsOC9WMX82mq3igpY2d8eO0ZNrVooIkiz8DpNJUvgByXJRz5rISk7Bft
 R7v/5AnX1T5eGNA4sc8UuQFw4zfyy2MAAkIi3jbsN57IJhqifAsJgereJbKxFR4/AL59
 4p4pWVct7QcIqrfZlZOFK1E7MmX3IZnCXbA0+c0aPWGa6U4oVD+SzxfQn1QRMoBzlrlL
 Hd66Cya18S6icDo1lYnph0zPmyOlt13QSTCp4YCuUlLXl0Mlh6wx+I963gbLyqf0ga31
 9hUA==
X-Gm-Message-State: AOJu0YzPVrdl9sMuz63L1LJR8QqRPadc2o+066ZEnrthBgitF0iS6ivP
 gShG7NLhDprB9ekjfDh+lDtWUA==
X-Google-Smtp-Source: AGHT+IHS47E09L/oI9WrH+icpXfiGhfan4uYZBBoe0aUo+VpL3TVjdBEG2UUJXj2Fr6cFB3aSTVnhw==
X-Received: by 2002:a17:906:af65:b0:9b2:9e44:222e with SMTP id
 os5-20020a170906af6500b009b29e44222emr22445165ejb.19.1697037157679; 
 Wed, 11 Oct 2023 08:12:37 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 u16-20020a1709064ad000b009ae54585aebsm9731532ejt.89.2023.10.11.08.12.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 08:12:36 -0700 (PDT)
Date: Wed, 11 Oct 2023 17:12:35 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <ZSa7Y9gwC8qCBv2r@nanopsycho>
References: <20231011131348.435353-1-pawel.chmielewski@intel.com>
 <20231011131348.435353-2-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011131348.435353-2-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1697037157; x=1697641957;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FAgFeLpEzvuaN6Ug5hM7a4CNPu1b9UntxyrTaGBWUvc=;
 b=FVsA/FZKlNHTx2pd1JDrOzNHfvq/B3PZdRugCsg3cOcZsqLgAK+6I58IlAjFwBC4sM
 urjwGC5zIAdSPh8rxmQn1qPKyx8u16qHHu1GKoX7kM8odQmBashGwAlaPNOTDI2bDlg3
 b0nwXARY1ezJAnqgdZpS4j9eXF5NO6GvOzWvyo++hLjdH7EdZmYFIi9VrrzYgdT6Hp3O
 JNpOAgM2vJZW/c5ZM6YBXkODvbNO5oHxHhK5ephGNPlW6nxWhNo/b/HDl1Im41Y9sCcC
 xwlGQpPq76mcBxr9UzPjCONzYWPLoyhj5lqnBOki7lpX8iHL9noBeUZoqu2RHXHr+Gs8
 3q6w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=FVsA/FZK
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ethtool: Add forced
 speed to supported link modes maps
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, jdamato@fastly.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Oct 11, 2023 at 03:13:47PM CEST, pawel.chmielewski@intel.com wrote:
>From: Paul Greenwalt <paul.greenwalt@intel.com>
>
>The need to map Ethtool forced speeds to Ethtool supported link modes is
>common among drivers. To support this, add a common structure for forced
>speed maps and a function to init them.  This is solution was originally
>introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
>maps on module init") for qede driver.
>
>ethtool_forced_speed_maps_init() should be called during driver init
>with an array of struct ethtool_forced_speed_map to populate the mapping.
>
>Definitions for maps themselves are left in the driver code, as the sets
>of supported link modes may vary between the devices.
>
>The qede driver was compile tested only.
>
>Suggested-by: Andrew Lunn <andrew@lunn.ch>
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
>---
> .../net/ethernet/qlogic/qede/qede_ethtool.c   | 46 +++++--------------
> include/linux/ethtool.h                       | 27 +++++++++++
> net/ethtool/ioctl.c                           | 13 ++++++

Would be probably better to this this in 2 patches. 1) Introduce ethtool
infra, 2) convert qede to use it


> 3 files changed, 52 insertions(+), 34 deletions(-)
>
>diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
>index 95820cf1cd6c..d4f2cd13d308 100644
>--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
>+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
>@@ -201,21 +201,6 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
> 
> /* Forced speed capabilities maps */
> 
>-struct qede_forced_speed_map {
>-	u32		speed;
>-	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
>-
>-	const u32	*cap_arr;
>-	u32		arr_size;
>-};
>-
>-#define QEDE_FORCED_SPEED_MAP(value)					\
>-{									\
>-	.speed		= SPEED_##value,				\
>-	.cap_arr	= qede_forced_speed_##value,			\
>-	.arr_size	= ARRAY_SIZE(qede_forced_speed_##value),	\
>-}
>-
> static const u32 qede_forced_speed_1000[] __initconst = {
> 	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> 	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
>@@ -263,28 +248,21 @@ static const u32 qede_forced_speed_100000[] __initconst = {
> 	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
> };
> 
>-static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
>-	QEDE_FORCED_SPEED_MAP(1000),
>-	QEDE_FORCED_SPEED_MAP(10000),
>-	QEDE_FORCED_SPEED_MAP(20000),
>-	QEDE_FORCED_SPEED_MAP(25000),
>-	QEDE_FORCED_SPEED_MAP(40000),
>-	QEDE_FORCED_SPEED_MAP(50000),
>-	QEDE_FORCED_SPEED_MAP(100000),
>+static struct ethtool_forced_speed_map
>+	qede_forced_speed_maps[] __ro_after_init = {
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 1000),

This is confusing indentation. What about:
static struct ethtool_forced_speed_map
qede_forced_speed_maps[] __ro_after_init = {
	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 1000),
?


>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 10000),
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 20000),
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 25000),
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 40000),
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 50000),
>+		ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 100000),
> };
> 
> void __init qede_forced_speed_maps_init(void)
> {
>-	struct qede_forced_speed_map *map;
>-	u32 i;
>-
>-	for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
>-		map = qede_forced_speed_maps + i;
>-
>-		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
>-		map->cap_arr = NULL;
>-		map->arr_size = 0;
>-	}
>+	ethtool_forced_speed_maps_init(qede_forced_speed_maps,
>+				       ARRAY_SIZE(qede_forced_speed_maps));
> }
> 
> /* Ethtool callbacks */
>@@ -564,8 +542,8 @@ static int qede_set_link_ksettings(struct net_device *dev,
> 				   const struct ethtool_link_ksettings *cmd)
> {
> 	const struct ethtool_link_settings *base = &cmd->base;
>+	const struct ethtool_forced_speed_map *map;
> 	struct qede_dev *edev = netdev_priv(dev);
>-	const struct qede_forced_speed_map *map;
> 	struct qed_link_output current_link;
> 	struct qed_link_params params;
> 	u32 i;
>diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
>index 62b61527bcc4..68d682012e9d 100644
>--- a/include/linux/ethtool.h
>+++ b/include/linux/ethtool.h
>@@ -1052,4 +1052,31 @@ static inline int ethtool_mm_frag_size_min_to_add(u32 val_min, u32 *val_add,
>  * next string.
>  */
> extern __printf(2, 3) void ethtool_sprintf(u8 **data, const char *fmt, ...);
>+
>+/* Link mode to forced speed capabilities maps */
>+struct ethtool_forced_speed_map {
>+	u32		speed;
>+	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
>+
>+	const u32	*cap_arr;
>+	u32		arr_size;
>+};
>+
>+#define ETHTOOL_FORCED_SPEED_MAP(prefix, value)				\
>+{									\
>+	.speed		= SPEED_##value,				\
>+	.cap_arr	= prefix##_##value,				\
>+	.arr_size	= ARRAY_SIZE(prefix##_##value),			\
>+}
>+
>+/**
>+ * ethtool_forced_speed_maps_init
>+ * @maps: Pointer to an array of Ethtool forced speed map
>+ * @size: Array size
>+ *
>+ * Initialize an array of Ethtool forced speed map to Ethtool link modes. This
>+ * should be called during driver module init.
>+ */
>+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
>+				    u32 size);
> #endif /* _LINUX_ETHTOOL_H */
>diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c

Why you put this into ioctl.c?

Can't this be put into include/linux/linkmode.h as a static helper as
well?


>index 0b0ce4f81c01..34507691fc9d 100644
>--- a/net/ethtool/ioctl.c
>+++ b/net/ethtool/ioctl.c
>@@ -3388,3 +3388,16 @@ void ethtool_rx_flow_rule_destroy(struct ethtool_rx_flow_rule *flow)
> 	kfree(flow);
> }
> EXPORT_SYMBOL(ethtool_rx_flow_rule_destroy);
>+
>+void ethtool_forced_speed_maps_init(struct ethtool_forced_speed_map *maps,
>+				    u32 size)
>+{
>+	for (u32 i = 0; i < size; i++) {
>+		struct ethtool_forced_speed_map *map = &maps[i];
>+
>+		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
>+		map->cap_arr = NULL;
>+		map->arr_size = 0;
>+	}
>+}
>+EXPORT_SYMBOL(ethtool_forced_speed_maps_init);
>-- 
>2.37.3
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
