Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BE3914EE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 15:38:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A831681338;
	Mon, 24 Jun 2024 13:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OvT2XbW9EiIm; Mon, 24 Jun 2024 13:38:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DDAB8133F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719236314;
	bh=+O9bhyVV79tzEdXN31esd1QnMk2HeGZ5qWG1l/mlkoY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6SSjoT50v4Dg8vQ2lpX+mAdPhptRq6jaF7MZQgxNaXwf1IT6VNxTbrSFWW4kF9q2p
	 59furzWd2Yfk2f9QDjbDxqPnT7CDDm5FqAwdHUPkDXEj6qb52uTzdLZYB0Kf66KpAL
	 A6lAw/o7W4FYVqpEY0HkTZfXwZK5Jg6H7TbFYNpqMKM1q5pKhXdiHLxKKVws91SL6I
	 f9WjfvaLV5wYz4zFCS5/VQ2INXm6nc8R33j15SOfI3b/vUZ3hc8MNcH9cEy1rp4cIJ
	 BktbIgyukFPvMD2WcDb6QJppuufrFu88yAEc2LeVpldJ7ME5WIU5rXTyswZ+02sH/F
	 UhQME7jIFzQ8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DDAB8133F;
	Mon, 24 Jun 2024 13:38:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5650B1BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E2B16068B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id srjT0DLDn4Xs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 13:38:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AE3760603
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE3760603
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AE3760603
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 13:38:32 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-440-xTlKE6psPjS_FRHFPM30KA-1; Mon, 24 Jun 2024 09:38:27 -0400
X-MC-Unique: xTlKE6psPjS_FRHFPM30KA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42490ae735dso8931105e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 06:38:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719236306; x=1719841106;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+O9bhyVV79tzEdXN31esd1QnMk2HeGZ5qWG1l/mlkoY=;
 b=hCkXZcGPKK0bZTkeqNEYkhmJ3VbZ3I0FR9DxeRWszQwQym6EieU4/Numt8alJZOuXV
 Wq859vvh6jiDZ0icks8TlT08fP1+Z5sFYYvWC/FPdEYI9vpX3bvd17Tybz2xAgaXhtks
 VzlaqWxPmgrkGSi9MT16mc1MMkf/uy0YnxahWHfHEHUjTTi/12opw8guOcWhbT+8vFLL
 LRP7z6HT6q+l9B6aWlZSx13f9VB9cFyAqEjc08gCJ6raSpurm0nSCMy9/NTjevF+jCld
 OgVZwJ6ceUUiqYgSueC3XzgHPGEVO8kvuqjA5gNQbsdT18offdBuVs8yKyYaD9mDa6hZ
 qIAg==
X-Gm-Message-State: AOJu0YxnEiAaw8/yM5adlDNARXoez1fuyS0DorOI1CmPC2ZaCNCNdLZP
 xUhfoKXdpufduosiionhL7ghTMFR2gXAFXvYM7H0vDOrjSu7++X1UUnJbAgNXvfiGzB5YqBQRKx
 Ai//rFlhJQhYgwt4N+9LkN8UdMctoNzupJwSiHQP/kqkQaC/g49kQXoXe4QvmXW2v77Pv+YNlt1
 vJDQ/hV5zGr+PFnHFuxkg1DB6H6tfl+IoIGXFrp4wfUQ==
X-Received: by 2002:a05:6000:1bd1:b0:363:598:524f with SMTP id
 ffacd0b85a97d-366e94d6928mr3678975f8f.31.1719236305946; 
 Mon, 24 Jun 2024 06:38:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdmYrvtYa9cwkEl3SwF6VTfsDVMRfUp5hYo/W5bxQKex8+CVjZECX95lSjrxVPxUIbujm3lHucDuhr42bcXQk=
X-Received: by 2002:a05:6000:1bd1:b0:363:598:524f with SMTP id
 ffacd0b85a97d-366e94d6928mr3678950f8f.31.1719236305308; Mon, 24 Jun 2024
 06:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20240621084244.26525-1-sergey.temerkhanov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 24 Jun 2024 15:38:13 +0200
Message-ID: <CADEbmW1Ciig-chUZ+1iiK3n2xGkYzJpix2a_5mgte+VvWnQkLQ@mail.gmail.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1719236311;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+O9bhyVV79tzEdXN31esd1QnMk2HeGZ5qWG1l/mlkoY=;
 b=cUZYVV8PPyIl89Ctkt+qJ0TV4X1um/7qVvDgW5SkA5y1PkBUNd9fW/IRjV2Zi1Sw1Nygra
 ZylVDqbZWTp8Onmx7uKy7cv26Gz5G4pI/7LdeDZoHKmgDeRdvTmOqIkJzL1BZ77araS5Qb
 YY84IKeV/cHd6C92LPyu+P/2OgO6tZg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=cUZYVV8P
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next v1 0/4] Replace auxbus
 with ice_adapter in the PTP support code
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 21, 2024 at 10:44=E2=80=AFAM Sergey Temerkhanov
<sergey.temerkhanov@intel.com> wrote:
> This series replaces multiple aux buses and devices used in
> the PTP support code with struct ice_adapter holding the necessary
> shared data
>
> Patches 1,2 add convenience wrappers
> Patch 3 does the main refactoring
> Patch 4 finalizes the refactoring
>
> Sergey Temerkhanov (4):
>   ice: Introduce ice_get_phy_model() wrapper
>   ice: Add ice_get_ctrl_ptp() wrapper to simplify the code
>   ice: Use ice_adapter for PTP shared data instead of auxdev
>   ice: Drop auxbus use for PTP to finalize ice_adapter move
>
>  drivers/net/ethernet/intel/ice/ice.h         |   5 +
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  21 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 338 ++++---------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  24 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  |  22 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
>  7 files changed, 111 insertions(+), 310 deletions(-)

Hi Sergey,
This looks like a resend of your patchset from June 18.
I sent comments on June 20:
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240617/042=
345.html
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20240617/042=
346.html

Michal

