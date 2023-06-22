Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B481073986E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 09:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA75983880;
	Thu, 22 Jun 2023 07:51:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA75983880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687420312;
	bh=QG64VhXeJyfsMDuJB+krGDlpzC1aiUIPWopwdf/5oMg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3jrTzLPi6UL9u8H/Z+hA4tCScn/1Y+lE8sLFr/A9sByi+xOTygO4j6tNTmkQ0C8nW
	 fpLqZq+G7qjngXoN+T6GgynOEhS2t30ouVAW0FSC0o9K531Qgvnq4XvOlJ07rl3AuO
	 gqR/mUHk1R5kPvyAsGulVmawJhQKwdY8tjRoPfE0xVihqBKAN2vGSS2lmyREOdmjbY
	 x3ScooWSE6OOg2lm+dpxYKXvd+sMghLn+CNKK19odvPMWv+MkU9Q/G3/Tgtqi5UEFU
	 ZPS8VvIbHlXJTVO7EeJ5h10zlussXVrey+2O9qJRtUrt8CoIVeflyj9+gHnU6RtO+g
	 Tb1AhtatqElhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4DQFcmDpiLS; Thu, 22 Jun 2023 07:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 816B7836C3;
	Thu, 22 Jun 2023 07:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 816B7836C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54A491BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C66E836C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C66E836C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImrGQK_bH2IL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 07:51:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F558834DB
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F558834DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:51:42 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-3110ab7110aso6978712f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 00:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687420301; x=1690012301;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LeKOG3SmthWv0DbuStt/suDJPACQGhMHBNxKdIDAJr0=;
 b=Lmd8G7RH0N1Zmx+uozmktcOiQJr/8xsXxqIfWRNCu+aNx8rcwktcXIlfMb2MKA8IbO
 mtXGiKrrOANjb4OhTC3c/2jWq3LGKxRfLVAB09clrKr0bbXjc0h2oXlOqNj0trXD1VPF
 bFY8qyEUX28CotUKw9k6/hfF3gGKcLphoFs607LuB3b0Zt0gyNNhiAx2s3UNqg0d97la
 VOapwd9FHqCMzRzAJiylPAtiOzDn43cdLeMQObDbtWMoTgbV1N6rjZNDMTQqGhJ3Ivyi
 hrhW6D+/dCXmhF1+Fj+ubOmBzA5DhFs3gjIbAVK1zL0OiWj/7Ag/a5WZU3tiy/s5FT3J
 /J9w==
X-Gm-Message-State: AC+VfDwXpVDaDBCVUophLBBjNq/MWh3Dxlh8bIH7L2tjhad8kKKGbCWO
 ynSvglafS000ebiPAZGDTjqdVcdbYUjvCfmcL15t7A==
X-Google-Smtp-Source: ACHHUZ4BUFYu97t9mdfYA5KV6YA2C+Bz9BHAJiOYXmHN9/MPJdGw/NAIAIyFZinwusV1ZnTFyAqvNg==
X-Received: by 2002:a5d:5255:0:b0:30e:4714:bc93 with SMTP id
 k21-20020a5d5255000000b0030e4714bc93mr14177214wrc.5.1687420301108; 
 Thu, 22 Jun 2023 00:51:41 -0700 (PDT)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b003113943bb66sm6283824wru.110.2023.06.22.00.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 00:51:40 -0700 (PDT)
Date: Thu, 22 Jun 2023 09:51:39 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZJP9i6DLPOfJkUyB@nanopsycho>
References: <20230622070956.357404-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622070956.357404-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687420301; x=1690012301; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LeKOG3SmthWv0DbuStt/suDJPACQGhMHBNxKdIDAJr0=;
 b=F/B0S0cVmfFVgc+PS/ic2JPtiHtm74v61KY4nNAKpZfbuPTZP7BhP2/4Bi6pfPxqIL
 VW4jw+mp9Tv761uy2WPNZXG6aviAAqSpsU7s7656aXwhLnAap+D9Wes9O8ll3mrMu57L
 waQ+UiaXFIRgq1R0lBajep4fAr4rZ7Iv1tvZYnWGztMgohySrxdYAEe388MQt+Hw90pj
 V9uSr9hVqZmNI7yPGS93T3uAud+5kB2SsXJqnIxt4Sa1GUroVornUW5tRXZD8dK5Rmlh
 YN4m/zlK/lgkvS4RJ9SqjM5RbtB/W3Ln5Ic6srBpw6PGflw5hxJhTLCkUXoDwd4JRzM6
 kmsg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=F/B0S0cV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Accept LAG netdevs in
 bridge offloads
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
Cc: simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jun 22, 2023 at 09:09:56AM CEST, wojciech.drewek@intel.com wrote:
>Allow LAG interfaces to be used in bridge offload using
>netif_is_lag_master. In this case, search for ice netdev in
>the list of LAG's lower devices.
>
>Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
>Note for Tony: This patch needs to go with Dave's LAG
>patchset:
>https://lore.kernel.org/netdev/20230615162932.762756-1-david.m.ertman@intel.com/
>---
> .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
> 1 file changed, 42 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
>index 1e57ce7b22d3..81b69ba9e939 100644
>--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
>+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
>@@ -15,8 +15,23 @@ static const struct rhashtable_params ice_fdb_ht_params = {
> 
> static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
> {
>-	/* Accept only PF netdev and PRs */
>-	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev);
>+	/* Accept only PF netdev, PRs and LAG */
>+	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
>+		netif_is_lag_master(dev);
>+}
>+
>+static struct net_device *
>+ice_eswitch_br_get_uplnik_from_lag(struct net_device *lag_dev)

s/uplnik/uplink/


>+{
>+	struct net_device *lower;
>+	struct list_head *iter;
>+
>+	netdev_for_each_lower_dev(lag_dev, lower, iter) {
>+		if (netif_is_ice(lower))
>+			return lower;

What if there are 2 ice Nics in the same lag?


>+	}
>+
>+	return NULL;
> }
> 
> static struct ice_esw_br_port *
>@@ -26,8 +41,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
> 		struct ice_repr *repr = ice_netdev_to_repr(dev);
> 
> 		return repr->br_port;
>-	} else if (netif_is_ice(dev)) {
>-		struct ice_pf *pf = ice_netdev_to_pf(dev);
>+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
>+		struct net_device *ice_dev;
>+		struct ice_pf *pf;
>+
>+		if (netif_is_lag_master(dev))
>+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
>+		else
>+			ice_dev = dev;
>+
>+		if (!ice_dev)
>+			return NULL;
>+
>+		pf = ice_netdev_to_pf(ice_dev);
> 
> 		return pf->br_port;
> 	}
>@@ -712,7 +738,18 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
> 
> 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
> 	} else {
>-		struct ice_pf *pf = ice_netdev_to_pf(dev);
>+		struct net_device *ice_dev;
>+		struct ice_pf *pf;
>+
>+		if (netif_is_lag_master(dev))
>+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
>+		else
>+			ice_dev = dev;
>+
>+		if (!ice_dev)
>+			return 0;
>+
>+		pf = ice_netdev_to_pf(ice_dev);
> 
> 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
> 	}
>-- 
>2.40.1
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
