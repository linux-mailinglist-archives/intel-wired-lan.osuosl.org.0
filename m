Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DC33E7E3C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Aug 2021 19:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5937C401E6;
	Tue, 10 Aug 2021 17:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TKPczgxONg-R; Tue, 10 Aug 2021 17:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 540CC4044C;
	Tue, 10 Aug 2021 17:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DBFC1BF384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 17:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42171401E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 17:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpUtDn2ifnOk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Aug 2021 17:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65C9D4012F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 17:30:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="300541118"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="300541118"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 10:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="484111461"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2021 10:29:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 10 Aug 2021 10:29:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 10:29:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 10:29:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cG71uylfEwiHZbePwbxP5GxeGcM1mQ9Xaf36cXMcdDUDEgrpEGfhf+/pjP5vCSp+DIg5gDlwESShZZ7hfnzmCabnfaW+BZMAEebzqYIQusKXRieTZMACvBNXBOnXePMysLU2nOn+8aSzLcvRY6DHTxPULZoltX7mgfAg1Afl/c7glGmp7DZIgRja+rN7EH3hH/LrkUaAX6R+nTtdJnU6v//lva0vmgKB5V0AcsiVq1X3gUhNzwS4izcIVnMeftUgCzPsYoa70j7emfPJsys9zCuNT8qFHIpaeXUCxntlYy9+xONHklTx3o4ROXhbYLMZCrKmwlTHUpg/Bf4Tt31lrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCzWiklLt+AlqtcknaLymPZVhTvEPOwYxukwP8G6XBA=;
 b=EmSVvKWa3OPFrFf9WMTWK6NANV6sFiARNofjBMnD2MSwxSrrjWoAOEJ02IIS7T0wbMxB8xr0vQEWDyYPaj/Cuxm4+Cd/mslJ8+lV9CSuUmR8c5oMKDf0X0lG8uOl2uPXQZsh7Z9DgQW1qovrd7FZCviKHCOud2vvBIHFu3VZ15FAXP3UI62Kdnpc7MvJPvxJ70qrrr383qw2XInVeAykBwSCZcP0GpXyq6nId/uX/NZaYrFS8yLnwSYlcy8GMmG34DlFkoAZECDGw167VVxHvZnT88oNhBRpZYXaDRcYb9My67CIA0juuNNfDtY9rXuwzzRv+zEK8dt3DXuycYN42Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SCzWiklLt+AlqtcknaLymPZVhTvEPOwYxukwP8G6XBA=;
 b=kKT5N+S9LvE8imiag9jrcwtZDIX4GDKfr6tWfQkDy4GDFkuuxZ1YDyx42yG86I+PhAZzFGEuSI0LDOof8+ajEYziLGsooJylqSbGHrgpjvSr+UR8F0FsOUADlh0C/mMWdoo9C3i7AWcZGtgvatIZebWERPWZY48VyR22EwBlYfs=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2742.namprd11.prod.outlook.com (2603:10b6:a02:c1::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 17:29:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 17:29:57 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware] ice: update package
 file to 1.3.26.0
