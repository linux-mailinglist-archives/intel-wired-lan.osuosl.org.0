Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36311867A7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 19:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA2D2882B5;
	Thu,  8 Aug 2019 17:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1XKWZHuwDML; Thu,  8 Aug 2019 17:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3027D882A9;
	Thu,  8 Aug 2019 17:07:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 738891BF568
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F90E860F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vDir1H4IBkWD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 07:41:26 +0000 (UTC)
X-Greylist: delayed 00:06:52 by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C67C85797
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:41:26 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id v15so80754166wml.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2019 00:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=FZrUQH33y44Ytw4iJLLaq3ZcMTl1mI3uSlJR/j+IYIA=;
 b=sm33IYA6YCZXfStWQ2VxSkjKlqC6Pc49HxVe5SFTOVZhHqE4v/mQWVzH8A8t9QXGf1
 MZio94ryosMuUEyzoLF9A/9ZbHvZMRkXvwuoMEhDSTLqABdT45gyFfcm+vi/XY0NWzfX
 THUmMpBdZkqb55o9sEHSpbShnr+XMEUziry7S1aUi3q4APB+e2DcQ7A37XAaHeqpFkmP
 WDt9acG91X+y2w2BX9IhvXr1WtCR5ZYdoHgCDfYP3h1Tr5urOXUUtTzJiTdsEh4jFL1K
 zwxf1jq0f7jJhGDCZvh8f4M9acWpPg6VvRMAhd2q6wUsl+JwQufNZP47i9mjvwB/P5Fz
 tbZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=FZrUQH33y44Ytw4iJLLaq3ZcMTl1mI3uSlJR/j+IYIA=;
 b=uVK4yvxHodz3C8BMkVW6szfYxDWMu3Jne5g3ZXdU4wkirNtVEgx2ceJ9rxAH/LOcwR
 trs5crYxev35zySefcCrmFu3xy63xiI21Dn7/kEv42HminLS0ThP6f3hhIeLrac1bBVL
 C2/Y+wu9gZ72XhKQfqEWfu9fCX1qRAFB2YkzvFnl49sNwbPcJVSIN2/27R0CIfqmRN3F
 BjIbQZ/ZiGnz2gu1kG2Cq/JN4XNccM4z3Pf2MGx1ZJBXNvKszwCDSK4TETe21dC67ecj
 ZivcQ8Mpd5V51M8TZ4xlwgqlonfHMe3mJuZAxauA3yY+nudpPNDXs+CKumIIndfO+9dy
 Edbw==
X-Gm-Message-State: APjAAAUI3oUolGVwk5bYJNB1PMzmFZaG0FOHDfFbMKM0KbCrslUvkw7w
 lnHgf8+R6sS5SevL04Y++ReTdA==
X-Google-Smtp-Source: APXvYqzDJy8goZnkK981FtKvLP4ltt5j12SyCQo15xhOCqUOj4ur0/SSjmlX9lG53vtJrI5qznaTjA==
X-Received: by 2002:a05:600c:114f:: with SMTP id
 z15mr8983631wmz.131.1565163272906; 
 Wed, 07 Aug 2019 00:34:32 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id y2sm79688035wrl.4.2019.08.07.00.34.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 00:34:32 -0700 (PDT)
Message-ID: <5d4a7f08.1c69fb81.5cc82.1018@mx.google.com>
Date: Wed, 07 Aug 2019 00:34:32 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Tree: net-next
X-Kernelci-Kernel: v5.3-rc1-460-g05bb520376af
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: master
X-Kernelci-Report-Type: bisect
To: Andrew Bowers <andrewx.bowers@intel.com>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jacob Keller <jacob.e.keller@intel.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-Mailman-Approved-At: Thu, 08 Aug 2019 17:07:04 +0000
Subject: [Intel-wired-lan] net-next/master boot bisection:
 v5.3-rc1-460-g05bb520376af on meson-gxm-khadas-vim2
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

net-next/master boot bisection: v5.3-rc1-460-g05bb520376af on meson-gxm-khadas-vim2

