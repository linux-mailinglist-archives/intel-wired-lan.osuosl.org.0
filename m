Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC64CAF40
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:59:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9F5F404B0;
	Wed,  2 Mar 2022 19:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqhW3RIc2Hos; Wed,  2 Mar 2022 19:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B4FC4048D;
	Wed,  2 Mar 2022 19:59:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D0B571BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBA0C8135C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2fhMW64hcKGd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:59:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C474D812F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251179; x=1677787179;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RZagknPA5tRDn0ljcdoYFbac65490gcBOaqQuBHIUoI=;
 b=DSVhX824NwVZL4ku6B3VEc6ADvPrFAVqsIeEr8zcjG4BFLhUQ2oYfbAE
 lz2tc9fFjbDXIos7ajF42+ViAayK89gdchedRLbQwulwJLREWgHvqNuUm
 S+i1kOdI/94PXrIkA+G4CbORIoGLvDxUOY02t+cz2XS+BRE6aHcNFP/8B
 uYMz+Tc0Gd0YUrxC3g1aHjH2TIty6AhHqWoa1TpCj0ui9S+U3NozfmJQj
 wvBTPktfK9NquTSi3V9fMXi+tz2sSvsWrmdRs9zT7rVE1o3Xff3YMKak+
 xBuxxYy8pD/XeuXId7EpanIsvMTbzhMYFMVT93bCRanuUo4+z5sTTTCer w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="240910018"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="240910018"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="508322632"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 11:59:39 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:59:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:59:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:59:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 11:59:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+WRqrdocZad6zTYDDIYC+HbhC0yVC5jDOkyQ34d9HPONStdD5CDd+mBv6+DGXD/srLqCIh016nmlGUteRHYRBnuPQ/qQz93/6avJpO1MtmSSYRy9V7cto82zcsnaAMUXifQZTNAOyb2qlMBTg8yx111cKY/tqeIBOatf9D9gz4Fp7DH1tCGtmgDkkLBd0RLK7zNj3J+JWSiNQHaYdk44ciL6JMrRBPhx3ibEQRAuI6SI8pdoXIwX5cxKid8GL6lUC2pG8UJPe3iGl6ILhU3W620KqI+f7Y65bf4s5Jlq+buEs5EH0N0hq8YKEhiwQBVQIi3SZA8dLPdVT7aeg4sYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lvOMy5WORr6PDx4Ekl/+xyRKXmMqV46+x3xO7TGKxcs=;
 b=RmHgbcDjzG3H92nJf8qmdcrODA9bX+mcEnVhuTRPcW14nj+Bg9XMP01chvk7WAJjD8lnc91mbEM6KIz0lZjJBNCZcCGt49H+wpBah1K9xfqpqsvIcUWiRFxA0zgoa6XhXVy0QqirPVHCAqLwvzNRG4JCrOW8JPW/QtA+58TVVCKkAjoZyELr/0IOC0gkdwjeo4bWa2/177DEgrxL3aKhQRhYofV14LtpHfqQ2OrSjTllY6dQDWlX1JF1eZToBHRmtStvn2Sv+/4w1DWSlWXa+w8otXZb0XX3MM+Svs9lEKZaODfyLlfqhkocfiBMKyzA76ZJAr32ujsr9COiHIlGcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Wed, 2 Mar
 2022 19:59:36 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:59:36 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 14/25] ice: introduce VF
 operations structure for reset flows
