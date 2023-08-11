Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9324E7787A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 08:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F94F40193;
	Fri, 11 Aug 2023 06:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F94F40193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691736688;
	bh=/G9kzaomY3qNwsttrRueBeJbYZqLq2l7ZJUaqOT1EWU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kzztINsc/k2j5GNlxiDJMrD5pshkZ5XvEo+CVl5nRR1CGB5rusQFE/aGxdo2r44eL
	 3+175zjV4ZAm+8cIJTjcOeipTgz5YsuthbzcIVDIE0iEIbGT1a8IWltnWPBvw5BgNc
	 Dyi6gRfnq15tdGMqyU/iYiOdbKINiriGZWKUaXKyOD/dyQditP/gF8c6C/pyC12fdY
	 VuSxMlz8eVtFHG23CrhXWlGI7b2+wVzAFPI+O42m6LPffghOUIjUgVdABB9EcEZ5kg
	 ns+owNIPUqsfkE6vvuOV852dMItVY8BFHE0Mp8xZwDbXp0rQhldG/X31ZtNwbX5E/c
	 PYeVvguWtX5fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ToPyDtJ5A5X; Fri, 11 Aug 2023 06:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 119E6400D1;
	Fri, 11 Aug 2023 06:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 119E6400D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11EBB1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBB3B81FE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBB3B81FE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qd6L00-jSpRA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 06:51:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12EC281F5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12EC281F5C
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="374380337"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="374380337"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 23:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="876053664"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2023 23:51:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 23:51:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 23:51:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 23:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNWkcjQNPAtInJMwL1ERdyTypyVApvHsCN6EJVuzrq4uHzYzaJBBuD/5RY56uNCRC68I8sDfFMvyxrUeLwwRA0jsaSFG12xwg/W15NTcNCGXullaR6MXts1A6U8P/NwRGmLRqD8k3MlzkWnK7xYcEHRbFbAljrKjLZVXghGPSexK3ra9kGpPJwjULDxIxB/zsptbRfOUQOwMFNhCEPrsuCuyhwaKzJOQTa/bHjto17FyJF+Q1L3ajZOOadDIHV+ToSFZvoqMNle+/MbG8Bwpew+Lr7ihr7dSep3HGuN3bmnWAXwOt2Ak6e6fK3Gq0y76H7UeZQNbEuuOr59phU+nSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GJs13nWJvTotDB4iAd23iPgaUW6CdT4JPL9feUSZ5zU=;
 b=npj4XqODP+rHmZ+5EqWJrUo0NY5GmhHrk3Dd3JrBelu3nS9ZKKSMlCtL1pQQG/olCiiCQr/iSQVrxU73R727R2Qle2oPk/UJ70PRp8gFtJfBpv0FgIcjNjqh+sw3abZ7E2wDdf/0KvLozqgEF4P5XjDiX8iND6Chl6aW+8BrB3vs3BWs+yk1ux3HZuzulfA+9BJbn4TGE9N9yDcf2+g7IgJDPSGj5iEEW0v9cTAFQ0hcxb8vIku6AzOd/lCH5NStJytWeT7swbg3x4xz79DWOblm3aujhdX6AlPO4GKdqzN7Z/Ff+cARkOHjt5ZRWX4RSEEUphtKypKrySbfEf3xAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MN0PR11MB6303.namprd11.prod.outlook.com (2603:10b6:208:3c1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Fri, 11 Aug
 2023 06:51:07 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 06:51:07 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block switchdev mode
 when ADQ is active and vice versa
Thread-Index: AQHZy4R0L7Y/tvaPf0aC2efDmfbLsa/kqUzw
Date: Fri, 11 Aug 2023 06:51:07 +0000
Message-ID: <PH0PR11MB5013D3D2A31B1622F7AB60879610A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230810121245.51587-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20230810121245.51587-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MN0PR11MB6303:EE_
x-ms-office365-filtering-correlation-id: 853789be-4c7f-4b82-ed65-08db9a37571a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jwpwNPRpCZctuAwA2X52/fH6AAEWej7hrmkl8K+fGju7IUfTAHo0EWdDA1xChTgpuaonBVH7TmsZrNF7FjjFIkLccoy6Embi2YN+LHjHCZHl3HzRoztDGN4E0kNnATok7jTfXpL8W4Q5BxylyQml+QSj04zNkpyBVhS7QY1Tr8T4bEkbhbR0Vr1sSy7rds0yuavkKckODUtSmvUHuK3JY0fFw3iFIgfkWp8nBsgKLpvoHlB+W9cnSx/jEhAPOw/i9773TOQiQqnjtEepAeLKlZwbcQJHoWb1OlYajsMqQdV+Tq1jB+LjImyVV93h5YL0dFu4DZQLapyWMSakLaIOM2pkuCfvmzSRZvMmydueDAfvfZtW5/U65QlluZ2A1wuNRswtQMkhfbi9TpKqW4XB8e791P7B1ekkkRHLsHEWAIB3UiF4Q2y2rd/FfKbRcFnUtfBCD4Wr0hZ8hLETbZ5Y2tn7NtYt+WemKRW4IyY0tC9WhxvwiG0l3RuFyNGQQf5C2aZju83FmP6RxnHBWeOwFf6M/irjP3GVhZ0xQLs4MTKh9j7MXjXQ5b/qrCJeXg2p/TQFbcrZv5U1GpItshXUtdt3ojSuGW2mJWJg5/CanboOUjJrjb5rCqgd7rW8CRNu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199021)(186006)(1800799006)(55016003)(9686003)(52536014)(82960400001)(478600001)(110136005)(38100700002)(122000001)(54906003)(71200400001)(7696005)(8676002)(41300700001)(316002)(66556008)(8936002)(66946007)(5660300002)(66476007)(76116006)(66446008)(64756008)(83380400001)(26005)(6506007)(53546011)(4326008)(86362001)(38070700005)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fO/JIv9Ql1ONBFXkj1a+iGcLLDOJi0d55w0VvOnlhDxzkWfD0Wlqsy4jEqfb?=
 =?us-ascii?Q?wfcsP0y1KmuT/aQYXjrf4M3QRYa0UGSFigE+e/d07q65K8WfdbmfyD+pBbyT?=
 =?us-ascii?Q?86H4vP6CpV8QU1JqJct865NII7n0dfgvDZbFjWxQCup1zK0EcrTRV6Z+BoVY?=
 =?us-ascii?Q?MmuJSgRzoTwRBmOoBu9pQPWksYlL7RfOIl0HIW+25Jo4m7QUA74IdjLE+ll5?=
 =?us-ascii?Q?nElAS5v3D9EwDJHtjjYCPqm/qpz+1mS8Kb+Uzq7gxCfJ2eD0E2pyERuRa32i?=
 =?us-ascii?Q?rmcZjE0AD+/0dtwyE3UpFEXE9NlKc2YmsRYkm6FehxZhRGkw4hUR4aGPsaRy?=
 =?us-ascii?Q?jb6FUKsEh/t/BFrT+8moEC8RmgN+2n8LUWxypqv5LRCm121Q/9SiWrh9evCg?=
 =?us-ascii?Q?it9JheUzF3WPOwdpvqVMZ/jMBtNHJuaARFr0FsP2OxHG6jnLDsVNgDPKjOtY?=
 =?us-ascii?Q?63VC0nBFm62ga/Vnsoc1F+T6GLGNg3hEI13zJzHk/eITbq1ERb0UgvV/FXeO?=
 =?us-ascii?Q?E7YOJXCjXRMH/6H+8csgrjLLldZUNg2/cYhuRzt5zINYYI3vGNOa8/rjMcY+?=
 =?us-ascii?Q?YxluXU/LWJr6kY3VHzn1B2wGl8BguRrrj2e46vshWJlbS80NYE9vhqrBdKss?=
 =?us-ascii?Q?eo1hVekOrgWgTkner383UKEAz9Cuvptw31YxNvfIIfC9PWFpBhKrSOxcSUPM?=
 =?us-ascii?Q?DTmjQoG5/CTS9gKSO/kw2m2tH808hhXCRu7vBq+gp7Ua/IJWxntweIMkMIWv?=
 =?us-ascii?Q?fVjyFH3KND5ejUyHUKAooauFzKODFp1dU4On2m58pJTBJEdk6Xmq+yz9sY5/?=
 =?us-ascii?Q?JVjg7tle2/1DtXTAktT5iao84uolygRNZulXWdWy9KKM3OR0sTcgnHCWIRnK?=
 =?us-ascii?Q?FBURqe5+WJOYZ/x2dq+tFn3J01/vk+frK6En1s2FcPkilw7zYps0O99E/U3t?=
 =?us-ascii?Q?pRCBnhdxBdDfiOPmS2NGArSYZd1caw45tpEJjLcmSexysgsifHRYn6Ph9Cow?=
 =?us-ascii?Q?wx/an5JIiaQDosI3liZ6Y6pkz5yoARKNOa23zqHq1KA+lVCGu2UBjZV0/fRU?=
 =?us-ascii?Q?0rsylBNvIzfpECQWFnIk6GWrAEd6BYGvYUiO9cQpbKpY/rCUdiTELNkIMcco?=
 =?us-ascii?Q?njSZoy2MhOH3kM6wsu1sNYMMOLROPZuVKsMHYzM8/82QupsLRO38QEVd6utY?=
 =?us-ascii?Q?RTDSN5UF2HHn5bV3T4qAmdshTO5WgNiSFJedLo9TQX6klJkdUhJdMe4/cOBD?=
 =?us-ascii?Q?QnZFrFOsGVLRDx+b5PAhy2+Lmao7NOQHPMPGArGNUBc+DSLwkmObtzXDgCgD?=
 =?us-ascii?Q?ZRJWfahK/SYiDb7hpp0I9GqJx/Yu8Fcl89k6yB8l8vQ86IA42qPORhE7lBbN?=
 =?us-ascii?Q?heqdRIa/N7LBtfP8WIoeWKE8Kxz3k7mKf+TDolM+8Ltnx17k6Sh9tRxRoLsY?=
 =?us-ascii?Q?v/yzlX1eiMY0ET8e1NG87Ad0w1tUsuDuuQnUrBoV8xvuP+TH+yvtpLB633LB?=
 =?us-ascii?Q?hFa/JDT2PkFbEgmNfGJIMU4chq7DdFxbi6RQzqkuNGj02JpnQMFNvtOTLGZF?=
 =?us-ascii?Q?ZbCzReJU8LmGjwDy9PzynqrKM5jbSM9IEuNgAzGzVKgUSTJS5wpLqlOaDocl?=
 =?us-ascii?Q?kw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 853789be-4c7f-4b82-ed65-08db9a37571a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2023 06:51:07.8067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r+DFW5qUSUKMDIox4fA6ABmw+158ssEyATRx6WSppSMQpIq+BKLUMwHp/T0qbE3mHl/ly8WkBNMSmUr3XttEifaN1A1GhTquIlMV+EHoaR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691736674; x=1723272674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2GkpGvEDbM7lKYrT7loIjy+RYnoKAWUSvPlumOu7/Kw=;
 b=kn3isg7ywJsxiaPVayCUO402vjhhOwaU3PXWajbqIjAbPX3coS1zEqIx
 GfJShFPHtZ/HGHVKKQBPPP4hhfj7jFXucUTAwOhMhUWtqJYVW/RP0oXHk
 sgBAmv3brvhJnqbBYxe3vX5EInnlrxYT5Q02WTZT6cUC7o38v56m62Dsr
 dDzyilujLT0RrOtKJodwKb7ThCNI9jgJb41fphSULs5w1Vbgy1uVzhCuC
 Xa2bifzlQS/EzlfF1K4txjphx3mxUpTKlCP1rWppzEt8H6KsV8+cufL5Z
 OLQNT3s4fgNF0uJefTXyIGp/Koa6hJqSJ63S5fROM3Pw9ezdilIOXOYFL
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kn3isg7y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block switchdev mode
 when ADQ is active and vice versa
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "leon@kernel.org" <leon@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, August 10, 2023 5:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: jiri@resnulli.us; leon@kernel.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block switchdev mode when
> ADQ is active and vice versa
> 
> ADQ and switchdev are not supported simultaneously. Enabling both at the
> same time can result in nullptr dereference.
> 
> To prevent this, check if ADQ is active when changing devlink mode to
> switchdev mode, and check if switchdev is active when enabling ADQ.
> 
> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: Added netlink extack, changed error message to be more informative,
>     fixed typo in commit message
> v3: Moved switchdev mode check out of adev lock
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 ++++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 5 +++++
>  2 files changed, 11 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
