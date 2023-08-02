Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC86F76C7A7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EBE580D9A;
	Wed,  2 Aug 2023 07:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EBE580D9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690963037;
	bh=ctuuj0UbAsdM3Uc+WrkuOCV0CTCK9GBW5GwspmYCbac=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aPnXntLC6Mtt+YeE9SSOYGAbO8iBfW4Y24H/hqKkUUoPq2gmAYl7LQmC4l+LOYfF8
	 vu8c3kOVJzTXyAp7Poq5mzlxUzOb3vHuM++Up1VyuyzP6Ab7XOmP6qcVixxvx5M7HU
	 DRe2HibQcK5DPs4lAlXMAlP9ZfxvLtjTKcSv5oRevEtYw8r0kctVwNtKFAWKPEA6ch
	 QnUA86AQX+dX0pkc54zfr94CEPIi77TVBrLGeM+M8Qd3iLG+D3uSI2bZZ32+Ag0wEB
	 taz3MEfXdWUZyeqC5bOYqiCSBi8wHRp1rBC82lSCcmiW6CsDAkhlsN6J1d0QitUuk/
	 F8HoITx00QC/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVl2eIdIVAJw; Wed,  2 Aug 2023 07:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2A5180B6C;
	Wed,  2 Aug 2023 07:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2A5180B6C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52EF81BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3072F61139
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3072F61139
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mdaVED7GO_Lv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:53 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F39260E8F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F39260E8F
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435836252"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="435836252"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="706088768"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="706088768"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 02 Aug 2023 00:56:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3xTvMpdre8565ueBcN9OmJtkfAu7p8Gbm+xZTAnfbuqjgLgcsMs4ECJWVoYCHZxtV7ksEX4kPAm23wQ0327ImYZsH3Dhi2po7lh2cqSlzQsqU7qze2x7JP7idCvPULD9M+3ZvwAO9oYSX2pHRIVwCGuhvqYCz+WpJ1BLO5+UBHPHWoPolPHwS7HpIG4awRq2noYoP0/+mT/xNvCnDNyMsVw5YhPBiWdurp6V8c8LUQ3O2ZuIjm5W7Brr+MXVSZfvFcIXysluhXeZogXHd0in+OoMGDoskExuP8zgXFYV6gF0Gprb1UF2h2zoBVMoI/NL6Waaw2G5BJBm4MdUEPngA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HowwAfwzgKNB//7qlVsxdTbPV2epArhOnRDufdjj9+4=;
 b=WXy52nW8Bc3KhqK2jGetP3eyUvseQTkxcAMWKZ/RJu0/qG5nY44i4xvdu3rXnLAH4zooOhSVJsJ4UevRSiJF/eyjzf9JsZ95jujElgkhBns0NCTkaYVIb3wEDOVjyvGd9ArmToZgmRxd1bzRKcw/sAFLhpnzrL5U3l3BKtJmGbgy/mMFi+m8K4p3T66NjJFwqMb2kL9DeoDLzsq9vKlWFm6pUnkERoJ5J7Izf2/n+hQqjNZ5g3Ls6nDIeiSJAJ/BWaitiL/8WHeSQvXD138C1PYarfToKm6r+gk4pr/w6ebRxKYNrv46lri4sBUbKYe2LBoEFr33ZljKKX5fFI9WDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:56:47 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:56:46 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ice: add API for
 parser profile initialization
Thread-Index: AQHZl3FgAFOgALj/xEy5hDXhJlg9Ra/JEduAgA3LQJA=
Date: Wed, 2 Aug 2023 07:56:46 +0000
Message-ID: <DM6PR11MB3723D16B907692708C8E1F31E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-16-junfeng.guo@intel.com>
 <044eba59-0880-501a-7fb5-75b84fe51b69@redhat.com>
