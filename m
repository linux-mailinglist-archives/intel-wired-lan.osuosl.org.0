Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225E53508B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 929304014E;
	Wed, 31 Mar 2021 21:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rw9dfRT9bXYr; Wed, 31 Mar 2021 21:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DFCE40275;
	Wed, 31 Mar 2021 21:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56E051BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5258040EDB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjMkXVNUjil9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E61E40493
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:43 +0000 (UTC)
IronPort-SDR: GV+dstbg6AjWTtiSAyf4e3foWD0N7TDK101CUcj+Reb0lMS8m7jbRX9MKmMV1lm63cosJflnDI
 Bn8NpRQhPH8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="212336279"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="212336279"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:01:42 -0700
IronPort-SDR: 81AmG4KdXFzegxWtEiDQx2uhxIpCBkTBt+oL+K5GYWR9D+OpT0GuKnaSqAQtm4jHcsMJeYeeNQ
 /rRNu4rKOL5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="394196677"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 31 Mar 2021 14:01:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:01:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:01:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:01:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kg5R8cLxieq9aAkj5ogHNUhgznqo6U/1UEBNHhSIH2RQvgTIYWfRvBtJExTd7UVDVbcahamM4IVP/wQ7ZtbMcVDOPzTY8h/gSaV14VZ8LWgqIQ9YUzEohd14Opn/eIccFrnCfEMnTQ4AhgYQ3dobDqmEaCm6M1c1GrxIR4yjIjXvXL7DX7OSrT5NSDD5Rt6Xlt33RhbBlxXTUsC98HD1GX/akphZHll9FXe298546nY723mXJP8NZDojdK0R2xKWug1VNQA8w3DoZNQgnKR2KDdfV4deG1L4FONaq3i1lrgZNl6YFk5JW6kazzqvNz3b1wlIqAhyI2U5Nwi9t1GOqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a86Keb8P+jZzfgkd4EbG5sEyBknBYj5FYjkJWrT/HXY=;
 b=XPS+4hUv78QAEpgI7OJyAWP0vAINFSg6rXAyGsJYEZzAYIfuuckfSH0q8HCQYhLXEleV9p0u3soo69SKaZITnlHPC/7IUWVQIxOv0IixApRNY5tdH4T6MlE6n9fHzUPw6xmxvRexMfRwQcwxF2h5mBfa/3Y8n/AXXaYRzIbANcmL07gm1xOPY/VXfNg1+kCre6PkX+IE+ITuCQ6C6n5Wd7LgVGirXBjmA19KlTbw15TNg39VkRbdko14IUG46j1/H5CH3G/w4liwp1VISTDa3kVYLpOjkETWQQ7MZ3l0aiNZbMzvH91ZlcgE1KAwabmROWmxYFNMApia/Fae10qk4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a86Keb8P+jZzfgkd4EbG5sEyBknBYj5FYjkJWrT/HXY=;
 b=x7naUMtBjum0FWpCPUx8Su+3k4M5iHfX/f3+KsHD/Yi4NYr2oeEXa1RtmI5FQgCCAAbhXyxpaYadeVQSrCP5XngyWY5mutsqaLQD1OUpdrXzwiqXtiZip3TwuTT4NWKSEocnojejjSMBquEQP4zz6IGANZzRqYa1mdTg0M+bs8A=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.30; Wed, 31 Mar
 2021 21:01:24 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:01:24 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 05/14] ice: Remove unnecessary
 checker loop
