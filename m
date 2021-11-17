Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F215B455165
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 01:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E2274024E;
	Thu, 18 Nov 2021 00:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNLYFJdAS3Md; Thu, 18 Nov 2021 00:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 083C44024D;
	Thu, 18 Nov 2021 00:00:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEC2C1BF83C
 for <intel-wired-lan@osuosl.org>; Thu, 18 Nov 2021 00:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8AA8405DE
 for <intel-wired-lan@osuosl.org>; Thu, 18 Nov 2021 00:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2ydGImHTv6M for <intel-wired-lan@osuosl.org>;
 Thu, 18 Nov 2021 00:00:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32285404DF
 for <intel-wired-lan@osuosl.org>; Thu, 18 Nov 2021 00:00:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221295404"
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="221295404"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 16:00:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="593540014"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2021 16:00:06 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 17 Nov 2021 16:00:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 17 Nov 2021 16:00:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 17 Nov 2021 15:59:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Of1x+f84pfFtLqsUYIst2OOMnFzW9bf1KCb/TasSCBlhbsYZaCD+l2i+GW/01diaIihtZaCfArT3GDbBli0rNGVualexPHCZ6pUmlAwX6cm/gLyZN0yR8Cc71SZSNY0wnEHzgpiu/sydAyNPaPFu/8zAH/bjvZahr/GykuER/w8gP8KL5X7rjg9vfW1YiHZYBNtwWIA93iRc2VzwUGLQvZQqlwH8Jj3J3ayn7W9Wmdna8Oid6/8urrvQFlwe6Cc9bser2KiBr5KLGP5MDDF+ErkmzzwnLolomxRnPFeaRnZTveLMhdscb8rQ4VXdbOwuXcy+OhtA4ixaSXoUlEVP7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uB7sDx7uvAwTt/U+nhZF/IcF76tYJ/waesH/GjZtyig=;
 b=nLpRr4s/zSSGqctZ7dl+JH+kZotw6cAnGjgZnGl19zhajGKI3wqoYmtRoYrtt5yAdYbrZShJ/axFgMygNGROMQif4iehb0D8JY3bHz+Mj/XRXn1xx6qR1i6aEFoOxLIL0ekYjhIlJW+T145lqsGYjfcqRy+UtBgOnswdB0G2IbMHKRFgF4iTZU66vLLbcuyjaby/9hpPM8MA6jv4L1vUGHBQI0aRcgorocuLRtV04P4BsnNXLaPWhZ2dUURWoO7Yrs6hl92B/OJlYXddtwgXRECEV9IvBWwKfenq7KaHy2fJJyNMB8wp2BrR/LUBrZCl+c0GjuVSpJ+FDIfr+I/Vpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uB7sDx7uvAwTt/U+nhZF/IcF76tYJ/waesH/GjZtyig=;
 b=JDaef5OVP6RGVHGiMRRcVig2oExxeBz3gpvD8ZwDItClbYOuhUOyN9Ky7+Aj4dgp3++SJEyLipIpuT6EFVHl8jtCAsydyOQj5ZA/RDnFJNSsABkJTQn2E10ERXp46fRtVLCqLgk1mlOVCuZs+IrsALH1XO7qvFW1WPyjFYJKIMc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4810.namprd11.prod.outlook.com (2603:10b6:806:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Wed, 17 Nov
 2021 23:59:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4690.027; Wed, 17 Nov 2021
 23:59:19 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix adding different tunnels
Thread-Index: AQHX2tR48iZ9V2xMfk++1LqnpnjD/KwIaD6A
Date: Wed, 17 Nov 2021 23:59:19 +0000
Message-ID: <5ae646ac06ec21eeb82dda74b13c79f84709bcb4.camel@intel.com>
References: <20211116102438.11756-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20211116102438.11756-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cc2ab59-faca-4169-5069-08d9aa26450d
x-ms-traffictypediagnostic: SA2PR11MB4810:
x-microsoft-antispam-prvs: <SA2PR11MB481073E2A8F5E44799040D20C69A9@SA2PR11MB4810.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2idVYyW11KV50Fpkr+D98FBWlCVCGzxYyLPWWtx3CqaYO+OmjSLEAYMR1QyxVMAtpPTQhP/KVYT27gZQvW2W1nDetesND/pUjlpDmISJTBOvh2ldMKVFi1Y4wpAFlS513hp7pnuUK5Nk5XGQxYah5hwXEEodwooZ7nR27oU378dfK8xqQ/+U9xvW+En2Q/+NM5iJ7ybzW4xB78tUhwLksgPpOVYqr27mt0rAS4QWj5+3WVMCmv3PiOvRrF2U6b+LIgAhimEKoAU6cZEO55J0PX4+0GjPAMn2G5FjpCo6uc0eVel9VOhu+U6bZ5bh/BcyV/5AwSNqvD9UYyCB1zd6nYaqmE1SY3gBH0OsoUYirZVcZYRc2ffpr69F6U/creAouZkyZLXg6qqaEboBqHBRYgKXU7fDO5fXvUkmkitHLCY5/emGMPkJArGoGKli1NjFnpX/PJhaI+rmFXHQgW+BM0P6mBUf031Lvpn6z/rnmO4R9SiYZL0zjPhlaTnjYMsAruBcm8lq67FbnrtAwKUKQnBGmhgWzHn3qpjIDSKmxNuDq/VJuMwY4RQpOf+6mYPfGPe1M+FfBopAiBmHh8vcTlIa/PGZphCFpOKCWN1qs49bBp4DWvtLZP1KeU0u2Uxp+lCc6CL5JspiLs837fb61PitybWoh7xeNFIsm20a/9AFsk2poyLRuMGqoA0M/V5glfQYSXz+DeHs1MVpjRn5ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(91956017)(66946007)(66476007)(71200400001)(82960400001)(508600001)(38070700005)(6506007)(6486002)(8676002)(2616005)(66556008)(64756008)(66446008)(6512007)(186003)(4001150100001)(316002)(38100700002)(36756003)(5660300002)(26005)(86362001)(2906002)(122000001)(110136005)(83380400001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTZDaWVETm1aVUpYRnpzK3RDMDRHc2FJNUhZWFNkeDdRS2g0Wm5hM0wrbVlG?=
 =?utf-8?B?OUJXb2RtUzlYMmF3WC8yUmtQTVYvdzExWjVvRWNibzhaTWNMbWhEaktqb1pz?=
 =?utf-8?B?WmthamQ3S1ZyakJpVmkxeEFadFlkTTRVU2dDZlhDbXJKMmlBazNvR3YvTFM3?=
 =?utf-8?B?ait6elJQTFE1NGpJbmQwSERQNld2VFZQUDZ4aUl4ZS9ETmdLZmF4aTNUN3V6?=
 =?utf-8?B?ME81dGwrSW5xY2lGVE4wdC8yY1pzZ0tyQ1pyVWU3UEgrRGgzcVBGMkNtampH?=
 =?utf-8?B?NjBDVlhLWExGNFc0TU53VXN5Nk04aDBjQnEzOW9KS0MzWHp3aVllQndvenBu?=
 =?utf-8?B?YTgvWlRqNWZDTWp3RVNkZU1vaDMxLzMveVZaWUxzdXR5QXFla0RMa0IvUlVr?=
 =?utf-8?B?TU0wVm5iRlgvb0FqZG5vQVRGRWFQeU5WUklFMVlwTXZTUTNuYVpic3hZczVh?=
 =?utf-8?B?bUFMbVUrR1N2ZHF5aGRDZVhONitRVkhxSEU0MFVtSFh5RWJES2lIemw4Mlo0?=
 =?utf-8?B?c3ppczFIU3Q1UXVHL1I3djV4QndTM2VqMnhYRlowTUdTb0pSTEFrcEJBRnph?=
 =?utf-8?B?TU1vYko1RWxXT3Y4MUZzUjVQZ2FtRHZIZTg2cldkSkR6bEhhUzJXaXJ2L09P?=
 =?utf-8?B?S0xWT2V2QUdIL3AzbnZhUDVkVFY2K1kwT3VFc0R0Sm5uRkJZa3hPZW1jMnAy?=
 =?utf-8?B?MGt6VXJjREZUbHpaMnlJTHlFWlN4YkZPb1pDUnlEdVhLemlMV293eEc4ejNC?=
 =?utf-8?B?QkZrU2tXZ215OTYvZ0RCbTB0YkVzWUdTWFNZMHB2NEFpcjhiaUFyVE5DdVZx?=
 =?utf-8?B?S2N0T0RHb2M2UUdRam5KYW9sVnZYRkZOVUJlZGdKbTFCaEkxTXFoVEVKYmkw?=
 =?utf-8?B?Y0JkSjJuVEhLOGNkbXdxSzllaUlGSm9NQkpock1VSWYrTlByallRaUtEZ3Vu?=
 =?utf-8?B?MU1LS1lHc2wzL2RWeWlmcGFieklmSnF6ZGN0VUJSWTdtVExVZnVhYlJpZDdp?=
 =?utf-8?B?Z2gxVGN5d1liSlJER2prRUppZ25BK2lzSWxLQUF4aG9LbHZONDRpRitvMUJq?=
 =?utf-8?B?SGp0TjZqNmd1bnRVR1VIaHMvQjhMcXRvcFVPaitjNkRIZUR6TmgzRWIzM1Iy?=
 =?utf-8?B?N0g0enJFakZRR3RWUE9LcEg3clc4V29jL2xxTHpNVGJ6NmRSOTBzUXNZVG1w?=
 =?utf-8?B?eGJWR25HZ0dOZTJzN3liaTR1ZG8wSGtZNzNSRTBzakdWNUtYV0l3OGpSK3V3?=
 =?utf-8?B?QUljL2IyYW1JV21LcFcva2pxTU00TnFHdnhHUlRLQkRWZEZRSEo2YzdMWmJa?=
 =?utf-8?B?Nzh0ekhKby9jV3d6c2JPcDBnVmttd3VvQUpGM1hyV2dVQm0yMmgvczdMWU54?=
 =?utf-8?B?SE5HdUZ0dTVmcDMyd3VRbVcwTkl3a1h4b3poZEszUFdDL2NuNkttQzFxOTdW?=
 =?utf-8?B?aE41T2F6TzJXdzdUdk1rRzZ5ZmV0WlJuL0lGSy9WN2VYY2NacUt4eVZTNExH?=
 =?utf-8?B?NTlTOU5JQkZnNThvb0pUTFNJVGdjRTU3bHdqL3NrSDV0VmRKOEt1Qm42NVk2?=
 =?utf-8?B?bGpuRGhqTzVkaXFQNEtsRlp1NVBObUNCNm1QWXROREF3cllWT3M4UVZxZk9i?=
 =?utf-8?B?eWZSeE51WDQ0WUFhTHIraG1PZVZHSzliRkp6aEtsVWw5dVU0Q1ZwOUVueFU0?=
 =?utf-8?B?d0ZxTDNzaEUrY2lQc0ZrTnk1Q2FEVTN0MWQ5TFFLNDZoV1lSUFNrS2NHeGwr?=
 =?utf-8?B?dzVNWW9zSmZXQnlJTm0yMk4yMDhiVnJ3RVo1ZmNEMloxZ004dTROdXl3ODh5?=
 =?utf-8?B?eGtoa0tVNENrZGdUTVJTRW40WThFZDcyQnozRVoyYlA4YzJXZGlORzBWeEhi?=
 =?utf-8?B?MFFKVzlmYk1CRFpLUk9GQTJOME1ITkVZandFZmpxdTNVdWF4QmdUa2wzRDl4?=
 =?utf-8?B?V0xaekVuZmhhTXdRd1NYUFZidzduSEJ0UzYzaUpxQmNRZFlNK0h6OU5VN1RK?=
 =?utf-8?B?MEVHNHZXYkJhZ3hCdTZDQjh1M0twZGNGS29pdk5RZ29pRlhrZHBCYmlmT1Qz?=
 =?utf-8?B?aUNHb3NLRVRFamlmQmx1VjBnNHl5L3VTY29VMVhYK2E3Q1ZVZkNlbnhGTEkx?=
 =?utf-8?B?NmFGcTZXUklDNHpscHRYS055aVRuTXRUM0dzMGdZZ1hmeWF0SzBZRitEL295?=
 =?utf-8?B?UGE0eGpNdTdLcnBvbnkzOHBKQnNncTJNdE1ZQWErK1ZLN1haUkhJMFcxL29G?=
 =?utf-8?Q?MH3Cxd2uxRhBOJTE6akxAgb4U2Z46Wla0o02s/SvlI=3D?=
Content-ID: <92C6A8A16BB6F043B7902443F1EB7E31@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc2ab59-faca-4169-5069-08d9aa26450d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2021 23:59:19.2366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: er1zNEGGsUOXBLg/SKbB6Lc5FCA2TghCsg8w8LrO9ISyW7pncWgIdYwDm7SdvKijPJtYB2ighXQrTqYP59yvzF9Vh/6l/EGy3V3s/EM1cY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4810
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix adding different tunnels
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIxLTExLTE2IGF0IDExOjI0ICswMTAwLCBNaWNoYWwgU3dpYXRrb3dza2kgd3Jv
dGU6DQo+IEFkZGluZyBmaWx0ZXJzIHdpdGggdGhlIHNhbWUgdmFsdWVzIGluc2lkZSBmb3IgVlhM
QU4gYW5kIGdlbmV2ZQ0KPiBjYXVzZXMgaHcNCj4gZXJyb3IsIGJlY2F1c2UgaXQgbG9va3MgZXhh
Y3RseSB0aGUgc2FtZS4gVG8gY2hvb3NlIGJldHdlZW4gZGlmZmVyZW50DQo+IHR5cGUgb2YgdHVu
bmVscyBuZXcgcmVjaXBlIGlzIG5lZWRlZC4gQWRkIHN0b3JpbmcgdHVubmVsIHR5cGVzIGluDQo+
IGNyZWF0aWcgcmVjaXBlcyBmdW5jdGlvbiBhbmQgc3RhcnQgY2hlY2tpbmcgaXQgaW4gZmluZGlu
ZyBmdW5jdGlvbi4NCj4gDQo+IENoYW5nZSBnZXR0aW5nIG9wZW4gdHVubmVscyBmdW5jdGlvbiB0
byByZXR1cm4gcG9ydCBvbiBjb3JyZWN0IHR1bm5lbA0KPiB0eXBlLiBUaGlzIGlzIG5lZWRlZCB0
byBjb3B5IGNvcnJlY3QgcG9ydCB0byBkdW1teSBwYWNrZXQuDQo+IA0KPiBCbG9jayB1c2VyIGZy
b20gYWRkaW5nIGVuY19kc3RfcG9ydCB2aWEgdGMgZmxvd2VyLCBiZWNhdXNlwqAgVlhMQU4gYW5k
DQo+IGdlbmV2ZSBmaWx0ZXJzIGNhbiBiZSBjcmVhdGVkIG9ubHkgd2l0aCBkZXN0aW5hdGlvbiBw
b3J0IHdoaWNoIHdhcw0KPiBwcmV2aW91c2x5IG9wZW5lZC4NCj4gDQo+IEZpeGVzOiA4YjAzMmE1
NWMxYmQ1ICgiaWNlOiBsb3cgbGV2ZWwgc3VwcG9ydCBmb3IgdHVubmVscyIpDQo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hhbCBTd2lhdGtvd3NraQ0KPiA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRv
b2xfZmRpci5jwqDCoCB8wqAgNCArKy0tDQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9mZGlyLmPCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4gwqBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2ZsZXhfcGlwZS5jwqAgfMKgIDYgKysrKy0tDQo+IMKgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbGV4X3BpcGUuaMKgIHzCoCAzICsrLQ0KPiDC
oGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmPCoMKgwqDCoCB8IDE3
ICsrKysrKysrKysrKy0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdGNfbGliLmPCoMKgwqDCoCB8wqAgMyArKy0NCj4gwqA2IGZpbGVzIGNoYW5nZWQsIDIz
IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KDQpUaGUgYWRkZWQgZnVuY3Rpb24gcGFy
YW1ldGVycyBuZWVkIHRvIGJlIGRvY3VtZW50ZWQ6DQoNCmRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2Vfc3dpdGNoLmM6MzgwMTogd2FybmluZzogRnVuY3Rpb24NCnBhcmFtZXRlciBv
ciBtZW1iZXIgJ3R1bl90eXBlJyBub3QgZGVzY3JpYmVkIGluICdpY2VfZmluZF9yZWNwJw0KZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbGV4X3BpcGUuYzoyMDQ3OiB3YXJuaW5n
OiBGdW5jdGlvbg0KcGFyYW1ldGVyIG9yIG1lbWJlciAndHlwZScgbm90IGRlc2NyaWJlZCBpbiAn
aWNlX2dldF9vcGVuX3R1bm5lbF9wb3J0Jw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
