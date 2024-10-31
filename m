Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C409B85B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 22:49:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3B2D81769;
	Thu, 31 Oct 2024 21:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5nTvRMVSKAac; Thu, 31 Oct 2024 21:48:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABCC58174F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730411337;
	bh=jnBFpiuE+xMACzNViBoA7DL7OvaYYVkZTvE8TFeaOKU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4M8OMDDPySYzbdxRv3L0YNKvnD8oValjp30xAOFE70KvxBixb7HY15jzirxmFW3F3
	 ilR2G0TE7BZoHObi2LU5g7VTey4XDuA4D2apC/s/j/0RpRzoFq8ccSWaNSzCSkCJWI
	 JYlqR7IFEGUD2gUwwqpOQhbEjKk5N6jrhLJvR/3KlF9Ud85FYP7RNjRMOqE5M4AJFI
	 fDtPgZ0eCd+N4TZn2LHvJHj8WOXCiuENGjO1D2T5FAGyG+sVfQ5KmPIljlnW+tsnSv
	 qUAoKaQ0OzrcrHXr+UBypzmsQ7js/8kcCDwr+gS5jrLEdk5DBRFsyiX5mssjFoJg8P
	 C0+tKU6M4G5SA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABCC58174F;
	Thu, 31 Oct 2024 21:48:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0FDD5E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81642408B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uNv25oscpyvI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 21:48:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F0A6408AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F0A6408AF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F0A6408AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:48:52 +0000 (UTC)
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-z4zXiC7LPRqQno0Eeu8t0g-1; Thu, 31 Oct 2024 17:48:50 -0400
X-MC-Unique: z4zXiC7LPRqQno0Eeu8t0g-1
Received: by mail-oo1-f71.google.com with SMTP id
 006d021491bc7-5eb75d21d3eso115708eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 14:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730411330; x=1731016130;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jnBFpiuE+xMACzNViBoA7DL7OvaYYVkZTvE8TFeaOKU=;
 b=U4KEh3ljlgOCzcwvMn5AR8h+Bzu0ahTyg3Nz9IG2Y5y4Qb2MOqMdNBLRHCfitzhhcy
 eWVoORZG4KKYBNy8QhJv8ffzqzqKI6VJj4KRhntnAoEIeavU/xMTwz/MZO8B9/yhkiYj
 W4IRQNBao9lPUudczemNSJ5p9/LmhwIjeClOWVco/VVCKulOlNdxDD0fqyUqaCaqrpeh
 KlV/yTgYVSysddXYWkPOD/mYfl8FwFEQjKneOEWley0uEdqzB5DwqOdVtKER79dXWyz9
 eLQ+TxbM5Y4hmJSuLdEIKs4L9c8sOcuyQTO961jEc348ehlAzMKb9M3MP9jBkxohSRkj
 o3Yw==
X-Gm-Message-State: AOJu0YxOGxTU0vA/g2BEK85F/LQIUccleQscUZPXBHj8js93tjpyW8MD
 YuQfUlowanNDcmUG6xX1WAP7Xh8MJyCk7N/RhwF3Ycium9LILMMWWATjFNTS+KI4mWHQBB/UJuR
 EJFqFfWfu9mEULzYieAiwEAuwySXo+d7QKFSsFPzyJKns5A3moYpbym2U6Q56vfCyEoVRYv1Jqd
 5Bfldc0/nt3YXACrKkKjf1sSOhbPJMmqK0/5QRdcEyOA==
X-Received: by 2002:a05:6871:5226:b0:27b:9f8b:7e4b with SMTP id
 586e51a60fabf-29051f4304bmr4669729fac.13.1730411329714; 
 Thu, 31 Oct 2024 14:48:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQMU+JXiAo/tPhQ8g+QyzcfseYiR9aafOlkUX+CWChkWtHOtd/ddi8z3QPpGonNRYw/rBQFfdmFbMw7s+KGDs=