Summary:
  Start:      05bb520376af Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue
  Details:    https://kernelci.org/boot/id/5d4a3a6759b51422d431b28d
  Plain log:  https://storage.kernelci.org//net-next/master/v5.3-rc1-460-g05bb520376af/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-gxm-khadas-vim2.txt
  HTML log:   https://storage.kernelci.org//net-next/master/v5.3-rc1-460-g05bb520376af/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-gxm-khadas-vim2.html
  Result:     b27223591606 i40e: verify string count matches even on early return

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       net-next
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
  Branch:     master
  Target:     meson-gxm-khadas-vim2
  CPU arch:   arm64
  Lab:        lab-baylibre
  Compiler:   gcc-8
  Config:     defconfig
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit b27223591606f59c1f7c042b8e3dc74affadf492
Author: Jacob Keller <jacob.e.keller@intel.com>
Date:   Tue Jul 2 08:22:58 2019 -0400

    i40e: verify string count matches even on early return
    
    Similar to i40e_get_ethtool_stats, add a goto to verify that the data
    pointer for the strings lines up with the expected stats count. This
    helps ensure that bugs are not introduced when adding stats.
    
    Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
    Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
    Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index ceca57a261dc..01e4615b1b4b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2342,7 +2342,7 @@ static void i40e_get_stat_strings(struct net_device *netdev, u8 *data)
 	}
 
 	if (vsi != pf->vsi[pf->lan_vsi] || pf->hw.partition_id != 1)
-		return;
+		goto check_data_pointer;
 
 	i40e_add_stat_strings(&data, i40e_gstrings_veb_stats);
 
@@ -2354,6 +2354,7 @@ static void i40e_get_stat_strings(struct net_device *netdev, u8 *data)
 	for (i = 0; i < I40E_MAX_USER_PRIORITY; i++)
 		i40e_add_stat_strings(&data, i40e_gstrings_pfc_stats, i);
 
+check_data_pointer:
 	WARN_ONCE(data - p != i40e_get_stats_count(netdev) * ETH_GSTRING_LEN,
 		  "stat strings count mismatch!");
 }
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [9e8fb25254f76cb483303d8e9a97ed80a65418fe] Merge branch 'net-l3-l4-functional-tests'
git bisect good 9e8fb25254f76cb483303d8e9a97ed80a65418fe
# bad: [05bb520376af2c5146d3c44832c22ec3bb54d778] Merge branch '40GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue
git bisect bad 05bb520376af2c5146d3c44832c22ec3bb54d778
# good: [c4ed52538cd012bd9dfe97beda6802454d367e70] Merge branch 'drop_monitor-Various-improvements-and-cleanups'
git bisect good c4ed52538cd012bd9dfe97beda6802454d367e70
# good: [fb1b775a247ee8d846152841f780eba6cb71bcfc] net: sched: add skbedit of ptype action to hardware IR
git bisect good fb1b775a247ee8d846152841f780eba6cb71bcfc
# good: [ef68de56c7ad6f708bee8db5e08b83013083e757] Merge branch 'Support-tunnels-over-VLAN-in-NFP'
git bisect good ef68de56c7ad6f708bee8db5e08b83013083e757
# good: [0969402fd5dd57268bb7547d7e5ece8fcd81157d] i40e: Update visual effect for advertised FEC mode.
git bisect good 0969402fd5dd57268bb7547d7e5ece8fcd81157d
# bad: [b27223591606f59c1f7c042b8e3dc74affadf492] i40e: verify string count matches even on early return
git bisect bad b27223591606f59c1f7c042b8e3dc74affadf492
# good: [b603f9dc20afed5e4666642c8713cafb94a23058] i40e: Log info when PF is entering and leaving Allmulti mode.
git bisect good b603f9dc20afed5e4666642c8713cafb94a23058
# first bad commit: [b27223591606f59c1f7c042b8e3dc74affadf492] i40e: verify string count matches even on early return
-------------------------------------------------------------------------------
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