Thread-Index: AQHYKExcny6wu9NT20CCegXVhnNpBKysj2ZQ
Date: Wed, 2 Mar 2022 19:59:36 +0000
Message-ID: <SJ0PR11MB56297613047AF773B305768BAB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-15-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-15-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3346ceca-74d1-4462-a0e3-08d9fc872d82
x-ms-traffictypediagnostic: SA2PR11MB5049:EE_
x-microsoft-antispam-prvs: <SA2PR11MB50490481E86A2FBAB2D7E3B3AB039@SA2PR11MB5049.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LdSycVvw9GpU1F1eoqb5ZYBDHK65/00fAMt89aET/UwGiKFZjvkoHgHAFkxRrQ0fSetHXudLKDzSJNcja3Ie/apWrgVkuzDRFMJrEdpEIwnUimqu/31ZuZBOxKjyn8Bj/fhwlkpH5eXT4dodcKv5VrpGKnxNWIj/39gTXqKi6SwmvQlSwWE9P+sp9Rpl42g7ZUC9p753LhUOKfRwNXqP8QljssqHN85tguWI3E4m0MwS8LekjVmr74gB8EhSc3wks3QqEOH5rV9t1WhMC7tk6CtStAJvPEr/l8SdRf3CBGiKxxkY+XFxJRb6B/b65IG4DAcF1YNOdwjYQfgI9MgkuQ3bdaVDRndMDns2o68x12tIAmhViNUYhDvDBDyV6ZhjAxvLv/iJ7Y5kn86gZ82dA4ovgf67ixYrxwqALbZ3Txz3nocfqRMZvstFYSENWNU4WLEc4Ny2FifTuDfQWKPNAdQJslvxUF6ZQU1mAvr/LP7mrxaRBNuOx4QN7HQabyDLN9i2WITnuZjsLxtbxH6esOkhcUqOEdIGq/MwpuuP726q/UKraGfxEIbTQc3P7DjigvN/BWcSAnUj8GFNwNSjA2T1KU5IIELuWZtlUrW5LwJjRA19ZjFo0VJDWEiWtRX6knufLO7mJ7RJTnIZ2YCdwLqiKHT48Td+tFWKecZUI1cbfmbTpsFl4jc+4UoZ+cCspTyFFKOmuZ8jqZJeA8ABrg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(9686003)(5660300002)(26005)(186003)(83380400001)(2906002)(38070700005)(76116006)(66556008)(66476007)(66946007)(86362001)(316002)(110136005)(508600001)(66446008)(64756008)(55016003)(52536014)(7696005)(6506007)(53546011)(33656002)(122000001)(82960400001)(71200400001)(8676002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9wIoPbLfUKoK2ZzHYPd1jZ8tMVdIBWxtrDpB6aes4ZfgBcVYcAU47onYzNk/?=
 =?us-ascii?Q?cyFlQCJa6fyA5HFymWhN9E63koOhd5dwtclBqizX9qvJ5vqsWusq7ofydb1N?=
 =?us-ascii?Q?b6HBYYZPKitZhlMJMUoGE9hMZQPSItW4k0a33BtfmR+iL5PaIvP2y3fcwTUo?=
 =?us-ascii?Q?ekZDvLP52azDE8NAWzbRlYcDbj74bt+1xAccfNbhrOxg18iam5fB4L2C1CxM?=
 =?us-ascii?Q?//m7S8oxCnApwPFH2ZULPw/HKHqH+Gh2vIaS5/vtg7IQjn1S1h5Te2F5AtYR?=
 =?us-ascii?Q?x5hCVvP3FhN3qPLt/onlVeK2YA6xeftSjsdGOVimT3/Sb19uRatTRSRP9YAz?=
 =?us-ascii?Q?EMhXyU1CEbrC9S/6doFTZ5czisFwff21n/9deQm7bRQWAUSIODBDDXYq8Lys?=
 =?us-ascii?Q?zutJ3dhmY6imJQzpan9dG0YGEuZjto5WvX812cJx2zhwT85UQ0WLFeosGA08?=
 =?us-ascii?Q?a3xPM+NShu/W4L22AvOqr31IEkVlkrHmEWYs8a+HGDHjauHbSMJay8WCNoCf?=
 =?us-ascii?Q?OYI4dlCAwwMj8XAC6S9sfOogPuIHxFX3YfYWxQXUk8Nf4+VlDJWNhTYUPinh?=
 =?us-ascii?Q?1aOvaojFCaX9lkIHWDJbhLGpd+dhCYt6h3kE1tlS2LcwbqXzp352KYb2YeES?=
 =?us-ascii?Q?VoEvHOF4O2AbgeRGTITdfmPXZoNPRDSyvuYvf2EDH4d/CBGoy2y6g6W9w4wC?=
 =?us-ascii?Q?6ymKtlv2NHhbmRDijin+iiEKe7hAjMeWpJfQGBqMPx9nq/e6nKbFVf47RCZG?=
 =?us-ascii?Q?48HD0FJCtZ0P9kSTWP6yCbq3vskONkpJ9e5ieqdivGkjiUpQKQ9Y6w6WDac1?=
 =?us-ascii?Q?fbECVzbU4Oxqppj0q7IHFcgFVJQLPsfL050VPrp1IzSHuZL9K5IAZhTolCOK?=
 =?us-ascii?Q?hzYuda04uZaTt72ZQlO4KbIm4hDH04B8hd/zfVWCRo+CM2VQ9E16kOMJM3J+?=
 =?us-ascii?Q?OWEn9JIuy5Pakbrx4x0WsdWh3hj0OVsLpN0SDKmOU7mfmdpcwxc4tYemsSHP?=
 =?us-ascii?Q?YwR2NHcV15KIsA9wSxfWZQW7upuL7rSirZISPZLKm1KftUQ/m/fPx2KDLrSg?=
 =?us-ascii?Q?mcwhJLRGwvCvwqaRou3VkIQd6lRp7t+UFrkOpRutF5zp+mcir/sMyGy1Ab2z?=
 =?us-ascii?Q?Kn/phP7n1Oy0UmZAr0dRAm3fbetE0o3yF0OWkZHlM7Lr5sNZ7FstOOzMQ4LI?=
 =?us-ascii?Q?LnqI/G5z2M32xkKCJmwahk/uI/Piys9rpezXGOFhZFpIVM+H28F61kCLUUzO?=
 =?us-ascii?Q?lnUNCIHBpg5EbxyI2J3fouvMhCBQ56d9Ti/JGMg5V8zp/uN0ZMyoW7NldQ78?=
 =?us-ascii?Q?SigDTLtwlrmuJ6oNZUJ8eU+EBwpkKhyygVG/h21qQqqZE6jK1bAFK7ISxHw2?=
 =?us-ascii?Q?LCGJtVOVeKUxhN/UiJHwuqMhV2HoT4/AUzT1BGP6NQT7V4/9WN7jBC/C++Mq?=
 =?us-ascii?Q?gCpcQuaVBJiDYBmuevskhLu4XUKOh2JLdCVtdB+U0DEJ47ZCTXGCReYNF1Ir?=
 =?us-ascii?Q?uIYnhB7YkybTi2Y/I8Kg4+p2RIogph/g3GhEIa0W6U6C3zRj/FPNEyczYfF+?=
 =?us-ascii?Q?6cKC9mZibI79iDhoYwG0xKUhXoPBP0jbuzqr/7btkWPrTpBAfT4gr2OdxI4K?=
 =?us-ascii?Q?iRA3XOfPYagA7IgoJvPkwEIhfxgnVcW8034K9f+gtMqX4DvkYZNOoCrH4o9R?=
 =?us-ascii?Q?wSF98A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3346ceca-74d1-4462-a0e3-08d9fc872d82
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:59:36.2862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vmUtODhaXpEZ9WRh+Eg/2ZlKx8ZOrd51iZU9P3VjqJuQ1oalUytLtwJQNiEci8SdqPiPdsKHrirO3zqnjW9+tZ8pmVLgRznUdzfgZoPWqcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 14/25] ice: introduce VF
 operations structure for reset flows
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 14/25] ice: introduce VF
> operations structure for reset flows
> 
> The ice driver currently supports virtualization using Single Root IOV, with
> code in the ice_sriov.c file. In the future, we plan to also implement support
> for Scalable IOV, which uses slightly different hardware implementations for
> some functionality.
> 
> To eventually allow this, we introduce a new ice_vf_ops structure which will
> contain the basic operations that are different between the two IOV
> implementations. This primarily includes logic for how to handle the VF reset
> registers, as well as what to do before and after rebuilding the VF's VSI.
> 
> Implement these ops structures and call the ops table instead of directly
> calling the SR-IOV specific function. This will allow us to easily add the Scalable
> IOV implementation in the future. Additionally, it helps separate the
> generalized VF logic from SR-IOV specifics. This change allows us to move the
> reset logic out of ice_sriov.c and into ice_vf_lib.c without placing any Single
> Root specific details into the generic file.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 318 +++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |   4 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h |  13 +
>  3 files changed, 196 insertions(+), 139 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 91d106528b66..be6ec42f97c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -478,16 +478,6 @@ void ice_free_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
