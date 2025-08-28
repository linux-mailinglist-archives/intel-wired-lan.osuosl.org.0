Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8303BB39E1B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 15:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDD4F81129;
	Thu, 28 Aug 2025 13:05:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkQhYb5UJ8Tv; Thu, 28 Aug 2025 13:05:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B0DD811A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756386308;
	bh=JpMfRZeR4SBFl0cDh4lqIpag2paKZt4hWT0Y+LU/kmQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T7E/47ivXmZ6pBDbmemtFRq4/Zcqnig6EPuKsZK9wNUWsw8/e+i9am1QMPrhx0AGk
	 tdMEjW9cFpzAnbgQhXWsTanTUSosc0Ij93UcUYWC6xBoBcd98maXzRBnWiTntsu0Jo
	 U9ebn5wbnxbied5pzij9+AsgDQ9EjZpm7n3yXPhxf1w80GS5/jK2WFwWl8bj6w2z7d
	 kK+UG9C5mUY1tlRp3kkKbXTakswZKvO8EuWhpg0Krrudp/dCQy1vQi3eOFyik28QTD
	 ZZBVsHw0tJHevIL5i48UXN+NH8wNsHc0zRkyYh3OG0ZnlKgX1fa6NYiyazhbwwyAjB
	 wo6kjn2kBPUcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B0DD811A9;
	Thu, 28 Aug 2025 13:05:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AD2161B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B88160AF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mcnyh4plM-vD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 13:05:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 847C86070F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 847C86070F
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 847C86070F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 13:05:01 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-3c7aa4ce85dso689736f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 06:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756386300; x=1756991100;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JpMfRZeR4SBFl0cDh4lqIpag2paKZt4hWT0Y+LU/kmQ=;
 b=udNGMS/HHZMMGcQWuap6Gy0MWgJ8hM9uCf1+cGhIhkcIdFUURPKb1ig7Da1ikrFkVj
 2FI3dif4JiZKEbyaVhsr7EhKNic+E4pmMipNEKgX8geT/p5vGdTcPN5Vy2M/GZXTgruU
 HSD5/HX/AaLr/ZxHUOhLsdbhXrKMVxbsGFQrwk7KAdHlSYhzZic8chDe9vNjZ3lRFOGK
 D7MwaGhrJK7WY/rYaWI2xCTVmVdlNTvo7GRksSchrHGRsH7p0JcFryjFyD097ZrmXSUH
 roSH/FCpqlBqLS7wmQmcFPzUVLKmtGRHyQ6Hw4R5Qle3mg9oxRrD4wdCSRplejxYBFsV
 8KgQ==
X-Gm-Message-State: AOJu0YyzW42O8jG9YmWbTRGrigWKAImXKZ2OjxTep7IzF3xOiA6K3Bld
 hDimeR1U85815FEpIZNW5jdtKnp80Ix+vnfNSY2RYfPwc5yrZELz86FNUpfRw18NMjI=
X-Gm-Gg: ASbGncsyC+J1OYBViCCu2l6jtyfaUa+qzv2j6bR6y4PFMXV6np2jRxTDDS+4APixtlC
 YM/z0tx6zEXZR2VGnCnnA+VaWJMgerU2yH8xg4ijK+BesqfaQ7gWsmBK/yAMBZ75PnjhNvp0Ht8
 OYj2Pby46kCMz3ZM5dqiedFTXiFsaeF7Czroe0myy9VG9SfjoAiZDpR5YGXUEpFBJ9T3fj1Maie
 lv5RuW1zvo1FMvBc010tkDMzBJeaM1dBZpOFcbIcjPMXgcJUykcBZIFED8sAuMA15+bHQgoYIZN
 acGnxI7oDcmCj0t/Dbg9nUnX7H6fBDKpZSsS5EQ1ZhVMFBdm7CFkzqK7ZwLbtPnghMN3AC+4HsW
 /0q3LD9WcZ6S3nQFr2F74Nie7
X-Google-Smtp-Source: AGHT+IFZ63smbO+AqIfprJMFW4PEEowKUCB5lwDUFxsH7UZjhawV9nFc3J91PnU9b8bCjAn+l1PCqg==
X-Received: by 2002:a05:6000:420d:b0:3ce:ae6b:51d9 with SMTP id
 ffacd0b85a97d-3ceae6b5368mr728617f8f.26.1756386299405; 
 Thu, 28 Aug 2025 06:04:59 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b7d97b5bbsm2771445e9.1.2025.08.28.06.04.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 06:04:58 -0700 (PDT)
