Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4D7B2D42A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 08:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 779E782786;
	Wed, 20 Aug 2025 06:42:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 11illmKuSy8U; Wed, 20 Aug 2025 06:42:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3EB48277E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755672177;
	bh=kDL/Idwe3t8gh4wpRKhxN1+hNKjitofyF+BnAdqiTh8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AEWd720hBshMRk7m+CioEydEcm0/LSaIOml7/lhMMGC082qnzyx1/OkcDJKbZ4WjA
	 o82o/NcR0Zq8+FHvsGTALa3HR56MF74XUk0L3FzAK+U3S0TVP6MRNPi2rTn28YCsDm
	 hbnDjBfN7ohDQOFUWJh4DS+3vxBfJGrIlF01DQEzgSaEJvoXE/pE0/FKCM9drMn3kX
	 ZVXaBPzzXeRQUALJK2Q7+QXEQx3nSAZHNbP14CJPhZd4OmewWE+QDWsX3A0Dg12a1c
	 /taMhaHRbXTe+vigNpJKEaatPmnINtPCmFamq9NxJdUfi8a6rgZcYmTqUtuNYCYzDz
	 qeHqsDPJw2xVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3EB48277E;
	Wed, 20 Aug 2025 06:42:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE5EE0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6240C8276E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:42:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eke8ONs4pL3V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 06:42:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 984698275C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984698275C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 984698275C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:42:55 +0000 (UTC)
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-340-1h0580ZnNxeFQf5NnfkHHw-1; Wed, 20 Aug 2025 02:42:52 -0400
X-MC-Unique: 1h0580ZnNxeFQf5NnfkHHw-1
X-Mimecast-MFC-AGG-ID: 1h0580ZnNxeFQf5NnfkHHw_1755672172
Received: by mail-oa1-f71.google.com with SMTP id
 586e51a60fabf-30cce56b8dcso3253116fac.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 23:42:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755672172; x=1756276972;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kDL/Idwe3t8gh4wpRKhxN1+hNKjitofyF+BnAdqiTh8=;
 b=oNsXET2tl/DmC8f3PkJ3Zdf6+zhTmKyqWsSf1wzvzS3kn/SUVDReDRY6R/P6VHNPa2
 nJUsVxIH9e8N0Z3o2mFbcbHQs31gTBRnFKZnC4Hw41W6tFGLU6yQqSYFKw9OrADrzogp
 yoEwjGtml/HW+y3SClMX4Gu+aEKorvtd+XKXKRz/oZOlTdJusmbaYsC8vpa73M9G8+vX
 YUGnzRoNn+fSzQWjnjKDePKQxCKpWvq0Sc8Sq0LL3gZuREUJQF1ll166cIA7H42AJeBL
 YT1ZakXpqKgS3i7+6JRVwvzEyGUTmNfi/2z05RvoZAOZFvhbX8V0fikDrzfdAcS1yonn
 9Jdg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/7yyo5w/+5XQ6yKhV5gT9oUXu/9qmr0YVzrli7FEWQXmMuHPRyU2PRPWVQw7NPzVu5sd4uG1OkRa9UaHyIzo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz7ror/7z46Et7pu27mfSuUxnL5Jep9gD/F66oT3rAzSoVXi6z5
 LZGQJxGqsNFwIyX4cnJDxV+3QRPO8UyFldGW4V1E/9LSQ2ki9PicdTIVsmCUyo3bYtBhKQ9Wjq2
 L8f+4+4znWOQAHbCn8RyMwXaC5F2O1K4ziSXxuk5RwQeAWqf57myoW4pDD6fY/Hh3qqs+FLR5qT
 AIn4658/OvUgem2NWF2RnqPW7patjJ5x1QsWmzJRhBaoRrPg==
X-Gm-Gg: ASbGncvgjE74jpyzQOS+BBl0uWAWkum+d/mn2D1En0uE44GEmuIRYLYvkauhfTNwkoI
 Vi7igmzcIPy4BlAZmOU31Ne7yih51J+0EHGxs2vIaVxA2wtWsNKBfDNq8m2s37xxW1HE+I1VS1H
 o7Xoj3qiZrLAWl2gyiMKDP
X-Received: by 2002:a05:6870:c1d1:b0:30b:9344:3e55 with SMTP id
 586e51a60fabf-31122747e63mr394754fac.2.1755672171753; 
 Tue, 19 Aug 2025 23:42:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmLsvhdtdNVk6JDmwRGF8bGjSFVPu98lgSRJzbf3timmOPy0qWyeyxDg9OJD2L6uQ8lFu4Sls5RfCV9HwHwHY=
X-Received: by 2002:a05:6870:c1d1:b0:30b:9344:3e55 with SMTP id
 586e51a60fabf-31122747e63mr394737fac.2.1755672171431; Tue, 19 Aug 2025
 23:42:51 -0700 (PDT)
MIME-Version: 1.0
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
In-Reply-To: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 20 Aug 2025 08:42:39 +0200
X-Gm-Features: Ac12FXxTDI61-OFqLUbUeEfxXMo9_2gsYELc-tIYCgHs3iI0oJh3Tnjv-MNggJ4
Message-ID: <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
To: Calvin Owens <calvin@wbinvd.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Ivan Vecera <ivecera@redhat.com>, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Nq4ZIYzzSrjO8aNQ_Lmch5D_-sOEdJBcYDAh2Nev1c0_1755672172
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755672174;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kDL/Idwe3t8gh4wpRKhxN1+hNKjitofyF+BnAdqiTh8=;
 b=E7lV1/Ib42Xh+2TSD5F3rKr/mvgjEffNsMMfIne8cbpIFa0fKssb0lkjFrSoIa6LbWHpLY
 OcKMVpxp85pEqiIXuLPvctR3XHn75NfdmmTt/NTbwkv8VFdxkJ8JUOzr4aO7KZKMm95VDp
 n9KJjLtzRIjLyr8gcdNTSQ/aP+qNJmc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=E7lV1/Ib
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

On Wed, Aug 20, 2025 at 6:30=E2=80=AFAM Calvin Owens <calvin@wbinvd.org> wr=
ote:
> The same naming regression which was reported in ixgbe and fixed in
> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> changes") still exists in i40e.
>
> Fix i40e by setting the same flag, added in commit c5ec7f49b480
> ("devlink: let driver opt out of automatic phys_port_name generation").
>
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")

But this one's almost two years old. By now, there may be more users
relying on the new name than on the old one.
Michal

