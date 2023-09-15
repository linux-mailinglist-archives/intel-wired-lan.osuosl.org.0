Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8603A7A18DF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Sep 2023 10:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16964834B9;
	Fri, 15 Sep 2023 08:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16964834B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694766677;
	bh=5VUSk5MpRfMQpy5IwFtGO5NWP5ltcHrqG1Yi0DHIick=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0NhNrPEWmO39+PxlMDP9cvSKoGQmlsk/ilZ0Znyeag3DplqV375fDqN69tDFhMAOy
	 AhLPP0cCnj1JSua/mKLPGeSTiBwoYFn8h0CQWLcLZ/DI1gMluDykaUKPb7qpIpDyqH
	 KmcX/rSbLXSJgrC4QYjBrKq8am7fvSLbiWpRt5ldyNF3BzGtlIKfmrYhVqWS347zxk
	 DfemTMM7WJ2oIrhtPvMnt0Hi5hNOw8sDW7lrhB4w5j3Z6twjPDKXYoBpTfYE3Mcpsr
	 jfK11t395TRrR1NoQiYV7JlTGR67yGznqBXRBgQqVRd/aLv9VfmuicAN4FQbDxMdfj
	 dNUKOjNyyuYpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uT_l8SELkyj0; Fri, 15 Sep 2023 08:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1B9683459;
	Fri, 15 Sep 2023 08:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1B9683459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7F21BF410
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75712420A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75712420A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aa5NfRaOu-p5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Sep 2023 08:31:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21E3D42109
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Sep 2023 08:31:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21E3D42109
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376534900"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="376534900"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="815107057"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="815107057"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 01:31:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 01:31:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 01:31:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 01:31:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 01:31:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9NiIN3Tp2eunOljJQKJpZMMtIgsEBos2ahRGV7OrKk7/AoyUyBGQAux2qkggs9YxwsQm0ReW2l/4458jxd3wB9QIFNYDKMYoWWa4XFvyvSYKOMn80/urUS7utx5GANTZgz2aRbAEY0c3dcNayvO+Eh3LeNTcA9tM/wLh/Wm0el5b7LZf9ge13AKSrdLD51gkdJNeVw+XyjAwYIjlWKuRoyMCeuzzdGo1AZpeRDdiT0C9fGZ4pVf2b3DAUrAJN2cPthoP8Phif2RqM8ZnnV1zqTZ+8akydxpEPZksAwCoVjpPSKKjLB+i/ujTnqmj+I/FFnlyiue1YUrSN5K6ncn8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5dVM5p9VJVr+ETlqfii3mCJTSheNJz89aXQN9yeT04=;
 b=IWgUXddfxj32+i8475XFjKfPkUeVI/GSdp3xQ+3ukilKPHfbEa3X0dQydpA0erXZhfup1HpEpsuMshPyIeaRXAni569Cxl4jnvQxXKjWsmK+FgXX/h1Uo/oDt4UcTnOmooPUo6uJsTAJ3eK72k7AsKToRX+d6VBRg/vEnZ10NopSHMS5Aju0b+l9idt/8PnMomxKLOEuPAb+bGnSjuSuggEUI79QJ8hQ/+rUzGXd0G6O/1tcequvKJmxuQC78HpzPhfrPLRbAg4mj8RQj7ryED4MDJYLJKlk+oLlGTl+5/5G9lEmFSyc6STOzh2tLHzhALenFHXima0qX/UauvKfXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 15 Sep
 2023 08:31:02 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::d36b:7f39:5410:6b30]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::d36b:7f39:5410:6b30%6]) with mapi id 15.20.6792.020; Fri, 15 Sep 2023
 08:31:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Radoslaw Tyl <radoslawx.tyl@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: do no process adminq
 tasks when __IAVF_IN_REMOVE_TASK is set
