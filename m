Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCC5731C9D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE34041951;
	Thu, 15 Jun 2023 15:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE34041951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686842900;
	bh=cM5twcy42d6BYXvSu9tlykWE9VbFKxt8JiLRexkF2lg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z9MrkM86eRCMyy13N0fbv6M+wW1JDVZ0uG4T95Cp6gQoxp+DobstqOlsl6etKgJv4
	 6/DC2KhBlC0YjS/PCQL+3pQ5TV0juDFZB8mGz+u4ucsdCUX0EtgOkayK0LNKqiv1eJ
	 aTLQ/Aab9JnBya463/u57+RWkZ3eWsoHv+b8nqkorbR1Zfk8JOf78/MD8UmwJLYQic
	 83KFVx6keuIs67TSJccFax2grbs2vgFsIBYYpW8xS0wkD5EjF4upYEVZKmCJWpbLjc
	 gKL+2TQ+4Ojar9LAWE71syG0soCni9/orR9KfLmzQgKAxWTXvCj7KzPz2w437pppqJ
	 qmUslOwPMUNeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMYIx4BLYmU9; Thu, 15 Jun 2023 15:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCCA6404D3;
	Thu, 15 Jun 2023 15:28:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCCA6404D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94E711BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A99683ED1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A99683ED1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SJ9huh_8jwY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:28:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 793D483ED0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 793D483ED0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:28:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="339292148"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="339292148"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="886720882"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="886720882"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 15 Jun 2023 08:28:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:28:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:28:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGwAKxDGTSEynZC3iig7UFS3smYCdE8ERBwAB7CecpPDWVHJkrmVqHz73FQ5ItgzQI+HT06rCqKRnhXfiGqH2fDoLVNGUqKUwRm55BF+vNHCKRv1P2Gy/+iO/S3s4TdCwUpXRle/dmunvR6G/nTP0jRs2dZH+MhIfl4GBpsubSMm+8FQb6TczuqweNejOXKr2lTFGAGSrL+8NBhbo7x4SLFALYywY9qTei85sAxTF4qjhNpo8IuBJ8AQZRLdEoY2aiQ31/9lyeNVTCD8hD+MDvoKYE97q31BDgXjTuS1Rryb7rRINmJEveiXKAuciSxp+xAqHhxpa7RpuRtnI2iJDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRjEWsCM5VafbRwm8mlSZwxLg8tEoFIepOv33vTeoag=;
 b=X9uLUwfSMVArkhkBxXj2MQHJfM/jE4eYMloC2j5Ad1ML8hI5ZFCyVuR9dz4TVhHh+Gn/E8wA21GCIjfkHY6F2E91xfTZMxYYAJKjPVMefx/C/ad6+Zzx8Dc/Ooy+3pdUf4L4SBUXKX0JzdUOyBCkGswHd1FwHJpvC2OOAyLfGgvxPUSNO3Ke3K0rte8dXE5Es1dK3txSYmk9URJeM/bXDicxtwGrP9GKV5BVbreRGJ2BQLV2Blgd+eRQs7BfBx8yPjWrNW3wqVW4KGFsPCTlZUxFz0q0w9zayIicygzGe4ngM2VbEXmV/a5FaMeS0FE/4ueBdP6xCXxfi1VJi4UtUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 15:28:09 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:28:09 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v10 3/5] Revert "iavf: Do not
 restart Tx queues after reset task failure"
Thread-Index: AQHZl741hqwJ3j/cekCtJgR40S7lwa+MDGhA
Date: Thu, 15 Jun 2023 15:28:08 +0000
Message-ID: <BL0PR11MB3521DC836A146504F2449A328F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
 <20230605145226.1222225-4-mateusz.palczewski@intel.com>
