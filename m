Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B836E46664D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 16:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1137141D96;
	Thu,  2 Dec 2021 15:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0cjugQAPOL1K; Thu,  2 Dec 2021 15:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D79C141D95;
	Thu,  2 Dec 2021 15:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F6701BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 15:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DABF41D94
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 15:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mK6E3nLPxKac for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 15:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8A6841D4A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 15:17:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223962255"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="223962255"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 07:17:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="745983789"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2021 07:17:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 07:17:09 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 07:17:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 2 Dec 2021 07:17:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 07:17:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjGqI/O4iyFLIDASy/IXWQsRK7FIEhUmlTKDEtXZ8boDdPHFqWfBfk57oq1lwBrNF8ybsjD2dKr/ZEkxPcd6jEBqXvPcdF3krY8hAXneizVxcQh7xMkH0//EBg5tw4pTT5hoQqy3cWw5Io+MkGPRvONcax8gVCp0k4xYpFu9Q63p7wBwzMxh3LmoyB4CK/OE6nlG/jb0NH2LWepWqA2FJZ3kdbx26t54bf8PiWOAbAaGMoUeHsWexcZlu7VDua9PfgRhKBoPmzM/3aIPrZP8MhcjjbdeD34qxa4M/NnkZt2MlC+g6taDQzBzwVLcRVEXTDKM7OEK78gAEwL1iV/B1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17wUVaUd9uIq6jpODFjsVaFXyr1a+wUJhwmvP65QMJs=;
 b=A+/hFXvvYbIlkxx6uNfj95FNABhqbTqfEN7hkJRxJOYSYsz/l5nJEU0y+n3dREzAaMlP1pJ9tyOP700HosOU9I1CMx23sRhk+g8eEc6V9VuI7iYAEYWOWlGekybk2Id5ZX072WONN+zgWq3H/ZdwNVrO4OyeyDHoTxiZwxmEqsw37XUQFM8Zx0NJ4dzJR9j+s6Pvrt6sG9/rBQXMriTpcMPduvDGV0cdkUZPpldwCrNR6PBwN677kRrCg5VlYQApshzc0VTqjs4rjUJu9u8eyu/6tjZpyGHkQJ2EQIe5Hfepu6Zgt8jySN9XyeknF8NJD9Seacss6OtFTOT+3zEhEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17wUVaUd9uIq6jpODFjsVaFXyr1a+wUJhwmvP65QMJs=;
 b=g3G6RRPiGsATk5hYuqAC8Vm+qhYi8q8V5bNstdIyhym3HyeD03o7b0t0VvudlQwWt9vQ9wqY4iEmRue9uxckGok2EsmA6Vln1muShq2Ct+CYejoM488uIqEBuDRIKhYQWg7YrO4DKLwvuE2oEy5dwvpvddWXCglsT6pmfD5yCvE=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MWHPR11MB1502.namprd11.prod.outlook.com (2603:10b6:301:10::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Thu, 2 Dec
 2021 15:17:07 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9%8]) with mapi id 15.20.4755.016; Thu, 2 Dec 2021
 15:17:07 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH v4 net-next 2/4] ethtool: Add ability to configure
 recovered clock for SyncE feature
Thread-Index: AQHX5t+zHNhA4eAQzEyd+4hcIqumb6wfJraAgAAesIA=
Date: Thu, 2 Dec 2021 15:17:06 +0000
Message-ID: <MW5PR11MB5812455176BC656BABCFF1B0EA699@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-3-maciej.machnikowski@intel.com>
 <Yai/e5jz3NZAg0pm@shredder>
