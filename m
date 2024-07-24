Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4457D93B1C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 15:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B15C608D0;
	Wed, 24 Jul 2024 13:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqpJP9LfOZKB; Wed, 24 Jul 2024 13:40:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFB5E608C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721828447;
	bh=EnyZDa84/iFBGbnIB35zZWJMdRCrCeLtjTRm7p8Qo8c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8ixhFNdI8B3iDYQp3c6/aRAtQ8YTyjhZZZICP+oNCm1vMm+YiTPwcty8YwPMbJA9B
	 nXW18CAIwnFahBuGhsYmNQDW9r+TwBkpecCynuF5U2v5u7vWWDa4zO82vqRYYzzDBd
	 qzAnMBaOe6oQI9d+aFf857A6uQs19UeFaidFN4QMEA7giX3W/cSbeJwfui65qKEmjl
	 VEEA0FrD7gwKjsDcw55fbK90Eiz+ekngIQi0FKyKfuDADtd9YUszj9dCIynHPrnSGp
	 XJ06Yp6wRfUDiOmpOUuUNZ4Tmun6hi6fiaEe2rrrG1ygv322ORBHhf4uZCBWqBfoDQ
	 rBBoENTtOUzmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFB5E608C0;
	Wed, 24 Jul 2024 13:40:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E427B1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB63981317
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jr-C2STVjX4M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 13:40:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 07ADF81312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07ADF81312
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07ADF81312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:44 +0000 (UTC)
X-CSE-ConnectionGUID: IDTnVp/5Ri2tKblONGRUDQ==
X-CSE-MsgGUID: gCSw6cDOQayX1F3si4aPRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19469360"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19469360"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 06:40:43 -0700
X-CSE-ConnectionGUID: IdraOJDqQuC9OVR6+RcmMg==
X-CSE-MsgGUID: KhNxVgLOQKyD+//WxKbLoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52615636"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 24 Jul 2024 06:40:41 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:40:21 +0200
Message-ID: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721828445; x=1753364445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0dUlSwLv3mwvkv5Kz61djZ1AXbh+Q3AHHVb7An338Ec=;
 b=Tc/pzxBwsTrNDV+zWPCt3n8N7oXfXbKB2/Cw1PoRO2PEhT1fcfUrdTzm
 qBwOIyjMVFFtUJj92R5vCMkWcaM41Vny7CJty+MAdwTRH09wHuHU+leXp
 5SpY/hGYVkutfG08s/p0mMlUrXNOf9VecjHWgZSQeFAB5pN8tkJeolh8x
 YdoG2mWohmEXHSZrppHEHStbOrOZkCAk4VCwfQSc0ZOgCumOzXyjsdLFB
 VNI4qyh/RBW3j+M7OAg7uADJ+f+fxJakT8u5vs4pg3MagDpi3maGAAFUa
 5VXr4dfl4fl9nsi0aSuQWskLzd3nA8IngPxoc5oz83+ONm2dRPEJRo9lo
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tc/pzxBw
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: fix 3 bugs revealed by
 the Chapter I
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The libeth conversion revealed 2 serious issues which lead to sporadic
crashes or WARNs under certain configurations. Additional one was found
while debugging these two with kmemleak.
This one is targeted stable, the rest can be backported manually later
if needed. They can be reproduced only after the conversion is applied
anyway.

Alexander Lobakin (2):
  idpf: fix memory leaks and crashes while performing a soft reset
  idpf: fix UAFs when destroying the queues

Michal Kubiak (1):
  idpf: fix memleak in vport interrupt configuration

 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 48 ++++++++++-----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 43 ++++--------------
 2 files changed, 33 insertions(+), 58 deletions(-)

-- 
2.45.2

