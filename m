Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F1D7A1F96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 15:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15CE44193F;
	Fri, 15 Sep 2023 13:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15CE44193F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694783718;
	bh=xXB4BQPTctatf5/I9GKG3w8GZ2aG7oRLW3yygpBqrys=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pYFsMLvR1o8Zf6Vaak4/H6JiOUhPOzOjFrm0lkfzWyPxj+/4KZO4ybG2LdbKZ2yqG
	 x42whenTs/Y08/6rJG9hOoR0qhV4YpStOGHZ3VtQpSISyXkYDEogqkj3fFmTbrSqqJ
	 DyFS2kD1cvIFU6YMVJUoION3GX7GIbhEexn4aCNcgTi6WLZqAzV4OboZ6DVJcDmzBZ
	 QFWrYARz4JAZlKBkJb1dGzqXhTbNr0wrjX71NMFL7iOybEUMDg+JdMXV/fM/T+YxzR
	 LEKM5pSQW8EEg+u6DTYDqLICboxHWrbryuxHexNgHOYJkvtsAHAZePvWXesmsbFn1Y
	 lpVM0/1Aj+/rA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjlgmLtGr1iy; Fri, 15 Sep 2023 13:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BA1C4193D;
	Fri, 15 Sep 2023 13:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BA1C4193D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC7191BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDC3E41FAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:15:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDC3E41FAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61NGpsSntMU5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 13:15:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1456E41F48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 13:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1456E41F48
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="376578806"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="376578806"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="810512649"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="810512649"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 06:15:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 06:15:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 06:15:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 06:15:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hxyR/qvU9/eGM/Wnd+w/lfDEIF2tJv5xbeSLaEEVcdyIoejh4KpWqJtpdFsfxLLYPyD2M1WSFvbWrYHsgcktAICJIWDr97VzFjckXbd0Gi5zYMcM1wEya+FUHwMMnkYf1AZnQNEiiu7vxm436OznZTaqinqCgEsdVKZ3fJnGON7XbY1Agzfj9eGaGx4XDMkvmq+tIvudhB+bjp51ytsAMm62vZhp6rAFpFWpij2bZdyAYP7jz6AVYe5nnjYhxYzzatPb0tqOiKXQ9qBHEOd54umZREJo3Loylj/Bp/2bPgj4Yd3N+VhUjyWr8vUFRKErz284xSQHiCeqRawq1dpfqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1b8Tq+BLU6k88//UVHQW+Zp5j6dZEqXsZxHmfZldhq8=;
 b=HmbOS8LCzHwFNmYb7nws7b1t7Cx77EYXgKuvNRNyd9Ywe/pCCMF1gUfch+hisMe7JqMdSC2uRvum1jVnTDJM9fd2LAy3yzJbhLSDgdlUAR1jMooC5G/HgfDjsNp78oLjgx2ishZYN5XtfP5bHaJNh/Lf/j8XfVd9g7EdMh+I3aUWc+ZD0FvryOdzTsMgIgHV6IIPsppO6CtDI2sfNTAMzJGPKKPkc0O/gHETsMOGz/oqdmmKp0lOIYFZlTxjYds6nf8DkzNkuRIkzKKJJLO16BHed/NuQCSb/ccqmThs+DUP9gSEhcE4vH8KmQUv2X77qXy/PgwMWz5DgMNi9GNt3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 13:15:01 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 13:15:01 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH iwl-next v2] ice: Disable Cage Max Power override
Thread-Index: AQHZ1qBBv7SVSOjez0eHlWI2L+3Nxa/6wcIAgAMXFgCAAydJcIAB/MqAgAL2T4CAEWnMgIAEjlqw
Date: Fri, 15 Sep 2023 13:15:01 +0000
Message-ID: <MW4PR11MB5776FD835D06ED08B07D3FD6FDF6A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZO9dhzhK+psufXqS@shredder>
 <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZQB1HcpTsB2Sf6Co@shredder>