In-Reply-To: <Yai/e5jz3NZAg0pm@shredder>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e1988d1-0973-4052-4fad-08d9b5a6cdf2
x-ms-traffictypediagnostic: MWHPR11MB1502:
x-microsoft-antispam-prvs: <MWHPR11MB150222BD12CB89C633D0C24DEA699@MWHPR11MB1502.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LPPjVN4jIPdB9a6I6ol4J+V6O6gaRpZ8qNKCyUyJ+2NRMVjfh6VyDgdBX+pLaxxfJM5n0by56jWeyq8e+jZJE3YjheVEjVlYZ6L+F48/WJDhxMVJghyHrS9jiDv8P1vIUz4CTlkc/uQfKc4LcDpJoH+HKNvMzzoQeVfeYtMJMBTTIOtAuORmabmuwqRpPNX3z6Ff4r/2CyHWag9tCcgTdhXNQ+/OlbazolssibwOboqO/i7/V3eZDTxmZbYJLL/gcZl0fnH+HYbxhlv7sIHAs8Bcu5QwTqfC8YZmAC8Dlxru3rXgfU5UbKK0LFItU6K5E0sTlEl5r5T70alvTAQa6oNaTuZOhoPFxwlgqGSg7Ahyel/3vdMpH34OqIZp1a0pmK+TiG+v9dCldU/HeTmpuHV1Ui7Plp7FpFmfKcVl/e87i+tv9+QEWvXEUqq81QdKQ/TLV2aHTgKERXq5qlqt4r+1D3kzBs//4NrlAVEp3hUyqkI2DAmJt2hfoZ+t1PvrLq0VEKjq5+EGdl/ph3ObNP5kM2eXBRrCYoAFQBcRCPzH7wmcWW629z8pVJ3G2kxk9R5rcy4vCiiydh1GMyAmwYbh174lu2+AA7XcN89g8XuWolItC05LQxKZ3UDmOjbBlqwsIyCqbBS2ps7rtqgpkQ4zfQhdhwdsYQetSEfjh1X0s2Ztquh3CiHky8gA2rXGdIz5ac3/kIhEEk+A2QdQONT7UxCivdzyZ8BAOqEl9pnbzp0Vq5PmbU1kUOHX1pewHHPcSTOqIy+qhNAHGie6IMlpTpb7URHCIGaHicDhGIE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7416002)(8676002)(66556008)(8936002)(26005)(9686003)(54906003)(66946007)(316002)(71200400001)(2906002)(52536014)(33656002)(66446008)(66476007)(38100700002)(64756008)(83380400001)(5660300002)(122000001)(82960400001)(508600001)(4326008)(7696005)(186003)(76116006)(6506007)(6916009)(53546011)(966005)(38070700005)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEtLSjdlZDdRbUw0cXEvN3RZOCtRaElrZXllNDBQdzFtbm1ITXhIVytxU1kr?=
 =?utf-8?B?eW8vb3FYNnNxVUJDbm9QM3pBTUJDUXNQb05aZ0NFeGlvY1ZMZHZBMHYwUjh1?=
 =?utf-8?B?YTNXcmFGaEh0UVlMakxNQUxPcUhOU0pTQ0RKVHdjMTRlNnhaQjRNVG5nWGNr?=
 =?utf-8?B?ejFUYjB6V3RuZlJodXh4TExlTUx3RGJlMU5ROWRjOVNNR3E1ZFRpYXpGMEZv?=
 =?utf-8?B?eUxBNzRyRkJQYmlEU1NteUluNG5nYUJoZENBWEdKSmxPQzkzb3FtenpObkRJ?=
 =?utf-8?B?YWVjckV4UzdqMUdBZFYzTzNWVDkzOGFXcHVmMS9oMEpqOU9XdmRaSVJzS0ha?=
 =?utf-8?B?enhDclZMNFo4WFgzREdwMTZEd2g1R3pmdHFZTlErMC9GTkxjK1hQT0JRQ3VV?=
 =?utf-8?B?Mm5wU2VDeG5ua2Nyc1ZBNERud0M0Y2ZRcGFveWN6Z0ZuMS83ZGh0eFdoQUpI?=
 =?utf-8?B?bEJ3Z3NNQ1p5VllHNnBxWDh5ZXdvZlB1UWdUV2FlMWV2TjZDMnRyanZ6Sjlo?=
 =?utf-8?B?eExYL0pIUHpzUFppbXRVdnJiQzdLdW96bnR5UXFQR1RyR1FWQTZIWUIxTDBp?=
 =?utf-8?B?MFJLSUFvejdmZGFhUGU4R2ZYeUx4aGMxL1ZSc2ZLUklFRTBYZWlwQkZiTzh2?=
 =?utf-8?B?RGJOTmRVcTBHaTZZangvcGYyWFlHWk5ndlFPYU5sc09aeFltNVBTcGowSWdP?=
 =?utf-8?B?QUszWWFkT0hZZzN6bmtvc2RHanNOL2dhV0tpTkVrRmw5cE0ySzkvQzJxc3ZL?=
 =?utf-8?B?cTMzSUtYN0VQSEhKc2dxaGlHd0ZFMUxlQUVZWEtabUEvTjhqRU5KYkVNdWV3?=
 =?utf-8?B?bWR1dFlSMmVIQUJDUWxJRlYvMjFpdnlDYjBkZEJrL285cktndjd1Q1dZdlk4?=
 =?utf-8?B?SjVaTnhZQVkxMVhPa3NLcGNFVHcxVnMvUUVGNHR4M25RYitSbHZ2dzNoR0c0?=
 =?utf-8?B?RzJkL2RYWkU3SjlsVjZRVGNVY0l6R2R5ek04dVBKdzQ1N09BR1hPT0hXRmQx?=
 =?utf-8?B?R24rdjRxL0xBcHVUSWxTc3FPSElmemJCU2JXbk5ORDZRbzBsL2pOZ2ZtUTFT?=
 =?utf-8?B?aHN5Z0xlUFlWc2o3RjNCK0ZvZW9pNVpNWWRvSkxEVkhJM2EwdGVpSDdXYmhx?=
 =?utf-8?B?Rlg1QkxrU2JMS1FtTXhXNjA4dERmMm9POGxtd2JtM1NvN05Gc2FBUENkMHFq?=
 =?utf-8?B?aFNxeXd1dWdndnIzL0oxbmprREVqczBIWTdocHB0dWVDN2IrSXRQTEk5ZUxr?=
 =?utf-8?B?YlBQakN1eUY2MFY4azdhbmtwWGdNYW9IVmJiT1lKdXpPaVMxREU3L3k4eWFv?=
 =?utf-8?B?UWhONy9uV25WNjE1bVE2aGxpcTdGTVNDL1RoVk4zTnhUWXU5MjR4NVRhaElX?=
 =?utf-8?B?WEFmSzBsWHVmRC9DcDlUbElRL2VmazE5ZGovbHNINVJDUGNYT0RnTUppc21U?=
 =?utf-8?B?S1VnZ0tuUGYrdkpEKy9zRjNNTzJ3TWw2VndNdWNSOFZ6cjQxMGhoZjRYN1Zk?=
 =?utf-8?B?YXBOVWlDOWtFRHNLK08wMGRUYk9UZ29UR1RCTHlaWlBtYW41ajhKWGtZSXI2?=
 =?utf-8?B?ajRJbnFuWnFzQUtPdFRYZk1hS01qb2VGRTRIcGNiUjRRakgvZC9mR2RrNlM2?=
 =?utf-8?B?elpncGhveWV6K25CdUwyN3dOenQ5M2hwVXU3NEVwbE1FdjhzRDQ4UDNIbVYv?=
 =?utf-8?B?MVlnL0xoR2IreU5MbHExKzZkSnJxcjJFRlBZMytLcTFXSmtXcDlnSFBjWUxK?=
 =?utf-8?B?MDJLUldvNnNYcVU3WVlZMXBFVXJINVJmcE1adndnOGJQS2N2cmY4OHdtYnJq?=
 =?utf-8?B?eDBCM3l3a3UrWnBJY2JJWk40bmpyQnVGMlFxeElURncrZGNiV1RONWx2dnhV?=
 =?utf-8?B?dE9ISGd6N2hYNHJveVNZQ1pnOWluYzNIYnowdGUveHB2Y2tQZWprZEhNWHBk?=
 =?utf-8?B?ODI3T1pCVHdBZEV0cUtxVXdHKzJYYUFaVnZUQlFENlZELy9VS05KU0J2SG9y?=
 =?utf-8?B?NkhmTS9TOHZGR2pVQ1dTZ2VYbklJVmZXbm5OVnozcDZKbTVUYkpvR1h3WEZO?=
 =?utf-8?B?UHpFSjVBUFNpUnd6NXJqSHpUMEZPL0ZMSlB4SUZQZm96alArcFRDOTVWWFJu?=
 =?utf-8?B?T0UvVlA1T2lzNzBIbUhnVmtBSXJPQWlMSWJCSE1DQU94Q0NMNzF5UTRudVJN?=
 =?utf-8?B?M0RPaUluWG9kS1pxN2cxc0ZJUE9oNi84US80QnJjL3JtRkFvRUZ1MnhyUUJ1?=
 =?utf-8?B?cm9sNFp3eXFldzlaa1RBTGh2SCtRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e1988d1-0973-4052-4fad-08d9b5a6cdf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 15:17:07.0330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vDpUfmpoUeedrbfu6/6/F2RkrCCBeZDPLX6ZKOpOtpF4XZymwAINoRkI9BMmYxre9OAXXLU/mzDYQ7OrjTlMALA21JGvEXMfzKmQO9OH098=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1502
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] ethtool: Add ability
 to configure recovered clock for SyncE feature
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJZG8gU2NoaW1tZWwgPGlkb3Nj
aEBpZG9zY2gub3JnPg0KPiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMiwgMjAyMSAxOjQ0IFBN
DQo+IFRvOiBNYWNobmlrb3dza2ksIE1hY2llaiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjQgbmV0LW5leHQgMi80XSBldGh0b29sOiBBZGQg
YWJpbGl0eSB0byBjb25maWd1cmUNCj4gcmVjb3ZlcmVkIGNsb2NrIGZvciBTeW5jRSBmZWF0dXJl
DQo+IA0KPiBPbiBXZWQsIERlYyAwMSwgMjAyMSBhdCAwNzowMjowNlBNICswMTAwLCBNYWNpZWog
TWFjaG5pa293c2tpIHdyb3RlOg0KPiA+ICtSQ0xLX0dFVA0KPiA+ICs9PT09PT09PQ0KPiA+ICsN
Cj4gPiArR2V0IHN0YXR1cyBvZiBhbiBvdXRwdXQgcGluIGZvciBQSFkgcmVjb3ZlcmVkIGZyZXF1
ZW5jeSBjbG9jay4NCj4gPiArDQo+ID4gK1JlcXVlc3QgY29udGVudHM6DQo+ID4gKw0KPiA+ICsg
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ICA9PT09PT0NCj4gPT09PT09
PT09PT09PT09PT09PT09PT09PT0NCj4gPiArICBgYEVUSFRPT0xfQV9SQ0xLX0hFQURFUmBgICAg
ICAgICAgICAgICAgbmVzdGVkICByZXF1ZXN0IGhlYWRlcg0KPiA+ICsgIGBgRVRIVE9PTF9BX1JD
TEtfT1VUX1BJTl9JRFhgYCAgICAgICAgICB1MzIgICAgIGluZGV4IG9mIGEgcGluDQo+ID4gKyAg
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gID09PT09PQ0KPiA9PT09PT09
PT09PT09PT09PT09PT09PT09PQ0KPiA+ICsNCj4gPiArS2VybmVsIHJlc3BvbnNlIGNvbnRlbnRz
Og0KPiA+ICsNCj4gPiArICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSAg
PT09PT09DQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ID4gKyAgYGBFVEhUT09MX0Ff
UkNMS19PVVRfUElOX0lEWGBgICAgICAgICAgIHUzMiAgICAgaW5kZXggb2YgYSBwaW4NCj4gPiAr
ICBgYEVUSFRPT0xfQV9SQ0xLX1BJTl9GTEFHU2BgICAgICAgICAgICAgdTMyICAgICBzdGF0ZSBv
ZiBhIHBpbg0KPiA+ICsgIGBgRVRIVE9PTF9BX1JDTEtfUkFOR0VfTUlOX1BJTmBgICAgICAgICB1
MzIgICAgIG1pbiBpbmRleCBvZiBSQ0xLIHBpbnMNCj4gPiArICBgYEVUSFRPT0xfQV9SQ0xLX1JB
TkdFX01BWF9QSU5gYCAgICAgICAgdTMyICAgICBtYXggaW5kZXggb2YgUkNMSw0KPiBwaW5zDQo+
ID4gKyAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0gID09PT09PQ0KPiA9
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+ICsNCj4gPiArU3VwcG9ydGVkIGRldmljZSBj
YW4gaGF2ZSBtdWxpdHBsZSByZWZlcmVuY2UgcmVjb3ZlciBjbG9jayBwaW5zIGF2YWlsYWJsZQ0K
PiANCj4gcy9tdWxpdHBsZS9tdWx0aXBsZS8NCj4gDQo+ID4gK3RvIGJlIHVzZWQgYXMgc291cmNl
IG9mIGZyZXF1ZW5jeSBmb3IgYSBEUExMLg0KPiA+ICtPbmNlIGEgcGluIG9uIGdpdmVuIHBvcnQg
aXMgZW5hYmxlZC4gVGhlIFBIWSByZWNvdmVyZWQgZnJlcXVlbmN5IGlzIGJlaW5nDQo+ID4gK2Zl
ZCBvbnRvIHRoYXQgcGluLCBhbmQgY2FuIGJlIHVzZWQgYnkgRFBMTCB0byBzeW5jaG9uaXplIHdp
dGggaXRzIHNpZ25hbC4NCj4gDQo+IHMvc3luY2hvbml6ZS9zeW5jaHJvbml6ZS8NCj4gDQo+IFBs
ZWFzZSBydW4gYSBzcGVsbCBjaGVja2VyIG9uIGRvY3VtZW50YXRpb24NCj4gDQo+ID4gK1BpbnMg
ZG9uJ3QgaGF2ZSB0byBzdGFydCB3aXRoIGluZGV4IGVxdWFsIDAgLSBkZXZpY2UgY2FuIGFsc28g
aGF2ZSBkaWZmZXJlbnQNCj4gPiArZXh0ZXJuYWwgc291cmNlcyBwaW5zLg0KPiA+ICsNCj4gPiAr
VGhlIGBgRVRIVE9PTF9BX1JDTEtfT1VUX1BJTl9JRFhgYCBpcyBvcHRpb25hbCBwYXJhbWV0ZXIu
IElmIHByZXNlbnQNCj4gaW4NCj4gPiArdGhlIFJDTEtfR0VUIHJlcXVlc3QsIHRoZSBgYEVUSFRP
T0xfQV9SQ0xLX1BJTl9FTkFCTEVEYGAgaXMNCj4gcHJvdmlkZWQgaW4gYQ0KPiANCj4gVGhlIGBF
VEhUT09MX0FfUkNMS19QSU5fRU5BQkxFRGAgYXR0cmlidXRlIGlzIG5vIHdoZXJlIHRvIGJlIGZv
dW5kIGluDQo+IHRoaXMgc3VibWlzc2lvbg0KPiANCj4gPiArcmVzcG9uc2UsIGl0IGNvbnRhdGlu
cyBzdGF0ZSBvZiB0aGUgcGluIHBvaW50ZWQgYnkgdGhlIGluZGV4LiBWYWx1ZXMgYXJlOg0KPiAN
Cj4gcy9jb250YXRpbnMvY29udGFpbnMvDQo+IA0KPiA+ICsNCj4gPiArLi4ga2VybmVsLWRvYzo6
IGluY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgNCj4gPiArICAgIDppZGVudGlmaWVyczogZXRo
dG9vbF9yY2xrX3Bpbl9zdGF0ZQ0KPiANCj4gVGhpcyBzdHJ1Y3R1cmUgaXMgYWxzbyBubyB3aGVy
ZSB0byBiZSBmb3VuZA0KPiANCj4gPiArDQo+ID4gK0lmIGBgRVRIVE9PTF9BX1JDTEtfT1VUX1BJ
Tl9JRFhgYCBpcyBub3QgcHJlc2VudCBpbiB0aGUgUkNMS19HRVQNCj4gcmVxdWVzdCwNCj4gPiAr
dGhlIHJhbmdlIG9mIGF2YWlsYWJsZSBwaW5zIGlzIHJldHVybmVkOg0KPiA+ICtgYEVUSFRPT0xf
QV9SQ0xLX1JBTkdFX01JTl9QSU5gYCBpcyBsb3dlc3QgcG9zc2libGUgaW5kZXggb2YgYSBwaW4N
Cj4gYXZhaWxhYmxlDQo+ID4gK2ZvciByZWNvdmVyaW5nIGZyZXF1ZW5jeSBmcm9tIFBIWS4NCj4g
PiArYGBFVEhUT09MX0FfUkNMS19SQU5HRV9NQVhfUElOYGAgaXMgaGlnaGVzdCBwb3NzaWJsZSBp
bmRleCBvZiBhIHBpbg0KPiBhdmFpbGFibGUNCj4gPiArZm9yIHJlY292ZXJpbmcgZnJlcXVlbmN5
IGZyb20gUEhZLg0KPiA+ICsNCj4gPiArUkNMS19TRVQNCj4gPiArPT09PT09PT09PQ0KPiA+ICsN
Cj4gPiArU2V0IHN0YXR1cyBvZiBhbiBvdXRwdXQgcGluIGZvciBQSFkgcmVjb3ZlcmVkIGZyZXF1
ZW5jeSBjbG9jay4NCj4gPiArDQo+ID4gK1JlcXVlc3QgY29udGVudHM6DQo+ID4gKw0KPiA+ICsg
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ICA9PT09PT0NCj4gPT09PT09
PT09PT09PT09PT09PT09PT09DQo+ID4gKyAgYGBFVEhUT09MX0FfUkNMS19IRUFERVJgYCAgICAg
ICAgICAgICAgIG5lc3RlZCAgcmVxdWVzdCBoZWFkZXINCj4gPiArICBgYEVUSFRPT0xfQV9SQ0xL
X09VVF9QSU5fSURYYGAgICAgICAgICAgdTMyICAgICBpbmRleCBvZiBhIHBpbg0KPiA+ICsgIGBg
RVRIVE9PTF9BX1JDTEtfUElOX0ZMQUdTYGAgICAgICAgICAgICB1MzIgICAgICByZXF1ZXN0ZWQg
c3RhdGUNCj4gPiArICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSAgPT09
PT09DQo+ID09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+ICsNCj4gPiArYGBFVEhUT09MX0Ff
UkNMS19PVVRfUElOX0lEWGBgIGlzIGEgaW5kZXggb2YgYSBwaW4gZm9yIHdoaWNoIHRoZQ0KPiBj
aGFuZ2Ugb2YNCj4gPiArc3RhdGUgaXMgcmVxdWVzdGVkLiBWYWx1ZXMgb2YgYGBFVEhUT09MX0Ff
UkNMS19QSU5fRU5BQkxFRGBgIGFyZToNCj4gPiArDQo+ID4gKy4uIGtlcm5lbC1kb2M6OiBpbmNs
dWRlL3VhcGkvbGludXgvZXRodG9vbC5oDQo+ID4gKyAgICA6aWRlbnRpZmllcnM6IGV0aHRvb2xf
cmNsa19waW5fc3RhdGUNCj4gDQo+IFNhbWUuDQoNCkRvbmUgLSByZXdyaXR0ZW4gdGhlIG1hbnVh
bA0KDQo+IExvb2tpbmcgYXQgdGhlIGRpYWdyYW0gZnJvbSB0aGUgcHJldmlvdXMgc3VibWlzc2lv
biBbMV06DQo+IA0KPiAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4gICAgICAg4pSCIFJYICAgICAgIOKU
giBUWCAgICAgICDilIINCj4gICAxICAg4pSCIHBvcnRzICAgIOKUgiBwb3J0cyAgICDilIIgMQ0K
PiAgIOKUgOKUgOKUgOKWuuKUnOKUgOKUgOKUgOKUgOKUgOKUkCAgICDilIIgICAgICAgICAg4pSc
4pSA4pSA4pSA4pSA4pSA4pa6DQo+ICAgMiAgIOKUgiAgICAg4pSCICAgIOKUgiAgICAgICAgICDi
lIIgMg0KPiAgIOKUgOKUgOKUgOKWuuKUnOKUgOKUgOKUgOKUkCDilIIgICAg4pSCICAgICAgICAg
IOKUnOKUgOKUgOKUgOKUgOKUgOKWug0KPiAgIDMgICDilIIgICDilIIg4pSCICAgIOKUgiAgICAg
ICAgICDilIIgMw0KPiAgIOKUgOKUgOKUgOKWuuKUnOKUgOKUkCDilIIg4pSCICAgIOKUgiAgICAg
ICAgICDilJzilIDilIDilIDilIDilIDilroNCj4gICAgICAg4pSCIOKWvCDilrwg4pa8ICAgIOKU
giAgICAgICAgICDilIINCj4gICAgICAg4pSCIOKUgOKUgOKUgOKUgOKUgOKUgCAgIOKUgiAgICAg
ICAgICDilIINCj4gICAgICAg4pSCIFxfX19fLyAgIOKUgiAgICAgICAgICDilIINCj4gICAgICAg
4pSU4pSA4pSA4pS84pSA4pSA4pS84pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSYDQo+ICAgICAgICAgMeKUgiAy4pSCICAgICAgICDilrINCj4gIFJDTEsgb3V0
4pSCICDilIIgICAgICAgIOKUgiBUWCBDTEsgaW4NCj4gICAgICAgICAg4pa8ICDilrwgICAgICAg
IOKUgg0KPiAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pS04pSA4pSA4pSA4pSQDQo+ICAgICAgICDilIIgICAgICAgICAgICAgICAgIOKUgg0KPiAgICAg
ICAg4pSCICAgICAgIFNFQyAgICAgICDilIINCj4gICAgICAgIOKUgiAgICAgICAgICAgICAgICAg
4pSCDQo+ICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilJgNCj4gDQo+IEdpdmVuIGEgbmV0ZGV2ICgxLCAyIG9yIDMgaW4gdGhlIGRp
YWdyYW0pLCB0aGUgUkNMS19TRVQgbWVzc2FnZSBhbGxvd3MNCj4gbWUgdG8gcmVkaXJlY3QgdGhl
IGZyZXF1ZW5jeSByZWNvdmVyZWQgZnJvbSB0aGlzIG5ldGRldiB0byB0aGUgRUVDIHZpYQ0KPiBl
aXRoZXIgcGluIDEsIHBpbiAyIG9yIGJvdGguDQo+IA0KPiBHaXZlbiBhIG5ldGRldiwgdGhlIFJD
TEtfR0VUIG1lc3NhZ2UgYWxsb3dzIG1lIHRvIHF1ZXJ5IHRoZSByYW5nZSBvZg0KPiBwaW5zIChS
Q0xLIG91dCAxLTIgaW4gdGhlIGRpYWdyYW0pIHRocm91Z2ggd2hpY2ggdGhlIGZyZXF1ZW5jeSBj
YW4gYmUNCj4gZmVkIGludG8gdGhlIEVFQy4NCj4gDQo+IFF1ZXN0aW9uczoNCj4gDQo+IDEuIFRo
ZSBxdWVyeSBmb3IgYWxsIHRoZSBhYm92ZSBuZXRkZXZzIHdpbGwgcmV0dXJuIHRoZSBzYW1lIHJh
bmdlIG9mDQo+IHBpbnMuIEhvdyBkb2VzIHVzZXIgc3BhY2Uga25vdyB0aGF0IHRoZXNlIGFyZSB0
aGUgc2FtZSBwaW5zPyBUaGF0IGlzLA0KPiBob3cgZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhhdCBS
Q0xLX1NFVCBtZXNzYWdlIHRvIHJlZGlyZWN0IHRoZSBmcmVxdWVuY3kNCj4gcmVjb3ZlcmVkIGZy
b20gbmV0ZGV2IDEgdG8gcGluIDEgd2lsbCBiZSBvdmVycmlkZGVuIGJ5IHRoZSBzYW1lIG1lc3Nh
Z2UNCj4gYnV0IGZvciBuZXRkZXYgMj8NCg0KV2UgZG9uJ3QgaGF2ZSBhIHdheSB0byBkbyBzbyBy
aWdodCBub3cuIFdoZW4gd2UgaGF2ZSBFRUMgc3Vic3lzdGVtIGluIHBsYWNlDQp0aGUgcmlnaHQg
dGhpbmcgdG8gZG8gd2lsbCBiZSB0byBhZGQgRUVDIGlucHV0IGluZGV4IGFuZCBFRUMgaW5kZXgg
YXMgYWRkaXRpb25hbA0KYXJndW1lbnRzDQoNCj4gMi4gSG93IGRvZXMgdXNlciBzcGFjZSBrbm93
IHRoZSBtYXBwaW5nIGJldHdlZW4gYSBuZXRkZXYgYW5kIGFuIEVFQz8NCj4gVGhhdCBpcywgaG93
IGRvZXMgdXNlciBzcGFjZSBrbm93IHRoYXQgUkNMS19TRVQgbWVzc2FnZSBmb3IgbmV0ZGV2IDEN
Cj4gd2lsbCBjYXVzZSB0aGUgVHggZnJlcXVlbmN5IG9mIG5ldGRldiAyIHRvIGNoYW5nZSBhY2Nv
cmRpbmcgdG8gdGhlDQo+IGZyZXF1ZW5jeSByZWNvdmVyZWQgZnJvbSBuZXRkZXYgMT8NCg0KRGl0
dG8gLSBjdXJyZW50bHkgd2UgZG9uJ3QgaGF2ZSBhbnkgZW50aXR5IHRvIGxpbmsgdGhlIHBpbnMg
dG8gQVRNLA0KYnV0IHdlIGNhbiBhZGRyZXNzIHRoYXQgaW4gdXNlcnNwYWNlIGp1c3QgbGlrZSBQ
VFAgcGlucyBhcmUgdXNlZCBub3cNCg0KPiAzLiBJZiB1c2VyIHNwYWNlIHNlbmRzIHR3byBSQ0xL
X1NFVCBtZXNzYWdlcyB0byByZWRpcmVjdCB0aGUgZnJlcXVlbmN5DQo+IHJlY292ZXJlZCBmcm9t
IG5ldGRldiAxIHRvIFJDTEsgb3V0IDEgYW5kIGZyb20gbmV0ZGV2IDIgdG8gUkNMSyBvdXQgMiwN
Cj4gaG93IGRvZXMgaXQga25vdyB3aGljaCByZWNvdmVyZWQgZnJlcXVlbmN5IGlzIGFjdHVhbGx5
IHVzZWQgYW4gaW5wdXQgdG8NCj4gdGhlIEVFQz8NCj4NCj4gNC4gV2h5IHRoZXNlIHBpbnMgYXJl
IHJlcHJlc2VudGVkIGFzIGF0dHJpYnV0ZXMgb2YgYSBuZXRkZXYgYW5kIG5vdCBhcw0KPiBhdHRy
aWJ1dGVzIG9mIHRoZSBFRUM/IFRoYXQgaXMsIHdoeSBhcmUgdGhleSByZXByZXNlbnRlZCBhcyBv
dXRwdXQgcGlucw0KPiBvZiB0aGUgUEhZIGFzIG9wcG9zZWQgdG8gaW5wdXQgcGlucyBvZiB0aGUg
RUVDPw0KDQpUaGV5IGFyZSAyIHNlcGFyYXRlIGJlaW5ncy4gUmVjb3ZlcmVkIGNsb2NrIG91dHB1
dHMgYXJlIGNvbnRyb2xsZWQNCnNlcGFyYXRlbHkgZnJvbSBFRUMgaW5wdXRzLiBJZiB3ZSBtaXgg
dGhlbSBpdCdsbCBiZSBoYXJkIHRvIGNvbnRyb2wgZXZlcnl0aGluZw0KZXNwZWNpYWxseSB0aGF0
IGEgc2luZ2xlIEVFQyBjYW4gc3VwcG9ydCBtdWx0aXBsZSBkZXZpY2VzLg0KQWxzbyBpZiB3ZSBt
YWtlIHRob3NlIHBpbnMgYXR0cmlidXRlcyBvZiB0aGUgRUVDIGl0J2xsIGJlY29tZSBleHRyZW1h
bGx5IGhhcmQNCnRvIG1hcCB0aGVtIHRvIG5ldGRldnMgYW5kIGNvbnRyb2wgdGhlbSBmcm9tIHRo
ZSB1c2Vyc3BhY2UgYXBwIHRoYXQgd2lsbA0KcmVjZWl2ZSB0aGUgRVNNQyBtZXNzYWdlIHdpdGgg
YSBnaXZlbiBRTCBsZXZlbCBvbiBuZXRkZXYgWC4NCiANCj4gNS4gV2hhdCBpcyB0aGUgcHJvYmxl
bSB3aXRoIHRoZSBmb2xsb3dpbmcgbW9kZWw/DQo+IA0KPiAtIFRoZSBFRUMgaXMgYSBzZXBhcmF0
ZSBvYmplY3Qgd2l0aCBmb2xsb3dpbmcgYXR0cmlidXRlczoNCj4gICAqIFN0YXRlOiBJbnZhbGlk
IC8gRnJlZXJ1biAvIExvY2tlZCAvIGV0Yw0KPiAgICogU291cmNlczogTmV0ZGV2IC8gZXh0ZXJu
YWwgLyBldGMNCj4gICAqIFBvdGVudGlhbGx5IG1vcmUNCj4gDQo+IC0gTm90aWZpY2F0aW9ucyBh
cmUgZW1pdHRlZCB0byB1c2VyIHNwYWNlIHdoZW4gdGhlIHN0YXRlIG9mIHRoZSBFRUMNCj4gICBj
aGFuZ2VzLiBEcml2ZXJzIHdpbGwgZWl0aGVyIHBvbGwgdGhlIHN0YXRlIGZyb20gdGhlIGRldmlj
ZSBvciBnZXQNCj4gICBpbnRlcnJ1cHRzDQo+IA0KPiAtIFRoZSBtYXBwaW5nIGZyb20gbmV0ZGV2
IHRvIEVFQyBpcyBxdWVyaWVkIHZpYSBldGh0b29sDQoNClllcCAtIHRoYXQgd2lsbCBiZSBwYXJ0
IG9mIHRoZSBFRUMgKERQTEwpIHN1YnN5c3RlbQ0KDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9uZXRkZXYvMjAyMTExMTAxMTQ0NDguMjc5MjMxNC0xLQ0KPiBtYWNpZWoubWFjaG5pa293
c2tpQGludGVsLmNvbS8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
