Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F34CF163551
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 22:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A241E85D41;
	Tue, 18 Feb 2020 21:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvG0TQCyfLMZ; Tue, 18 Feb 2020 21:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F02D85C97;
	Tue, 18 Feb 2020 21:46:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1771BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 19:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96EB584DFD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 19:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7s3kHld83cN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 19:55:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D72DE80C91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 19:55:25 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w12so25471005wrt.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 11:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=2XbnpJ3DCsRKiHe1DaCKVtnJE9/aeVVRESQe3D8Emz0=;
 b=vUohnzwHM6ww95pQT57+3W9rF4ypv0oi9Sr2c9p3s83ysEDCy4B8i7wA2YEjpx4o7O
 NcjBuJOYJT3TkV38cAxuxjb+GQg+/EGWFW7GqjNTqfN9IXB1ujD8cfSNj805Eqi9UL3J
 sVm9BCtuHEfxKEPYZxsEhZJn7fhEIQrGxl+bbVqNYURgddAdzTdXM+0zuWbYJmPrQY59
 wKP2rd4F6kVeZdGKvosiHVzXPskpRcN+Ld9zlmdZfT1pXW9Pmgt5x9Wmmq76Ugw2uFx1
 kRSPDlv37YJUGIgNKnCM8XV/FSdiTFZJzGUDuK+ZYgrIDM8RGYpeMxkNLm4rW2QysL8S
 aFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=2XbnpJ3DCsRKiHe1DaCKVtnJE9/aeVVRESQe3D8Emz0=;
 b=BhDrYK34UI6KfYjSGbTbhRI4nXSXGb7y4kggiP2Vy9XWqYHwceJkDLyZiP2E7mMAsO
 PFbIpQnpLil3suQ4C87uQbcATJWL9jDciKExAFc/BZsxLS/uIAB2Wlc83iNwLjl/xdQN
 3Q3Mix8MiSYt1PCrfhqPLoNNK2sDzEeBkXYESuH9gG7IWjUyhPJ0ttPZ/sZKA7H6cf33
 sR3d05DV7R93+O9TDHHdT5bn/xF3e3cJ6hvTsE9KgNyn0Ft+KzY0rGhXuENeF9s/2UUC
 jFod8aKsIAahkJ85IwSxS4Pavzu24V9GcSMXpEAOdAL5u0gZ75ugKUh53xkGk/D+pFPD
 VaUQ==
X-Gm-Message-State: APjAAAVZwvfIll9UwAG1DfZNRfoNF0quQX2NhIqtgLSk3pkXjxKfWHrd
 tEOdt+IDNsQcWh2l0cPThq8=
X-Google-Smtp-Source: APXvYqxgH2Zy4SF7Ru6OgX1SQtM0GsOax0n4VqsktL36jANdSqE9ij6StXtgtan9ISXSA9S4DFix+Q==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr30082796wrq.51.1582055724084; 
 Tue, 18 Feb 2020 11:55:24 -0800 (PST)
Received: from ?IPv6:2003:ea:8f29:6000:5cb0:582f:968:ec00?
 (p200300EA8F2960005CB0582F0968EC00.dip0.t-ipconnect.de.
 [2003:ea:8f29:6000:5cb0:582f:968:ec00])
 by smtp.googlemail.com with ESMTPSA id t187sm4914865wmt.25.2020.02.18.11.55.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 11:55:23 -0800 (PST)
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
Message-ID: <fffc8b6d-68ed-7501-18f1-94cf548821fb@gmail.com>
Date: Tue, 18 Feb 2020 20:55:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 21:46:38 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2 0/13] net: core: add helper
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
for preparing the TCP header, so let's factor it out to a helper.
A difference is that some drivers reset the payload_len whilst others
don't do this. This value is overwritten by TSO anyway, therefore
the new helper resets it in general.

Heiner Kallweit (13):
  net: core: add helper tcp_v6_gso_csum_prep
  r8169: use new helper tcp_v6_gso_csum_prep
  net: atheros: use new helper tcp_v6_gso_csum_prep
  bna: use new helper tcp_v6_gso_csum_prep
  enic: use new helper tcp_v6_gso_csum_prep
  e1000(e): use new helper tcp_v6_gso_csum_prep
  jme: use new helper tcp_v6_gso_csum_prep
  ionic: use new helper tcp_v6_gso_csum_prep
  net: qcom/emac: use new helper tcp_v6_gso_csum_prep
  net: socionext: use new helper tcp_v6_gso_csum_prep
  hv_netvsc: use new helper tcp_v6_gso_csum_prep
  r8152: use new helper tcp_v6_gso_csum_prep
  vmxnet3: use new helper tcp_v6_gso_csum_prep

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
 include/net/ip6_checksum.h                    |  9 +++++++
 15 files changed, 27 insertions(+), 101 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
