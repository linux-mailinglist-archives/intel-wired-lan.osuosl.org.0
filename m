Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4899C3DA3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Nov 2024 12:44:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96A2460697;
	Mon, 11 Nov 2024 11:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1RBKa3X5tlR; Mon, 11 Nov 2024 11:44:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D304B60664
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731325470;
	bh=RrNKWWNhtD81PNKsbKwhpsIaaGhGd8JKmE0eRL/JjT0=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8w9rQHCD6HF1hVs8oeVVGAUNoX409KP/vTnQ077Fmd7vGuwNfLkJEB77opGCay6Hr
	 /REMweLZ1CQrPVLndRMccpZbXQwSeKFKSIhkq0Aou5FwZRPzScM9O4iWZ019CUh0br
	 9fBOykygsA9CXA99gPpLZ/9dkYbMIDRjwkSc4TU/0ltAXxN/NsC1bRi7nhOv/iii2E
	 GHGZqNsA5eDEX4b9R+QHjDF5wNS/Ophgv4pQjTaIHquhB8Wyqlf5Uzyw1F602mm/ZS
	 jA/B3BZC0i/7c/suvi7nYBW8sotqvrynieucnSP5nNrMGZt01pbJ2fJMApwUkZYRkO
	 RMejSNxssX4ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D304B60664;
	Mon, 11 Nov 2024 11:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 97B776C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 11:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71F9D40355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 11:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6LFfU22NyRCl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Nov 2024 11:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C72A4034A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C72A4034A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C72A4034A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 11:44:27 +0000 (UTC)
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-kpOvRxebObe0Yj4rV9yCMQ-1; Mon, 11 Nov 2024 06:44:25 -0500
X-MC-Unique: kpOvRxebObe0Yj4rV9yCMQ-1
X-Mimecast-MFC-AGG-ID: kpOvRxebObe0Yj4rV9yCMQ
Received: by mail-oo1-f70.google.com with SMTP id
 006d021491bc7-5eb61688d1bso307780eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 03:44:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731325464; x=1731930264;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RrNKWWNhtD81PNKsbKwhpsIaaGhGd8JKmE0eRL/JjT0=;
 b=Q5gSZMSIn19UNXz15qhwb+uhNZQWTsz8lfGz9EQXqKt6zaIMWiRPiZe0ko4uIXFON3
 UOcpDidqaxs/iAsShVHsa/GjuIWiG3n3YmmfzOeB6CWME/2QWdvL9lWjwOXRVcjLqPH/
 ENrbloH6BIInJVgH9izB7MJfeV4ZjZ41R6i0qEKd6jLEpXqkIVSbVo+mheadNTzLqnWx
 h7lMBg2FGAqWgS1pE9XTkTGkhWK6TQahVD6/OcO7OUp6JKPFukrJBO4VWVBFHuRbW7UF
 AYdkD22BvseXlNiQmQLpan2E+vzOrB4Z4eYK7pH1YC++2YFHiAzifHTgzRsq2cuN/HRm
 QexQ==
X-Gm-Message-State: AOJu0YyZoOvUFM1v7cS3QJtjKXiUJmowVmBCCWUkUUAW83ztl0yGFX+S
 2+7Ixv9fSiXjfulYKwP15mwpSqlUtLhomJXRag/Sf5u5iDDGlP43oX+o2yqqJUP/GilvEaEvNVg
 Wl+Gx325nNNT1S6mjDgXTK8N1vp0FjZ1O0DdUujhj9H5ajcM+KQ3GaPoTCS0/2Z5MbXM0LLfAXR
 Ckld65aSjvlm7JB+bs5LiA3p9NKC+27CUUli1wPbhK1A==
X-Received: by 2002:a05:6870:9d18:b0:291:cb6:f3cd with SMTP id
 586e51a60fabf-295600f04b3mr2366972fac.8.1731325464252; 
 Mon, 11 Nov 2024 03:44:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE37eDuGUNMpgsM81z+sCu4l+g2AmjHnAPzKRpJM7O2zuK4M8P9tUBlkaaYqdgsOj4PYl9dM6C8v6Uc5gSlT6E=
X-Received: by 2002:a05:6870:9d18:b0:291:cb6:f3cd with SMTP id
 586e51a60fabf-295600f04b3mr2366958fac.8.1731325463916; Mon, 11 Nov 2024
 03:44:23 -0800 (PST)
MIME-Version: 1.0
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
 <20241104121337.129287-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241104121337.129287-3-michal.swiatkowski@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 11 Nov 2024 12:44:11 +0100
Message-ID: <CADEbmW2=9s8iGJibWpPnVUraMOr7ecE6Hbpb1n3d9es-aUvA7Q@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 pawel.chmielewski@intel.com, sridhar.samudrala@intel.com, 
 jacob.e.keller@intel.com, pio.raczynski@gmail.com, konrad.knitter@intel.com, 
 marcin.szycik@intel.com, wojciech.drewek@intel.com, 
 nex.sw.ncis.nat.hpm.dev@intel.com, przemyslaw.kitszel@intel.com, 
 jiri@resnulli.us, horms@kernel.org, David.Laight@aculab.com, 
 pmenzel@molgen.mpg.de
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TnLPpB-YqdNvhmIasbjVSbHYCFARjIobJlT4Zr14gpU_1731325464
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1731325466;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RrNKWWNhtD81PNKsbKwhpsIaaGhGd8JKmE0eRL/JjT0=;
 b=EkZrbUOIODIXqqAcbjxeYIAEqoUg9m4xS1K7Tje1oDdkkBFwru2HfGOONp690DszYfznHd
 /pY5gTryfVVdu4xJF8EBh3ptifAR2tgouNfhiojp5HeOPz+xy4fUR9q0norf+0kyU66/HQ
 MlurA9aARId0nZRPuqW/LWP51QJxS2k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=EkZrbUOI
Subject: Re: [Intel-wired-lan] [iwl-next v7 2/9] ice: devlink PF MSI-X max
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

On Mon, Nov 4, 2024 at 1:13=E2=80=AFPM Michal Swiatkowski
<michal.swiatkowski@linux.intel.com> wrote:
>
> Use generic devlink PF MSI-X parameter to allow user to change MSI-X
> range.
>
> Add notes about this parameters into ice devlink documentation.
>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      | 11 +++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 83 ++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice.h          |  7 ++
>  drivers/net/ethernet/intel/ice/ice_irq.c      |  7 ++
>  4 files changed, 107 insertions(+), 1 deletion(-)
>
[...]
> @@ -1648,6 +1710,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
>  int ice_devlink_register_params(struct ice_pf *pf)
>  {
>         struct devlink *devlink =3D priv_to_devlink(pf);
> +       union devlink_param_value value;
>         struct ice_hw *hw =3D &pf->hw;
>         int status;
>
> @@ -1656,11 +1719,27 @@ int ice_devlink_register_params(struct ice_pf *pf=
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

Error handling looks wrong in this function.
You have to unwind the registration of the params from above or they will l=
eak.
Sorry I did not notice this earlier.

Michal

