Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9542443BABF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 21:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0E284051F;
	Tue, 26 Oct 2021 19:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Cp0u09y-x_T; Tue, 26 Oct 2021 19:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D80564050B;
	Tue, 26 Oct 2021 19:26:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC16B1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 19:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C6DB360A3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 19:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VBUe2VmizvnM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 19:26:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCDCE60657
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 19:26:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="210078725"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="210078725"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 12:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="578902203"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2021 12:26:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 12:26:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 12:26:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 12:26:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 12:26:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nSdcMJ5V6aPvgj/OU8v34MvOl2c49pLdbeh4QqDhIYmFr11toBoBL8NdRMDL/mk/yjNLCkteMGeyujsRsiDQVzI6O6vkScIyGvDIWOPbdKBSTgKBQMj9qzkKhIniOfTtVsVGT+wR/Rq65T18+ANQz0MMezLH9Z5x0CSESuA4vZRmjNhUTn00+XIMm1BLgUmVIfml7Vgmp321efVKrVRbFDzjPVPbmB2MrEUSusqAwQgVmEHBKY9EjU1+S/Ai4cnN+x5xzi3/dZhsaMSxL/1gyN44MH9n/Gykwj4g/AZfpaCXYoZ2i2KCDO4J23r1gKFp7RV0YF3BSe8kOCdlKhk0gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jmPuHl5W/+6iAIzdY3gVNnzpN+z3iWNsPCJ+lGBicA=;
 b=EHM/MHCY+3EfQaJ1fdwdkcP3HBb6oQZozagUkDmBog1gDxyVE3AG/EUyn7fzySwTM+IfZWdJj50pjAHoqLzi79gQ8SpT/OZJ003xLNAowWRC1dTUz6zprJh1XEUujz74A19S3gA0atg7KglSaVtfII1366z+kd+PjrE6pN5/CVCjWEfM0eXB9lLN+ZcjmG7+VoqfBVmBIaQWH5dxIQIYaZTMdpXMHgDIS4zhbd1tF3ADoyAMjhB5KSz3CDTuXTGl+k6v0MvWSZq6b8dX7OWiUR5YcvbewbMzPC8cfXCG5Rm5zcA77+7ojIvOPXfQJqnP2yLglB20syi/73MZTVqQIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jmPuHl5W/+6iAIzdY3gVNnzpN+z3iWNsPCJ+lGBicA=;
 b=NCtlun4clb1ciy9p+yRwod76wx+huuGOK60oCJklFWam71bznU4vj3pWZjgFMe2Rymbix5nOE/wrj+xuPlLnVaWFDqWvgKWKSDhnj/UOFleAfbOIVimPdLWi7L1/MIPMQ41OrjjawI6V6HKTvUDROjSM1Uq3RP9aFiavnYKUR54=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR1101MB2173.namprd11.prod.outlook.com (2603:10b6:301:5a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 19:26:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72%4]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 19:26:10 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v5] ice: support immediate
 firmware activation via devlink reload
Thread-Index: AQHXygyyzY2yNFkwhkqAHetYubrqJKvkvh4AgADsbwA=
Date: Tue, 26 Oct 2021 19:26:10 +0000
Message-ID: <7e6884c8-4357-fbb7-d25e-6628f57120df@intel.com>
References: <20211026015537.424232-1-jacob.e.keller@intel.com>
 <e3cafbba-4f77-2ad8-6e94-62ffd2ab1dce@molgen.mpg.de>
