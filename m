Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04517084B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 17:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C13B42AD1;
	Thu, 18 May 2023 15:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C13B42AD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684422728;
	bh=579f/5ylioPDB2cfQ8+H9pIuz3GdcfZWh/WWxuFCTxA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RONjKl30ilY9TO4shqdq15Rebxw6Dz9ZIz9gyajczfOQiCt+6Ha2LOnUACBkVb0vt
	 97KpFaifDC9IIJ4kDHgaqlr/EApJjg4s8N46FGUo14PXi68Sm2ldaRPGE1gtb9CIpR
	 DR/4Ue3QZ//GfZfHMqjBwVQulHQA9iiQeO2L/E7HWZSMMqEVr+v9uGCGKh4LVixjmv
	 BT9xack4I+6yUYzS+LTO902bgssvs6IoxfDJMVXBoM305gFEaC3PIoTufWmdy/bKeU
	 3FTNeK6smwLMoKtZslxvhtbnHLQcHps00jbmyDCj0MySx35YmQTGSFBmEIostagg4f
	 4N5ApqdUY5W2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x7Mchvn7e_Gt; Thu, 18 May 2023 15:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C10242995;
	Thu, 18 May 2023 15:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C10242995
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA2321BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:28:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF9B9402A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF9B9402A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QHJvFIYRxmdO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 07:28:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCF324028D
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCF324028D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 07:27:59 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 98e67ed59e1d1-253504c84aeso910806a91.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 00:27:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684394879; x=1686986879;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B0KPsRgZkrYOqM2qiaYRx/3vo+OhEcW+JKXrMqHHRi8=;
 b=GkcBcLZArNlCw9l8w15YotpCe4iKNq+tbXPV4k2vwI785SH8z352ZKiqA8sdOTTPpJ
 7eI5Jan8Ic67uA/FXnCs5yUcOpzb30X00x6uiS0HKLQ1SMtsva3ii+jFGDCUGXCvHWUm
 hasQTsJs8UbSH/PXE7QF6PhN5oH0Z3UfkBvmQbzvPh71KOFCnpAyRXkXrMkDvpTSeiOH
 xFhR1A7e+oX0ypSNpgHd+Y4nSe2qnjxPxPUPdkA85XzafXYgFXyH4PRu5bG8lotpEWNJ
 ZKuvJcsE9dhCkDxoknbv4OXK70ttSbT6ZmYOwlHEz5roy0Scec3uAXdf2u7bWIiOZRIl
 VfTg==
X-Gm-Message-State: AC+VfDxn5z9CUP7t6UuPQvtcm9kAGfRZeKW7JcltkmcjqPHhTfv0mS1G
 78SyjpQ3EXeH9Yp+uxuCn1x0nw==
X-Google-Smtp-Source: ACHHUZ6kn57EUT67NPJLEbc98mcDOFCe/2x+n9xYSKDeif2fpTykIqyWRQD5H+dOSl2BwPpI0wT93A==
X-Received: by 2002:a17:90a:9f8d:b0:24e:4c8:3ae5 with SMTP id
 o13-20020a17090a9f8d00b0024e04c83ae5mr1852042pjp.28.1684394879222; 
 Thu, 18 May 2023 00:27:59 -0700 (PDT)
Received: from localhost (21.160.199.104.bc.googleusercontent.com.
 [104.199.160.21]) by smtp.gmail.com with UTF8SMTPSA id
 g8-20020a17090adb0800b0025315f7fef7sm2788601pjv.33.2023.05.18.00.27.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 May 2023 00:27:58 -0700 (PDT)
From: Ying Hsu <yinghsu@chromium.org>
To: netdev@vger.kernel.org
Date: Thu, 18 May 2023 07:26:57 +0000
Message-ID: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 18 May 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684394879; x=1686986879;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=B0KPsRgZkrYOqM2qiaYRx/3vo+OhEcW+JKXrMqHHRi8=;
 b=KifR2KEG+YkazDWDu+y0p8UbuCC4weUt9xdIUdiL/2Fp9jPiPoORyHkQElgFNju9WQ
 6dyXWMSpb/owFxTwZNx3zadPTdMxpuQ4YyO7/MON7qezouH8njZwDuzJisTPkP9Nbivm
 e52wQv4hQcph/C9JTH7yu67pJMbaDRXAX02GA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=KifR2KEG
