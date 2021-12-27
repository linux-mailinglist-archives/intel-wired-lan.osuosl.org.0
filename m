Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E6A480303
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Dec 2021 18:49:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92F1A4077D;
	Mon, 27 Dec 2021 17:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pnu66Db3cyfL; Mon, 27 Dec 2021 17:49:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80F33402EE;
	Mon, 27 Dec 2021 17:49:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9ACFB1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 17:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79704605AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 17:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyGEh-f-dFBh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Dec 2021 17:48:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98AA360593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 17:48:58 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id t19so26401717oij.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Dec 2021 09:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pEDTSevr8Wui7/9Ib0ms0N7Elw3SuXo4ylecnWyhlSo=;
 b=ehv/beOOjVHY0/sgKdcpY8YzavbZDivcQVdBoIeoRKI4qC8EayE8VBARAwiSsJBeMg
 Zz3lXu+y9k2nNSuIlCNv/KXJeQUZt+jBe9GlImPC6RkELaI4OwGtotJ8lJT4/RYUvXeg
 5Yx++5EIDR1wB7QuoetS4tNem0svdSDSCecLUq4Nl5eBOUOKs2Gs+UisJK8zu7iYw2pq
 PcDsXaJJl8yT+sBrdf2ZMSprNPKxdo/1kTE/fvwlcME88l50Ds0vKqwzoH4bPkfvnAPw
 BW+JRWfrn/ItjQte78Dwgt8Dko2eYYW3nLA+EyqURprwTeFBH4+RkctBrk7LJGBiMFCC
 vwig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:to:cc:references:from:subject:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pEDTSevr8Wui7/9Ib0ms0N7Elw3SuXo4ylecnWyhlSo=;
 b=a6Pj3ZHTzsAjlbTp8xCEzTTmxYsv4cj/GQz1u7U93TtUvhq3Bo8Vobtf9X5iF6Isvi
 mxl8t6DNk5nn/BSpSjMSOmBO9H7Q/9Evdph5C1oxAmyMN2c3PTA8+LMKpFP7qTGctDZa
 eKRvTb+yNmO86BOOEPV8pYaIHKbt4qS6pTa+5JwhGaM9NmsPxJHkxpm2Wfu0n36YYJqh
 +hwzeyDJj78LyQLOdzKYmfW7dAUbrPVm6OZwfXvr3BMZmsMp7QdMJZCDSesMwCeYQbSQ
 g0Ci9UjTTXRR+qWBRKxYPF/kPjrER480RusTiOnp8r3Z8MXH83MtxR4d26xJP7HUKgKn
 8FKA==
X-Gm-Message-State: AOAM531nQsRI0m/YgyDFnZU0ml2yXuhmvfDxgHWos0/GGfoqsnnHZydU
 nTfXWiyyyNs5T+OPhr8l0sE=
X-Google-Smtp-Source: ABdhPJxb6+7biAtxOQefdtgXxvyx2b2YNDyhmSemqV7yYJxoDKcbxu7R4xufBgYDTWnPfrrEWMwb0g==
X-Received: by 2002:a05:6808:20a6:: with SMTP id
 s38mr14781112oiw.152.1640627337723; 
 Mon, 27 Dec 2021 09:48:57 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 23sm2931424oty.6.2021.12.27.09.48.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Dec 2021 09:48:57 -0800 (PST)
To: Niklas Schnelle <schnelle@linux.ibm.com>, Arnd Bergmann
 <arnd@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 John Garry <john.garry@huawei.com>, Nick Hu <nickhu@andestech.com>,
 Greentime Hu <green.hu@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <guoren@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Jean Delvare <jdelvare@suse.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Karsten Keil <isdn@linux-pingi.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Kalle Valo <kvalo@kernel.org>,
 Jouni Malinen <j@w1.fi>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Hannes Reinecke <hare@suse.com>, Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com,
 Mark Brown <broonie@kernel.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>, Jiri Slaby <jirislaby@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20211227164317.4146918-1-schnelle@linux.ibm.com>
 <20211227164317.4146918-2-schnelle@linux.ibm.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <281298ec-3898-9b02-1d92-66bf6df41170@roeck-us.net>
Date: Mon, 27 Dec 2021 09:48:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211227164317.4146918-2-schnelle@linux.ibm.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC 01/32] Kconfig: introduce and depend on
 LEGACY_PCI
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
Cc: linux-fbdev@vger.kernel.org, linux-pci@vger.kernel.org,
 alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-csky@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-gpio@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/27/21 8:42 AM, Niklas Schnelle wrote:
> Introduce a new LEGACY_PCI Kconfig option which gates support for legacy
> PCI devices including those attached to a PCI-to-PCI Express bridge and
> PCI Express devices using legacy I/O spaces. Note that this is different
> from non PCI uses of I/O ports such as by ACPI.
> 
> Add dependencies on LEGACY_PCI for all PCI drivers which only target
> legacy PCI devices and ifdef legacy PCI specific functions in ata
> handling.
> 

This effectively disables all default configurations which now depend
on CONFIG_LEGACY_PCI. Yet, I don't see CONFIG_LEGACY_PCI added to
configuration files which explicitly enable any of the affected
configurations. Is that on purpose ? If so, I think it should at least
be mentioned in the commit description. However, I think it would be
more appropriate to either delete all affected configuration flags from
the affected configuration files, or to add CONFIG_LEGACY_PCI=y to those
files.

Guenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
