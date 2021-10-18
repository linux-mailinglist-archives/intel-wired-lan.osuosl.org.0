Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B8443236D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 18:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 741FB81027;
	Mon, 18 Oct 2021 16:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIxLpI5IeKQ9; Mon, 18 Oct 2021 16:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 618BA80F64;
	Mon, 18 Oct 2021 16:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 246E11BF317
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1021C4020C
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIoxaPvA5oIG for <intel-wired-lan@osuosl.org>;
 Mon, 18 Oct 2021 16:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A03C400E8
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:00:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289130834"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="289130834"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 09:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="661419044"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 18 Oct 2021 09:00:17 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:00:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 09:00:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 09:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXd1I35PH87M11SuxYjk2Yq2utJAm5eLV3Vh11tr6Vlg4lUTMWLn+vpISlNH3PD7CX3uV3G/ifbuOM6/kaYolaY7zaxF2fvsjOl6EmlaKOgaS9j9MP6wLal8E0t7fnqzLQJD34k+lCraTpPlSt8HIfnqFt13YSUPO5BrDyhUYsqo87FlZsJ+VL1vn8ppficworqpLKob9ZFYTsIbbXkBUuXI547+MWunEs4cnFLXoXyht48lQNmH8M0RMutn0MjbMdkEg3VQQYa9SMhA8oOSuMLSbKqjjbEyiDAPqyavmDJibqm8HqganNKiMDo/xo4Gcsj6q+BDeikS3K7QjkUD3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8RCQICs8ir+2sX/kg6rtupEaqqBWRYCC72E/NmhR/E=;
 b=U9DMouv3/urmjL9vS6uIgMXsc5QbGzT4EKP72bYbQj+WWHTWnjGTV3R+mp52qtWZIKmOWivwF32fByLGnDWq/EzE8ktmCjL1ixhuyLbmXKhHijyV1RqQn3UcIIJ6eUgDWLqgWWwPS9WJm9xZiUFWKxnj8l6BrgrJgzdyn5Ro9iYOx3s9KOgoyksfa2cHvxO8wE37RzXEH+YCFTNxI/4sjKxjptg0LnUpV0zJQM0LaAKWwqLENPuUopz3Z22+8xmWNDbZpoAZ1Qv2Lh4aWQQ/+QRcLr79q3hNtXwfuCUCwtxG+3+ELYAmL6LPxEmDoz/JV0sGcVgIzOHajX+JcAhyPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8RCQICs8ir+2sX/kg6rtupEaqqBWRYCC72E/NmhR/E=;
 b=rrAZtOYu2x69QQW5q/zEW1IXenfD++QYUJ6T5gTrT01A/VfACbRemS8L4b3h0MgfXwjlmP6EV44+49g1Z/pjSVPMivAbkJzkNJiZqzpWQnrt3Mvpxj9QQomXiTc2ayn0/6JWyLcH9J/tP7gc1o5KS1lQ5wbZF/y+VsoZUzfppHA=
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB3597.namprd11.prod.outlook.com (2603:10b6:208:ee::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 15:59:48 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9%5]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 15:59:47 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/3] ice: Add infrastructure
 for mqprio support via ndo_setup_tc
Thread-Index: AQHXvtYTHjltsUPxuEi1OPm0dSxtUavY8zBA
Date: Mon, 18 Oct 2021 15:59:46 +0000
Message-ID: <MN2PR11MB36142C5F2CFF716E0E3A03AD8EBC9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
 <20211011192518.1867431-2-sudheer.mogilappagari@intel.com>
