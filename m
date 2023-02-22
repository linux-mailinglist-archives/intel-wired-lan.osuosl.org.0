Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC369FE94
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 23:36:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C48026176B;
	Wed, 22 Feb 2023 22:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C48026176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677105371;
	bh=CGmfkj7NfCybmRRevDZKLELECoPRJt2W3Tz78vRJxWg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rtqMYRe5PAYSK2hhm8TEum1/68mBDMAz1Yd7DNKKSxwWVfAV2/Nyzd+06ninOrluG
	 SYbOZOfu+Hhy5Vz4cNOlgyfYr8WNipQLahbNxeXLjgcjC5PVZuhIEAHmJmJU7qCbuj
	 yYCnhwM2lkhtgGikAfnPnGLeRs4K3VGBIAd9crWPzTJ5bp6rYV3ijPtgPZlRWJZTlI
	 eADUYDrCPEzFwo0YXlBXCX0pk1k+ExikWjlRBJ1E/f47BCN/cgoduG4WiWNk/0CGIk
	 drkvo6PvuUFQWfmWTcK4yyde+sPTkk42B6y5tBLqBjzlzGvxcvPtR1ZDmWNy880oJP
	 AzvYEQgsGEdcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFbwqr6dkOCn; Wed, 22 Feb 2023 22:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 997496175E;
	Wed, 22 Feb 2023 22:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 997496175E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6FF61BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 22:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C06E882087
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 22:36:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C06E882087
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EeJxhbDBQuFS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 22:36:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 900C28207C
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 900C28207C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 22:36:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="419281493"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="419281493"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 14:36:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917726227"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="917726227"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 14:36:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 14:35:58 -0800
Message-Id: <20230222223558.2328428-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677105364; x=1708641364;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kZsSD2z2oG5ohf3bCceNLITp54qfXfnD7f1D0PHzPck=;
 b=NhTAj2jLur1/EufPrZkms5h6CnvONSuAvWV8quf18fjZdq08AQ4qSjgr
 Lopp/VpAxRWHiD9bcdB3fsShC0fmaZ5tpQ3qIRmXJ0C0MoO6BQFomrKMr
 YfmfhrhxLbWtaeIvHOK78kuzPYJrnsjFYWT79s7S2aqbb5c5P/1dZ89Lh
 o/9lCnswZOSitmEqI7nPbgaHjxF/Eo7NMd8bCK22MlBXwWbqCv87hmIDV
 cZws2uWSfFoPYKaJJlOQJJigluXLbgtNU+kvxbYz4VEtry7EbokChOC2n
 fHIRgdzttT9fBMKmUXC4qOGZwRKzYNgmrwlLP6zGQRHna2ITASzzhzukn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NhTAj2jL
