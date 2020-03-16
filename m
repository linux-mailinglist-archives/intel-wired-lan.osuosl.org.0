Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD8518732A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 20:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5029588564;
	Mon, 16 Mar 2020 19:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bnT4HoLg1qWl; Mon, 16 Mar 2020 19:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DA9A88587;
	Mon, 16 Mar 2020 19:15:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95A961BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 919BC226D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3FjzJHPBxPD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 19:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id C208020439
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:15:41 +0000 (UTC)
IronPort-SDR: e/eMICsRNhLLx+nn779ko6kOI2nGmdLW3zDIk6ujnbVTkDEDa0OORlav3gyyGq8qTws3UaMi2c
 vkKLaz05DkMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 12:15:41 -0700
IronPort-SDR: ksHxUy1q/rys/+PNlNvL+pHkW/0dL2Y4js0pYc9Eg76zbLFPJEu0CW9BF7fAe7xjHy6eJpw9HU
 phQyx0x3JhXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="323596384"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 16 Mar 2020 12:15:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 12:15:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 12:15:39 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 12:15:39 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/9] ice: use __le16 types for
 explicitly Little Endian values
Thread-Index: AQHV+BG7BvX2sPxDNEul9zzYuMSPMKhLnkmQ
Date: Mon, 16 Mar 2020 19:15:39 +0000
Message-ID: <1866427914e247048105464443d19822@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-2-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 1/9] ice: use __le16 types for
 explicitly Little Endian values
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
Subject: [Intel-wired-lan] [PATCH v3 1/9] ice: use __le16 types for explicitly Little Endian values

The ice_read_sr_aq function returns words in the Little Endian format.
Remove the need for __force and typecasting by using a local variable in the ice_read_sr_word_aq function.

Additionally clarify explicitly that the ice_read_sr_aq function takes storage for __le16 values instead of using u16.

Being explicit about the endianness of this data helps when using tools like sparse to catch endian-related issues.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
