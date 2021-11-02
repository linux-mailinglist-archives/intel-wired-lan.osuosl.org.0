Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA68744293F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 09:20:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C9EF40132;
	Tue,  2 Nov 2021 08:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWHWuCzobDur; Tue,  2 Nov 2021 08:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB5D0400E5;
	Tue,  2 Nov 2021 08:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED471BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CC9360682
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PD5Btp03por0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 08:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 777756067B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:20:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231164773"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="231164773"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="449570193"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2021 01:20:26 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:20:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 01:20:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 01:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fazBxmwkin/o9NJbz8/w1nsK+jyHeb41eIX78zVxTR/SEzsfauf1K/H1i1vPxmsRZEg0diuJ4CBlGmCddJpuWD0lehSaMBUgz78UQ1hIFv6z0INMy12dgs4IiRUULyTduZBrOrJCZwSM7ZxYfpZ70ox6BI3EfWl2AnqLmMKdPEt1lRrbjSEznMc4V3Ld/Dr0NiU2CVktnHABx+Rebr0Sx/bux2bKs2RaetBIfqi7sg/TJ4Gu4ZSuvrVDeETFQXomoADFo5z7RjScnX/ij/AAb4ZKyo/L+6SGtPQaKUTx6pXjL9SEJJtX/A+CYD2kTeyMx7aT25nsJioLhyC0t5s/fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5xgg+BSv8M0vB/f71XNYRspD7Q4jMGulGpz6TDhjmLc=;
 b=l2yU4fJp6qTdXzROj2m+ofS8uWAUUPQBu/+7KDFm5qb6LfX7kD5uK15v1f/67LjQLlDrGJa0uMIYAPov7eCQWKHoY0bX1YxeLR8P4y8Hvj+bvjQw9XClK9EsutBWhXPn8UH0uaN2jNKy4k+aitZmQhw8r+GuEoEUWq9Aj4+CsZc3LP8VUcBkKQ9xErMYHPnLurzU7IX+Gpo7BpAwIbP2O8rci95cL9eIyedXDsGS175sPnDUODFA8+nZNpdoyZRU4eQvn4PNuz6ikYRa8LdU9NJoTeTZjT3Cz9ZPAhKb2szmrgudVoKXWPxrsoqixHt3wy5Sz4N2pnjMKbrqtf4N/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5xgg+BSv8M0vB/f71XNYRspD7Q4jMGulGpz6TDhjmLc=;
 b=qsnBprjVRmFEIikOiWQslAW0eAjrEeu2C7Px3pb9ZS61GYdhE3S8FE9Ab08NA8Hi7Pt0QusXffId3bDJVGgKQahHC8OQdqTCiv+HmTSvQGFvj+MqxEjcm8l2apS3sMQKv2EhxOGrEArHgIZCAuRHMZ2/M7U3aFnDEIA0v1iZyOY=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 08:20:25 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 08:20:25 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v6 1/2] ice: reduce time to read Option
 ROM CIVD data