Subject: [Intel-wired-lan] [intel-net] ice: remove unnecessary
 CONFIG_ICE_GNSS
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
Cc: netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CONFIG_ICE_GNSS was added by commit c7ef8221ca7d ("ice: use GNSS subsystem
instead of TTY") as a way to allow the ice driver to optionally support
GNSS features without forcing a dependency on CONFIG_GNSS.

The original implementation of that commit at [1] used IS_REACHABLE. This
was rejected by Olek at [2] with the suggested implementation of
CONFIG_ICE_GNSS.

Eventually after merging, Linus reported a .config which had
CONFIG_ICE_GNSS = y when both GNSS = n and ICE = n. This confused him and
he felt that the config option was not useful, and commented about it at
[3].

CONFIG_ICE_GNSS is defined to y whenever GNSS = ICE. This results in it
being set in cases where both options are not enabled.

The goal of CONFIG_ICE_GNSS is to ensure that the GNSS support in the ice
driver is enabled when GNSS is enabled, while ensuring that ICE = y and
GNSS = m don't break.

The complaint from Olek about the original IS_REACHABLE was due to the
required IS_REACHABLE checks throughout the ice driver code and the fact
that ice_gnss.c was compiled regardless of GNSS support.

This can be fixed in the Makefile by using ice-$(CONFIG_GNSS) += ice_gnss.o

If GNSS = m, then this will add ice_gnss.o to ice-m, which will be ignored
if we're not compiling ice as a module, and thus we will skip compiling
GNSS code just as with CONFIG_ICE_GNSS.

Drop CONFIG_ICE_GNSS, and replace the IS_ENABLED checks for it with
IS_REACHABLE checks for GNSS. Update the Makefile to add the ice_gnss.o
object based on CONFIG_GNSS.

This works on my system to ensure that GNSS support is optionally included
without any need for additional config options, and it works correctly in
at least the following configurations:

1. CONFIG_ICE = m, CONFIG_GNSS = m
2. CONFIG_ICE = y, CONFIG_GNSS = m
3. CONFIG_ICE = m, CONFIG_GNSS = y

This solution should resolve the complains Olek made regarding compilation
of ice_gnss.o and additional unnecessary IS_REACHABLE checks, while also
avoiding extra config flags.

[1] https://lore.kernel.org/intel-wired-lan/20221019095603.44825-1-arkadiusz.kubalewski@intel.com/
[2] https://lore.kernel.org/intel-wired-lan/20221028165706.96849-1-alexandr.lobakin@intel.com/
[3] https://lore.kernel.org/all/CAHk-=wi_410KZqHwF-WL5U7QYxnpHHHNP-3xL=g_y89XnKc-uw@mail.gmail.com/

Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Fixes: c7ef8221ca7d ("ice: use GNSS subsystem instead of TTY")
Acked-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Acked-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
---

I'm sending to both Intel-wired-lan and netdev lists since this was
discussed publicly on the netdev list. I'm not sure how we want to queue it
up, so I currently have it tagged as intel-net to go through Tony's IWL
tree. I'm happy however it gets pulled. I believe this is the best solution
as the total number of #ifdefs is the same as with CONFIG_ICE_GNSS, as is
the Makefile line. As far as I can tell the Kbuild just does the right thing
here so there is no need for an additional flag.

I'm happy to respin with a "depends" check if we think the flag has other
value.

 drivers/net/ethernet/intel/Kconfig        | 3 ---
 drivers/net/ethernet/intel/ice/Makefile   | 2 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h | 4 ++--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index a3c84bf05e44..3facb55b7161 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -337,9 +337,6 @@ config ICE_HWTS
 	  the PTP clock driver precise cross-timestamp ioctl
 	  (PTP_SYS_OFFSET_PRECISE).
 
-config ICE_GNSS
-	def_bool GNSS = y || GNSS = ICE
-
 config FM10K
 	tristate "Intel(R) FM10000 Ethernet Switch Host Interface Support"
 	default n
diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index f269952d207d..5d89392f969b 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -47,4 +47,4 @@ ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
 ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
-ice-$(CONFIG_ICE_GNSS) += ice_gnss.o
+ice-$(CONFIG_GNSS) += ice_gnss.o
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 31db0701d13f..d453987492f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -45,7 +45,7 @@ struct gnss_serial {
 	struct list_head queue;
 };
 
-#if IS_ENABLED(CONFIG_ICE_GNSS)
+#if IS_REACHABLE(CONFIG_GNSS)
 void ice_gnss_init(struct ice_pf *pf);
 void ice_gnss_exit(struct ice_pf *pf);
 bool ice_gnss_is_gps_present(struct ice_hw *hw);
@@ -56,5 +56,5 @@ static inline bool ice_gnss_is_gps_present(struct ice_hw *hw)
 {
 	return false;
 }
-#endif /* IS_ENABLED(CONFIG_ICE_GNSS) */
+#endif /* IS_REACHABLE(CONFIG_GNSS) */
 #endif /* _ICE_GNSS_H_ */

base-commit: 5b7c4cabbb65f5c469464da6c5f614cbd7f730f2
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
