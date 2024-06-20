Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AC90FC7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 08:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AB556157B;
	Thu, 20 Jun 2024 06:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VoraoLVZ2YNN; Thu, 20 Jun 2024 06:06:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79F296157C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718863598;
	bh=AyJTcoVu8te5SIWVCTtlh1pU+t8EWBPrH2LdNuhvIMg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jKlf3tv5aG0PDRFjmr3bdC/B4lv8G7iapbeTrP/9Gg0ZhUSMkA6GxL9W8CVtW8OCF
	 MmoTNSeto9eVtRAGVa3lD8Bd5FwyExJAkhjd6xLPMsUwC1qw4tDwstskQNv1RWmxp2
	 5z78HGS0ZMzokx0QXQmEkv3zmGzQM4YcSBu/3tzEJtZSf+rbQUSvCKs5I6DurqFQso
	 p6kxFKTKi+EOFcXLf/q1siroRo24YzR2erNsfT5Dte9Kc6qmfp56Be9IyVHDvh4rnu
	 fWFq4zi8c3qZl0xhwTmp8BPaBgRNtOGg0bcN0E/KIzAB9ySZeImANyjz9P6uJEGWWr
	 xXPbGwIFHWHhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79F296157C;
	Thu, 20 Jun 2024 06:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D504A1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0ADE41625
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:06:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkdUcWsVBXSJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 06:06:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7EBE40327
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7EBE40327
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7EBE40327
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 06:06:35 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-CODHUHTFPhiBcjZDTfhSOQ-1; Thu, 20 Jun 2024 02:06:33 -0400
X-MC-Unique: CODHUHTFPhiBcjZDTfhSOQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3621a2b758dso232180f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 23:06:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718863592; x=1719468392;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AyJTcoVu8te5SIWVCTtlh1pU+t8EWBPrH2LdNuhvIMg=;
 b=qL3q4eRQANI+pZAahiImXHTbAROIa2rpGTAeEjk7vXLeGe8sTVg/+BBd20EE5TEED4
 xeGvgYSOFxt6wYDu5/c2EoIjz2aBIOreXLdpN/w5IfldJKNdPZJPEGxItgfSkiqtOWpR
 NI3ikuft0/8swZGQ+Z+VdZJaYvJyGGUWeK1E3en0uFObw8Z8twzuasQbd/WyvzjvNPYC
 o/p/cLWiMrOy3fjwes7vRHOKJ9ycOz5Z26cfRxLhXkRPpJdj9DT/pDu3yXxnDbMcHWL5
 /qKQzYHFXfI5+tIxGA4cxfW0bMk8MQqegqZWFiDK2S9rK8/zGbYPpMJqMKDzMTRYGuxx
 xhPA==
X-Gm-Message-State: AOJu0YzKldnQBi5cnnm8eYdCsMsFe53Yr73ZIWb3b1TkmkCMPpzkyVFb
 2hzrnzr+bFn5kFhRFk0fIamichJ0AsqVS/m9UqwrmIiMTHQQgfaTz7v4c1BtTQMLdJDRMsDhcva
 8VX9jUfmz0U77o+1qhsEO6OFPEOVghVUALGcqCX0P6pSpydCUZAIEEcKyU5W4TCKvZgei+QpueP
 sz0zbu1TzbudsOk6fQceQB6lS6g2HgaSH1XUz9S5ndFQ==
X-Received: by 2002:a5d:6783:0:b0:35f:22ac:410d with SMTP id
 ffacd0b85a97d-3631989a785mr3258589f8f.56.1718863592104; 
 Wed, 19 Jun 2024 23:06:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBSuyyU0gop5af6II7AJZ1c2QamkTjCmZ45NFJ7QUFudPWSk2DnTDh+GxsDDHmpvDhS+DLPqZ/NNS2hXZbXy4=
X-Received: by 2002:a5d:6783:0:b0:35f:22ac:410d with SMTP id
 ffacd0b85a97d-3631989a785mr3258577f8f.56.1718863591763; Wed, 19 Jun 2024
 23:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240618131208.6971-1-sergey.temerkhanov@intel.com>
 <20240618131208.6971-3-sergey.temerkhanov@intel.com>
In-Reply-To: <20240618131208.6971-3-sergey.temerkhanov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 20 Jun 2024 08:06:20 +0200
Message-ID: <CADEbmW0jfmgYH-jXRDRj3_AUs17+q3eJ5Ea_U9xidjuvjQDQkA@mail.gmail.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718863594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AyJTcoVu8te5SIWVCTtlh1pU+t8EWBPrH2LdNuhvIMg=;
 b=Em/1+HUKK/Eqa8vE03Fthuxe1Wk9Oko5JpNak8h8P9x73hPkdzYYWfjYCsTH5P8BiOMeVo
 z/j6tvKBil+H7U7u/M1Tp3BLS8GvDYLjn2SAVHYwQ+cPDdlGdq6MBg1nmoDodgRb9qDzPK
 SaKvWdVAT1PdlKeaD9/fRMnEkWBupls=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Em/1+HUK
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next v1 2/4] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 3:53=E2=80=AFPM Sergey Temerkhanov
<sergey.temerkhanov@intel.com> wrote:
> Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
> in the functions that do not use ctrl_pf directly
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ether=
net/intel/ice/ice_ptp.c
> index 57e1e5a5da4a..a2578bc2af54 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -16,6 +16,18 @@ static const struct ptp_pin_desc ice_pin_desc_e810t[] =
=3D {
>         { "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
>  };
>
> +static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
> +{
> +       return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
> +}
> +
> +static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
> +{
> +       struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf);
> +
> +       return !ctrl_pf ? NULL : &ctrl_pf->ptp;
> +}
> +
>  /**
>   * ice_get_sma_config_e810t
>   * @hw: pointer to the hw struct
> --
> 2.43.0

The patch order is incorrect. Here you access the ctrl_pf member,
which is added later in the subsequent patch.

But more importantly, it looks unsafe to access another ice_pf this
way. The administrator may unbind a PF from the driver in any order.
Can the shared objects be moved into struct ice_adapter itself so that
cross-ice_pf access becomes unnecessary?

Michal

