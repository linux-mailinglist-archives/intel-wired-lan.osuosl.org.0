Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5519B85CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 22:58:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A91AE60C0A;
	Thu, 31 Oct 2024 21:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5fYLyDWYWxc6; Thu, 31 Oct 2024 21:58:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C6360BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730411902;
	bh=CSBZyzb21Wct1l11Sz0DybMSdtPJ3nHRtrI7+9b+O0Y=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Xff++Rp4qUUtSZuFI1++T5Qad01QSqi55q+ioI1fTGmf6sHo+xrY+u6Lb0JKxTeL
	 WD9OOjJ/iNaYnStLUjxY0EZ5lRcLvBqnWCU10ONYLdfogDZWc2ZIHISsbJ8FNx505j
	 4odBx2quvwked16sOK5m++wWR23lYBwBsAyYO/cQPrtMqd5qxvnbkajKFRGf9Qjwky
	 N177CfpOVEiroE4+JAYyFnu5Bdh91PmUwEUatfdDUNyN7ZlPdNRuKh0IK993qF1n8n
	 PUWZk/WF8+JtLwHiocrFQGCCrKU94yVmQddqc2v25/Kr5qxkzw5b04ICMAVHRlmama
	 /WQqxKbcfRH5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09C6360BF9;
	Thu, 31 Oct 2024 21:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 602625E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40E7F40909
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9PAlkvMtoFHU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 21:58:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51CDB408FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51CDB408FE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51CDB408FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 21:58:18 +0000 (UTC)
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-lXxjVRMVMTirqiUz5eWp4Q-1; Thu, 31 Oct 2024 17:58:16 -0400
X-MC-Unique: lXxjVRMVMTirqiUz5eWp4Q-1
Received: by mail-oi1-f200.google.com with SMTP id
 5614622812f47-3e61c30daf2so206897b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 14:58:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730411895; x=1731016695;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CSBZyzb21Wct1l11Sz0DybMSdtPJ3nHRtrI7+9b+O0Y=;
 b=OeUyKQY3KaBLM0GsgAxvvaRMorcPAJJzdlIItSbVsaoKD73qwPd16mE1w50joJwM9i
 EV4zrX9P9uClnbQcR/RDa0bm3KghpSiry4v0tk0N2/HvAY+LHTPyclvv+oCjfEpS9zBO
 W6k3NFmpoQUupuSeHLPe/aRSBb9ayROzZzLTlOKyBnMHDannOVzrVKRSlFssWTTk+qOr
 gXgG46PYnI9oS52bAn+0E1raF72Q7G7ex7q1Oea63/Il5RXFDZyQ8AhyMaXPmyTdA2EV
 RcyQan5h7L0EvVDw1iUuN7vHO6rpCRb0BAtz2DuhaWHoLa3Il4/kFNJvi7NzEOIodgWp
 Ga4A==
X-Gm-Message-State: AOJu0YwqMBRlsRhFXcAyXNoRzbsLjknwNumNF/nRRFgPOUHI107UYMvK
 ikKFkQVxh5E4uT81wZP3d78wp/ML4tCVTCd/MeoYD4GmCvlUaJqH8HGPJ9tREoj8+1m8kaKZiBY
 UDTHqmg8xs/TuP306Ay9x/pHfVsGvAixSnfTICLZHnW1yeYk16IOgE7MgIQCgYDIVmbocpe87Zr
 74jCr9AK9SmMSGuz3MHhiaS4e1qXeKd7iglhqRxqrpT7700l0WnA==
X-Received: by 2002:a05:6870:8a07:b0:27b:9f8b:277b with SMTP id
 586e51a60fabf-29051dd5067mr4336576fac.14.1730411894826; 
 Thu, 31 Oct 2024 14:58:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESNcTMa68P7z7o0tSurldw54FQv2CVU4AtiyglGrHtbDB/d3JICxvbApHzc4NkM3WzWVTF+14/wa3eO27u+34=
X-Received: by 2002:a05:6870:8a07:b0:27b:9f8b:277b with SMTP id
 586e51a60fabf-29051dd5067mr4336566fac.14.1730411894541; Thu, 31 Oct 2024
 14:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
 <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20241028100341.16631-3-michal.swiatkowski@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 31 Oct 2024 22:58:03 +0100
Message-ID: <CADEbmW1EzEVGZnxEQOUngTRKVnQQnU4mpsOoe_E0SeojcF3D6w@mail.gmail.com>
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
 s=mimecast20190719; t=1730411897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CSBZyzb21Wct1l11Sz0DybMSdtPJ3nHRtrI7+9b+O0Y=;
 b=ENxtWT27jaTxHMHtb3Dbd5k6Z6T6iAhgiWyWeXqpcp5Au8IY14T5YuLXWqtbIAZKY1/ibB
 yQB6pEXmyzWeg0twIcT1mKLuyc1x7+ghvzfhp3df0bipfIh59FHHzgSGvusFFQ0x4KXg8I
 m2ootMIskRMYMPONNc5IbIqii6IksHk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ENxtWT27
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
...
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

Shouldn't this be "<" instead of "<=3D" ?

Michal

