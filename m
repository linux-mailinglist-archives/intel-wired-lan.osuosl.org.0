Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7F16A146B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 01:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2435060E33;
	Fri, 24 Feb 2023 00:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2435060E33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677199605;
	bh=+qkkDt0VakYDllAwspmha2W/iMrFUfe8+D/PaG4/1p4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v0rexfzAC90smzmtoSrhCgTV5kAp4QFjNBBGwmyizOWviCRyRfDuaR9NRPNXA7BCz
	 sqUMHfTCSrHxF8hcAP9f4RD49lnfrGM5j8KK/Dfc2t/aNv0fL/dnO//JAwfjhECEcb
	 sJavpU6PwVKhVDnRSmu1SxDS6VYOrNfWNjz0FOpoOH5IMz4cl+NVofTawVhJTr5/PC
	 kBgre5sbSIicsGzd+gv8oJvoDsDxOSHrZycmnhdRXca7Wg8Ed8mAb4mK05DTUqz9gw
	 pDr+Kmb1oGGFSANohe3JbI33q48DUtcxy6xtEL7BgmannltgAsUq+nqSDVM9rdIKun
	 jYOlcr+Szfqcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZHBWNl6AXlFr; Fri, 24 Feb 2023 00:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB19360E2B;
	Fri, 24 Feb 2023 00:46:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB19360E2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EACF1BF980
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8D8E4018E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:46:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8D8E4018E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmP6zdWTqJwa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 00:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 935DB40002
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 935DB40002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 00:46:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="321559348"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="321559348"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:46:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="741477890"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="741477890"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:46:35 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 23 Feb 2023 16:46:27 -0800
Message-Id: <20230224004627.2281371-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677199597; x=1708735597;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wjrxFydd26W+W6S34yIVvUMESUfxGjN2yVY+QSRvww8=;
 b=EunmdeD88lfoK6GGTfMdEC//dKVTwgQRw/Bz4+priExc5xvZt6lh7BMN
 kq6JAKTJq/wIi9vMhvllhlXFlI0pD2J0QeDDTFMMnn0l1iSshxBg+TiHM
 cz0bd57edXSnW04VDzdFzqRZFTKIBn/MUV0I37/FpjezF711N1MM6+U4P
 5kV1fCrswguh67Xa8rzGX1CC67CzSzpYBDeMO6NBVB2FmSNtPc+QtLO2M
 X9XW6fd9M8pP585dfbM7Z8tadpn5GCMdU4oU6SWmAu/cbp9IMBUFS0j8C
 5AxaGs/VmoXKVQcwiSEfPqhGz6kaC4phe+qQQrA8QdzuNxRbxSAOmorqy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EunmdeD8
Subject: [Intel-wired-lan] [PATCH intel-net v2] ice: remove unnecessary
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
driver is enabled when GNSS is enabled.

The complaint from Olek about the original IS_REACHABLE was due to the
required IS_REACHABLE checks throughout the ice driver code and the fact
that ice_gnss.c was compiled regardless of GNSS support.

This can be fixed in the Makefile by using ice-$(CONFIG_GNSS) += ice_gnss.o

In this case, if GNSS = m and ICE = y, we can result in some confusing
behavior where GNSS support is not enabled because its not built in. See
[4].

To disallow this, have CONFIG_ICE depend on GNSS || GNSS = n. This ensures
that we cannot enable CONFIG_ICE as builtin while GNSS is a module.

Drop CONFIG_ICE_GNSS, and replace the IS_ENABLED checks for it with
checks for GNSS. Update the Makefile to add the ice_gnss.o object based on
CONFIG_GNSS.

This works to ensure that GNSS support can optionally be enabled, doesn't
have an unnnecessary extra config option, and has Kbuild enforce the
dependency such that you can't accidentally enable GNSS as a module and ICE
as a builtin.

[1] https://lore.kernel.org/intel-wired-lan/20221019095603.44825-1-arkadiusz.kubalewski@intel.com/
[2] https://lore.kernel.org/intel-wired-lan/20221028165706.96849-1-alexandr.lobakin@intel.com/
[3] https://lore.kernel.org/all/CAHk-=wi_410KZqHwF-WL5U7QYxnpHHHNP-3xL=g_y89XnKc-uw@mail.gmail.com/
[4] https://lore.kernel.org/netdev/20230223161309.0e439c5f@kernel.org/

Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Fixes: c7ef8221ca7d ("ice: use GNSS subsystem instead of TTY")
Cc: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: Alexander Lobakin <alexandr.lobakin@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
---
Changes since v1:
* Added "depends on GNSS || GNSS = n"
* Use IS_ENABLED instead of IS_REACHABLE in ice_gnss.h
* Dropped the Acked-by's since I've changed the approach

 drivers/net/ethernet/intel/Kconfig        | 4 +---
 drivers/net/ethernet/intel/ice/Makefile   | 2 +-
 drivers/net/ethernet/intel/ice/ice_gnss.h | 4 ++--
 3 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index a3c84bf05e44..c18c3b373846 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -296,6 +296,7 @@ config ICE
 	default n
 	depends on PCI_MSI
 	depends on PTP_1588_CLOCK_OPTIONAL
+	depends on GNSS || GNSS = n
 	select AUXILIARY_BUS
 	select DIMLIB
 	select NET_DEVLINK
@@ -337,9 +338,6 @@ config ICE_HWTS
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
index 31db0701d13f..4d49e5b0b4b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -45,7 +45,7 @@ struct gnss_serial {
 	struct list_head queue;
 };
 
-#if IS_ENABLED(CONFIG_ICE_GNSS)
+#if IS_ENABLED(CONFIG_GNSS)
 void ice_gnss_init(struct ice_pf *pf);
 void ice_gnss_exit(struct ice_pf *pf);
 bool ice_gnss_is_gps_present(struct ice_hw *hw);
@@ -56,5 +56,5 @@ static inline bool ice_gnss_is_gps_present(struct ice_hw *hw)
 {
 	return false;
 }
-#endif /* IS_ENABLED(CONFIG_ICE_GNSS) */
+#endif /* IS_ENABLED(CONFIG_GNSS) */
 #endif /* _ICE_GNSS_H_ */

base-commit: 5b7c4cabbb65f5c469464da6c5f614cbd7f730f2
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
