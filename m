Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6507EF3B80
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 23:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2B6D85DB1;
	Thu,  7 Nov 2019 22:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b21rK-088Ryl; Thu,  7 Nov 2019 22:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F62085CBC;
	Thu,  7 Nov 2019 22:35:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6C041BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B98A8861A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L63QRVMk0XT9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 22:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50A6F8618E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:48 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 8so4297425wmo.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Nov 2019 14:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7DxvwxQedFVL2v9G3KjJjmTcPC9r0YYtv+wCtWcZn/s=;
 b=UFb+JQLSdTgLALt+snoVbg0YHvipQDnHMm12gsLqrs/Ka7XweF3p48wHXBo7IyyR7G
 Z7vwxM2iB3HMhxvj7q+KA/+xFe61dxFP6cUQKwaQ2hA5XvHsc+2SGX7Jbiv73rHjeGzt
 5KPqQOY//PTFxqiTlLyPlwD6rmSAWJ9aYlIJBmPtZhmizEofi032wG6Zhv1/yO0Oh5ea
 vgA4ItacVPMX6gG0HpHLFLVrwpjJ+zPxbuXpg53QmrMFWupJ3wlIDu2fCaLMTwSB89h1
 89AcdO3JTkbFrkH+lwGqImpDN8eAw1mLMsQT3b/S8aVS1kOa2/TNxOFfnyOq7ACaqpEl
 Lprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7DxvwxQedFVL2v9G3KjJjmTcPC9r0YYtv+wCtWcZn/s=;
 b=EwAfNleIoOlwc5jDpQvaeVg2KfZowb6MxDqJXgVBQNpQtSkRraPj7/4IDpxL+I61/u
 HTgVB0qgvBPuKWj07CyMg8FanOrBCXbB2Wy4mywWOP6kodB7Hv5zvtfzWjCG54/TDMrJ
 KvvyiaquR2Y1cYNFMaFjP00ALSpwmG+AxrwsUyOCkzZS0u467IC1Lv3moibmbmki3HGQ
 RBU+eOPsFFkbjAGrOktmwBnarqwA8KPd0P15JHdFJ8oJ2OOrzbkWcAJ20scRUiLIt3rq
 X11uJSiz6sn/lp+C05CJ0By9G6OBJBPVHC5ncnxqSnzg4YzkIO28lUv31uaAjvpQVstx
 Z4Ng==
X-Gm-Message-State: APjAAAVqczo795WcLkSn1eZQhXajelPWPVWRVR+/m5HlJEKwZAcXiUBN
 WckXX35wk9OqNIaPlh4B1Hc=
X-Google-Smtp-Source: APXvYqwLlMl9Bzz6Hn/3cFKnXywBnFRlQlXBMYJFjbiAEuCCR5o/uRj9bugs7dKIP2MRi9DvClDGbQ==
X-Received: by 2002:a7b:c411:: with SMTP id k17mr1316208wmi.119.1573166146414; 
 Thu, 07 Nov 2019 14:35:46 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y6sm3667194wrw.6.2019.11.07.14.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 14:35:45 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Date: Thu,  7 Nov 2019 14:35:35 -0800
Message-Id: <20191107223537.23440-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net-next 0/2] net: Demote MTU change
 prints to debug
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Timur Tabi <timur@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi David, Jeff, Timur,

This patch series demotes several drivers that printed MTU change and
could therefore spam the kernel console if one has a test that it's all
about testing the values. Intel drivers were not also particularly
consistent in how they printed the same message, so now they are.

Thanks

Florian Fainelli (2):
  net: ethernet: intel: Demote MTU change prints to debug
  net: qcom/emac: Demote MTU change print to debug

 drivers/net/ethernet/intel/e1000/e1000_main.c | 4 ++--
 drivers/net/ethernet/intel/e1000e/netdev.c    | 3 ++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 4 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     | 5 ++---
 drivers/net/ethernet/intel/igbvf/netdev.c     | 4 ++--
 drivers/net/ethernet/intel/igc/igc_main.c     | 5 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 drivers/net/ethernet/qualcomm/emac/emac.c     | 6 +++---
 8 files changed, 17 insertions(+), 17 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
