Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED16E43AE85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 11:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36A6440476;
	Tue, 26 Oct 2021 09:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5R6q-ioDTEgi; Tue, 26 Oct 2021 09:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED8ED4047A;
	Tue, 26 Oct 2021 09:06:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 015D61BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 09:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E363180F74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 09:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQxA5tM93VxH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 09:06:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B7A080F42
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 09:06:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="316064332"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="316064332"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 02:06:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="486092610"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 26 Oct 2021 02:06:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 02:06:14 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 02:06:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 02:06:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 02:06:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtGkN4ks0CXq8qY2/W8ce7Pnwp99+8ooyE9pntHOr9R4Qv04cPxzsO9gIPgcX3eUr4jypCcht0E+twtVZ5uvOjW/9SCs6KC1qlCl4iyDw6EQzCL//FgxKQDVvGmlhmAmeGAVJK+NGdVQMas24sjDB/JBTjlkznCYn7eApjpgiqfTNeYPYw95re+m30GMV7EgCOqrme17dUIVFR0CXOAG9L9Kuq8jSncbkPxM++iBl9ryohWrMRXQi6hHAIOuoBOmuGrBlhQSaax5nObwlkf4BrX5DJktrlAe5bAX1cRb7lIlbC3FjWAreeQN7PwG1KPFYg7u2c1I7p6SNdfJ1ukHxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GAkKfREWEETjjIcnkRRrJ55fQo6kd1sQgxu21uGmV/c=;
 b=cHJkO1l5dvQsauEg9Y01MQC/ZUxgB4FYbSptCgNVao0NXt6znP7Ou894AtwjLwGc2JVADIZQWCAN3ifQUJns7bB0PLVDKwc4QhtVVxs7f5YLOecYfDRPqot226VwdY/u1qLs58rToBv6pehXW6WPpMCp9Ev3SQ4ypgLPxQQVOrqyGdTN7QV25jm91TVWYdDtR1DVMMxNafEDG2cu6+Y/pvrwlIGzJ5UEjXDrLK8x3lZVjHzj0FSdubXN7B65jbu8f5zEPGI26amjARhgbOKUy15IGM5Us4fAhWKfSQq3m9ELMXMuJmQSA2ZLZcskmGGh/k6o/trh9dK6GXXeIGOr/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GAkKfREWEETjjIcnkRRrJ55fQo6kd1sQgxu21uGmV/c=;
 b=JVmqLUHPfi20iFXt+07NVeULcUnwh9CLz/CKy4XBJ6WonR9nAwWLQRC2rAxKOFshw4pPlKqh1LhED4cpGs/CQ4MN4U2amZ1WnwP/XztHbvLU3kF4R2DLzrVnVJU66n3hVZ3g8/r4cMcbq8FaF1/mfUBQDa6r0VR1GSKndlhts8w=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB2825.namprd11.prod.outlook.com (2603:10b6:5:c5::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.18; Tue, 26 Oct 2021 09:06:12 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596%4]) with mapi id 15.20.4628.022; Tue, 26 Oct 2021
 09:06:12 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global
 reset
Thread-Index: AQHXn+XWKwbYVmlNl0iEt+f7VuJYoqve18KAgAZ5AlA=
Date: Tue, 26 Oct 2021 09:06:12 +0000
Message-ID: <DM6PR11MB27316E837C7598ADA38816BAF0849@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
 <4e29d380-54eb-a39c-9402-4d6aaebcea48@molgen.mpg.de>
