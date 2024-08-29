Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7ED9649E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00B43419D5;
	Thu, 29 Aug 2024 15:21:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gmfq7l3unz0s; Thu, 29 Aug 2024 15:21:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E62CA419CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944882;
	bh=bXfbtMHqlMrIhOUvSAcFmfWQXM1V/TGEOrhr1h7LaiY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u27iUz8lJEQpTrzOAXwv+yudF7X0Fu/7G32OBwsrh+loZxLAgXDJN6SjOFEq/liHg
	 btCPW+S44AxqApG6QP2w4E6K1AqiiDO0tkLSG8XJtn2BX/mKwCoNkmJYEkc+WvMdrx
	 DKWrLiajuGyyLNyeINw1li/7QSSzRXTJZiUjhJmAdG5wVlXNlEyimYg2AVFuxqcwUc
	 Cel226IC7kYt2MkCFG7pej65m9glNpD/0+/C0pvNff6bdcU8tlwbmVhi5RyAXqX2l3
	 EymxLNBI6rGdgYQyCNI9qBCeCIlXxEr5VGM+TPyyKViAbWxvU2LUMnukE/mBNzmqqy
	 3r1wqhefB8dmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E62CA419CB;
	Thu, 29 Aug 2024 15:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5136D1BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4ACD0610FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uMVjACImIM6H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 07:11:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pstanner@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64447610EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64447610EC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64447610EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:11:46 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-28-fy1HVVPsNyqog80nzI8G5w-1; Thu, 29 Aug 2024 03:11:44 -0400
X-MC-Unique: fy1HVVPsNyqog80nzI8G5w-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7a802721b8aso51182385a.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 00:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724915504; x=1725520304;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IERdO5g5CEBvrBbqqjsDxoJcZ6rwjYGIfGMBBak9C/s=;
 b=LX4RgFJbkF6fSjAF7jQMbP1zBlFqLBkC/usxQ1K+c/oOXX3pXmFE7qDYyohiALGK6C
 2u8oHHT6XeZ5Uy+d2RCsIT7OeOYuPQfum3DoYumd7h7INba2TXdF5Aw/04gft7fR1YOK
 fGTxvNPXnnDiEZS5staNmERvihttwTi1P0mhb1/hBcAiOxw0cHf0Y8n+StblILWuEXdf
 AqKuKFAMQOktWCugiIT5cMzcPyNlAGHtFtKkUcK7TnyOeX1r0VMgHhPi3o4MX+67xN7b
 gL1QTCWAH7bai7iAVaL2MJ6ZtSmHciXEft47SyXoxzETLYcFVw+BAmr804RSMcRln5Ko
 C/PA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUK2YGYFVRGS/WUtAiCOJ1mtgjcBDWgkfKPsEKdD8le4zIgCTa1NkSqdLxRcI+SFTM1ywVHkvQkbt/XFhkrmS0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9OwnSjxeCycw7v4jprbj0p3cGXEKTVAgt+a9eywEmcNIyZbdt
 UWlWdB7ENlfXNdk1zWjZmMwcKsVL4Xv/q9FyjdhWbD1SCZCT15ETyUowIaaHSQI2Gw8p/ImKj/K
 p4cRXP7d0Pp/SR/j22iaPusEHjGaXuJjDfNHevHVl5G144M9NIN85G0jgMfTXSUB4704=
X-Received: by 2002:a05:620a:288e:b0:7a1:d926:3181 with SMTP id
 af79cd13be357-7a804266859mr191669885a.51.1724915503719; 
 Thu, 29 Aug 2024 00:11:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBqBLDgkzLQDNzMe/LLC1jjqCsCmtJx8vCyo9afnn6nmO7oZqimWzjfITYxbMqzQhTdcJ12A==
X-Received: by 2002:a05:620a:288e:b0:7a1:d926:3181 with SMTP id
 af79cd13be357-7a804266859mr191668585a.51.1724915503304; 
 Thu, 29 Aug 2024 00:11:43 -0700 (PDT)
