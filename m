Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B660BBE0BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 14:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3FE960E85;
	Mon,  6 Oct 2025 12:37:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6hLT1v3CcKX9; Mon,  6 Oct 2025 12:37:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D202061309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759754278;
	bh=qs5ytD45HWUpJstnCcUiKnjWzlVtUweTMeMtiLibvB4=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UqabM4nFPkbFyHaAkSK5L1b+ut2DGX4xJJSh38DlMr8SpxFMlu7sDXJdY34XFIxEF
	 A5/4GRmFBDsqkle9sgnOn98uExs2fL724lT5vNIccIpSTCpCTEJOum6jNiXcq1iO3f
	 tWOTy238oNlOMe4Avh4F8GP5I0PER4yh5oREw81YrwN1Z05QsMRG7vf2DNhDkfqLfF
	 3hZePzezwQyluNba3zai29UCR7SjSILLFdJPewE3n/HfsC9u/4+YIrYiAxTlLZ4pp/
	 +0bUpyj056MexVHHfe0VjeyKDwSZr6SfantfwrNSULMgJsHMXSWRG5YAOpgmM281EJ
	 BPKoIecccQA9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D202061309;
	Mon,  6 Oct 2025 12:37:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DA7AE909
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7CC2612ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bna9APHASdU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 12:37:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.83.148.184;
 helo=pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=367ca2993=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F144C61133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F144C61133
Received: from pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.83.148.184])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F144C61133
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 12:37:56 +0000 (UTC)
X-CSE-ConnectionGUID: hDdk2/oKRt2Am79RCwhBLw==
X-CSE-MsgGUID: R9vVZYuXSyKu/tHZEdlnYA==
X-IronPort-AV: E=Sophos;i="6.18,319,1751241600"; 
   d="scan'208";a="4169716"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-014.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2025 12:37:54 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.38.20:9413]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.2.125:2525]
 with esmtp (Farcaster)
 id 1d31a40f-eb9c-4f9f-bbb1-db87bf5b883f; Mon, 6 Oct 2025 12:37:54 +0000 (UTC)
X-Farcaster-Flow-ID: 1d31a40f-eb9c-4f9f-bbb1-db87bf5b883f
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:37:53 +0000
Received: from b0be8375a521.amazon.com (10.37.244.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Mon, 6 Oct 2025 12:37:51 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>, "Jacob
 Keller" <jacob.e.keller@intel.com>, <kohei.enju@gmail.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Mon, 6 Oct 2025 21:35:20 +0900
Message-ID: <20251006123741.43462-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.11]
X-ClientProxiedBy: EX19D044UWB001.ant.amazon.com (10.13.139.171) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1759754277; x=1791290277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qs5ytD45HWUpJstnCcUiKnjWzlVtUweTMeMtiLibvB4=;
 b=P6MgjLzKxh9Py7WwHLHiZWPo6CiZA43QQDfJlvPSzbio/a0inuUJqXSe
 Ti7Ihy6A/fBjlmWeO7nE9uKz1OAKUyJgPQtU2VcenHHztI9AO3t+dbHi7
 10jkiK5xs4jOJm8uaC4qSjZb44jsisuZPODyA21rgAC9lttu3KfmvyiAo
 uOhUVrpfVB9ZQdxIx2oDRNnGxWDqgX1JxeZ4yuHnQfDHcC+97FWRQK9J+
 nZawlm9Vv+Sr0iVJehNBBAMaCQ/iK+kG54Fch4x/Vh2le4HbGT4FIJqw3
 JOVYGGK+vi5UXHbg9KODcY55gQwqlXqNAmq8CYJ7wH50QO+3BL7m8fyx9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=P6MgjLzK
Subject: [Intel-wired-lan] [PATCH iwl-net v1 0/3] igb/igc/ixgbe: use
 EOPNOTSUPP instead of ENOTSUPP
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

This series fixes inconsistent errno usage in igb/igc/ixgbe. The drivers
return -ENOTSUPP instead of -EOPNOTSUPP in specific ethtool and PTP
functions, therefore userland programs would get "Unknown error 524".

Use -EOPNOTSUPP instead of -ENOTSUPP to fix the issue.

This series covers all incorrect usage of ENOTSUPP in Intel ethernet
drivers except the one in iavf, which should be targeted for iwl-next in
a separate series since it's just a comment. [1]

For igb and igc, I used a simple reproducer for testing [2] on I350 and
I226-V respectively.
Without this series:
 # strace -e ioctl ./errno-repro
 ioctl(3, SIOCETHTOOL, 0x7ffcde13cec0)   = -1 ENOTSUPP (Unknown error 524)

With this series:
 # strace -e ioctl ./errno-repro
 ioctl(3, SIOCETHTOOL, 0x7ffd69a28c40)   = -1 EOPNOTSUPP (Operation not supported)

For ixgbe, I used the testptp for testing on 82599ES.
Without this series:
 # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
 ioctl(3, PTP_ENABLE_PPS, 0x1)           = -1 ENOTSUPP (Unknown error 524)

With this series:
 # strace -e ioctl ./testptp -d /dev/ptp1 -P 1
 ioctl(3, PTP_ENABLE_PPS, 0x1)           = -1 EOPNOTSUPP (Operation not supported)

[1]
 $ grep -nrI ENOTSUPP .
 ./igc/igc_ethtool.c:813:  return -ENOTSUPP;
 ./igb/igb_ethtool.c:2284: return -ENOTSUPP;
 ./ixgbe/ixgbe_ptp.c:644:  return -ENOTSUPP;
 ./iavf/iavf_main.c:2966:           * if the error isn't -ENOTSUPP

[2]
 #include <sys/ioctl.h>
 #include <net/if.h>
 #include <string.h>
 #include <unistd.h>
 #include <linux/sockios.h>
 #include <linux/ethtool.h>
 
 int main() {
     int sock = socket(AF_INET, SOCK_DGRAM, 0);
     struct ethtool_gstrings gstrings = {};
     struct ifreq ifr;
     int ret;
 
     gstrings.cmd = ETHTOOL_GSTRINGS;
     gstrings.string_set = ETH_SS_WOL_MODES;
 
     ifr.ifr_data = (char*)&gstrings;
     strcpy(ifr.ifr_name, "enp4s0");
 
     ret = ioctl(sock, SIOCETHTOOL, &ifr);
 
     close(sock);
     return ret;
 }

Kohei Enju (3):
  igb: use EOPNOTSUPP instead of ENOTSUPP in igb_get_sset_count()
  igc: use EOPNOTSUPP instead of ENOTSUPP in
    igc_ethtool_get_sset_count()
  ixgbe: use EOPNOTSUPP instead of ENOTSUPP in
    ixgbe_ptp_feature_enable()

 drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.48.1

