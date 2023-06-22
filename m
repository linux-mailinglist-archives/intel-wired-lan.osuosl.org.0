Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C7773A411
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 16:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F99641920;
	Thu, 22 Jun 2023 14:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F99641920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687445984;
	bh=y+VuNMYU0sV61UskuVdTFoH94qKaVfTgZkUnupjC06o=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7GMBJTPzOKmf62JDzXSiJw5NW23y4HcWOIk5BohS3Pw2ehEuuj1BmyJq9Fm52ORnU
	 jhwc4vpgsmxoirqaaIm9gEFcpFsnZumgzN6uaoitp0O3ufOmYMfh1zQJfJOiRkTdHl
	 vfmsdEKDwUFqbcpVgxZZFWg/7wZmvlgXR+W14hrJK87/22xAbucWM+19Hi+AdSU4DP
	 T3v3zSBxGoJoqhB28yh7JWdxbgLyRU5sWW3zLrzj8Wof6AaK9YVTh6MFw1hJ9LR8NQ
	 p1K2KFMU68Au/X/52RqDMJDyk0yh2ct3aDg52dk9ryIQXd+d6jPUzwL7f+t/8DtYZy
	 vRWSagkBrjzoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CQjHJiFBQj_0; Thu, 22 Jun 2023 14:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 021C540567;
	Thu, 22 Jun 2023 14:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 021C540567
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 531AA1BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B1FA400C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B1FA400C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cr_U_bHh9Iji for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 07:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67D42400CC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67D42400CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:44:35 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-283-ZvN9aSA5OwirFjb61vjrPw-1; Thu, 22 Jun 2023 03:44:32 -0400
X-MC-Unique: ZvN9aSA5OwirFjb61vjrPw-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-311275d1af2so2354048f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 00:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687419871; x=1690011871;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tYitkJ9K5PNHLjATVfNZ/r2Zjni359m/ast1REIS+7E=;
 b=Hs+ghDKU9k/k429zrReC+43FxspCL1BYDiaSsH34R5ySV/oP1p+jAQwpdfChz05Mkp
 25Tv+y6CqyBiLlT/pkYD15Mq4FO87PVoSfz1+xLJ351I2xx4qAp573g1K7wL1z6BFzoV
 6Xjy8zTZHfPbZldYzlWLADdwmbNE3fIPC7NJE8x39RQ6Mt+gk1cLs7+MN1iXEcvlZoaz
 E6ILRbxjvVoJZVCZ03ZMAPd3g0akQz5qb9LZQ0tZZMFNx/loEDs3DNIo/rqjoK8dc1dx
 KXxaeHEe/yqgJEdTtXVFB8gFRxKRR4pz2TuZYi/2zMLgrHaIibz35npgT2rp/W/F0c5Y
 kvAw==
X-Gm-Message-State: AC+VfDxRx4XdwurTcUdN7Sv7AYcGjYVARmGGJQBY19nTdbAGu48LYemU
 UWxS08We0AycqVdeNwbE+6S3DtWlp8zqGlH43H3Rh/MAgtP2e7susoUN475kwaRedrF7tQkEgIH
 5nyE+5erKqtMg/U/Dcfh/rTOWOk+hm8nugoF+8crlRHFXmg==
X-Received: by 2002:adf:cc8b:0:b0:311:10db:daf7 with SMTP id
 p11-20020adfcc8b000000b0031110dbdaf7mr11360138wrj.64.1687419871696; 
 Thu, 22 Jun 2023 00:44:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4UuzdkFW3EKOeH1cExrRtRd1n6VQHmF8r2+d0pZ4sTgIBkuNEk/jyH57xHzN9kH5lZPhqPDLXE9EAZwFZ8gss=
X-Received: by 2002:adf:cc8b:0:b0:311:10db:daf7 with SMTP id
 p11-20020adfcc8b000000b0031110dbdaf7mr11360100wrj.64.1687419871363; Thu, 22
 Jun 2023 00:44:31 -0700 (PDT)
MIME-Version: 1.0
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 22 Jun 2023 10:44:19 +0300
Message-ID: <CACLnSDhkUA=19905RKk=f1WBkd3jTEDcvytJCgavi90FroXb5w@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 22 Jun 2023 14:59:38 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com,
 jiri@resnulli.us, arnd@arndb.de, idosch@nvidia.com, richardcochran@gmail.com,
 claudiajkang@gmail.com, kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com,
 liuhangbin@gmail.com, David Airlie <airlied@redhat.com>,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: multipart/mixed; boundary="===============0461926302757413446=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0461926302757413446==
Content-Type: multipart/alternative; boundary="00000000000005144905feb30ed4"

--00000000000005144905feb30ed4
Content-Type: text/plain; charset="UTF-8"

Hi,
Could it be possible to add PPS DPLL phase offset to the netlink API? We
are relying on it in the E810-based grandmaster implementation.
Thanks,
Vitaly

--00000000000005144905feb30ed4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Could it be possible to add PPS DPLL phase offset =
to the netlink API? We are relying on it in the E810-based grandmaster impl=
ementation.=C2=A0</div><div>Thanks,<br>Vitaly</div></div>

--00000000000005144905feb30ed4--


--===============0461926302757413446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0461926302757413446==--