Thread-Index: AQHXIciPAnox+3vb7E2ey9etoTPGPaqenl9w
Date: Wed, 31 Mar 2021 21:01:24 +0000
Message-ID: <CO1PR11MB5105CB15A837D91737FD8F00FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57ab8395-3476-421b-f632-08d8f4882527
x-ms-traffictypediagnostic: MWHPR11MB1968:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1968D05B77C3BCB11A8A0F0AFA7C9@MWHPR11MB1968.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qGdj/xLSXV7D7X1fhImYEmem+nqACLiPl4XjtP19QNxwx+c+gvMQhFlnSLrXbN235GWkeH2pPK+Hv1/sg94lBI4mmX5FsCiBTTP8t+y+yJbxYqndcg8+xg2soy5d3svXMZuH/vXCYuKClt6QcRFFT1Rb84UCA94P0in4fymRqGFmupiErqQHVVR8uJQVXxIBN0aAHrQrNCmvKlKW8obIVjApuzKpBb2uBFCqNAWvpRtQB53sx+k1gUygXp7vmLv0zZi1Jsv690uGbSHoClI7K4O09mU9YP6MzvWBgQVl7IVGWA89Q9SXALbB2XE99F3FLPedBWB45itFgdI7cIrklG6OiKcr23dEPO/uaE6wU1Dw0IV4dLjFCQJtBPYUE2b4WCS2VAhFRMDW8BuhpaT7VEKms+55Y3jYGJtu/buAMvxXLeR5/wmfwmDnRT4lFxzG6rbnQCCJIdeFltJCZHVzbxMgC9EjeLxTeooWaRgGjdPIBJFQbFAWJu9A6E0scFjZ8KfcOVLgsJptEhkYsmdR9+lOtq3KFfYYff0c32icftfEQM+JPHA+eB+CnQb9nGlaEu14YfJvJlDnZPmrrYk/w3UvJwN1QlcbFMQ3d4kCfDIumFMArQ65yUx4W4vkyuAeZYPUWis+u0u1wz9Nans6CnTWt9D6O40wUGK1loJnvCw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(136003)(376002)(346002)(6506007)(76116006)(38100700001)(66946007)(66556008)(66446008)(64756008)(316002)(110136005)(55016002)(8676002)(7696005)(33656002)(9686003)(53546011)(86362001)(5660300002)(8936002)(52536014)(186003)(26005)(71200400001)(66476007)(83380400001)(2906002)(478600001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?lkn4vy6j0gKk3xggUF4kszN76qdILMLIpl/D7N3qasEatTASbrubaRk2Noo/?=
 =?us-ascii?Q?bgkLQNDcqT19+cSvjQxp1/J9TDAcZ9moUmoX6Wo4HH9K0w47OPI/rFcEoGIG?=
 =?us-ascii?Q?Yn4y/s7e8ZQ5K7aW5NbEH8LXvIprhSMlhbCNWDfgpB1X3RyH312ESHa6D+MA?=
 =?us-ascii?Q?RUaqKTgusXj8FzMJ2+dRcadHn9njYXkXJJ7pXXEph1GQruidT7FeYzrbvjRn?=
 =?us-ascii?Q?TbnxMeAXsBVTgjvluSJnqDZYxn67bNQzV5YZmUST/uKOwEXD3YNr9ccwIpiK?=
 =?us-ascii?Q?qCy3b4/jwv3OUqKE2k4ISV07MCokLc6fcLf80q8ndnnkBeETodlo6av5sPkM?=
 =?us-ascii?Q?TNIQpt4W+A7+2/ftgpEslzNU7Gv50ozWC/xstlrCCAgu5n+DZXA4Zhas56tZ?=
 =?us-ascii?Q?aVuFlv/WelG1krgmKAT0o+gX1Hz2y+aO3EQzlCFrwgn2Br9KWGVvNsgYYoNA?=
 =?us-ascii?Q?O9EGOA3P3iRCWAZ6RxYcm3i8eBjMMzCrdNqI+ADlyxdLGpResrf0hz4Sf0tZ?=
 =?us-ascii?Q?BLMwSZ+yq+ZqNaeIpz4WyJyXeedj716c4ZbQ3zqYjjYeRKQWGSIC+Wl7WotL?=
 =?us-ascii?Q?SlnYWH/+4Xr4FXKGt41mS60Vg3hSPFuqwJ3o29X39Ay8Tx3trt3fYO8HhIo3?=
 =?us-ascii?Q?r5QWvs2hSQ2Qm9Xpex8S//LrBJ9UtOH1uFX+MnGU0UsC6FtqEf16k4fVDsY1?=
 =?us-ascii?Q?e0cdoNlWGoHycZFgOxar2nXcjCoVaVaAs+QVhkaOuVCNMOQxC6ADrM8inlDN?=
 =?us-ascii?Q?yITWEmQj0DbhltDBUuxmV3RO0LMlsQsDuA4q/WKN5zDFZjCXkZ4VfKtH81mf?=
 =?us-ascii?Q?HzvvMKdC8LmYeDlyQO6phYTKOIyfDRxpyXRoTMVJ5eN7WBPpCcLAkh6Q4bet?=
 =?us-ascii?Q?ah/v1yJASTQSDNEPT5ApqTt++l2OgPpiFFulv75ql8CvQttxPpsjytxpMzwn?=
 =?us-ascii?Q?KzyZoC0Y5Cwi3C0ecCMnTbQOqDcgfmOopzMGNfRnHDeQSYt1TNZrOQc77/eZ?=
 =?us-ascii?Q?xYq/eN16ESSSrHnmHYid7xZRDazReZPUsvjVOsw1I77YBM3afovnY47Yr7lv?=
 =?us-ascii?Q?oQsxdJgeVZYkhyWdDYOGTbCJeb6JvldDVsCZUcVt7fjFStdCKQckON343PuB?=
 =?us-ascii?Q?5WNIMbZL4VQTxFuqSon5qRpzu9nHESHmx7LPI/eHdUNo3X03BEWDf7uq7Bft?=
 =?us-ascii?Q?lFrgxosrHtSzQaoydusW7oXR9Mt7U2qRRsE0gn5X3G63mud8iP88FtqXt2IH?=
 =?us-ascii?Q?iwEPag0T0SRuKZUeaQnh4wtIcDqBFYYPXZtNccyT6cT7jwJLizqd62O8/gyL?=
 =?us-ascii?Q?sHylXzp97DIVE1ehc3M57M2o?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57ab8395-3476-421b-f632-08d8f4882527
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:01:24.8353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pcRGOuDVcbZqL/lp9F/NyuOVOfcRqky3pK5lU6WNo61ECFpBHgpJmkpSh3gSJD7frTMHu9PCmesar+yJAwPRTkbGtZ54PEO6/5LmxZWCalk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 05/14] ice: Remove unnecessary
 checker loop
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 05/14] ice: Remove unnecessary
> checker loop
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The loop checking for PF VSI doesn't make any sense. The VSI type backing
> the netdev passed to ice_set_link_ksettings will always be of type
> ICE_PF_VSI. Remove it.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
