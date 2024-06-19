Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C1490EC87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2024 15:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1A46613B8;
	Wed, 19 Jun 2024 13:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5yxBlkg6bN3w; Wed, 19 Jun 2024 13:08:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE525613C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718802510;
	bh=OCOqrOS4imJ0LjN0ycyHRRPK8jMu2acllzHn7lRDVZk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pCNgSxDOqvWZcFziUlvxrTb0UzjJQsG4LHu78GatvOUsB9oU/CvQot/kfgUcvS5e6
	 R3U44kPgrp7wPIcRJMor93XJD4gBlPU92m1gumYHbH1Kln9gqvhwNci7ZOO5Q43lkk
	 seCd74L8dzB+hcqpjkMNGOs70KbCu4jW6BVCUtcTwW7rAUfV1xlYaWBQcKL7mpzpu7
	 mt8pgW8j6bZq7xrTmh7wpjUC7wves7KZpsIWOKIuwatK2lxdhtw3OXmgPZhFGg2jrm
	 /dQRXtV2C2RUwVoSDqjyiAsOWMvzAgFypJ6wWEAnm3pG7JcWxZYh0MbDZUM0sDe0hG
	 Tw2BpprAMN/QA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE525613C5;
	Wed, 19 Jun 2024 13:08:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B31F1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 13:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 068CB409A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 13:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cR7zrm2_647H for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2024 13:08:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0EFB0406B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EFB0406B7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EFB0406B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 13:08:26 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-5vOLC9QPPuuSUfNf5ysy7A-1; Wed, 19 Jun 2024 09:08:24 -0400
X-MC-Unique: 5vOLC9QPPuuSUfNf5ysy7A-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42117a61bccso48238095e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2024 06:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718802503; x=1719407303;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OCOqrOS4imJ0LjN0ycyHRRPK8jMu2acllzHn7lRDVZk=;
 b=gbu+yFto7oj4PKJPDi7qv3gNuCa3J7h4Q9lS3M14W1XKPFUInwNPzhabYj7YuXCulG
 zx5CwM5ETIxigaScgngMziDzerQbfCdRM4b/Gm2xhXNk0q/GYNAwFNzNc0BQZ5untPUj
 j1u0eW09bVL3Dy4RFji2Gln7/Maf0CcqiQKrlaX4L43Eq0ioCPnHkL4KYQQOmQEzAxhI
 xOtSg/UON+TJv7axVDzObAe1cAAVx9wQPxPchVWZbgt6ST3Svj8aJalqWKizYEZOVjD+
 qlPPSDD6CqfUc+DI0HJR0yH4HHg1FTUP8SjJXGIxEKxPF44xQXj0gUtZ49jch/3qiuPf
 kpQg==
X-Gm-Message-State: AOJu0YyywznURy6TE+vsnzxbAJRx9rOXmVbQS9U/koWeUyFqvJJtzlxO
 NxVAEqq8jeXR1ChkBAiAcpamGe1s7Ne+diInKRjAsDKDS4qg5W63oKbNHozGc8nGivKPT4hrZEX
 Flq1ZUY4CTzI/u8D+kpOguMv2S3sbsFFry0fUJxb+TfC57KZrZGoHnIJqIMXsOQhNGpgmo1TVIj
 r3WYliO7DfG104+ZvpBXXTCR+0n5FRW2dHgMNzRa8Dpg==
X-Received: by 2002:a05:600c:310a:b0:41a:b30e:42a3 with SMTP id
 5b1f17b1804b1-4247529bd84mr15376065e9.37.1718802503458; 
 Wed, 19 Jun 2024 06:08:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+opgIrhhBzA7aYeOz5Wfzv43XF+oPVwVpctiPOYKq2iAYR3mbsnBbeo7MyBqqO61zsVIS7LonV3gLETZ1Zn8=
X-Received: by 2002:a05:600c:310a:b0:41a:b30e:42a3 with SMTP id
 5b1f17b1804b1-4247529bd84mr15375875e9.37.1718802502984; Wed, 19 Jun 2024
 06:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240617132407.107292-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240617132407.107292-1-przemyslaw.kitszel@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 19 Jun 2024 15:08:11 +0200
Message-ID: <CADEbmW2D31pS16hegetagxSw+2ERs1Ze5P7WSnsaOGWegwku6A@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718802506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OCOqrOS4imJ0LjN0ycyHRRPK8jMu2acllzHn7lRDVZk=;
 b=FeK4ZkSyWcVNgPLKWTecpxwqCXScyX0BnDiHBtCo2WnrwtZo1budTPZC0CSPadzIxma5RE
 rqS0ppDAmp+hwG6Yuc5TbzmdMClqtALmrZ562tKxGhvMbfG5DWFiHSQdeqqU85Iyh01pvb
 g9w6K847/BcfibR8UrC7H2ncY9GdR2E=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FeK4ZkSy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: do not init struct
 ice_adapter more times than needed
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 17, 2024 at 3:25=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> Allocate and initialize struct ice_adapter object only once per physical
> card instead of once per port. This is not a big deal by now, but we want
> to extend this struct more and more in the near future. Our plans include
> PTP stuff and a devlink instance representing whole-device/physical card.
>
> Transactions requiring to be sleep-able (like those doing user (here ice)
> memory allocation) must be performed with an additional (on top of xarray=
)
> mutex. Adding it here removes need to xa_lock() manually.
>
> Since this commit is a reimplementation of ice_adapter_get(), a rather ne=
w
> scoped_guard() wrapper for locking is used to simplify the logic.
>
> It's worth to mention that xa_insert() use gives us both slot reservation
> and checks if it is already filled, what simplifies code a tiny bit.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 60 +++++++++-----------
>  1 file changed, 28 insertions(+), 32 deletions(-)

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

