Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA77A102B2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 May 2019 00:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BFE05229D4;
	Tue, 30 Apr 2019 22:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1u-tXZOojtoe; Tue, 30 Apr 2019 22:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E242B231A8;
	Tue, 30 Apr 2019 22:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E54481BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB53686A1E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cc4FHE7bMLWA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2019 22:50:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44DD386905
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2019 22:50:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 15:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; d="scan'208";a="342290813"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2019 15:50:10 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 15:50:09 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.39]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 15:50:09 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S21 03/14] ice: Add support for
 Forward Error Correction (FEC)
Thread-Index: AQHU9Hrg21jVPaCixU+SOT75y2wohKZVZRaw
Date: Tue, 30 Apr 2019 22:50:09 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39AF6D@ORSMSX106.amr.corp.intel.com>
References: <20190416173503.29847-1-anirudh.venkataramanan@intel.com>
 <20190416173503.29847-4-anirudh.venkataramanan@intel.com>
In-Reply-To: <20190416173503.29847-4-anirudh.venkataramanan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzE3ZTBlYzQtNmE1NC00NTFmLTgyMjYtYmU1NDRmYWMzMTE1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOG5Td1lMSVBxRUtwWlY5QkppOGFWclBpVnl6ejVTdk92RG5UWSt1S1lZUmVqWFA4XC9JWEZ5Y1hlOFlZd3dDY1QifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S21 03/14] ice: Add support for
 Forward Error Correction (FEC)
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
> Behalf Of Anirudh Venkataramanan
> Sent: Tuesday, April 16, 2019 10:35 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S21 03/14] ice: Add support for Forward
> Error Correction (FEC)
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> This patch adds driver support for Forward Error Correction (FEC) and ethtool
> handlers to set/get FEC params.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   4 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  70 ++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 216 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  47 +++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  6 files changed, 349 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
