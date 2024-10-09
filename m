Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BD1996702
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 12:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E8E4403E2;
	Wed,  9 Oct 2024 10:21:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hmns6LqFPNiY; Wed,  9 Oct 2024 10:21:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 141C240104
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728469283;
	bh=rGdIJ/avMOTr/UZ7Hcw2mhdRzB0xHalmKwV7b2tjCf4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=utR3iLH+21H8MGKExppJIjiAB4/+msd0/d2+l69YA/qbqkwDzW+wO4FVTYiJ7WwPZ
	 hKCDqrZwLTpPFFVSlsYIvLM8ulfhir9cRQ6BvdEPlCRA0Mp+WwokeAlxrMcNe+kumj
	 MsuyVxyJQriQ9OByTX7gG+voKA0w+2TDi8HTksQdt6ad1JL7lhrkqawjTMIAxV5KMQ
	 GjGY/gnl16awMr3//fWJbLGH2/QlaTdAvNR6yZee7V4ZrVgPLAC6DvmD6HAoGHdhuw
	 4MWoTtdC22/o/xg1n+Ed+ik6zbGOMcHSBs0i6PZgn7eUO73vB0XNTHNirHRqJgXvNm
	 bAhzxgxChr4Dw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 141C240104;
	Wed,  9 Oct 2024 10:21:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4B61BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18518811C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:21:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fskpl6Z100ox for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 10:21:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B8666811B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8666811B7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8666811B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 10:21:11 +0000 (UTC)
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-97-3oy_eii_Mx6ZFcqV6UfR7A-1; Wed, 09 Oct 2024 06:21:09 -0400
X-MC-Unique: 3oy_eii_Mx6ZFcqV6UfR7A-1
Received: by mail-oi1-f197.google.com with SMTP id
 5614622812f47-3e0518e6e9cso791140b6e.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2024 03:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728469268; x=1729074068;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rGdIJ/avMOTr/UZ7Hcw2mhdRzB0xHalmKwV7b2tjCf4=;
 b=L9eXboPgPEokis1zdQBdgAtfFv+XJ55G9O4pyyGNMXO4qyGOD/yEGUual+u4+jYynu
 rW/SFIRWS7GGnR+zBumATHy5+tuITTnDS/exk34HXNs8uwqUS1yKAg1JQ796iISorRdy
 MjAbHHxCbu4obWkLJU9FtZRxgOmenL1GVh3H1Y1qjGZnYWd33VFHEvdM4/2uIcN+qwjJ
 3/uyHGwsIxLMIQCr6+V8h+RxQjqdkaT3vIz/ig4Z2FchQ2DIwO66rE00hdB2SBkSFrMr
 ePS0r0R2I0ZPh6KYhlLyxHPEgF2Lzf24DpSK6kZb7fuSfXlrR3penj9FfGkHd687D8ah
 p8TA==
X-Gm-Message-State: AOJu0Yz9SFrZdR5kfeKjMlYm58Y8e0rho4XE9cFwPb67Zy4XeaNOUA9A
 V0mwZDkdc3ut6U8APJ5B1qRcRllmY7qUabfGWzRcwop9Drq7yb5cjMJL/RqP8Z8CLdX11yIvL9o
 AT8uENC+HZMOLOl+ew15oc7+vATXN9Nl9AT2ixs3ieNn4v2nB60HjMPze+dGlInS2d+Ndp0fOhY
 xvtTW99W3kzt6A2LXC7Zdh0ED8znGXkKXUpk/j1Ht6LQ==
X-Received: by 2002:a05:6870:ac27:b0:278:2756:e425 with SMTP id
 586e51a60fabf-288342d1f6dmr382347fac.1.1728469268114; 
 Wed, 09 Oct 2024 03:21:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHq7eF4HY8tVjVAmbKXs5pNH38ExA+iIBw5huxabtorpT29BXwTXOSmKwCNyxktC3NZALxsP8H/m/jUJKpho7M=
X-Received: by 2002:a05:6870:ac27:b0:278:2756:e425 with SMTP id
 586e51a60fabf-288342d1f6dmr382343fac.1.1728469267823; Wed, 09 Oct 2024
 03:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20241003092113.912768-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20241003092113.912768-1-arkadiusz.kubalewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 9 Oct 2024 12:20:55 +0200
