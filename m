Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439C0582024
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 08:32:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBEBF403AA;
	Wed, 27 Jul 2022 06:32:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBEBF403AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658903569;
	bh=XeVm43GgtVn//q56/AQIMn3KZ/+Zgy4Sw7ZNEdMlGr4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uPodoWQW3mRc71T0ErLjQAJyi29bKCgeH2+l2j5g6KMw3XuqUt266lt3s/QOraJpF
	 CEUt/hdSJdigiAFgFeaVchDHB0tOB7/GBn9e7eKRJNj62iLiU7LwzjPPzZbVJJHhd6
	 kig0GRNnSK6tm5q4iYdpCw35v2qe4LapTwKl4xQUOjFdNurkA8CVgLdrPaL1GzBJ7c
	 belX/aWYN/6VSxfVlVuAu/m2hmNxXDy1RQMnjDKCSJDaXPDiM7QOewNJ5mgZ/HoTSb
	 +msv8vcmYvxfGl1ZCZ/eeWWf0g3aKlP99iWJVrEr9ryvifSHLee78ZMM3zQsnYwy4y
	 9Tdky2XEDrPFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qhi8MpdkSEuv; Wed, 27 Jul 2022 06:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E694400FE;
	Wed, 27 Jul 2022 06:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E694400FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4FD11BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 06:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D6A2817BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 06:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D6A2817BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQnx5oDK80Ht for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 06:32:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 724F4817B5
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 724F4817B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 06:32:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="289349758"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="289349758"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 23:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="689757542"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jul 2022 23:32:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 23:32:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 23:32:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 23:32:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 23:32:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/L6Jp+AGaYF3154Z5LNkB0DstN1L5hSVBkrJCUunIOcsR1laj3xhHSknNM9uTv0YEn8Z8J/GCAqzdA+oxu+kMS+H+UsFlf+6bqOIePBPN+Ky/8sdZbwDqJta6iOckcn6YGxEbCvBV+ZiRitFpCKDFxMTzbEE2RMzLAjhcVHWv/OKmRTrV3ofQqqRmAx1v86/BlAxdz5C9Hh115UaiG15/94tQ4RS5redCv8ZRLOYQsJkbiVTVebN9XHCf6Dc9miojhjTPZUF/ul7J9NMDtvDXW7XUcUmBdf653/T+kRz9l16s8MfQdo6aF2f9Ufp/m01JhMCN4kPNHNnHMpYFmp8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tm5sJ/6gnaSci8rceIAiUsJkFpQ6jNLNq5REhMtehxk=;
 b=Gh9y8H+CgDpxk0aYgFoL5aVnE5oHSajHvy09ykWwpVwo2wQdffwdghRHB7O1YwmZ3XkWBdmX+qpgMlZEfpv2AEEmJgNj/FQrqCsYlhFvY7qbMP/Fs0K/UeO9c4ChSnJkO/8JhJc3vA8SkqGWNrzNsYjZTF2EPHNuJF6IzaWhHKuPMmCyGvcp193yT/uDlF9H+1G/IJWJ4bAYLhs3sadqQMsar4WMAItv7vLM6jZ3loPqQQDJkXF0C8hkoNfqw+nRsMucxnHWhgm3woSPY/MEWcEf99WAzyU7hUPc+CxEc1Xlz5SyQNzH5LGSrL4tFAg1nMsac6GuHI0C9tBFZ36LVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4646.namprd11.prod.outlook.com (2603:10b6:208:264::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Wed, 27 Jul
 2022 06:32:35 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 06:32:34 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHYndUNvQc1XLIqz0ihC0pXEFiioq2Rxwlw
Date: Wed, 27 Jul 2022 06:32:34 +0000
Message-ID: <BYAPR11MB33675C337D273A313162B116FC979@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220722141129.229436-1-michal.wilczynski@intel.com>
 <20220722141129.229436-2-michal.wilczynski@intel.com>
In-Reply-To: <20220722141129.229436-2-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac63583d-8cd9-4616-9f9d-08da6f99caca
x-ms-traffictypediagnostic: MN2PR11MB4646:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nnudy/J0qsWMvqBcJ6k514UTvpjRQId+4CojL+A4+wHk/3oL4Gk0f8jgAOi5EwN+a39kRDZDKzra6zooDuuWLM3Azkw0IiwQi9uLmJ/yV2ekWTiFLm+Jc2Wi1Vvei/9EWQNtABqB7T0VjoGJE52YprCHk2eio/nyJEyNh9+MlbeM4kbujKtS7VPy4+X7bv3M0MG3AdMWUzk24wdzPwEG8zebKuHuFBZKgRCvtpEZ/3Umo3cZaaWa6BNxpLnGFGI5v6Tu1Y0pz+wtqMctK+f3B6wRlHFR3blK7zWsbeOIZTX7wjFl+0mDlPf3AioghfOs6kL/uFz5maRTIpvjtbx4VPlbC9kFKnOzI+WI84BvhfIbo755hD3pbS/FsazkTrPIxOD/MgAS5L7SF+GrWKmO2FKXjvFTjNSNVo849KleQh8Iq9e1SRVBe7qwOzh3qyRntsW7Qd0DvivNbx7ctbWXsFWiIVPSlWJRghjFsIJU5yulVQTYtw05pbIDrcxe61vpPIUP4+fbISGXMUE6NYc0Wne0gj+7dOrCoPu1aRETDjMBjortj+9GhUylH2cNywcFeZOjGhOjjSB6Z7WTn5xhKFV+cO91emlLh+LJzHP2mkNtsIvTdynIBeJrqUtQhpdkx3f+VgS0oU5wyV4E9vfUv1JyFt1L5j+A9V3lLIB/onuYAVQlCHMBCDpK7KJxkrhb+VlZiFh9v7TJo/BHnkFgrZEJfYl62FFfNyMeHOvrsxM9Z5JJuOdl4dALO8DDQioGVRemurqVT8+EH5fll2N3uFryXH8Yk+RNyMInTUUaLp31BtXhDssPwLxZXc0QQr1d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(39860400002)(346002)(366004)(376002)(107886003)(186003)(83380400001)(64756008)(9686003)(66446008)(66556008)(71200400001)(4326008)(66476007)(8676002)(110136005)(76116006)(54906003)(53546011)(7696005)(66946007)(6506007)(5660300002)(2906002)(26005)(55016003)(41300700001)(38100700002)(38070700005)(122000001)(86362001)(8936002)(478600001)(33656002)(316002)(52536014)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/uyfyDgucELCPyhauKDMkBbRP1WRVa53do1/wsVQzpgbdrtkmGy1IkuCsOux?=
 =?us-ascii?Q?QUKFIeVljnacqRwywX61ZmJnh2tmejQ74/cLppdC4taIjXBshGbHVP8s3G0D?=
 =?us-ascii?Q?m/Eby3ogbQAqbWTxvbsfhVFaevFbHge//c00sGCJRU1CPneWmKUKDgOXRYIy?=
 =?us-ascii?Q?JEzfpNt2BY26+vBr/0XaFTdD3f3mK+YpkK1xFiv7uJdB1G9utlqwyH4JzIWr?=
 =?us-ascii?Q?R4WbBQy3ftkLpaGdpcrYJAX7g0dZRjtZSLn1ZPnoWmO1jlEZfXD13+pXwTMV?=
 =?us-ascii?Q?v5ih5OQtlmUAR58SuYtLASfI3zclxI7pAMRW+YZbyACz4cEp8wCEcrboY7f2?=
 =?us-ascii?Q?NC3nCZ0rbspTGviHM0kx+nuKMwG3ZdEtTMPxPvTNTii9fjrTdiXttbg8hINM?=
 =?us-ascii?Q?ThEA2U4cPlHLuEPd8rgP8w9OjgD5aVc+3t1RtIpmkSUfWAAcAsKw76lbiNfk?=
 =?us-ascii?Q?r2q73KFfU+04fkC63umgYBLb9YPonKXwQ/FWH1wkRrcaisESEzSMrB0LAake?=
 =?us-ascii?Q?v9Cs0GdUsgyQJXMMt2mHvqqvFE7rlN3EFiPI9JdTazIIpL/6+oZnhMF1yBK/?=
 =?us-ascii?Q?sFQ9HkjPT6HtHwZkgNXb7Byv+a2QHHUY4EQyBa/t7NrW9irVLK4Q4gHdQZo+?=
 =?us-ascii?Q?PsLUJIntOWO/4kmrYEHgkF/v03MeiJu691Cu819AmpHqir2lDnWGugII19WM?=
 =?us-ascii?Q?PZnIRNNWLflW+zvnAJE8Kz77jUfl+barRkkRi0Ix5NDxgfxYMNvPAzR/mO/i?=
 =?us-ascii?Q?u/bZ0G7/qU8cUmS633mi/A3f6h+SXCwh0wBTlfZIq554jzxQiG76/eLuLnYE?=
 =?us-ascii?Q?RVxPX6DQTqJgL22rtkPgMVIxHBHireH/+LgE+cSUKuZ8201IsR2c6vqUrBxr?=
 =?us-ascii?Q?y0bavP/sKbEw05/tALAgC0Vehgr7e1nB9tXgvyN8jFkg0sVhfro0jmKrQndP?=
 =?us-ascii?Q?HviDeoP5oJdPdOHtGC9akerhU5t/W6rvSz2SjZnH4Ah+OR1mKkkmmwr0vZq/?=
 =?us-ascii?Q?GNRdVtAGMkgSxakzo1ucVkYweSyRaZLINzxtzqZk3ncFzUM12MnlKhGAxSQC?=
 =?us-ascii?Q?C0JLYLNIk2rkQOl20UfUEgs6dlo9hH+YWzItZfb7+Kys+fROx8DIehcSps0z?=
 =?us-ascii?Q?my5juKcimTz8j085220pG11HLM9LwwEWWo+WIfbGR+4eqvZZRo7QU0PNGLRI?=
 =?us-ascii?Q?x5cfgNiABO750uNix4LvBJHjbheObRARu+5kO9QtUJ30lv4MmUegtWdNTwAO?=
 =?us-ascii?Q?qr8bnHbu+epyXqI28JXhkD2x/sCf3fe6gmfFqbm0JELB2W68IPk8hDJno3xW?=
 =?us-ascii?Q?9HS+IyCOliy6RzhFcdhOD02I7pW33S3r/OELUEZcyfxg1vqnED7wmmvOj1le?=
 =?us-ascii?Q?LTuAzcYYd6BWf7pa+DNDoaAOJDTgNipcitvFle616oOeB4yqJr2UFmEBCcZo?=
 =?us-ascii?Q?LyEZmeDbGAJoqY8xRqX0JNBsRNY6JldhQK4NPerDj53r5BGeD8UJ5p1PcdqD?=
 =?us-ascii?Q?OkjjaNO+x1AQvjTmKp5fEHx+13/iunpEqUAGU5MLy7gmcqKKvY64YYKKPLLo?=
 =?us-ascii?Q?du4hj82/2JxMxnxRSbbXGslFs4Q45SFV633I9R3a?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac63583d-8cd9-4616-9f9d-08da6f99caca
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 06:32:34.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YNnKut3c/XF4OFwNrYZRqpGJ7aQOk+8A6QfZFqG+57eLa+7c5C8zIkh+R+Y3/ljOM4J8qHYfN8ht8GGOcL+hCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4646
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658903562; x=1690439562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c/2u4YpydmBs8HJCcBtv0qH1PIGWm+zd0t0dvg1A8GQ=;
 b=WqX9Gk7KpcgeOrr2ky+izNmFaKuYRFrSsbC7txJIUhoTxNEmIp8N0mgw
 nLEXocZyS75pAir2KsL4/GxRzAIBXuLKf8H1/A3K3zpeM7AK9tpmLhvCX
 YYaiukE/aWz/BD0A0haXNDcOZePz0zEPORPs767juF75cXVdld3J1hsCF
 8hgT3t0hfZpkD6QVLfqq+LlHuNTPNmkDa9UyKTvdKlrRwmt1GhkgAlum5
 2m0AjHj9P3vYyRIfaCP9dMrf2ZVPC27p+1rMkkdfSEXczKXIJU1FLMz/Y
 symnNqBBMzhZoPCH8q5QHN7aqWwVpCtrh1woPGNNENUZF2vPUDawRhDF8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WqX9Gk7K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>, "Wilczynski,
 Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Friday, July 22, 2022 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>; Wilczynski, Michal
> <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v8 1/5] ice: Support 5 layer
> topology
> 
> From: Raj Victor <victor.raj@intel.com>
> 
> There is a performance issue reported when the number of VSIs are not
> multiple of 8. This is caused due to the max children limitation per
> node(8) in 9 layer topology. The BW credits are shared evenly among the
> children by default. Assume one node has 8 children and the other has 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
> 
> Example:
> 
> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
> 
> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
> 
> So on average queue 8 statistics show that 3.7 times more packets were send
> there than to the other queues.
> 
> The FW starting with version 3.20, has increased the max number of children
> per node by reducing the number of layers from 9 to 5. Reflect this on driver
> side.
> 
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 199 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 243 insertions(+), 2 deletions(-)
> 

Its been observed that the packets haven't been spreaded in balance across the processes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
