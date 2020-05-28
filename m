Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DEE1E702F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD98D888D1;
	Thu, 28 May 2020 23:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v+MVDeHqhDpH; Thu, 28 May 2020 23:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADFAC88928;
	Thu, 28 May 2020 23:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 272A31BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23C218723E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYEogJBvgUCc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 790648721A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:18 +0000 (UTC)
IronPort-SDR: 55cTW/7vKwnU9fuExywtGX8WtBLyZ6+nw3V6pmXbhbzWN1/JMfGyg2Vby2ASh3Xfhs+gaIV36p
 IDrrU6g9AnRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:19:18 -0700
IronPort-SDR: bXKJwmN+C1MnfMb1Fqn8QBFvVQsU59EtUMIhx2Bn4J346Q8NVaLfYIsatmaeltElxYhX60Xnc6
 BtqLuJFnQbKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="267379911"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga003.jf.intel.com with ESMTP; 28 May 2020 16:19:17 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:19:17 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX161.amr.corp.intel.com (10.22.240.84) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:19:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:19:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZmktrEV9q/ifOjZG4ZqH+zxtWfpFdLSWOLSRZFwO3TMrLFMi5+XxCgMdrIVdcbef1wmT8MdRW18UIInlvf2AlGGl8ez/PXUU2digSGxYWcfPhTZBmv51JQn7gMaYQTbgmKFyIZIZGIt7YfDFEmfThOJteEnZZUxcFy5RAEqX6Gc8nqU8Z9k7BJVTC4FvcK3MiWQE78q7aOpwIPokXeMDRV6St+MipmxXldDN6yVGABhMAkxmDtW2VdlXAAlG0eu6Te6fmf4SKLTOSLJ4u82Dkwzhl4NLfgkX/hHD/VsJsop8dW7taaxmOpTS1htwhh1oWeakrTVbmRACQ1zSYgxcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxYzPidsZ+redG/NoZqtnqIo67bhQHy+Jl4kscXW458=;
 b=Q0xKXvWF0+AlZVuKac8TeVbrEMXVL+zboMtDdnMBYBbhSuESJk8B1Ex1SZYgtdOTJOI5Y2fswtjCyHckT2ohe2rcyq0GDcWkVJg/obRVeFbAJkUsiA9D/iZ834bZkfkUMygwKSdkO5UM/p/Ooo2QXy97+cQXpRtBggOzhFqEfeN0l6GbCCfA/cHPXzTEfYheQ6h8nAcAVTGpn1FxTD4i7dlPTImPj4g58iRoIZpnY31UUM7jxWy4ULbYvdpHZNcKkqHKYzdo9qvi1QLiuLwiy9mzAiL6x7ok8DroNUf0MJHvm4AiF4GkO3oDgcm9uGlKJ0zsCK9prRrrXg0kMOy6Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yxYzPidsZ+redG/NoZqtnqIo67bhQHy+Jl4kscXW458=;
 b=Pk1wbQoxkrMIMdXC/2s42GIuVncRaGBq/r/PvBhBx+J02nMPHTwFpdmtcfNzTC39A2vLGQVLf2+mEhV9G2Ec5Usw/6ayN/D2Ixev7kYTBQKmg1b9rKVL4EG+6eJ7jSWyONlduaO1WHBc7lDTIWLub44ft0zrQ+xDIrDk79mbixc=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:19:16 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:19:16 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 5/9] ice: fix function signature
 style format
Thread-Index: AQHWKx0bpPcdTmr8DEOd37lUW8piQKi+NnvA
Date: Thu, 28 May 2020 23:19:15 +0000
Message-ID: <DM5PR11MB16590F056F784299D77BF9B18C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8ee88265-6ff9-4fbc-42aa-08d8035d8a5d
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB17711AD77BB6E756726B11628C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OXfqn6ZxCVzrLQBFtONJo1Opo/sNlDYaTwSevtB/zfYWtwCe54nI3DvTe1riTrJC+TQT8+hfmmHeSUR5jRXx/fTAMZakItaUtNel1dLhRkfSABSLv2mzqtFqHZktUxIvYyaqq58QeczRPwNcgfiuBdrlh5o3nEkVemD5FEKh70CKTwpA1WVR50AnvpSKdorO08Le6J7+o0YbB+2JrVN/A0lXMZ/bvrrgsR+87CxlGqfCknK/3tdoCtXYpJppoEcwaH318ZoeQUGiG5HiomnLWcf5uAC0I3suOkpqTchNXNTcFdZ+j5KyvlL+//JHMiQw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(6506007)(53546011)(86362001)(8936002)(8676002)(4744005)(7696005)(83380400001)(5660300002)(66556008)(66476007)(66946007)(76116006)(186003)(26005)(66446008)(64756008)(6916009)(71200400001)(478600001)(55016002)(2906002)(33656002)(52536014)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 12f+2elNPg1aeqm3EFDSBmCTzUcqndDlCPDM1C+qCEEeETsCEwGvfV++ftxQdcCL6vQwWwFIdquUwvRk+LZ+ypE8IoExMQAINMvc5mByi4Rrf9VMWcwxopRF5c173fZpUTmKDw3o+/0F/AsZGFDGv3SJ+zRefqfSwgvClyJG1k8o0H13ofZJxnlDexIs9Cup7ZCvyhWxEJJlHagBx9NaEe8+hQrHRSmPuL3sWgUi7nLLY9yNjT6vDkYR0UYuP5JyD4VaUpw92a+sUyy5xnXiI02wxZ9gCsmlrxSeRJ7eo7lUXZJnrczmu6FD+MxmbcZ7iUXqQ9ZhGW2sBj5UY5pUlLc+vdEInRnyFEquC2q1Zo0w6cgosn/qoZdZ9XdYGc9Rd8eH4/fJPQZEQSNm1HP/IaPQTnofYFbjj7FF8aIgfA40uSpOT59QJn0d3vbC1oM7/MoLel3WLYmXUdLC5M0ONe/W6sL4Qq/fpHVkz8oOPsh3mGaExGr6Yqd0tcewk0DM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee88265-6ff9-4fbc-42aa-08d8035d8a5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:19:15.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XU4IWbSbmJh/7RJM9s0FCmw5Jpd5GQo7hjX/fJTMGyC8Avrh7Jyhwp1kLGWAk2Lw+gD/cBCJf5T0sq2foDTHK5Tx/DSgJZQN+BDj85tNGVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 5/9] ice: fix function signature
 style format
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 5/9] ice: fix function signature style
> format
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Where possible, cuddle multiple lines of function signatures to be consistent
> throughout the code.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  3 +--
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 12 ++++--------
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  9 +++------
>  3 files changed, 8 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