Message-ID: <CADEbmW0CfOadDKhnUsndhJSOjsqDgeJkbGYkhssn5QFMu+098Q@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728469270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rGdIJ/avMOTr/UZ7Hcw2mhdRzB0xHalmKwV7b2tjCf4=;
 b=SbiJZdO8b5ZoD7+vxCt5PYZqAaUPBYD1n8UOE8ZVV9TaijiImYPwkgpMnVHV/zLCrlLDRb
 Xa5Yfy8Z4JPvbbMXRhsQX1LrszjBhzTvBM0W7Eeu0HjmeRApf1+wt7lHf25NOOsku8Roqw
 hrXyXtngwjTrZaVdLd4SJT0uhmS/QmQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SbiJZdO8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix crash on probe
 for DPLL enabled E810 LOM
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 3, 2024 at 11:26=E2=80=AFAM Arkadiusz Kubalewski
<arkadiusz.kubalewski@intel.com> wrote:
>
> The E810 Lan On Motherboard (LOM) design is vendor specific. Intel
> provides the reference design, but it is up to vendor on the final
> product design. For some cases, like Linux DPLL support, the static
> values defined in the driver does not reflect the actual LOM design.
> Current implementation of output pins is causing the crash on probe
> of the ice driver for such DPLL enabled E810 LOM designs:
>
> WARNING: (...) at drivers/dpll/dpll_core.c:495 dpll_pin_get+0x2c4/0x330
> ...
> Call Trace:
>  <TASK>
>  ? __warn+0x83/0x130
>  ? dpll_pin_get+0x2c4/0x330
>  ? report_bug+0x1b7/0x1d0
>  ? handle_bug+0x42/0x70
>  ? exc_invalid_op+0x18/0x70
>  ? asm_exc_invalid_op+0x1a/0x20
>  ? dpll_pin_get+0x117/0x330
>  ? dpll_pin_get+0x2c4/0x330
>  ? dpll_pin_get+0x117/0x330
>  ice_dpll_get_pins.isra.0+0x52/0xe0 [ice]
> ...
>
> The number of output pins enabled by LOM vendor is greater than expected
> and defined in the driver for Intel designed NICs, which causes the crash=
.
>
> Prevent the crash and allow generic output pin initialization within
> Linux DPLL subsystem for DPLL enabled E810 LOM designs.
>
> Newly designed solution for described issue will be based on "per HW
> design" pin initialization. It requires pin information dynamically
> acquired from the firmware and is already in progress, planned for
> next-tree only.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v2:
> - put define on top of the file
> - fix smatch 'ret' uninitialized
> - do not init first array dimmension, use sizeof to obtain array size
> - raname ice_cgu_get_pin_num(..) -> ice_cgu_get_num_pins(..)
> - fix kdoc typo
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 43 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 +++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 63 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethe=
rnet/intel/ice/ice_dpll.c
> index 74c0e7319a4c..e9966c6c7c0f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -10,6 +10,7 @@
>  #define ICE_DPLL_PIN_IDX_INVALID               0xff
>  #define ICE_DPLL_RCLK_NUM_PER_PF               1
>  #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT  25
> +#define ICE_DPLL_GEN_OUT_LEN                   3
>
>  /**
>   * enum ice_dpll_pin_type - enumerate ice pin types:
> @@ -2063,6 +2064,46 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
>         return 0;
>  }
>
> +/**
> + * ice_dpll_init_info_output_pins_generic - initializes generic output p=
ins info
> + * @pf: board private structure
> + *
> + * Init information for generic output pins, cache them in PF's pins str=
uctures.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - init failure reason
> + */
> +static int ice_dpll_init_info_output_pins_generic(struct ice_pf *pf)
> +{
> +       static const char labels[][ICE_DPLL_GEN_OUT_LEN] =3D {
> +               "0", "1", "2", "3", "4", "5", "6", "7", "8",
> +               "9", "10", "11", "12", "13", "14", "15" };
> +       u32 cap =3D DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
> +       struct ice_dpll_pin *pins =3D pf->dplls.outputs;
> +       int i, ret =3D -EINVAL;
> +
> +       if (pf->dplls.num_outputs > sizeof(labels) / ICE_DPLL_GEN_OUT_LEN=
)

Just use ARRAY_SIZE(labels). I believe that's what Tony meant in his
review of v1.
Once you have that, you don't need to define ICE_DPLL_GEN_OUT_LEN at all.
Just declare labels as:
  static const char labels[][3] =3D ...
or, if you like this more:
  static const char labels[][sizeof("99")] =3D ...

Michal

