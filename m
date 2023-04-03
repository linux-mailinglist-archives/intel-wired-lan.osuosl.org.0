Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382E86D4577
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 15:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52A60408D0;
	Mon,  3 Apr 2023 13:17:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52A60408D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680527838;
	bh=8Kj76wV/5NTmXRADxtDUu99f6swgn59OaI4YktW46XY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FuNHhorERlLpYkCCS0Ja2mswq4Jina4Grs/6ru+PFkJNhqs5L9YeIl6dRz4EWjuoC
	 YsILubgEt9L3G9LX9gz3biCO8cWJ2qycNqWW6GBVWN6mULp6nnLhqd/fUwCEYcA82b
	 KxAlHW4VLi9o/dL4WnMKfdSJF34mujA5E6vphq9pAJrpCRcqEzkSdBzagqG3nlpZb4
	 DUaKBUTa4Wrsv6LGhzfUEaA/TW3jIKgG9dXbxeHkgRDNFo/NZE0vK3viWrNJ/qqtYG
	 7D43Si5l254AXS/MOnIvbJLOWJ2mHDWGsLb7UA68oSovePRGN3NvMGuqazXwD1MtGn
	 p1QgzX1AI+J+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUVdXMIc2936; Mon,  3 Apr 2023 13:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 207E0408BB;
	Mon,  3 Apr 2023 13:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 207E0408BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 02BBA1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C93D0415ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C93D0415ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42ilN8PnNC8X for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 13:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7090C415E9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7090C415E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 13:17:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369701400"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="369701400"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 06:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829563274"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="829563274"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2023 06:17:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 06:17:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 06:17:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 06:17:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 06:17:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwS+JHuSQCcVqg306SDH3A8YTtoIp3yVWnauF5i538Ypi3z+NGk8E3fD3CjUuMkw6VXgMupC1/rLxcmSshTpFInY6eC2mSQXCg/FVWAiZOKzpmLQx9eZSbxFLVCBgYTsHXzozkulmXRgRSDSWpamV+bU7a7B/MMYg7tkU0M3VBD/MQrZoHVOh+prNgVUfLeVEXQR/vAMKcEBwWch3PEr1rdFBMBsDyApR16EVOY7PyIjVZ3YBksd1WQgGmP+JZsF6iQrnS1h/NdBThU8IyorI285SbsgtyG6GFLRSnRYPUblo2x9b4trdf+oC7unWXfnHBVV3+EmEpx21yXspZ+RTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UNhpnbaC3gDNMr0gZfVI/fVBGpuT7ZNdmIREfu2WkHY=;
 b=f2K1kRyHKP/hkuZsVBengT42u6EAIdTWlhIp+s3hXLv+49aQojNQNTXWsz63/PZKQzRbHx/HrrRZYRB1Du/CfstaxKfn28wKnIOOZdgQrR68hmhaD6GZ6wZrWQnSX6IHXifhhkCSVHZfrEdzb713Z/eBPPMdimdM/Zo98DvFCfgIpHzOXGxWjcV4CJ9oVT37bHiwwnHvkhdZY8xsNWP+mVVfNcmR458tMLM1tpgXt50DCnYND3aUaUNunn1XnpBwaZAlOHj8nVP+B30BowGZGqw01qB7Nw/lvcPXdYnJnqM4Tas5/WyO6G3gP00Kf2hvCibkAXm3fwyouSybZ74dHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.34; Mon, 3 Apr
 2023 13:17:02 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 13:17:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Liu, Lingyu" <lingyu.liu@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net V3] ice: Reset FDIR counter in FDIR
 init stage