Date: Thu, 28 Aug 2025 15:04:50 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: mohammad heib <mheib@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com, 
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com, 
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <zylu4kqwjx4rjatlsggo2v4lspxbkx4efb5mx7tvudhmfjsipz@vf74rx5bpr3l>
References: <20250823094952.182181-1-mheib@redhat.com>
 <pdanf5ciga5ddl7xyi2zkltcznyz4wtnyqyaqm7f5oqpcrubfz@ma4juoq4qlph>
 <f865bca4-40e3-4e65-9269-6c0f0ae9ad22@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f865bca4-40e3-4e65-9269-6c0f0ae9ad22@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1756386300; x=1756991100;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=JpMfRZeR4SBFl0cDh4lqIpag2paKZt4hWT0Y+LU/kmQ=;
 b=Gv88Gzg0k/uJqsq2i/jhXMqeCGHomHONWz1PUrC3Yhe2Eu/+oxHwL2w/d6cvuBMTIQ
 m9Hy1otrqmZtzlm5J2FGCALpA6AFebWhJgVcFfCPTm+YLDL8vPfothpgtE/tqQyLTpdr
 sMx95jp7yKLFDGnUw312kkt8Gb9M/wySUqmPW7mt0myLsm4lP2ShLg2IJXIKcmphGd56
 EIpkSMGB54Dry7TDdP8qp9OiNm4XadWJ5PbMDg6ojDITHWQbtSXdGccytuut8k/H65eP
 G+OFtYTrSUKeqY2mxtaFplUGIk+ZAXRqYCMjaKL2MumGlWuAin7ROT3NmDTLeyMrHWZm
 wjnw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Gv88Gzg0
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: add devlink param to
 control VF MAC address limit
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

