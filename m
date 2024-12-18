Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E78C49F66AC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:12:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 777A3423CE;
	Wed, 18 Dec 2024 13:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnl53SwLSEXs; Wed, 18 Dec 2024 13:12:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF0F6423C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527575;
	bh=s6MQfg9Ip75Y2jP0JOPBO13rSBC4QTV+BSU0sPdLd1k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6IgknYLFqz3Iy07jPDSxq92JMkePkvkCYqq64djZgLLCTKN/0pgxqxx3dtAZkQbPX
	 ebvNmXc4b94gE7FnNVGoLHizNQoDjAZOoyFspXVyRAxuZwKYhVWDni8TwO8ZrSm0Vj
	 iXCI/16TLDOOap3vUj3mb8EwDGKzmfv/Ir4189RmLuXtNJVDeHrKhSiarNKZZabrj6
	 x1WPh2WbWI73p6xYZQaWRK0PaO19YgXJW6PWQHgJSxql2G9xqhLHspNoTSkWXog1X5
	 m05rtfCWco+D9Bz2nqA/0dWi6X4F3Cm/61Gmc1YNtdaY1mYJzqdeoL5f1yOGDn0YB3
	 ngG4Op8fa9DXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF0F6423C8;
	Wed, 18 Dec 2024 13:12:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7007AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FB02417CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P0RXgOTwxJld for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:12:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7BD18417CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BD18417CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BD18417CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:12:53 +0000 (UTC)
X-CSE-ConnectionGUID: xks2wdU6SWi1NGUggBSf4Q==
X-CSE-MsgGUID: dxCxmTY9Tym/UJ0AbvjFhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22589567"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="22589567"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:12:53 -0800
X-CSE-ConnectionGUID: PkDnewjFRvy4yFb6QUOuDw==
X-CSE-MsgGUID: FDuqev5VRu67/fSfqDohMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102471016"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.118.127])
 by fmviesa005.fm.intel.com with ESMTP; 18 Dec 2024 05:12:52 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed, 18 Dec 2024 14:12:36 +0100
Message-ID: <20241218131238.5968-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527574; x=1766063574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lv2CDgoXs13IOcxlzHVU5MTFI+KJ6mbBs57kYxXXYVc=;
 b=Jx5bD0xFKPEoiQF+lpBQ4Mf5g8dhzVSz6ylKk0t+v/c6EONbkf7qawHh
 AeQZzSBHL6Huq/RLPPaa7DAsryfNitQglJsQBvpMhOotzXgCkubZKMW5e
 feqbcQU6kzS+DPEfmYLosPNud3NeI6QzEIE+Wizf/rJdDXtEr2dth+hWR
 6YCMxKw8UIpNacIFQ1hUkK1VNpGzLMvPCK4u8FURIo4etlqJhSUqEq21o
 a4iD+kw27NcME/o/LZ0UdpAiRybogYuFAcTKx4KasZlAls2FqoSwfdB+z
 O8JZPM/aP8zcYkaGSx3F/0pBYMUCtv4+vjGaeHSfSLQHdUsD6ZLRIdmPD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jx5bD0xF
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] ixgbevf: Add support for
 Intel(R) E610 device
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

Add support for Intel(R) E610 Series of network devices. The E610 is
based on X550 but adds firmware managed link, enhanced security
capabilities and support for updated server manageability.

Piotr Kwapulinski (2):
  PCI: Add PCI_VDEVICE_SUB helper macro
  ixgbevf: Add support for Intel(R) E610 device

 drivers/net/ethernet/intel/ixgbevf/defines.h      |  5 ++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h      |  6 +++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 12 ++++++++++--
 drivers/net/ethernet/intel/ixgbevf/vf.c           | 12 +++++++++++-
 drivers/net/ethernet/intel/ixgbevf/vf.h           |  4 +++-
 include/linux/pci.h                               | 14 ++++++++++++++
 6 files changed, 47 insertions(+), 6 deletions(-)

-- 
v1 -> v2
  allow specifying the subvendor ("Subsystem Vendor ID" in the spec) in
  the PCI_VDEVICE_SUB macro
v2 -> v3
  update IXGBE_SUBDEV_ID_E610_VF_HV to 0x00FF

2.43.0

