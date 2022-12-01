Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6AF63F797
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 19:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B271481424;
	Thu,  1 Dec 2022 18:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B271481424
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669919961;
	bh=by7k5neROQJU3RSJIFB4q/A7wqFYmT2s2V3LyLaWHxw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HaiH01O4jOEgqvZgtc0lu/1uBM1f2dI84DIIGM5X2Xejfq1jfOf8Wce1bkZMSHYId
	 ZczVHwmhtSOJfWcfosZsQycpYTO4y+SKVuM5yYrEubcZhrOYDCjlyRrzaO0UttpeDQ
	 FlvtThwKo603JsNdB9DbwEpcWujd8Ser9fLjU/ik8jUIEq0H3j/IlI4hR6UZaXYR+j
	 XFZkTmDzKjdRtjnNiw8bbM8Jtc4q74HKBruvPCuNxhrUnqfxNBswvNEGkmTP/4bnA8
	 pnq0b2WVZQ5eYfgHOd/0LbRVda/ZTSgxWokM1nT7uGrJEM8DLmZ+DD+Y71Qsus8mal
	 lVpt81ux+6kBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8rZMumjLR2xy; Thu,  1 Dec 2022 18:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99BD881771;
	Thu,  1 Dec 2022 18:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99BD881771
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE21F1BF286
 for <intel-wired-lan@osuosl.org>; Thu,  1 Dec 2022 18:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C789E401F1
 for <intel-wired-lan@osuosl.org>; Thu,  1 Dec 2022 18:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C789E401F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qBmFBPFOhb6a for <intel-wired-lan@osuosl.org>;
 Thu,  1 Dec 2022 18:39:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7138740168
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7138740168
 for <intel-wired-lan@osuosl.org>; Thu,  1 Dec 2022 18:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="315793196"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="315793196"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 10:39:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622410431"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="622410431"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2022 10:39:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 10:39:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 10:39:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 10:39:11 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 10:39:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIsrajzWKGiBVNMXkCQc8xZrbM1ZpXRotqMg1rd6sk7Ck0WYIxm4irZ7QHSsUB19BTG1QQlkoGjjx3gEb/v3msc7hYercqpai9eKIcLUGA+9iQVNqD9oEZuxN1ge/ae8a2uAshasj0LBa4i/5RDG6jQD+qWkrmUUDSTwS6Nw8AwkMCrUvk4GPxUNMc7V4XvQmxw6Bq6XbW/ozjmGdC5eRoxMGCsezEgz1S+eO0jkDHQwdyX7xSWJEDmbAqskISFK2hIFeVLMAOjCcuixyKnuUVRFN9heDeXiWX3u3y/zxzWUlBbKuf74a6rCuuqKVTBl5PdmFeoFvZO8ixUAoBULOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xsTQrWiWGaKIqXeKAc7JqFNXk3P+AlAlAWo7G6d9yBo=;
 b=TbcLRykEyEkRLr2ZDW/NXVoPP3FDj0RA0v1R5MUb7oZwCRd8eau4JnWcrKSFmXQqMqac3qiC6GWv4fgqyTUOxDwKzAwLAm6HMUs8luYXXvMNPCmIKn2/42/kmfLWdpwoP14SEh9gl3Wkva0g7TwNRfYGgW7LI+7G8/SXitos3OfQN3ElykuGWEtgZlonul20jPfEq1wQhYQq3ZMgb/srImywjg3nW47seFNDPW7Pr/K7QhNo7sput+Mq4j/JsP/9/ChP++NBnuLOuh3sohM5QhAreQpUqGd04n1L8iie8RleSZXTKsdOQCohRVheQIH+arYBu2YjpAPDv6Dd3OfETw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by CO6PR11MB5618.namprd11.prod.outlook.com (2603:10b6:303:13f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 18:39:04 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::45d3:7ae:74b7:d6f1]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::45d3:7ae:74b7:d6f1%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 18:39:04 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v1] ice: Support drop action