In-Reply-To: <e3cafbba-4f77-2ad8-6e94-62ffd2ab1dce@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d738f108-75ba-48f2-a338-08d998b6777c
x-ms-traffictypediagnostic: MWHPR1101MB2173:
x-microsoft-antispam-prvs: <MWHPR1101MB21732332A234FCAD5D51D156D6849@MWHPR1101MB2173.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DfXGs+BRsdNc24ZVV7w0rGyBs8UEDn9S7yZB+iCPtUrPkDI2pIxlMrPQ143IJzFe6MHYc9j9cecatDWwOKXQ3sw2jJtgrtg+B1fhYTNJvhtWe6r/ekZXbJT+hiUs0DG4Xwa1vOIXCQe0T/OPFiiZcqwQHBYKrPIOGFQ91bnyYAgqj/NxVm5qUt/oZXiedltBU6344XPALmO+GAh0vuMTC0z6SktZGWn0+VIYDBFjxApPYmzdttZFMQPiYFAcPU65KcggAYNAIy2eIjVxZ0Xerwf7omwYByyDjsUfQUH55kL6cQsU1tvp56dwsXf0pI6AbVxy1uNXR03FZA2As1ga2Fyw7cShqidZussKK14M2qiGbM0P8L5JZMnWabiaRnVVAm6mNuQ/XE7RE5O66IaK1Zr+SZGm+O/hjoG0UawaAFr12dX/yx4rh/l1kbKmxu8BJGqwKqa8sdOAxQXyWugvqROUwyulx2uXCr7SMCQISNGTjO/3V8DYvaKFI5t12dpHK2IysbUT+DJb+4HUYcLNVWo+tyXdv8yJTBQszQtZg4sQkuJqaOyQft+HVEv/CJKwSwa6IXBR8Rbvdrw/anRe/BGc/EAJcOuIh4WRcVlUMTvYGomLKlvR6Lla0IJ6GPqFIvfYMYhicAp5ezi/7/oJ41xXdgOXAM2gjXSwkdcDHx4pbiHxV1062x8WEvCAjnyuu50iP+cEhtPVNrE8Gm/gSHrkld2rgEk1dGXSahTulT3nG947lH5Y73KRyKQaUJTw/hJ3YEB4cIF6ppTDXIyMrcYxknN9Ua1rcwsG+O4Gf60=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(6486002)(66556008)(26005)(66946007)(66476007)(8936002)(64756008)(8676002)(66446008)(186003)(38100700002)(82960400001)(6506007)(71200400001)(5660300002)(2906002)(4326008)(36756003)(76116006)(53546011)(6916009)(31696002)(508600001)(122000001)(31686004)(86362001)(54906003)(316002)(83380400001)(2616005)(6512007)(14773001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RW9PY0JDSURqOUVVTWVkMWx4Nlh5ZFAzMFJxM3lnZWJmMjNlMHFNdisrelhQ?=
 =?utf-8?B?cW9iaXFqaFJnOFo5QlVlMnZrUXVML1c5LzZoWWcxMDdOR1VCL0drTEw4Ylk0?=
 =?utf-8?B?Y1puZFUxdFJGbW16QWVBN0V5VVFPZ040REozc254RmRaMjJuclh5eFZ0SWQr?=
 =?utf-8?B?bkhCM21wOFoxbzZ6aWQwaGdhclJDQXdGdUNiTW5VQldOL0FDWitnU2hqbk5x?=
 =?utf-8?B?NHdHRS9wb1F6WThRdGdJQUMvdTZOMjNLb1dhQ2xxbHN2RytPbFUvdlcxWTh6?=
 =?utf-8?B?RzMvMXRXTkQwYm9SUWwyOEhEVG9SdE5RNnZLZmM1R29xdHZrR2RDVG1sL0Q0?=
 =?utf-8?B?TjB5NWFWaGVqZHcwdUNTRmpIdUJ3eUk4WUZDV0pBakhKeitrRW5qemFwUEUy?=
 =?utf-8?B?SVVhK1NqM2lrK2ZLUDYxbWdOQlBxR1Q2aURnaDBLVUtpUmVXVXNkQVJBcHpq?=
 =?utf-8?B?UXB6TDdhMXhkWmtXdWIzdWVRT3FINk5GdkF5b1dqSE1ZczhTbTRLWUVkamZE?=
 =?utf-8?B?WWQzdTlpTUdBWVgvRGJHdE9IR1JKSHBTTld3ZTBESTlwaDEwWG9OVkpRZXND?=
 =?utf-8?B?S2dDR3Q0cW9BMEZkL3JhVUR4TXNETzFjcjlxbHpJWExwdUNhU05UeFRLbkdD?=
 =?utf-8?B?enp5YWxucnlBaDlWaDBpTEx1SmIycENvTnFWUjQ2S1hPVURraHpRWnhvanFo?=
 =?utf-8?B?MWNodGVjUFN0bVBFaXdCWEVPR0dJK2JsTzA5RjZSem1zbE5tWlBEZ0x5a3Fi?=
 =?utf-8?B?VkppWDkvVW40ZC8wckQwS3dTd3JaVWd1RDIzbVVkZ3RjM2hseHN0bGhvOHRX?=
 =?utf-8?B?VkVCUXVmUFFJSUVwby84SG1hS2xUUnMxN0hnOXozcGprSlF6RXVYZXg5Vkhs?=
 =?utf-8?B?cjJUR2YzeWlvUlFRZTA1SDBqTmlXVGNxT25MTm5KS0dZWGdhNE15Mkp2Qk1E?=
 =?utf-8?B?ZzBkRk1ieUgySHp0TW40SFVrMjZZKzM2TGRpMEtsRXhpSEtrbTg3Ymx3UW9T?=
 =?utf-8?B?bTJQdXBZb0Uwa295WXFZQ0NrVXovdHFXMENoNjBhOFFQbVJjZjZCd3VwbzJu?=
 =?utf-8?B?WXdnUTVCOW4rMnBPU09BNklwVUF4OFBsbkdydFl5REdhcVFvbVVBQlhxS2g5?=
 =?utf-8?B?QWREelZETDN6bWdaU1NhMGlCSVdRR3EwZ09OWHFmQmkyc29uOGdWUnVwZVdZ?=
 =?utf-8?B?UzQzVE9LL1hXMEFoc3R5emZjMFRGSjFSa0I4QnE3YnVZenZIcktXZUtCK2Rh?=
 =?utf-8?B?TVNxTExzSzhmTnM4SyszbFY5SmU1eFZWUGc3UXFUN25PRlFGbXdqYjFqd3lB?=
 =?utf-8?B?TlhBVmd6T2ZjMW9LS2U1dFRhc1hOWGFUS3k2a2V4V2JETTQ4Q1dIdHBrNHQ2?=
 =?utf-8?B?cVhacmh2aENFZkpaUnhoejBWZGZXZ2xuSWdjOURncERuYjJTazBlRWI4c3Az?=
 =?utf-8?B?emtyMnRpdEZlL1NiaENrTXNjOC8rWlJleWlrTGUvRS9peGFOYzZEaWNHZkM1?=
 =?utf-8?B?Q3lXSUpqWmg5VEFmUmdYT0d2ejM4RjhhQVFkTWIxWGtOeHlYRmpONk54Slla?=
 =?utf-8?B?NE9KZXZDY2lFcWhKOHBkOHlEWVBCTXhLSVVsdUVMcHIvR1dvK3RXWHRNUFh4?=
 =?utf-8?B?Znp5Mzd2aDZNNG9wQSsxbzU2NmI3MDN2Y1dnL29vMTBqWVdZSDlISjhydXFs?=
 =?utf-8?B?dlFua212aU1vN0pRVHVlS1lyVFVwZlFQRllsTm1Wb0xYMjdKZHhBL2hMM0JB?=
 =?utf-8?B?WFhLdlZrQnlRa1RRUEJKbGYxL1BWUWVwMHVYR1RKN3dqdWFmU0Z2SndMY1l2?=
 =?utf-8?B?UDZwQlk5dEdhWmFYYmYyY01RTGZJV0d5K3hkeHh5R1FHa3NjandUZlRxb2E4?=
 =?utf-8?B?V3k2c2xIK0l1aXhWYjJUcWFQZ09QV2JVT2ZsaWxwOWZDalJrRXd1d2RkM2E1?=
 =?utf-8?B?dGlsS2F1d25hYjNZWjFRMG0zcGNwMmczaUgrUVlETS95a2wzUnN6ZzJiT3ZS?=
 =?utf-8?B?YWpWd013MFJjNWlsSUNJaEpVa0Z2VUFLcms3ekJucnJoU09aM1hScGVCWnhl?=
 =?utf-8?B?VTJycFNhSDN5M1luNHRGajUxZENMNldSc2FMMTNLTXhKSHRQMXRvU1JWSmVa?=
 =?utf-8?B?TlRXRFF0KzlWSTdlRXdEckRsVmhVYk5IejJJOEdZVUhycVhRTlFZTXVyU1JG?=
 =?utf-8?B?eSsvWExaS0xwTTZLUi9GRG9FRzV1RTZnUzRUN0RRSWMxai9rOFFGM20xOWtW?=
 =?utf-8?B?TlhHTjNjZzNFN0h6ckkvNEpEei9nPT0=?=
Content-ID: <9B6B633FB04A094597F5F3094B0C98B7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d738f108-75ba-48f2-a338-08d998b6777c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 19:26:10.4498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aw3V3OzJgKeUzin41AFgSNfVuzotr+VlC09LAhsu2DmJxX7nfMDkCb/hy3N6wEWVhqCq96jrtM7fCBjNE9NLZnrmuNLlXw54sIYepZB37YA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2173
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v5] ice: support immediate
 firmware activation via devlink reload
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