In-Reply-To: <044eba59-0880-501a-7fb5-75b84fe51b69@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: 8e8e5d44-cb5d-42dd-a249-08db932e0538
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VMi0GcX7o5oh6uDWMio5jlEFR7KcbKTroQMUQc2F9EdbYiqc7E/Dmx5/xPMTy2wxA/P13wR4kru5kfpAcjoPwzSYIKp9Lkj5Z2OQPqKhQBG/FVYaMoIX9kS9V7TiY1Mp/QDOxzGPPytr+1aoaUNu+lED0coel8cWKivX/dwinLKEvFUBJiMQH+A3RnqSCskWeRHXrMeoRvGNydHeIcV3Bq7WkUFwJDUrghcSnnFFo+9JuSoM4bThFcfXndU1thXhs+I4LUx/68iKflVfisXUH7A3mW4Hc7H1C1Pubs3FcrVu8wStcNruvOCCNI6HH2Bf7JPgoOaqw3aR/7KFvdOcBfU6enHCARaImNWnBV7qdZnpIgmiYxh0lFBs1DrsvJ3JpK71IavADznxqoJG0mzeWeo1V5fbq+acyLzVJlbeBEzGSlDnlSdz6XmaFcNKS3glPXjyHJGfzfP3YIDKRlCQYuy1oRsxILA2EkZ4wFO54AppRz3mAaj73Is9Ewi9DO9C84XJ9gyqHbV3tsWpCscpFRzC3gI40SNGVSgH2Jpp+P3Hhw+B7bqGexit+f1a1LlsmfKuvL7G8MzTdlyb+gmE5lBebKwDfb/31gndtwmMzNIZYsKJ52zONiJUKW890uwv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(2906002)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWtXeFE2Vy95V3EySm9lYzJDdHFHbEY5K1Y3a1o0K2Y5aDlmT1pndTh4Z1Av?=
 =?utf-8?B?TGZFVFFiT2Z0TWpIVFMzd0hhSm85VkpNWVVpcDR5ekVwcW9pMHkvVGxId0dX?=
 =?utf-8?B?M0YzcTUrdUM0V2NEclBJaUg5eTFvVGwrdHlUaHRWV3BaKzFkOGlMRFlZQWM4?=
 =?utf-8?B?Zk5QWkR6UmR2VTNmeUFSVDRCbFZhZjQ5aXhuYm5MbHdqRk53Ymd5WE93U0xC?=
 =?utf-8?B?aDZlbzNRZ1ZxQ0tLUU5EUnNwY2FtSVlpY3FDVlNmaGsxT0VBR0RFR1pXbTNM?=
 =?utf-8?B?VjBaOExHOWVvaG5scm5mOVMwVU8wSk9KYmlDMTFlZ1FqeTNwZXVZOGxvVXdu?=
 =?utf-8?B?aTdBWGdnRlVEMksrNWFUaE5QYlliRUdmMGNacUtwVjB4Y1ZlS05SUXo4Ylgy?=
 =?utf-8?B?UFYzNjRHTi9haVNFcDVFZ2IvbyttbndCdUxMbVRWV091V0RKREhnSGtqSUJp?=
 =?utf-8?B?dGxUc1BYcEVKczZFcFlOQXl1OUE5UThRdVFTWUxzeDYzSnh1amRQNGNDdXFT?=
 =?utf-8?B?Nkt3RWFjSStzaGFiWXdUWDhvclpscDJoY1BaUkpvWk1ieFo0eUFhRm9IMTBJ?=
 =?utf-8?B?NnFKb0s0cUU2dDM3WmJ4TldCYTYrbFQyRVRwTEQrdXI2SE1nV3hGQTlJYnMz?=
 =?utf-8?B?OUI4Qi9OWkNmZmRWNEJld0htNHQ3ODR5OEFjVnVPT2hwdGd4VkZVNWlkY1pM?=
 =?utf-8?B?ZjM4QWJKOXpRdWFEVjMySXBiMmViZ2ZNbEJXcUl4cjNnWnJUMC93U01lRW1T?=
 =?utf-8?B?aHZjWEFBZGllWUlOZERNbjZHL3hkYys2NkVLQ1BjREx3eEZ6WUw3Y0x1dkgx?=
 =?utf-8?B?NGQrMTVRSG9mRU9zTXF1OGpsYkZyZkptUEpWeFRCeTBQeU5FeFVleHliT09F?=
 =?utf-8?B?ZGVad0ZDeTJUc3krbmx4QUpiNmRXbG8wMWlWS3VvTUJCZXhXbThrZGtjK2tE?=
 =?utf-8?B?MWlaaDJxZEgxWXdPREhYMy9hM2xaQUZ2dFA5RllNTE5vb2pMcHJnOGRyQk95?=
 =?utf-8?B?TG9ZcU9yV2VWYXpXcFRZbGFKZEtUclF6VUNXNGJFcDN6b3BZQnJHdEtoZlNK?=
 =?utf-8?B?WlNpYmJ3THhYaWF0M01nVFdMRy81QWNnSC92WCtFVS9yTmduL2ZYNjQ2Mytp?=
 =?utf-8?B?K0ZuUWFWUEUyYU5LaUI3Wm1SRUVEMWVZSUM4Z0gzZC80bFlnRDFxbGFsWnlX?=
 =?utf-8?B?R25mUTZvTUEybkE4SFQ3RE14U2M3L2QxUzBNVktRZ0xHRnFiZTlrcnlqeXRW?=
 =?utf-8?B?Mkxrdk5yR3Q1ekx4d1JtRkNBSG1zQkV4Z2p4MkwzcFJuUDd3M1FNOFFYZWh3?=
 =?utf-8?B?R3FXMVE5bnpOOWFNS3pUL1hicWlxeFdBTEYvL212Mnlmck5iMks1Z3hkVVo0?=
 =?utf-8?B?QXhBSGZIa3ZsRG1WTkVqMllaaVNMdWZlajRNWlZPVUp4enNpdTY1bExqSzdy?=
 =?utf-8?B?N09ySlRoZWpJTVBVbXBvSEtwcUVKUXRxWVJ5bklyazB4M3ZBekIzNVU5bWV3?=
 =?utf-8?B?cyt4bTJ0V05iS0YrTzREcEs4WlZEYm1GaFo5TXVnZUtzbk5qYnMxcjBGOE1G?=
 =?utf-8?B?cUQ5a2lRWTkxWE1ZQ2hKRGhGSEhJSi9CN0w5akQ4bHhZcVpFNmZyWFdiTmJD?=
 =?utf-8?B?dDY1TzlaVHZLNUtjb0p1blhXaHphSjhUeXkxQnpCWUFadEtYNWpkS0kvSGdy?=
 =?utf-8?B?U0dVVjdKYUgyanhUbGlGRWY1Ui9YODJNOFk5cHRCRm10d0VmaFhRcjRYWEFF?=
 =?utf-8?B?TTk4dzZrWWdwOC9PMEpQSE8rMUJmanZIMTBlNW4rSktTb3ZWR0tFT0RJWW81?=
 =?utf-8?B?MUt5VzlxNmRuSDFyeFFJaWV5WUJnNk95MTAvalJCYmR6MW8raXlGQW5jcEZi?=
 =?utf-8?B?aHR5RmlFeGUxaXRJaTRCTVg4cDZDUmRvb0luNGlod2g1T2VWY1FoeElsd1B6?=
 =?utf-8?B?R3pzMEpzeHYzYnJoeDNCWko5aFBtdHB6U2lwVWFrNm1Qcm5nbWdiQXZkaXo5?=
 =?utf-8?B?Mi9iSGhDR3J4Vi9GUHRWU09PUlVLVGVSdlcxVDVDenZKeTBGUkpLUDlDUWFF?=
 =?utf-8?B?eFJaczhtVDV2V2g5VHpQWHZoNU1yK1NLSmludEg2VFVFaVRqYWFVcCtscHdY?=
 =?utf-8?Q?tVBTYklEXW2AlTrbdKwVhURbm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e8e5d44-cb5d-42dd-a249-08db932e0538
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:56:46.8250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxpWZrgbHjU7Lp9GAO43I1qggW/MF3OQbuf0TLhCmKkGaUKbwVtwAJc7bqrhrgwA+d+pnTglGPzx9wn6ZG16YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690963013; x=1722499013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HowwAfwzgKNB//7qlVsxdTbPV2epArhOnRDufdjj9+4=;
 b=UEsl5dGyeiE9HTJczUgej6jxAEdhXYj45+eY7h1wc9ZoqwwjCagUtX4k
 NQl80WdJtACC5VuoC7ui2/LsHViV16SfeazGP9zP7Hq5IbtHCdR975GsL
 mIBLwsclZTkEJ5WrHt8J+6dxSQuKuu3yGj+AQchTkjdh30Wyk1qw5cOwZ
 3M9sj0MRk+vXLKOiydcPgSxp3qyJCIqokq624/JktU+TQN0oNP0pAT6sr
 cmO0GdGZhjKpo+7xMjA4JnDQRcIQwOBPQ3bfCzNN1+vHGoc4v9mhp3mBj
 TAKNvG9DPFWicRAam3RwdXQdxCZKeALVJXZ6HLYjIXkMXJEocBZVtP3LO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UEsl5dGy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ice: add API for
 parser profile initialization
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 19:17
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ice: add API for
> parser profile initialization
> 
> 
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Add API ice_parser_profile_init to init a parser profile base on
> > a parser result and a mask buffer. The ice_parser_profile can feed to
> > low level FXP engine to create HW profile / field vector directly.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_parser.c | 113
> ++++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_parser.h |  24 +++++
> >   2 files changed, 137 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index 1ca0886e6590..ad42dcd31cb3 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -448,3 +448,116 @@ int ice_parser_ecpri_tunnel_set(struct
> ice_parser *psr,
> >   {
> >   	return _tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
> >   }
> > +
> > +static bool _nearest_proto_id(struct ice_parser_result *rslt, u16 offset,
> > +			      u8 *proto_id, u16 *proto_off)
> > +{
> > +	u16 dist = 0xffff;
> 
> Use U16_MAX here...

Sure, make sense! Will update in the coming version. Thanks!

> 
> > +	u8 p = 0
> 
> Also 'proto' instead of 'p' would be better.

Sure, make sense! Will update in the coming version. Thanks!

> 
> > +	int i;
> > +
> > +	for (i = 0; i < rslt->po_num; i++) {
> > +		if (offset < rslt->po[i].offset)
> > +			continue;
> > +		if (offset - rslt->po[i].offset < dist) {
> > +			p = rslt->po[i].proto_id;
> > +			dist = offset - rslt->po[i].offset;
> > +		}
> > +	}
> > +
> > +	if (dist % 2)
> > +		return false;
> > +
> > +	*proto_id = p;
> > +	*proto_off = dist;
> > +
> > +	return true;
> > +}
> > +
> > +/** default flag mask to cover GTP_EH_PDU, GTP_EH_PDU_LINK and
> TUN2
> > + * In future, the flag masks should learn from DDP
> > + */
> > +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW	0x4002
> > +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL	0x0000
> > +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD	0x6080
> > +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS	0x6010
> > +
> > +/**
> > + * ice_parser_profile_init  - initialize a FXP profile base on parser result
> > + * @rslt: a instance of a parser result
> > + * @pkt_buf: packet data buffer
> > + * @msk_buf: packet mask buffer
> > + * @buf_len: packet length
> > + * @blk: FXP pipeline stage
> > + * @prefix_match: match protocol stack exactly or only prefix
> > + * @prof: input/output parameter to save the profile
> > + */
> > +int ice_parser_profile_init(struct ice_parser_result *rslt,
> > +			    const u8 *pkt_buf, const u8 *msk_buf,
> > +			    int buf_len, enum ice_block blk,
> > +			    bool prefix_match,
> > +			    struct ice_parser_profile *prof)
> > +{
> > +	u8 proto_id = 0xff;
> > +	u16 proto_off = 0;
> > +	u16 off;
> > +
> > +	memset(prof, 0, sizeof(*prof));
> > +	set_bit(rslt->ptype, prof->ptypes);
> > +	if (blk == ICE_BLK_SW) {
> > +		prof->flags = rslt->flags_sw;
> > +		prof->flags_msk =
> ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW;
> > +	} else if (blk == ICE_BLK_ACL) {
> > +		prof->flags = rslt->flags_acl;
> > +		prof->flags_msk =
> ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL;
> > +	} else if (blk == ICE_BLK_FD) {
> > +		prof->flags = rslt->flags_fd;
> > +		prof->flags_msk =
> ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD;
> > +	} else if (blk == ICE_BLK_RSS) {
> > +		prof->flags = rslt->flags_rss;
> > +		prof->flags_msk =
> ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS;
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	for (off = 0; off < buf_len - 1; off++) {
> > +		if (msk_buf[off] == 0 && msk_buf[off + 1] == 0)
> > +			continue;
> > +		if (!_nearest_proto_id(rslt, off, &proto_id, &proto_off))
> > +			continue;
> > +		if (prof->fv_num >= 32)
> > +			return -EINVAL;
> > +
> > +		prof->fv[prof->fv_num].proto_id = proto_id;
> > +		prof->fv[prof->fv_num].offset = proto_off;
> > +		prof->fv[prof->fv_num].spec = *(const u16
> *)&pkt_buf[off];
> > +		prof->fv[prof->fv_num].msk = *(const u16
> *)&msk_buf[off];
> > +		prof->fv_num++;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * ice_parser_profile_dump - dump an FXP profile info
> > + * @hw: pointer to the hardware structure
> > + * @prof: profile info to dump
> > + */
> > +void ice_parser_profile_dump(struct ice_hw *hw, struct
> ice_parser_profile *prof)
> > +{
> > +	u16 i;
> > +
> > +	dev_info(ice_hw_to_dev(hw), "ptypes:\n");
> > +	for (i = 0; i < ICE_FLOW_PTYPE_MAX; i++)
> > +		if (test_bit(i, prof->ptypes))
> > +			dev_info(ice_hw_to_dev(hw), "\t%d\n", i);
> > +
> > +	for (i = 0; i < prof->fv_num; i++)
> > +		dev_info(ice_hw_to_dev(hw),
> > +			 "proto = %d, offset = %d spec = 0x%04x, mask =
> 0x%04x\n",
> > +			 prof->fv[i].proto_id, prof->fv[i].offset,
> > +			 prof->fv[i].spec, prof->fv[i].msk);
> > +
> > +	dev_info(ice_hw_to_dev(hw), "flags = 0x%04x\n", prof->flags);
> > +	dev_info(ice_hw_to_dev(hw), "flags_msk = 0x%04x\n", prof-
> >flags_msk);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index 432d47031298..ecbec5843e9f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -85,4 +85,28 @@ struct ice_parser_result {
> >   int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
> >   		   int pkt_len, struct ice_parser_result *rslt);
> >   void ice_parser_result_dump(struct ice_hw *hw, struct
> ice_parser_result *rslt);
> > +
> > +struct ice_parser_fv {
> > +	u8 proto_id; /* hardware protocol ID */
> > +	u16 offset; /* offset from the start of the protocol header */
> > +	u16 spec; /* 16 bits pattern to match */
> > +	u16 msk; /* 16 bits pattern mask */
> > +};
> > +
> > +struct ice_parser_profile {
> > +	struct ice_parser_fv fv[48]; /* field vector arrary */
> > +	int fv_num; /* field vector number must <= 48 */
> > +	u16 flags; /* 16 bits key builder flag */
> > +	u16 flags_msk; /* key builder flag masker */
> > +	/* 1024 bits PTYPE bitmap */
> > +	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
> > +};
> > +
> > +int ice_parser_profile_init(struct ice_parser_result *rslt,
> > +			    const u8 *pkt_buf, const u8 *msk_buf,
> > +					int buf_len, enum ice_block blk,
> > +					bool prefix_match,
> > +					struct ice_parser_profile *prof);
> > +void ice_parser_profile_dump(struct ice_hw *hw,
> > +			     struct ice_parser_profile *prof);
> >   #endif /* _ICE_PARSER_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
