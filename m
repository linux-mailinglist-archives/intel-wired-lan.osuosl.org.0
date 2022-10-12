Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC35FC69A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 15:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38CA7405F5;
	Wed, 12 Oct 2022 13:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38CA7405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665581883;
	bh=2LcvGTadaCchTQbIK9dOHB+7IKZFL564JlExjJWiKPM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3JZJ29lcAn9ClBoJQMRviNJO/QIdcACVEdPAMecbEhb5NVxkjkPrqMT/FxVeyvNY9
	 tpO04DJL3g8vLaFT985hSi+T3b5hriq+mkOSOEcR5D9kjMTEPiabNUCbZZmadGtrf8
	 HMg3EUou82lwWpeR5N8mqGoW6W2auj0pZiYlC9E7W6k2mycMqatQUpT7+9dxCOqxhs
	 kaEdL+oQT9qwf3Xwt/SmYl366b9zKeMGP3sfeMMkGCLiDjwvZ6oqKeENBzds6MLmWc
	 c55d5Wd5xf2j0QLJ1eSrqska6xOOfWQuoIz7Lacez13QBjQCSvXfFIHnytLdcDZcfl
	 CCTKGShHtGWMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8RTjdDcE-5u; Wed, 12 Oct 2022 13:38:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B1F54021C;
	Wed, 12 Oct 2022 13:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B1F54021C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF6D01BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C676B40086
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C676B40086
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrkiDvKAG39K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 13:37:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E46C440062
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E46C440062
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:37:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="284519793"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="284519793"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695473796"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="695473796"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2022 06:37:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 06:37:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 06:37:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 06:37:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ecbr0i4vf8kjZDdEZYHqcA6dvvCgLenuzhEbLPeCaVOEcj53xsL9SqHZvtIVchfeIZivztObLbRfyKyyWkLBufo3TfH8Md3Gxoov8UwIexFb5uijSI49KIi7kQnDzqFyrFEYgvcIz9OE2HhlMhHL0jVH8OR5d7nalcXX0NGzFv4dHkkIq4HD6f5yKW4+mrYA1lUQ4zp8n50ctNUgszqFXyici0zUff9vDXfawlDn/LJaWt6udXry7oCA0+Jdq23EHGd/NYGQLmTbGy5RHUwYMvBw+GmSAx2Lhw3DHwZvWISmoTUm7P7/rArpF/A7auQWpLfJOUS/bYJwmKJrX5BGbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iGjy5fKNuUm1lU6jBzlQUv8cSZwwarfmiHmre0lJ4+w=;
 b=mcDub/ZgDZuowR3uA18SKlQ04cuMchkRYQLuDm28JIbrVWMU7aXF5+3Q5+OGxdHBdFK/RXn0dBRpYAfyH74y82xR74cPg5viHzsbhwbg9Xus2PPhlBjTZbWZ1DJUMbk6DrFhkrx9NEJBqu9cfwOQaG2v2dizV8VkJJMVMPi+nFPFpzpabwV+NrfD0Tg5gi8lNbL5NNgoBqNQ7qJaCfn0rmBGpQvQOAI9RVjQ+qHxZATGciphzXH++C2vtyK8pgjzH0IhaZf8lkmFSrIKvpKEOCzb0zc6CPrIumvhAUAlBFMWevJybzl+fFrjFd1MwUVnlzcI5OWmM+trX2xYBCsN9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Wed, 12 Oct
 2022 13:37:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5709.022; Wed, 12 Oct 2022
 13:37:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v2 1/2] ice: Accumulate HW and
 Netdev statistics over reset
Thread-Index: AQHY3N7A49j2r+FPmEG7CU031h6cf64Kxaaw
Date: Wed, 12 Oct 2022 13:37:29 +0000
Message-ID: <BYAPR11MB33672260EEEE2673E1D64194FC229@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221010192223.916578-1-benjamin.mikailenko@intel.com>
 <20221010192223.916578-2-benjamin.mikailenko@intel.com>
