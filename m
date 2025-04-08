Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AD1A80F7A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 17:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4A8F40D39;
	Tue,  8 Apr 2025 15:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfswAhl64xbq; Tue,  8 Apr 2025 15:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E0B440BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744125285;
	bh=R/O97uOoVzQU5zZ/kGe0w5BAxKzZ3HHF/MfBYDQo+ew=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QGBNCSn9SBPa82QXj88amoA6Y8wL5qbxHBZ+w8eeeyD2LVrWUBoz/tKqyZFxhmoEz
	 ApInuzi6strqgmR0O8/A56qQvHqAJj67alURpRohz/8ak7aO+Og2iQRdARhHGxVAfn
	 tHZ/e5OX9SHN7KQVOvbo7hK+W8piImx4hGGxdJuR98tIEGZQGgO+FukQu2gghz2xQ/
	 9HDoB+x2m8qHcUIAi2ncDoaIp5dFXUBQ3IfOSzuVp/A6qZQShA+wcvwadUMUzzi5KO
	 Jy7C5Nh+tdzHeMXHO42ULFV1QsGZq5xb3wMmCTITX0DdkCG1Q7RazO8/LsRtzpzpqL
	 SKuR1yQrrjqhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E0B440BBA;
	Tue,  8 Apr 2025 15:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CD47B1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE69160AFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:14:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HwXYyLGoVSCV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 15:14:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::163; helo=mail-il1-x163.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1476260664
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1476260664
Received: from mail-il1-x163.google.com (mail-il1-x163.google.com
 [IPv6:2607:f8b0:4864:20::163])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1476260664
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 15:14:41 +0000 (UTC)
Received: by mail-il1-x163.google.com with SMTP id
 e9e14a558f8ab-3d57143ee39so45014255ab.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Apr 2025 08:14:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744125280; x=1744730080;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=R/O97uOoVzQU5zZ/kGe0w5BAxKzZ3HHF/MfBYDQo+ew=;
 b=oi/ON/yeuI4uvnuSZ8yevl6oZAWd4LOgwtc0KNqrYJpjNML+qT0wbng0mfjNtW64TQ
 NsqtG5roLOzJZM4Gy/C4f2IqYfHWr1b76QDkt9TBnKkUZdkCc2a0sH1PSCKoF7ybtu/o
 sn9WkbJaJeyxiF7hzPMyspNCup94JHmx+m7SsDQ+AcM1Mw02MHzRAbTbPFyLVBPUFjJ+
 KLjGJ/djAKfANKn1ML3Og2jS/P3YB97IGRF7n+GfIp4AW/B56LZpWRyT0/D+rfcwSIN3
 +4DLTdD24eIMuP3UmfqPgQy4SWpD7xM4VMXZzW/Mp0kGOWoxxVOq0XGpWbE9695XoMwB
 P9pQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+XkNkNlKdNFIrtpKQTV1uiikK/euMW6nzzJ7CSYYeSE8Rgxa837uHXkBXbCvZkv6tWh6YsPft3ajthDGauZI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyjZHBQOZWD6nAGV0N+FMiC7Vsw2yyNShYqErtVoMfKKxtuf8pb
 DF0F7ZNDmBBY8bGeWekyly8C3LmC1qYGLtrkOQ+M0mYIHbUclWdH/oqR5MyvZXwHBm/KLu8oEjO
 hF+WUzWrGGPA1TeVpSaDVqDxPMOr+Ew==
X-Gm-Gg: ASbGncvITUMj3KePxx/J7GudAgtmEUdumvGcNmmwHf30G6FZUurJIfevmfbt4Ut3xah
 sotic3ldyxxQMN1JZwpVszmr0UcmY+CsfR9ycCgYjUfmz0SXhm1PHLD6LrXusrJ6ADno7h3VM1I
 hxgjz3zw/508Oa3ftJ16L3qWp/N6qXg8d7q1liX63PGG3FdKzZAECnVYTPVYvTbCg2D/CrNkR+I
 Z4nF99a4CYcwmlgQnRUwhv/JoSoV9pn7ZWJrbFinbkCzGNjCoblm6GU6N5KcLAqSZDsvXwFerTA
 2TthvC4Jxn1G9iHXvIFnpiIiDis=
X-Google-Smtp-Source: AGHT+IHRBTG6+uqcyAAc/HKIV+mc/d+bQv8wck3AXmAPQOGb3TE7JsAnfu9/DW9a3DfSEJWosmHZ7CG1JJKH
X-Received: by 2002:a05:6e02:348f:b0:3d5:df21:8481 with SMTP id
 e9e14a558f8ab-3d6e3e66be1mr184350015ab.0.1744125280423; 
 Tue, 08 Apr 2025 08:14:40 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 8926c6da1cb9f-4f4f43bb938sm120574173.3.2025.04.08.08.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Apr 2025 08:14:40 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (abran-ibgpevpn-us285.sjc.aristanetworks.com [10.244.168.54])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 9F23B10023B;
 Tue,  8 Apr 2025 15:14:39 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id 9864340B19; Tue,  8 Apr 2025 15:14:39 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: andrew@lunn.ch
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, daniel.zahka@gmail.com,
 davem@davemloft.net, ecree.xilinx@gmail.com, edumazet@google.com,
 gal@nvidia.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jianbol@nvidia.com, kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, mpazdan@arista.com, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Date: Tue,  8 Apr 2025 14:22:43 +0000
Message-ID: <20250408151439.29489-1-mpazdan@arista.com>
In-Reply-To: <6ad4b88c-4d08-4a77-baac-fdc0e2564d5b@lunn.ch>
References: <6ad4b88c-4d08-4a77-baac-fdc0e2564d5b@lunn.ch>
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1744125279;
 bh=R/O97uOoVzQU5zZ/kGe0w5BAxKzZ3HHF/MfBYDQo+ew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LrDSWY1faZQQFl9QwD7/kcPM83WYFdTHMX5npzlW1T1CrRpVsZKaNI6dYqh9dIkuc
 si5P4JoOCqnH5/O+d4FV6NbxTUaZ7GVJijv9lzdewWh5qRutHupZZAT4mCbRY4gTUm
 EHsaNZ4A9FA1DG4VVOhFkiDXlqJkBvh/9TY61WNOhhuwZ1ueWHNZSJxmCBokFEBr5c
 W+jRD7fHdR/GT1UqTvM7UAtO/dvZZs+rNI/1H46tQjDV+f470+xFjoEqZjbXhSdMGQ
 UO88GEFnoKEATLyKVKrsnR/JVwEtsaj/OGnjOVYkvIDAnkF8zLOsxPzgv90IKl8qd0
 cIXrdxGhPM3pg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=LrDSWY1f
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ice: add qsfp transceiver reset
 and presence pin control
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

On Mon, 7 Apr 2025 22:30:54 +0200 Andrew Lunn wrote:

> As the name get/set-phy-tunable suggests, these are for PHY
> properties, like downshift, fast link down, energy detected power
> down.
> 
> What PHY are you using here?

Thanks for review.
It's PHY E810-C in this case. According to spreadsheet: E810_Datasheet_Rev2.4.pdf
(Chapter 17.3.3 E810 SDP[0:7] (GPIO) Connection), it's SDP0 and SDP2 GPIOs 
are being connected to QSFP Reset and Presence pins correspondingly.
I assume you may suggest this use case is not directly PHY related. In first approach
I tried to use reset operation which has following flag in enum ethtool_reset_flags:
ETH_RESET_PHY           = 1 << 6,       /* Transceiver/PHY */
but this doesn't allow for reset asserting and later deasserting so I took 'get/set-phy-tunable'.
