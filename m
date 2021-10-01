Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB4841F09B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 17:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D579614EB;
	Fri,  1 Oct 2021 15:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0qhncMTmzLj4; Fri,  1 Oct 2021 15:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9DD9614E4;
	Fri,  1 Oct 2021 15:08:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 222481BF41E
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A742614E4
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFtH9EBtc_NJ for <intel-wired-lan@osuosl.org>;
 Fri,  1 Oct 2021 15:08:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62555614DE
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:08:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="225116449"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="225116449"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 08:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="540266247"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2021 08:02:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 08:02:07 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 08:02:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 08:02:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 08:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+xiBh4+dGoCLlAwuQP1C4z+8yQQgvYMFJgJ19OYTZfj8bJEEajn8a8zX1AuYs1aHDuTPwhKp+jg1rAhMxTUuEt+f2TX7I3o4V5+hZDYyciAGto4idsfzK2gWwtJsGvi8cFkQB3Kxn79h/Y43pKqVjixUn8FjMdRKDTDkdGFJrW9FWpn11S825J/xYjMev5g3G+yzS7aF286mu95xo7W/S8HsaRTGlQoFMG7VRhe1sVQ6+yR/Hchk6L+96msWsQZorHVikOdFsXkRottflfFwoJI7IInzhCf0vujN8WAMjawHz2MhAscPbWV59udADNnAMVVfYozvRXH02JHVcERfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Az6TIwDP7FlkY5iXdXAGNi70GN6kg/79NGe0CQ2OJ7c=;
 b=Qk7n3FCbcj3c8Yc3cJQdCRR/AM+tt9gcT/W6EL9iawtAECaukBvcHSBkPAS0R7KNOhGCUO9hgRD31zLvgjbZ/ctvkK4eUjprBAcRRWV7WN42VOk69FlwX0hajrV7x9DljLYjEZpAA8VrizMRR2A9jXxPxUYtBWpm4B+NESWg7YVz/ZEMSgrAT2hfZZmeWLTiyTYWwPbfM7LkqqhZjKRAFhm1mZctb+eeSd/3k81VXn1262fl+xPmicOkkH+BA4NJJHucJzXIiOFCftQ4DlfgVtAZe/XSYFAw2PBOQts/tJQU9IR1+XfZhDBCaKua6ZKLvxZMkN3U1l1nE+VqujEjsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Az6TIwDP7FlkY5iXdXAGNi70GN6kg/79NGe0CQ2OJ7c=;
 b=KFgvEb6XFUwu1VaqKHZcw2mfefjOTbnOjSvDCRy+bhUhgnXCvvIKmsQ5EhKy7CrZZ4c1Sa/jSwgxNUiZVKQt+xBPbXw/vpTC/Zr0ctDcMln91EOK+TInB9xrk5nS9yY9PRElZiuwuGhoCNxUwot2ogEC659VXaKfirrezHn3Ln4=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3575.namprd11.prod.outlook.com (2603:10b6:a03:b3::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Fri, 1 Oct
 2021 15:02:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Fri, 1 Oct 2021
 15:02:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@intel..com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
Thread-Index: AQHXqjnNv4iH24mRVkeZrKgMla67YKu+VaLw
Date: Fri, 1 Oct 2021 15:02:05 +0000
Message-ID: <BYAPR11MB3367264BEB0D2D3900A07035FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210914232505.8117-1-user@wasp>
In-Reply-To: <20210914232505.8117-1-user@wasp>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23f5ef9e-f2cb-4598-db40-08d984ec6eaa
x-ms-traffictypediagnostic: BYAPR11MB3575:
x-microsoft-antispam-prvs: <BYAPR11MB35754B65FAFBD736652266CDFCAB9@BYAPR11MB3575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XLri2bnufcuQinkfEYI92l7QV+T7uiaCA70mHvWbxkpuGmq6hKLmD8Z704pUZSZ+fEcTBKZsEnGjMKSe0CBzu+p/0NVYCdrjtPcyEma7dJMzrmqqEKeuvCX4qD9hXw/t2+6ua7gcOJeYWhv4TlK0pyKDxChvqeo7gPsq1AOaaRvfbCB8sUUAAn7xsUYnLwojYYPz9k2pzUnqFW94/yt1MEqQJotejptOVOkayQGra+H7wAZJ2+P1K2MQohelF9tHNh5SNC19X2V880oER3p57KS2OMQLftgkq0CMKSzXyc5z8/r07fzcPy17CYf7ZfymYdTd9ABQcanB6tcsrCi4P6Im6jgZKw9PM4n1F40dXyctQ3BkFIyGlp+Zd0EZjjSCUeqlao79zyhGHXXj/hfdA4IPDyVaRtbhbfc0Xfo3Cn2RvBeOsmo2/lNPWKlGalqa1IT+X+cwmnd0qSuY8rKt35Pm32zmu+EeLgiwrvA0wSN0SVa6ee+sdIY5qU6/2Lz3J4myOsmoQl9AaV9mmqtgT7AtsOKxBDGK1j5CHyN8KWk2CcOPfU3UHMomTUeUJiA19HauV3SXCodXgPQASSu1eVR8LooCur65Ey+09FGd2qAwuJMJrJ0+Jp4yHoFsTugB0rO8eRyKm/pHWmT4yADZmuy5x9Zw1FXl9CnR/cnVl+VBiOwz2d63dmoWvPKpubV5pi6o3+TrDxKbU+q2ehwBnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(4744005)(8936002)(8676002)(66476007)(66556008)(6506007)(83380400001)(508600001)(76116006)(66446008)(5660300002)(55016002)(9686003)(316002)(33656002)(71200400001)(2906002)(53546011)(52536014)(66946007)(64756008)(38070700005)(122000001)(38100700002)(186003)(26005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p7tXa9bQj9J4msxEuGH/whXYqUaKc6AzaG4qlG3ezpKsLNKgZpt7m5wJoFhf?=
 =?us-ascii?Q?Xvbn/DfNfPiiZCa2LAX04rWoZUbdTBPCPvLuX4BSlJR+CK+nCifeq+7r+r6X?=
 =?us-ascii?Q?wkPxh4I/hCT85zA4d6xbpagqxDa50sIkSaTUIwerL+NbHV+LRtMwVyQ8kErt?=
 =?us-ascii?Q?PEwZa5EAYn7U5VPEIhHVqKUcqtF7GNWtnK2um3fv1PKELFXLVgOcPJc7R950?=
 =?us-ascii?Q?kEPZ/+7Jt0SNnNRvNNB+G1AQUnIl9fOgZug7Z8tTOwmHQrB2TygPOldWjVZV?=
 =?us-ascii?Q?SnadE7DRPbKHuFcO1zeRnUVzie6jg5DGeEfo9KI/Vl6BBiJSUxLjYMbnTtYC?=
 =?us-ascii?Q?ZgxUJTqJUr/IpM20pHeJ0EQmv//4cBuPsRVIquS+lY5pS6yige0zycX798ej?=
 =?us-ascii?Q?zlzSu21JS//Bq9RPkevCY9Er3tgq6DOFMdhz6O60Vl+3hj2sKBV00jhVQ8FN?=
 =?us-ascii?Q?0ewqoC7iYXURJIV0qsKcBrKevINmsWLGbTbu9GtAsQiHCeHjUXq8KYceh/kL?=
 =?us-ascii?Q?Nq2xASxv2Fa2Dv0x0nrg/8UH7qDJq9zRYRAqJtk2G0QoSWWbZELqWFc6spPr?=
 =?us-ascii?Q?yZ4efkWCSvt+a4eptQIFz/KGs7bQtKDGxtramiEw/i+03xdZO2Jmc8u/L0YQ?=
 =?us-ascii?Q?JxVvyuiE6hlIMjRf6apUseIkhzr5we9iyoFsS7mJjzzesZTBlr7H+gWXov+R?=
 =?us-ascii?Q?8P2y2VaDlN0ssLc0GbZliCQY9+D+Q/SiJ27+/5ZgFXNX6sivl2B/TdlveV1J?=
 =?us-ascii?Q?jJmVsf7hUOVLTt7H2eFZY5VtLcPlc/bynudZNZ2x5bh/DeIErVhW42yg+Gbv?=
 =?us-ascii?Q?VDbhF5AhOCfRO3I5GTZnWKbGoII1quNVI4czPPEGFkwnVOQpPakyCmg3ZzN8?=
 =?us-ascii?Q?DtFXwu1EDgKebLGnsGy/D7d2KjTTjqcjEuq4doVAKpEFxQRHGc+HFD+GF31I?=
 =?us-ascii?Q?XdJ53YWXElmP6YahRLge7NxUWjzTUHOtJPjj/I31UBoQwjwzqo6gcBFsQGME?=
 =?us-ascii?Q?rQ3tqJGHsqHuzBveGN9XF/aTzmEckPQdR9t0qgkSO4J6gjZdncBXqUh4ETqF?=
 =?us-ascii?Q?TQV6Zpyj5Acb3ESQooJXavsen5sqy9PkTh1M5pzSjb3pHtCL4KdH2/sraneB?=
 =?us-ascii?Q?UBzmXAtr65ApsboXy5YCORl7/KxvS44/r81cFqH/BJxfk66+BCrjmtuP/L5N?=
 =?us-ascii?Q?blL7epXM05yUB4H+d9IlYNIaMHoAghJLR0kZVMgV4T7ACnpztta5jyyYVvip?=
 =?us-ascii?Q?j6OisSu9S6y6ej87U3iBwbDNsYawYxygx05KGFmYWGqZFSf/aW5NLbxQdsRz?=
 =?us-ascii?Q?9f/xgrifcQSiMQZSMCTPmWWT?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f5ef9e-f2cb-4598-db40-08d984ec6eaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 15:02:05.2195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctrwCP74PQ+QrFhRsASkUar0iOc6PAMzoJ+GjbVDr8THPfo0EjRRrfhktOiW9NW17xSnOZJLp8t9Wl903HhmRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
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
> Michal Swiatkowski
> Sent: Wednesday, September 15, 2021 4:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel entry
> 
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Correct parameters order in call to ice_tunnel_idx_to_entry function.
> 
> Entry in sparse port table is correct when the idx is 0. For idx 1 one correct
> entry should be skipped, for idx 2 two of them should be skipped etc.
> Change if condition to be true when idx is 0, which means that previous valid
> entry of this tunnel type were skipped.
> 
> Fixes: b20e6c17c468 ("ice: convert to new udp_tunnel infrastructure")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
