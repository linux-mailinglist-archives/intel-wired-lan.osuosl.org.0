Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421A93BFE9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 12:30:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8726D40903;
	Thu, 25 Jul 2024 10:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tlkj6PSkdjSI; Thu, 25 Jul 2024 10:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D9A340905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721903426;
	bh=4R1qS+OcAD2N9RRkkU7MPXLALFPxGCTRp53RqiXR1qs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kVmCgeHcHJFQhuXpOWSxmXHuzx3OZ9KOPfMMCoPoqtlHv4xJXLyN3vCipEXSO53Rf
	 bOGDYYeVfEDh9K6vMq66d9690u2HX20GulvduMr3C+1fLL5jwpNbfnuKR/KL6Y598x
	 6UEt8QHN/wCMYQgcvvpckqPicoUKZwb455n8+jsTjgmkyTipHc1+34Vivu+W41Mv9y
	 J8PjSH1RBU+y//GD3NVmLGbTBtefiIQ9VGTF7uK7+sxyZUc2F0srS+bnvR+PT6vKKl
	 JNRWKxQAhbaildP/+AQtzJ7TwMAN8QJ1NEBZg7c1aiVAmbBhZR7bMz9ydAou9huwjS
	 cVBgALAqtJxzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D9A340905;
	Thu, 25 Jul 2024 10:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48EE11BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 10:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3702440585
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 10:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LjUkCP-hizY2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 10:30:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F32A44057B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F32A44057B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F32A44057B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 10:30:22 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-491-FCASPMR6ODGWtLeJ0EAUmA-1; Thu, 25 Jul 2024 06:30:19 -0400
X-MC-Unique: FCASPMR6ODGWtLeJ0EAUmA-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3683f34d8d9so446462f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 03:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721903418; x=1722508218;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4R1qS+OcAD2N9RRkkU7MPXLALFPxGCTRp53RqiXR1qs=;
 b=FdqgSnlRnEk6MkEuKpAvEBL7kwygbm5TsNaaodk5JGvn+1Cs30dNpAshCOrBBw1unR
 bAK44DpSV/8oP5Lx/whU4HOdukDqp6Pch9/1S7bST+wOclUdYR6PwJwzMnk2/5ZF/aSL
 1cLsHfsuyEcMQ5P/It/sFwMfCSUWKzydbfbSlco5mnU6lx1/F5Wjv4D1TWD9U6dNB+uK
 uBFLY8zWYC0C0gQXVe3ZboqFm7dFWMuB+/pNIKrE6NVMiFdzCG2xiIBp+mMXkgkS0aUC
 Vq9dulwLjmkF7Aa6+Cb0lptHCGyqh0P8FvRvU6Dc4Ev7Jla1ZSWUJzBjTvYtCd/Xq3DP
 Oa2Q==
X-Gm-Message-State: AOJu0Yx7TUufPz5Fon/nwda+BZn2RAdUUQLJ5FJ89NwV0Xdb5LbG3xPm
 qmvInKZkPOnKW4m3X93kxV+mc8IzhvpHYI8DjHZp8DzgRBXFSafc7xJH3wqeJ98Oyxl5YxYts4X
 +DfYwLmLOM3q9L1R+pESun0vTCHi3RhnoEwgtp9IaU6kHxN3TUzs3iRnAlw9KOGdUpiikD2NY0Z
 a6fWA4ibfhnczHw2RzM1lrqv4VAz2JDhAEnuXeC7Q6AA==
X-Received: by 2002:a05:6000:108f:b0:366:e31a:500e with SMTP id
 ffacd0b85a97d-36b36444976mr966039f8f.63.1721903418558; 
 Thu, 25 Jul 2024 03:30:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1IN1JaZ4BDav2BWfOItIVSf/dnm8FND0gTEOAaQoIiDveOI8rk1/PS6WbDZSF27HeaeRTmztdfpyRGMH3XJw=
X-Received: by 2002:a05:6000:108f:b0:366:e31a:500e with SMTP id
 ffacd0b85a97d-36b36444976mr966010f8f.63.1721903417946; Thu, 25 Jul 2024
 03:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240722122839.51342-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240722122839.51342-1-dawid.osuchowski@linux.intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 25 Jul 2024 12:30:06 +0200
Message-ID: <CADEbmW2ANTgihP6rjS9Wmu6+7TYii37K+NH-opw=8eCLqnPH5A@mail.gmail.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721903421;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4R1qS+OcAD2N9RRkkU7MPXLALFPxGCTRp53RqiXR1qs=;
 b=NH90/Z4J7YPl7wUARqTwEs19iVCXwVZnHy1emfWUJwo6biFjLFYewc5o+USbyvfttElJJ9
 ++YTT6X/NP2/maCbdIO26X/GHQInIooqwWZSfGVFnTCFHF3TWXapJrQILlyWeHvIKNQ/1f
 VQpBWXhmoq3OLwgz6fieG1IwQmlqNnk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=NH90/Z4J
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Introduce
 netif_device_attach/detach into reset flow
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
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 22, 2024 at 2:30=E2=80=AFPM Dawid Osuchowski
<dawid.osuchowski@linux.intel.com> wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethe=
rnet/intel/ice/ice_main.c
> index ec636be4d17d..eb199fd3c989 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6744,6 +6744,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
>             (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>             vsi->netdev && vsi->type =3D=3D ICE_VSI_PF) {
>                 ice_print_link_msg(vsi, true);
> +               netif_device_attach(vsi->netdev);
>                 netif_tx_start_all_queues(vsi->netdev);
>                 netif_carrier_on(vsi->netdev);
>                 ice_ptp_link_change(pf, pf->hw.pf_id, true);
> @@ -7220,6 +7221,7 @@ int ice_down(struct ice_vsi *vsi)
>                 ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false=
);
>                 netif_carrier_off(vsi->netdev);
>                 netif_tx_disable(vsi->netdev);
> +               netif_device_detach(vsi->netdev);
>         }
>
>         ice_vsi_dis_irq(vsi);

This is broken. ice_down leaves the device in the detached state and
you can't bring it up anymore (over netif_device_present check
in__dev_open).

This is with tnguy/net-queue.git:dev-queue from today (commit 80ede7622969)=
:
[root@cnb-04 ~]# modprobe ice
[root@cnb-04 ~]# ip link set enp65s0f0np0 up
[root@cnb-04 ~]# ip link set enp65s0f0np0 down
[root@cnb-04 ~]# ip link set enp65s0f0np0 up
RTNETLINK answers: No such device

Tony,
the patch is both net-queue and next-queue. Please drop it from both.

Thanks,
Michal

