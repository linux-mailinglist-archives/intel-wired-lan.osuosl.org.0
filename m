Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AB77B9D83
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 15:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B07D83AA5;
	Thu,  5 Oct 2023 13:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B07D83AA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696513743;
	bh=+s/59ynkIicVfi2i4Su10Y6krSH1KZk/3QB+RqKvwo8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ujnAtE/xSncaYGKMzL+uWRD80IqOVM6fJuBHr29ZdfCjQKlgMBWjOd+d14eY1hogp
	 a4r0Cfqa9qNtSr4iZrkntJbUKvcWUugKonYrtGRhawB60cdigW7mM298BSNtHL6qE2
	 mjdRDG84W/T1kFvwnRSMfDcEr/SXwTw8tfdwDEjha+RB+gHMR9lxM6gD6kxFqVFrES
	 vgZ/ThWQfn02Y1RScn3QWOAild6XQL87QQ3hxYppRAxsOCPUfyrqKvDq24/cM14sdS
	 6xs40M0OUO0VjPcpy05VDOvJ4AOskjioCpbJ+zRfRmRe9n+7k8s3Vh7eF1zNg6rhYH
	 4nuDdBs7n+Gvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIsUjWlfB1EE; Thu,  5 Oct 2023 13:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 312008382D;
	Thu,  5 Oct 2023 13:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 312008382D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A04101BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7635F40B0E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7635F40B0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVCVlWrKFWbh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 13:48:55 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BEA740AA1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BEA740AA1
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-283-eMbJz1K7NmOYv0WHBXKPdA-1; Thu, 05 Oct 2023 09:48:52 -0400
X-MC-Unique: eMbJz1K7NmOYv0WHBXKPdA-1
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-7742bd869e4so17526785a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Oct 2023 06:48:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696513732; x=1697118532;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WUFBDdELdueKekAKn28l3cuGTc8E2A1Wmz1k6PVvTYE=;
 b=KlNlrq6HkiAUePaUkWac29SQ/7a7WPX8/Qn5r/fPYA0LyrjxecPkPAZ8kYZmMDqPcL
 pEVtvNRR5rwkcq5XUbMzuJS5ZZkjYYY6Dx5AMeQwIHz46LFRv/lvJCHOWpq7UbUIEi0P
 +33Gpmons4fkUTzUed7ZWS1lwlxZ0qKonAoKTYBOtMrPI42uVLRI/0YQImY8B2K5SY1s
 Rzg9kqKysdhMYcNaQ6u3gzj2giSGb04sszcYaiJA6NEitx3hCWMiFlQ/zdwbJGDSUey4
 lyPgkDHJobtNpRRShCUE3HmmiV/XMNMEUrRSHe+BzbjIGuSybhy0McWR4YzX7w6OZYSP
 PIGA==
X-Gm-Message-State: AOJu0Yyg6Mrh1up5i+qiZoU3rO/G94Eg6r0V1JVAJAfHzTagpMHnNypU
 l8X80yZCFPvQJ5Y03AclSBN/GWPAhEzrArYCupwzbeDQLYvWIG2yXAADKqONQ3IQyXVwQ/YsQwl
 0G4GUMo1LoDkvNCOepuiB3vObk/D+xA==
X-Received: by 2002:a05:620a:2915:b0:775:7520:5214 with SMTP id
 m21-20020a05620a291500b0077575205214mr5945540qkp.0.1696513732210; 
 Thu, 05 Oct 2023 06:48:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2wtaXq1pHzz6hwXZa4E2xm2NacBrWxiRKjpHT50618ghR5jmmr+RqCR72p5u/LAer+oWUdA==
X-Received: by 2002:a05:620a:2915:b0:775:7520:5214 with SMTP id
 m21-20020a05620a291500b0077575205214mr5945510qkp.0.1696513731890; 
 Thu, 05 Oct 2023 06:48:51 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-225-9.dyn.eolo.it. [146.241.225.9])
 by smtp.gmail.com with ESMTPSA id
 s17-20020a05620a031100b00767177a5bebsm490081qkm.56.2023.10.05.06.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Oct 2023 06:48:51 -0700 (PDT)
Message-ID: <97f3ac0d8b49305390ed799c1965fd665b755e77.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org
Date: Thu, 05 Oct 2023 15:48:47 +0200
In-Reply-To: <20231002144412.1755194-3-pawel.chmielewski@intel.com>
References: <20231002144412.1755194-1-pawel.chmielewski@intel.com>
 <20231002144412.1755194-3-pawel.chmielewski@intel.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1696513734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+IpFm9Ok/lIm5ILa4vZsIurwO6BXWfpUh9Q8gUop0SM=;
 b=V4NaUHgtrU4UpiAW6KSwvsteIvggbEKHPq3LSwX6bXH2z1x0nday3uITvC+e4BQnxpbOCS
 Hk6hfOWymtUoyOWCZM9n37IM/kwq0hNG0PVLNjE2n1qyeJn08xdtYKC8nxZ2HfCy0XN7yC
 a/YYH2qKIFr/8ZUkNUo4x8niPttelnk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=V4NaUHgt
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] ice: Refactor finding
 advertised link speed
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
 vladimir.oltean@nxp.com, jdamato@fastly.com, kuba@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>, d-tatianin@yandex-team.ru,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-10-02 at 16:44 +0200, Pawel Chmielewski wrote:
> Refactor ice_get_link_ksettings to using forced speed to link modes mapping.
> 
> Suggested-by : Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 200 +++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_main.c    |   2 +
>  3 files changed, 138 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index fcaa5c3b8ec0..988b177d9388 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -960,6 +960,7 @@ int ice_stop(struct net_device *netdev);
>  void ice_service_task_schedule(struct ice_pf *pf);
>  int ice_load(struct ice_pf *pf);
>  void ice_unload(struct ice_pf *pf);
> +void ice_adv_lnk_speed_maps_init(void);
>  
>  /**
>   * ice_set_rdma_cap - enable RDMA support
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index d3cb08e66dcb..b027788c42f6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -345,6 +345,86 @@ static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
>  
>  #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
>  
> +static const u32 ice_adv_lnk_speed_100[] __initconst = {
> +	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_1000[] __initconst = {
> +	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_2500[] __initconst = {
> +	ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_5000[] __initconst = {
> +	ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_10000[] __initconst = {
> +	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_25000[] __initconst = {
> +	ETHTOOL_LINK_MODE_25000baseCR_Full_BIT,
> +	ETHTOOL_LINK_MODE_25000baseSR_Full_BIT,
> +	ETHTOOL_LINK_MODE_25000baseKR_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_40000[] __initconst = {
> +	ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_50000[] __initconst = {
> +	ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT,
> +};
> +
> +static const u32 ice_adv_lnk_speed_100000[] __initconst = {
> +	ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT,
> +};
> +
> +#define ICE_ADV_LNK_SPEED_MAP(value)					\
> +{									\
> +	.speed		= SPEED_##value,				\
> +	.cap_arr	= ice_adv_lnk_speed_##value,			\
> +	.arr_size	= ARRAY_SIZE(ice_adv_lnk_speed_##value),	\
> +}

I think it could make sense move even the above macro definition to the
common APIs (adding a 'prefix' argument).

Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
