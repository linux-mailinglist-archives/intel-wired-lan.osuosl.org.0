Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5318940375
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 03:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E928A40488;
	Tue, 30 Jul 2024 01:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1l2xZyooE-E; Tue, 30 Jul 2024 01:23:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A96AE40AC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722302608;
	bh=ffHrsXCKF6pCoeXrddG7azxfithMbtz7zZ/sAzIdVJY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AXOOWkaqqBxC4lq905uSS0pgPC87X5L7GvuTM7C1O4aY3NlYr3CSeNluYq3jshibH
	 DCew0tZn+QYl7qsl1v8eqxTMxCP4vjV/yl/9ZiHyvWu5U9WGfdnrKWuQUMSNU1KFin
	 fQMhFEaGGiZho81mJH69gV++oxgSoa91kjUwTLG7AIHtrUerBcOMfbiDRGm/xYTj3u
	 15BN53W8ztItlwL+VbxiSeJQ9htdppRVKz67wupxMqHr564bnUMIXzftanQMBK/dss
	 j/jyMB2gPhkKTd4rFySOaxByRdxCG2VEDWjJtW1oPD8x86k3R4r1xUYaRsTQBj8kPC
	 cvrJ79XJ6B4KQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A96AE40AC4;
	Tue, 30 Jul 2024 01:23:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CEDD1BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17A6240AB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVa6KXdSijTy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 01:23:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E142D40488
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E142D40488
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E142D40488
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 01:23:25 +0000 (UTC)
X-CSE-ConnectionGUID: TOgAMU5qTQeTmV61IrMLHQ==
X-CSE-MsgGUID: zNtmfkXNScmw/vmo2B6RFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20242196"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="20242196"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 18:23:03 -0700
X-CSE-ConnectionGUID: rHulb508S/qhLPcwNOHwVA==
X-CSE-MsgGUID: SjJyrrYHSca9cyPX/legFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="54079212"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by orviesa010.jf.intel.com with ESMTP; 29 Jul 2024 18:22:58 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Sasha Neftin <sasha.neftin@intel.com>
Date: Tue, 30 Jul 2024 09:22:12 +0800
Message-Id: <20240730012212.775814-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722302605; x=1753838605;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mb631k4kfETjEK1XHoh+eCWwPDdm+0gqMj8RFvnugw4=;
 b=JQGxby/7gz5Un8uiy75G3eqSMe56pUh5oiODCUVDHGYbkxBwVApX88i4
 ek3L0glL8XYfy//Ot2YWxYhKexTbwUqHe/uRXVBRgKtTuTL/v57JH2eEE
 /yI1LFfgFjoowQ9bSJBN2SOmzQ2eREF1e7Nm5hViW80praIGrvv0eUH4/
 Gi4VqPZZONsD2+vEEacx63KQrIiy+XRRtHrS87U38fDWJ+irYm9/YIaPB
 mru7Ty7sQKEPAXUWAacQ/G6LfkQqz2wSW3wRbwE9I4Jqf4lNl/GLzOqap
 rydxtrv9a99j7GfxGuAdgKHctdAv74RKeNtGOJoC/r2J2royshH6kCKnM
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JQGxby/7
Subject: [Intel-wired-lan] [PATCH iwl-next,
 v1 0/3] Add Default Rx Queue Setting for igc driver
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set introduces the support to configure default Rx queue during runtime.
A new sysfs attribute "default_rx_queue" has been added, allowing users to check
and modify the default Rx queue.

This patch set is tested on two back-to-back connected i226 on Intel ADL-S systems.

Test Steps and expected results:
1. Check default_rx_queue index:
   @DUT: $ cat /sys/devices/pci0000:00/0000:00:1c.0/0000:02:00.0/default_rx_queue
         0

2. Check statistic of Rx packets:
   @DUT: $ ethtool -S enp2s0 | grep rx.*packets
         rx_packets: 0
         rx_queue_0_packets: 0
         rx_queue_1_packets: 0
         rx_queue_2_packets: 0
         rx_queue_3_packets: 0

3. Send 10 ARP packets:
   @LinkPartner: $ arping -c 10 -I enp170s0 169.254.1.10
                 ARPING 169.254.1.10 from 169.254.1.2 enp170s0
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.725ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.649ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.577ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.611ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.706ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.644ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.648ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.601ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.628ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.641ms
                 Sent 10 probes (1 broadcast(s))
                 Received 10 response(s)

4. Check statistic of Rx packets to make sure packets is received by default queue (RxQ0):
   @DUT: $ ethtool -S enp2s0 | grep rx.*packets
         rx_packets: 10
         rx_queue_0_packets: 10
         rx_queue_1_packets: 0
         rx_queue_2_packets: 0
         rx_queue_3_packets: 0

5. Change default_rx_queue index to Queue 3:
   @DUT: $ echo 3 | sudo tee /sys/devices/pci0000:00/0000:00:1c.0/0000:02:00.0/default_rx_queue
         3
   @DUT: $ cat /sys/devices/pci0000:00/0000:00:1c.0/0000:02:00.0/default_rx_queue
         3

6. Send 10 ARP packets:
   @LinkPartner: $ arping -c 10 -I enp170s0 169.254.1.10
                 ARPING 169.254.1.10 from 169.254.1.2 enp170s0
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.653ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.652ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.653ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.649ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.600ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.698ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.694ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.678ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.609ms
                 Unicast reply from 169.254.1.10 [00:A0:C9:00:00:00]  0.634ms
                 Sent 10 probes (1 broadcast(s))
                 Received 10 response(s)

7. Check statistic of Rx packets to make sure packets is received by new default queue (RxQ3):
   @DUT: $ ethtool -S enp2s0 | grep rx.*packets
         rx_packets: 20
         rx_queue_0_packets: 10
         rx_queue_1_packets: 0
         rx_queue_2_packets: 0
         rx_queue_3_packets: 10

Blanco Alcaine Hector (3):
  igc: Add documentation
  igc: Add default Rx queue configuration via sysfs
  igc: Add default Rx Queue into documentation

 .../device_drivers/ethernet/index.rst         |   1 +
 .../device_drivers/ethernet/intel/igc.rst     | 103 ++++++++++++
 drivers/net/ethernet/intel/igc/Makefile       |   3 +-
 drivers/net/ethernet/intel/igc/igc_main.c     |   6 +
 drivers/net/ethernet/intel/igc/igc_regs.h     |   6 +
 drivers/net/ethernet/intel/igc/igc_sysfs.c    | 156 ++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_sysfs.h    |  10 ++
 7 files changed, 284 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/networking/device_drivers/ethernet/intel/igc.rst
 create mode 100644 drivers/net/ethernet/intel/igc/igc_sysfs.c
 create mode 100644 drivers/net/ethernet/intel/igc/igc_sysfs.h

-- 
2.34.1

