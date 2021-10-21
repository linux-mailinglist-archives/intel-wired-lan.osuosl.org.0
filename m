Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 895AD435D38
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A7EB407AA;
	Thu, 21 Oct 2021 08:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHe3uMyhuOgP; Thu, 21 Oct 2021 08:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CB21403FF;
	Thu, 21 Oct 2021 08:44:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6628C1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53AA740297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMW3VUjJ0ljZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:44:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67D85401D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:44:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="215899742"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="215899742"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="445259765"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2021 01:44:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:44:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:44:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:44:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:44:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UT2z7LCYt8cboVmID2mm0QWs9hTGHvWigvKCWd1KLe7mwBY56HbuT5/UN4WUD5erO0Uh6cENEfiUsHc1gHlhwqho5FkT7MUHwVrzvlNpmHD8Nn7CA+KYITo+yNvxONGLajhGgpZuCD+VxNRcjorfKHx3Of7YrxHyC6O0PSoRxzFOVMh2PNrLrPx5aJWBc0hniKgpAg4s862XOQ+m2kiW//MGqmINC7bZ8V4Qp1Y+cPiIrdpfToJ24VjyhH2XM4qNkoJSQgupLGlHBrVAi5qok+i4TBp/Qh8PYaZku2yOerBeG62dTkhZjterM6aDtdNZCMOwuhCD5zEiW4k9DcnFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKLp0t7cGwgpiI7WhI3UufH1GG7xWg5RG7MfsYzc4P4=;
 b=FB7gnqZZJ6WWfdfGe4dDIhhb6BCw2iK69Z90sviAIqEZdhXSI9aZkxHpmTssVTpkKozj9VA4EYbfZm4BB0q/ttWzOLCG65QKIBc4NKQ4ZoGyaiqmFOS0pu5oZVlX3IwGXajcvj8/Yqw3yE5wqBMZGgZw5cH2ChFcq7cQNZ7VbNe7VEGfdYiiejTcgDRvFaniw6Uwflm5gXlJCEEQhW1r/+KMNN55v4jfJp8YMCb8lBkUO7f5Zay7voeGTawBL3JzriraDr9CgFWbLLSbt2BcER88RtZwp8YShXwc2kasSD/GRH7uv0O2/ye99VRY4XYJ0EYFu4bPgDVrkweNE8QCBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKLp0t7cGwgpiI7WhI3UufH1GG7xWg5RG7MfsYzc4P4=;
 b=XlyyxDjRAGInHy/E9yc517GHUa/pjSHz5Iz/pNiTvMQaPddlOEMnu8OZpJGecqsezm7+XmypHNJGBGSUn2BmBNZzzkB3w+rGYb0LImHNebqYCxZh7AeE8kAJhaeRjqPvB3adFWl3+FAl76e5H/J5KcfCEbzrTuSZQfDpvm+0IsA=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL0PR11MB2899.namprd11.prod.outlook.com (2603:10b6:208:7b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:44:03 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:44:03 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 8/9] ice: exit bypass mode
 once hardware finishes timestamp calibration