Thread-Index: AQHXy4UcN7Jx6QuMEE+NV/sefF6h26vv7czw
Date: Tue, 2 Nov 2021 08:20:25 +0000
Message-ID: <BYAPR11MB336788506B6F7A1C24982583FC8B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211027224947.644211-1-jacob.e.keller@intel.com>
In-Reply-To: <20211027224947.644211-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b9f78c3-5500-4321-0994-08d99dd99f46
x-ms-traffictypediagnostic: SJ0PR11MB5199:
x-microsoft-antispam-prvs: <SJ0PR11MB519944E4F7CF4940209EFB49FC8B9@SJ0PR11MB5199.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v6o2Hp4k0tgpRuGEQedFbrE3cL86p6SHSF9P0utl+749dzonJUp/Ojf4NugLaUqND36UhWbSeoraNFCC/qmsnF9lMFIrUHpgXw8g22DGKEpYzjlXpDRkcrhPoWr1N5nT0gXrhgMJNHmREn8sqwYw2kPbOdFpQeFrIY+p1jgDqobMs7e6nS0/o8jXVW8r4q2DKyWwKdH6tOi1S6U/Yb+Rn6gvu4qMH8Z4vRN0Qf6MzVDhBmSybYjjt7HdFh1vepLfzLbFTwVv+dxp9uq14lDEpjgkWGDLEP+UWfD5+kEpemLtayyVhR4eO1S5zgL7zJEvWAaUvA+dVejpBb9BheZxa9ruwfVUZQyYGxeXbVk88frMM6BHB597e/zco5N8pEjWTv1HwjN5GQSPP98C/7tyjZrBDg1OtDkgz+UexKWqNP3l1D33UXyjBZ6Cn9UnCKI+Oh0giFGZZ7anF/kk/+6EshNFYeTIy5c1HOyAmqwcTt2N2/Gd7DiPGs7qU7e+p5nDGreQjHj9IUdibntOQr0rO/yGbcqBiIeEzEj4cxfMM5lOtcVn+RZv5Zi+fmsW2h92RkEEIJThFAIEhB2hy/eobcMoLHqlgu0rk0U5O+XaKRuJNc+IbnhN342B4QGq1yG93i5PaBxaN7+klnLipysPApuaM5xcjLihFvCt/6Re1OhcbOhG49OgIiVL2OZ6Ly7laDO8gfUkzWyO+XboBGNiQw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(66946007)(76116006)(7696005)(52536014)(64756008)(66556008)(66476007)(66446008)(4326008)(9686003)(26005)(8676002)(53546011)(6506007)(5660300002)(55016002)(8936002)(71200400001)(82960400001)(508600001)(38100700002)(110136005)(186003)(83380400001)(316002)(86362001)(38070700005)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ckWVUHXNyIzht/+tk+PSVvDu9inNn29Dg1/DFLFGjWhe4EE98NFlyt0HB36R?=
 =?us-ascii?Q?jD4DLttCyF8nkwymjykOsMakO594KNl++eIIt+OsMIph/GWzVZODUgr+xhrl?=
 =?us-ascii?Q?Gxu71B9bMyjgCsMt0fl2XJ+eSeqEYKypbEhwx7+bf5CQPAVdj7B9VfOsCHSk?=
 =?us-ascii?Q?TKZVqjadGUr0YrjHFFceD1oIp8UBCAYNP51Vu2WQfoya1Yc187hgK406LWx9?=
 =?us-ascii?Q?1prmXmL8XO66xWospFHxwkiqtMYxwXb87qpyWZ22b5V55nQDDh1RlWRjzp3E?=
 =?us-ascii?Q?nOACk6dZau13MH5jHtzuSHsepz1GukkgjxzJOoM6hQ/dL5PAC8cwnKsenHl5?=
 =?us-ascii?Q?pE/W+pCM4RoQU5rc2Dczl82z0ACJx/eLVFzVXScgNmnAAVdtI5Ku/l+dXWtj?=
 =?us-ascii?Q?TX4t4Lv9jxl1Q4qzrFWbq4tyKLtYZHzTFA7rGg/qKY2dP26QQjSCrFWMTXZL?=
 =?us-ascii?Q?C1UdU1iFzZd85zAO/btELPzTSRRpIQFbBNh02sfcYZomXayw2t96ETzScDes?=
 =?us-ascii?Q?K/Ef1Wtx43P5K1F0QMdcBEK4twOrIxZMOaerk8Ubkfme6P9Rb9WRi9ClMPzo?=
 =?us-ascii?Q?/8f2mjzSM5Vd1ygPQsYwl5TPZHS0mrBnlNjjVXHhuPcdTxWxWIAhF+TqFBez?=
 =?us-ascii?Q?aXuc9BPWwgQut801aNU5tHv+oNwFDD2MIIeZOILVKVgkN2NTjBZ4b5I/JXkk?=
 =?us-ascii?Q?xg7khFGxldnq5PojxE/liMcPIhPFz6zypOYYkQmFSpeLm3igimgmiXF3U3Nf?=
 =?us-ascii?Q?+/7LWijbEJhW7A30HzcW/2WoBTUhxmpNKT8+uE69tHrpRxm6MznKESyUJbQU?=
 =?us-ascii?Q?NglC2M9qOeo9XM36hKcFEntAxsSzxXPcpRWP5sTFya0dsPI0Fr5Tob0V/KqW?=
 =?us-ascii?Q?HufDGWO6n88/vY/ZXlPYZp8tI0NU+3TnjzcmzOsD4F8WqkJgR/zc5MLzO2N/?=
 =?us-ascii?Q?9xVygZt4GYInRgXFb+GdQ6BGbs2pDImmgUlColODR7WgLbhBZ0AOFI6OfNvw?=
 =?us-ascii?Q?J3ePw7ED9J5nlHOE328WbUJgjvyTx1i86T13ZI4KluwAlADGsyA09ex6BRYR?=
 =?us-ascii?Q?Jy49KVp+TIGv3J6LJeLg9/N7qnHlCTPkGNpGqUJTKGCsaTqNbYYz0ladTpaD?=
 =?us-ascii?Q?gEUHowvRTBiTAkwxTb1k9mZm+WEQN6gRpOIwjnEFT2hTL3naPFSd3Fq06kIm?=
 =?us-ascii?Q?7aBL6QlnQycnHg1GxwWR+BcxOk0I1TwHjUe1WKtItOMtCsHZWgynO2F32fD1?=
 =?us-ascii?Q?/5RuG6anfOFA1+Sat3Z8zKg7nyzgHox7nlxQpoRzXykBH21fJSTmnvKPK9rq?=
 =?us-ascii?Q?JR1yR7BVFMs+iYFyA7myhlBe+QnLkbJlaU9FWEFFcrqdf7kjEGQQdID9rSE9?=
 =?us-ascii?Q?IsaYLoqDKljxNPWyrq1BiqnGLYoBZYGUDncn/H25nTXOdwqhqDCGDGmmnbqA?=
 =?us-ascii?Q?hvXJdA+wtg8Mhp0nEwLbhsxG2Ay1GrQ+ZKY3uN44sLTZ2v7t0hF29mgVlpYH?=
 =?us-ascii?Q?B6IE2tOB1sMh3zp6Gzxi9dLuTt5DlygZuBCinkYWO8+tMH3AIt96gj5WM4hK?=
 =?us-ascii?Q?PZDLw6D/RVqnir0qPsoDloydVKZTJciDxkT/g6n8phiFe9sOU8Tc43wIW8hj?=
 =?us-ascii?Q?dw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9f78c3-5500-4321-0994-08d99dd99f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 08:20:25.3728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AKzL0BxBh2Ez0PnPbEJ5RGp9TI/1KwbogwNEi4GF9kQSmtOvAXsopgrTKHS0v3AQmexGlRiOSyN60aG6fV1GiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v6 1/2] ice: reduce time to read
 Option ROM CIVD data
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, October 28, 2021 4:20 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH v6 1/2] ice: reduce time to read Option ROM
> CIVD data
> 
> During probe and device reset, the ice driver reads some data from the NVM
> image as part of ice_init_nvm. Part of this data includes a section of the Option
> ROM which contains version information.
> 
> The function ice_get_orom_civd_data is used to locate the '$CIV' data section
> of the Option ROM.
> 
> Timing of ice_probe and ice_rebuild indicate that the ice_get_orom_civd_data
> function takes about 10 seconds to finish executing.
> 
> The function locates the section by scanning the Option ROM every 512 bytes.
> This requires a significant number of NVM read accesses, since the Option
> ROM bank is 500KB. In the worst case it would take about 1000 reads. Worse,
> all PFs serialize this operation during reload because of acquiring the NVM
> semaphore.
> 
> The CIVD section is located at the end of the Option ROM image data.
> Unfortunately, the driver has no easy method to determine the offset manually.
> Practical experiments have shown that the data could be at a variety of
> locations, so simply reversing the scanning order is not sufficient to reduce the
> overall read time.
> 
> Instead, copy the entire contents of the Option ROM into memory. This allows
> reading the data using 4Kb pages instead of 512 bytes at a time.
> This reduces the total number of firmware commands by a factor of 8. In
> addition, reading the whole section together at once allows better indication to
> firmware of when we're "done".
> 
> Re-write ice_get_orom_civd_data to allocate virtual memory to store the
> Option ROM data. Copy the entire OptionROM contents at once using
> ice_read_flash_module. Finally, use this memory copy to scan for the '$CIV'
> section.
> 
> This change significantly reduces the time to read the Option ROM CIVD
> section from ~10 seconds down to ~1 second. This has a significant impact on
> the total time to complete a driver rebuild or probe.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 47 ++++++++++++++++++------
>  1 file changed, 35 insertions(+), 12 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
