Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6DB7DB49D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 08:52:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4742E8546D;
	Mon, 30 Oct 2023 07:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4742E8546D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698652323;
	bh=Y1qF0OGv2Z2fYR+oAVlKOyWWREcOkcylXhLYD76oW5U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sruEyouXOBR36MWkv4I4ED857Iy3X+fxEBRdzk4rcU1F1Acbrh9WH6Khji5Vei11H
	 T229uaYccP8lsh0yyQNqrUYytf+sy9oB95TKWJoqu4qYgXnkxqr7IQEGEEUl3baUM3
	 Bj3MHSySNEjA1RtoX2JNAnTxt1p9YG0MLasdqTvdWxk6o1lGCApwHtL95qOEyh164W
	 rP94wLPvTPd+xDbrV3BJrFu2bKpHHVaAl2OWI0xdSoeKVBZy/MGh6px9yM2/FnaTDC
	 8uTVZS70JigMB7qDa4HtuffR9mNPeez5iqlcfUKu/A5gdlTUmzc704wt9nIvv7cmgI
	 PBkfkTsBm2NeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EWKij2Nv4jPd; Mon, 30 Oct 2023 07:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 288B185466;
	Mon, 30 Oct 2023 07:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 288B185466
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C60D1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 737F885466
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 737F885466
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvfOr3kf25kG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 07:51:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D04F85463
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D04F85463
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="385231313"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="385231313"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 00:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="850836150"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="850836150"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 00:51:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 00:51:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 00:51:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 00:51:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 00:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCi+cTF/UqX/Ws5vXqzkyKHMtsE03lRgVnL2T9IFHzR2mnFb4cnCbVvdsKLs5mjmL1XYUjai3dXa64TvQiefISpBnJDv0PuNayxfo3KKD6mK2R3EtvVhWEpN6IxGsBX+Ou2/AdaaJyp5TB7BtYj8AkeR0ppaQNwRgWzh147Y4PcJqDIp7bFGtqRX1XfLnoj5syaA20ujmZFs3yxBsmgu1nKTNZ7k87bkrJgV5N8MdpxCBZkRoDZIHEjmJvbVnpqs35FIoDm/GCiku+jPLEx7CBf98pwIA9p4C1hl1tuxMR1hZ9zos03CeQ4wSqD3g+7jJ47xz6sZ5m1v1VnFT3fTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oS9yCFTvmp3+SwAXnugZiz9KzuwZ+7JLu23VrGNBoeM=;
 b=kAL+n45+27+JgyKgyJOWxetAupNGC+1/O7ibJbncsqaChNu9YU6f9f6EBirRiIlCSnS2RkA31wA7EFP6rmGKgdAMfip1lLKWIb1i8EhpQIvQTu9a6S5I1Hwj4lj+JHIYVus9v/rQwNfNDD3wgEEzdyy1DlCx0/5H8ck/4WX5cTJ6ewN72gcxwn4PCJJSNDTOQeiFXJcPzJTTo5hYgFzyWJEORvKuaHuXgp//H7b5kTy2NRFNfx61d6kLyMi/iyRxi0+bLwRf/tOM0XN9Fv3KSyIUfGqaF2yxMBMIl1rW3O6T4aL98uSOBx11Lai5+UvCTjTHQJD1qewTEzCy7pDxng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH8PR11MB6660.namprd11.prod.outlook.com (2603:10b6:510:1c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Mon, 30 Oct
 2023 07:51:50 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc%4]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 07:51:50 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Fix VF Reset when
 interface in a failed over aggregate