In-Reply-To: <20230605145226.1222225-4-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MN0PR11MB6279:EE_
x-ms-office365-filtering-correlation-id: 580159f0-3a68-4853-184e-08db6db51fa1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VmA0x3qlFYsZfS97YIgyBr9+Vzl3TP4PJWhp75Q7ztgrvSnOhjtGpGHSHhePfeZIHMPqhwR2ZD3XPDkUPosgB1k/O58U1Fzih5k6YNcqn6KGRpphnw0WEYJUt5F36yXSGUpj2aMt/HQxV2iL8mt+nyvGuEjdEpY4SdsmYaCVjFGkN9cpQxT8sKOr/hFLOEh/U032hpk2RJucuvZOAXWiIxfRwH6ZHw8rSEA09kOZywOE6iZwOZLF9NjcqznBgbjXYXkTdqSyQhh9PORAPvZ5fBku8S25tY71wRmzhBVRrA+NZueYtYargNL0aAX1MyAniUB9qxl/rrKrc9KceSEQw5WO5HY+2JQ5Ld0vSKMvrR4x9TEoSie5d7WeNj/L8fOQsWV8gUl7rbr8y1NaCaofMibxA6HeAuMSLRKXUU2R4fQ0vekXZc27bBldmto4ZnHmt3TNe9x257EOW7kR+2Jz05JCjH34D0kAd7RFCtouYk3iZFohW2LJKbsJ/MBGYnBa7N48kH24zdsBK2AwnoyTOR6NC5JOXTPf81CR4+8+Yyaszk+EG9sXe/j0jAsSiwVXVg3iDRjlQsmodoGnAFOurJ3w5XSDgpn/ovUBlio4TIM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199021)(66574015)(2906002)(83380400001)(33656002)(86362001)(38070700005)(38100700002)(122000001)(82960400001)(55016003)(8936002)(8676002)(7696005)(966005)(316002)(41300700001)(52536014)(5660300002)(478600001)(110136005)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008)(4326008)(71200400001)(53546011)(26005)(9686003)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?nitRHiHWy6pYRRS+WAv1mzu4EMZyNz+86j17q7mNcUUbqJEbbN1JZh6x+V?=
 =?iso-8859-2?Q?XXEAMVbRaU12MxTegD0VRfetorpjXDX88vcXVVal7SOAcuJkuO6AI2pO5d?=
 =?iso-8859-2?Q?EQhV0t2WcTLE6x1jSryIhZMJy3n/SIF5NEfxcHHRGGPGWYVQ8+vzhqyrmP?=
 =?iso-8859-2?Q?QdUL9crUBJg0GF56UYHpkpQqBoWLmNn2vtWL0bQbUiTIxtKszsuxvmzuK0?=
 =?iso-8859-2?Q?WcIB56hVzsJ4UrQiiFn4ZcVzqBmrg08vU/OU4kAmAWV+A6pC7FSJAxHbsC?=
 =?iso-8859-2?Q?2pUOe7EoU0THe/+i7p2ExziUIotlxBtLgA1gql7KBc8vtl94ymaIN9DaKx?=
 =?iso-8859-2?Q?NcIkDFQv5SI7lxkwgcihG3FFcvmR5TT/fGlRv81cF7NEPB52SKwBU0aWHb?=
 =?iso-8859-2?Q?SKbTt6lSiCi9waoNPfZ+NqIlLKaQ3xoBty0GRmPxtXtHq5humMUjgKmTG6?=
 =?iso-8859-2?Q?wQx+Hm7j40B6R53IgLevD/UNzx5hkAaB5PRzOMFTjzCHdUxFMoSbqOq3wF?=
 =?iso-8859-2?Q?3VXaWN6SS1KAx3d9SMCd6WMHWk/6I1CpWxhhOZ5rXjnMW9yjYXfYEdS+mp?=
 =?iso-8859-2?Q?Dfq7eZjRmJTK3zCDaYqEeBDI8CyxpyySyXqtO67JCHa2JSfLi3mwefp4nh?=
 =?iso-8859-2?Q?OsxumWgKIf5MmKIzpW+f9n6iR59L/8JKzH6q/VaMic52u0h4FIhTjN1ek1?=
 =?iso-8859-2?Q?5fk8BdEbfC7MlytHmfbenBMZhRpovF9hoMKfjRoFD0dNeKYaLjt+S1TbAV?=
 =?iso-8859-2?Q?zxWAYiVwa6JjU0P8/cfomb+HvVeNz4Iq9ePkZFy342zIMsFOSiIP8iFz2P?=
 =?iso-8859-2?Q?+R5K/dREvOhbnUGMCm0SLoEJSr8lu5sbDm4W800UezhsGhgha9nJ6iMcTf?=
 =?iso-8859-2?Q?3aruq4X3LKoI7F9k2uX9sOwznmTCZV3AzwYi5EwLe8fnbVokvpPiQt16Cq?=
 =?iso-8859-2?Q?rwWUIS2tBLNaI1ym5zXGFiQ4xGCMOg+mF3aOFXdFtzKpxQvCupUN0qt3kk?=
 =?iso-8859-2?Q?hhctGDF+6jF1Fjf/f/vUw56a6/o83t7TCUPQ9XiZth7tur5u8H++Cj923l?=
 =?iso-8859-2?Q?DdlN9LEPSQkkA8PApkWQ/6D+28YG+cbqZk0QN/oVErfcoibW1w+o5CpkiM?=
 =?iso-8859-2?Q?fTdk7to46TuPvOk73rYjHPL2R2yPEt8Zhco9PGtEWRTY8Y8JNvmiUZjqkj?=
 =?iso-8859-2?Q?R0nV2TKiHvJ7Ge+Rfaplzh2fo7a3X8z7GiF5fINDCxpSYaMb3/i4uLpFjr?=
 =?iso-8859-2?Q?vjzk+aHEGG/zEMCOmNEVIuCQvjeExEdyDVAXH/+9U/ngECw0u9GbXwn1wn?=
 =?iso-8859-2?Q?Lz/w4fRacfJh/bAOlTJ5tShLFqps99vWfkAhS/1m/BaFgT00242uvEpX/T?=
 =?iso-8859-2?Q?F67ihio3E48kWbHN7hMHbP/mB1vp5UMeMhvjSK58SpNbqaS39byL45x1a2?=
 =?iso-8859-2?Q?dNe+Wj3a7SLU6ohfFR7Z3mQD5g740hNC8F1HADN1RrTc8NB/S6z03NuuJ8?=
 =?iso-8859-2?Q?YfcHZt9JGKQe3+PrBmwJJA5urD7Z2JBBrZPMvBwKVr2zQUboKluroYdxGc?=
 =?iso-8859-2?Q?SzsGmla0JuEoePur1gkFLg3nhKhnEC6kFIi1JwZj7CoprSmk6e5hxzzMHi?=
 =?iso-8859-2?Q?iHiAuIAst7tTHUOfx5mbLY3SM0n8MSHp2URwRbHq732Epcov/PnDtu+w?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 580159f0-3a68-4853-184e-08db6db51fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:28:08.9742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dNPcu6P/CpQw9Hw1vNg0Uag43GF2ZmfEYpW0UkD6gQT3QVIuYnJb+WotHPPghHNWGschDwmpldTDO+PXUnYgaKmA7icjDGPVGTe1aJECgjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686842893; x=1718378893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fhiJ7nYC6luy7S7fJq4sUSG5fmKQdhZJXyrDziJPEf8=;
 b=Z7TkHsLgoNVEga0/UXxUv78qrgB67jchEDWkc72AfLmSIigXxVbU4j3f
 NbXLOt7xw+kOOnP/sXb+SkMLHuC0Z25MfWzte2zkiUpLLLp2+Awf+Ugd7
 19teaNICm1PxU6YcJWlGV1LDvmEbcTWfONsoTU6RcZGW4Mh9efKj9S6W6
 CNrwx5Rwfu3ss3OcxHI1AHsQgpqH+3qggr4QMpNwV0PfHsxvvVnILqOz2
 Fl++S/SBoCjIY8ibA4hFZ1sUXKayChboxj1VU9p/AAdo8AZ6eeiT8odBD
 1F3RBfL8YV8F93OD6O9iyZREEpaLTXxm/9IgR0uA8/tyvoYVHDwsTtSIj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7TkHsLg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10 3/5] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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
