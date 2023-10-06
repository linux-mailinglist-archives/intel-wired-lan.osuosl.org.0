Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B02B7BB418
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 11:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E37A83A37;
	Fri,  6 Oct 2023 09:17:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E37A83A37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696583851;
	bh=A+mpf6NSFcfMjjFTzFpgqYR1E2OD9cM5bczcBMHv0Sk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UY6vuCF+IrHS3cCTJdOts66YK8w8XfkiTcnTOsIw74kB3rsm6n+K1ktkhl8ZRqDL9
	 iTeZ0j2NIiC47vi8ur+RiByULO5jWNsigLJ/g43zhoHpmfMGbZBuROQJ15hC3VAMv5
	 obor8IOpn9HSFjyN6sr/ORGxxsl/8TSkV4ega8wOerz17rlDPETR04JmZqfXFCJvAs
	 0crnF2gL2r9hWseRAt9e4N2Pvt4S+9osWbWGnWLBi4JEEIykI3vD+HyPdS0c/Bpp9Y
	 PeAgdSIfQEGw/bFEww84N41c06VGgcueVrT1W9+KjeI5qx31SaTXPJxKpzObb8zjJN
	 Dc+rGdyhA9QMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWLuoyg1mEmd; Fri,  6 Oct 2023 09:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E282D838ED;
	Fri,  6 Oct 2023 09:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E282D838ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D2B641BF36C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 09:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAD7F4051A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 09:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAD7F4051A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6_Z1RisqBa8d for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 09:17:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E9C5403AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 09:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E9C5403AE
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="368792054"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="368792054"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 02:17:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="868276914"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="868276914"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2023 02:17:20 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7D56F36345;
 Fri,  6 Oct 2023 10:17:18 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Oct 2023 05:14:12 -0400
Message-Id: <20231006091412.92156-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696583842; x=1728119842;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GhnObhdwfwqM0XKIYgyPtMRHGdwAaDlIihpQgU3J0HE=;
 b=HYiJuFU6UGS2CeeQeO0xLYUmGeuXBIF8qM2y7hOSEpOMUTuQlvIqnSFs
 X/D4WMay7DJ+VY/lPepQqOxQjSqBsBozZTziYgRvUlo4Sb0E1OJpbkFoq
 hZCFs7z/uPLzvPFOhrGFx/1OONFZed2bVprHyK2OgmGYoI1j7NFSvgAKV
 Fw45Nn4UPdzGkEqTc9sBgrwkQGvhFKiPB17v2VMpYDIxVrC50VKrhzbMh
 t8MCjjcupKYL1dHwzXPES0auihpKBjfSn3sjnb3l5nCi2GN0S17jrZhCA
 JM5ixgKqPnceSe8rIXCVJg3RAaA4pH8kdg7KqFkvHsj4RHIqCi8KDZHbi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HYiJuFU6
Subject: [Intel-wired-lan] [PATCH iwl-net v1] docs: update info about
 representor identification
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
Cc: netdev@vger.kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update the "How are representors identified?" documentation
subchapter. For newer kernels driver developers should use
SET_NETDEV_DEVLINK_PORT instead of ndo_get_devlink_port()
callback.

Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 Documentation/networking/representors.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/representors.rst b/Documentation/networking/representors.rst
index ee1f5cd54496..2d6b7b493fa6 100644
--- a/Documentation/networking/representors.rst
+++ b/Documentation/networking/representors.rst
@@ -162,9 +162,9 @@ How are representors identified?
 The representor netdevice should *not* directly refer to a PCIe device (e.g.
 through ``net_dev->dev.parent`` / ``SET_NETDEV_DEV()``), either of the
 representee or of the switchdev function.
-Instead, it should implement the ``ndo_get_devlink_port()`` netdevice op, which
-the kernel uses to provide the ``phys_switch_id`` and ``phys_port_name`` sysfs
-nodes.  (Some legacy drivers implement ``ndo_get_port_parent_id()`` and
+Instead, driver developers should use ``SET_NETDEV_DEVLINK_PORT`` macro to
+assign devlink port instance to a netdevice before it registers the netdevice.
+(Some legacy drivers implement ``ndo_get_port_parent_id()`` and
 ``ndo_get_phys_port_name()`` directly, but this is deprecated.)  See
 :ref:`Documentation/networking/devlink/devlink-port.rst <devlink_port>` for the
 details of this API.
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
