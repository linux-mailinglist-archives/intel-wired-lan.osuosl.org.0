Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E40174FE184
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 15:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A8704167A;
	Tue, 12 Apr 2022 13:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdVTR6fI08pe; Tue, 12 Apr 2022 13:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEF454167E;
	Tue, 12 Apr 2022 13:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42E591BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F3D340A95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6O-De6xlAqw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 10:28:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEA6E403A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 10:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649759290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CI/supGVxEWMyhUXNHAcGDlAX2GlLgQ43ophBjewddA=;
 b=F9XW490s99Srkz9lVDkKJ8zn5OzKFUmNPLLpoCV9+pWrnI//YBCOMir1p9Ym8jQPz4V8G2
 kkdyXC1FlMd+t8DToRzHtnC+chT1WD/HvmVn4Dlh3CG01HSBRrB02ctNnV2A2CrOo2XKH5
 s/SZql8oFzw3tdWsoszialtZAFoceig=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-259-7ujAnAPBPiaVaavGGEhO7Q-1; Tue, 12 Apr 2022 06:28:07 -0400
X-MC-Unique: 7ujAnAPBPiaVaavGGEhO7Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD06D3804091;
 Tue, 12 Apr 2022 10:28:06 +0000 (UTC)
Received: from horn.redhat.com (unknown [10.40.193.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABA94145BA42;
 Tue, 12 Apr 2022 10:28:04 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 12:27:53 +0200
Message-Id: <20220412102753.670867-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mailman-Approved-At: Tue, 12 Apr 2022 13:05:27 +0000
Subject: [Intel-wired-lan] [PATCH] ice: wait for EMP reset after firmware
 flash
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
Cc: ivecera@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We need to wait for EMP reset after firmware flash.
Code was extracted from OOT driver and without this wait fw_activate let
card in inconsistent state recoverable only by second flash/activate

Reproducer:
[root@host ~]# devlink dev flash pci/0000:ca:00.0 file E810_XXVDA4_FH_O_SEC_FW_1p6p1p9_NVM_3p10_PLDMoMCTP_0.11_8000AD7B.bin
Preparing to flash
[fw.mgmt] Erasing
[fw.mgmt] Erasing done
[fw.mgmt] Flashing 100%
[fw.mgmt] Flashing done 100%
[fw.undi] Erasing
[fw.undi] Erasing done
[fw.undi] Flashing 100%
[fw.undi] Flashing done 100%
[fw.netlist] Erasing
[fw.netlist] Erasing done
[fw.netlist] Flashing 100%
[fw.netlist] Flashing done 100%
Activate new firmware by devlink reload
[root@host ~]# devlink dev reload pci/0000:ca:00.0 action fw_activate
reload_actions_performed:
    fw_activate
[root@host ~]# ip link show ens7f0
71: ens7f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN mode DEFAULT group default qlen 1000
    link/ether b4:96:91:dc:72:e0 brd ff:ff:ff:ff:ff:ff
    altname enp202s0f0

dmesg after flash:
[   55.120788] ice: Copyright (c) 2018, Intel Corporation.
[   55.274734] ice 0000:ca:00.0: Get PHY capabilities failed status = -5, continuing anyway
[   55.569797] ice 0000:ca:00.0: The DDP package was successfully loaded: ICE OS Default Package version 1.3.28.0
[   55.603629] ice 0000:ca:00.0: Get PHY capability failed.
[   55.608951] ice 0000:ca:00.0: ice_init_nvm_phy_type failed: -5
[   55.647348] ice 0000:ca:00.0: PTP init successful
[   55.675536] ice 0000:ca:00.0: DCB is enabled in the hardware, max number of TCs supported on this port are 8
[   55.685365] ice 0000:ca:00.0: FW LLDP is disabled, DCBx/LLDP in SW mode.
[   55.692179] ice 0000:ca:00.0: Commit DCB Configuration to the hardware
[   55.701382] ice 0000:ca:00.0: 126.024 Gb/s available PCIe bandwidth, limited by 16.0 GT/s PCIe x8 link at 0000:c9:02.0 (capable of 252.048 Gb/s with 16.0 GT/s PCIe x16 link)
Reboot don't help, only second flash/activate with OOT or patched driver put card back in consistent state

After patch:
[root@host ~]# devlink dev flash pci/0000:ca:00.0 file E810_XXVDA4_FH_O_SEC_FW_1p6p1p9_NVM_3p10_PLDMoMCTP_0.11_8000AD7B.bin
Preparing to flash
[fw.mgmt] Erasing
[fw.mgmt] Erasing done
[fw.mgmt] Flashing 100%
[fw.mgmt] Flashing done 100%
[fw.undi] Erasing
[fw.undi] Erasing done
[fw.undi] Flashing 100%
[fw.undi] Flashing done 100%
[fw.netlist] Erasing
[fw.netlist] Erasing done
[fw.netlist] Flashing 100%
[fw.netlist] Flashing done 100%
Activate new firmware by devlink reload
[root@host ~]# devlink dev reload pci/0000:ca:00.0 action fw_activate
reload_actions_performed:
    fw_activate
[root@host ~]# ip link show ens7f0
19: ens7f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether b4:96:91:dc:72:e0 brd ff:ff:ff:ff:ff:ff
    altname enp202s0f0

Fixes: 399e27dbbd9e94 ("ice: support immediate firmware activation via devlink reload")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d768925785ca79..90ea2203cdc763 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6931,12 +6931,15 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	dev_dbg(dev, "rebuilding PF after reset_type=%d\n", reset_type);
 
+#define ICE_EMP_RESET_SLEEP 5000
 	if (reset_type == ICE_RESET_EMPR) {
 		/* If an EMP reset has occurred, any previously pending flash
 		 * update will have completed. We no longer know whether or
 		 * not the NVM update EMP reset is restricted.
 		 */
 		pf->fw_emp_reset_disabled = false;
+
+		msleep(ICE_EMP_RESET_SLEEP);
 	}
 
 	err = ice_init_all_ctrlq(hw);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