Thread-Index: AQHXepI2Q70x5WGUYkiKICze6GTCyqttJSWQ
Date: Tue, 10 Aug 2021 17:29:57 +0000
Message-ID: <BYAPR11MB336797FD59FF9F102FCE1D9DFCF79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210716221728.46050-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221728.46050-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4c1104e-8aa4-45ba-2295-08d95c24793f
x-ms-traffictypediagnostic: BYAPR11MB2742:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB27421ACF6231D2C6C08B731AFCF79@BYAPR11MB2742.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZAelortBx/6JEkBgRNes6zjQBmMHzCUF2qfEziLEqy8it8dki4460MZ9ubz+whvVrx3B+jiHGUcXFugvP3s0GMpapZ6FenW5IUDwlhzlP8B201v2iDxt7kNDhtIsrDg0IED8grC4MiygRa0fKUbf3sWcn+shfG9eYuW5uzF3tgVx2OC+Gce1wofD2ku6ZY/Z4EMDYcFSaFuryEEvPQK+ktT/s6BgGjTRUiQVpSFTbte/phAaVX/5iG4TDNKxOEyFSwTQhqyEmzw/A3QP8RARZBtgBSfyX7W9vyzQ67FIeGNi59W4Aj6hcdQ92D+JMMcxwzOW1OeSMHTuCWbe/4MGXrjH1F/L9VTtLdPk2rCbb7cMAlKz6O88WzqRlBJlE0xpdMpPxErFpQp22fhZqin/X6QOBswODlzi4eYafurQ6DdUEm28ARCaq0Yvk4KxZkImlieQ2liv5CWaoVkOEzFhfzgtCzD/1z7Fywc9+MVARpPGpbkCPRfMay1QSpwupoZLrsRBmozteVIypaO/Z3sKEW5bfV56qtmsD6UDz61dCBE2vZR8p9pur1duKHc5DqjW9Rkzz3psZccGEklJ+pXDwfTWG6pSc+NYl7Xdq/pVRfuH3XHx8mTtCnyKJLFei06SIykeBXtiiT1ZFnqIVHXGe/snmIQHVyLflOyUkr5dgpcCb1FcmGHMKS6dGI9QNIy+mGSvMrcJUDC+MLdHo5QaA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(6506007)(478600001)(71200400001)(86362001)(110136005)(53546011)(316002)(26005)(186003)(2906002)(33656002)(4744005)(5660300002)(76116006)(9686003)(38070700005)(55016002)(83380400001)(15650500001)(8936002)(7696005)(66946007)(66446008)(8676002)(66556008)(38100700002)(66476007)(64756008)(52536014)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t4pOJs9/nrkmssyPXq0PFoqeHzZeGJY1GbxB6rm3DTCwtVIfcqd8WDTKFavr?=
 =?us-ascii?Q?R1/NBqBDFH1WkWP0LtKGFkkRnl0QS2ipkpT3efi7q1rqV4m/AQI1C30JSOOT?=
 =?us-ascii?Q?JvlHMRDRII6/Rlpn7Xv6rcKDBFtf05wxvgNLC+f7OHLwlVATbTIy9VgimIHf?=
 =?us-ascii?Q?Ch8uMDv8HBsyksLkW7Y4RCjcJluUeaPB/E0OXx9bXfZQGpQ9nhlXhcm+ECMx?=
 =?us-ascii?Q?t+0VTVzxUaKPKgOI32fhVhzY33GQcxrHCjA6A107WhOHOg6h0uH0PR+T+9rt?=
 =?us-ascii?Q?pww/IOydu3LVJ2L+j8r7kPjl5GOqLeMpfHbrvyUCtohfAygkfz/E90VVYCQC?=
 =?us-ascii?Q?0MxWjYGBIYp4KhW5aeB/crqNvIMaMXNz6RLyeKOdfcLv7+T07s+Cffr9AGNs?=
 =?us-ascii?Q?6zKST9BwWS4g0zNSndpPMQGLXlbIQSNkqyx2D2MAX8Vgfly4/6fzh4SS9Ibf?=
 =?us-ascii?Q?ag8usFCqfMwQvrU7l8uO93z4zJkJLB5rwbpCj0c3jB0il/SQzwQVwCYsPZ6B?=
 =?us-ascii?Q?gKF07qS/Bd8WfGsvFO7xlSdhd0zQfz+83hcMYmuuG5jssecyQHwAPTx4IDIv?=
 =?us-ascii?Q?anHSACXlIWbtiANuwp8aItu2biJJJBvNuH2164tWoJkpudKgEqsHhvsaXnir?=
 =?us-ascii?Q?nyDve1ggq6DfKhCn+gPzzPMWMoG+YECyNnuJ8onwSPlSgopYD5oQM4DNnaS3?=
 =?us-ascii?Q?Xj2Qr9FSoFSQJeJVbGLFtcr5RLeCc1b7t+Io+fX5XApaX9w0dx6VtXbFY7Bn?=
 =?us-ascii?Q?0X12CeLk6Qm2c5lNZQGuO11y4uk5NYi3qL64ActtfpuBDP9po+ntC+6T0i2M?=
 =?us-ascii?Q?r+/KvFgSDHJ2/foKNZ+cHUeDMK9Y4AK8WHb3zVWEGPwX3GhIrzYsdtBxdu62?=
 =?us-ascii?Q?rvV2IaNCz7qWQI6zV9SqreBLc+V2C9e5yuATuMdMMBN0QLI+YB2GRtT59X29?=
 =?us-ascii?Q?d17DIFnSdrG/HEUzOSjDiQd7vIs04iRK1+Xw91vCOUUEtvzBPDntOJ1+uIcd?=
 =?us-ascii?Q?ss5iehEz8i233UG7FkIk/NF0RI4VEOi6XnxNkcb4g/Vpvq7vAs5XI6jWpLvd?=
 =?us-ascii?Q?8LMoumVsRRTITz32thUbHqMCvc43FJjfSdnIQQbvlndpFaw9l0eoL1zN731k?=
 =?us-ascii?Q?iY41GoOJfrOHQ0MiZ283Smd9C83opfEAdmhRtmA0hUDOHNKGCNZa7lFzU47i?=
 =?us-ascii?Q?2WloEIWTq2uyunDMlsdbOnrN0ZRFUkryu3qxFwsovghOCEoyuD5qHDLuO7eo?=
 =?us-ascii?Q?dcl+qat70A7e+zWr3ryqicdfpHmarWyyFIvJP4RhVyEdE2kArAO7pBCAScGN?=
 =?us-ascii?Q?s/Y10uhPwPPrfLQNaVrd0Wur?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4c1104e-8aa4-45ba-2295-08d95c24793f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 17:29:57.0995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gZXZejkxeSbGYYqPAWFLtVuvxH3KZ/G1pscHQwz/YD0j0J2gQAbIuJiPFtVKHi8Sz6cQNAnS+7dG2OXeRsj/aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update package
 file to 1.3.26.0
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
> Sent: Saturday, July 17, 2021 3:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH linux-firmware] ice: update package file to
> 1.3.26.0
> 
> Update the package file and WHENCE entry for the ice driver to version
> 1.3.26.0.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.16.0.pkg => ice-1.3.26.0.pkg}    | Bin 659716 -> 635256 bytes
>  2 files changed, 2 insertions(+), 2 deletions(-)  rename intel/ice/ddp/{ice-
> 1.3.16.0.pkg => ice-1.3.26.0.pkg} (74%)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
