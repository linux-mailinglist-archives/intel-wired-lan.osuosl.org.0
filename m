Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC48162F22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:55:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 644AD8564D;
	Tue, 18 Feb 2020 18:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JqjIUtmhHy7p; Tue, 18 Feb 2020 18:55:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F35A3858F5;
	Tue, 18 Feb 2020 18:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 038551BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED63381B75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BlOkE1VxYtbH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:54:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49B9B8124A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:54:29 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a5so3880398wmb.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 10:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1dJr5fWtmgL5ZWKfudWGcy2nFnCOukxqjG9HGhea3rc=;
 b=i26UeAYelCy7U1A8/lwfSWuKD6ty6MuaX0kbrq6tzijhBOyrJHSPcHPMflkjW4ctmg
 dXOzg8z8CpuvzrqZRiqoJTViSk1VgSAzkRoasR83KQaslqB1kzObh37AkUQ3kcBFBri9
 3SlMcjIG3y5o3BAvpVKCk6yOGFTS9VpnYv5qu5WMS/Z95Mm18CQljUcsP2/2KL88z3Rp
 BauSmQyR5TGyrYyKDGfVzSAbcvcebAw4Hk8XsbOvk5/ngH+Oa/yLlW3wfCVDMSFPac7f
 LnLryS8huIxPvunu7OoWrweZdRD86earFdvzrES3bJKxlMfySGH6LfBmlwBiSbRJUaFo
 ZGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1dJr5fWtmgL5ZWKfudWGcy2nFnCOukxqjG9HGhea3rc=;
 b=s63KWEVYo+vu/loNiv3RUCOkdfFx2tmz1q10ngp7xWsGk01hxFAmjeY1GYxBRSYwKf
 hvCZ4lm22agNStR4pPBYqvHwqhRDjdrNWkwpNwwYTJNbBb+7/VgDT+ZqcK0aHVcSnryy
 PaS+i/j27aCt/lLD9OcF7rpFNayPdl51bHqSL68M3Fc8f8P4uahHFhUdjfr4lsnb5COD
 oDMpTAVnjspEPt6OqNqXqZc/68PuqqNI8vaW6F3tRhyNy/h/T11wDP2QghPMNNHxyPLS
 XNzXhzsvp6GkjFTn8Kh/ROMTA027F6JwMtr2RfY0DaD1NTERzbmpg8CW81G594+bZQVf
 xvmw==
X-Gm-Message-State: APjAAAW7C0Gskc27Q8pLzMuplkvIv455Oi4MYK8KLxOm54IqNjTQEtra
 Cea4B5aRj97Lc9jCV36fauk=
X-Google-Smtp-Source: APXvYqxYgBXJufEEemNhgT0u53WakZwZ21MeNb7+y3FjScnyw0psrHFJLQKWd4DJGrX4UhzYbMWY6A==
X-Received: by 2002:a05:600c:230d:: with SMTP id
 13mr4828770wmo.12.1582052067709; 
 Tue, 18 Feb 2020 10:54:27 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id u14sm6925152wrm.51.2020.02.18.10.54.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 10:54:27 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
 <9270ae4b-feb1-6a4d-8a22-fbe5e47b7617@gmail.com>
 <CAKgT0UdP78GGnowWC85YiTAHOr63NiLa25=2TSckKBEzGBdeJA@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <e6b59cad-b6a6-73fc-7d75-3cc9ce6411ab@gmail.com>
Date: Tue, 18 Feb 2020 19:54:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0UdP78GGnowWC85YiTAHOr63NiLa25=2TSckKBEzGBdeJA@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 18:55:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] net: use new helper
 tcp_v6_gso_csum_prep
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
Cc: linux-hyperv@vger.kernel.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Ronak Doshi <doshir@vmware.com>, "VMware, Inc." <pv-drivers@vmware.com>,
 Chris Snook <chris.snook@gmail.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>, Sasha Levin <sashal@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jay Cliburn <jcliburn@gmail.com>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Pensando Drivers <drivers@pensando.io>, GR-Linux-NIC-Dev@marvell.com,
 Timur Tabi <timur@kernel.org>, Rasesh Mody <rmody@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Miller <davem@davemloft.net>, Shannon Nelson <snelson@pensando.io>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 18.02.2020 19:34, Alexander Duyck wrote:
> On Mon, Feb 17, 2020 at 1:43 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> Use new helper tcp_v6_gso_csum_prep in additional network drivers.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>>  drivers/net/ethernet/atheros/alx/main.c       |  5 +---
>>  .../net/ethernet/atheros/atl1c/atl1c_main.c   |  6 ++---
>>  drivers/net/ethernet/brocade/bna/bnad.c       |  7 +----
>>  drivers/net/ethernet/cisco/enic/enic_main.c   |  3 +--
>>  drivers/net/ethernet/intel/e1000/e1000_main.c |  6 +----
>>  drivers/net/ethernet/intel/e1000e/netdev.c    |  5 +---
>>  drivers/net/ethernet/jme.c                    |  7 +----
>>  .../net/ethernet/pensando/ionic/ionic_txrx.c  |  5 +---
>>  drivers/net/ethernet/qualcomm/emac/emac-mac.c |  7 ++---
>>  drivers/net/ethernet/socionext/netsec.c       |  6 +----
>>  drivers/net/hyperv/netvsc_drv.c               |  5 +---
>>  drivers/net/usb/r8152.c                       | 26 ++-----------------
>>  drivers/net/vmxnet3/vmxnet3_drv.c             |  5 +---
>>  13 files changed, 16 insertions(+), 77 deletions(-)
>>
> 
> It might make sense to break this up into several smaller patches
> based on the maintainers for the various driver bits.
> 
OK

> So the changes all look fine to me, but I am not that familiar with
> the non-Intel drivers.
> 
> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
