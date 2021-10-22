Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5270B437ACA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Oct 2021 18:17:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4A0A83BD9;
	Fri, 22 Oct 2021 16:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWJEniWJr1fH; Fri, 22 Oct 2021 16:17:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EA7C8375B;
	Fri, 22 Oct 2021 16:17:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AEAD1BF36F
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 769818375B
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Dj581bRBLpw for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 16:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD7A380B21
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:17:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="229200334"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="229200334"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="663236335"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 22 Oct 2021 09:17:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 22 Oct 2021 09:17:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 22 Oct 2021 09:17:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 22 Oct 2021 09:17:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 22 Oct 2021 09:17:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RG5pJ2UszUiOxw1LrFmw75Q3otkBF6BQA7hnalExFxJo/uCSWJzsPubIsoEcgB7LOG3mibgpDn/Xq8u4oiWmu18O5TuHxiD2PsuhEOmuC4KL8x2zHHzTW4pxNIrLST6xz6spM6jE6r+opkHcT6SJaOwPNEUxcVgmrAZs6CDpqOMU9GLmvRhN0/0Y77Oi8VQadt26pc6d9eNfLQHHNUjjfznyI/syN1M5qD2yj03avg23Enf17WkY70gb/+woS/F/8TEZomkn4W4a/pMih8b1rhPIPke2I2QjmOENUyOJMrI9OzN6sLgTQb2vjcPMC4PGALUQIy0AEryN0loWPTlbXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQonvanjvLbw/i4eczOlc5cFMPT4zvmaK3LA3+SBTKc=;
 b=KAC6IEcokWjg7kYTQ2ozXwcQFKRheyzCwmbaddBPyVAHHfSHkfSmApsU+dES1xk3dwQVvNeaq46zhsRJ8uykpR8yDrWCIL990neYY4hIzNFKvefiU3+PkG4XQnUdZ3tS24NLz+yR9KHFR0ptu/Jh5BqDeFnln5cxdSZaD712acWvLuDXo+jun/1KvSW9HYTIAdMAIHzRXCZRdo3KtgMPUYXItAVl9aYyS3UauddwSC+f9E2+JKXGrkFRJDj1gTwwjLII1j5Aib6M7G6pT+ejbMa+KQYIrwAwYHSjh9NLpWjnO6g6LL7jImlfC9lT5PZNR0trCkfr3WWcgyWa4lYKqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQonvanjvLbw/i4eczOlc5cFMPT4zvmaK3LA3+SBTKc=;
 b=UaO9Ge0cx9OTbUvLWu8bvFTS3RmijCsJuFGkZo/4yeFR8i8TGwpdePRPt8UaVHTgqNDfLV2OXrxiJ5ZpjIspdBfOFzpJSd8rxm7FT7HLEREuszr9qHoa2VnAdUY/zodP02ZoIAzP9tOeqxaOg7yDBMt63xOd4hHVSx68ovJMtEQ=
Received: from CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14)
 by CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Fri, 22 Oct
 2021 16:17:12 +0000
