Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 255DB1E6DED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1209204E3;
	Thu, 28 May 2020 21:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id US+R+AMCkr3e; Thu, 28 May 2020 21:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09C1A21514;
	Thu, 28 May 2020 21:43:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0701BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 894B48832B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SF+dzxchL4N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CE0688329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:43:01 +0000 (UTC)
IronPort-SDR: GBFRL2Fi8A3cNjUmONAj2mfIV3QheRc3kpixHReNHfAahs29njoGixBRrM5jI5DwGg/fE1kCSJ
 Z0lJWX/Z8P5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:43:01 -0700
IronPort-SDR: xxdIaIsNMLx3UnHhJz16hSPay0ydPf3vruzQ5lEu04vwRpZ0Fvg6PbqvenZRf4axjdTRxzMQiG
 TD7JWMNPgMew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="285304730"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2020 14:43:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:43:00 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 14:43:00 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 14:43:00 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:42:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaDrZuyrdQayfYDg5HFbSE01ilo6Buzk2iuyPwYN6pXOxhDrWrLgCApFF2Vy8FcGHqnPAv4bclQTNOI0H8zLBx1THtiCcc5LIclSHZN8ypnbzuEmzZdNgwC4sWXtNj6SD7om5yS53CCDWWGOoPvd77g2U5PEI/+VHGEI/YO0WnxfDPSutiUEfOTZ190j+4H2qsCYVEGHTwI/zltD3CmGi/mURfaDYYfraBXGk+xJ/b20oWIFKcQec6D1yXxCIdClSs+dzwqAtZ1dQy3h8xlpCpDQgSvyCxTLTmU7RR4mVHQvCbWRb6McVyBam7l9tgECVpsOAA58TFvO+6eV1S6vAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0IwrHJo99zCpa2yCriF9uWoxb62xXfe0fMyr2djG9c=;
 b=HUKlasDk2//IHDJeiEFZmfiYj/ptOZxgF1Y8E0ZpcCbgWZYBAmh91EYPdltYucSKxIMIT2QLaTLJ7pntUU/PE5C6QNArB0OFAWqWiXiCoYiW7uIrHm9+T4zUSv81FF1y0kyAD2ELJ6cZq4XrlW2K3mwbtutuN1HeWOJluKJ6YQDzzCMB98Kli9bJjytN2NvZIV1sEtzdaHnUTzT5ytozlfakGuTIijTozLNa5qiBhz0uNhDh8ph9FVmwbKHYGYa0oGSx0cx9PWwpwSOOl0rKOBxIVBz6IMukE+Mjz9TZsxm8GbYqu93ZW1R+z82h+lX7+6KFDd/bUaY6lA49g/6Diw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0IwrHJo99zCpa2yCriF9uWoxb62xXfe0fMyr2djG9c=;
 b=hcksq7WiGFrUv/R9JEbSqERmae6jgzvemW28fOGQMD7lxiVlQPIHl+YbDL0H9ivBpZ4N97aJH83P8zldMHWWfIp2gaJXjbxgBiClw/ju5Gen8rU/f9lgxU+kC0pKqOEMFy9UP+k1Mw8TVTbY82EVnuegjxoAP9UJ0O3oR0PIBSw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:42:58 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:42:58 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 10/15] ice: Refactor VF VSI release
 and setup functions
Thread-Index: AQHWKxyOVCOlZjK9GEWLztKrXnWC3qi+G5mg
Date: Thu, 28 May 2020 21:42:58 +0000
Message-ID: <DM5PR11MB165988B21DA811977AF0FC2A8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8db6002-23ed-4fb2-a02a-08d8035016d0
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB2043D34B1B45D0D34AE200A58C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WevFAhGD0QpvwjqKABj02ntLjbaU/2vD3ocdsha8ipZBSZYav2nllT7Kw0T2pasp/BwM+XyNl4MaoFdzNJxbMbBPonZQ/RgB0KAib+Mh9Ocmr7FgjhD8FrPW+u90cVQbXPARzqRvVbd4EDPM7aat985gTjtnB1i4Uu55bNQeouvefGzNgjNYOz/ZXHL4xklh4hxGI4AHjjLwlVbDFPocAWOCCHnkGhVuhk4/MlpQG7FSW3EX88V43xcm+LZy1VawUUqz25pWmuUWYwiVNetrmGAxstbE2FFe/Fa9a/7K+Q4mA44zixdlrNhuAXMWkNhO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: gA3SRDgcLY23f2CRCFWZTyXbb2Id854hsrzXPjcI39FHpGJBZOmF8g3Lb01BuYCR6HXpD3hPMcyc5Hzkr+XwviktKtQYbPPQO9zsNOhh5uUUBU13k2YULwlkk2uUs89uh8V9cpDvqt1opTESiUKoWX4HS/ymEjMLRdm06l9hySEBazFjDm/C2H2v+8gIuA4/82Ab6+14jy5J5BDVc+GZmvCbbAQCvGJaq4s1uGOfYlCpGQLgzgttsW9yjnNzWm6HlCMMQjKZClhhTSnb9oMYYQUzXyUuWCeqnrxnhQ622yN/GzJ9EfUe89sEsXc8Md9VmCMfVAwnnMTtvnNdUkvN7L3QXbeNoRPo7TkPAASR/NV6vEzeLhXASlJGZUYej6GzY+vAzfhuvvkOiWLY9UTpb2xfQWbCqJfbV1udXf7sHS4jfb3N1dk7VxVpC2e8GRiWRTQIWvqcm0LYAJ7F4JK1lLBRa6hF03e24K+VFUMF8NmddAhNKnNq/SEzDUurDkD7
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b8db6002-23ed-4fb2-a02a-08d8035016d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:42:58.7203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bKk3TuxpsEPWHMI24zYiIGau7ivhTlZfmkaOSWrG+CfRrB/r9iBRxKk2MS0slhfevGzAH1Nr3Jp6Xtv6ve8ISbv/JHtxGHKa1sJ7FfIasCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 10/15] ice: Refactor VF VSI
 release and setup functions
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 10/15] ice: Refactor VF VSI release and
> setup functions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when a VF VSI calls ice_vsi_release() and ice_vsi_setup() it
> subsequently clears/sets the VF cached variables for lan_vsi_idx and
> lan_vsi_num. This works fine, but can be improved by handling this in the VF
> specific VSI release and setup functions.
> 
> Also, when a VF VSI is setup too many parameters are passed that can be
> derived from the VF. Fix this by only calling VF VSI setup with the bare
> minimum parameters.
> 
> Also, add functionality to invalidate a VF's VSI when it's released and/or
> setup fails. This will make it so a VF VSI cannot be accessed via its cached
> vsi_idx/vsi_num in these cases.
> 
> Finally when a VF's VSI is invalidated set the lan_vsi_idx and lan_vsi_num to
> ICE_NO_VSI to clearly show that there is no valid VSI associated with this VF.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 86 ++++++++++++-------
>  1 file changed, 55 insertions(+), 31 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
