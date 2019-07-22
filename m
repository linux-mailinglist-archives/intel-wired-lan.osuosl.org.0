Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1FB7099A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2019 21:21:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20FB585249;
	Mon, 22 Jul 2019 19:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IrYEKXF3_M0S; Mon, 22 Jul 2019 19:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BFE785116;
	Mon, 22 Jul 2019 19:21:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FB9C1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 19:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B2E2848AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 19:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NTrUF0QRcF3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2019 19:21:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D3016848A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 19:21:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 12:18:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="192823744"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jul 2019 12:18:02 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jul 2019 12:18:01 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.94]) with mapi id 14.03.0439.000;
 Mon, 22 Jul 2019 12:18:01 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Check if transceiver
 implements DDM before access
Thread-Index: AQHVPZGNbFv5TPRD7EOCjv0EnYimzKbXCSKA
Date: Mon, 22 Jul 2019 19:18:01 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40C549@ORSMSX104.amr.corp.intel.com>
References: <20190718175202.14909-1-maurosr@linux.vnet.ibm.com>
In-Reply-To: <20190718175202.14909-1-maurosr@linux.vnet.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDljNGRlMmUtMDcxZS00OWU5LTg0OTctZTE0MDNiMzMxZWM1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNGRzS3NzS3cycDFHSVJjQTlIZ3phTTc3NmxPYzJVQ3cxOXBkS29sVkQzVmpQSzJBRmZFWmdhTWZYd3VrTEVBUiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Check if transceiver implements
 DDM before access
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Mauro S. M. Rodrigues
> Sent: Thursday, July 18, 2019 10:52 AM
> To: intel-wired-lan@lists.osuosl.org; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Cc: wangyugui@e16-tech.com
> Subject: [Intel-wired-lan] [PATCH] i40e: Check if transceiver implements
> DDM before access
> 
> Similar to the ixgbe issue fixed in:
> 655c91414579 ("ixgbe: Check DDM existence in transceiver before access)
> 
> i40e has the same issue when reading eeprom from SFP's module that
> comply with SFF-8472 but not implement the Digital Diagnostic Monitoring
> (DDM) interface described in it. The existence of such area is specified by bit
> 6 of byte 92, set to 1 if implemented.
> 
> Without this patch, due to not checking this bit i40e fails to read SFP module's
> eeprom with the follow message:
> 
> ethtool -m enP51p1s0f0
> Cannot get Module EEPROM data: Input/output error
> 
> Because it fails to read the additional 256 bytes in which it was assumed to
> exist the DDM data.
> 
> Signed-off-by: "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 6 ++++++
>  drivers/net/ethernet/intel/i40e/i40e_type.h    | 1 +
>  2 files changed, 7 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