Thread-Index: AQHY870iATmWHmt5TUuQ8RZO6D2G465ZgE5Q
Date: Thu, 1 Dec 2022 18:39:04 +0000
Message-ID: <MN2PR11MB36143D19AB517121383985018E149@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <166794529250.21494.1449975741002040158.stgit@anambiarhost.jf.intel.com>
In-Reply-To: <166794529250.21494.1449975741002040158.stgit@anambiarhost.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|CO6PR11MB5618:EE_
x-ms-office365-filtering-correlation-id: 29c4b956-f884-4ac6-41f8-08dad3cb52c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uQk83vEflWra13boqLbwsvh4V/bOy2/Yx0e1i35O9FmGp6nmiXD3vN/zQ/SDMJ+nDjHWf+RmOGn8cgKbKBZFZyArGKfMeoMctiR/lU2+tBM7YD+AUmh8tW8ryEhbcRuWe1G2REsiZlXvaAFCFtyqrE1tXEdJ9ML6lMdFSNVNh5VU1HUUbcAJbo9wmrN0faRhgdbpJxVCZ3SlMTMFldEDCJV41ttrJnL0CoeG7JRO3EQAPgExlpgRHRYwykj0s8yAYh64JwFwcNeC8+Q6a+Vaw8vRXCgmhPHd74KMmcWP9rZ3xm8z91KlhTgzZVw9TiyE3PiY4G5SiLzwyZLNHPbNBiAWkqmIX4aoIRuaaP+RUxg598hpfD1H2/edtr15L4s+Dr9SLUPZ19Aol2iLbUWRey6S962Y5+8V+G+8R7ypLY/2NtAuwBQFXrcjNRzKwTv+T6YLKJQzy93ErU83B+tWNPLaxSpJClzC14ULIkuBu25DTTBKPgLLBE6wRJDgNG+eCuFrgEnbBPd9cYlDGdkTHi18DwUySlSMb4u6x2pU0zRV69ytsl96NaxlJN3W49djD+gry9sqToPoWd8x12pyM8aD+p6NZ1ZjMtQ2DxXtNpKmExWnoDADV+upvXSvEekql57b783U5/As4fUgvQL+d1MQDRw0T6KsvWjsEv6yIwrzoMRSNab/XdN3njUqAJAUO3fxnU5FszjrkPE/4UUmvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(136003)(396003)(39860400002)(451199015)(33656002)(76116006)(66446008)(64756008)(66946007)(8676002)(38100700002)(66556008)(66476007)(55016003)(122000001)(82960400001)(478600001)(7696005)(6506007)(53546011)(26005)(9686003)(83380400001)(6916009)(86362001)(41300700001)(38070700005)(2906002)(4744005)(52536014)(5660300002)(8936002)(71200400001)(316002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bQz6l5Axveo9RKDawSzV5VBYP6CgC5lRDGEK+n21a9A9XRLyhpL34PH+Q9Mk?=
 =?us-ascii?Q?tMNgJqYjcPrOcWSKef2dO0QIfasaSWvOM+cTvvxeQ5xMH+zNUGdJ33fFmU9s?=
 =?us-ascii?Q?xmAK0Zo/StBav1O4eEvOJl0GaF5+sXCHoM1fjSjd9us5fJRkJ0q9pXoc0wsM?=
 =?us-ascii?Q?dsjiWClg5NjYg1EWqDEyKvdjzHnt8SOvwt0PVs1IYVz6k6/VlS2NbfWFqcLz?=
 =?us-ascii?Q?zezMYO3zGysBlImwjikwBwvFbDwSSEC6tU2FYHj063oFR7sI+Lxvsbsznm2y?=
 =?us-ascii?Q?pTgJsdaArBXUVZRZyXed66gDHLLPxPHpSKFZA01r36uM/cgMhgej2T1hVibr?=
 =?us-ascii?Q?7WmJVG215vdE/bnLr1wVMczyrZ0pRTj2OgopLYXxy4GtwQXFAyn4aK2ri/fu?=
 =?us-ascii?Q?srOc+VF+s6OJZy7XIltgikEL2+Gt2hYT/ZBik1PhALckVD/kWx/Ot7xYJxnD?=
 =?us-ascii?Q?nYAzEC8H1Y3+cgagAiuhHtHCSAh+zdL82hlwu9SBRoRSh/j7xH4gtJbpq8Dw?=
 =?us-ascii?Q?Id4p4w1236X6cElWqNxwk9o7LaOhkKqtuCEzR2giMhPGdI9LMd2flJSjXeUe?=
 =?us-ascii?Q?GRtONzmVTSRaegy1MQ4tWUTPxxop/fTSV74ZgAiBqlrFrJBOASBqJ2yBtxyG?=
 =?us-ascii?Q?chwaJyoSsTFsTOCo2Hp894RKdojp1O5jvuLfeDaAd8qUPb05p3qpvayhVlKV?=
 =?us-ascii?Q?4Aslf/HcCW7t6oSUfp/rQYrWOQ8Dtesv5UYZuvMmE++fbXWuTrytFxQkZ09m?=
 =?us-ascii?Q?jxpdsT6X1//a9w4uxlJRr/X0OOlVMUnzFj3NRTXnFRa8n44TmcqwTLkSxtvb?=
 =?us-ascii?Q?jOnaMjZKZIOf6yHlU89Ilg5rS81WT4kRPYBjzy+jH6CSxpGppLPS9GIleywx?=
 =?us-ascii?Q?Aq5t5yZFmCvD8q4yN9yRyCFWWATR74tpU/cyZRBejgvg9+1Ljrz4UypKsFcv?=
 =?us-ascii?Q?w2wxUY4KYl0zxSIs+zdjf9ptP+tWL23zjTGOxWNFFLwjzf9HONzw3gCyhr+a?=
 =?us-ascii?Q?Jbjx/OQ9b2CT35S2oh/t8W4W7LUvZYFTyICLQlyBNZxyh4AY//QfFhkyNEpx?=
 =?us-ascii?Q?KERjmytQZYLplaZD1Ir1bWValQJ3grCjHWP3vmWxeiTmccYQ1yClkUR+TvHP?=
 =?us-ascii?Q?MtHIIDNRbUsHdHYYWP9TFHicbCp3o9QJpKTkElMJFEr9rZ/egUXT/qDgMPlS?=
 =?us-ascii?Q?NM6XBXF6qj5aTl4veP5bFjAwKHXIP3R7kYhnE/KrRizFs0G0huVBQYcrC3of?=
 =?us-ascii?Q?iwv7rZ1M5Hv3DD44GDKI5FbQ5s9HIKxRJg4DPMXCDsWIjhiR8Yi94FfSQQfa?=
 =?us-ascii?Q?U0XyiCq8g8B/BDOgzZwuzb1ylZLMG7FN2NFVvezKxxnCsoqWc7X4LU23nMgG?=
 =?us-ascii?Q?ZPPGKIs0J+vbu/xTAxra5avGko0aQczxnlqDThw+hggCE1HJKWwxKpB54Kbh?=
 =?us-ascii?Q?b9gHD2hFiOzaf6sI73Mh+/XuQ8cqfe1AcNaW6je7H4WzYskiLEMJYvwKcRPK?=
 =?us-ascii?Q?/aWkrt+Oqaf/DWNqt2cCK+X5qZl4soBKTHdilQnfS0PJIxyEfDGA/lLtFM6a?=
 =?us-ascii?Q?irTtY1nzRyWu4+x29bQIAWKe6v15z/dhz5ILHUU2S7QYfUMNe5/Rdjs39SMu?=
 =?us-ascii?Q?nA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c4b956-f884-4ac6-41f8-08dad3cb52c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 18:39:04.6005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g1y01dIvL+XGq8mMfjc6eSiCcH76+sEaHIwmufyHQHnHOHKrRc+gEPZRzhiBSfoiJXRci44bg0w4Y9UuVS9suM4jangQ6/db+cThWQ5LC8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669919953; x=1701455953;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yrUAm9Bla6YV6OYhNjdwhgdI9MGRNyIvRSjFHM1bxxc=;
 b=OE1VCrEujH3MFb85WMvIeVv/juRX698wf5/36Mc5wT8tzzlvFGrmBv8k
 nFuuF7zEqTksHHet/QEWfMD8rtxxPdHPFMw0zF1ghWqm4Mpkf8kxpxLZw
 4czZ79TjTXMk0ceEPisqv7l/O7g2IkO50yYDkc9PhTtvskfGkh9uz6MIK
 /cfYNyt6mg27GJ4W5RJcvscuuOeJtk4AHpwqO5TiGiuu6T708mbfWE2HL
 DTikqlAPjrDyDa8Wa7BC20tjlnjZNURUFWDtBYJZBDNZtqPEAcgW35RoD
 Y1dMSN1lOpcR/LWYKMlHgnrcOBS7tWCB7LPtt2p0pvVxzGd69mGhnd8TH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OE1VCrEu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH v1] ice: Support drop action
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
> Amritha Nambiar
> Sent: Wednesday, November 9, 2022 3:38 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [net-next PATCH v1] ice: Support drop action
> 
> Currently the drop action is supported only in switchdev mode.
> Add support for offloading receive filters with action drop in ADQ/non-ADQ
> modes. This is in addition to other actions such as forwarding to a VSI (ADQ)
> or a queue (ADQ/non-ADQ).
> 
> Also renamed 'ch_vsi' to 'dest_vsi' as it is valid for multiple actions such as
> forward to vsi/queue which may/may not create a channel vsi.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c |   50 ++++++++++++++++--------
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.h |   10 +++++
>  2 files changed, 40 insertions(+), 20 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
