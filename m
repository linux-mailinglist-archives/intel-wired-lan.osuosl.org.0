Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 213DA6E2719
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 17:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7355781395;
	Fri, 14 Apr 2023 15:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7355781395
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681486405;
	bh=6V5MktXf4GRpsc1+X3HrenmiU5K0TCK2UUwLOax1QNQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tDO2zIpm3Wpa5dTlK0IDYdvfzh+c2qD6vFh+lpP3BJ1RhnJ3oKb5obaF7bKzwyKYf
	 K7GBfe2ldran3CzOgr5J5QFjqNF5XEwQ1VpPtjd9aQnUCvwW2qJtPuyvgSxeYVE8ku
	 Z6j2tlGEIMYWdWFR2ND7S568krFZRfXsyET2CflLxymqMisvxU8o+EpuIkCJ+AjJa0
	 MuMBV94fpMCIZVCd+RF+MqCd/c7VQEwBuSMMB8Ph1Ao1XMyPS9E+oysuZk+QzJWdHl
	 romDCM9RsZ0YcbZjIot7+HU6lBDKR59MQuw1DeTw0I9oiFP+hF/VzrAU8LspJBIyWY
	 aVmeF4nhcuh4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHTa-4trLSoC; Fri, 14 Apr 2023 15:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19924822E8;
	Fri, 14 Apr 2023 15:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19924822E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85CC01C3D5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AE40813AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AE40813AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VU43nPV9l7C5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 14:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 585F181381
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 585F181381
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:48:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="344480966"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="344480966"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 07:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="759124440"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="759124440"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2023 07:48:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 07:48:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 07:48:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 07:48:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xhc3m0FNax8XYzKqTFwSiBsCwLj9hXO5g5zRJG0eJRzrztQ+41dLD46w1gsIEf/qWJ0+ygLUHSgMYQCCRR0A6hC4vI4i7KqKPiKD73Ep8NlCcsGzihAnQZ682thifFBbsFvKVeG1dW7iEJGvrWFOikEitZIK72uGK9AOkLGSzUDjljwdjxntqjrf9GdER5VgHL5cMid+phN+H+ewGHzC2Yj42QQFsM4pcvKfrf+XM0/PVKboWiGM0Pj/x2TOnpPNgeic/AWlysQvvjTK9oVa9rnEk14mWyxVHAZKeyuKy3qXf/70U/K52mQDr03f8y9thqHmPU+ssuKGWkbqKg0wOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PFl6Fwaw25i7A6nZ3ABkAJPeYshvk8EYWyNUOqZuPO8=;
 b=FMA/3YMj8A52YPUE95qLu4r/8jY7q6H2eITXmJ1ikU8QvPTYHQ8yAUM9pI73sK2ddrJeY6LI/O13W/1vdiLgJQh04NZCJA0KNhRqD7UUsRMJ19LiLz9BjqYJH8Swd9GeCkKHbcXl++kBZdXYIdwnqP9imfQ9fCj3zq1tOdJXT76RmoMLWQNtciUQ0olVWLEDceZZ9lson0iizos7LIZr2WQXk3uaC2yHfhpz8bOsNvNI1+lYNAklxsfPWgRWCvAOY5jnSCe7v0LoIIPADkkFxFTjWx7zceX9BeMRqzZczMliAKWcNmn3N6oL1XGKXPRK4o4WcvGywOhIVtlurrN9EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by MW4PR11MB7031.namprd11.prod.outlook.com (2603:10b6:303:22c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 14:48:24 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Fri, 14 Apr 2023
 14:48:23 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, David Laight
 <David.Laight@ACULAB.COM>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Vedang Patel
 <vedang.patel@intel.com>, "Joseph, Jithu" <jithu.joseph@intel.com>, "Andre
 Guedes" <andre.guedes@intel.com>, Stanislav Fomichev <sdf@google.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [PATCH net v2 1/1] igc: read before write to SRRCTL register
Thread-Index: AQHZbnY42u7Gz9ET40eYzbfYWKvVVq8qkCGAgAAQJMCAABqMIIAAIEaAgAAF3oA=
Date: Fri, 14 Apr 2023 14:48:23 +0000
Message-ID: <PH0PR11MB5830E7158428C51912981EB0D8999@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20230414020915.1869456-1-yoong.siang.song@intel.com>
 <8214fb10-8caa-4418-8435-85b6ac27b69e@redhat.com>
 <PH0PR11MB5830D3F9144B61A6959A4A0FD8999@PH0PR11MB5830.namprd11.prod.outlook.com>
 <4dc9ea6c77ff49138a49d7f73f7301fd@AcuMS.aculab.com>
 <a81e4d8e-c668-5238-225a-8223af45a063@redhat.com>
In-Reply-To: <a81e4d8e-c668-5238-225a-8223af45a063@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|MW4PR11MB7031:EE_
x-ms-office365-filtering-correlation-id: dd7706b6-8f1e-456b-b3a8-08db3cf74c1e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gdm82g3j8wIJRpdWgO6OtgaQjSKhIjFdb+Zhvx6Y7taJGberYCTvYvXbiWGCTx5QnIgirhcyGUEs5/z+8foLn5gQfY1mdeLCz6k7QYu6DhH81dlhr7svtf+uMyjEqO32hvbrhhN18p1D/DbOTZvXPNzaU69AEkjAvFZpO+2j19Xv1Bfpiv0Iwz/AxEb345W110Sp7lArEN2yiUHy0cENdYpvsOaMPL5UGTi1QemRSku2O4Zcxy2GNCEX/iJQRWDMm0oMPDJ7NOGAOtWL/ut0CuS/BsqNsXbp8b76pUW2sYVqGzZXuoKm77jjCHUTSI9XE0SPSw6BogGv4BWCPKRzURDDc27YeXS9t7kDurtVRZNj3y9djV0ELPti3rgRPK05HjiXq1FkxjFOynyDMsa3iAqJYO2ex4XWKZiaokf+5QaNLb2RxhKSv3Civtfl6TVJt6J3WLYLbGBmw/HICSOQYyVQuzPT7YfuKQ2PrPijDYNpFS/SHoY2zNzjRMP63/d3b5ffggoHdbnQHCOaINyXy7BLTOwZX4cdjrq5MuBLm6O4ySrwVw/G4Q9O2ZVvWt84Iks7hC9Xgx+VXzfXdtawSgGOe2dnFBKjboN1Prc2jNxB4b6NuIfrdaK51FHbjYc1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(316002)(4326008)(38100700002)(64756008)(82960400001)(66446008)(66556008)(66946007)(66476007)(76116006)(5660300002)(41300700001)(52536014)(7696005)(71200400001)(86362001)(107886003)(55236004)(54906003)(6636002)(26005)(186003)(9686003)(53546011)(6506007)(38070700005)(2906002)(83380400001)(7416002)(8676002)(8936002)(55016003)(33656002)(478600001)(921005)(122000001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STlCVW5sUkh2aWhpRTR5SVVuak5qaGNkMWtQd1E0QlZUd09LU0RvenRtOXY3?=
 =?utf-8?B?YS9JcUpwdWxXSTd2YjJ2clhMQjQ4MmRCU3l2Q3V1MnEwYnYzTGx1ajlvVTJU?=
 =?utf-8?B?a2tkZ2Q3S05vQnZCOUhVVzBoM3V6Rm1WVDlNcmdwUWpVVjZiWmRUemsySmVv?=
 =?utf-8?B?QVh5UE90a3VNRWZlU0hTc2k2TTF4KzRsSnlkaThyUmlJQk9jNXM3ejRoK1RD?=
 =?utf-8?B?K1ExQm9wbEJRWGQxRnVHMjcyQUFYTmxWblpYOHhBNDduQWxkdFZEOG9lRDVy?=
 =?utf-8?B?R0JSTTJIS2hERzlrWGFpMkhuUWFRR0ZMWnYwNjVMREJyZEJJbk9LNWgrL0l5?=
 =?utf-8?B?dFMvbVRTNEg5bGFWZHRycmZTYzhyay95UStyTjI2ZjhTZGxXQ3NOSWFnaTRL?=
 =?utf-8?B?R3FFcWhBaHVlOFVjODZucFZPVDRBUyt4cUhvR2JFVnhGV3hBemZNYVIyOU1x?=
 =?utf-8?B?Q3E1TG1hTzR3U2hxc0JuZ3RTQmRscy9rbzJsd1g5QjcxaG02ZEVlZWNkTE4x?=
 =?utf-8?B?d0dIQThyRzRtRG5VN2U0aTRtT0dRYnVpRHpQRnovK3h4ZFFrdEhrRWdiTm9R?=
 =?utf-8?B?RGVKN21neUNRaWlORjVUc0JkTXY1eHRzcWdURFZRN3RqQVR0OU1BWURqZVZ4?=
 =?utf-8?B?RS9ReWp4RUpCQlkrSExUUjk4N0w1VWZsRjFiMlZhdlNtaUhzc3pvZnJJUXFT?=
 =?utf-8?B?Vko1OTIxa3YzczBIOTRsV09KeUM1d3NaZDBwWWNZWGhjY0Y5N1RSQXk5dWFG?=
 =?utf-8?B?aEZrekpMNnVQWThuZWhyK1JLWk9hTng3UGc1NjZxd2lKSDVHRUdEKzFsV3dO?=
 =?utf-8?B?S3ZUZkIzVGxCNmd2blYvK2Q2eU4xZ3JKdmdNcnhyUWVCZkVBZDVWTlBqYXpK?=
 =?utf-8?B?VTUxeFhGWWp1ZmJDdUtvbmRzU0gzUlNuNENzRUcyNmFOUmhiaUk2akVTd0NE?=
 =?utf-8?B?RkdlNitTQXYyekNuZzJsMFhSRTBIL2hsWDUyWTFOYURGL2cvemp5NngvblJF?=
 =?utf-8?B?K0FTUkFFSHQzcktDMGxTUGtoS1ZNMFhRWnp0bkl0YnNGOFBwNitQVUtjRFVk?=
 =?utf-8?B?Z3EwZEpSeE1WRzlHZHJQNk1xS0JRWmZwajhwdTBWUUppNW16TTVjdjJaVHk2?=
 =?utf-8?B?RmtYQlExTUNWcWs0bjZua1JvTEliQ0IvY1Z1WHE0aVdZRE5ld1JTTWJxT2c1?=
 =?utf-8?B?MVhQaGJwRVQxVW5NQXhpK0E3RjlFNFVCdHM1Y3dHOXk1V0crU0dVU2poZTh6?=
 =?utf-8?B?czZzMGpWdlhIaEJacUdqckh5bklqc3JOUXo0SHJXa200d0piN2x5VXkzVHRr?=
 =?utf-8?B?aUUvZVlvcGpYNXQ4dVJvNEpMSzhobGp6NmE0dFViMTNlRVNMMWVOTkZjb3V6?=
 =?utf-8?B?Sk9YaUlSSjZlekpPck4vUDhrR0Z3cmp0V3N2ZXJ3YVN3UGJzSUxsSmNoalZ2?=
 =?utf-8?B?SHpORU5WQkZSRDh2Q2hReFJmamU5U3EzMkhWZm9jZHRyUDFhdDhrUjd4dXBM?=
 =?utf-8?B?NXptY29sSlY0Tm41bmoxeE1lb0t1SnpuUUFIZzZrNFVja3NmemJVYVQrOXgv?=
 =?utf-8?B?cFpkaHAvZVk0aGliMkRkUTY3TmtYS200UXNZbEIweDRiVmFjOS9uR0NHejh0?=
 =?utf-8?B?QTE2NGNGQlRHbXYwRjNpNXh0cEZhNml2d0hpL0twS05XYlh4bjVEUi9Tbm5j?=
 =?utf-8?B?VTZLaDgwclVqditsSkFyOFpRRjN4c1ZmbHB2bW9VaHFqNlZCT2t2SmdwbXk4?=
 =?utf-8?B?SmRsMUxOOFZpMnVYZy9wVGdxdlVtRW9jeWVPTjNsa3hvZFpaclE4TTFMbDh0?=
 =?utf-8?B?YU1FSnhvM3ZjNXJOMkUyMlA4V1h0dUp1SWdwdHVQMWtBQmw4OXNvcGVkZWpT?=
 =?utf-8?B?bHhLdDNBVVF0cWFuZEdnVGdWTGJYZjJnTXcwRkFZWmVFTW4vQ3hJaFdhMzcy?=
 =?utf-8?B?Sk9zNmdHVDBGMVhJVGhXTmNReThVYTZJQXJlR0ZQZHU1eGRlZjltTmhlMmFi?=
 =?utf-8?B?ZUQrb045VVFqTWUrU3E4aXRlYUR6N0kzZTJ1cThjZThGNkFaKzJ2eE9acTN5?=
 =?utf-8?B?M3lncWRsZ3c2WVROK3FzZllVSGhITkRDRUV2S3NuTkhLa08yTGtTN283U09B?=
 =?utf-8?Q?qG9vh/LD+ieBjQZBHQX54Dd2t?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd7706b6-8f1e-456b-b3a8-08db3cf74c1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 14:48:23.4193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q1fEZLnosSOIzwIXSpHNvQY2mf2gTGoaJ68i7GIbWBZA7GEc90XlYYhSXN4DWmZIRmQedW7/GE/ZAsE/X5VQxpgqxpIXehylQle7NODY3P8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7031
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 14 Apr 2023 15:32:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681483708; x=1713019708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PFl6Fwaw25i7A6nZ3ABkAJPeYshvk8EYWyNUOqZuPO8=;
 b=Pij2XcWHAf3HEXguE6PqvjKIHl/L3e/lXKAeuASfuS/LCZtsS+E1t5TF
 cwvyJGDIanw0Z8nXL4SCtyYRHOR2P9lxGwGNWY8SMS5MEzuyKfm8K5NEo
 po0gPbHYtd07o94NYYKhwg+/tUR/AqWyJ0mdLwvQG3CSdqbhv6Ixd9zVt
 U7T7Xw3F8996IeQ9tLJMAZBV5r3u1mtk9YUPbiBjk9CEDXp55+HQYjEa+
 QtiTXwppZ4CX3kO+wmCFro4aTVzEma75Hfd7X50Q77CyclMbDeDy7aiqY
 xjuEelZOw0rvyS0D6nK1D2IZg0Hf7hT3D8z5Aq2xvUk9nt8UAR/N59ENG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pij2XcWH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday, April 14, 2023 10:19 PM, Jesper Dangaard Brouer <jbrouer@redhat.com> wrote:
>On 14/04/2023 14.32, David Laight wrote:
>> From: Song, Yoong Siang
>>> Sent: 14 April 2023 12:16
>> ...
>>>> I have checked Foxville manual for SRRCTL (Split and Replication
>>>> Receive
>>>> Control) register and below GENMASKs looks correct.
>>>>
>>>>> -#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
>>>>> -#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
>>>>> +#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
>>>>> +#define IGC_SRRCTL_BSIZEPKT_SHIFT	10 /* Shift _right_ */
>>>>
>>>> Shift due to 1 KB resolution of BSIZEPKT (manual field BSIZEPACKET)
>>>
>>> Ya, 1K = BIT(10), so need to shift right 10 bits.
>>
>> I bet the code would be easier to read if it did 'value / 1024u'.
>> The object code will be (much) the same.
>
>I agree. Code becomes more readable for humans and machine code will be the
>same.
>
>>>>> +#define IGC_SRRCTL_BSIZEHDRSIZE_MASK	GENMASK(13, 8)
>>>>> +#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT	2  /* Shift _left_ */
>>>>
>>>> This shift is suspicious, but as you inherited it I guess it works.
>>>> I did the math, and it happens to work, knowing (from manual) value
>>>> is in 64 bytes resolution.
>>>
>>> It is in 64 = BIT(6) resolution, so need to shift right 6 bits.
>>> But it start on 8th bit, so need to shift left 8 bits.
>>> Thus, total = shift left 2 bits.
>>>
>>> I didnt put the explanation into the header file because it is too
>>> lengthy and user can know from databook.
>
>Well, users usually don't have access to the databook (Programming
>Interface) PDF.  Personally I have it, but I had to go though a lot of red-tape to
>get it (under Red Hat NDA).
>
>
>>>
>>> How do you feel on the necessary of explaining the shifting logic?
>>
>> Not everyone trying to grok the code will have the manual.
>> Even writing (8 - 6) will help.
>> Or (I think) if the value is in bits 13-8 in units of 64 then just:
>> 	((value >> 8) & 0x1f) * 64
>> gcc will do a single shift right and a mask 9at some point).
>> You might want some defines, but if they aren't used much just
>> comments that refer to the names in the manual/datasheet can be
>> enough.
>>
>
>After Alexander Lobakin opened my eyes for GENMASK, FIELD_PREP and
>FIELD_GET, I find that easier to read and work-with these kind of register value
>manipulations, see[1] include/linux/bitfield.h.  It will also detect if the assigned
>value exceeds the mask (like David code handled via mask). (thx Alex)
>
>  [1]
>https://elixir.bootlin.com/linux/v6.3-rc6/source/include/linux/bitfield.h#L14
>
>So, instead of:
>   srrctl |= IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
>
>I would write
>
>   /* BSIZEHDR value in 64 bytes resolution */
>   srrctl |= FIELD_PREP(IGC_SRRCTL_BSIZEHDRSIZE_MASK, (IGC_RX_HDR_LEN / 64));
>
>--Jesper

Thanks David and Jesper for the comments.
I agree to make the code more human readable.
Will refactor the code and send out v3 for review.

Thanks & Regards
Siang

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