Received: from dhcp-64-16.muc.redhat.com (nat-pool-muc-t.redhat.com.
 [149.14.88.26]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7a806bfc3edsm29188785a.8.2024.08.29.00.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2024 00:11:42 -0700 (PDT)
Message-ID: <839bc942bb6d8a3fc0cf9081b3f7d91fcbec790f.camel@redhat.com>
From: Philipp Stanner <pstanner@redhat.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu, 29 Aug 2024 09:11:40 +0200
In-Reply-To: <20240828130403.14145-2-przemyslaw.kitszel@intel.com>
References: <20240828130403.14145-2-przemyslaw.kitszel@intel.com>
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 29 Aug 2024 15:21:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724915505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bXfbtMHqlMrIhOUvSAcFmfWQXM1V/TGEOrhr1h7LaiY=;
 b=R1Eiq/XVqnscXnFou3jHuWigGAvm4F+2R7nGYxjFzHY9bco2VvOyLFTC+1o76GbmyDeTP8
 SDxVI55RttyxMyE+DRUxhq72e0H+u0RqeTOHll7uHxNbIQciJ9o24+yqMWBeEpC9xzrjDx
 aDjm9Y2NZkDNUcz9OrlKpe5esh2PT9M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=R1Eiq/XV
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: stop calling
 pci_disable_device() as we use pcim
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
Cc: himasekharx.reddy.pucha@intel.com,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Wed, 2024-08-28 at 15:03 +0200, Przemek Kitszel wrote:
> Our driver uses devres to manage resources, in particular we call
> pcim_enable_device(), which recently has registered
> pcim_disable_device()
> as device remove action

That's not the exact cause, actually.

The ultimate call to pci_disable_device() (not pcim_) through callbacks
set up by pcim_enable_device() has always been there. It's not me
adding that which caused the warning. What caused it is that I removed
the enabled-check from pcim_disable_device():

f748a07a0b64:

-static void pcim_release(struct device *gendev, void *res)
+static void pcim_disable_device(void *pdev_raw)
 {
-       struct pci_dev *dev =3D to_pci_dev(gendev);
-
-       if (pci_is_enabled(dev) && !dev->pinned)
-               pci_disable_device(dev);
-}
-
-static struct pci_devres *get_pci_dr(struct pci_dev *pdev)
-{
-       struct pci_devres *dr, *new_dr;
-
-       dr =3D devres_find(&pdev->dev, pcim_release, NULL, NULL);
-       if (dr)
-               return dr;
+       struct pci_dev *pdev =3D pdev_raw;
=20
-       new_dr =3D devres_alloc(pcim_release, sizeof(*new_dr),
GFP_KERNEL);
-       if (!new_dr)
-               return NULL;
-       return devres_get(&pdev->dev, new_dr, NULL, NULL);
+       if (!pdev->pinned)
+               pci_disable_device(pdev);
 }

Theoretically, we could add=20
if (pci_is_enabled(...

back, but I think the far cleaner solution is to clean up the drivers
as you do here if that warning occurs. Faults should not be caused by
this, just warnings, if I read the code correctly. Please correct me if
not.


>  (see cited "Fixes" commit). Since that, unloading
> the driver yields following warn+splat:
>=20
> [70633.628490] ice 0000:af:00.7: disabling already-disabled device
> [70633.628512] WARNING: CPU: 52 PID: 33890 at drivers/pci/pci.c:2250
> pci_disable_device+0xf4/0x100
> ...
> [70633.628744]=C2=A0 ? pci_disable_device+0xf4/0x100
> [70633.628752]=C2=A0 release_nodes+0x4a/0x70
> [70633.628759]=C2=A0 devres_release_all+0x8b/0xc0
> [70633.628768]=C2=A0 device_unbind_cleanup+0xe/0x70
> [70633.628774]=C2=A0 device_release_driver_internal+0x208/0x250
> [70633.628781]=C2=A0 driver_detach+0x47/0x90
> [70633.628786]=C2=A0 bus_remove_driver+0x80/0x100
> [70633.628791]=C2=A0 pci_unregister_driver+0x2a/0xb0
> [70633.628799]=C2=A0 ice_module_exit+0x11/0x3a [ice]
>=20
> Note that this is the only Intel ethernet driver that needs such fix.
>=20
> CC: Philipp Stanner <pstanner@redhat.com>
> Fixes: f748a07a0b64 ("PCI: Remove legacy pcim_release()")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Philipp Stanner <pstanner@redhat.com>

with or without the above suggestion for the commit message.


Thanks for solving this!

Regards,
P.

> ---
> =C2=A0drivers/net/ethernet/intel/ice/ice_main.c | 2 --
> =C2=A01 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6f97ed471fe9..18e4950316f1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5350,7 +5350,6 @@ ice_probe(struct pci_dev *pdev, const struct
> pci_device_id __always_unused *ent)
> =C2=A0=09ice_deinit(pf);
> =C2=A0err_init:
> =C2=A0=09ice_adapter_put(pdev);
> -=09pci_disable_device(pdev);
> =C2=A0=09return err;
> =C2=A0}
> =C2=A0
> @@ -5457,7 +5456,6 @@ static void ice_remove(struct pci_dev *pdev)
> =C2=A0=09ice_set_wake(pf);
> =C2=A0
> =C2=A0=09ice_adapter_put(pdev);
> -=09pci_disable_device(pdev);
> =C2=A0}
> =C2=A0
> =C2=A0/**
>=20
> base-commit: 4186c8d9e6af57bab0687b299df10ebd47534a0a