In-Reply-To: <4e29d380-54eb-a39c-9402-4d6aaebcea48@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 691be3db-828c-4818-308d-08d9985fdbb4
x-ms-traffictypediagnostic: DM6PR11MB2825:
x-microsoft-antispam-prvs: <DM6PR11MB282562C5FB8A75E50A988676F0849@DM6PR11MB2825.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fl0xIlgp4vuEJhelEbfMBcDrnjwWAAYwdzBtvxMtiJxVEyjEUdAL59lQB9p3T3Ic+jdY/HO7/uejDJbbxavhrp9Q02BxA1ofetjxlAlptcUkoPGRrQY7lEtzg923BBcdsEOP2WUZg0jhZ/NiB2TSuTiwssbHETHL+Pb8oH9SC/M69O//GPSkyo5i/LKxEkpQi7B0sAjWvoRsCCDfYz46RCjnBtvsBYmk+myaQnUzEBBBHZy4VTlOEfdr99atPKJrCDl97cfRl/OzfCtvYgQ+IQk8tV7wG9Rj3iLuAmF5wGvDNifvuirxZcPCKlSmW+9LNM9r6DTOnHDQnX9tx3Jsjbb6/y5GzRbkhRGGALdkWGkcjUby/XXenlYzhzgfwiyn7HzDOimR1Uqq+NZWI4Qa/Xhxo0fOXwIwVXvONsXa9mgrWUPijqrcVabgGDqlxWe2pY/Npkq77rBrS9N2TEj4PzK/ljawmHGk/4tE7iymwxWqn+Bv/ClHldhm1HMPoXHrH/NK+s79k1BCMOLc93lI7nYHAldz9+rmPoBZNNvcMtKI+q5ijLd1rsXaafe+EqHnbhaDBZ0f+JDBxk0sLgnGURziKoZwNNsIMW8Wl7IhYiPjZDelXtAtNrWFieDPD7Pvjg2QZvhgQpa7G3QRfQjCs1OkKGS5GLBAmvqunGZivK/g8Gl75wLTahMRIl8NWEzZ3SSP4Cile3w8cs09wJjj2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(64756008)(66556008)(107886003)(2906002)(5660300002)(66446008)(66476007)(186003)(26005)(55016002)(508600001)(8676002)(83380400001)(86362001)(6506007)(38070700005)(54906003)(52536014)(9686003)(33656002)(66946007)(8936002)(7696005)(71200400001)(316002)(76116006)(6916009)(82960400001)(122000001)(38100700002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk1jYTlEMFkvMmV6RFA4N3Z0QlRJeE5sL20xNE51dWk4eHcxRzFMOUVtTHFB?=
 =?utf-8?B?dDFTVEN1YXI0eHV1L3pBZ0dMV1JRV2h6SjFtUUtJL3k0MmkxUzRlRmNCMklM?=
 =?utf-8?B?aGkvaGZuRHNvMmtDWFl1UStLWUJKQXh4T0xPc3JiZSt5Qnh1VmJFaEZCQkRZ?=
 =?utf-8?B?c2FHVjlab29oYmt6Q3p2cjMweWlhQURaS1ZkSCs5NDV0ZEVnNTRPU3BTaTdD?=
 =?utf-8?B?MU5zU1F4SWRKcU9RNVoxUTdSVW9PdmVvdmcyWlBQMXVkeVFKSS9ydk1GYzNP?=
 =?utf-8?B?Rm54ci9iQnBKaGVIWlY3TlR3MlpmWHlyeFZHTUFxM3hwK1A2bWFxbVhUc1JS?=
 =?utf-8?B?TjFTeGlpYkJzalRsUlA4NlVQUFBhNVp4czVtOWdtSnJVcTY4QjZjVGN6bTlr?=
 =?utf-8?B?WDJhelV5ajBGSlB5UE5La3dpVjNKTTBVdW0vRzJTS0I1YTlDcnlNNVN5SHVv?=
 =?utf-8?B?QlNFK0VLQ0NvU3JGZ0JQWlYyMkJZRk5iZE56TTNLZEtaS2hhOVArMThJMDBR?=
 =?utf-8?B?ZVhwL2svMXVQUG11WGJvLzNIZEZUUW9uekxYL215OHpCUGNBamZQWW9SeUFF?=
 =?utf-8?B?aVBqUFk5bG85UlI3U2JsWHVCd0dtQmo5eHBTSXordktRVUN4WjBrY0F3ZUVS?=
 =?utf-8?B?clNsRWd5LzBweGIrRzRybDZhSEN0OVdBMkVjTUdlNDBTeFhqaHJqTnBYbE12?=
 =?utf-8?B?V3Y4WWNSaUJNVjk4eWJLTmE0K1ZVek9JYUUzQ1VVdEtuVWkvK0NmN05jNHJK?=
 =?utf-8?B?SFMya05zY1hPMFQ5eXNLN0VZUWI5YTNZazJ1UHdNd3lNL285blVDOWNSWFBD?=
 =?utf-8?B?Tm4xZk5lWW1FbU9MMk5vMWFkY3pOSE5OTmZTSjhNMmFYWFZSbWZMQmhuSVR5?=
 =?utf-8?B?L3lNWktrdDB4anJpMzMrSnRqRU5Zam1raEJNeG9ENDlaV09xL1N1ejlpdUhJ?=
 =?utf-8?B?a09rZ2FrTm9yMjFVdjRRa3RudHRTOUF5SDRicHJRcUtWdDRFYVlMRjFuR0Ex?=
 =?utf-8?B?S0NVVW5YdHJnMFVpYm16NE1BNEZxb2FxQmNBVVZublU5Kzh6bU9IaXZ4UGcx?=
 =?utf-8?B?QnZ2ZSt1OWFnWmM5bW5RdUtNSy8wYkZFNzh0SzF3TUg5SDFGVzV4aWdYTEZ5?=
 =?utf-8?B?Qi9GWkwxeU1XVFNTa0hGMmZNRnpCTGdGeTYwSjVsSk5XeFd2Tnk2bXdMWUxR?=
 =?utf-8?B?NnowYzFxOUtZcXI1RFc2T2ZEU01SUmV6aW1WMm0xcW1rdlAzdWZHdjVPMUFR?=
 =?utf-8?B?c3F4MTJ1U3Q4VlFzTGQ2MVRSOUFsa05FcmNWcXF3clA0L1BhOXlZQ2ltVFRw?=
 =?utf-8?B?L0xHd1JYd3crZVZ4S0VQeUVJbHg2ZldSTHhTdTRWSlY3bi9nZWVZS2ZHOVMv?=
 =?utf-8?B?bTZGcjZrMG16S2RNejlZYjJEYkYzTEtublRiUWYyT29mb2FSRUhXWm45SDBz?=
 =?utf-8?B?ZnYvNGk5RVRpenFGKzg1QSsxalJrSnVSREpjL0FBOEZJeTZUZTZpbGtLeUMx?=
 =?utf-8?B?eVNoQllMTmFuaXdhMjJkRGxaVXMvZFV2VGY3N0tyT3NWSVBnMFBYVmFNS2x5?=
 =?utf-8?B?SDZtMEVaS3JNRjc1MWFUc1J4bk4rdTNpVTkvb0JOTmkva0dhZjRjeDVXUEM2?=
 =?utf-8?B?aDh0LzNWVWtaZVBGN2QwenkwMXp3ZzNDZ0JTQnhBWllxdnk3bHV1bytwZHVy?=
 =?utf-8?B?VzlLWmszQnBPOEhxWDRVTFM2alZFZDNWZTFZSnlCRElxbWdHZkVVRWZRdmk2?=
 =?utf-8?B?RE9UajFmSnFhTGdkbDJNTzI0WmRtVFluaW5kYUtkVkFQcFlnU2xFcVVEaDNF?=
 =?utf-8?B?OGltZ00waHdTVjdxTGtURXFDZUVGbWQwblc5cURuUzBiaVNvT3U5U2RHaGMv?=
 =?utf-8?B?MUtYVjVKK2Z0RHFnQjZOb1FsUm14V091VnNRM1hockxvOFBhdlFGS3hBL2Jk?=
 =?utf-8?B?bmw2UW5DZDZocStoSkF3NTF0akVtWFZpenRyVDU4VE1PcGRaMk9pRFJhVGhH?=
 =?utf-8?B?cWpPNFVHcEIvVnB1ZkVhSTI3eHR1NFVjVHFUcmlFcHA3MmVrZEhRNjJNRXNN?=
 =?utf-8?B?NUIvSHZMUzE0NWJUUUhFL2dEZkUwSWtXNzIrRXNyaEloajNaRm5yS013bFVs?=
 =?utf-8?B?TE1VWHdMc3l6OWtCa21SOG5RWCtlbU1TdlliSjFEWnNOTEU4RDYxUGp0aTYr?=
 =?utf-8?Q?SUTsh09jyu8qqZjKo68N8Fi8ptg7ekXtacXlSbHS9CYA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 691be3db-828c-4818-308d-08d9985fdbb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 09:06:12.4380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WiQ191UjedrYwTO2LHT1atnWlQjuVHgsHWWGXsvY/42JuqyXbQq04VEpinlLE+VP04H0cqDd0yDS3oldoeLHZwzLGt5Js6of1ARHZInU5X0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2825
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global
 reset
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXVsLA0KVGhhbmsgeW91IGZvciB5b3VyIHN1Z2dlc3Rpb25zLg0KDQo+IERlYXIgSmVk
cnplaiwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+IA0KPiBBbSAwMi4w
OS4yMSB1bSAxMjozMSBzY2hyaWViIEplZHJ6ZWogSmFnaWVsc2tpOg0KPiANCj4gUGxlYXNlIGJl
IG1vcmUgc3BlY2lmaWMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnk6DQo+IA0KPiBpNDBl
OiBJbmNyZWFzZSBkZWxheSB0byAxIHMgYWZ0ZXIgZ2xvYmFsIHJlc2V0DQo+ID4gaTQwZTogSW5j
cmVhc2UgZGVsYXkgdG8gMSBzIGFmdGVyIGdsb2JhbCBFTVAgcmVzZXQNCg0KT0ssIHRoaXMgd2ls
bCBiZSBmaXhlZCBpbiB0aGUgbmV4dCBwYXRjaC4NCg0KPiANCj4gDQo+ID4gUmVjZW50bHkgc2lt
cGxpZmllZCBpNDBlX3JlYnVpbGQgY2F1c2VzIHRoYXQgRlcgc29tZXRpbWVzDQo+ID4gaXMgbm90
IHJlYWR5IGFmdGVyIE5WTSB1cGRhdGUsIHRoZSBwaW5nIGRvZXMgbm90IHJldHVybi4NCj4gDQo+
IE9uIHdoYXQgY2FyZCB3YXMgdGhpcyBoYXBwZW5pbmcgdXBkYXRpbmcgdGhlIGZpcm13YXJlIGZy
b20gd2hhdCB2ZXJzaW9uIA0KPiB0byB3aGF0IHZlcnNpb24/DQoNClRoZXJlIGlzIG5vIHNwZWNp
ZmljIHZlcnNpb24gb2YgdGhlIGZpcm13YXJlLiBJdCBkZXBlbmRzIG9ubHkgb24gdGhlDQpkcml2
ZXIgdmVyc2lvbi4gQ2hhbmdlcyBpbiB0aGUgZHJpdmVyIGhhcyBhbHRlcmVkIHRoZSBpbml0aWFs
aXphdGlvbiwNCndoaWNoIHJlc3VsdGVkIGluIHRoaXMgIGRlZmVjdCB3ZSBhcmUgdHJ5aW5nIHRv
IGZpeCByaWdodCBub3cuDQoNCj4gDQo+ID4gTW9kaWZ5IHRoZSBkZWxheSBpbiBjYXNlIG9mIEVN
UFIgcmVzZXQuDQo+IA0KPiBQbGVhc2Ugd3JpdGUgb3V0IEVNUCBvbmNlLg0KPiANCj4gTWF5YmU6
IEluY3JlYXNlIHRoZSBkZWxheSDigKYNCj4gDQo+ID4gT2xkIGRlbGF5IHdhcyBpbnRyb2R1Y2Vk
IGZvciBzcGVjaWZpYyBjYXJkcyBmb3IgNzEwIHNlcmllcy4NCj4gDQo+IE9sZCBkZWxheSBvZiAz
MDAgbXMg4oCmDQoNCk9LLCBpdCB3aWxsIGJlIGRvbmUuDQo+IA0KPiA+IE5vdyBpdCB3b3JrcyBm
b3IgYWxsIHRoZSBjYXJkcyBhbmQgZGVsYXkgd2FzIGluY3JlYXNlZC4NCj4gDQo+IFdoaWNoIGNh
cmRzIGRpZCB5b3UgdGVzdCB3aXRoPw0KDQpCZWZvcmUgc3VibWl0dGluZyB0aGUgcGF0Y2ggaXQg
d2FzIHRlc3RlZCBvbiBYNzEwIGJ1dCB0aGUgb3JpZ2luYWwgaXNzdWUgDQpoYWQgYmVlbiBmb3Vu
ZCBvbiB0aGUgWEw3MTAuIFRoaXMgaXMgdGltaW5nIGlzc3VlIGJldHdlZW4gc29mdHdhcmUgYW5k
DQpmaXJtd2FyZS4gV2Uga25vdyB0aGF0IGl0IGlzIHN1cHBvc2VkIHRvIGJlIGZpeGVkIGluIGZp
cm13YXJlIGJ1dCB1bnRpbCB0aGVuDQp3ZSBoYXZlIHRvIHByZXZlbnQgdGhlIGxvc3Mgb2YgcGlu
ZyBhZnRlciBOVk0gdXBkYXRlLg0KPiANCj4gSG93IGRpZCB5b3UgY2hvb3NlIG9uZSBzZWNvbmQg
KG1vcmUgdGhhbiB0aHJlZSB0aW1lcyB0aGUgY3VycmVudCBvbmUpPyANCj4gSXMgdGhlcmUgc29t
ZSBkYXRhc2hlZXQ/DQoNClRoaXMgYW1vdW50IG9mIHRpbWUgaGFzIGJlZW4gY2hvc2VuIGJ5IHRl
c3RpbmcuDQoNCj4gDQo+ID4gRml4ZXM6IDFmYTUxYTY1MGUxZCAoImk0MGU6IEFkZCBkZWxheSBh
ZnRlciBFTVAgcmVzZXQgZm9yIGZpcm13YXJlIHRvIHJlY292ZXIiKQ0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tp
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9tYWluLmMgfCAxMiArKystLS0tLS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gaW5kZXggMDAwOTkxYWZjZjI3Li5l
MGM5ZTBlODRhZWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV9tYWluLmMNCj4gPiBAQCAtMTA1MzUsMTUgKzEwNTM1LDkgQEAgc3RhdGljIHZvaWQg
aTQwZV9yZWJ1aWxkKHN0cnVjdCBpNDBlX3BmICpwZiwgYm9vbCByZWluaXQsIGJvb2wgbG9ja19h
Y3F1aXJlZCkNCj4gPiAgIAl9DQo+ID4gICAJaTQwZV9nZXRfb2VtX3ZlcnNpb24oJnBmLT5odyk7
DQo+ID4gICANCj4gPiAtCWlmICh0ZXN0X2JpdChfX0k0MEVfRU1QX1JFU0VUX0lOVFJfUkVDRUlW
RUQsIHBmLT5zdGF0ZSkgJiYNCj4gPiAtCSAgICAoKGh3LT5hcS5md19tYWpfdmVyID09IDQgJiYg
aHctPmFxLmZ3X21pbl92ZXIgPD0gMzMpIHx8DQo+ID4gLQkgICAgIGh3LT5hcS5md19tYWpfdmVy
IDwgNCkgJiYgaHctPm1hYy50eXBlID09IEk0MEVfTUFDX1hMNzEwKSB7DQo+ID4gLQkJLyogVGhl
IGZvbGxvd2luZyBkZWxheSBpcyBuZWNlc3NhcnkgZm9yIDQuMzMgZmlybXdhcmUgYW5kIG9sZGVy
DQo+ID4gLQkJICogdG8gcmVjb3ZlciBhZnRlciBFTVAgcmVzZXQuIDIwMCBtcyBzaG91bGQgc3Vm
ZmljZSBidXQgd2UNCj4gPiAtCQkgKiBwdXQgaGVyZSAzMDAgbXMgdG8gYmUgc3VyZSB0aGF0IEZX
IGlzIHJlYWR5IHRvIG9wZXJhdGUNCj4gPiAtCQkgKiBhZnRlciByZXNldC4NCj4gPiAtCQkgKi8N
Cj4gPiAtCQltZGVsYXkoMzAwKTsNCj4gPiArCWlmICh0ZXN0X2FuZF9jbGVhcl9iaXQoX19JNDBF
X0VNUF9SRVNFVF9JTlRSX1JFQ0VJVkVELCBwZi0+c3RhdGUpKSB7DQo+ID4gKwkJLyogVGhlIGZv
bGxvd2luZyBkZWxheSBpcyBuZWNlc3NhcnkgZm9yIGZpcm13YXJlIHVwZGF0ZS4gKi8NCj4gPiAr
CQltZGVsYXkoMTAwMCk7DQo+ID4gICAJfQ0KPiANCj4gT25lIHNlY29uZCBpcyBxdWl0ZSBleGNl
c3NpdmUgaW4gbW9kZXJuIHRpbWVzLiBJcyB0aGVyZSBhIHdheSB0byBwb2xsIGEgDQo+IHJlZ2lz
dGVyIHRvIHNlZSBpZiB0aGUgcmVzZXQgd2FzIHN1Y2Nlc3NmdWw/DQo+IA0KVGhlcmUgaXMgbm8g
c3VjaCBhIHJlZ2lzdGVyIGluIFNXLCBhbmQgRlcgcmV0dXJucyBub3QgY29ycmVjdCB2YWx1ZSB3
aGVuIGFza2VkDQpmb3IgaXQuDQoNCj4gQWxzbywgdGhpcyBtaWdodCByZWdyZXNzIHNvbWUgc2V0
dXBzLCB3aGVyZSB0aW1pbmcgaXMgaW1wb3J0YW50LCBhbmQgDQo+IHdoZXJlIHRoZSBtYXhpbXVt
IG9mIDMwMCBtcyBkZWxheSBpcyBjcnVjaWFsIGZvciB0aGUgYXBwbGljYXRpb24uDQoNClRoaXMg
aXMgRU1QIHJlc2V0LiBJdCBpcyBiZWluZyBwZXJmb3JtZWQgb25seSBpbiBjYXNlIG9mIGVtZXJn
ZW5jaWVzLA0KdG8gcmVjb3ZlciB0aGUgY2FyZCBmcm9tIHRoZSBmYXVsdCBzdGF0ZSBhbmQgYWZ0
ZXIgTlZNIHVwZGF0ZS4NCg0KPiANCj4gPiAgIA0KPiA+ICAgCS8qIHJlLXZlcmlmeSB0aGUgZWVw
cm9tIGlmIHdlIGp1c3QgaGFkIGFuIEVNUCByZXNldCAqLw0KPiA+IA0KPiANCj4gU28sIE5BQ0sg
ZnJvbSBteSBzaWRlLiBRdWlya3Mgc2hvdWxkIGJlIGFkZGVkIGZvciBjYXJkcy9maXJtd2FyZSAN
Cj4gdmVyc2lvbnMsIHdoaWNoIGV4cGxpY2l0bHkgbmVlZCBtb3JlIHRpbWUgdGhhbiBubyBkZWxh
eSBvciAzMDAgbXMuDQoNCkFzIHRoaXMgd2FzIG5vdCByb290IGNhdXNlZCBhcyB0aGUgY2FyZCBv
ciBmaXJtd2FyZSBzcGVjaWZpYywgYW5kICBFTVAgcmVzZXQNCmhhcHBlbnMgbW9zdGx5IG9ubHkg
YWZ0ZXIgTlZNIHVwZGF0ZXMgSSBzdHJvbmdseSBiZWxpZXZlIGl0IGlzIGJldHRlciB0byANCmlu
Y3JlYXNlIHRoZSBkZWxheSB0aGFuIHRvIGxvc2UgdGhlIHBpbmcgYWZ0ZXIgdGhlIE5WTSB1cGRh
dGUgcHJvY2Vzcy4NCg0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCg0KS2lu
ZCByZWdhcmRzLA0KSmVkcnplag0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