In-Reply-To: <20211011192518.1867431-2-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f5c1c4f-3534-402e-b04e-08d992504f00
x-ms-traffictypediagnostic: MN2PR11MB3597:
x-microsoft-antispam-prvs: <MN2PR11MB3597F9A0AC280624BEB8D6548EBC9@MN2PR11MB3597.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCGd1OL9ayeVg7XA1JeQWLPurE9jUgsyMC7Vn09dIJfYy0fUFwFXjQF4OiaL6LrdKVcPlFkcLv3PkI+5d3UK3d2WA4wUlKFIzRILGIX3jdnJ+1RI0g2XULjALn2nBDdWkAcvrw5KXJ45fX/MfLG0TFogNa+ANVCbxiBcmSyLMG3hIye0xQRoVPzMn5Ts92mkqajii8//j4+dmrMc9apQHybNt+k3RTBjc1PdZ8SZAU1QjdoNo0nvmfS+EuJqU5QN2AUMr11aXsUbGibpEmTqYlEeQk6KuknEAG8FETivvuI83bWLcfXEpIRw/dbP416mQVuVzU7P1cwnEmrkdOnDHh3L3fdfDZgJRyXd+emyHq3xOTS8Aim2WggATcbefelvFr5ptNRzxNHcewgcXvV3X9OXVnrHrhos24WfSS2cJslCQNmqZgaLl8J/Mp6qovTTeE2XB9fH0kFTQ0rvy4rFmIBfTNB9ydZSKUuEyLSxUYps0VhaKyZw/pzFeDd4fyegOQ0sOyw32B5jkEMa/b6aiujM5dnM8YEL1nmjC+wUIy4YYI7PdyzqPZsz4pybILaqbSYZn6OwdNIwyAJLEZXangfUn1NJXPjOB8iCm3daXSxtdipOg/UMz0Oyu8uU84zACPWUVNv8d0FQpjSvFf9/9koz1opOWnCjoXAKfCQ/8kStbuHAcT9hhzSWELgY6FuVzlIBK4GJLxAy57uIh2FcfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(55016002)(7696005)(76116006)(8676002)(122000001)(86362001)(83380400001)(52536014)(9686003)(71200400001)(316002)(2906002)(66946007)(5660300002)(186003)(64756008)(66556008)(6506007)(8936002)(82960400001)(26005)(38070700005)(508600001)(33656002)(66446008)(66476007)(53546011)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tqXQAXtwE8qM1H5J6yUl3WpehkzJZJlQ0GlywvIdEjiwA5Nhi1f9+WDyFxl6?=
 =?us-ascii?Q?oqGlIR4cDvDjTfHA2xljQN5rEkS6Da1PnTly3czN3X/V65Eqm1YyF7oKAy+K?=
 =?us-ascii?Q?7HvJZU0g2Xcp+DEXPKU458OXJgHvQuRP0HMuqCYgtM3qTfgW5oAhP8+zfnmP?=
 =?us-ascii?Q?uOJbV9kAajEtYW+Jvb46JAQJssa5M+3WxMFxOx7ImftbkgmsFHSq02BAKLE4?=
 =?us-ascii?Q?IQeAEoRDbsOTupxBoqZiR+iTEvgJTYkH9ssAcg5Z/PtHfX5N7mansk/K3T+C?=
 =?us-ascii?Q?Ktb6tNVAccFJrtHfLVeDZpsFCQWziAHP7HAPCXQN3Dn9zlkQCrNvhQORO/tX?=
 =?us-ascii?Q?qPUCWx8mvRCnw/WkApKkaFTKojd9YCL0apwM1CGPWOMb3/zcpN2l+U4l4UXA?=
 =?us-ascii?Q?VVFOz6w0Cry7i28STogtabNhn6rdaPC3qikXUPedg/RPo10qVEiB/EOZZr2u?=
 =?us-ascii?Q?0vMB/G+abzYSWdajzX7QoFtP9pDkoSFJi6DavqOlL+syjxtX2cqXsHq5385V?=
 =?us-ascii?Q?BhoLJ+eY17zZAIMRZNc7B2RysKL3UhoXNMZ5vqbz4PKrYLndyBZCyui3diMo?=
 =?us-ascii?Q?zm5MOrDTD+tc8DN1LCTRUtnR4X6l/EvcnYbQna32smhEuSSa4L7QOzSruDZF?=
 =?us-ascii?Q?vQkC/fTfh/eSwTw4h2oO8ITPzBvQ2Su3rT3Zic4SZKQ7d4sqiTof6H4s8P+X?=
 =?us-ascii?Q?13U/HRtNKt8CqNRrZJkqxdqZhSjp0ySOx0G0S8ZPOxa0eg5bRKzIn8BJdUk8?=
 =?us-ascii?Q?Wkfd+NIu87rfI9Dzw5AcZyuagL+5EVEhfLWFLQ8PWxWAPVyRjhVNQ0Cm8ENF?=
 =?us-ascii?Q?A/xdNzXg80kO79GVj0rj4lTA6CRsaOZ2LtFECOxuNpxAkxx8RXGqRX/vME0x?=
 =?us-ascii?Q?yRqR4vn46K+z3EOy8VKiXn1yYC4KIv2GX4K8YB4Zgu+m+igxok8NO/mnW7K1?=
 =?us-ascii?Q?skQH2pklHQUc82ndrbKkvpZsZzkw4pqn66HCmpnKLHMQ3RhB9UfAQ4sqRczT?=
 =?us-ascii?Q?KRIublJPv5v3BFf0VBjTwELiGo0YCQSP3zNWW3qcp08gZKTUA49WXtGO0UvT?=
 =?us-ascii?Q?NN5fN7NYP8vhKITU5FRcn5Jaz2wZ26eVLF2wAHM5HYZW0rpbbRVQKb/TL8m+?=
 =?us-ascii?Q?UlfDknEAMlWldLKDzW0rpI4kR9H2y3ycFxfiVxMlqEuUyMPFf5c4QJBK5cu0?=
 =?us-ascii?Q?MQ5hEJ7jvd3g9LIXitCDeICKIizIJK950YoLpiFidunwGmc4Cw8Vva5eYkkg?=
 =?us-ascii?Q?eTNph6Ydm+d5aNKyQ7rr/6WvXoLeaBSQqzT/80pbB3l+Bu0UD5nIkj4huk6d?=
 =?us-ascii?Q?vNATsr189LoeGdRFhrUTbsRb?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f5c1c4f-3534-402e-b04e-08d992504f00
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 15:59:46.9170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vKoQo+n93i5rkrr+UV5oSISrQP2/nn0VzPmlRuEh22PrO9zSH1UXrLDDgRASQnLsEWYTlDDqGbzEIJ1Mu/ZNYR6rmWqBgAeIFbYlAeEcxRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3597
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: Add infrastructure
 for mqprio support via ndo_setup_tc
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
> sudheer.mogilappagari@intel.com
> Sent: Tuesday, October 12, 2021 12:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 1/3] ice: Add infrastructure for
> mqprio support via ndo_setup_tc
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Add infrastruture required for "ndo_setup_tc:qdisc_mqprio".
> ice_vsi_setup is modified to configure traffic classes based on mqprio data
> received from the stack. This includes low-level functions to configure
> min,max rate-limit parameters in hardware for traffic classes. Each traffic
> class gets mapped to a hardware channel (VSI) which can be individually
> configured with different banwidth parameters.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  78 +++-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  31 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 201 ++++++---
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 384 +++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  15 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    |  68 +++-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   7 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   4 +-
>  13 files changed, 673 insertions(+), 138 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