Thu, Aug 28, 2025 at 02:49:26PM +0200, mheib@redhat.com wrote:
>Hi Jiri
>
>On 8/28/25 2:43 PM, Jiri Pirko wrote:
>> Sat, Aug 23, 2025 at 11:49:52AM +0200, mheib@redhat.com wrote:
>> > From: Mohammad Heib <mheib@redhat.com>
>> > 
>> > This patch introduces a new devlink runtime parameter that controls
>> > the maximum number of MAC filters allowed per VF.
>> > 
>> > The parameter is an integer value. If set to a non-zero number, it is
>> > used as a strict per-VF cap. If left at zero, the driver falls back to
>> > the default limit calculated from the number of allocated VFs and
>> > ports.
>> > 
>> > This makes the limit policy explicit and configurable by user space,
>> > instead of being only driver internal logic.
>> > 
>> > Example command to enable per-vf mac limit:
>> > - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
>> > 	value 12 \
>> > 	cmode runtime
>> > 
>> > - Previous discussion about this change:
>> >   https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
>> > 
>> > Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
>> > Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> > ---
>> > Documentation/networking/devlink/i40e.rst     | 22 ++++++++
>> > drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>> > .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
>> > .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
>> > 4 files changed, 95 insertions(+), 12 deletions(-)
>> > 
>> > diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
>> > index d3cb5bb5197e..f8d5b00bb51d 100644
>> > --- a/Documentation/networking/devlink/i40e.rst
>> > +++ b/Documentation/networking/devlink/i40e.rst
>> > @@ -7,6 +7,28 @@ i40e devlink support
>> > This document describes the devlink features implemented by the ``i40e``
>> > device driver.
>> > 
>> > +Parameters
>> > +==========
>> > +
>> > +.. list-table:: Driver specific parameters implemented
>> > +    :widths: 5 5 90
>> > +
>> > +    * - Name
>> > +      - Mode
>> > +      - Description
>> > +    * - ``max_mac_per_vf``
>> > +      - runtime
>> > +      - Controls the maximum number of MAC addresses a VF can use on i40e devices.
>> > +
>> > +        By default (``0``), the driver enforces its internally calculated per-VF
>> > +        MAC filter limit, which is based on the number of allocated VFS.
>> > +
>> > +        If set to a non-zero value, this parameter acts as a strict cap:
>> > +        the driver enforces the maximum of the user-provided value and ignore
>> > +        internally calculated limit.
>> > +
>> > +        The default value is ``0``.
>> > +
>> > Info versions
>> > =============
>> > 
>> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> > index 801a57a925da..d2d03db2acec 100644
>> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> > @@ -574,6 +574,10 @@ struct i40e_pf {
>> > 	struct i40e_vf *vf;
>> > 	int num_alloc_vfs;	/* actual number of VFs allocated */
>> > 	u32 vf_aq_requests;
>> > +	/* If set to non-zero, the device uses this value
>> > +	 * as maximum number of MAC filters per VF.
>> > +	 */
>> > +	u32 max_mac_per_vf;
>> > 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
>> > 	struct ratelimit_state mdd_message_rate_limit;
>> > 	/* DCBx/DCBNL capability for PF that indicates
>> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> > index cc4e9e2addb7..8532e40b5c7d 100644
>> > --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> > +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>> > @@ -5,6 +5,42 @@
>> > #include "i40e.h"
>> > #include "i40e_devlink.h"
>> > 
>> > +static int i40e_max_mac_per_vf_set(struct devlink *devlink,
>> > +				   u32 id,
>> > +				   struct devlink_param_gset_ctx *ctx,
>> > +				   struct netlink_ext_ack *extack)
>> > +{
>> > +	struct i40e_pf *pf = devlink_priv(devlink);
>> > +
>> > +	pf->max_mac_per_vf = ctx->val.vu32;
>> > +	return 0;
>> > +}
>> > +
>> > +static int i40e_max_mac_per_vf_get(struct devlink *devlink,
>> > +				   u32 id,
>> > +				   struct devlink_param_gset_ctx *ctx)
>> > +{
>> > +	struct i40e_pf *pf = devlink_priv(devlink);
>> > +
>> > +	ctx->val.vu32 = pf->max_mac_per_vf;
>> > +	return 0;
>> > +}
>> > +
>> > +enum i40e_dl_param_id {
>> > +	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> > +	I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>> What's so i40 specific about this? Sounds pretty generic to be.
>> 
>> 
>> 
>> > +};
>> > +
>> > +static const struct devlink_param i40e_dl_params[] = {
>> > +	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
>> > +			     "max_mac_per_vf",
>> > +			     DEVLINK_PARAM_TYPE_U32,
>> > +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>> > +			     i40e_max_mac_per_vf_get,
>> > +			     i40e_max_mac_per_vf_set,
>> > +			     NULL),
>> > +};
>> > +
>> > static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
>> > {
>> > 	u8 dsn[8];
>> > @@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
>> >   **/
>> > void i40e_devlink_register(struct i40e_pf *pf)
>> > {
>> > -	devlink_register(priv_to_devlink(pf));
>> > +	int err;
>> > +	struct devlink *dl = priv_to_devlink(pf);
>> > +	struct device *dev = &pf->pdev->dev;
>> > +
>> > +	err = devlink_params_register(dl, i40e_dl_params,
>> > +				      ARRAY_SIZE(i40e_dl_params));
>> > +	if (err) {
>> > +		dev_err(dev,
>> > +			"devlink params register failed with error %d", err);
>> > +	}
>> > +
>> > +	devlink_register(dl);
>> > +
>> > }
>> > 
>> > /**
>> > @@ -176,7 +224,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
>> >   **/
>> > void i40e_devlink_unregister(struct i40e_pf *pf)
>> > {
>> > -	devlink_unregister(priv_to_devlink(pf));
>> > +	struct devlink *dl = priv_to_devlink(pf);
>> > +
>> > +	devlink_unregister(dl);
>> > +	devlink_params_unregister(dl, i40e_dl_params,
>> > +				  ARRAY_SIZE(i40e_dl_params));
>> > }
>> > 
>> > /**
>> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> > index 081a4526a2f0..e7c0c791eed1 100644
>> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> > @@ -2935,19 +2935,23 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>> > 		if (!f)
>> > 			++mac_add_cnt;
>> > 	}
>> > -
>> > -	/* If this VF is not privileged, then we can't add more than a limited
>> > -	 * number of addresses.
>> > +	/* Determine the maximum number of MAC addresses this VF may use.
>> > +	 *
>> > +	 * - For untrusted VFs: use a fixed small limit.
>> > +	 *
>> > +	 * - For trusted VFs: limit is calculated by dividing total MAC
>> > +	 *  filter pool across all VFs/ports.
>> > 	 *
>> > -	 * If this VF is trusted, it can use more resources than untrusted.
>> > -	 * However to ensure that every trusted VF has appropriate number of
>> > -	 * resources, divide whole pool of resources per port and then across
>> > -	 * all VFs.
>> > +	 * - User can override this by devlink param "max_mac_per_vf".
>> > +	 *   If set its value is used as a strict cap.
>> > 	 */
>> > -	if (!vf_trusted)
>> > +	if (!vf_trusted) {
>> > 		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
>> > -	else
>> > +	} else {
>> > 		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
>> > +		if (pf->max_mac_per_vf > 0)
>> > +			mac_add_max = pf->max_mac_per_vf;
>> > +	}
>> > 
>> > 	/* VF can replace all its filters in one step, in this case mac_add_max
>> > 	 * will be added as active and another mac_add_max will be in
>> > @@ -2961,7 +2965,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>> > 			return -EPERM;
>> > 		} else {
>> > 			dev_err(&pf->pdev->dev,
>> > -				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
>> > +				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
>> > +				mac_add_max);
>> > 			return -EPERM;
>> > 		}
>> > 	}
>> > -- 
>> > 2.47.3
>> > 
>If i understand correctly, you’re asking whether this parameter could be
>added as a generic devlink parameter
>rather than a driver-specific one?
>
>
>if that the case, Yes, it could be made generic, but I initially implemented
>it as driver specific because I was targeting i40e only,
>and I thought a generic approach might not be acceptable at this stage
>
>
>I do plan to extend this to other drivers, as mentioned in the v1 patch here:
> - https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250821233930.127420-1-mheib@redhat.com/
>For now, i'm pushing hard to get this patch into i40e since it affects a
>customer. Once it's accepted i can extend it
>to other drivers and convert it to the generic devlink parameter.

No, please do it as generic from start. Thanks!

>
>
>Thanks,
>
