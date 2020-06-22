Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C348204202
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C21187239;
	Mon, 22 Jun 2020 20:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z8Uj9JteIFNi; Mon, 22 Jun 2020 20:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B886873CE;
	Mon, 22 Jun 2020 20:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83F3B1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 784A388DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDbTapTVcggo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC1D488D7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:33:21 +0000 (UTC)
IronPort-SDR: YSRGRVutbP04GZ0+Bzn2SKKQRC/oFsqsEmmmlRlVhkr4uPIF6BTaJA94fBPYWjAPMvHeUl9omt
 F1TF+U/nIo7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142926128"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142926128"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:33:21 -0700
IronPort-SDR: yV7TV3lOCScRoZv2pZT55B1IQCWJPSK2TelPYwpvxLQIO9ZJsKXNCCFGeUozgvKrguYWyb+VwI
 k6RwbqOPjMow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="478509329"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jun 2020 13:33:20 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:33:20 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.50) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 22 Jun 2020 13:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0i43/vxgwGcGp7Z15IUjyb0FZi4QGrK2rFDlY4WjCueSVrUbrvIlCQuyU091KxiqIGFzpPo86VEGf/1Sq8vqpqVzjruvFuv96YP+4tDB6+Xq7QfRkTliBeqPg3S01opJPgnv8o8g+5LyuOJh4Mlr94FU/auLM65d+GfsxIIAknqPo1vW7Vy9B7huNIo+QYSkIZMgWi6ZRq8cPi4JtJc3uyNrQNuMzHNkwI58MLnqNjgNlvo9qbui7vJD+R0adrHDZoBAAFh7BSm5q4BrUNNCVXlwY5eW7wZMnuwMnV84FbRStnfxwEtcNzbzQZOInUHFXE6DNcqR0tywWRw4OWG7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVjvudc+vqBZXEHzdMDYE1DFQeVrsikWgyp4h/ah4k0=;
 b=hfC+5qIYGtWOfILZiGQ03iHahHaATZmm63IvD17yY2YvPD8d9+xzEPSRhry08y3YRyVVWNSPVzvXY0lPnahsDhLk36N/IJKpp6oqrREhYSBrOMDDMMG3s9ECKuMRDN2VQYd3Gr3FpLbk6bA3TvIGPqhUbfI+nVYmBtGGD6tJPrWBeL7iONSVyAAv4XXW2Ys29LY/g9OKkU5SnndogW6/H0iQGFsCfGuK+/bmYMLFmJpvZkrbdP7T4w7nxjP8yhDFhIYzJCt0tibIqTbK7SBf9q8Xg8Me0CnGyfyqt/kLPIaolqs6TZ/X4xaIik7Ev4Hhs/6VIOpp0Ue9Mp6Y/U+wOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVjvudc+vqBZXEHzdMDYE1DFQeVrsikWgyp4h/ah4k0=;
 b=gUowQH1+e7lSasFaoPwD+OK+PaAwYhpA7AcnpheDpn4zGC6CgEWAqKwtk7CIvyGAbgLTwd9kzyMGmT82BYRLIPv+N7TfLUkPamofrRiOZ64vBFZ5hPO+goYCXgIuKDJgDgeXQxL3lUQXrxgkpzq7K+3RsFLStEFQ1U73J5H6Xqo=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3697.namprd11.prod.outlook.com
 (2603:10b6:408:8e::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.23; Mon, 22 Jun
 2020 20:33:19 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:33:19 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ice: implement snapshot for device
 capabilities
Thread-Index: AQHWRaDQ8Co63P6jIkqrhO3MDbzJIqjlHVBA
Date: Mon, 22 Jun 2020 20:33:19 +0000
Message-ID: <BN6PR1101MB2145BA08AEDB9B8AB7D2401C8C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200618184611.2641181-1-jacob.e.keller@intel.com>
In-Reply-To: <20200618184611.2641181-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2523b70b-be76-47e9-71f8-08d816eb803a
x-ms-traffictypediagnostic: BN8PR11MB3697:
x-microsoft-antispam-prvs: <BN8PR11MB369717516055FEAFC8221BBC8C970@BN8PR11MB3697.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:525;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yRcF2T2zlHYO0c1B2rbSxpIH6GYiv4rsvKFsxP+xicGFwdlAAMIKf/9Kc8Sq+HCMPDRF4q2In2rKWFYQ5KkijlhrTHTfZ5Vc8MffDkS30RSDymi22w/n8ljGySCJ7BY4RgofZv8Z7d9dkqjqUxtyYJaRnxfefCHm//8rRSjpOpOlA+2+Qhr6EATVruzuxmA/fyGcOqAIvy1l3kIcwYljxeOyqmsj1hwDsDgKzm/Jm40m9pjEPVUKVbe6Zv/4Z02AsFK75r5pHSE697xZhZvRFVWtQ51E8lgkS7tNdeMGop0GHKj0w130uuTm/3MTX/K8TxIz4PNVJBy4NbZFqxiCmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(33656002)(52536014)(4744005)(9686003)(6506007)(86362001)(5660300002)(8676002)(66556008)(66476007)(66446008)(64756008)(66946007)(8936002)(26005)(186003)(7696005)(2906002)(76116006)(55016002)(71200400001)(53546011)(316002)(83380400001)(478600001)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: E6bEDrW9ii1nCSV8iSbzzmQ4kK5w0rBHFV8SOg3C9P5xWXOEXn0VHk4CABTX0cpQ2Cm9EOTZ7il/CvzxmU9qBRHlaiphK1uF+rS2LumyAeqmyeuvmGa1I7/hFpyFHQRj0UA+PqvJO8MPvmxT0WJLSMWf0SfqjLylepkuu1sgBWxyc9HySFAX8IztVn+T7DBRWHtbOxtrP8J63Jyw+bSjqsIl269DbQdVoBZ0alnbv8hcxfnCD0bp4R+neAa0SPp+uzlLt+7OtUxj0LPSWI3r2PT+fkGs+i56Y0tl+OJhuIuv5XyoQIaRscy1evr9G+fxl9jLxxr2eJmdRoMLslqVEYf2rIdvx6+3l/4C7/3azTKjYyRA5dp1XCZSo0QUsLY+AuS38dbJ8UTm9M0HNiaPowABgFLypvmr4OUpfVREbFgDGc/WN81LmnrRNk9xQTVSWKn4/j4CbqS0v85sSwmWTsw66GnF8IcMK5iKNU0ZP0I=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2523b70b-be76-47e9-71f8-08d816eb803a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:33:19.5505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ebM/aIPdsEEKnwElEXNq+QHRjAh/Q7+r3us7b0h4DUjrjbeGhaFDJcD3thGCkJbnL1nkb8R0RPOc5bfl3fFmbuweOuKnM5TEr2NPYsWF34A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3697
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: implement snapshot for device
 capabilities
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
> Jacob Keller
> Sent: Thursday, June 18, 2020 11:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH v2] ice: implement snapshot for device
> capabilities
> 
> Add a new devlink region used for capturing a snapshot of the device
> capabilities buffer which is reported by the firmware over the AdminQ.
> This information can useful in debugging driver and firmware interactions.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> v2
> * Fixed ice_devlink_destroy_regions to properly release the new region
> 
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c  | 66 +++++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_common.h  |  3 +
> drivers/net/ethernet/intel/ice/ice_devlink.c | 59 +++++++++++++++++
>  4 files changed, 115 insertions(+), 14 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
