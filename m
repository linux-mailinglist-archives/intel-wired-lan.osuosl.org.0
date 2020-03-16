Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A76DE18733F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 20:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66EE4226D4;
	Mon, 16 Mar 2020 19:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j62KEtl5vwvl; Mon, 16 Mar 2020 19:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F98D226FC;
	Mon, 16 Mar 2020 19:22:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11AFD1BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0E0F2885CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ue8Hq7qWiNm5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 19:22:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5EE82885C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:22:26 +0000 (UTC)
IronPort-SDR: h4r9JUHoURxCsDZXf71v4V6iOPEvqMNcv7u5H2/Kvnq3y/Oeef1J++r4yZcnGw8BN1hzCxd8eo
 5BzcPlcJ9zEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 12:22:13 -0700
IronPort-SDR: 6p8vqHAJAGxi0naZW3EBnxHvdOxYpnKWA+L3VjY3UaqH1SUYeUo1wrejuIg0L14iQgZuSqkk+l
 LlEaCo0y/1dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="443466425"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2020 12:22:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 12:22:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 12:22:12 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 12:22:12 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 5/9] ice: implement full NVM read
 from ETHTOOL_GEEPROM
Thread-Index: AQHV+BHAc2ysfPb7Zk6+/G8CDXWfoKhLoCZQ
Date: Mon, 16 Mar 2020 19:22:12 +0000
Message-ID: <a54d52e94c83415680501cc74777b91a@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-6-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 5/9] ice: implement full NVM read
 from ETHTOOL_GEEPROM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
Sent: Wednesday, March 11, 2020 6:58 PM
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Subject: [Intel-wired-lan] [PATCH v3 5/9] ice: implement full NVM read from ETHTOOL_GEEPROM

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The current implementation of .get_eeprom only enables reading from the Shadow RAM portion of the NVM contents. Implement support for reading the entire flash contents instead of only the initial portion contained in the Shadow RAM.

A complete dump can take several seconds, but the ETHTOOL_GEEPROM ioctl is capable of reading only a limited portion at a time by specifying the offset and length to read.

In order to perform the reads directly, several functions are made non static. Additionally, the unused ice_read_sr_buf_aq and ice_read_sr_buf functions are removed.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h  |   3 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  33 ++--
 drivers/net/ethernet/intel/ice/ice_nvm.c     | 150 +------------------
 drivers/net/ethernet/intel/ice/ice_nvm.h     |   4 +
 4 files changed, 26 insertions(+), 164 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