Received: from CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::91a8:b3e8:ac65:cc3d]) by CO6PR11MB5652.namprd11.prod.outlook.com
 ([fe80::91a8:b3e8:ac65:cc3d%9]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 16:17:12 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "stephend@silicom-usa.com" <stephend@silicom-usa.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Robert Schlabbach <robert_s@gmx.net>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
Thread-Index: AQHXxyAs0pTSw0RTHkqlFzoM9Q2gDavexB6AgABeegCAAA+VQA==
Date: Fri, 22 Oct 2021 16:17:12 +0000
Message-ID: <CO6PR11MB565221266249EE198AAE928DEF809@CO6PR11MB5652.namprd11.prod.outlook.com>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <46f43c5a-d0a8-e743-e246-7f2c5a27e6cc@silicom-usa.com>
In-Reply-To: <46f43c5a-d0a8-e743-e246-7f2c5a27e6cc@silicom-usa.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: silicom-usa.com; dkim=none (message not signed)
 header.d=none;silicom-usa.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1c694e8-c6dd-4cea-7aa0-08d995776814
x-ms-traffictypediagnostic: CO6PR11MB5601:
x-microsoft-antispam-prvs: <CO6PR11MB5601CDE115473B26B0B0BA19EF809@CO6PR11MB5601.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rzBSyDA8rKDAHOB11dYiynOR5Uwj/t4CI8XIVbekAvGALPuJTiDiX5j+gNXG0OInoW1mBWXyOzcVvWdAPfbEIoQZP3q1Tx570b3V9T1SIFSnji4pN8CJ5k/B5GzNmRkSQQcpcrZeZzBhSvRKRxjyl9jzHiepi6r6ohrsSxHFO/1x0yJ9lGy/JYiF10PRXxUVEiZ2uobpA0ajgBSy+1UqxLZp88VK0SBbUxUYX5/gcGrvc4cmfDnAWFpHxMSnoDmCHArP2BHB0a9kYqsD2dxTo23K9tjzubPjLjF4VkDDMQglVUU04rTzyXfVK2IamwVLYhumwJlyJgP37dfgJ34sdVFbuliiZYsAHN8Owtjgyw/n9cTbrX7TBaIlkG9oqdktJSS5Aje6CSTbvhEJjBih0RdS/zHWb/GnUwidPSabm/QavIPi6TXNawNQGfMxPHEf7i2ivAm/yyge4Fb47qF36wwk7gLNuXNpv3JvaICKcD3ZdoUimxTcazOWIppyeDISg8sY+bY1CoXdhKoGyZ1740J5WTnvf95leArIiALmS4ICwqSXTgXGUO730VtOReZ5czEzZt7Y2qoLvMgCNoXILEe+7mXWMFVrn2kszSsiNDjFoiSBX4dKHdiKq37sS7FNxKcQClrq8+gpTaDWVjUrHU1WwpTTtvTPlP+taZ80XcLmWUgxcLaXaSNwyBURwbQH+UtWOi8pxZekK3COHodO7B/pOdA15MN/MsiISTp0v++aYcU/jz9ZUPg/pYLm2FfFSsglSKjGtk4P0csLBFiEHx1+6ar9gCCX/kLOU/197TU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5652.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(53546011)(6506007)(508600001)(2906002)(8676002)(8936002)(122000001)(66476007)(82960400001)(71200400001)(5660300002)(966005)(9686003)(7696005)(38100700002)(52536014)(66556008)(186003)(66446008)(66946007)(64756008)(55016002)(110136005)(26005)(86362001)(316002)(83380400001)(33656002)(76116006)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2JUMEFrVkU3NFkvMjJFdVNSUXJvMjdTUm9lWFZXbm55Q1JrdVdOallubmRY?=
 =?utf-8?B?d1hzOWUwWmdHbVgvbzNIeTZxbTBMSHJoQmRLeU1LYzRLaXA4T2svdU0yaURS?=
 =?utf-8?B?QU9zcG5ocVRwelo0N1FhL2M5dUVIYkZDVGlaaFFWNjlZY1NSVkdEdHkySUNY?=
 =?utf-8?B?emw0b0R6aGgycHRaNUlEOTVEekJuMjdURUlXdWZ3dEMvVmJHM0t5WVQ1L3FP?=
 =?utf-8?B?dUQyQi9PNU5hc0xOOFp4WHR1MGhRcjFVY1RRaEoySlRFYzdnZTZGY3RGbmdM?=
 =?utf-8?B?eE04THNTNFNPOGFBdHovd0xxc0NkSlVTOFQxSzZzUlBGMkFyclhRQnMrOHpz?=
 =?utf-8?B?aTlwNDJLck9RS1MwczlhNzJXSjl5WENQeEtMazVwSndjZWhLaFRkOWoxN0lU?=
 =?utf-8?B?QjJoQzIxQnVBVUdweHk4cUdCbFdTREJORG5XN3hOcGNuWFZDbkV3RDM2Vmlx?=
 =?utf-8?B?QWxKcDhTeW00NC9lL3dvUDBXdUcvemFuL2l3R0dUZ08vbmh2cGdqMzVsektn?=
 =?utf-8?B?dDFSdUM5WXB1VGNxTjBxRUdka0k2MGpxbUpVbTNHWWhBTkV5THlneEtUS0Rl?=
 =?utf-8?B?cXJ3eG91NjdUSUREUmxCbEtrMzljY2FNS0JzOFlHWXVxd2xXL0NmcGxyS1hk?=
 =?utf-8?B?bEduZ1BKMmVKWEZrS1YzMWhkS0plUHIvVU9YaGtaUHFUSGd5dzk3NmgxRWZW?=
 =?utf-8?B?Vy9TcmgzekNTelBLTGZ5V0pCK3RUZ1dINys4Rm45dnVmNkRFSDNZcXNmMklh?=
 =?utf-8?B?YzlONzVjanNyTnIzenFxYUZzRnNuMlFFT1B0aGZvSEoxRXdVbkFtYTFxeWF1?=
 =?utf-8?B?NzJGbHRMZHpXQlgzRXZWS2UxZ3J3NmowMzd3RHE0WCtoNVR6bitOeTliWEhn?=
 =?utf-8?B?aDVMMGNRRUJpZDBQZUEzL21IT0xqdVZ1R3FhQmRMZ0l4THppazhUVlVreU5Y?=
 =?utf-8?B?NDVXMW9DWHhuQ2dFMnNScjZ6ZFMzOUROVWppbHo3R1I3dHNHd1lYSjVaYnhL?=
 =?utf-8?B?aEJYMUwxQ3haSnhzMVgvMGZKTkM0YnYwa3hBNVNYVWhTVmFnMVFmdVNjZUQw?=
 =?utf-8?B?M1ROK1ErUjdlRThiVGFSRXhMUzVpdHhRbjlWRnlMRjhvWnVpb2I2aldtMm9U?=
 =?utf-8?B?SkJWRzNtcnJNVmFadnkzeUE2VW5Uc3lZcU1vMTJzWEVub05wSWpDUjZXakJ2?=
 =?utf-8?B?bGdHanlWQkNUc1RrblNybmFuNWpKdlMyZyt1VjExdXoyazhadCtmbEF3cERz?=
 =?utf-8?B?d1ZCbE5DVUkwY1FIWDhFZkxTTDcyREpQeE9PWSt0MCs1L3cxSUFZRlBBbzEy?=
 =?utf-8?B?cXkybEVIcko5Tkx5Z0ExWTBpTm9DUGZ4TUZQSGlRT3NzSlRYVXVvT2xSTys2?=
 =?utf-8?B?cGJaTXZrQ3IrV1NST2FIQmtTaVdlZUVsaWtPMks1MUV1QzZHdEFWWC9UczBV?=
 =?utf-8?B?RFRka1l3OWVkYWVnOU5waHRkR0dnRmhYVnpNTHdTTHllTzJFVk1kN3NJbHRk?=
 =?utf-8?B?WXBFbFowOFl4ZmNydW9NR2dNQi9zOGlQV2ZIdlZjMFgvRlpWRFZQMjhRZDJq?=
 =?utf-8?B?SUo0UVVKaWY1OWRqNkZPbUd2RE14cXZNYUd3bHVrazFYYzNNNVVtTEhHcTJm?=
 =?utf-8?B?WWZrMmhXdldpN2RiT3ZMVDFkQ2p3c0Z4RXI2S05qV2ZkdUdPM0ZoUUlObTBG?=
 =?utf-8?B?WUlCM0ZwbmNZT09MSzhqZTNTQmdvaDJQU3N2bUxrK1cxdVdQQm5tcFZYZzYw?=
 =?utf-8?B?a285MTNnd2FkSGF3QkxiMzJZZU5wcEVSUFRCbStwRGpqS3MzeUZ0R21RajYr?=
 =?utf-8?B?amN5aExqSlhHL0IvMjNhZGZSMjJXUmpYZ1JhZmpkWTlFdDF3K0o1Rm1rZ1dw?=
 =?utf-8?B?R3RveEF1Rk9LOTVMcEFkVENYSGRlT05QNUJ3aEpEN2o1SHBIL1I4bnYwS2c2?=
 =?utf-8?Q?7rUThgE3KgI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5652.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1c694e8-c6dd-4cea-7aa0-08d995776814
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 16:17:12.7792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: todd.fujinaka@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBpcyBhIHNlcGFyYXRlIGlzc3VlIHRoYXQgc2hvdWxkIGJlIGZpbGVkIHRocm91Z2ggb2Zm
aWNpYWwgY2hhbm5lbHMuIEknbGwgY29udGFjdCBTdGVwaGVuIGRpcmVjdGx5Lg0KDQpUb2RkIEZ1
amluYWthDQpTb2Z0d2FyZSBBcHBsaWNhdGlvbiBFbmdpbmVlcg0KRXRoZXJuZXQgUHJvZHVjdHMg
R3JvdXANCkludGVsIENvcnBvcmF0aW9uDQp0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KDQotLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJl
ZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgU3RlcGhlbiBEb3V0aGl0DQpT
ZW50OiBGcmlkYXksIE9jdG9iZXIgMjIsIDIwMjEgODoyMSBBTQ0KVG86IFBhdWwgTWVuemVsIDxw
bWVuemVsQG1vbGdlbi5tcGcuZGU+OyBSb2JlcnQgU2NobGFiYmFjaCA8cm9iZXJ0X3NAZ214Lm5l
dD4NCkNjOiBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCB2Ml0gaXhnYmU6IEFsbG93IGRpc2FibGluZyBOQkFTRS1UIHN1cHBy
ZXNzaW9uIGhhY2sNCg0KT24gMTAvMjIvMjEgNTo0MiBBTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+
IENhdXRpb246IFRoaXMgaXMgYW4gZXh0ZXJuYWwgZW1haWwuIFBsZWFzZSB0YWtlIGNhcmUgd2hl
biBjbGlja2luZyBsaW5rcyBvciBvcGVuaW5nIGF0dGFjaG1lbnRzLg0KPiANCj4gDQo+IERlYXIg
Um9iZXJ0LA0KPiANCj4gDQo+IEFtIDIyLjEwLjIxIHVtIDEwOjM3IHNjaHJpZWIgUm9iZXJ0IFNj
aGxhYmJhY2g6DQo+PiBDb21taXQgYTI5NmQ2NjVlYWUxICgiaXhnYmU6IEFkZCBldGh0b29sIHN1
cHBvcnQgdG8gZW5hYmxlIDIuNSBhbmQgDQo+PiA1LjAgR2JwcyBzdXBwb3J0IikgaW50cm9kdWNl
ZCBhIGhhY2sgd2hpY2ggc3VwcHJlc3NlcyB0aGUgDQo+PiBhZHZlcnRpc2VtZW50IG9mIE5CQVNF
LVQgc3BlZWRzIGJ5IGRlZmF1bHQsIGFjY29yZGluZyB0byBUb2RkIA0KPj4gRnVqaW5ha2EgdG8g
YWNjb21tb2RhdGUgY3VzdG9tZXJzIHdpdGggbmV0d29yayBzd2l0Y2hlcyB3aGljaCBjb3VsZCAN
Cj4+IG5vdCBjb3BlIHdpdGggYWR2ZXJ0aXNlZCBOQkFTRS1UIHNwZWVkcy4gSG93ZXZlciwgdGhp
cyBoYWNrIHdhcyBub3QgDQo+PiBkb2N1bWVudGVkIGF0IGFsbCwgbm9yIHdhcyB0aGUgd2F5IHRv
IHdvcmsgYXJvdW5kIGl0LiBBbHNvLCB0aGlzIHdhcyANCj4+IGEgcmF0aGVyIHVuZnJpZW5kbHkg
c29sdXRpb24gZm9yIGN1c3RvbWVycyB3aXRoIE5CQVNFLVQgc3dpdGNoZXMuDQo+IA0KPiBJbiBt
eSBvcGluaW9uIHlvdSBzaG91bGQgY2FsbCBpdCBvdXQgYXMgYSAqcmVncmVzc2lvbiosIHdoaWNo
IGlzIA0KPiBhZ2FpbnN0IExpbnV44oCZIG5vIHJlZ3Jlc3Npb24gcG9saWN5LiAoSSBzdGlsbCB0
aGluaywgdGhlIGRlZmF1bHQgbmVlZHMgDQo+IHRvIGJlDQo+IGNoYW5nZWQuKQ0KPiANCj4+IEFk
ZCBhIG1vZHVsZSBwYXJhbWV0ZXIgImRpc2FibGVfbmJhc2VfdF9zdXBwcmVzc2lvbl9oYWNrIiB0
byBhbGxvdyANCj4+IGRpc2FibGluZyB0aGUgaGFjayBhdCBib290IHRpbWUsIGZvciB0aGUgYmVu
ZWZpdCBvZiBjdXN0b21lcnMgd2l0aCANCj4+IE5CQVNFLVQgc3dpdGNoZXMuDQo+Pg0KPj4gUHJv
cGVybHkgZG9jdW1lbnQgdGhlIGhhY2sgYW5kIGhvdyB0byB3b3JrIGFyb3VuZCBvciBkaXNhYmxl
IGl0Lg0KDQpUaGVyZSdzIHlldCBtb3JlIGZhbGxvdXQgZm9yIGNvbW1pdCBhMjk2ZDY2NWVhZTEu
ICBJdCBzZWVtcyB0byB0b3RhbGx5IGJyZWFrIGxpbmsgd2l0aCB0aGUgMHgxNWMyLzB4MTVjMyBk
ZXZpY2VzLiAgT25lIG9mIHRoZSBvcGVyYXRpbmcgbW9kZXMgZm9yIHRob3NlIGRldmljZSB0eXBl
cyBpcyBhIGZpeGVkIDI1MDBCQVNFLVggYmFja3BsYW5lIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBD
MzAwMCBsaW5lIG9mIFNvQ3MuDQoNCkV2ZW4gYmV0dGVyIHRoZXkgY2FuJ3QgYmUgZW5hYmxlZCBs
YXRlciB2aWEgZXRodG9vbCBwZXIgdGhlIHN1Z2dlc3RlZCB3b3JrYXJvdW5kLiAgQUZBSUNUIHdo
YXQgaGFwcGVucyBmb3IgdGhvc2UgdHdvIGRldmljZXMgaXM6DQoNCjEpIGl4Z2JlX25vbl9zZnBf
bGlua19jb25maWcoKSBjbG9iYmVycyBJWEdCRV9MSU5LX1NQRUVEXzJfNUdCX0ZVTEwNCg0KMikg
aXhnYmVfc2V0dXBfa3JfeDU1MGVtKCkgdXNlZCB0byBzaG9ydC1jaXJjdWl0IHZpYSB0aGUgY2hl
Y2s6DQoJLyogbGVhdmUgbGluayBhbG9uZSBmb3IgMi41RyAqLw0KCWlmIChody0+cGh5LmF1dG9u
ZWdfYWR2ZXJ0aXNlZCAmIElYR0JFX0xJTktfU1BFRURfMl81R0JfRlVMTCkNCgkJcmV0dXJuIDA7
DQoNCjMpIGl4Z2JlX3NldHVwX2tyX3NwZWVkX3g1NTBlbSgpIGdldHMgY2FsbGVkLCBhbmQgc2lu
Y2Ugc3BlZWQgaXMgYm9ndXMgbm93IGl0IGNsb2JiZXJzIElYR0JFX0tSTV9MSU5LX0NUUkxfMQ0K
DQo0KSBCZXR0ZXIgeWV0LCB0aGUgY2xvYmJlciBvbiBJWEdCRV9LUk1fTElOS19DVFJMXzEgc3Vy
dml2ZXMgYSByZXNldCwgc28geW91IGhhdmUgdG8gZG8gYSBmdWxsIHBvd2VyIGN5Y2xlIG9mIHRo
ZSB1bml0IGFuZCBib290IHRvIGtlcm5lbCB3aXRoIGEgbm9uLWJyb2tlbiBpeGdiZSB0byBnZXQg
bGluayBiYWNrLg0KDQpPbmUgYWRkaXRpb25hbCBzdWdnZXN0aW9uIGJlbG93Lg0KDQo+PiBSZXBv
cnRlZC1ieTogUm9iZXJ0IFNjaGxhYmJhY2ggPHJvYmVydF9zQGdteC5uZXQ+DQo+PiBTaWduZWQt
b2ZmLWJ5OiBSb2JlcnQgU2NobGFiYmFjaCA8cm9iZXJ0X3NAZ214Lm5ldD4NCj4gDQo+IEkgZmFp
bnRseSByZW1lbWJlciB0aGUgZGlzY3Vzc2lvbiwgYnV0IGRpZG7igJl0IGZpbmQgaXQuIENhbiB5
b3UgcGxlYXNlIA0KPiBhZGQgYW4gVVJMPw0KPiANCj4gQWxzbyBhIEZpeGVzIHRhZyBtaWdodCBi
ZSB1c2VmdWwuDQo+IA0KPj4gLS0tDQo+PiDCoCAuLi4vZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQv
aW50ZWwvaXhnYmUucnN0wqDCoCB8IDMwIA0KPj4gKysrKysrKysrKysrKysrKysrKw0KPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgMTUgKysrKysr
KystLQ0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgDQo+PiBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9k
ZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9peGdiZS5yc3QgDQo+PiBiL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9peGdiZS5yc3QNCj4+
IGluZGV4IGYxZDUyMzNlNWU1MS4uNDY1MDJjN2RjYmE2IDEwMDY0NA0KPj4gLS0tIA0KPj4gYS9E
b2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaXhn
YmUucnN0DQo+PiArKysgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUucnMNCj4+ICsrKyB0DQo+PiBAQCAtMjczLDYgKzI3MywxNiBA
QCBkZWJ1Zw0KPj4gwqAgVGhpcyBwYXJhbWV0ZXIgYWRqdXN0cyB0aGUgbGV2ZWwgb2YgZGVidWcg
bWVzc2FnZXMgZGlzcGxheWVkIGluIHRoZSANCj4+IHN5c3RlbQ0KPj4gwqAgbG9ncy4NCj4+DQo+
PiArZGlzYWJsZV9uYmFzZV90X3N1cHByZXNzaW9uX2hhY2sNCj4+ICstLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPj4gKzpWYWxpZCBSYW5nZTogMCwxDQo+PiArOkRlZmF1bHQgVmFs
dWU6IDAgKGhhY2sgZW5hYmxlZCkNCj4+ICsNCj4+ICtUaGlzIHBhcmFtZXRlciBkaXNhYmxlcyB0
aGUgaGFjayB3aGljaCBzdXBwcmVzc2VzIHRoZSBhZHZlcnRpc2VtZW50IA0KPj4gK29mIE5CQVNF
LVQgc3BlZWRzIHRvIGFjY29tbW9kYXRlIGJyb2tlbiBuZXR3b3JrIHN3aXRjaGVzIHdoaWNoIA0K
Pj4gK2Nhbm5vdCBjb3BlIHdpdGggYWR2ZXJ0aXNlZCBOQkFTRS1UIHNwZWVkcy4gSXQgaXMgcmVj
b21tZW5kZWQgdG8gc2V0IA0KPj4gK3RoaXMgcGFyYW1ldGVyIHRvIDEgaW4gYWxsIG5ldHdvcmsg
ZW52aXJvbm1lbnRzIHdpdGggcHJvcGVybHkgZnVuY3Rpb25pbmcgbmV0d29yayBzd2l0Y2hlcy4N
Cj4+ICsNCj4gDQo+IERvIHlvdSBrbm93IG9uZSBzdWNoIGJyb2tlbiBtb2RlbD8NCj4gDQo+PiDC
oCBBZGRpdGlvbmFsIEZlYXR1cmVzIGFuZCBDb25maWd1cmF0aW9ucw0KPj4gwqAgPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+IEBAIC01MTUsNiArNTI1LDI2IEBAIFRo
ZSBvZmZsb2FkIGlzIGFsc28gc3VwcG9ydGVkIGZvciBpeGdiZSdzIFZGcywgDQo+PiBidXQgdGhl
IFZGIG11c3QgYmUgc2V0IGFzDQo+PiDCoMKgwqAgZXRodG9vbCAtLXNldC1wcml2LWZsYWdzIGV0
aDx4PiB2Zi1pcHNlYyBvbg0KPj4gwqDCoMKgIGlwIGxpbmsgc2V0IGV0aDx4PiB2ZiA8eT4gdHJ1
c3Qgb24NCj4+DQo+PiArTkJBU0UtVCBTdXBwb3J0DQo+PiArLS0tLS0tLS0tLS0tLS0tDQo+PiAr
VGhlIGl4Z2JlIGRyaXZlciBzdXBwb3J0cyBOQkFTRS1UIG9uIHNvbWUgZGV2aWNlcy4gSG93ZXZl
ciwgdGhlIA0KPj4gK2FkdmVydGlzZW1lbnQgb2YgTkJBU0UtVCBzcGVlZHMgaXMgc3VwcHJlc3Nl
ZCBieSBkZWZhdWx0LCB0byANCj4+ICthY2NvbW1vZGF0ZSBicm9rZW4gbmV0d29yayBzd2l0Y2hl
cyB3aGljaCBjYW5ub3QgY29wZSB3aXRoIA0KPj4gK2FkdmVydGlzZWQgTkJBU0UtVCBzcGVlZHMu
IFRoZXJlIGFyZSB0d28gd2F5cyB0byBlbmFibGUgYWR2ZXJ0aXNpbmcgTkJBU0UtVCBzcGVlZHMg
b24gZGV2aWNlcyB3aGljaCBzdXBwb3J0IGl0Og0KPj4gKw0KPj4gKzEuIEF0IHJ1bnRpbWUgdXNp
bmcgdGhlIGV0aHRvb2wgY29tbWFuZCAocmVxdWlyZWQgYWZ0ZXIgZWFjaCBib290KTo6DQo+PiAr
DQo+PiArwqAgZXRodG9vbCAtcyBldGg/IGFkdmVydGlzZSAweDE4MDAwMDAwMDEwMjgNCj4+ICsN
Cj4+ICsyLiBBdCBib290IHRpbWUgdXNpbmcgdGhlIG1vZHVsZSBwYXJhbWV0ZXIgZGlzYWJsZV9u
YmFzZV90X3N1cHByZXNzaW9uX2hhY2s6Og0KPj4gKw0KPj4gK8KgIENyZWF0ZSBhIGZpbGUgL2V0
Yy9tb2Rwcm9iZS5kL2l4Z2JlLmNvbmYgd2l0aCB0aGUgbGluZTo6DQo+PiArDQo+PiArwqAgb3B0
aW9ucyBpeGdiZSBkaXNhYmxlX25iYXNlX3Rfc3VwcHJlc3Npb25faGFjaz0xDQo+PiArDQo+PiAr
wqAgTm90ZSB0aGF0IHlvdSBtYXkgaGF2ZSB0byByZWJ1aWxkIHRoZSBpbml0aWFsIHJhbWRpc2sg
aW1hZ2UgZm9yIA0KPj4gK3RoaXMgY2hhbmdlDQo+PiArwqAgdG8gdGFrZSBlZmZlY3QuIE9uIERl
YmlhbiBvciBVYnVudHUsIHRoaXMgaXMgZG9uZSB2aWEgInVwZGF0ZS1pbml0cmFtZnMgLXUiLg0K
PiANCj4gWW91IG1pZ2h0IHdhbnQgdG8gbWFyayBpdCB1cCBgYHVwZGF0ZS1pbml0cmFtZnMgLXVg
YC4NCj4gDQo+PiArDQo+Pg0KPj4gwqAgS25vd24gSXNzdWVzL1Ryb3VibGVzaG9vdGluZw0KPj4g
wqAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyANCj4+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jDQo+PiBpbmRleCAxM2M0NzgyYjkyMGEu
LmY3NTk0Mzg3OWZlNyAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfbWFpbi5jDQo+PiBAQCAtMTU2LDYgKzE1NiwxMSBAQCBtb2R1bGVfcGFyYW0o
YWxsb3dfdW5zdXBwb3J0ZWRfc2ZwLCB1aW50LCAwKTsNCj4+IMKgIE1PRFVMRV9QQVJNX0RFU0Mo
YWxsb3dfdW5zdXBwb3J0ZWRfc2ZwLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
QWxsb3cgdW5zdXBwb3J0ZWQgYW5kIHVudGVzdGVkIFNGUCsgbW9kdWxlcyBvbiANCj4+IDgyNTk5
LWJhc2VkIGFkYXB0ZXJzIik7DQo+Pg0KPj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgZGlzYWJsZV9u
YmFzZV90X3N1cHByZXNzaW9uX2hhY2s7IA0KPj4gK21vZHVsZV9wYXJhbShkaXNhYmxlX25iYXNl
X3Rfc3VwcHJlc3Npb25faGFjaywgdWludCwgMCk7IA0KPj4gK01PRFVMRV9QQVJNX0RFU0MoZGlz
YWJsZV9uYmFzZV90X3N1cHByZXNzaW9uX2hhY2ssDQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgIkRpc2FibGUgaGFjayB3aGljaCBzdXBwcmVzc2VzIHRoZSBhZHZlcnRpc2VtZW50IG9m
IA0KPj4gK05CQVNFLVQgc3BlZWRzIHRvIGFjY29tbW9kYXRlIGJyb2tlbiBuZXR3b3JrIHN3aXRj
aGVzIik7DQo+PiArDQo+PiDCoCAjZGVmaW5lIERFRkFVTFRfTVNHX0VOQUJMRSANCj4+IChORVRJ
Rl9NU0dfRFJWfE5FVElGX01TR19QUk9CRXxORVRJRl9NU0dfTElOSykNCj4+IMKgIHN0YXRpYyBp
bnQgZGVidWcgPSAtMTsNCj4+IMKgIG1vZHVsZV9wYXJhbShkZWJ1ZywgaW50LCAwKTsNCj4+IEBA
IC01NTI2LDggKzU1MzEsMTQgQEAgc3RhdGljIGludCBpeGdiZV9ub25fc2ZwX2xpbmtfY29uZmln
KHN0cnVjdCANCj4+IGl4Z2JlX2h3ICpodykNCj4+IMKgwqDCoMKgwqAgaWYgKCFzcGVlZCAmJiBo
dy0+bWFjLm9wcy5nZXRfbGlua19jYXBhYmlsaXRpZXMpIHsNCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IGh3LT5tYWMub3BzLmdldF9saW5rX2NhcGFiaWxpdGllcyhodywgJnNw
ZWVkLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAmYXV0b25lZyk7DQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwZWVkICY9IH4oSVhH
QkVfTElOS19TUEVFRF81R0JfRlVMTCB8DQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBJWEdCRV9MSU5LX1NQRUVEXzJfNUdCX0ZVTEwpOw0KPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWRpc2FibGVfbmJhc2VfdF9zdXBwcmVzc2lvbl9o
YWNrKSB7DQoNCkknZCBhZ3JlZSB3aXRoIFBhdWwgdGhhdCBoYXZpbmcgdGhlIGRlZmF1bHQgYmVo
YXZpb3IgYmFzaWNhbGx5IHJldmVydA0KYTI5NmQ2NjVlYWUxIHNlZW1zIGNsZWFuZXIuDQoNCklm
IHdlJ3JlIHJlYWxseSBzdHVjayB3aXRoIGEyOTZkNjY1ZWFlMSB0aG91Z2gsIGNhbiB3ZSBhbHNv
IGNhbGwNCmdldF9tZWRpYV90eXBlKCkgYW5kIGNoZWNrIHRoYXQgd2UncmUgYSBjb3BwZXIgbWVk
aWEgdHlwZSAoYW5kIG5vdCBmaWJlciBvciBiYWNrcGxhbmUpPyAgSSB0aGluayB0aGF0J2xsIHJl
ZHVjZSB0aGUgbnVtYmVyIG9mIHBsYXRmb3JtcyB0aGF0IG5lZWQgdG8gc2V0IHRoaXMgbmV3IG1v
ZHVsZSBwYXJhbWV0ZXIgdG8gZ2V0IHdvcmtpbmcgYWdhaW4uDQoNClNvbWV0aGluZyBsaWtlOg0K
DQorICAgICAgICAgICAgIGlmIChody0+bWFjLm9wcy5nZXRfbWVkaWFfdHlwZShodykgPT0gaXhn
YmVfbWVkaWFfdHlwZV9jb3BwZXIgJiYNCisgICAgICAgICAgICAgICAgICFkaXNhYmxlX25iYXNl
X3Rfc3VwcHJlc3Npb25faGFjaykgew0KDQpUaGFua3MsDQpTdGV2ZQ0KDQo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiByZW1vdmUgTkJBU0UtVCBzcGVlZHMg
ZnJvbSBkZWZhdWx0IA0KPj4gK2F1dG9uZWdvdGlhdGlvbg0KPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHRvIGFjY29tbW9kYXRlIGJyb2tlbiBuZXR3b3Jr
IHN3aXRjaGVzIGluIA0KPj4gK3RoZSBmaWVsZA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIHdoaWNoIGNhbm5vdCBjb3BlIHdpdGggYWR2ZXJ0aXNlZCBO
QkFTRS1UIA0KPj4gK3NwZWVkcw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqLw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3BlZWQgJj0gfihJWEdCRV9MSU5LX1NQRUVEXzVHQl9GVUxMIHwNCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJWEdC
RV9MSU5LX1NQRUVEXzJfNUdCX0ZVTEwpOw0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
DQo+PiDCoMKgwqDCoMKgIH0NCj4+DQo+PiDCoMKgwqDCoMKgIGlmIChyZXQpDQo+PiAtLQ0KPj4g
Mi4xNy4xDQo+IA0KPiBBY2tlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZT4NCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QNCj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0DQpJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