Thread-Index: AQHZyS9RGjDlVfiHVk2RjvcU3KbmarAby3ZQ
Date: Fri, 15 Sep 2023 08:31:01 +0000
Message-ID: <BL0PR11MB35212565767ACC2EF0ED3A368FF6A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230807125940.985494-1-radoslawx.tyl@intel.com>
In-Reply-To: <20230807125940.985494-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MW5PR11MB5860:EE_
x-ms-office365-filtering-correlation-id: 44190492-ad07-490b-3459-08dbb5c617e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zc0H8z6DGoP0ZgPYSb6vp59xezoqLsAymhe+iOX7Og9bhuaeaCYRQeja2bbN3Ar0xH2SoccuyKG3ZOTyCn5qhPtmC42eOi2iE0474ZlCBqhgBqcviGAnivKW+uJVQp0lMi17PEMSUaOeedGiK7CAetLUYwRqCNwUSbmoDPf5UaArEY8PMXUjlgrXTvSVGu7x8OTVoIOsoSQVBhbjUr/bQRHwzjlrTkQxAJrAFnYE6NurVb9Zq6JTwlZ5L4yFEHcr2GUgJlbp5AkOBapdesszCZ2zGd6qu7LRA2rgcF1YVt/1ublbuR4qhwr9wPEbbG2zeN/4PnsBRSNooLRS27CeMEX06LKQ3ptkx/06f9AagyUPm0Plhc4+nnuD2rmn3knRmD38XZtBsnUKzrbQ7PFn/GNoU9N3/LANuPA6s2KAJz4miVxUNk5QHLCboyn94zDNyO06b84qC5cYV9/J7jP7yFCSUUjoai5/A+2zhABepxMN8k3NZ9VOg/V/CDpKr8DsN++8M8Etve7Xnlx+dOemG+3dYlisfVqEftZvpsN90N3zKLT6ZH/3DKr483oKY3BJ3UAxFdcux7XVEORq8LquHWgApOFvrrifvCd7y3deWFDL5yDCHp9n95sAmh5TIy25
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(366004)(136003)(376002)(1800799009)(186009)(451199024)(66476007)(71200400001)(53546011)(41300700001)(7696005)(6506007)(33656002)(66556008)(316002)(478600001)(122000001)(86362001)(2906002)(38100700002)(38070700005)(110136005)(66446008)(66946007)(76116006)(64756008)(82960400001)(5660300002)(52536014)(107886003)(4326008)(83380400001)(8676002)(8936002)(55016003)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mwcB7VzZEpz+Alz80shJhu8hf+SnEL7om/s0sHfcz54TE2R6Ck+OENbPgajc?=
 =?us-ascii?Q?xAyRkMWkdEkzwfVJdEGGr8J7elKeXSqiJeikkXJvw7pNirey1Hi1e4dDTkpG?=
 =?us-ascii?Q?rjvFjQSOxZb8E2YauPVBT52xr/P2iWPU4xMHKB0T0ybHR8JelIYeMGFFooyc?=
 =?us-ascii?Q?THW1WjvUy4q/zbExqF8e11NZrcE1XSxjmgAdwjBJ1aGha1/XD/q0zsIpzk3M?=
 =?us-ascii?Q?QRuzfFK0IWVWs7Mu5YNARjmQqOLaUbCIo0MxX8pPcdi62DTn5rDYsMnXUeWP?=
 =?us-ascii?Q?CS08RezDdYA9IhwdDbjQjoO8VkCQyDX/+Cqg3bBQQkTj4pOobMkmgvdUuMgw?=
 =?us-ascii?Q?trGaqjfOAMNMxXXTOREeuGOYMlV3OpRh+6BazRc4NCNif62Bov/tl+4/1v87?=
 =?us-ascii?Q?pQ20G2OKFnJKIYCCVxlCPM5YtV9MIFDnvsgMbyBOnA1auvxfrgKEzK674SrW?=
 =?us-ascii?Q?DH9rikv+CYm5iXt386+Z++u99BvncLbD+J1DyrTE1I4xiuw8w/s2O1MLdiNz?=
 =?us-ascii?Q?E+hH/LqPXI5zxx5tMKVmQBG+xU/W5jo3mlCiNUxu4zMS/JXWdcDfZDFNDjAp?=
 =?us-ascii?Q?L2wrXIFxitfUvu3Wy8lvCLm2ili/sz837Wz2VA1qkrFmknz0ldAl21vKZBv3?=
 =?us-ascii?Q?41N2F8Gmii9WC7F3CAoEDHio4eBEGK0vulhzxFpsdDDzQrlCdrimJuOuJrLa?=
 =?us-ascii?Q?pRxzw0e4f3s9QsDzc+xwE1j1+7TuNHNYZYiMnujrd7zAqi8a1NGb/1BUhF21?=
 =?us-ascii?Q?S4lATqvDAn+PDYjIUG0I3mzHQ7dWLmCVHrCkaf/zxoLVh4W07N0BEZttXqyC?=
 =?us-ascii?Q?9tzEra3z9GNQ8SMhjXNFtWgn1w2HME8b9oqHd42FiVT9tQnxjbS8GvetnjUB?=
 =?us-ascii?Q?I2mQgq+0UrMn5DupsDYOP6ZxGO8zBbTFX08QjnfyHvaQ2B1yJfBhx0KyS5fa?=
 =?us-ascii?Q?2NseS14kC+qcjsElAH5m5C8EfZmlVI2eEJmmdF+5/i/Qm02V3gck0Wosgoaf?=
 =?us-ascii?Q?1Ni84y5ZxXIT1d+i2oG0w3436/tZXJHG2Z7ZHjYb8LZDUJLpRXHPu3DRtO74?=
 =?us-ascii?Q?MJuUElZafJcBSnLtXPPpQ1jvwxEuG5LjRLK4b7Ugcb7ZkxnGfTP9+U/N1OFA?=
 =?us-ascii?Q?UD2V9nhAh9tIAq0X2e+Vzr0VlQAtOQw58/kpoaelljar9QsMQ/jUATr1yyMc?=
 =?us-ascii?Q?PJKIeZ0jNIP0vtC6kWFWpvSYgs81WWq88Vw2bO9rCblhdkvZv7g8R1FcACmw?=
 =?us-ascii?Q?vI1U+Pg/izTvkNwoTFra9CfNb/V+Mz2lMRHoF48s7w08QpJ+kwJBy6JYIq7S?=
 =?us-ascii?Q?ciV2lziPuhvuLQfCprL7UHkTUHQ+/FegziEHaml505VK/a/IYamTLP3ejoGP?=
 =?us-ascii?Q?YFtgaaNVLzijAnlu3tBr5Jf2cb5EULcxlIm68wmfqEPuC+F8n9JzJAyKXWZw?=
 =?us-ascii?Q?2KfqMV3hZ2eL74SVbw7PWNE/SXxKcvS9Xgkdvn1h1ixWcBbxFsbyNBhEFTuL?=
 =?us-ascii?Q?3D86iyEYGqR3Mkut/d2MllsoQryOPfo2hgI2GW1zfXA2Q7n9ZTlow4IEQ7z+?=
 =?us-ascii?Q?DbDt9AMqhlskgT2852jvSH6o/vi0r7NclfxB2D3/82xbJFnnjn4KT/KIZxBP?=
 =?us-ascii?Q?HA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44190492-ad07-490b-3459-08dbb5c617e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 08:31:01.1393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qaU4EbtxlfGZ1u9a5ZLfRl6KyyKi3pZtsxTPcaCC15IDOXwnkiMLbzhzWSYL8vjFxU+hde3c0ZAzN0mnb/FZy0/FFh+ukb3N/cpAQOH17AU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766668; x=1726302668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1A3xZhLYvG4RLNO5iD1lhUoR4hsR0s9dfJJrfWXpR64=;
 b=XLvqX0mKL6ru5QS3pYKKov/++84Ev/AO5I7PT3UoXJyn0i3gJWnsYcJf
 NmnC6qokVTEvA6ICtyg+Sb5lXS3YsYv8b01mlZfhNBraPwEuX5o+61aNj
 R4H97DyemcODZL865xYCFKJK7eDe26SoPqo0OdqakRYKwyKQMKh+MpXvu
 OYhLo1ECeteeEcLWpQOjk9GN6itekTvW1KrWHazWX87InLNQaHLIu1Jt3
 uT3Fu3whoY4JxvkCH+u01HDywcRVgWl+oZs5tHxkiIK+fR0Axyr3SRcbV
 JdPjIGKonY/2bxGDOcBJiXYqutS3L9SNqT/RwdUqZl4Mi0e0/AwQxS1q4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XLvqX0mK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: do no process adminq
 tasks when __IAVF_IN_REMOVE_TASK is set
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
Cc: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Radoslaw Tyl
> Sent: Monday, August 7, 2023 3:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: do no process adminq tasks
> when __IAVF_IN_REMOVE_TASK is set
> 
> Prevent schedule operations for adminq during device remove and when
> __IAVF_IN_REMOVE_TASK flag is set. Currently, the iavf_down function adds
> operations for adminq that shouldn't be processed when the device is in the
> __IAVF_REMOVE state.
> 
> Reproduction:
> 
> echo 4 > /sys/bus/pci/devices/0000:17:00.0/sriov_numvfs
> ip link set dev ens1f0 vf 0 trust on
> ip link set dev ens1f0 vf 1 trust on
> ip link set dev ens1f0 vf 2 trust on
> ip link set dev ens1f0 vf 3 trust on
> 
> ip link set dev ens1f0 vf 0 mac 00:22:33:44:55:66 ip link set dev ens1f0 vf 1
> mac 00:22:33:44:55:67 ip link set dev ens1f0 vf 2 mac 00:22:33:44:55:68 ip
> link set dev ens1f0 vf 3 mac 00:22:33:44:55:69
> 
> echo 0000:17:02.0 > /sys/bus/pci/devices/0000\:17\:02.0/driver/unbind
> echo 0000:17:02.1 > /sys/bus/pci/devices/0000\:17\:02.1/driver/unbind
> echo 0000:17:02.2 > /sys/bus/pci/devices/0000\:17\:02.2/driver/unbind
> echo 0000:17:02.3 > /sys/bus/pci/devices/0000\:17\:02.3/driver/unbind
> sleep 10
> echo 0000:17:02.0 > /sys/bus/pci/drivers/iavf/bind echo 0000:17:02.1 >
> /sys/bus/pci/drivers/iavf/bind echo 0000:17:02.2 >
> /sys/bus/pci/drivers/iavf/bind echo 0000:17:02.3 >
> /sys/bus/pci/drivers/iavf/bind
> 
> modprobe vfio-pci
> echo 8086 154c > /sys/bus/pci/drivers/vfio-pci/new_id
> 
> qemu-system-x86_64 -accel kvm -m 4096 -cpu host \ -drive
> file=centos9.qcow2,if=none,id=virtio-disk0 \ -device virtio-blk-pci,drive=virtio-
> disk0,bootindex=0 -smp 4 \ -device vfio-pci,host=17:02.0 -net none \ -device
> vfio-pci,host=17:02.1 -net none \ -device vfio-pci,host=17:02.2 -net none \ -
> device vfio-pci,host=17:02.3 -net none \ -daemonize -vnc :5
> 
> Current result:
> There is a probability that the mac of VF in guest is inconsistent with it in host
> 
> Expected result:
> When passthrough NIC VF to guest, the VF in guest should always get the
> same mac as it in host.
> 
> Fixes: 14756b2ae265 ("iavf: Fix __IAVF_RESETTING state usage")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f329f81c793d..7ebbf2a4c487 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1421,7 +1421,8 @@ void iavf_down(struct iavf_adapter *adapter)


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
