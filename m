Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7506ABE13
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 12:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82A5E8146B;
	Mon,  6 Mar 2023 11:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82A5E8146B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678101722;
	bh=8vAz2mPHgRZwVu6GSTyJcu5SEFd+nF5EzZ0Wipe+978=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7yirinGGp1k4AhG/+RVyVI67NSMHy6XVzKH6mlMAxuEcFpDj6stnKtYBi0zjGeXqt
	 8dW5ssYp0RhO8RiZ1xqKAlpxXKuQO5KsfIPAHTN7oq/BY5tey8PtTWo6xu0fjbnZe8
	 wHbpd4nzPGCZMoNr/AxaSbVd/pnzQB+Wb47IeIvt1+tcZY6tquCXQrlvOgGtY+HxZm
	 w6Gdt9UeJ7UtgYyhYSFAY3wgvpPx04MiG5K/pNqy/JUysWK9tdB0i8wc+dAYkGttCv
	 resFp9hU2ImrwQ6554oSqZJ/ky2nKpiL7CloXZM6pyaoXtq4ZscJdkvT/IxAJtBF4U
	 gifrocjlgfZgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l2EwKj-iEO7b; Mon,  6 Mar 2023 11:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71B0781469;
	Mon,  6 Mar 2023 11:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71B0781469
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59BB11BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DC8D400BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:21:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DC8D400BE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SWoLu5Ecp_Dn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 11:21:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B01A8403AC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B01A8403AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:21:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="333004427"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="333004427"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 03:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="669405578"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="669405578"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 06 Mar 2023 03:21:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 03:21:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 03:21:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 03:21:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+EegzPkkuSRtSNlSPEzQXoBQNDWffGn0Q0c0fu5NEMK+SD/RGEagWi9q/a9jWkcdfxCC7t+r2LDNyeUvEHDCM+wSrUEbS2edJAohGDKG/83kbrhh4Iy8Puw0Mlg022ARDdllEk36wibJJTuce/tR9xQKjC+Vi559B1scA1dzqJe9bA716LByyBw2BcHi7rXeZfojLhLKLkMB6Mete5FC8kNL9sMp9225I4tB+Cw5brMHsbbmRCCuHDRBLpzWY7NPVh0UMzJlSxfEnMaoUAhQ2nhl6wC1Y/YHnccYZkNhO72vztb11iwbSr0jvOTOFdworzEpUvXoGeP0P2KMHiMIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jwGkjkb19BXMGVfShlMcbCn0bJCUKsmcqiV8zhLov80=;
 b=Yn1JZUXnBZRzvvp85Rc2y3GlecCF1Fmrl4CPDtbOiOrFfXovWhC0syqSD0NxSGnnf6zDz2r/ugyzy5s983d7j+Faggxzg6r4oEWdh0FVuZaQ1VCnrrGENlf5eE6Llh6OBEK66xGDb/5Q+vOg0buozERIzhEj6Wt47fS7fJF+hW4IZiG52uvtLSaAJ/UW8lkdB6MTNTS8Dgd0JIhVjDkiTnY51dlfBF94yvMxZHXRQOBrhc9xhLFl6S7jMr43YeMW1SNp6B1XPgi+ZaP5Nf0cqpzpb1/0Y17qER+5CW04O+4R4E321Q5yrMu8/yUlkBN2hPlDJOFqxh5Lee5pK2LCZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 11:21:51 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::830c:3de7:a060:5e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::830c:3de7:a060:5e5%4]) with mapi id 15.20.6156.019; Mon, 6 Mar 2023
 11:21:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Ostrowska, Karen" <karen.ostrowska@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