Subject: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise removal
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
Cc: grundler@chromium.org, intel-wired-lan@lists.osuosl.org,
 Ying Hsu <yinghsu@chromium.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In a setup where a Thunderbolt hub connects to Ethernet and a display
through USB Type-C, users may experience a hung task timeout when they
remove the cable between the PC and the Thunderbolt hub.
This is because the igb_down function is called multiple times when
the Thunderbolt hub is unplugged. For example, the igb_io_error_detected
triggers the first call, and the igb_remove triggers the second call.
The second call to igb_down will block at napi_synchronize.
Here's the call trace:
    __schedule+0x3b0/0xddb
    ? __mod_timer+0x164/0x5d3
    schedule+0x44/0xa8
    schedule_timeout+0xb2/0x2a4
    ? run_local_timers+0x4e/0x4e
    msleep+0x31/0x38
    igb_down+0x12c/0x22a [igb 6615058754948bfde0bf01429257eb59f13030d4]
    __igb_close+0x6f/0x9c [igb 6615058754948bfde0bf01429257eb59f13030d4]
    igb_close+0x23/0x2b [igb 6615058754948bfde0bf01429257eb59f13030d4]
    __dev_close_many+0x95/0xec
    dev_close_many+0x6e/0x103
    unregister_netdevice_many+0x105/0x5b1
    unregister_netdevice_queue+0xc2/0x10d
    unregister_netdev+0x1c/0x23
    igb_remove+0xa7/0x11c [igb 6615058754948bfde0bf01429257eb59f13030d4]
    pci_device_remove+0x3f/0x9c
    device_release_driver_internal+0xfe/0x1b4
    pci_stop_bus_device+0x5b/0x7f
    pci_stop_bus_device+0x30/0x7f
    pci_stop_bus_device+0x30/0x7f
    pci_stop_and_remove_bus_device+0x12/0x19
    pciehp_unconfigure_device+0x76/0xe9
    pciehp_disable_slot+0x6e/0x131
    pciehp_handle_presence_or_link_change+0x7a/0x3f7
    pciehp_ist+0xbe/0x194
    irq_thread_fn+0x22/0x4d
    ? irq_thread+0x1fd/0x1fd
    irq_thread+0x17b/0x1fd
    ? irq_forced_thread_fn+0x5f/0x5f
    kthread+0x142/0x153
    ? __irq_get_irqchip_state+0x46/0x46
    ? kthread_associate_blkcg+0x71/0x71
    ret_from_fork+0x1f/0x30

In this case, igb_io_error_detected detaches the network interface
and requests a PCIE slot reset, however, the PCIE reset callback is
not being invoked and thus the Ethernet connection breaks down.
As the PCIE error in this case is a non-fatal one, requesting a
slot reset can be avoided.
This patch fixes the task hung issue and preserves Ethernet
connection by ignoring non-fatal PCIE errors.

Signed-off-by: Ying Hsu <yinghsu@chromium.org>
---
This commit has been tested on a HP Elite Dragonfly Chromebook and
a Caldigit TS3+ Thunderbolt hub. The Ethernet driver for the hub
is igb. Non-fatal PCIE errors happen when users hot-plug the cables
connected to the chromebook or to the external display.

 drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 58872a4c2540..a8b217368ca1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9581,6 +9581,11 @@ static pci_ers_result_t igb_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
+	if (state == pci_channel_io_normal) {
+		dev_warn(&pdev->dev, "Non-correctable non-fatal error reported.\n");
+		return PCI_ERS_RESULT_CAN_RECOVER;
+	}
+
 	netif_device_detach(netdev);
 
 	if (state == pci_channel_io_perm_failure)
-- 
2.40.1.606.ga4b1b128d6-goog

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
