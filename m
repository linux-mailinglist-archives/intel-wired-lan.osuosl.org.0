Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EA3161EDA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 03:10:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8EBD84E10;
	Tue, 18 Feb 2020 02:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQhVYhhOe7Ny; Tue, 18 Feb 2020 02:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9FCB84DE1;
	Tue, 18 Feb 2020 02:10:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEF001BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9FF481E39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fe8Cnpf+Xk3u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2020 21:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0976681E2E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 21:39:37 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z3so21541891wru.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2020 13:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=pQK+JSaj4X1ouX/nv3XugRaRb5vhJaYjMLbHKqXiJLs=;
 b=tRxbEzBjpxae4/jPkX1ksr+AcCQ64ru3BPDzjqwTU82KNKYS4zCXaPWBV+ZO5ottcE
 SWRr3JAXQpC0gyS+wvRGCiIV4U7PA5WMbz2ZSGOVn7SsIblDcq7V3IvlODWdUH8p0ZeP
 sCvsYdTwQE2yPqtNrPz6d1lxZtBN6p6isE2YiGyv2JTZHAKg31zP2fe1rcF1Al3uFeA6
 uiKo+SF5Lcs5EuO1azjUgTpoU2DReG7SX6W8+ujPHNv7MEWktBJFkZQKhjLy9uu1OizE
 Jh0qS3HZKJGRz9Hc84QtlrjF3T0y9mRnpe/R7e9MGNwBJa9fWcRifsPM/jzkNm8IjdmP
 LUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=pQK+JSaj4X1ouX/nv3XugRaRb5vhJaYjMLbHKqXiJLs=;
 b=UY56Dwo0dRyn+xIAKlGh1nBgG6iO5bVpSiWMbqko3EbLHatRa0t2PbvM9Qe2aT2gzh
 ptBgxGkYgQRV+6+p12Nx94w8A92wRIGefFkZ/Dly3U6sScDXXxa8E4w+B5Iv8gxjdhR/
 01Ys8QyY+s+KGI5O8NsOhwPbJHgSakyrFVlYDSVmA+ARQND1YloeaJH945Vw9EN4mI0Y
 hiJbNrFIgpftwk8JQn+b/8d+5lzr+j/+j9TY40S0AP4rXZ4t2jLTI5QDTCvk9qlNoled
 KvCZ0uLlmsWfdVuFtqyW68urhrc0b8TimhiTTf6d33abpHxADzTacTiUFDOU3paPeWMd
 loPA==
X-Gm-Message-State: APjAAAVO/+mqvowF0e2S3So4DwGPxXw6FeX9/svZ1wfYMy5iKfllQKTT
 y9zCmbGeJaPN0vk0LLexDEg=
X-Google-Smtp-Source: APXvYqxtgfXlPYMtn3A/6f+SlQuvmEQ1uS0kThsmRCNvSY3l7Z1IWf9fXRqMYdc2QonmDvWxMh0+og==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr24421643wrt.241.1581975575195; 
 Mon, 17 Feb 2020 13:39:35 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:41c6:31a6:d880:888?
 (p200300EA8F29600041C631A6D8800888.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:41c6:31a6:d880:888])
 by smtp.googlemail.com with ESMTPSA id t13sm2892378wrw.19.2020.02.17.13.39.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 13:39:34 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: David Miller <davem@davemloft.net>,
 Realtek linux nic maintainers <nic_swsd@realtek.com>,
 Jay Cliburn <jcliburn@gmail.com>, Chris Snook <chris.snook@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, Christian Benvenuti <benve@cisco.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Parvi Kaustubhi <pkaustub@cisco.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Guo-Fu Tseng <cooldavid@cooldavid.org>, Shannon Nelson
 <snelson@pensando.io>, Pensando Drivers <drivers@pensando.io>,
 Timur Tabi <timur@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Sasha Levin <sashal@kernel.org>,
 Ronak Doshi <doshir@vmware.com>, "VMware, Inc." <pv-drivers@vmware.com>
Message-ID: <76cd6cfc-f4f3-ece7-203a-0266b7f02a12@gmail.com>
Date: Mon, 17 Feb 2020 22:39:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 02:10:01 +0000
Subject: [Intel-wired-lan] [PATCH net-next 0/3] net: core: add helper
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 linux-hyperv@vger.kernel.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Several network drivers for chips that support TSO6 share the same code
for preparing the TCP header. A difference is that some reset the
payload_len whilst others don't do this. Let's factor out this common
code to a new helper.

Heiner Kallweit (3):
  net: core: add helper tcp_v6_gso_csum_prep
  r8169: use new helper tcp_v6_gso_csum_prep
  net: use new helper tcp_v6_gso_csum_prep

 drivers/net/ethernet/atheros/alx/main.c       |  5 +---
 .../net/ethernet/atheros/atl1c/atl1c_main.c   |  6 ++---
 drivers/net/ethernet/brocade/bna/bnad.c       |  7 +----
 drivers/net/ethernet/cisco/enic/enic_main.c   |  3 +--
 drivers/net/ethernet/intel/e1000/e1000_main.c |  6 +----
 drivers/net/ethernet/intel/e1000e/netdev.c    |  5 +---
 drivers/net/ethernet/jme.c                    |  7 +----
 .../net/ethernet/pensando/ionic/ionic_txrx.c  |  5 +---
 drivers/net/ethernet/qualcomm/emac/emac-mac.c |  7 ++---
 drivers/net/ethernet/realtek/r8169_main.c     | 26 ++-----------------
 drivers/net/ethernet/socionext/netsec.c       |  6 +----
 drivers/net/hyperv/netvsc_drv.c               |  5 +---
 drivers/net/usb/r8152.c                       | 26 ++-----------------
 drivers/net/vmxnet3/vmxnet3_drv.c             |  5 +---
 include/net/ip6_checksum.h                    | 12 +++++++++
 15 files changed, 30 insertions(+), 101 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