Thread-Index: AQHZMm1E4EAMtIRMSUq/0SnkGb/Kja7t1q4g
Date: Mon, 6 Mar 2023 11:21:51 +0000
Message-ID: <BYAPR11MB336799F94B4EF0AF4CC16509FCB69@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230127132410.2057599-1-karen.ostrowska@intel.com>
In-Reply-To: <20230127132410.2057599-1-karen.ostrowska@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5456:EE_
x-ms-office365-filtering-correlation-id: 9163963f-c354-498d-b6b4-08db1e34fbba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sk2KIPynaK1ZY4W589v2caQFqP2ndK+MouYtvxO5nrGhmP68o+H15U3RU4v4+mWQ+BLm+O2HQFUbPUvGgg0cWczSv6G9dZDvtt026/8775Y22VIme4MrLCMbMvKDJtns2swfb6nO0MVx3xSp4pepRqZGzg863Hf9KXSq9iVh3rXC507+ARn8d+St447pWM9ajrQGMDzqaI8qEuh5rnJsOZ/gIoHcZINBMp/JrR5bIbnoTYeDPA/2dxITKJrN7u8lGb21sn5ErLTmEhprPjsTPb1lGtjSdBxLw1wd5Wy6Mu8/ArrngCNLZZ/NABP/GVBMsPkzwYDX87JOG9WWguK4oNLLqoxMREeYH+wwipb4gs750vl5G9OTX4NbABbezv4zWL2Tc48IXnlV20GFXphLPqjQ0kNSyds23XhTsQYl0r2EbSvZe6l4/CPpw5wjW6XB6Rm+MzSNrDqJeudTmWjH2UC6xfwudlf2/mdQjspQEApILagwekLIwt82fs1HncdJhcBV+Q9sPBTcM2TczhUYsL16Gn5g9kGDdsExsS3KjJG6qBKDmf1dmSy/+r0AQn4o6Y//uhuiJiCi6rFs3wuwHwK2/QgqLIIzd95/5ee9c/qVymbHoacU54Unl6/98d/fpaAdOnkaY0KnuZFNiaCcCSzV8KbEraqPI99nZoegeMzIopYhKua53spqBy37u+vS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(346002)(136003)(396003)(376002)(451199018)(8936002)(5660300002)(52536014)(4744005)(66446008)(76116006)(66476007)(66556008)(66946007)(2906002)(8676002)(64756008)(4326008)(110136005)(316002)(478600001)(71200400001)(7696005)(107886003)(6506007)(53546011)(26005)(41300700001)(122000001)(86362001)(33656002)(82960400001)(83380400001)(38070700005)(186003)(55016003)(38100700002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sF9G44O++xVd5kxc1F1zGxN/Wd40zFyyRpTAcRKFFGkH0xciT/ZxDIGFh+P3?=
 =?us-ascii?Q?tQTyOkx4EWTuNF14EJRm/2LHW5HiHKhmDlOThyM2bCztkuFRn9uDXhg3Ec1D?=
 =?us-ascii?Q?fDUNQ5xyIr6JhuZzyhMISg6/5+Nu+Uzgt8Kr2J27tXmHR/R2gx3Fa+qidS7Q?=
 =?us-ascii?Q?MML7Ez/L6AwyZZV/cntbwOpb+01thSvUrpZm5fvdxJcwbYw/xuxaQbdiYzqM?=
 =?us-ascii?Q?Ce+obZMz3q+W//0EhxL/5RmQKa7QzJ1UW+jgY3u4qOk+isGd59lXxE+j0/vt?=
 =?us-ascii?Q?iDsCRwbf9KYpp01i/MjMHU/GDZxhvc83zBRjDXseD32J1tH8wCDyL0tedB9Z?=
 =?us-ascii?Q?5CI2+J6CUEwHmOT+p1a+4GmNplzEbHObMM7luARNScI3wYrD4Bo3Z0QU2KNI?=
 =?us-ascii?Q?aUxVc0EcWivPWVhMFnFvNJmPhPFqhTrmrg9e4lqIvrJGzUy3lR/ObXtuR6YR?=
 =?us-ascii?Q?jid3ZdWqOYKGUOUEakYJ2EznerSVZ+iWFTHSZE1Mft06qiASv8yvWXLogt1I?=
 =?us-ascii?Q?ySSifmf+98AWBVEvz163NJ4gaoP1tWNYEaKM417TZHHjcJecPPgJtX62hx6K?=
 =?us-ascii?Q?ghPHJ3lHJEsMkN5lQiA9Ird/ZDXOY3xeHBczfVkZPOUERn+owfpZeopRIDuj?=
 =?us-ascii?Q?TeG9zPiAWTR6mDXBRN9p22yNLfxTtlmxuZQgk8wHNZTrdDX0zVaS0X0ljvQx?=
 =?us-ascii?Q?PxGGAx/wUouJiK9+jl3GyUJJAkp64HK1V/ZCAYPTIZ/TtcJxtzerDkqYmx8l?=
 =?us-ascii?Q?b0W2WZIdEXM9tor3c2BcVxTafuGMe8CBDltjOELVAYehcfFkvD9knegkqyr+?=
 =?us-ascii?Q?OPQpQ26q+s3MvjPdy1Xz14N2bY9N+qbCiZ1tn5z+ZW609xNrjDy0xWHQw1LH?=
 =?us-ascii?Q?WlmCK95I/m00Y/EOi+FzRBWFEbIq7swolIvXr1ItJWTvm2DCbAKLFk/wFsWz?=
 =?us-ascii?Q?j9Yf7C+AYb6pacAhu1rhec9shb5E2GIpF8f4fPYkWEjnnfeT/6jNOWAMdiuS?=
 =?us-ascii?Q?pB2/tD+Qcsox0yvisOZ6EcQS5r2H9qbdbPPBThIN8lxQT76kqFspu8Go85Lc?=
 =?us-ascii?Q?MZkOlYREStfjtm+zE0PlnHtlytaTSVruT+JfDunGTwN6QwOjQ141jtqXf0Vv?=
 =?us-ascii?Q?WKRA8vWDL8V6Uq0x9Lwekq9NgmI1vkhCvwKMoWRjWURdWwpbGF197m7ruX2I?=
 =?us-ascii?Q?BbBJzD6Ejg8zvBXGLTyXieRu/dCTgJnBdA3kMEjAGz3RboHJIaDg6iINdStN?=
 =?us-ascii?Q?vNSYiwvFPUNkGlSOIDMoD0E4d1yYfYSAfWCRt/eB5cW1AS/o+df6EqnlvqkG?=
 =?us-ascii?Q?Oxxh6I0ie6zgDOBw4x4JpTSjyj3uOP3aqyjwrHgfsxbeUCXiPLaGpqtHDCwY?=
 =?us-ascii?Q?2xTHm/UboVENVDbraoF1kvpg6IDjYNWIbF8mCtsc2hhu6sfDXLSz2vQEJel7?=
 =?us-ascii?Q?CsmRay1K95d7FiHlea7JQxZj9uNDEDzps5xdZFG/gFY4yUmenlqnGGuhm2y+?=
 =?us-ascii?Q?47K390A1gpCnSLFAaBmpfvlRq3vOVfBDqdTWso8eEO3+uRRqyi0oatqIXkTG?=
 =?us-ascii?Q?AgAUf3GRlq1LtYqtji1JZIRBOmCY8NJ0Tb/wXZsm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9163963f-c354-498d-b6b4-08db1e34fbba
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 11:21:51.3038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7wZC89vir9hNrUKH1Ngv7scquISgZ5G50HxQ1pRrSTGUvZgFHJIzc9PkTLctiS1VgtkD4EbiXo8h1X8Z+Om/0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678101714; x=1709637714;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wT9T7aWP2OEuKUACBzPWf3WHJK7lM+9vEWMRd09PPS8=;
 b=DmKoK+hrwJKFSu4RRRnltU/lnxxrv2wQobHA/bwZXgo7v2F/LBRB2gyK
 oP+7HLXzxESojOCqASN+UkBeXBpe1kilvvdB31osP3NT0JSgYpEWD1kmt
 +ZB5EDQERiwDZx+XKbKQWH+Bsr19jAMTfrD2hxdJ3zFA1DGf2DB4SkqVU
 isZgXcAMmL8Uu5WB1J97idXRsqiVC9iKjjb/+yhLMHqKA5USoU+UI6hxx
 7n3bJUnCQ/GkL0hLMVIAVlmwBOUGxE2EMhCorQ7TeXDG4K+Kb540N4ZSQ
 0c1rXeGyKo5runRjo6ufxXF+f1WuMZtyLVpOv/vJaBK/s8rOrUAsJCOdx
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DmKoK+hr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
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
Cc: "Ostrowska, Karen" <karen.ostrowska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Ostrowska
> Sent: Friday, January 27, 2023 6:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ostrowska, Karen <karen.ostrowska@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> When creating the TLV to send to the FW for configuring DSCP mode PFC,the
> PFCENABLE field was being masked with a 4 bit mask (0xF), but this is an 8 bit
> bitmask for enabled classes for PFC.  This means that traffic classes
> 4-7 could not be enabled for PFC.
> 
> Remove the mask completely, as it is not necessary, as we are assigning 8 bits
> to an 8 bit field.
> 
> Fixes: 2a87bd73e50d ("ice: Add DSCP support")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
