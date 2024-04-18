Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB8A8A98B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4575A416D1;
	Thu, 18 Apr 2024 11:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0KvXXqgVMXXv; Thu, 18 Apr 2024 11:37:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81B79416D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440241;
	bh=C7bMn+iay1B+BHTbZfG1FTNQ2hxmc/BBslk4QLCVTcc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=juw8u2q+Z3i0QW3FzKv3UWxKc/BF3Db4gP3Bxc760e5uuzyN1ueDypIUQjX/C1nfM
	 Rqf3S/VbcgNY6GbWUga1grLONOYNabyeB4oNgFxZuOsRNE8DXU7+aI2fh7UjeV0WgI
	 aL5pZcBGDcDK6vh3dJZ3CcgNSiWpEtuMsTZJZLKDSTSzQYgshlZ0YPaWgLdM25ja2U
	 itSSeWuyHZc5qN0DFm6dqoCu80/NB9Cf4gksyfyLKLXWnL5vdHAShQpXDSdLJ2Agpn
	 0nGLP2uNlk1NkIt4/aibZzPH+sjKv6T0x4aH31v/9Ux3k0jgKXvLIMRcQv8aEHhPVR
	 jQXgc2j7VB7Hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81B79416D6;
	Thu, 18 Apr 2024 11:37:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 618EA1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D89560905
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:37:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhTsqALAoC5W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:37:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 628D460B9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 628D460B9C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 628D460B9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:37:18 +0000 (UTC)
X-CSE-ConnectionGUID: Uk9bQGqFQbemya6S21HIIA==
X-CSE-MsgGUID: sZeMC0MUS0KswoHy1dDrNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587858"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587858"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:37:18 -0700
X-CSE-ConnectionGUID: p3PmWh1VSJuoSx/X/w7GmA==
X-CSE-MsgGUID: 1B/oRPmQQIaneUWN6a5oOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586251"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:37:13 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:16 +0200
Message-ID: <20240418113616.1108566-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440238; x=1744976238;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=32K2pvuotD+LXN0arHaoAwsqYB5fmgxg0lL5o2RpF68=;
 b=UBBYcrMNPZn/aiC5/r54OPMDKIQVdUHXvfN+Px2/uH8wU8FR8WZ9WLH4
 OARMmhoxw5b4EJfb6XdlcEi7WlA4AYCnVmGx8gsdgzpNQC4b2HzX3Nbgd
 GFQXQj3dSWjT1DLGz1+UNQBXUn3VegYwMzFLB3WPoBDn1HmUeOE0R24Nk
 cMvkL63BOwcNbqFSQAtzzwatGpF1f5RPy3sRb4FsbH4R8Sb4j26Q5y0pG
 nfQpYw2N8mZ6adxPoKuJtZUfR/Ng3Csr2d78ggScnu0dZgKhebEqzDrY4
 I6dQONTWwlQF6sNDkm0Lu7tfF5XfR2vD+DxNRhfCPfGZn5YMbfnep2c1V
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UBBYcrMN
Subject: [Intel-wired-lan] [PATCH net-next v10 10/10] MAINTAINERS: add entry
 for libeth and libie
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add myself as a maintainer/supporter for libeth and libie. Let they have
separate entries from the Intel ethernet code as it's a bit different
case and all patches will go through me rather than Tony.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 MAINTAINERS | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f22698a7859f..6c42ce3ab266 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12392,6 +12392,26 @@ F:	drivers/ata/
 F:	include/linux/ata.h
 F:	include/linux/libata.h
 
+LIBETH COMMON ETHERNET LIBRARY
+M:	Alexander Lobakin <aleksander.lobakin@intel.com>
+L:	netdev@vger.kernel.org
+L:	intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
+S:	Supported
+T:	git https://github.com/alobakin/linux.git
+F:	drivers/net/ethernet/intel/libeth/
+F:	include/net/libeth/
+K:	libeth
+
+LIBIE COMMON INTEL ETHERNET LIBRARY
+M:	Alexander Lobakin <aleksander.lobakin@intel.com>
+L:	intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
+L:	netdev@vger.kernel.org
+S:	Supported
+T:	git https://github.com/alobakin/linux.git
+F:	drivers/net/ethernet/intel/libie/
+F:	include/linux/net/intel/libie/
+K:	libie
+
 LIBNVDIMM BTT: BLOCK TRANSLATION TABLE
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dan Williams <dan.j.williams@intel.com>
-- 
2.44.0