T24gMTAvMjUvMjAyMSAxMDoxOSBQTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+PiBDaGFuZ2VzIHNp
bmNlIHY0DQo+PiAqIGNvbXBsZXRlbHkgcmUtd3JpdGUgY29tbWl0IG1lc3NhZ2UgZm9yIGNsYXJp
dHkNCj4+ICogVXBkYXRlIGRldmxpbmsgaWNlLnJzdCB3aXRoIGRvY3VtZW50YXRpb24gYWJvdXQg
cmVsb2FkDQo+PiAqIGV4cGFuZCB0aGUgdGVybXMgIkVNUCIgYW5kICJlbXByIiBmb3IgY2xhcml0
eQ0KPj4gKiBSZW5hbWUgdGhlIGljZV9kZXZsaW5rX3JlbG9hZF9kb3duIHRvIGljZV9kZXZsaW5r
X3JlbG9hZF9lbXByX3N0YXJ0IGFuZA0KPj4gICAgcmVuYW1lIGljZV9kZXZsaW5rX3JlbG9hZF91
cCB0byBpY2VfZGV2bGlua19yZWxvYWRfZW1wcl9maW5pc2guIFRoaXMgaXMNCj4+ICAgIGRvbmUg
dG8gY2xhcmlmeSB0aGVpciBmdW5jdGlvbmFsaXR5LiBJdCBpcyBhbHNvIGRvbmUgYmVjYXVzZSBh
bnkgZnV0dXJlDQo+PiAgICBzdXBwb3J0IGZvciBkZXZsaW5rIHJlbG9hZCB3aXRoIGRyaXZlciBy
ZWluaXQgd2lsbCB3YW50IHRvIGNvbnRpbnVlDQo+PiAgICByZS11c2luZyB0aGVzZSBmdW5jdGlv
bnMgdG8gc3VwcG9ydCBmaXJtd2FyZSBhY3RpdmF0aW9uLg0KPj4gKiBJbmNyZWFzZSB0aGUgbWF4
aW11bSB3YWl0IHRpbWUgZm9yIEVNUCByZXNldCB0byBjb21wbGV0ZSB0byAyIG1pbnV0ZXMuDQo+
PiAgICBJdCB0dXJucyBvdXQgdGhhdCBpbiBwcmFjdGljZSB0aGUgcmVzZXQgbWlnaHQgdGFrZSBh
IHdoaWxlIChsb25nZXIgdGhhbg0KPj4gICAgdGhlIG9yaWdpbmFsIDIwIHNlY29uZHMgSSBoYWQg
aW4gdjQgYW5kIGVhcmxpZXIpLg0KPiANCj4gV293LCB0d28gbWludXRlcyBmb3IgYSBkZXZpY2Ug
cmVzZXQuIFN5c3RlbXMgd2l0aCBjb3JlYm9vdCBhcyBmaXJtd2FyZSANCj4gKGRlcGVuZGluZyBv
biB0aGUgYW1vdW50IG9mIG1lbW9yeSkgYm9vdCBpbiBsZXNzIHRoYW4gb25lIHNlY29uZC4gOy0p
IA0KPiBLZXhlYyBtaWdodCBhbHNvIGJlIGZhc3Rlciwgb3Igd291bGQgaXQgYWxzbyB0YWtlIHRo
ZSBzYW1lIGFtb3VudCBvZiANCj4gdGltZSBmb3IgTGludXggdG8gYnJpbmcgdGhlIGRldmljZSB1
cD8NCj4gDQoNClNvIHRoZSBwcm9ibGVtIGlzbid0IHJlYWxseSB0aGUgSFcgcmVzZXQgYnV0IEkg
dGhpbmsgaXNzdWVzIHdpdGggdGhlDQpkcml2ZXIgcmVidWlsZCBmbG93LiBJIHBpY2tlZCBhIHNp
Z25pZmljYW50bHkgbGFyZ2VyIHZhbHVlIHRvIGF2b2lkDQpnaXZpbmcgdXAgdG9vIGVhcmx5IGhl
cmUgYmVjYXVzZSBvdXIgdGVzdGVycyByZXBvcnRlZCBzb21lIGlzc3Vlcy4uLg0KDQpCdXQgdGhh
dCBoYXMgZ290IG1lIHRoaW5raW5nIHRoYXQgd2Ugc2hvdWxkIHJlYWxseSByZXNvbHZlIHRoZSBp
c3N1ZXMNCndpdGggaGFuZGxpbmcgdGhlIHJlYnVpbGQuLi4NCg0KSXQgd291bGQgbWFrZSBtb3Jl
IHNlbnNlIHRvIGZ1cnRoZXIgaW52ZXN0aWdhdGUgcmF0aGVyIHRoYW4gYmxpbmRseQ0KaW5jcmVh
c2luZyB0aGlzIHRpbWVvdXQuLi4NCg0KPj4gKiBNb3ZlIHRoZSBjbGVhcmluZyBvZiBmd19lbXBf
cmVzZXRfZGlzYWJsZWQgaW50byB0aGUgaWNlX3JlYnVpbGQgbG9naWMuDQo+PiAgICBUaGlzIGVu
c3VyZXMgdGhlIGZsYWcgaXMgcHJvcGVybHkgY2xlYXJlZCBldmVuIHdoZW4gdGhlIEVNUCByZXNl
dCB3YXMNCj4+ICAgIGNhdXNlZCBieSBhbm90aGVyIHBoeXNpY2FsIGZ1bmN0aW9uLg0KPj4gKiBB
ZGQgY29tbWVudHMgZXhwbGFpbmluZyB0aGUgdmFyaW91cyByZXNldCBsZXZlbHMgdGhhdCB0aGUg
ZmlybXdhcmUgY2FuDQo+PiAgICByZXBvcnQuDQo+Pg0KPj4gQ2hhbmdlcyBzaW5jZSB2Mw0KPj4g
KiBjb3JyZWN0bHkgcmVhZCByZXNwb25zZSBvZiBOVk0gd3JpdGUgYWN0aXZhdGUgZnJvbSBzeW5j
aHJvbm91cyByZXBseSB2YWx1ZQ0KPj4gICAgaW5zdGVhZCBvZiBmcm9tIHRoZSBBUlEgZXZlbnQu
IFRoaXMgZml4ZXMgYSBidWcgd2hlcmUgd2UgbmV2ZXIgcmVwb3J0ZWQNCj4+ICAgIHRoYXQgRU1Q
IHJlc2V0IGlzIGF2YWlsYWJsZS4NCj4+DQo+PiBDaGFuZ2VzIHNpbmNlIHYyDQo+PiAqIGVuc3Vy
ZSBERVZMSU5LX0ZfUkVMT0FEIGdldHMgc2V0DQo+PiAqIHJlYmFzZSB0byBhdm9pZCBjb25mbGlj
dHMNCj4+DQo+Pg0KPj4gICBEb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2bGluay9pY2UucnN0
ICAgICAgfCAgMjQgKystDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Uu
aCAgICAgICAgICB8ICAgMSArDQo+PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9h
ZG1pbnFfY21kLmggICB8ICAgNyArDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29tbW9uLmMgICB8ICAxMiArKw0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2RldmxpbmsuYyAgfCAxMDIgKysrKysrKysrKw0KPj4gICAuLi4vbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZndfdXBkYXRlLmMgICAgfCAxODEgKysrKysrKysrKysrKysrLS0t
DQo+PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9md191cGRhdGUuaCAgICB8ICAg
MiArDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICB8
ICAgOCArDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmMgICAg
ICB8ICAxOSArLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5o
ICAgICAgfCAgIDIgKy0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
eXBlLmggICAgIHwgICA0ICsNCj4+ICAgMTEgZmlsZXMgY2hhbmdlZCwgMzMzIGluc2VydGlvbnMo
KyksIDI5IGRlbGV0aW9ucygtKQ0KPj4NCj4gDQo+IFvigKZdDQo+IA0KPj4gKy8qKg0KPj4gKyAq
IGljZV9kZXZsaW5rX3JlbG9hZF9lbXByX2ZpbmlzaCAtIFdhaXQgZm9yIEVNUCByZXNldCB0byBm
aW5pc2gNCj4+ICsgKiBAZGV2bGluazogcG9pbnRlciB0byB0aGUgZGV2bGluayBpbnN0YW5jZSBy
ZWxvYWRpbmcNCj4+ICsgKiBAYWN0aW9uOiB0aGUgYWN0aW9uIHJlcXVlc3RlZA0KPj4gKyAqIEBs
aW1pdDogbGltaXRzIGltcG9zZWQgYnkgdXNlcnNwYWNlLCBzdWNoIGFzIG5vdCByZXNldHRpbmcN
Cj4+ICsgKiBAYWN0aW9uc19wZXJmb3JtZWQ6IG9uIHJldHVybiwgaW5kaWNhdGUgd2hhdCBhY3Rp
b25zIGFjdHVhbGx5IHBlcmZvcm1lZA0KPj4gKyAqIEBleHRhY2s6IG5ldGxpbmsgZXh0ZW5kZWQg
QUNLIHN0cnVjdHVyZQ0KPj4gKyAqDQo+PiArICogV2FpdCBmb3IgZHJpdmVyIHRvIGZpbmlzaCBy
ZWJ1aWxkaW5nIGFmdGVyIEVNUCByZXNldCBpcyBjb21wbGV0ZWQuIFRoaXMNCj4+ICsgKiBpbmNs
dWRlcyB0aW1lIHRvIHdhaXQgZm9yIGJvdGggdGhlIGFjdHVhbCBkZXZpY2UgcmVzZXQgYXMgd2Vs
bCBhcyB0aGUgdGltZQ0KPj4gKyAqIGZvciB0aGUgZHJpdmVyJ3MgcmVidWlsZCB0byBjb21wbGV0
ZS4NCj4+ICsgKi8NCj4+ICtzdGF0aWMgaW50DQo+PiAraWNlX2RldmxpbmtfcmVsb2FkX2VtcHJf
ZmluaXNoKHN0cnVjdCBkZXZsaW5rICpkZXZsaW5rLA0KPj4gKwkJCSAgICAgICBlbnVtIGRldmxp
bmtfcmVsb2FkX2FjdGlvbiBhY3Rpb24sDQo+PiArCQkJICAgICAgIGVudW0gZGV2bGlua19yZWxv
YWRfbGltaXQgbGltaXQsDQo+PiArCQkJICAgICAgIHUzMiAqYWN0aW9uc19wZXJmb3JtZWQsDQo+
PiArCQkJICAgICAgIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCj4+ICt7DQo+PiAr
CXN0cnVjdCBpY2VfcGYgKnBmID0gZGV2bGlua19wcml2KGRldmxpbmspOw0KPj4gKwlpbnQgZXJy
Ow0KPj4gKw0KPj4gKwkqYWN0aW9uc19wZXJmb3JtZWQgPSBCSVQoREVWTElOS19SRUxPQURfQUNU
SU9OX0ZXX0FDVElWQVRFKTsNCj4+ICsNCj4+ICsJLyogSXQgY2FuIHRha2UgYSB3aGlsZSBmb3Ig
dGhlIGRldmljZSBhbmQgZHJpdmVyIHRvIGNvbXBsZXRlIHRoZSByZXNldA0KPj4gKwkgKiBhbmQg
cmVidWlsZCBwcm9jZXNzLg0KPj4gKwkgKi8NCj4+ICsJZXJyID0gaWNlX3dhaXRfZm9yX3Jlc2V0
KHBmLCAxMjAgKiBIWik7DQo+PiArCWlmIChlcnIpIHsNCj4+ICsJCU5MX1NFVF9FUlJfTVNHX01P
RChleHRhY2ssICJEZXZpY2Ugc3RpbGwgcmVzZXR0aW5nIik7DQo+IA0KPiBTb21lIGluZm9ybWF0
aW9uIGZvciB0aGUgdXNlciB3aGF0IHRvIGRvIG1pZ2h0IGJlIG5pY2UuIChIb3cgZG9lcyB0aGUg
DQo+IGxvZyBtZXNzYWdlIGxvb2sgbGlrZT8pIE1heWJlOg0KPiANCj4gICAgICBEZXZpY2Ugc3Rp
bGwgcmVzZXR0aW5nIGFmdGVyIDIgbWluLiBQbGVhc2UgcmVib290IHRoZSBzeXN0ZW0uDQo+IA0K
PiBb4oCmXQ0KPiANCj4gVGhhbmsgeW91IGFnYWluIGZvciBpbXByb3ZpbmcgdGhlIHBhdGNoIHNl
dCwgYW5kIHRha2luZyBzbyBtdWNoIHRpbWUgdG8gDQo+IGFuc3dlciBteSBxdWVzdGlvbnMuDQo+
IA0KDQpJIGNhbiBpbXByb3ZlIHRoZSBtZXNzYWdpbmcgaGVyZS4NCg0KPiBSZXZpZXdlZC1ieTog
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gDQo+IA0KPiBLaW5kIHJlZ2Fy
ZHMsDQo+IA0KPiBQYXVsDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
