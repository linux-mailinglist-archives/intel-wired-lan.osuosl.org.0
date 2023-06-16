Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D5732CA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 12:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77FE584106;
	Fri, 16 Jun 2023 10:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77FE584106
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686909744;
	bh=Hge/2JjOHe1CueZ1AaWUhf2Z2D5Wiqp8SKnEyiJJDPU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uVOiy9D8ItatdGNdq8PNKdX4Sk0cH2tp0y7ket9xS84pHgNomiHyqe/ytroVSPs77
	 BZ1ma59ROXYIRzN/c1mKpZ8d8YDbSzRzbxQ/nM2+4qbfxn+hKaoS06hn5iJHjtIxkR
	 CAXJkpnV0Lq8MLHE0Wrv9elM/vWWsE0IX5pLtGKn2cVzvLZEAhDRXsZVj++WfNcOQ6
	 KMvDH7lywDm7+TRRelPYBUc7Ujz+DyWZcNyFEJhMuNdN/5mVIU6Fz0QHGM5ixY6W1K
	 Tv0k2KMm1odSCymAlbKPj9GkkUjui3YxK9/+6Rj9H51BYHgG1gkWzT0zKrH8G/eAvP
	 59uGRxX3G3kAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qCvy6m22ooc; Fri, 16 Jun 2023 10:02:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A6AC83EDC;
	Fri, 16 Jun 2023 10:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A6AC83EDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AE031BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 10:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F8C184106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 10:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F8C184106
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C90PU3-m2C8k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 10:02:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2286583EE1
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2286583EE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 10:02:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356666068"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="356666068"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 03:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="690175866"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="690175866"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2023 03:02:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 03:02:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 03:02:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 03:02:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 03:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lxo1nnnqFZDBbLrjFzEVbM3ouHdVbfD0laU4KzXtwiczG3EAldsrMlUtWmgpZSnW6olAj6Gl5QE/I2tTkMNm4Yzp3nIOtgu58+w///MVk2Ql/vihwLoVIA2kVaR388qP8dFcVojBp7VZlTFeA0lMAeagFe5zdynHR+ihULbdY3TdX3Lu6Tyq0Abwrlk8fjIMDRxYePvjxm6HlUulP3P4HnO0VMiYAF5SCicujCUftXrpD1SG94Zlkp0321aNwWNbI39z7ecvqHXJFwtlkAXbtQcIGIX0pe3YYfEpr8qGM0ihrRbcjeMUrV6eRYX9sIwz8q1iDdIH130JXjrhmWK2Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rjKwWOejxxl60Ehl3rfPw5CkfbT8rQ0WiFdEwm0Znww=;
 b=ISVILixpKkoGoSgwjr1DfKon4OtdqJr0FuHQCulLGmMmECJB12Shdq+n06FvLQ5Da02raLclZ4jIMv3VHEFI8xMlqc9+kTjpUAFrgcI5QpBbqIwUJnDPI0e1mHh+vB2UTEb86oAjftG2PKLCzU7SVyldLihe7OIVX1xv3XcpO/cnAF60ClqiUrtJzXJhaq0BcAgsqpWvSE0ashZlduoxwNYun2RMXpupc4zau4aZP5DQ1qzo9K8TeiBpqsUgFhmhRI3FV+U0udf0VYzb36eIzLIgsASSneDI7i9WZRatsri+iMx8agtFq+fP5XNWquQdNe+l0UR8meJ/bX/mcwX/iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB8227.namprd11.prod.outlook.com (2603:10b6:8:184::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.31; Fri, 16 Jun 2023 10:02:12 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6500.029; Fri, 16 Jun 2023
 10:02:12 +0000
From: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
To: "patchwork-bot+netdevbpf@kernel.org" <patchwork-bot+netdevbpf@kernel.org>, 
 "Gardocki, PiotrX" <piotrx.gardocki@intel.com>
Thread-Topic: [PATCH net-next v3 0/3] optimize procedure of changing MAC
 address on interface
Thread-Index: AQHZns/0UTautOAJIE6V1ZiH5iQ7hK+M8g2AgABC+VA=
Date: Fri, 16 Jun 2023 10:02:12 +0000
Message-ID: <DM4PR11MB6117E6A199A2CEF4694A6E0C8258A@DM4PR11MB6117.namprd11.prod.outlook.com>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
 <168689522302.30897.3895006000334449942.git-patchwork-notify@kernel.org>
In-Reply-To: <168689522302.30897.3895006000334449942.git-patchwork-notify@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6117:EE_|DM4PR11MB8227:EE_
x-ms-office365-filtering-correlation-id: 58202517-ef93-482c-344b-08db6e50c174
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9wf3p5RcNLt7y5X26ONbrpPeRABEtGmNBa11t9kHO4rV2G8w2iWQySA5B9CGqycFymBsYOIUe/YVIvZdvZr2H94Tsg8pBrfEtezYNsNdLRo9bKUOk0zmfkjFzT6ndNLbY5pDaCTk0OhPwk7tEiW0liqMya0gQb//qF1ZEtnnB7YYKxl6IldLKNzlCY2rk63z2A2TCwt0vOBAYY/YhMY+DxcVf0THuO+7mlUDB4AG7VxdZcx0P/nMCfOb9nqN8dddUkzX6J7zscMdE0iFPCkg29XjdPhW+1/Z5O5AKKu/D6ObGq+InNBs3NhJyv3Qi3INNPsKncQPH0dua8URyi68EyP+g3KGKWpcpVM/pA6qQaDj7Z1kXjpIcRHpqzEVqiKYtOyHtUXkcAsNUo1hBVo5DThC4hxvAWs5WXnB+5nIVi+mlYMqkhD6nuKN0SY9kRAuP6AnUqv4wriIXW1peC01ByR/CtHpDI4nRpkUno4TqWof345V61fwksGofeuxr+UqXJNVc+JSfMBojAnI53Bh3Jnc5PF3ZQtj9UMcsTHgK6Gbip7nuV4E/ADe7Q5CcbyqbFSgUcIIz5uWjZOfRvO9ExP/oZwiwkZCPk0XhhSlTpSwGdeTjX7snaW3ojlU9HTj18YHLPRhaFQl9Iq/PbIqrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(346002)(366004)(396003)(451199021)(82960400001)(52536014)(86362001)(38070700005)(54906003)(122000001)(38100700002)(316002)(8936002)(8676002)(33656002)(41300700001)(66946007)(66556008)(66446008)(64756008)(66476007)(4326008)(6636002)(76116006)(9686003)(186003)(26005)(6506007)(110136005)(55016003)(478600001)(71200400001)(7696005)(2906002)(5660300002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3A0YTRJLyt2a2FHVlBVa3FCV1dUcGZFcDArKzJTcSthMGNORHVZRGdXcTBV?=
 =?utf-8?B?bk9JK2haY0xVVmxoeVBOb3RjTi9KeUtrSnRNYjdIbWhEL2tQb1llN3lCanY1?=
 =?utf-8?B?MGxkMnhYb0haQWl5Qm5SdW1OTzlKR1ZWSEtCcnNlK2dhMGJsa3lnMm5SYUZC?=
 =?utf-8?B?bStNUFFRcHFEbFhLRXZUdGFlVkRWVjV0cEZaK204TmNXM3NDRXowV1FrMWs2?=
 =?utf-8?B?YlhUNHQ5OGl0a2xmeEVabTRKU2lBU1lrS2RFbTArTjUwTDk4Mzk4K2h6aEpC?=
 =?utf-8?B?Q3BzZ1dhVDB3dWZsL1ZOclkwZWF5QTRsWktUKzZFcE0zMk9GTExQS1hSMkJH?=
 =?utf-8?B?NXBxMkxYNytYMUNzeDZ3YUwvN2pVem1jREJmT0pocmtCbmlHWWtHMkFmUzdO?=
 =?utf-8?B?SFI1V3lVWkRUU0pzVmJCTkl0eUNwWlZuMDZDSVI1ckE1SWFma1JyTEpCY0Nz?=
 =?utf-8?B?VEh3cmxaaXY2WEMyUjR2WklUNGRIb3o3bG50dXlYcG8rYlZDNmludmZQMzNC?=
 =?utf-8?B?b1pGdTZ2Y3BJU3BxcTdpaUdOTFFOUWRVdSs5ais1ZmFRTTBFZk5HUGlCZ1Vi?=
 =?utf-8?B?Mm9iVFRSZHZhMUFIR1NZQUFQMHNIMmdvY3U5bUg5MU16VitjTVhlZmp0ckdC?=
 =?utf-8?B?MG5pUHBrVCszWkZOQ0E0cGhRREVCV2k1WGwvQ201YUU2c0FzNXFPVFpnU21v?=
 =?utf-8?B?dUNvTWQ3SVVvOFFxbjhmb011R3ZWY2FtdEZTR0hFeExjSmtmYnNOcjBXWWJl?=
 =?utf-8?B?R0JLa3JqbzVQT1NldG1selc3aG40QSs2c0xHQXJwT2ROOTRYbnlHZTNkUzh0?=
 =?utf-8?B?eWMwVnVZbGh3eDc1Ums4K1U4OHVheHd6VUFFYS81SHpseFpjcGhwN1hHanI1?=
 =?utf-8?B?dlJJYjNBeWYxNWVmUW9EcTNTRWhqQzFHZ01uZ0RYUGtmb0lkMHpNUTVDL1ln?=
 =?utf-8?B?YTdTdklmSEpkS3BBMHFBNzZCY3F6WXd0WWMrVFU4UHFQUGZtOVd1ZW1yZ3Zl?=
 =?utf-8?B?dEFmMWtoVEgzNWVxSEJ2OU43aUdCRzJlazNoWVY4K0w4NXdyV0tUMS9FdDV6?=
 =?utf-8?B?czBOZm10cDgzZlRrb05PczY0VTU4Y3FFUFpFdHRUVmxCVi83UEszV0YxTDZq?=
 =?utf-8?B?aXZWalhWVnpCU3QxQmx1VTFMcFJIVTl3ZldtTEg0c21IWnhTQmZmVVVaQ1Np?=
 =?utf-8?B?UUhUQ3FlYmFVeWZmbjJRSWp2M3l1bE9zU1hCSGlqUEZ3eHM4aU4vSFpWeWFk?=
 =?utf-8?B?QU9ONVY5NEdCTWNzUVl3K0V0Zk1OWG5tVnhnVkYxR2ZRMWpTaHBWUGdDTkty?=
 =?utf-8?B?NHBDRHJzRW83Yjl1UndCcXBXS29jUUZHdTUvbi9YcmNzNkxYWHF5czhWdkxo?=
 =?utf-8?B?UkdzS1VQKzdQZlZ4UU10UllvMWdVQjEwTzVYazRUODBXZjYwMnk2YUo2d0dx?=
 =?utf-8?B?NFF0anJPT2pmb1lua2JZVmZjOTlqLzVwL1p0UlhVd0pSYlZaNWRaQ0FDMlAz?=
 =?utf-8?B?MWNmdFR4QXp0NElBUXlDWVN0QVcvS291cUpFWVBlbFZiRmM0b2tQeVFUWlg3?=
 =?utf-8?B?c00wQ0FJeml0L0MxcGlhOCtweXgyMnRna1FxNXlHUnBWaTFPZFE5dFlWbGRk?=
 =?utf-8?B?ZnhUOXlSc3F2algzWUtqMDQ2NldSQUJZUHg2eHpzM0k4OUh5alo0eEtvZjhR?=
 =?utf-8?B?c0l5bVpjZU8zZEpzN1hSSkVqS2txSlNCMnljcWxrOE9sNk90OWV1cExudndl?=
 =?utf-8?B?YUM0UlhYOThWK0M4ZjRkcWR1N2RzNUM0VjZrWUZ2bmdCQkV6U2xvenZ5N0Qr?=
 =?utf-8?B?Wko0c0xFeGVLemg0NzJQWktoamtyb29iU1d6VExqSmUzNFZDVWFIcWs3UU9N?=
 =?utf-8?B?UVlDbm8yRm0ybzNrWXlwTFdTWXluS3ByeEoxMnFHQ1RIL2ZxV3Jud3Z4Ymcv?=
 =?utf-8?B?M1RXSHFMTDQzYTA0RWFYdWJYNW5sbnlUM2RQbzNZaUNYWE9ZQ3g2UXQ1MVQ5?=
 =?utf-8?B?YnVzZk9MU21FMlE3d2NZc3JEYmhXamo4V3k5N28yMTBKWGxjNnBzTXZrOUFM?=
 =?utf-8?B?QjJwRk1uc3E2MTJoSkJXeVIxZ3B1aUFiSzVkeGdUNEh2U1Z3SFhkZ0ZxT3lh?=
 =?utf-8?B?YmFRNTA4UlZXY3Z0a3JUL21NeVZBZXNOSHBXUWJJUUV2ZVRaeEhhRFg1cWZq?=
 =?utf-8?B?a3c9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58202517-ef93-482c-344b-08db6e50c174
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 10:02:12.4772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xp+u8CS10Ss/pktsOXnTcqMc6Zgo1AuWqQkGLmQJxtDDwixmuF06765bnA2uPIvnIWlRuv6AKl92qnJ83GGuYRAFL3rwrJrQDbviVG+vZhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8227
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686909737; x=1718445737;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rjKwWOejxxl60Ehl3rfPw5CkfbT8rQ0WiFdEwm0Znww=;
 b=eTyXViuCd/sC7AgdKREvofU/kZC1z8cbxrxmCmUwfzelLJJ7gTX6rgf0
 Wrr/00E3tjtBkH5cZXwjU7lFz5TBW9FdMRRE5R+AJ0X86Wu8WsFxb/n+B
 6S1gRKpO68Hm88p7QhpeIqgFgVcj53/ugzbz6z0o18kQBgSTgaY/8PIjI
 v9ylSbqhL8LtFd7W76Y5VguliyxCF9rKjTkUnencre0A5aCN+wpeIHqet
 sME/CL4gZXGs7TbdmFO3yrVVRsxa3pdRRjn496c5RwMNlNgCZR7GfxyOu
 y3DE0CqolBWBq+1tWzSVmPyGICY87DE8NJmPiebi9NyabMvLFPqj53hGz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eTyXViuC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] optimize procedure of
 changing MAC address on interface
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiANCj4gSGVsbG86DQo+IA0KPiBUaGlzIHNlcmllcyB3YXMgYXBwbGllZCB0byBuZXRkZXYvbmV0
LW5leHQuZ2l0IChtYWluKQ0KPiBieSBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjoN
Cj4gDQo+IE9uIFdlZCwgMTQgSnVuIDIwMjMgMTY6NTI6NTkgKzAyMDAgeW91IHdyb3RlOg0KPiA+
IFRoZSBmaXJzdCBwYXRjaCBhZGRzIGFuIGlmIHN0YXRlbWVudCBpbiBjb3JlIHRvIHNraXAgZWFy
bHkgd2hlbg0KPiA+IHRoZSBNQUMgYWRkcmVzcyBpcyBub3QgYmVpbmcgY2hhbmdlcy4NCj4gPiBU
aGUgcmVtYWluaW5nIHBhdGNoZXMgcmVtb3ZlIHN1Y2ggY2hlY2tzIGZyb20gSW50ZWwgZHJpdmVy
cw0KPiA+IGFzIHRoZXkncmUgcmVkdW5kYW50IGF0IHRoaXMgcG9pbnQuDQo+ID4NCj4gPiB2Mzog
cmVtb3ZlZCAiVGhpcyBwYXRjaCAuLi4iIGZyb20gZmlyc3QgcGF0Y2ggdG8gc2ltcGxpZnkgc2Vu
dGVuY2UuDQo+ID4gdjI6IG1vZGlmaWVkIGNoZWNrIGluIGNvcmUgdG8gc3VwcG9ydCBhZGRyZXNz
ZXMgb2YgYW55IGxlbmd0aCwNCj4gPiByZW1vdmVkIHJlZHVuZGFudCBjaGVja3MgaW4gaTQwZSBh
bmQgaWNlDQo+ID4NCj4gPiBbLi4uXQ0KPiANCj4gSGVyZSBpcyB0aGUgc3VtbWFyeSB3aXRoIGxp
bmtzOg0KPiAgIC0gW25ldC1uZXh0LHYzLDEvM10gbmV0OiBhZGQgY2hlY2sgZm9yIGN1cnJlbnQg
TUFDIGFkZHJlc3MgaW4gZGV2X3NldF9tYWNfYWRkcmVzcw0KPiAgICAgaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9uZXRkZXYvbmV0LW5leHQvYy9hZDcyYzRhMDZhY2MNCj4gICAtIFtuZXQtbmV4dCx2
MywyLzNdIGk0MGU6IHJlbW92ZSB1bm5lY2Vzc2FyeSBjaGVjayBmb3Igb2xkIE1BQyA9PSBuZXcg
TUFDDQo+ICAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9uZXQtbmV4dC9jL2M0NWE2
ZDFhMjNjNQ0KPiAgIC0gW25ldC1uZXh0LHYzLDMvM10gaWNlOiByZW1vdmUgdW5uZWNlc3Nhcnkg
Y2hlY2sgZm9yIG9sZCBNQUMgPT0gbmV3IE1BQw0KPiAgICAgaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9uZXRkZXYvbmV0LW5leHQvYy85Njg2OGNjYTc5NzENCg0KQWgsIHNvIG5leHQgdGltZSBJIHdp
bGwgcmVzcG9uZCB0byBlYWNoIHJldmlzaW9uIHdpdGggcmV2LWJ5IHRhZ3Mg8J+YiQ0KDQo+IA0K
PiBZb3UgYXJlIGF3ZXNvbWUsIHRoYW5rIHlvdSENCj4gLS0NCj4gRGVldC1kb290LWRvdCwgSSBh
bSBhIGJvdC4NCj4gaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9wYXRjaHdvcmsvcHdib3Qu
aHRtbA0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