In-Reply-To: <ZQB1HcpTsB2Sf6Co@shredder>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|CO1PR11MB5027:EE_
x-ms-office365-filtering-correlation-id: 917918f5-5098-4bff-90c1-08dbb5edc48c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dtuWFDDCK3OYkb+N4q4Sni3XsoGcFsBWNNBFKPTOIICUKyM0TuxE+lyFDbtYo7kGRvU+rhiX7txBQ0HfHcMmW2nG7IsLnXrSGoBIliSj7MmqyU/biKnxsH0+o7k1cPKwDf+V8NcnwfJ5Trstd/4NnMZJWWejkbVeGE8SkH1W/B04debZBt0Kep65gqcy6A4LjApRrbM2Q/z7ABnowu0j2rxVVozgEI1QN06zyfIK9TBFv0jsTvpLLzA846PogMNtcTFTRrqIoRrSKB4dbJWtwfZuQzI/HxP7XmLeJcjUK4G75LpcnCI65E9l92PJOKvogjuY6q1s4m4KHq5gIN+MsfTq+zPHR5k8SBN7eGlSLIuccvqoobqqPn395HSznVjKKxcCkxv+ZvmfBv9Spz6l/gAdOpdGRt2xDUdsdgAsG3/9s0jylfdPZypTdwHfQPmaA0GNCgbO7nL0yCvTeWvTINWsEL3Qr54H3vgiqYNUVz0oYrtJQUqmFP92X9OCOk4LG9btm8uDpvWO2rTZ15tmgGMe0IooCwq/ikFt3DmxUGJ6BLAhUo0ZREJddRmyp1QGynlEM1evCScPelcc1Pl2hyb83jdREmFMmxyWefzVLYE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199024)(1800799009)(186009)(55016003)(83380400001)(71200400001)(26005)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008)(6916009)(54906003)(316002)(8676002)(4326008)(8936002)(52536014)(41300700001)(5660300002)(6506007)(9686003)(7696005)(53546011)(19627235002)(966005)(2906002)(478600001)(86362001)(33656002)(122000001)(82960400001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkJCd3ZZdHJ1R0swNEovZ0tMeWt0azArOHpBUU5oWG80RWNqN1ZtbUZzYk15?=
 =?utf-8?B?YzY3R0xnbUovb3F5cTMwVVBPZlRkWlVDTDVDb3FPZDVtekZZZ3ZadmFJV09B?=
 =?utf-8?B?eFI2cElXVm1Iak1RcUd4bEJSU0xHWFFrK1BSYXM2NGtzS3dCSUsyKzcyVFlt?=
 =?utf-8?B?MWJnRnR6ZzVmQ05XTHdUK0ZrcWN3OS9hSDF6bUVUQ2V0eXNtcEpEMWRTMm9r?=
 =?utf-8?B?ZDRYZVkxcllkQ0I4VjVsK09WMDlGQmJvNzBQUGxBN0NEVWhuWHJ5b29mdTN1?=
 =?utf-8?B?Y2xVS1pTRWg4dFU5dlRZRHFMdi81VXppaUZBazVUWDd4VVdKaFBRaksyd2lE?=
 =?utf-8?B?SDNQYWNkZ2ErTTF3U2tHVDZjYm9zeWF6L0ZGa1d4Yk5GUW9CeVNwNU9vdTFN?=
 =?utf-8?B?MWZlOGF0UFk3S1NJclI4M1JlN2F0dWZNTGVWakduTkk1VkM5dGhUM3FXS0Yr?=
 =?utf-8?B?OTF2SE9pNzFqRmNZMVh0bWZhaDU2M3JYZVdEUEhQc1hNR0tRRHRBOGxJS3lL?=
 =?utf-8?B?bW5xZnZySEVBbXA2cnpORldNWkxNaFhDZTV2SDFwS2RSVEpHV3ZlYUk3SFFi?=
 =?utf-8?B?RW5mbEtFUzdSdStYZkZKRXVDdndkK0RlNktWanc1OXJFd0ZDZ2l2MjBkeHdo?=
 =?utf-8?B?dzMvcU82elVsekh0Umdwck1Ea0Z1ZWRZU3ZhU2lwUFV5Tll5Ynl5TkF2REdq?=
 =?utf-8?B?eGt6R1AwRldFZ0ZkZmp6aC82SVgvbHYzNUdxV0Uwek0xcUpHSFlWNUdXTkhD?=
 =?utf-8?B?TmQ0NGJDUi9TdGE1N25VczlwWVJYUVJDL3NuR2lZSWVwbTNYNnViTVZLV0N4?=
 =?utf-8?B?OE1QZkZROTNMM0pGVlFPMGpVM0RiQTlFRmx4eXIwdHdnZUNETlR4bWFXL0M4?=
 =?utf-8?B?dTdkd3I3c3g5SjFLMTVDVzJpTXZ5NTlzY055cmh1QUhKVFFqUWdOY2RIWDRl?=
 =?utf-8?B?OTBud1c4TWxUNHJmTDhyUzRUa2EvcjJkQXVueWNpYzhlclVsRDhNd3E3amJl?=
 =?utf-8?B?T2x6WGFNKzBXdjlZejRiaVRRL2h6UzRHSEE0SEtrSkRJeHJNYkJaNFM5RTNW?=
 =?utf-8?B?OGtPeTBPekZlRldJait6QVBLc1JqYTgwMEE4eHV0MUZvdVplL1J2QmNwZ3d3?=
 =?utf-8?B?WldmaHV6SWxWSklBOW1QT243UVAxZnhVMnM1UGczbVV4YTNIcXlNL2RsZ2xN?=
 =?utf-8?B?U3daSlJaa2VvcjdGVGhDV0RHZ3VYSUR2bi8zMlliYlRuM0E4SUgrYXhEbkxN?=
 =?utf-8?B?SWoyenlOQmxGbEpCSitaaGVNdVFkSWJCQkVpdjVPaHVqYzlycGtBc012UklN?=
 =?utf-8?B?WStiaWxFWnVnYWlpSXByb3RXdEZrRUt0SzJsWTU0bnhZTnVCU1B3OHQzZThN?=
 =?utf-8?B?VmhKZ2ZyZXNoMm1MZGg1N1NFaEZvSStkUDY5dFgvcURNZm9lUEhidEJVUVN5?=
 =?utf-8?B?ZndFTURFRkxoekNhMnkzUEdzdW5INjlFT2tKeS9MZVM2WWZlZlZqZ0JKNkMr?=
 =?utf-8?B?SVhHbWFDS0ViSnJtTTVsaXd5RUExZDcrZ0dvSkU4SjFvYllMQ1d1MXBEdGhX?=
 =?utf-8?B?Y3grMmwyOCtGRy9VZmNvRXNGQkd6c3JXOGtPanJHL1J6N2dPOGJpWnhHUEpV?=
 =?utf-8?B?L3diRUFiVDg1S21yU1Y0UEEyTm9yS0FPeFl5cUtReENLM05SZXJpMHdmYnhp?=
 =?utf-8?B?NnN2MzlRRDUyRzkyaUIza1JjR2xpN1JJR05YZzQxdURpdlU1RnRsdkhqRUJH?=
 =?utf-8?B?WG9IZFRlbHZTWEUyVjRzOGIzanpXcUJWNk50dzNuY1RoN25HVFBPUzk3Zm01?=
 =?utf-8?B?WGtpOURzdWNYWUF2ZkpZeWMyYTlHTlhFWENyMmNEMmpxTlVjdEhyMHpURXRq?=
 =?utf-8?B?dzVTbHhuNmpsajVMK1lzSE11VnlXZmJRb0xWdzRzdW41VEZMai9ZUHdBdFRp?=
 =?utf-8?B?RWtQRGRWQ0NhYmg3VW1mSW9BNXBRNHhjUGxMUGFHcmFwWUZtS1dPTTQ0Ylln?=
 =?utf-8?B?U2RPVkVyTGF6cE83UHZOamxDNHZXTFlRbkg1eGtaNkhsS2JuL0k4TkF4V2Zp?=
 =?utf-8?B?Nm9EeXQ0MWlpQUJtMGt0THNsT2tQdyt5TEJSeUJVa2JITmM4WkhWa2tmY3VF?=
 =?utf-8?Q?jkYaFrzxcD9zHPZmJcEIMlDk9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917918f5-5098-4bff-90c1-08dbb5edc48c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 13:15:01.1925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnyqQt5odjU2KyI79BYMFN1FWcjLCKZ+Bitd64mFQxfvR2lInovwTAfAaoOv4IEghRyHZgbUCFLKKOKEC0T881Xqhr7Rg69whwxnKk5fF7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694783710; x=1726319710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1b8Tq+BLU6k88//UVHQW+Zp5j6dZEqXsZxHmfZldhq8=;
 b=lBSUYdZoa/MW+CXnxWPHBaHEBpKBwLfVg6y0erIuiTaNVZIoOaSPa1Sg
 4N/Y8JpHC1EESS/0EHZ+KO6ggCaD6Z4D5t4B+DQxZovVdCR3rfWTCliSF
 f/1E5Sh1NBvO+FUxiamT56YCTgV0JkXbz+iwXZs3MYGQQXimsFs1/cQgK
 iBGb+EvO312HFuLO0aqasTCnRsx3cFfV+kkTyHKsHMQOIQ1q/tCz/qVRJ
 vhwCBSigoHFcuY/G6zCLgS+NSx4rMeCJxDimXhBDGKmhKIrI0oswMAfC2
 inmErJ974I9Yw83lCZ4nZcsEbG1nZWdMcF2CqWrEf8EwqzKmb0AZaP6xs
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lBSUYdZo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSWRvIFNjaGltbWVsIDxp
ZG9zY2hAaWRvc2NoLm9yZz4NCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDEyLCAyMDIzIDQ6
MjcgUE0NCj4gVG86IERyZXdlaywgV29qY2llY2ggPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+
DQo+IENjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtpdHN6ZWwsIFBy
emVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Ow0KPiBpZG9zY2hAbnZpZGlh
LmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyXSBpY2U6IERpc2FibGUgQ2Fn
ZSBNYXggUG93ZXIgb3ZlcnJpZGUNCj4gDQo+IE9uIEZyaSwgU2VwIDAxLCAyMDIzIGF0IDAxOjM0
OjA0UE0gKzAwMDAsIERyZXdlaywgV29qY2llY2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IElkbyBTY2hpbW1lbCA8aWRvc2No
QGlkb3NjaC5vcmc+DQo+ID4gPiBTZW50OiDFm3JvZGEsIDMwIHNpZXJwbmlhIDIwMjMgMTc6MTcN
Cj4gPiA+IFRvOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPg0K
PiA+ID4gQ2M6IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gPiA+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEtpdHN6
ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Ow0KPiA+ID4g
aWRvc2NoQG52aWRpYS5jb20NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHQgdjJd
IGljZTogRGlzYWJsZSBDYWdlIE1heCBQb3dlciBvdmVycmlkZQ0KPiA+ID4NCj4gPiA+IE9uIFR1
ZSwgQXVnIDI5LCAyMDIzIGF0IDA5OjEyOjIyQU0gKzAwMDAsIERyZXdlaywgV29qY2llY2ggd3Jv
dGU6DQo+ID4gPiA+IEluIHNvbWUgY2FzZXMgdXNlcnMgYXJlIHRyeWluZyB0byB1c2UgbWVkaWEg
d2l0aCBwb3dlciBleGNlZWRpbmcgbWF4DQo+ID4gPiBhbGxvd2VkIHZhbHVlLg0KPiA+ID4gPiBQ
b3J0IHNwbGl0IHJlcXVpcmUgc3lzdGVtIHJlYm9vdCBzbyBpdCBmZWVscyBuYXR1cmFsIHRvIG1l
IHRvIHJlc3RvcmUgZGVmYXVsdA0KPiA+ID4gc2V0dGluZ3MuDQo+ID4gPg0KPiA+ID4gSSBkb24n
dCBiZWxpZXZlIGl0J3MgdGhlIGtlcm5lbCdzIHJlc3BvbnNpYmlsaXR5IHRvIHVuZG8gY2hhbmdl
cyBkb25lIGJ5DQo+ID4gPiBleHRlcm5hbCB0b29scy4gR2l2ZW4gdGhhdCB0aGUgdG9vbCBpcyBh
YmxlIHRvIGNoYW5nZSB0aGlzIHNldHRpbmcsIEkNCj4gPiA+IGFzc3VtZSBpdCBjYW4gYWxzbyBy
ZXN0b3JlIGl0IGJhY2sgdG8gZGVmYXVsdC4NCj4gPg0KPiA+IEkgYWdyZWUgd2l0aCB0aGF0LCBi
dXQgd2UgY2FuIGVuZCB1cCB3aXRoIG5vIGxpbmsgaWYgd2UgZG9uJ3QgcmVzdG9yZQ0KPiA+IGRl
ZmF1bHQgc2V0dGluZ3MuIExldCBtZSBleHBsYWluIGhvdy4NCj4gPg0KPiA+ID4NCj4gPiA+IE1v
cmVvdmVyLCBpdCBkb2Vzbid0IHNvdW5kIGxpa2UgcG9ydCBzcGxpdCB3b24ndCB3b3JrIHdpdGhv
dXQgdGhpcw0KPiA+ID4gY2hhbmdlLCBzbyBwbGFjaW5nIHRoaXMgY2hhbmdlIHRoZXJlIG9ubHkg
YmVjYXVzZSB3ZSBhc3N1bWUgdGhhdCBhDQo+ID4gPiByZWJvb3Qgd2lsbCBmb2xsb3cgc2VlbXMg
cmFuZG9tLg0KPiA+DQo+ID4gQWZ0ZXIgcG9ydCBzcGxpdCwgd2UgbWlnaHQgZW5kIHVwIHdpdGgg
bm8gbGluayBpbiBvbmUgb2YgdGhlIHBvcnRzLg0KPiA+IEluIGR1YWwgcG9ydCBjYXJkIGlmIHdl
IGluY3JlYXNlIG1heCBwd3Igb24gdGhlIDFzdCBjYWdlIHRoZSAybmQgb25lDQo+ID4gd2lsbCBo
YXZlIG1heCBwd3IgZGVjcmVhc2VkIGF1dG9tYXRpY2FsbHkuIFRoaXMgbWlnaHQgYmUgdXNlZnVs
IGlmIHdlIGhhdmUgcG9ydA0KPiA+IG9wdGlvbiB3aXRoIGNvdW50IDEsIHRoZSBzZWNvbmQgY2Fn
ZSBpcyBub3QgdXNlZCBpbiB0aGlzIGNhc2UuIElmIHdlIHRoZW4gc3BsaXQgYW5kDQo+ID4gdXNl
IHR3byBwb3J0cyBub3csIHRoZSBzZWNvbmQgcG9ydCB3aWxsIHVzZSBzZWNvbmQgY2FnZSB3aGlj
aCBoYXMgZGVjcmVhc2VkDQo+IG1heCBwd3IsIGRlZmF1bHQgbW9kdWxlDQo+ID4gdXNlZCB0aGVy
ZSB3aWxsIG5vdCB3b3JrLg0KPiANCj4gTm90IHN1cmUgSSB1bmRlcnN0YW5kIGhvdyBpdCdzIHJl
bGF0ZWQgdG8gcG9ydCBzcGxpdC4gWW91IGhhdmUgYSBkdWFsDQo+IHBvcnQgY2FyZCB3aXRoIHR3
byBuZXRkZXZzIChlLmcuLCBldGgwIGFuZCBldGgxKSBhbmQgdHdvIGNhZ2VzLiBZb3UgdXNlZA0K
PiBzb21lIHRvb2wgdG8gaW5jcmVhc2UgdGhlIG1heCBwb3dlciBvbiB0aGUgZmlyc3QgY2FnZSB3
aGljaCBtZWFucyB0aGF0DQo+IHRoZSBzZWNvbmQgY2FnZSB3aWxsIGhhdmUgaXRzIG1heCBwb3dl
ciBkZWNyZWFzZWQuIE5vdyB5b3Ugc3BsaXQgdGhlDQo+IGZpcnN0IHBvcnQ6DQo+IA0KPiAjIGRl
dmxpbmsgcG9ydCBzcGxpdCBldGgwIGNvdW50IDINCj4gDQo+IGV0aDBzMCBhbmQgZXRoMHMxIGNv
cnJlc3BvbmQgdG8gdGhlIGZpcnN0IGNhZ2UuIFdoeSBhcmUgdGhleSBhZmZlY3RlZCBieQ0KPiB0
aGUgc2Vjb25kIGNhZ2U/DQo+IA0KPiBJIGhhdmUgYSBmZWVsaW5nIHdlIG1lYW4gZGlmZmVyZW50
IHRoaW5ncyBieSAicG9ydCBzcGxpdCIuIEFzIGZhciBhcyBJJ20NCj4gY29uY2VybmVkLCB5b3Ug
c3BsaXQgYSBwb3J0IGluIG9yZGVyIHRvIGNvbm5lY3QgYSBzcGxpdHRlciBjYWJsZSB0byB0aGUN
Cj4gY2FnZS4gRm9yIGV4YW1wbGU6DQo+IGh0dHBzOi8vbmV0d29yay5udmlkaWEuY29tL3JlbGF0
ZWQtZG9jcy9wcm9kX2NhYmxlcy9QQl9NQ1A3SDUwLQ0KPiBWeHh4eXp6XzIwMEdiRV9RU0ZQNTZf
dG9fMngxMDBHYkVfUVNGUDU2X0RBQy5wZGYNCg0KSW4gaWNlIGRyaXZlciBwb3J0IHNwbGl0IHdv
cmtzIHBlciBkZXZpY2Ugbm90IHBlciBwb3J0LiBBY2NvcmRpbmcgdG8NCi9Eb2N1bWVudGF0aW9u
L25ldHdvcmtpbmcvZGV2bGluay9pY2UucnN0LCBzZWN0aW9uICJQb3J0IHNwbGl0IjoNCglUaGUg
ImljZSIgZHJpdmVyIHN1cHBvcnRzIHBvcnQgc3BsaXR0aW5nIG9ubHkgZm9yIHBvcnQgMCwgYXMg
dGhlIEZXIGhhcw0KCWEgcHJlZGVmaW5lZCBzZXQgb2YgYXZhaWxhYmxlIHBvcnQgc3BsaXQgb3B0
aW9ucyBmb3IgdGhlIHdob2xlIGRldmljZS4NCkFuZCBpZiB5b3UgbG9vayBhdCBhdmFpbGFibGUg
cG9ydCBvcHRpb25zIChzYW1lIGZpbGUpIHlvdSdsbCBzZWUgdGhhdCBpbiBjYXNlIG9mICJTcGxp
dCBjb3VudCIgMQ0Kb25seSBxdWFkIDEgaXMgd29ya2luZy4gQW5kIGluIGNhc2Ugb2YgIlNwbGl0
IGNvdW50IiAyIHRoZSBzZWNvbmQgcXVhZCBtaWdodCBiZSB1c2VkLiBTbywgaWYgd2UNCmluY3Jl
YXNlIG1heF9wd3IgaW4gdGhlIGZpcnN0IHF1YWQgaW4gY2FzZSBvZiAiU3BsaXQgY291bnQiIDEg
YW5kIHRoZW4gc3dpdGNoIHRvICJTcGxpdCBjb3VudCIgMiwNCnRoZSBzZWNvbmQgcXVhZCBtaWdo
dCBlbmQgdXAgd2l0aCBubyBsaW5rIChiZWNhdXNlIGl0IHdpbGwgaGF2ZSBkZWNyZWFzZWQgbWF4
X3B3cikuDQoNCj4gDQo+ID4NCj4gPiBTbywgc2hvdWxkIHdlIGxlYXZlIHRoZSByZXN0b3JhdGlv
biBvZiB0aGUgZGVmYXVsdCBzZXR0aW5ncyB0byB0aGUgdXNlcj8NCj4gDQo+IExldCdzIGZpcnN0
IGNsZWFyIHVwIHRoZSBhYm92ZS4gQlRXLCBpZiBhIHBvcnQgZG9lc24ndCBjb21lIHVwIGJlY2F1
c2UNCj4gb2YgcG93ZXIgaXNzdWVzIHlvdSBjYW4gdHJ5IGNvbW11bmljYXRpbmcgaXQgdG8gdXNl
ciBzcGFjZSB1c2luZw0KPiAnRVRIVE9PTF9MSU5LX0VYVF9TVEFURV9QT1dFUl9CVURHRVRfRVhD
RUVERUQnLg0KDQpUaGFua3MgZm9yIHN1Z2dlc3Rpb24uDQoNClBTIEknbGwgYmUgb24gaG9saWRh
eXMgZm9yIHR3byB3ZWVrcyBzbyBzb3JyeSBmb3IgbGFjayBvZiByZXBseSBpbiBhZHZhbmNlIDop
DQoNCj4gDQo+ID4NCj4gPiA+DQo+ID4gPiBJIHRoaW5rIHRoZSBiZXN0IHdheSBmb3J3YXJkIGlz
IHRvIGV4dGVuZCBldGh0b29sIGFzIHdhcyBhbHJlYWR5DQo+ID4gPiBzdWdnZXN0ZWQuIEl0IHNo
b3VsZCBhbGxvdyB5b3UgdG8gYXZvaWQgdGhlIHNwbGl0IGJyYWluIHNpdHVhdGlvbiB3aGVyZQ0K
PiA+ID4gdGhlIGhhcmR3YXJlIGlzIGNvbmZpZ3VyZWQgYnkgYm90aCB0aGUga2VybmVsIGFuZCBh
biBleHRlcm5hbCB0b29sLg0KPiA+DQo+ID4gSSdsbCB0cnkgdG8gZm9sbG93IHVwIHdpdGggdGhl
IGV0aHRvb2wgZXh0ZW5zaW9uLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