X-Received: by 2002:a05:6871:5226:b0:27b:9f8b:7e4b with SMTP id
 586e51a60fabf-29051f4304bmr4669719fac.13.1730411329350; Thu, 31 Oct 2024
 14:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 31 Oct 2024 22:48:37 +0100
Message-ID: <CADEbmW0=G8u7Y8L2fFTzan8S+Uz04nAMC+-dkj-rQb_izK88pg@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 pawel.chmielewski@intel.com, sridhar.samudrala@intel.com, 
 jacob.e.keller@intel.com, pio.raczynski@gmail.com, konrad.knitter@intel.com, 
 marcin.szycik@intel.com, wojciech.drewek@intel.com, 
 nex.sw.ncis.nat.hpm.dev@intel.com, przemyslaw.kitszel@intel.com, 
 jiri@resnulli.us, horms@kernel.org, David.Laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730411331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jnBFpiuE+xMACzNViBoA7DL7OvaYYVkZTvE8TFeaOKU=;
 b=Yx0uzfyugNZ+HU4/bkGIlhlkIwW7h7vv4z8vuk22XDolKIG7CwgXaPWIsSSMsQucz5wFG4
 +fd0waVOLRRthRGFxCy2hmfVRITkXr+lJfjhFWeYa9oFwWSiFDsAaOJnEwdc7wVjfmVqeu
 oNGtU7PPL3I7ZVvFDZvXUBMB3JLZXC0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Yx0uzfyu
Subject: Re: [Intel-wired-lan] [iwl-next v6 2/9] ice: devlink PF MSI-X max
 and min parameter
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