In-Reply-To: <20221010192223.916578-2-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SA2PR11MB5162:EE_
x-ms-office365-filtering-correlation-id: 5ec440da-5c4f-475c-c3ec-08daac56e8a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qhH8xqjTYY6bh2be9jiwsbk9dt4Z5PJ593pDbsaoN5PkIZCVZrzvpIq74navq14YoOX4kZ1cgwgV7oF6nYW/LWoX0MaF/0oKYeNixx39E27jwrwtZxT/FJdjwSckEAHSf84MFMbY1z6ptw1P1PPZsyrMO4QFogLyy5sEzZ+YPOgFQgQPXA5l6H9w6Kn/gvJw3uXK52UOKyXQ4Bevb63sh3hzIF4noGBFpYhdV5yehrndHoX9zzruTNulHPRQJuwEPxw2acA8IFmjiFCBoOI1Yj3ptWwL0AgEc91nKHpX9pPCqEU5/5ViBx+FRBEKt6M5WNl3SIMBMxtXP865BIUnDrOo6kUzJWD8Bp5wyDuHRNW66SzLACbKrNrUPB9zNgeOGc0HneQcXVOjdvozhq720UOW2uHmVvN44u5cFZ3J0iffKtML6nj6NUGFOtxwMwjP4hww0iFgfpDoFqKu4pL6jU1WI/zdlLx7fvHQxTqx8OvkrJr6f3kKevTSQrcHRfUGvLk3Gj04MxeJbqSzWVOt7roIhszZ1Im8quSW/UuupG9R9m7CX52NVo8yEX/h/YqI4Gq6pN6mmefLlkbS3Hr9KdQYogWj1V72bcyReUelV2gGz2z17uMJqrZNufVaxhsKSJtTZcG+GXYjXgkvLWvqdjrR8gaBQ+pExJzk3AimwBfL0S6n2BPE7EHv0+eFxBbCGEHviD2IpUs8k8JnrvXjyCluFA9Czjl+X46YA61Eb8l2qypAUm84YribRO1K5HrRiFDGpCvuDIwtDU8ev1mA0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199015)(38070700005)(82960400001)(33656002)(55016003)(86362001)(38100700002)(6506007)(41300700001)(53546011)(107886003)(4326008)(26005)(7696005)(5660300002)(52536014)(8936002)(110136005)(9686003)(8676002)(71200400001)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(122000001)(478600001)(2906002)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dgIx0O3Dd0fovlEOTyd3Rs6KaNlYde1bqzybJAGfi62FvMucPj18HSdMcU9D?=
 =?us-ascii?Q?DITwQe2egnYcVnQ5Lkl3gr8YDvE9ivkh3kRghGOsV2iks8sPv3H+khfoEqeV?=
 =?us-ascii?Q?AIHEs7SpK4N0Mb34yML51xwyrNFDuTIhCPEByAI7tYs8Aib8Jf40jen+35aR?=
 =?us-ascii?Q?0CovfZT92ErFGPcV2D6glezubfPGxxm0mP+8+OpHGZnst1abNIXPdkR2zd5z?=
 =?us-ascii?Q?mg9lRiRRqM4U39WafRLhGw3etARW72qHyq/zN261Tgn9BU2P2+XLyJ0eetJp?=
 =?us-ascii?Q?o8Sy1s9rRe9M8bbr7ozIr26p3KZdtPSOx3rG9PsRqvpesxtgKVGDlyiXPABk?=
 =?us-ascii?Q?1PuMO/eqP7CeRo0pqdS2CQDiLd4h0lZ1EkYS+d0Tn8JE5hVQIbqjiyyJm3nN?=
 =?us-ascii?Q?szKCw3rLlpnCU266mv54O2U94gHiCZPaZF3oyzbaWKn4zk9MU7hKoSYXqZd5?=
 =?us-ascii?Q?XeraeQiDPmOo+4mDRzro3u4Jsj8wMRfA4b7rT0fJMqthzgB7cxIQ/3WWzoKb?=
 =?us-ascii?Q?CLZ8DAOvo3/zqN/YCH3TIOmdOGw6aI6LJEivR/stK7hkjr2EFAvgbkLsgOGA?=
 =?us-ascii?Q?gPsKC9RXA3AlouUKaMhoDTK3Ps0/SRv2JwlhQpCLQoaedrzUlKVAM7Yt+Oki?=
 =?us-ascii?Q?aNz/vOKCj6UikNjndDzIFAAz98npaZqO0/JAQ7uKKkXj3unlA05onzrzIkBc?=
 =?us-ascii?Q?HynPEgbuqRfU+VRt/PLBebHvBh77Du3ocx1a7fsoNoG8f6x8a9mdA5wYAL5O?=
 =?us-ascii?Q?4K7mn6jQH9/d3N88b+MnzQuGfbiNc3OFXkO0HMo3Ue+nl1+UmG5Ze4WAUYhf?=
 =?us-ascii?Q?NmFkioE1QOXRAPwws0RBQpO+E2ldKUalFzIm/U7rshW3dLKpUyfr9kZVrpfF?=
 =?us-ascii?Q?6pMF5PEXIuWymgf3RN5Jpx64o8iZ+HcHurahiSaeUklH1m69JzMQfH3CyL/k?=
 =?us-ascii?Q?8BBIa8BnVAvVYYmmUrDGrz4G7/pyVZI0gwEZdIzxDYgERXezKaycr4Qbf0IK?=
 =?us-ascii?Q?VvWxrdvK/nl7GSBf8dYkYciXFfIibagAXq6YkZp7/7Q48KeQPzrvbYhPFiEJ?=
 =?us-ascii?Q?VYj7QwcSfhlVx6dhEmIsiirHL0EmV7Ew9lDPvi3nJk7Waz++XA7bIAP45GOr?=
 =?us-ascii?Q?mKqg1+fCoa+2+3bRbqWxDf3xOF3BL/STcMKCOdxp2A51mJpEJ4cdRJvachva?=
 =?us-ascii?Q?Rktqdf/LQAk7kUEKdLRmyE6q3ma2gxe2hT6ywA7K8TQqnrZ/LoOhRMFJWxmR?=
 =?us-ascii?Q?TA1OtAl7lRwt0KNEFLrz5XCnT+xyzb37qCuJTIkwr6ft0oq3QNcz5SdOiZWO?=
 =?us-ascii?Q?+8f1pjulA3z+MYmlu0c7U/24VCNbiv2HUlWG31UxgK/vQJmDllbfzvz83deU?=
 =?us-ascii?Q?aKCZqPFe48JlnJlHWG/VCGh9TeP79fL+NbdTrjxz/m6L8qamtDAg/eXWUwmx?=
 =?us-ascii?Q?G62pvBS90C8x9wx68tk+CI5jQ2/yGYYaZrtGJlPoLOSlm4b9nEfuZfZDsBnA?=
 =?us-ascii?Q?Uo79KMiF3k6Cc8UAPOgTVNHnPzYTSmXohzGvhU8ewpQ7/cIEeEQ6ViM5IK/y?=
 =?us-ascii?Q?eFg54iEI+e1fetx1jmJyJpVhZM60TcgV1GL2gJAj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec440da-5c4f-475c-c3ec-08daac56e8a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2022 13:37:29.5802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TNrsg87h/DLgpigvJdCqBH/4N2M0wkNFDl1rEhF4LDbbILxM+D6Fz/WtXwuva/lGBGKGtjsAIIcQm3ApPJcuCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665581875; x=1697117875;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YePQJAyZ5zbEXZqV3h0vZvcJu6I0YYs5cCgtv8xvo4U=;
 b=S3KKdB3hrEM8kfDCvVsXZS8b1AWfX29raXmkiRQC5LpMcnsPC5HP7+fc
 1SW41gM3XZTWTGN6w6HKBkxymC9LXH82DxIYNldzeVHHNW2ngJi6W+ml4
 lQQBb1UzxzsCeaUHBP6DNObop9SIZNle9uIo4bJjVAK6Da2g2c7qOkr2u
 6i6k0xQ4y6fR0EByPM5Do6bQTNeOf45/Px4NycCX/nOjyNaTLzK0Mxpsd
 mu1AfMUlKuIxg4+UMvQ2uFG5WxMf+nVr/FN8O2MiIfdq37SHYhBjwGafR
 KIQqMqBPpaPy2dN+l8ORzM1U8AqpPxYqW4sNJdtO/C8ROxlF5EqwCYwSI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S3KKdB3h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v2 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Tuesday, October 11, 2022 12:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v2 1/2] ice: Accumulate HW and Netdev
> statistics over reset
> 
> Resets happen with or without user interaction. For example, incidents such
> as TX hang or a reconfiguration of parameters will result in a reset.
> During reset, hardware and software statistics were set to zero. This created
> an issue for the user where a reset happens in the background, statistics set
> to zero, and the user checks statistics expecting them to be populated.
> 
> To ensure this doesn't happen, keep accumulating stats over reset.
> 
> 1. Remove function calls which reset hardware and netdev statistics.
> 2. Do not rollover statistics in ice_stat_update40 during reset.
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 30 +++++++++++++++++---
>  4 files changed, 37 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