Thread-Index: AQHaBqkjNT0Fm7c3I0+tHa+20WuUnLBh/gsQ
Date: Mon, 30 Oct 2023 07:51:50 +0000
Message-ID: <PH0PR11MB501392704A4A21F937DD2B8096A1A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024183714.1680327-1-david.m.ertman@intel.com>
In-Reply-To: <20231024183714.1680327-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH8PR11MB6660:EE_
x-ms-office365-filtering-correlation-id: dacb7e62-e685-4b4f-925a-08dbd91d1343
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ep2zu75rysoKkNoloAviV65ko0WfeScpcr8IvVLBQP+I5UqraWkiw8pM1mK016sKrH462zwSakBbwjh5mUgD5OFi4aEcufBJDjXhJgoSdpXjbEK+wfagHig0Z1Ow6DvsSmhwIasZNEkWrCXBoLJVJJp+01wMjiyq2qK6yqAAHJFId5s1cTEULurRPkSWbb9pdrUTdbVc26zkwMqjtHK7MM/MWOUUBxYcqi1G4FvPnMK+v3vE7OG/cmy0ybkg4xGnmhacg+kXHyjhbXGmyNQOjmdmpJVJtU/RgLu4KMBdAeospfMrsojXm8gUtiattbi4DRCcZx8oT8d8bumrchxOWs1TYGJWWQof1MAH+xN7kRGuORU6RwhgplgJQal7IgA4u1Ij/PZEFz++psxnPp2XnUO68jW4p2dynYWurqXPVMRuYXgoxBHCtI4xncvDyq4tGjAWBUTHASl7gzWu9Mv9RAKsp9kKZ4IqwGAMz/zZELQdu18J5/nlXoxlud/zMN/ZwwwhD+gsB9eeKyTNr05J0THQEJOdS2CuhGV6RvFHdLBo1Ycw0PQRGYyh67JllkF9MYpWzgLpAMK9KR4eRaFxLohwXwud4MjzhAsqs4CBo9X20bxzkQmJ30QPk6WmHVqL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(376002)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(83380400001)(55016003)(71200400001)(122000001)(86362001)(5660300002)(53546011)(33656002)(38100700002)(26005)(38070700009)(9686003)(6506007)(7696005)(66946007)(76116006)(110136005)(66476007)(64756008)(66446008)(66556008)(8936002)(8676002)(41300700001)(316002)(52536014)(2906002)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0DJaByAc0MVomZJj9pBws7ECAx3887jaeh/KTZAiDRxvUCmtt5bBbxR8m7nn?=
 =?us-ascii?Q?823mGL67ZWyynsDXuzsx1JCxb+xhB9HOYgi7vMBLpGIomDIvlvKv2Tdl2zra?=
 =?us-ascii?Q?SkGs7INDPMZmZAMCLHR/1r7HX2DK2dU7wW6VBWP//0SeyU+J0jEx5ZDfVsjw?=
 =?us-ascii?Q?Qmr24p5/FWRqj+V+5+9E7C/m34h1yuSpQofCi3qqwh2yFbW+/UVhZrRHSyjp?=
 =?us-ascii?Q?dxFirqSFbodjJUVM4lRbtIZWcpE22dVQOfSE60h9Fo8/+ff7kPb4cheWCt0Z?=
 =?us-ascii?Q?pZbNc7rKo/aVfv+CUfxgxxVFBSgqOraA3kxUfkTNIDGTHalG4TbGGn6ut9+T?=
 =?us-ascii?Q?HyhO82VM+2jnsHu8MsdB4YSN0cIZYqLEoy+anzup9ozquf/aozkOlqfzV2IA?=
 =?us-ascii?Q?1Gsy07XdefnuQgiDgOij4yiaiYUSV1M5zIf4TY3kApnOmOMpQMOGG8S0si1A?=
 =?us-ascii?Q?mmc4TPhgjvUhYuCJAK1silsNYdhpKoiss531xx2Pp3979vXhTHy7V2j+wSul?=
 =?us-ascii?Q?O6ExvNvvNBGxn0c/K57PAodMlKHrHBKjnNsdLkEtY0LuQ22cxFqQFh696yVy?=
 =?us-ascii?Q?2IHTc6IadxpPrHlM6L4lN5I+Z/2QZQQplzbE/n3aqEjTkleE7chJrtxp+0SB?=
 =?us-ascii?Q?wkHvQMBL/9e5MBe4G6FRkZkm0BkZ+k3iMmu9SCHiUq/NMkfFzRq3NpsODBFD?=
 =?us-ascii?Q?xlWCfpG1ChAhxbkN7Vq81KmnEb/el0FBtWSbUCJ3qaPMjNy1vPV8UhKlFfrv?=
 =?us-ascii?Q?QnRyQ0aE17tjC2nY7n2fh3cxy3WTYTjbmt7HIv/Yew6JMeXvYBOpXx7rT41J?=
 =?us-ascii?Q?qiKrjnopNCqAU5IWZuGcFn7dVjBPLbvSBKuZIRpNk1G7UljhOWk+WM56pDMB?=
 =?us-ascii?Q?eTHZaDgqos1FyEmmSWhXVsQ/nMQZeoKTkvKealODJr4Yb3QNDjtR/dB4e0MR?=
 =?us-ascii?Q?x41AH5cLc1l/jg0VPl+7hMmTKuzrWS4sjKgwiO0JDPHw+Ah/EeM4hmsJfw0N?=
 =?us-ascii?Q?IuXeS6Q4P8Sn6wIOub5AIrdXRLkzsWbqSI6bN8u8XJ/laY0Tq2c5JDw4zzYr?=
 =?us-ascii?Q?NAaH++IXjESLkIQx5pgzho6KFHCkqYrFz7/hepXOXC8ptC3Lyn+VgiIBJLmV?=
 =?us-ascii?Q?F/HSe8a4vxlkfdZqcMnygr/9Emi4NjWUfc50cXJPJ++cCibTdQwjHgfeqkV/?=
 =?us-ascii?Q?xxANXrHq6+KQYHOLf3G9RgdWz2TdS3hq2SahEFh45ic/eujI3iEhryx1L8/Q?=
 =?us-ascii?Q?2LxnpwNzzy5XuduuW20ruczJc4yTRXru8bThTEQLuUbdppsYUT4VCgGsAdm/?=
 =?us-ascii?Q?M2/fBgTymDoqo7tpbUZFR8M9dUUueHy0M8HLTetG/pXCRJ3DlCq9D9Xutsoc?=
 =?us-ascii?Q?VPjOyjn9GijSe/WVwuRBvpaxAofFlJkYxOhIkty4KcGH0qQJ5iBPICzDhsCl?=
 =?us-ascii?Q?Oxm82KgIg/x8DZJNpXF1mDcGo/7WB4bXJvT4jCRQdK6Qmuy0jTPfZz0+5QVF?=
 =?us-ascii?Q?nZknei/19Edg1US3NKUo2mVo8FpKYHMx1TI5reb0YIkOqLVF27Sj0VRger57?=
 =?us-ascii?Q?AhaU1zHRTQOoEQGCyALW6G47l4gdc1EqSo8YcFxqpe85djwJpWtauGmVC4Kd?=
 =?us-ascii?Q?6A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dacb7e62-e685-4b4f-925a-08dbd91d1343
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 07:51:50.2954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j7o7EGwOd7IdrXA8SK8oobzdjpY84P/OgFinMN23lHyWnxTlpFPz4NDt9u2ANC3FP85jv8Yh8uOfuPeReQUNHPD2rv+YFefcEslJY2cm710=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6660
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698652315; x=1730188315;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DCJxYCgzTu/dGSVVksqsKNcDv9+AkaafgVDCxXKj7Iw=;
 b=mKSoFwlHZur1V/1DBRjna93rv2y6eCFzN7U8ZN+aVrX02pSVc1nySrjR
 wxbfztEVRu78/99mkKcxxy2Z1PWw35rq1BszaP//XoNbHj6feiCKN7dzQ
 4mtLE1fyEo5aMKInKxDazoV/GN//l2PxWki4cbKarjWA6uZT9xSzhxXaD
 vvxUeS74Gzz0pBuK8QKg+KDFLlRFIlYd+HOQFm4GGBkc4zTUAz1lw07FH
 9MboDS/9zg4nhTX0OswYgIq6m1RB2SQAhZexC0bJOy+8MyOU79YI1L7Cm
 a4/oUWYSiKAMulR+qbWBcqP3x9ByAvntSfV2i5gzkBS//q3QD82GYQugI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mKSoFwlH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Fix VF Reset when
 interface in a failed over aggregate
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
> Dave Ertman
> Sent: Wednesday, October 25, 2023 12:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix VF Reset when interface in
> a failed over aggregate
> 
> There is an error interface has the following conditions:
> - PF is in an aggregate (bond)
> - PF has VFs created on it
> - bond is in a state where it is failed-over to the secondary interface
> - A VF reset is issued on one or more of those VFs
> 
> The issue is generated by the originating PF trying to tear down the VF
> resources and recreate them for the reset.  Since the bond is failed over to
> the secondary interface the queue contexts are in a modified state.
> 
> To fix this issue, have the originating interface reclaim its resources prior to
> the tear-down and rebuild for the reset.  Then after the reset is complete,
> move the resources back to the active interface.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lag.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 47 +++++++++++++++++++++
>  3 files changed, 49 insertions(+), 1 deletion(-)
> 
We are observing traffic failure while testing this patch. VF to client and VF-VF ping stops working when VF reset is done using below command after LAG failover.

echo 1 > /sys/bus/pci/devices/0000\:0a\:01.0/reset
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