Cc: ivecera <ivecera@redhat.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: poniedzia=B3ek, 5 czerwca 2023 16:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: ivecera <ivecera@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v10 3/5] Revert "iavf: Do not r=
estart
> Tx queues after reset task failure"
> =

> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> =

> This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.
> =

> Netdev is no longer being detached during reset, so this fix can be rever=
ted.
> We leave the removal of "hacky" IFF_UP flag update.
> =

> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v1->v8: no changes
> v9: we leave the removal of "hacky" IFF_UP update that was implemented in
> this patch
> v10: no changes
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6945f462c56e..50521ba8fbb2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2962,6 +2962,7 @@ static void iavf_disable_vf(struct iavf_adapter
> *adapter)
>  	iavf_free_queues(adapter);
>  	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
>  	iavf_shutdown_adminq(&adapter->hw);
> +	adapter->netdev->flags &=3D ~IFF_UP;
>  	adapter->flags &=3D ~IAVF_FLAG_RESET_PENDING;
>  	iavf_change_state(adapter, __IAVF_DOWN);
>  	wake_up(&adapter->down_waitqueue);
> @@ -3056,11 +3057,6 @@ static void iavf_reset_task(struct work_struct
> *work)
>  		iavf_disable_vf(adapter);
>  		mutex_unlock(&adapter->client_lock);
>  		mutex_unlock(&adapter->crit_lock);
> -		if (netif_running(netdev)) {
> -			rtnl_lock();
> -			dev_close(netdev);
> -			rtnl_unlock();
> -		}
>  		return; /* Do not attempt to reinit. It's dead, Jim. */
>  	}
> =

> @@ -3211,16 +3207,6 @@ static void iavf_reset_task(struct work_struct
> *work)
> =

>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> -
> -	if (netif_running(netdev)) {
> -		/* Close device to ensure that Tx queues will not be started
> -		 * during netif_device_attach() at the end of the reset task.
> -		 */
> -		rtnl_lock();
> -		dev_close(netdev);
> -		rtnl_unlock();
> -	}
> -
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");  }
> =

> --
> 2.31.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