On Mon, Oct 28, 2024 at 11:04=E2=80=AFAM Michal Swiatkowski
<michal.swiatkowski@linux.intel.com> wrote:
>
> Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> range.
>
> Add notes about this parameters into ice devlink documentation.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      | 11 +++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
>  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
>  4 files changed, 107 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/net=
working/devlink/ice.rst
> index e3972d03cea0..792e9f8c846a 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -69,6 +69,17 @@ Parameters
>
>         To verify that value has been set:
>         $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_laye=
rs
> +   * - ``msix_vec_per_pf_max``
> +     - driverinit
> +     - Set the max MSI-X that can be used by the PF, rest can be utilize=
d for
> +       SRIOV. The range is from min value set in msix_vec_per_pf_min to
> +       2k/number of ports.
> +   * - ``msix_vec_per_pf_min``
> +     - driverinit
> +     - Set the min MSI-X that will be used by the PF. This value inform =
how many
> +       MSI-X will be allocated statically. The range is from 2 to value =
set
> +       in msix_vec_per_pf_max.
> +
>  .. list-table:: Driver specific parameters implemented
>      :widths: 5 5 90
>
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/n=
et/ethernet/intel/ice/devlink/devlink.c
> index d1b9ccec5e05..29c1fec4fa93 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1198,6 +1198,25 @@ static int ice_devlink_set_parent(struct devlink_r=
ate *devlink_rate,
>         return status;
>  }
>
> +static void ice_set_min_max_msix(struct ice_pf *pf)
> +{
> +       struct devlink *devlink =3D priv_to_devlink(pf);
> +       union devlink_param_value val;
> +       int err;
> +
> +       err =3D devl_param_driverinit_value_get(devlink,
> +                                             DEVLINK_PARAM_GENERIC_ID_MS=
IX_VEC_PER_PF_MIN,
> +                                             &val);
> +       if (!err)
> +               pf->msix.min =3D val.vu16;
> +
> +       err =3D devl_param_driverinit_value_get(devlink,
> +                                             DEVLINK_PARAM_GENERIC_ID_MS=
IX_VEC_PER_PF_MAX,
> +                                             &val);
> +       if (!err)
> +               pf->msix.max =3D val.vu16;
> +}
> +
>  /**
>   * ice_devlink_reinit_up - do reinit of the given PF
>   * @pf: pointer to the PF struct
> @@ -1207,6 +1226,9 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
>         struct ice_vsi *vsi =3D ice_get_main_vsi(pf);
>         int err;
>
> +       /* load MSI-X values */
> +       ice_set_min_max_msix(pf);
> +
>         err =3D ice_init_hw(&pf->hw);
>         if (err) {
>                 dev_err(ice_pf_to_dev(pf), "ice_init_hw failed: %d\n", er=
r);
> @@ -1526,6 +1548,37 @@ static int ice_devlink_local_fwd_validate(struct d=
evlink *devlink, u32 id,
>         return 0;
>  }
>
> +static int
> +ice_devlink_msix_max_pf_validate(struct devlink *devlink, u32 id,
> +                                union devlink_param_value val,
> +                                struct netlink_ext_ack *extack)
> +{
> +       struct ice_pf *pf =3D devlink_priv(devlink);
> +
> +       if (val.vu16 > pf->hw.func_caps.common_cap.num_msix_vectors ||
> +           val.vu16 < pf->msix.min) {
> +               NL_SET_ERR_MSG_MOD(extack, "Value is invalid");
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
> +static int
> +ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
> +                                union devlink_param_value val,
> +                                struct netlink_ext_ack *extack)
> +{
> +       struct ice_pf *pf =3D devlink_priv(devlink);
> +
> +       if (val.vu16 <=3D ICE_MIN_MSIX || val.vu16 > pf->msix.max) {
> +               NL_SET_ERR_MSG_MOD(extack, "Value is invalid");
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
>  enum ice_param_id {
>         ICE_DEVLINK_PARAM_ID_BASE =3D DEVLINK_PARAM_GENERIC_ID_MAX,
>         ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> @@ -1543,6 +1596,15 @@ static const struct devlink_param ice_dvl_rdma_par=
ams[] =3D {
>                               ice_devlink_enable_iw_validate),
>  };
>
> +static const struct devlink_param ice_dvl_msix_params[] =3D {
> +       DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MAX,
> +                             BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> +                             NULL, NULL, ice_devlink_msix_max_pf_validat=
e),
> +       DEVLINK_PARAM_GENERIC(MSIX_VEC_PER_PF_MIN,
> +                             BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
> +                             NULL, NULL, ice_devlink_msix_min_pf_validat=
e),
> +};
> +
>  static const struct devlink_param ice_dvl_sched_params[] =3D {
>         DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>                              "tx_scheduling_layers",
> @@ -1644,6 +1706,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
>  int ice_devlink_register_params(struct ice_pf *pf)
>  {
>         struct devlink *devlink =3D priv_to_devlink(pf);
> +       union devlink_param_value value;
>         struct ice_hw *hw =3D &pf->hw;
>         int status;
>
> @@ -1652,11 +1715,27 @@ int ice_devlink_register_params(struct ice_pf *pf=
)
>         if (status)
>                 return status;
>
> +       status =3D devl_params_register(devlink, ice_dvl_msix_params,
> +                                     ARRAY_SIZE(ice_dvl_msix_params));
> +       if (status)
> +               return status;
> +
>         if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>                 status =3D devl_params_register(devlink, ice_dvl_sched_pa=
rams,
>                                               ARRAY_SIZE(ice_dvl_sched_pa=
rams));
> +       if (status)
> +               return status;
>
> -       return status;
> +       value.vu16 =3D pf->msix.max;
> +       devl_param_driverinit_value_set(devlink,
> +                                       DEVLINK_PARAM_GENERIC_ID_MSIX_VEC=
_PER_PF_MAX,
> +                                       value);
> +       value.vu16 =3D pf->msix.min;
> +       devl_param_driverinit_value_set(devlink,
> +                                       DEVLINK_PARAM_GENERIC_ID_MSIX_VEC=
_PER_PF_MIN,
> +                                       value);
> +
> +       return 0;
>  }


The type of the devlink parameters msix_vec_per_pf_{min,max} is
specified as u32, so you must use value.vu32 everywhere you work with
them, not vu16.

Michal