Thread-Index: AQHXv7Deh5hyX929RkaCry8AB8vLGavdL/4Q
Date: Thu, 21 Oct 2021 08:44:03 +0000
Message-ID: <BL0PR11MB336369C80106914ADBE63008FCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-9-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-9-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ef23ab0-a551-47c0-c2b8-08d9946eef6a
x-ms-traffictypediagnostic: BL0PR11MB2899:
x-microsoft-antispam-prvs: <BL0PR11MB2899F17A7804C165949756E0FCBF9@BL0PR11MB2899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1aCaS6QhT9/y/b41aElacyPm+5tl6jx4VC3uFnT6wQH0clRX3FQn7bufAPI3AR6rbUhcCn7geoZJto+dgiv+zu9KaehgI67IHjzi/mzlvhRDfd6b3ljJOkETuo8gUurpAvb3Oibp/Z4x7rZSzzvO88LO8wZe7aAZe9siLwuASBp9DfZjwU2UcrF4BscuCBW/oCq4IcAQEXrDHOUVJniynZfoSDaneMjC1LO9/vjkyF01W9PyZn+lkeKGt0YOB2XDF9ijmTDgD2UPSByoWCmAUsU+/pRDODgNC4WokSbKLju0PK4l0MpBd6+UtAdPrVvd2aAiYv7cUt+cw/sBbwU/qfc1hqWdYEz3RRWJLcrYKK4ZqyQQNRCT/HvNH4AmRI1iEHned6fk5x+klDI59TOFdjNo3PpY2uZOjV/I86lsJ4kkDd6/kjHbdrSttTaVTgYyXXsBrx3XYAiZ3Hf1gGOKL236uAHxU0yPaKC1L91RSqMn/2IyfKUA0O4uBjg0UbYizI8u9fGQyVMhLPRivNGUOsAIK4cY9yGd/mHnn11KGDKWOWF3x07m/4OhJtEP9sgr4nuGtyBL3HSJILNeCnlGEuP8v7lX5nLN0kDYPLfeA0Tkxn9oUb/f31qZi961Ke0YwJMwStaszmxDYBe0kO20Kw0gGa42ZUq5DYA4b2xeSxDkW88NVebGx1A0egMmO58uo22yBV8ciVYBhjxfxRc0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(38100700002)(83380400001)(122000001)(33656002)(66446008)(86362001)(71200400001)(66946007)(66476007)(64756008)(76116006)(66556008)(55016002)(8936002)(52536014)(9686003)(82960400001)(6506007)(7696005)(186003)(53546011)(316002)(26005)(5660300002)(110136005)(38070700005)(508600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lsgjCBg0tTBaqtprz++UfjvtVsaQtWfXGovYAKQegQnrmoMoDlxZXuEMquKy?=
 =?us-ascii?Q?o1GKa9v0zii7oBdORmUbp+HyRG0cDbtieAWEH4BdNGaivT9CagJD0RUMlpqn?=
 =?us-ascii?Q?Zwr9eG3+55acJ6gKI/NxtGwoNo1JypdxFjordgpHBzGhhnZ0cnNOZ5Tw/f+U?=
 =?us-ascii?Q?62as/x8y5+Hq8RQ0iD/0JHPTyqqL0uUZw8di8ed0hd4oioZzznaWB5M41Au7?=
 =?us-ascii?Q?ms5Adc6fcW2SOoCjeoJWcXPdYi2qUx8xXdAnfl10esCY65+U2+nasn4+dQTh?=
 =?us-ascii?Q?R277a1hv6UGotc0JY6l9A62DAR3Bqtj7ZuKyUQIZQ5lrXJEzwRHb0OJqbJNh?=
 =?us-ascii?Q?nWnLEiF6hagJO67L1clSUqsiB9TMB4CZfcPpQyBjsG6A/22d/9Goayzvh+vH?=
 =?us-ascii?Q?W2/LK8icgBzaxlwh2JIvv5sPuPEurmZ5muaDABW3hw+tURkD3ljMCr+tUYrn?=
 =?us-ascii?Q?svWMZJfd1Engg/JN7cebt5Wte2b9P+arjM0tqYgMVz8Tx0r/5wcUb6mSec0y?=
 =?us-ascii?Q?JZcgJT4XY4GBAk3sKAQoRmsMaC1KThLTFwWJ4wW+pHKd+vFLHr84uY4u0JSX?=
 =?us-ascii?Q?hDZUQsub/uLEXG034Ixpvu7iEDZ8jMMp3mjgLYvXNniXY7WJQND5B140Zhkb?=
 =?us-ascii?Q?Hsge6HqPJ3QQJKHRvHch4Ei9Fc7pw63Hu+LsLxPJaTk4imKCIXtzym/271mQ?=
 =?us-ascii?Q?su2UC+LzMk9/o29c5VkoI1iUA08qQCjHKIktahVUWxTWAzpcZfC/EO2+PPx4?=
 =?us-ascii?Q?D46qRRhj7++YINJi6UOI1ltSzWFAWBrrZihg5b+kx9NY0punYOJMjRnqHdwD?=
 =?us-ascii?Q?N2Be6wWEuUmeadV6iuPE8CAdquzYIzkTpwvqnexHEeP6kC7agByCmfFQFEoU?=
 =?us-ascii?Q?9i3iBQTTQlP4i/kmVLfe0TaLv6jCUw4jW1Fh40YHBRROBkUdGzpUAd5Zs6kz?=
 =?us-ascii?Q?JjjbnMNJqG9I2CkH7ktUUWSQU8abZoscg5ymYrpH7OyVDIDRuD8OaHEqg6BX?=
 =?us-ascii?Q?YrA3mtSdBDY5T/XSpF5C1dYom3oNDI++gcZZbcBJY277y57EKEos9sUV6glH?=
 =?us-ascii?Q?dWqy5ZLUxIsmgOPCDvCtiMEpAcUQOflZaO80hxXIEbedyUaLVZB4cydc9Lnc?=
 =?us-ascii?Q?mNO/K33xFwcBLrGvEAwv+YXT5xJulAj9i2QWfVJjgej63nx94Z90Rid08+dh?=
 =?us-ascii?Q?e2altJLoj7/sopEZcXZ8q9ThZ99RdLA1aisFGwhSiTETmZPC1NSzc9XrZ/nn?=
 =?us-ascii?Q?kkx0rD8kaGkTyConLqBnSKIpcykp0GXnmfCH6Zdd+l5jd+yaULBsFb09dnaa?=
 =?us-ascii?Q?OHqfTGVIMWTF+Kjy9qAFa8EF4By2QHlFXluISTQAGrr6PDjXROzth37hADgc?=
 =?us-ascii?Q?AGhV7rqE8IyUdn1qlu5x+nABdy7da2M39f4BqxovotlyVeAXLPbeQw8fa5Zl?=
 =?us-ascii?Q?LELAT5u6SuI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ef23ab0-a551-47c0-c2b8-08d9946eef6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:44:03.1881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 8/9] ice: exit bypass mode
 once hardware finishes timestamp calibration
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
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 8/9] ice: exit bypass mode once
> hardware finishes timestamp calibration
> 
> Once the E822 device has sent and received one packet, the hardware
> computes the internal delay of the PHY using a process known as Vernier
> calibration. This calibration calculates a more accurate offset for the Tx and Rx
> timestamps. To make use of this offset, we need to exit the bypass mode. This
> cannot be done until the PHY has completed offset calibration, as indicated by
> the offset valid bits.
> 
> To handle this, introduce a kthread work item which will poll the offset valid
> bits every few milliseconds seeing if it is safe to exit bypass mode.
> 
> Once we have finished calibrating the offsets, we can program the total Tx and
> Rx offset registers and turn off the bypass bit. This allows the hardware to
> include the more precise vernier calibration offset, and improves the
> timestamp precision.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 195 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |   4 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 411 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
>  4 files changed, 611 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
