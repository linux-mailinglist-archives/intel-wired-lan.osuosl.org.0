Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B83733646
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 18:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE53640488;
	Fri, 16 Jun 2023 16:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE53640488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686933589;
	bh=TL+7ofN0WiZr/RcFau2Q/cdxX7PDPkaecvkQG94mKBs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N7lKgJ9mm01enDnUckcErzjXa2coZHXwEro4faRzAafcuS1MTCjQkKzBRY/bom767
	 MmgDvZAFz7DIgILIfbYDs9UsaWhUmuiKaTHY0n+tz13aMqvW0DIFigKW/6D3b6HQ0p
	 UaD05q04WKGYuFqS5A5YgWsLv6aywrLmDk39vzYylOdWFpu2BXyIovuBsxJP3ZDORr
	 KatnY3WvXljX0IKapw9zrx6JKwVPpwHXoCvaiNUsNpiqf9FwlB3h8Xxaw3soIaPxEk
	 nasJXLZC133peEyZEEEreJgyRB5jEo6cbjZVetBHcXw1Hi2v5tR0+s/BOV6w5Hy0lz
	 71eULei9VHUMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAXXlSh4mvn8; Fri, 16 Jun 2023 16:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71DFB4040D;
	Fri, 16 Jun 2023 16:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71DFB4040D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 314FB1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:39:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07F4F614A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07F4F614A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TEbCSoCQabFY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 16:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFBFC60FD5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFBFC60FD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 16:39:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="338873876"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="338873876"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 09:39:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="778216556"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="778216556"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2023 09:39:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 09:39:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 09:39:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 09:39:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ED0IPlyQgcQLIZZOPCv1A+vEc2Qo/zcFScRe2LmeVCmbNvaTUePfxvHiojNbk/Ba9FqHkrXjvcQMAs3ayWBtTGGNurv448KRGotCkIj+L22m2hPw17jmXGxGJyYUX4NQGuw2mvYK0JPQnUk2faICJ3NmMmQm5U/oAioFZoMaudybIbj5V8FgAm/Pc5mozz49D17pbRdLD/zccbA/8kn7WOlBD6c3YfYdc13AOVnFHBzKvZ3Orf9IS2vJIZoNNPenIJzVMwSNitAbpEZcuIazrN4T+X2+clFSZzzEIDoAyotpSZRSMPKU4py2nFnVVpzL8J5yCLYn6JDnfkQk8Gx2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4X2cAOCAC282WSTig/JBes+XSv4Trkdt9jzbwANR3vQ=;
 b=jOfBrA9qjaKbTIqywGW/4Mvdsf74Sed2jROsQWW827bubFshkU0qrtGyVziBQ4Ts3gM9Rdd4LTiosR18/Q+UP+p9DMkfLosXkQy9e9SeQ5rwjRavPopNz8qnOqMRl5bBUG3N0KIlvc5yq6dj7d+3CM3K8PdXHaDQxRMgmH0Vm+5GuYoDXImCh7Qj6ykGacTVn0wInjStD7oNgco9vetIeSw6L8sjKt4qNa3MGsJz+w3svJoseYRX7W2UswJGK1MNpYbWKh6+dnwe6CTY3SQc+3zULbtB/YkxxGBtVFx0i+B63nv6LBM/4gP3zttxOZr+68wCiCNqiLRepRyNGJKZBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DM4PR11MB6020.namprd11.prod.outlook.com (2603:10b6:8:61::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Fri, 16 Jun
 2023 16:39:36 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6477.037; Fri, 16 Jun 2023
 16:39:35 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Tan Tee
 Min" <tee.min.tan@linux.intel.com>, "Gunasekaran, Aravindhan"
 <aravindhan.gunasekaran@intel.com>, "Chilakala, Mallikarjuna"
 <mallikarjuna.chilakala@intel.com>
Thread-Topic: [PATCH net-next 0/6] igc: Fix corner cases for TSN offload
Thread-Index: AQHZnsmr6RJrKMVwJEipSQnMpRCh9K+Nl7HggAAE4gCAAAapAA==
Date: Fri, 16 Jun 2023 16:39:35 +0000
Message-ID: <SJ1PR11MB6180B8CEF4F0F86E405908CBB858A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
 <SJ1PR11MB6180B5C87699252B91FB7EE1B858A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <908bd8bd-8629-f6e4-40f9-77454d52100d@linutronix.de>
In-Reply-To: <908bd8bd-8629-f6e4-40f9-77454d52100d@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DM4PR11MB6020:EE_
x-ms-office365-filtering-correlation-id: 7b426325-bc58-44fd-b6e8-08db6e8844d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s4ma6vh05Al4AUes8SZtNxmMb2/lOTdPDZkgFNYwd2m2jfWQK7ZrY6MfF/UcJKw4ZHSPH20LixxIHWLH7WICmYzHncGvutmS5B4kjEqxbYnLO5vxW/MPJ6JxeWGBOpTjnxg0U/mcCgR7g8Kz8kiM4VztNTRVki7kljzbz9iZPRNtxbKfGb2AjV1Y7wL6hWO1m+W7gp10udf9yWZtOOyAp8Z/Tu7qRWJaVKCrlKP04WZCOUID47p5Q3LI2dbiD4FdEmySt0NRchjtMaS09OawTMoxXLNYxr3PedSClodpk4Azng6u3w9kFwaib4ccsdWKYow/JTckVk2BO2o9lEV4KgicKC173ou9XpUPXA9Ie5RynwSIuZtBtzaEWo0CvjaLefCIVb6VMKW03o3LqBREBwv9eHjJ7z1qWr8nj0c21MMsGlLMD79Kx6xie1XN9fH+FMXgYDsLwTJZVBe/ICxqOr7uvTe/sgxYgEHxgkE2Vzg5pJs7d1MYCQqfI8kxgta5QcCkSuicdeC5aTWQOWzIsjVE9mSN6ySXEmbs3tq//1DM5+qT1xpWeCXuossZsze4AZnldqYxnCOv3gJtqBiLlMBnn3UrK/SZVGaTAUDXYHuLtB4EGbAUefwaKj40JFU7YH325af9Fg5eXV3pLgoztg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199021)(8936002)(8676002)(83380400001)(2906002)(5660300002)(64756008)(316002)(33656002)(52536014)(82960400001)(66556008)(76116006)(6636002)(66476007)(66946007)(66446008)(4326008)(921005)(122000001)(38100700002)(54906003)(110136005)(41300700001)(478600001)(53546011)(9686003)(186003)(71200400001)(26005)(7416002)(6506007)(55016003)(7696005)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWM0QWROYkl1WTE2MTRxeUpLazZaMWZJMXkyT2tMU2xKRlBVSDBMWkdnWFNw?=
 =?utf-8?B?bUNUYUdJdzg4am9DdVk4WjArRjFNYWpoUEJRSm5ES2g0UGNObVQxRGlzcUJp?=
 =?utf-8?B?RnpWNC8xKzNBa0pyV1lQUlZCY1AxOVFicFZsV0hvZzgxWnU3RFM1WS9NaFVC?=
 =?utf-8?B?SEgrU3NJRmFwazl4TGRTR0Y2YzRmQkZaNXlPWGlwQW1GZkpha1NGMTV5alRr?=
 =?utf-8?B?TFdKTlluaFBjV2dBeUFBRDllVlYwZXQ5ZDNhVTNvbnBwa2t5alovVlJUS3Jk?=
 =?utf-8?B?azdnbFE0SUlQUWQrQ2dzVDRTN3ZQZ1BEOGwyWkdkQlBWWTFMTjU5V0ZIWjVm?=
 =?utf-8?B?bCt4MEZjRmtaOG9NWmcrQ2oraE50cmhGNmxQbURQU2N0UTdmZTBLeCs0d0FC?=
 =?utf-8?B?NzVLajhlbUVwbDNaZU1rUlIxWE9OalJRdi9KZzllTjZ6dTBuRkNTSjlKeWZp?=
 =?utf-8?B?Nlk1L3BQUFBDS0FZOG1RODFEcnhYUGhpajBMNFRxWWZlQ3NhdEsyZmIyY1pp?=
 =?utf-8?B?NklwU09rWllEVnpwSVZ3c2pZdy9XWDlSUTIvQTJKZnNGQ3NpNFV4dytTT2o2?=
 =?utf-8?B?QUU0NUZmOFJnTkFBQXBoZDIySCt3Z09aNlVSY211R05mcy9kcCtQQjY3YWJo?=
 =?utf-8?B?cVZrT2hzaytiWGJBeVVnTXE4ZXBMYVg2eEdYOHBFWFZFNUJWd0s0aC90VkhY?=
 =?utf-8?B?ZlR5SHFXTjlPS1BGSHh2MzlURSt5ZTFHRytsWDMzU0ViQTEzZXFZZElvMVhn?=
 =?utf-8?B?dnNxUEpERXlGeGdTblNGb0RRMWNOTXhxNG5VekxIUUVwZkM4VTc5OVBMSXdH?=
 =?utf-8?B?Mkd2aHRCRXBBU2VXS09ISkhzaVJ0S1dJcDFWRUthYTVmTHorVnlIK3Q2dXNv?=
 =?utf-8?B?OE82TU9sNURlc1dYcTlCc2dVUDVVV1JRb0hldk5sSGt1K3lPYUlsT1lxdUxH?=
 =?utf-8?B?Wms2UGhRQ1hRQ2piblptdEg0ZGVLVWVsMGZnQW54UVpvckNQVm1UN0RaM0lk?=
 =?utf-8?B?RWYvNkx2QmRwWS9SVE8rcWhYbWlPQmptYmpSekRXY2hDaG1tRGNrelVXT2l1?=
 =?utf-8?B?aXlWVEIydjFqdzk4Z3JvQWU0UXQ4NXozTzA3M25vZnVTR2NDZzN4em1lTXd3?=
 =?utf-8?B?L2VYYWJHSnMyOEJTcTEvVWZEaElNTG5BOWdleWQ0OHk2WXlMeGY5cWJOTDhX?=
 =?utf-8?B?WGhWbkRVallkeVhHUWNYKzRCbEtUV0RETTg1YUkwSmZlckM5M1ZwZnkzb2Y5?=
 =?utf-8?B?b0JzYndzWlJtaHVCRzdQTURKQXNVWjRBSnhLazByZExicTlkeWF3QS9MUkJB?=
 =?utf-8?B?RTJJUzU1aXJJcXV2a1l2bnp6ZHhWODhHdVJxOEVsdmtDRlJkdTVVT2dZeU8y?=
 =?utf-8?B?R2FSTFUxTDdYT29VRytiWFZacEU0NTE1QjEvODBSNXZVNTM2N3pJWitkamda?=
 =?utf-8?B?OFd4aXV6Tyt6anZiK0h0MkVMc0xwWFgvTklxejRaSVo0dERqQmF0Sk4zeVha?=
 =?utf-8?B?Zyt3V0NQUHRIUUcrY2RZbUMrTGIxSkZKTG4vQnErU3lQNjdTSGE0UGNVcjdy?=
 =?utf-8?B?UzAwaHd0NnppcmpRTXIrSWxHNy9wV083R2ZlQ0pjeVZuOUZYSUhZUFM2ZGNE?=
 =?utf-8?B?ZkhOQmcrNjFQQktDWEtWTXhzTU51b1pwSHcxa2lWSFdBR2FSR2l2Ui8zWXBo?=
 =?utf-8?B?Mnd3S0NTdzYzcUNlckFzK3dpWlJSdW5vNzF0WUZ5RUZQZkkxZnVsT0lGckFV?=
 =?utf-8?B?RHI4bGhFdFc1Z0QyaWpoUGlBWTRsa2JYV0RTbE5KMHlFZXNNdFNEVDc3cnFP?=
 =?utf-8?B?ZmhOd3U1ejMxaFlGZ0RidGdrQ0RGallTcHhBRjlwckIvUks1eTVMb1NLQ1Rz?=
 =?utf-8?B?QVR1NkJ5TlIzMzd0dTN3eGVDaU5yaVBaUVpmU29DdENIM2NKcHJKNThDY3lC?=
 =?utf-8?B?dHo5TEc5eVZHSGJoLzFHbW5maGVHNVFlMVNhRnZtN0VhVFh3ZTJ1MDF5aytD?=
 =?utf-8?B?QzhBRlhYL1dvUUxNS2VaY3pYSVVXbmNHRitKbG9ZRFRUWGY5d3QwSUZucmZ5?=
 =?utf-8?B?TTBCL0pFbDVleGxLenpkMGNxbGhsNjRub3Mzc2Jub0hjRk5SKzRwWWxqVHF0?=
 =?utf-8?B?NGJOdEZvZEtSZWhUbFMyNi9pdDhVS0g1aFRkZTVITCtLZ2UrZlV5TmhwOE9r?=
 =?utf-8?Q?BVy9tRCp5Du+HPQv4MAJPkE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b426325-bc58-44fd-b6e8-08db6e8844d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 16:39:35.1525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jOanN/0Zs3U+klp+FA17mw7Q0LaYraWc4CzV3usq+FPIkxLEyX6XSw+f9uEqErZS53ovKQRab+9opiVdoOGhSZpTgPm2FD+U6AGr9jTrQ/dM3LyGbDkI03KL2r+qi76L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6020
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686933581; x=1718469581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4X2cAOCAC282WSTig/JBes+XSv4Trkdt9jzbwANR3vQ=;
 b=ZME+9JebUqCVtknz0zK0VLPzFqp5Lex3+vKS8mBOsRcXAhXpnqSsJlLU
 At+aTeltg9lSVqoIUn6+c84LRKByEMLG+z1fv8Mw7p+Fkm4C6kJZoPbHl
 9Do9DqV+Ppc54jlQS/glvK9yxTTXqL+TiL6mHPar1Mj4EFl5hZ8/+U639
 wmlQVOspquBeAQMYMPAKCI6Exh9WZHfYd9zXFQO0fbCZ6VS0ntTXC6viA
 24W43EDxmREwNSShCF9L8FxYcW46q+ZBEfneAXkqOYu+p2r3yC9lIYMFT
 ohUkLgjB0l54uw0niB4TcjScPHjh5EO718wB5dPiXAdNt3UfNGG1uC82W
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZME+9Jeb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] igc: Fix corner cases
 for TSN offload
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Florian Kauer <florian.kauer@linutronix.de>
> Sent: Saturday, 17 June, 2023 12:11 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Gomes, Vinicius <vinicius.gomes@intel.com>;
> David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Tan Tee Min <tee.min.tan@linux.intel.com>;
> Gunasekaran, Aravindhan <aravindhan.gunasekaran@intel.com>; Chilakala,
> Mallikarjuna <mallikarjuna.chilakala@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kurt@linutronix.de
> Subject: Re: [PATCH net-next 0/6] igc: Fix corner cases for TSN offload
> 
> On 16.06.23 17:53, Zulkifli, Muhammad Husaini wrote:
> >> Florian Kauer (6):
> >>   igc: Rename qbv_enable to taprio_offload_enable
> >>   igc: Do not enable taprio offload for invalid arguments
> >>   igc: Handle already enabled taprio offload for basetime 0
> >>   igc: No strict mode in pure launchtime/CBS offload
> >>   igc: Fix launchtime before start of cycle
> >>   igc: Fix inserting of empty frame for launchtime
> >
> > All six patches, as far as I can see here, have the Fixes tag. Should they go to
> Net instead of Net-Next?
> 
> You are correct, these are all fixes and could go to net.
> However, in its current form they will not fully apply to net (e.g. due to the
> commit 2d800bc500fb ("net/sched: taprio: replace tc_taprio_qopt_offload ::
> enable with a "cmd" enum") that has overlapping code changes) and are also
> not tested with net.
> If you prefer to have them in net already I could send a second series.
> For me personally all options (net, net-next or iwl-next) would be fine.

Yeah I would prefer "net" so that it can be available in current development kernel.
"Net-next" will take sometimes to go in....
Looks like only patch no 2 "igc: Do not enable taprio offload for invalid arguments"
will have conflict due to the new "cmd" command introduced by vlamidir. 
But I think should be minor changes.

Thanks

> 
> Thanks,
> Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