Thread-Index: AQHZYWMOqSiSkNy5aEOMLGepYyCC2q8ZmkUQ
Date: Mon, 3 Apr 2023 13:17:02 +0000
Message-ID: <BL0PR11MB35211370EAB681285A7668B68F929@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230328104911.687508-1-lingyu.liu@intel.com>
In-Reply-To: <20230328104911.687508-1-lingyu.liu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4830:EE_
x-ms-office365-filtering-correlation-id: 871a97ff-f736-416f-0a31-08db3445b6b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KMQu5F1mQ6uC9YG0TJ4PC+K+gzozO1IxukmeofI/Y++TkaRGTnIs6DNd05z8bDVDu7mUKC4QJydas9rFzZH/p0wzptMkGLjCaHRR/86DwEi0WnsrkU35O6k1PGXJYR2HMDU6css5HFBtS42IC26cR/OUfbtXgl/SRS7duP6daWfRILhv+qhTpBAJrXANNnEfXcwhsDAK9EjRTksiiowKoedPT2lr2NU78O/6frz9gXyNJH8ggcZHxn/NsS5Njm+eCCj9IjRC0+oPK586QFD1AQGWj5fZWbJF6FRBHbwUgskt1UfGJSJvjEb0GacRavBK31aAuChFbsCe6IOiHGcPdSgYJkwx/NnQndZeb7J18Ead6a14Q7YzXALi0zt/6igGsusWq2UVbHx5nIeKW+4+ChhJ3+712NJIroTuUcVWSOEYUkmAa6uW3liqQ1iYQqQhwaJfZ5y9jxiYKS6Md/xt+4/EKEPWsBH1Y7D23aP/4IrGGqhrmbvTkydZUTTSf+UBhbKSGb7hnrz5ClenNa1LrrN3EI+5BELAyRCGNeAHM5S+Uvh+5/mm3Yn4QD80K6JXtGkVlP7bSuA5yvuZqPP6wqlHiQkLtggIBR6kjRDivmBrtG+EKv7I7RTa6V+bj5xr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199021)(83380400001)(5660300002)(71200400001)(8676002)(64756008)(76116006)(66556008)(66446008)(66476007)(2906002)(66946007)(38100700002)(38070700005)(41300700001)(122000001)(82960400001)(52536014)(110136005)(316002)(8936002)(86362001)(478600001)(26005)(6506007)(9686003)(186003)(53546011)(55016003)(33656002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BAbStmuFhpsAoJnoVN102nY5gXR9zioOpW/2WWdQ3ERa+g0rwGe5E/8bRerl?=
 =?us-ascii?Q?SRI2hAi8+1pUb05FTAtHS6ANYQAfwPTIzK1N9h8i36VlU/kxYSbAPqxQ8Ql2?=
 =?us-ascii?Q?Bo22Z2NDkNVn7NuVzwedE6sO8Sul0bfFAK2MU112ftbZ/F0SpaBLlOBSvJ54?=
 =?us-ascii?Q?Dmpz62OqhZhtgv6vZzg3JEtLB5QAm6xOTQaZq7ntNnb25uFoAizBGKPFe3ay?=
 =?us-ascii?Q?R2DcBvjCptLcV2A9IDHBDdFeCJ936uWxaTPgeCw+Waztx8yet6l8VX0d3ecb?=
 =?us-ascii?Q?89QAzTKBQqK9ZTd5AILqNE3I8mzQ3sh7z7Wr0y/vyoqe/fhlrEVBrB8fFu6r?=
 =?us-ascii?Q?chD3eOhEk3mVOg2i9U/zhLZ0szWIO7Np/gLnu5nFltUO5S0o7Aakb1+OPcMN?=
 =?us-ascii?Q?f/ybGN2cGaxALRz5edIZWkKnPtLbuuK8OKmHRA/LZY6SxhQbovXD4Ef+xdQM?=
 =?us-ascii?Q?cnXpxW354I4W5sbZI1NYuRGQD2IWN/XGm3AMr+os/j0bRmMFrxLYawDpbiy6?=
 =?us-ascii?Q?s559/DWxlsenz8ieCCwdATzZgS7P72TgiajwjnNFFT7CopIcy7zo7hZhZy2n?=
 =?us-ascii?Q?2LjDKaoPxZ7+mQJ89LPXH/5GaIsRCMmlruK0dQD0yuKIxxozoz38rdJJNeR4?=
 =?us-ascii?Q?TDHErwlTnGXLPlVBDg13wFSBwmj0dnBz3wh5ZgRJzFcwvfePgXPxCRYPilkT?=
 =?us-ascii?Q?DuFTIC31WIPG02K2WFqdaDXTF/8J4WcV3I1it/V9N19OTccIpDK7hxLIY65R?=
 =?us-ascii?Q?JJHdQcNVyWUP+J8YqyaP4fgaKJyoGzi0ssy2ThcSmIIDDojp4DUnAfJfozU6?=
 =?us-ascii?Q?0aDlEhhUwGUSCPhUryrfyg0U3ioXHrlKCbf3xhi5dPzE61/ezVuo2K2QtXF7?=
 =?us-ascii?Q?TGf8LA8ukaUBamzIzs/92B0ZwLGx19rEqsSlxeQojlpDDwwOjslIxNOKD+AO?=
 =?us-ascii?Q?vA3RK3VAdVgtNft6xkHxkjw37+0GogQq9oX5jjW3GHjJDVM8Rbrgpg29T3lZ?=
 =?us-ascii?Q?UlMwmskWJZthXJc0o2PMuTZWlL7HT8h7da5yYaCMJIe/gBz1/2jn4KQSDRgm?=
 =?us-ascii?Q?jMplGvHJlIrKRtsZsA+HmE3Jmt+7Ov0O8V1xoaNEVuL39G2RCMTQRnvBF7HI?=
 =?us-ascii?Q?v5r8AxoafAieJTMyEDqgNi4Z0fwR0zDCQH4mvyJhp7/y799sYwAbG6hcXE8U?=
 =?us-ascii?Q?g/fTOIdg5uvsmQzGxfUEL39hLPqTyged8sHSFvjMoe7w1tGvWheMUTqcR86N?=
 =?us-ascii?Q?oz+ieQSuI3fIVspFqx8oJuuwSU4t3yQC++cWTXvbwrHdgeiJwSs8RUqv3FlG?=
 =?us-ascii?Q?j134LiTqbOKfVhF5OPQrf7UnhEeZ+brhX17vOXbWQetNt/V87ctynMS86kX6?=
 =?us-ascii?Q?dAm2urEpZ5u3zoLivCx2V1mPqu4DYzFkB2cD8DzXsTqs978Mc6ttGsmiwD17?=
 =?us-ascii?Q?vuf7dXsQEUhx2vDDU73usm6I4hRoMDNbf++LJpZRz7CgYmq7UzOTahORvLR+?=
 =?us-ascii?Q?ZeuNmY5WW7gDnX029QTQFTh6kJqQzHIRvi3g5Dfld7SDb/sF/YO4bFPOPpmj?=
 =?us-ascii?Q?hgifYzUbYmQsdYvjuyKiZzZqXytcRAzJChcjifMR+GcXyJkVggyV/s6qaz0T?=
 =?us-ascii?Q?oA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 871a97ff-f736-416f-0a31-08db3445b6b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 13:17:02.5549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CmI//AI49gHQI1tr1NtoLAIG2QQZ9dwrzZVFhRRr3qxjY9ClwGVQEAm9VbqpopstgSq2QlZZ/FsyloIbAWe1pbnB/3umREOlGuLYOVo686s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680527826; x=1712063826;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BQ0khEvpIgXqZFYoZyBzyRJY077FFRRJf1hg/qBv3MI=;
 b=DP5JUPElat/tElKQ1SvN654DQ4MN7YV72G+ej5qpBlcn4kIKOhA+Ob4I
 gUz/RO3Zs66Rcsb4qHQ3jBeuq83o43ymRuI0hjG9Ux4lkqlUGOL9ybyyi
 fYWJpLfu/KLGEZWSiaQag8VIU80RErwD3WqP4qyveAy3zdG2qb0m0fZbZ
 65FKNXUxCA/aaqpPyI/1NghoTtydlGEftlbNcCiKG25+5htK39U4ypOZZ
 cSwv0rNLeVsFCUDk5ufAKOjf0qiXgp6453G5MQU6mr1DpmZpGYAD+X74L
 Jhq64XwB9/MF2rwT2bc6ag9kOyeSDS+JbBQryhntdFBjRaLpTSweji+TA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DP5JUPEl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net V3] ice: Reset FDIR counter in
 FDIR init stage
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
> Lingyu Liu
> Sent: wtorek, 28 marca 2023 12:49
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net V3] ice: Reset FDIR counter in FDIR init
> stage
> 
> Reset the FDIR counters when FDIR inits. Without this patch, when VF
> initializes or resets, all the FDIR counters are not cleaned, which may cause
> unexpected behaviors for future FDIR rule create (e.g., rule conflict).
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> ---
> v2: change commit message to apply more to a kernel use
> v3: simplify commit message
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_fdir.c   | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 4d007d8c2540..daa6a1e894cf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -541,6 +541,21 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
