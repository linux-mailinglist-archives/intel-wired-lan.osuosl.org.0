Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F6B467B23
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Dec 2021 17:18:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E65AD60727;
	Fri,  3 Dec 2021 16:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCsjj3sBcDv7; Fri,  3 Dec 2021 16:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10703606F5;
	Fri,  3 Dec 2021 16:18:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2B951BF589
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 16:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA40E40212
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 16:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vB8L46YiyYs5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Dec 2021 16:18:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E3ED40196
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 16:18:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="235736746"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="235736746"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 08:18:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="610457225"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 03 Dec 2021 08:18:21 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 08:18:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 3 Dec 2021 08:18:21 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 3 Dec 2021 08:18:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FuOMqpmdd+vek+xVoC33MbcfT/MiTPDrhtEnBLjvQYLVPuKosnP6unN8JXuP0ETX6WDDgJwegFE0hBiUfejeo9lCrCdd9/9bWFgCg6CvlqW/Kroh4FtmeGHRfAqk7Njfy85zyQBoHDS2VXIeeB3rTIVKycMWJ8hZNtJ0L00XIO5A/luAtd4mUpeqXNm6ck5brITeLUucSX8qug/uEBf/z+n8bd+q+vEqTxoaFzk7ETZGw0146UVaS0xuc0sE0U96DHE8psQWaQK6XOx606URQJxZTFy0oT6Bxjk+jchaBymNWOIk1JiD3qT3TuUlbiY/UaqTuEKvpW1HWovtiaA6rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0nwOc64b45UQo7JYMi3ZKPDcci78oXELq8eAetQ1qU=;
 b=M6d8IGAoICtcPONmSHjUs79ME1DvRk4Y/2Nmy0+p8KSYX/VN+4OcmGQtuz7ix3h5g2l4K4NPUy546AWYydUlQVlUmLsWg4CT+EFh6qieaFal7fzNjxpuW3JWIE3brpeXqjz1VRkHXytBej2eQT+j19gnV9K5iiRsyhMy237bA6ottr5u1MAi08H34+6+D3HzjZWFwpdhQycPg8QjorxKXfKarwJJ+X0BwoDBD1+oc7ENPoK+BeBjhDDZ0DcixbWGEs0qvl5qOjHmOlxIAR+xNrb5ACelna6MvYQnN4T5hm2WyM3COxBQ24w7GM4swlJh1GsR/A5AdFJqwNIJ96cMag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w0nwOc64b45UQo7JYMi3ZKPDcci78oXELq8eAetQ1qU=;
 b=AGHrSbBskvXjaplH3XbPUKtLyJXPQikI6k/ZQlgSkNGbeA+TFGt7fmpw8BNuoXyE7ootsXYLoAK96Nf9jDb2gnq43IvxPMlY5GptVtMeoklUc/2a/nX+ym4cnAjrpmpX4c96klrgb8XUZfdRnkO+AKByxp4d8cD+zbLS+tC8BRI=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MWHPR1101MB2253.namprd11.prod.outlook.com (2603:10b6:301:52::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 3 Dec
 2021 16:18:18 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9%8]) with mapi id 15.20.4755.016; Fri, 3 Dec 2021
 16:18:18 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH v4 net-next 2/4] ethtool: Add ability to configure
 recovered clock for SyncE feature
Thread-Index: AQHX5t+zHNhA4eAQzEyd+4hcIqumb6wfJraAgAAesICAACIlAIAACV/ggAF7CYCAAAFg8A==
Date: Fri, 3 Dec 2021 16:18:18 +0000
Message-ID: <MW5PR11MB5812AB9B6E0CAEB6F9A84ABAEA6A9@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-3-maciej.machnikowski@intel.com>
 <Yai/e5jz3NZAg0pm@shredder>
 <MW5PR11MB5812455176BC656BABCFF1B0EA699@MW5PR11MB5812.namprd11.prod.outlook.com>
 <Yaj13pwDKrG78W5Y@shredder>
 <PH0PR11MB583105F8678665253A362797EA699@PH0PR11MB5831.namprd11.prod.outlook.com>
 <Yao7r4DF7NmobEdp@shredder>
In-Reply-To: <Yao7r4DF7NmobEdp@shredder>
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
x-ms-office365-filtering-correlation-id: 4d0a345d-eda5-427c-1ae1-08d9b67884b2
x-ms-traffictypediagnostic: MWHPR1101MB2253:
x-microsoft-antispam-prvs: <MWHPR1101MB2253F7C63544DB2863AACAA3EA6A9@MWHPR1101MB2253.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHIUUbOh21JVKGJaRlTILLF1ARPLEdCNvel9quyzf7/1JDH/eyevajGxT8mk3g/wKNVwcx1RrNyaOAQ4NBNgi5cv+UF8VJDSz7o7Mrolqyv6Ook1oWVblzzrXxtPcxZnctvg+ASPALNXUj3fPHmxzB8nV76GpEqWCD6h9cf6nrK75OHBHdgN8pTLzxSgOw/LAkRpt7f8sj1Un9ZIV3SdQKC+zs1DqJv9AghDAlwm3jQOP71jBGtdwyYc2g3kGEizYgq5HF5ywOvOihwltGborHfAwYyPEIW06Ls4EAoKprM0tahNxxeK5+FjEwL/IjNcVUF6F/kGpioqplh6s1K1vlHV14La9O8xX+7qm/leskoQydcoIDDQFVilvQWzFDe3Pbdlgctdjm6PrUMPY/RBaNsqOCxq7BSn2jthoYmpx0u6+f+abOHZ5vC5Z6VRqNGKkQDOYUImCNs7531vbilt7h4v8LecqWhk0bcpWcFMlPmefmvPrUvV5yCQVwCkwfJS63+exnYqIH56yj8M+gIY3u6iERwqaeFTSWLMMumlYFi889YJI4voKuNAzeUjE5P505I3ZZ9oy/SZMxV8w4JFEe1Fd7N7iak72DKK/tLl7DNIkBtt+sp83+riaNf28E0QyM1ibjJHkKLWr7NGNf1pzfV9tl8Uk1cmVPUsulMVAEYmBW2mEIDTsvHb9eEFwyK+xQp1o5LhSRJ41junLbEyew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(8676002)(122000001)(5660300002)(53546011)(38100700002)(55016003)(6916009)(38070700005)(30864003)(6506007)(2906002)(82960400001)(7696005)(66946007)(26005)(83380400001)(66556008)(8936002)(76116006)(316002)(9686003)(86362001)(66476007)(64756008)(66446008)(71200400001)(52536014)(7416002)(186003)(54906003)(508600001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHYxcVg2ZmVqNi9xenQyYkxXQmhjU0w2SWFQTnVtZExUUG5ZS2Z6dmVlaDBU?=
 =?utf-8?B?VEJYTU1rOWQzQkdYbkptYmkvNmtjYWhYeHpjM0wvSzhlSVBudnVscnJReHNH?=
 =?utf-8?B?aGx5ejlTaGUxL1NmdWRhWmd6WlE1K05HVzZMTms1Wkhzek93U1F2S1NTNDJk?=
 =?utf-8?B?NFZWYStVTTFySENSSjZ4RnY2T1IydXVBV2dBbnpjYWRwZytlSU9JcmNIOUpy?=
 =?utf-8?B?UnM4OE5qUTY5OXVXYjBlSGxZRG96c3BuVjNHL09mMVVFZVhiTS9wa1RJK3JC?=
 =?utf-8?B?UWFTYUdLZ0FzUHBLOTRwTjVxK1dGYnFqL3IvbXV2Y0ZNRUZJdkVzclpESnNw?=
 =?utf-8?B?RmRUUVlaTHBEYm9aSmJoVHBQbXZnbHdpZElVTkFXa1BWSmtvbW1ZNlVKRjFE?=
 =?utf-8?B?Z2ozRnZxY1J5Q0xqaWtzMTQ0NlRNRXU2WEpGZVBMUmpaazM5bm5rekl0WFdq?=
 =?utf-8?B?MVZLWUUwbkdNU1Z4MitrQkc3YU9RcmhUYzFjdnZJY0Q3OXo4a1FTT2FKTEJE?=
 =?utf-8?B?OThsVnVxaGZoS2hLVnk3Mm5ldTB5QUFncGFHSk1OeHhUQ1dzUUpPQytyM2hy?=
 =?utf-8?B?VVJGZkRZWVZVKzRkYktyL1hkWlRDZUFlamppbHlEZ0RBOXBlNXo3REJGb1l4?=
 =?utf-8?B?bUt5UlZvNCswWml6cSs5K1Jtckd2VFEvbTZrSlUxRVd3bGxHRnoxSnhUZ0dF?=
 =?utf-8?B?M0ZvZ0QxbHZvdXA4UDRwK01TVlpLRFh5bHM2cGNyMGsyUWNIb1JQc1k5UkZC?=
 =?utf-8?B?cjVETTZoSUtkV3FnUU5Wbk56alQ0K1BjNEhRTkFRUmxVYTRnRFkyV1pMV3pr?=
 =?utf-8?B?RkttWUVjc05jTmEvNmlTYXh6eWplWDEydmh2MDZJME0vamdQZzgydmFOUHJa?=
 =?utf-8?B?SWM2ZWFaOFMzRUxRWmJaVUs4UHdTNGN4dElkaWtmSVg2aEVuVFByTkdQTzBW?=
 =?utf-8?B?ZUJ2eXFwbkc5MWZvM1pITk1ITHV4OVZWNG1lZ1YyQjJpTmh2eU1Zd245cjZ2?=
 =?utf-8?B?R0R2bzFHOVpTYjcxU0ZBQTh1NG9QVWFHaE5sOUN6QUd3TWVpdnlIamw3N0E0?=
 =?utf-8?B?bkRqME1kaERNRGVIQ0RtSU1IRDl5eUh3RUU4Mk1oVVJYcld3Mkx2TndncHJN?=
 =?utf-8?B?U3p4b2E1VU93amJCTlZKZG5wWXhFdC9Wd0JxbmVITjFwU3lsaUtXcVBNVkZt?=
 =?utf-8?B?dkxGQ2tPL2tmRzNXaUZKcmRoYXU1Z1dtd0Y0TFpLQ0IyeTlrWWlKVWdaZGRi?=
 =?utf-8?B?d2lYMlVlWlEzT2JKN0FEQ1R4ZTYzNkVaSDhheWZnbGYvUk8xbVRZWUhxaTZy?=
 =?utf-8?B?eVMvZTdHSXFQcWxSNlZOMm5oNWpGSFZMc050VEs4d0RKa0d6TVUvQ0VhRlRz?=
 =?utf-8?B?Z295RXNMQW40Sm40QmRhRmI3eVdDQ210WUJGY0NtL0V6YW4yUThIQzVrdWNt?=
 =?utf-8?B?N0NEaEJ3ZE03UlpVZFlDb1JLWTdjZmVOWmcxSmxmK1R2M3p6WmlqbjNQeUtN?=
 =?utf-8?B?VXgvejE3TW1Cc2lIN2ZoUWZaMHhWOEJoRHNhZys3UFZoNFBRU1k2M0RHNE9G?=
 =?utf-8?B?cVg0d3JOdDN5SERDd3ZmWTE0S0NaVjlua3h5L3p6NThmSENydlhQeFFiQVkz?=
 =?utf-8?B?VE1INmRrRzRqWDhqME9uLzcrc05nK2Y5d0l5VTFGMnBndGVTd2xjTzd5QnRR?=
 =?utf-8?B?dmV5RnUxZnpjdEVqeWhGYXdWbFVDQitGS3N4YlE1RjU5U1djSSswQzJuM2Ev?=
 =?utf-8?B?a1AvSTF1WHlBK3orK1lOeEdGZ2oyTHM1dHBaSllEYktuK1Z6d3E0a2Q2anEz?=
 =?utf-8?B?T05ZOXJlL0Q1WUtWSVM1Q2V1UE9VaHgvRXlSY2tWRVF5OFhmYm55ZkFJZnBY?=
 =?utf-8?B?dWZuVzJBYVVtVnNxYXRCaEJmTGxWREZTSVJkdXcyd2ZMaDliMjdDbGN1R0FT?=
 =?utf-8?B?c1F1a3ZEVER6bkcwcXFIM1NJS2NTK1ZwYmxzZE1pemlKWldmZHFpdmY3T3VZ?=
 =?utf-8?B?eXZ5Q2hoOFpMVWtNYXY0S3dHYU8wS2FWWVc5Q1ZtSVRObGxTdjdZa2Y4eElm?=
 =?utf-8?B?WDhDMW9jRkdkS1h5VFlyRzY0OE5Ca1F5bHlpa0tNQzdvUE9tTHJIQkdnQ3VB?=
 =?utf-8?B?ZTRMaVNpbkhxd3Y0a1NYZXo2SU5xT3dnblFWcFBneThOQVRjOG92SGNtTy8z?=
 =?utf-8?B?WCswYmJmdVpIdndxSFhsaC91dzFVY0x0RDRqZjFOMmJRVG4wRGsvTjJwelQ1?=
 =?utf-8?B?c1R0ZFpEbEQ5Rm5pazljZGU1elBRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0a345d-eda5-427c-1ae1-08d9b67884b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2021 16:18:18.6807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jEzu4M6vIEj+raQlU9TzYj6+7I9aT29vHDVDBI9i0cBFw5l1kTNp5s2CeoTdvCpOcVBhqwCPfSIqDD6hbp+U5RVQlegW6V8pR6v6gA4qRAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2253
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
aEBpZG9zY2gub3JnPg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDMsIDIwMjEgNDo0NiBQTQ0K
PiBUbzogTWFjaG5pa293c2tpLCBNYWNpZWogPG1hY2llai5tYWNobmlrb3dza2lAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IG5ldC1uZXh0IDIvNF0gZXRodG9vbDogQWRkIGFi
aWxpdHkgdG8gY29uZmlndXJlDQo+IHJlY292ZXJlZCBjbG9jayBmb3IgU3luY0UgZmVhdHVyZQ0K
PiANCj4gT24gVGh1LCBEZWMgMDIsIDIwMjEgYXQgMDU6MjA6MjRQTSArMDAwMCwgTWFjaG5pa293
c2tpLCBNYWNpZWogd3JvdGU6DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+
ID4gRnJvbTogSWRvIFNjaGltbWVsIDxpZG9zY2hAaWRvc2NoLm9yZz4NCj4gPiA+IFNlbnQ6IFRo
dXJzZGF5LCBEZWNlbWJlciAyLCAyMDIxIDU6MzYgUE0NCj4gPiA+IFRvOiBNYWNobmlrb3dza2ks
IE1hY2llaiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHY0IG5ldC1uZXh0IDIvNF0gZXRodG9vbDogQWRkIGFiaWxpdHkgdG8gY29uZmln
dXJlDQo+ID4gPiByZWNvdmVyZWQgY2xvY2sgZm9yIFN5bmNFIGZlYXR1cmUNCj4gPiA+DQo+ID4g
PiBPbiBUaHUsIERlYyAwMiwgMjAyMSBhdCAwMzoxNzowNlBNICswMDAwLCBNYWNobmlrb3dza2ks
IE1hY2llaiB3cm90ZToNCj4gPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+
ID4gPiA+IEZyb206IElkbyBTY2hpbW1lbCA8aWRvc2NoQGlkb3NjaC5vcmc+DQo+ID4gPiA+ID4g
U2VudDogVGh1cnNkYXksIERlY2VtYmVyIDIsIDIwMjEgMTo0NCBQTQ0KPiA+ID4gPiA+IFRvOiBN
YWNobmlrb3dza2ksIE1hY2llaiA8bWFjaWVqLm1hY2huaWtvd3NraUBpbnRlbC5jb20+DQo+ID4g
PiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2NCBuZXQtbmV4dCAyLzRdIGV0aHRvb2w6IEFkZCBh
YmlsaXR5IHRvIGNvbmZpZ3VyZQ0KPiA+ID4gPiA+IHJlY292ZXJlZCBjbG9jayBmb3IgU3luY0Ug
ZmVhdHVyZQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gT24gV2VkLCBEZWMgMDEsIDIwMjEgYXQgMDc6
MDI6MDZQTSArMDEwMCwgTWFjaWVqIE1hY2huaWtvd3NraQ0KPiB3cm90ZToNCj4gPiA+ID4gPiBM
b29raW5nIGF0IHRoZSBkaWFncmFtIGZyb20gdGhlIHByZXZpb3VzIHN1Ym1pc3Npb24gWzFdOg0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+ID4gPiA+ID4gICAgICAg
4pSCIFJYICAgICAgIOKUgiBUWCAgICAgICDilIINCj4gPiA+ID4gPiAgIDEgICDilIIgcG9ydHMg
ICAg4pSCIHBvcnRzICAgIOKUgiAxDQo+ID4gPiA+ID4gICDilIDilIDilIDilrrilJzilIDilIDi
lIDilIDilIDilJAgICAg4pSCICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKWug0KPiA+ID4g
PiA+ICAgMiAgIOKUgiAgICAg4pSCICAgIOKUgiAgICAgICAgICDilIIgMg0KPiA+ID4gPiA+ICAg
4pSA4pSA4pSA4pa64pSc4pSA4pSA4pSA4pSQIOKUgiAgICDilIIgICAgICAgICAg4pSc4pSA4pSA
4pSA4pSA4pSA4pa6DQo+ID4gPiA+ID4gICAzICAg4pSCICAg4pSCIOKUgiAgICDilIIgICAgICAg
ICAg4pSCIDMNCj4gPiA+ID4gPiAgIOKUgOKUgOKUgOKWuuKUnOKUgOKUkCDilIIg4pSCICAgIOKU
giAgICAgICAgICDilJzilIDilIDilIDilIDilIDilroNCj4gPiA+ID4gPiAgICAgICDilIIg4pa8
IOKWvCDilrwgICAg4pSCICAgICAgICAgIOKUgg0KPiA+ID4gPiA+ICAgICAgIOKUgiDilIDilIDi
lIDilIDilIDilIAgICDilIIgICAgICAgICAg4pSCDQo+ID4gPiA+ID4gICAgICAg4pSCIFxfX19f
LyAgIOKUgiAgICAgICAgICDilIINCj4gPiA+ID4gPiAgICAgICDilJTilIDilIDilLzilIDilIDi
lLzilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCj4gPiA+
ID4gPiAgICAgICAgIDHilIIgMuKUgiAgICAgICAg4payDQo+ID4gPiA+ID4gIFJDTEsgb3V04pSC
ICDilIIgICAgICAgIOKUgiBUWCBDTEsgaW4NCj4gPiA+ID4gPiAgICAgICAgICDilrwgIOKWvCAg
ICAgICAg4pSCDQo+ID4gPiA+ID4gICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUkA0KPiA+ID4gPiA+ICAgICAgICDilIIgICAgICAg
ICAgICAgICAgIOKUgg0KPiA+ID4gPiA+ICAgICAgICDilIIgICAgICAgU0VDICAgICAgIOKUgg0K
PiA+ID4gPiA+ICAgICAgICDilIIgICAgICAgICAgICAgICAgIOKUgg0KPiA+ID4gPiA+ICAgICAg
ICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lJgNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEdpdmVuIGEgbmV0ZGV2ICgxLCAyIG9yIDMgaW4gdGhl
IGRpYWdyYW0pLCB0aGUgUkNMS19TRVQgbWVzc2FnZQ0KPiBhbGxvd3MNCj4gPiA+ID4gPiBtZSB0
byByZWRpcmVjdCB0aGUgZnJlcXVlbmN5IHJlY292ZXJlZCBmcm9tIHRoaXMgbmV0ZGV2IHRvIHRo
ZSBFRUMNCj4gdmlhDQo+ID4gPiA+ID4gZWl0aGVyIHBpbiAxLCBwaW4gMiBvciBib3RoLg0KPiA+
ID4gPiA+DQo+ID4gPiA+ID4gR2l2ZW4gYSBuZXRkZXYsIHRoZSBSQ0xLX0dFVCBtZXNzYWdlIGFs
bG93cyBtZSB0byBxdWVyeSB0aGUgcmFuZ2UNCj4gb2YNCj4gPiA+ID4gPiBwaW5zIChSQ0xLIG91
dCAxLTIgaW4gdGhlIGRpYWdyYW0pIHRocm91Z2ggd2hpY2ggdGhlIGZyZXF1ZW5jeSBjYW4NCj4g
YmUNCj4gPiA+ID4gPiBmZWQgaW50byB0aGUgRUVDLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gUXVl
c3Rpb25zOg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gMS4gVGhlIHF1ZXJ5IGZvciBhbGwgdGhlIGFi
b3ZlIG5ldGRldnMgd2lsbCByZXR1cm4gdGhlIHNhbWUgcmFuZ2Ugb2YNCj4gPiA+ID4gPiBwaW5z
LiBIb3cgZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhhdCB0aGVzZSBhcmUgdGhlIHNhbWUgcGlucz8g
VGhhdA0KPiBpcywNCj4gPiA+ID4gPiBob3cgZG9lcyB1c2VyIHNwYWNlIGtub3cgdGhhdCBSQ0xL
X1NFVCBtZXNzYWdlIHRvIHJlZGlyZWN0IHRoZQ0KPiA+ID4gZnJlcXVlbmN5DQo+ID4gPiA+ID4g
cmVjb3ZlcmVkIGZyb20gbmV0ZGV2IDEgdG8gcGluIDEgd2lsbCBiZSBvdmVycmlkZGVuIGJ5IHRo
ZSBzYW1lDQo+ID4gPiBtZXNzYWdlDQo+ID4gPiA+ID4gYnV0IGZvciBuZXRkZXYgMj8NCj4gPiA+
ID4NCj4gPiA+ID4gV2UgZG9uJ3QgaGF2ZSBhIHdheSB0byBkbyBzbyByaWdodCBub3cuIFdoZW4g
d2UgaGF2ZSBFRUMgc3Vic3lzdGVtDQo+IGluDQo+ID4gPiBwbGFjZQ0KPiA+ID4gPiB0aGUgcmln
aHQgdGhpbmcgdG8gZG8gd2lsbCBiZSB0byBhZGQgRUVDIGlucHV0IGluZGV4IGFuZCBFRUMgaW5k
ZXggYXMNCj4gPiA+IGFkZGl0aW9uYWwNCj4gPiA+ID4gYXJndW1lbnRzDQo+ID4gPiA+DQo+ID4g
PiA+ID4gMi4gSG93IGRvZXMgdXNlciBzcGFjZSBrbm93IHRoZSBtYXBwaW5nIGJldHdlZW4gYSBu
ZXRkZXYgYW5kIGFuDQo+ID4gPiBFRUM/DQo+ID4gPiA+ID4gVGhhdCBpcywgaG93IGRvZXMgdXNl
ciBzcGFjZSBrbm93IHRoYXQgUkNMS19TRVQgbWVzc2FnZSBmb3IgbmV0ZGV2DQo+IDENCj4gPiA+
ID4gPiB3aWxsIGNhdXNlIHRoZSBUeCBmcmVxdWVuY3kgb2YgbmV0ZGV2IDIgdG8gY2hhbmdlIGFj
Y29yZGluZyB0byB0aGUNCj4gPiA+ID4gPiBmcmVxdWVuY3kgcmVjb3ZlcmVkIGZyb20gbmV0ZGV2
IDE/DQo+ID4gPiA+DQo+ID4gPiA+IERpdHRvIC0gY3VycmVudGx5IHdlIGRvbid0IGhhdmUgYW55
IGVudGl0eSB0byBsaW5rIHRoZSBwaW5zIHRvIEFUTSwNCj4gPiA+ID4gYnV0IHdlIGNhbiBhZGRy
ZXNzIHRoYXQgaW4gdXNlcnNwYWNlIGp1c3QgbGlrZSBQVFAgcGlucyBhcmUgdXNlZCBub3cNCj4g
PiA+ID4NCj4gPiA+ID4gPiAzLiBJZiB1c2VyIHNwYWNlIHNlbmRzIHR3byBSQ0xLX1NFVCBtZXNz
YWdlcyB0byByZWRpcmVjdCB0aGUNCj4gZnJlcXVlbmN5DQo+ID4gPiA+ID4gcmVjb3ZlcmVkIGZy
b20gbmV0ZGV2IDEgdG8gUkNMSyBvdXQgMSBhbmQgZnJvbSBuZXRkZXYgMiB0byBSQ0xLIG91dA0K
PiAyLA0KPiA+ID4gPiA+IGhvdyBkb2VzIGl0IGtub3cgd2hpY2ggcmVjb3ZlcmVkIGZyZXF1ZW5j
eSBpcyBhY3R1YWxseSB1c2VkIGFuIGlucHV0DQo+IHRvDQo+ID4gPiA+ID4gdGhlIEVFQz8NCj4g
PiA+DQo+ID4gPiBVc2VyIHNwYWNlIGRvZXNuJ3Qga25vdyB0aGlzIGFzIHdlbGw/DQo+ID4NCj4g
PiBJbiBjdXJyZW50IG1vZGVsIGl0IGNhbiBjb21lIGZyb20gdGhlIGNvbmZpZyBmaWxlLiBPbmNl
IHdlIGltcGxlbWVudCBEUExMDQo+ID4gc3Vic3lzdGVtIHdlIGNhbiBpbXBsZW1lbnQgY29ubmVj
dGlvbiBiZXR3ZWVuIHBpbnMgYW5kIERQTExzIGlmIHRoZXkNCj4gYXJlDQo+ID4ga25vd24uDQo+
IA0KPiBUbyBiZSBjbGVhciwgbm8gU3luY0UgcGF0Y2hlcyBzaG91bGQgYmUgYWNjZXB0ZWQgYmVm
b3JlIHdlIGhhdmUgYSBEUExMDQo+IHN1YnN5c3RlbSBvciBob3dldmVyIHRoZSBzdWJzeXN0ZW0g
dGhhdCB3aWxsIG1vZGVsIHRoZSBFRUMgaXMgZ29pbmcgdG8NCj4gYmUgY2FsbGVkLg0KPiANCj4g
WW91IGFyZSBhc2tpbmcgdXMgdG8gYnV5IGludG8gYSBuZXcgdUFQSSB0aGF0IGNhbiBuZXZlciBi
ZSByZW1vdmVkLiBXZQ0KPiBwb2ludGVkIG91dCBudW1lcm91cyBwcm9ibGVtcyB3aXRoIHRoaXMg
dUFQSSBhbmQgc3VnZ2VzdGVkIGEgbW9kZWwgdGhhdA0KPiBzb2x2ZXMgdGhlbS4gV2hlbiBhc2tl
ZCB3aHkgaXQgY2FuJ3Qgd29yayB3ZSBhcmUgYW5zd2VyZWQgd2l0aCB2YWd1ZQ0KPiBhcmd1bWVu
dHMgYWJvdXQgdGhpcyBtb2RlbCBiZWluZyAiaGFyZCIuDQoNCk15IGFyZ3VtZW50IHdhcyBuZXZl
ciAiaXQncyBoYXJkIiAtIHRoZSBhbnN3ZXIgaXMgd2UgbmVlZCBib3RoIEFQSXMuDQoNCj4gSW4g
YWRkaXRpb24sIHdpdGhvdXQgYSByZXByZXNlbnRhdGlvbiBvZiB0aGUgRUVDLCB0aGVzZSBwYXRj
aGVzIGhhdmUgbm8NCj4gdmFsdWUgZm9yIHVzZXIgc3BhY2UuIFRoZXkgYmFzaWNhbGx5IGFsbG93
IHVzZXIgc3BhY2UgdG8gcmVkaXJlY3QgdGhlDQo+IHJlY292ZXJlZCBmcmVxdWVuY3kgZnJvbSBh
IG5ldGRldiB0byBhbiBvYmplY3QgdGhhdCBkb2VzIG5vdCBleGlzdC4NCj4gVXNlciBzcGFjZSBk
b2Vzbid0IGtub3cgaWYgdGhlIG9iamVjdCBpcyBzdWNjZXNzZnVsbHkgdHJhY2tpbmcgdGhlDQo+
IGZyZXF1ZW5jeSAodGhlIEVFQyBzdGF0ZSkgYW5kIGRvZXMgbm90IGtub3cgd2hpY2ggb3RoZXIg
Y29tcG9uZW50cyBhcmUNCj4gdXRpbGl6aW5nIHRoaXMgcmVjb3ZlcmVkIGZyZXF1ZW5jeSBhcyBp
bnB1dCAoZS5nLiwgb3RoZXIgbmV0ZGV2cywgUEhDKS4NCg0KVGhhdCdzIGFsc28gbm90IHRydWUg
LSB0aGUgcHJvcG9zZWQgdUFQSSBsZXRzIHlvdSBlbmFibGUgcmVjb3ZlcmVkIGZyZXF1ZW5jeQ0K
b3V0cHV0IHBpbnMgYW5kIHJlZGlyZWN0IHRoZSByaWdodCBjbG9jayB0byB0aGVtLiBJbiBzb21l
IGltcGxlbWVudGF0aW9ucw0KeW91IG1heSBub3QgaGF2ZSBhbnl0aGluZyBlbHNlLg0KDQo+IEJU
Vywgd2hhdCBpcyB0aGUgdXNlIGNhc2UgZm9yIGVuYWJsaW5nIHR3byBFRUMgaW5wdXRzIHNpbXVs
dGFuZW91c2x5Pw0KPiBTb21lIHNlYW1sZXNzIGZhaWxvdmVyPw0KDQpNYWlubHkgLSByZWR1bmRh
Y3kNCg0KPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiA0LiBXaHkgdGhlc2UgcGlucyBhcmUgcmVw
cmVzZW50ZWQgYXMgYXR0cmlidXRlcyBvZiBhIG5ldGRldiBhbmQgbm90DQo+IGFzDQo+ID4gPiA+
ID4gYXR0cmlidXRlcyBvZiB0aGUgRUVDPyBUaGF0IGlzLCB3aHkgYXJlIHRoZXkgcmVwcmVzZW50
ZWQgYXMgb3V0cHV0DQo+IHBpbnMNCj4gPiA+ID4gPiBvZiB0aGUgUEhZIGFzIG9wcG9zZWQgdG8g
aW5wdXQgcGlucyBvZiB0aGUgRUVDPw0KPiA+ID4gPg0KPiA+ID4gPiBUaGV5IGFyZSAyIHNlcGFy
YXRlIGJlaW5ncy4gUmVjb3ZlcmVkIGNsb2NrIG91dHB1dHMgYXJlIGNvbnRyb2xsZWQNCj4gPiA+
ID4gc2VwYXJhdGVseSBmcm9tIEVFQyBpbnB1dHMuDQo+ID4gPg0KPiA+ID4gU2VwYXJhdGUgaG93
PyBXaGF0IGRvZXMgaXQgbWVhbiB0aGF0IHRoZXkgYXJlIGNvbnRyb2xsZWQgc2VwYXJhdGVseT8g
SW4NCj4gPiA+IHdoaWNoIHNlbnNlPyBUaGF0IHJlZGlyZWN0aW9uIG9mIHJlY292ZXJlZCBmcmVx
dWVuY3kgdG8gcGluIGlzDQo+ID4gPiBjb250cm9sbGVkIHZpYSBQSFkgcmVnaXN0ZXJzIHdoZXJl
YXMgcHJpb3JpdHkgc2V0dGluZyBiZXR3ZWVuIEVFQyBpbnB1dHMNCj4gPiA+IGlzIGNvbnRyb2xs
ZWQgdmlhIEVFQyByZWdpc3RlcnM/IElmIHNvLCB0aGlzIGlzIGFuIGltcGxlbWVudGF0aW9uIGRl
dGFpbA0KPiA+ID4gb2YgYSBzcGVjaWZpYyBkZXNpZ24uIEl0IGlzIG5vdCBvZiBhbnkgaW1wb3J0
YW5jZSB0byB1c2VyIHNwYWNlLg0KPiA+DQo+ID4gVGhleSBiZWxvbmcgdG8gZGlmZmVyZW50IGRl
dmljZXMuIEVFQyByZWdpc3RlcnMgYXJlIHBoeXNpY2FsbHkgaW4gdGhlIERQTEwNCj4gPiBoYW5n
aW5nIG92ZXIgSTJDIGFuZCByZWNvdmVyZWQgY2xvY2tzIGFyZSBpbiB0aGUgUEhZL2ludGVncmF0
ZWQgUEhZIGluDQo+ID4gdGhlIE1BQy4gRGVwZW5kaW5nIG9uIHN5c3RlbSBhcmNoaXRlY3R1cmUg
eW91IG1heSBoYXZlIGNvbnRyb2wgb3Zlcg0KPiA+IG9uZSBwaWVjZSBvbmx5DQo+IA0KPiBUaGVz
ZSBhcmUgaW1wbGVtZW50YXRpb24gZGV0YWlscyBvZiBhIHNwZWNpZmljIGRlc2lnbiBhbmQgc2hv
dWxkIG5vdA0KPiBpbmZsdWVuY2UgdGhlIGRlc2lnbiBvZiB0aGUgdUFQSS4gVGhlIHVBUEkgc2hv
dWxkIGJlIGluZmx1ZW5jZWQgYnkgdGhlDQo+IGxvZ2ljYWwgdGFzayB0aGF0IGl0IGlzIHRyeWlu
ZyB0byBhY2hpZXZlLg0KDQpUaGVyZSBhcmUgMiBsb2dpY2FsIHRhc2tzOg0KMS4gRW5hYmxlIGNs
b2NrcyB0aGF0IGFyZSByZWNvdmVyZWQgZnJvbSBhIHNwZWNpZmljIG5ldGRldg0KMi4gQ29udHJv
bCB0aGUgRUVDDQoNClRoZXkgYXJlIGJvdGggbmVlZGVkIHRvIGdldCB0byB0aGUgZnVsbCBzb2x1
dGlvbiwgYnV0IGFyZSBpbmRlcGVuZGVudCBmcm9tIA0KZWFjaCBvdGhlci4gWW91IGNhbid0IHB1
dCBSQ0xLIHJlZGlyZWN0aW9uIHRvIHRoZSBFRUMgYXMgaXQncyBvbmUgdG8gbWFueSANCnJlbGF0
aW9uIGFuZCB5b3Ugd2lsbCBuZWVkIHRvIGNhbGwgdGhlIG5ldGRldiB0byBlbmFibGUgaXQgYW55
d2F5Lg0KDQpBbHNvLCB3aGVuIHdlIHRyaWVkIHRvIGFkZCBFRUMgc3RhdGUgdG8gUFRQIHN1YnN5
c3RlbSB0aGUgYW5zd2VyIHdhcw0KdGhhdCB3ZSBjYW4ndCBtaXggc3Vic3lzdGVtcy4gVGhlIHBy
b3Bvc2FsIHRvIGNvbmZpZ3VyZSByZWNvdmVyZWQNCmNsb2NrcyAgdGhyb3VnaCBFRUMgd291bGQg
bWl4IG5ldGRldiB3aXRoIEVFQy4NCg0KPiA+DQo+ID4gPiA+IElmIHdlIG1peCB0aGVtIGl0J2xs
IGJlIGhhcmQgdG8gY29udHJvbCBldmVyeXRoaW5nIGVzcGVjaWFsbHkgdGhhdCBhDQo+ID4gPiA+
IHNpbmdsZSBFRUMgY2FuIHN1cHBvcnQgbXVsdGlwbGUgZGV2aWNlcy4NCj4gPiA+DQo+ID4gPiBI
YXJkIGhvdz8gUGxlYXNlIHByb3ZpZGUgY29uY3JldGUgZXhhbXBsZXMuDQo+ID4NCj4gPiBGcm9t
IHRoZSBFRUMgcGVyc3BlY3RpdmUgaXQncyBvbmUgdG8gbWFueSByZWxhdGlvbiAtIG9uZSBFRUMg
aW5wdXQgcGluIHdpbGwNCj4gc2VydmUNCj4gPiBldmVuIDQsMTYsNDggbmV0ZGV2cy4gSSBkb24n
dCBzZWUgZWFzeSB3YXkgb2Ygc3RhcnRpbmcgZnJvbSBFRUMgaW5wdXQgb2YgRUVDDQo+IGRldmlj
ZQ0KPiA+IGFuZCBmaWd1cmluZyBvdXQgd2hpY2ggbmV0ZGV2cyBhcmUgY29ubmVjdGVkIHRvIGl0
IHRvIHRhbGsgdG8gdGhlIHJpZ2h0IG9uZS4NCj4gPiBJbiBjdXJyZW50IG1vZGVsIGl0J3MgYXMg
c2ltcGxlIGFzOg0KPiA+IC0gSSByZWNlaXZlZCBRTC1QUkMgb24gbmV0ZGV2IGVuczRmMA0KPiA+
IC0gSSBzZW5kIGJhY2sgZW5hYmxlIHJlY292ZXJlZCBjbG9jayBvbiBwaW4gMCBvZiB0aGUgZW5z
NGYwDQo+ID4gLSBnbyB0byBFRUMgdGhhdCB3aWxsIGJlIGxpbmtlZCB0byBpdA0KPiA+IC0gc2Vl
IHRoZSBzdGF0ZSBvZiBpdCAtIGlmIGl0cyBsb2NrZWQgLSByZXBvcnQgUUwtRUVDIGRvd25zdGVh
bQ0KPiA+DQo+ID4gSG93IHdvdWxkIHlvdSB0aGlzIGNvbnRyb2wgbG9vayBpbiB0aGUgRUVDL0RQ
TEwgaW1wbGVtZW50YXRpb24/IE1heWJlDQo+ID4gSSBtaXNzZWQgc29tZXRoaW5nLg0KPiANCj4g
UGV0ciBhbHJlYWR5IHJlcGxpZWQuDQoNClNlZSBteSByZXNwb25zZSB0aGVyZS4gDQoNCj4gPg0K
PiA+ID4gV2hhdCBkbyB5b3UgbWVhbiBieSAibXVsdGlwbGUgZGV2aWNlcyI/IEEgbXVsdGktcG9y
dCBhZGFwdGVyIHdpdGggYQ0KPiA+ID4gc2luZ2xlIEVFQyBvciBzb21ldGhpbmcgZWxzZT8NCj4g
Pg0KPiA+IE11bHRpcGxlIE1BQ3MgdGhhdCB1c2UgYSBzaW5nbGUgRUVDIGNsb2NrLg0KPiA+DQo+
ID4gPiA+IEFsc28gaWYgd2UgbWFrZSB0aG9zZSBwaW5zIGF0dHJpYnV0ZXMgb2YgdGhlIEVFQyBp
dCdsbCBiZWNvbWUgZXh0cmVtYWxseQ0KPiA+ID4gaGFyZA0KPiA+ID4gPiB0byBtYXAgdGhlbSB0
byBuZXRkZXZzIGFuZCBjb250cm9sIHRoZW0gZnJvbSB0aGUgdXNlcnNwYWNlIGFwcCB0aGF0DQo+
IHdpbGwNCj4gPiA+ID4gcmVjZWl2ZSB0aGUgRVNNQyBtZXNzYWdlIHdpdGggYSBnaXZlbiBRTCBs
ZXZlbCBvbiBuZXRkZXYgWC4NCj4gPiA+DQo+ID4gPiBIYXJkIGhvdz8gV2hhdCBpcyB0aGUgcHJv
YmxlbSB3aXRoIHNvbWV0aGluZyBsaWtlOg0KPiA+ID4NCj4gPiA+ICMgZWVjIHNldCBzb3VyY2Ug
MSB0eXBlIG5ldGRldiBkZXYgc3dwMQ0KPiA+ID4NCj4gPiA+IFRoZSBFRUMgb2JqZWN0IHNob3Vs
ZCBiZSByZWdpc3RlcmVkIGJ5IHRoZSBzYW1lIGVudGl0eSB0aGF0IHJlZ2lzdGVycw0KPiA+ID4g
dGhlIG5ldGRldnMgd2hvc2UgVHggZnJlcXVlbmN5IGlzIGNvbnRyb2xsZWQgYnkgdGhlIEVFQywg
dGhlIE1BQw0KPiBkcml2ZXIuDQo+ID4NCj4gPiBCdXQgdGhlIEVFQyBvYmplY3QgbWF5IG5vdCBi
ZSBjb250cm9sbGVkIGJ5IHRoZSBNQUMgLSBpbiB3aGljaCBjYXNlDQo+ID4gdGhpcyBtb2RlbCB3
b24ndCB3b3JrLg0KPiANCj4gV2h5IHdvdWxkbid0IGl0IHdvcms/IExlYXZlIGluZGl2aWR1YWwg
a2VybmVsIG1vZHVsZXMgYWxvbmUgYW5kIGxvb2sgYXQNCj4gdGhlIGtlcm5lbC4gSXQgaXMgcmVn
aXN0ZXJpbmcgYWxsIHRoZSBuZWNlc3NhcnkgbG9naWNhbCBvYmplY3RzIHN1Y2gNCj4gbmV0ZGV2
cywgUEhDcyBhbmQgRUVDcy4gVGhlcmUgaXMgbm8gd2F5IHVzZXIgc3BhY2Uga25vd3MgYmV0dGVy
IHRoYW4gdGhlDQo+IGtlcm5lbCBob3cgdGhlc2Ugb2JqZWN0cyBmaXQgdG9nZXRoZXIgYXMgdGhl
IHB1cnBvc2Ugb2YgdGhlIGtlcm5lbCBpcyB0bw0KPiBhYnN0cmFjdCB0aGUgaGFyZHdhcmUgdG8g
dXNlciBzcGFjZS4NCj4gDQo+IFVzZXIgc3BhY2UncyByZXF1ZXN0IHRvIHVzZSB0aGUgUnggZnJl
cXVlbmN5IHJlY292ZXJlZCBmcm9tIG5ldGRldiBYIGFzDQo+IGFuIGlucHV0IHRvIEVFQyBZIHdp
bGwgYmUgcHJvY2Vzc2VkIGJ5IHRoZSBEUExMIHN1YnN5c3RlbS4gSW4gdHVybiwgdGhpcw0KPiBz
dWJzeXN0ZW0gd2lsbCBpbnZva2Ugd2hpY2hldmVyIGtlcm5lbCBtb2R1bGVzIGl0IG5lZWRzIHRv
IGZ1bGZpbGwgdGhlDQo+IHJlcXVlc3QuDQoNCkJ1dCBob3cgd291bGQgdGhhdCBjYWxsIGdvIHRo
cm91Z2ggdGhlIGtlcm5lbD8gV2hhdCB3b3VsZCB5b3UgbGlrZSB0byBnaXZlDQp0byB0aGUgRUVD
IG9iamVjdCBhbmQgaG93IHNob3VsZCBpdCByZWFjdC4gSSdtIGZpbmUgd2l0aCB0aGUgY2hhbmdl
cywgYnV0DQpJIGRvbid0IHNlZSB0aGUgc29sdXRpb24gaW4gdGhhdCBwcm9wb3NhbCBhbmQgdGhp
cyBtb2RlbCB3b3VsZCBtaXggaW5kZXBlbmRlbnQNCnN1YnN5c3RlbXMuDQpUaGUgbmV0ZGV2IC0+
IEVFQyBzaG91bGQgYmUgYSBkb3duc3RyZWFtIHJlbGF0aW9uLCBqdXN0IGxpa2UgdGhlIFBUUCBp
cyBub3cNCklmIGEgbmV0ZGV2IHdhbnRzIHRvIGNoZWNrIHdoYXQncyB0aGUgc3RhdGUgb2YgRUVD
IGRyaXZpbmcgaXQgLSBpdCBjYW4gZG8gaXQsIGJ1dA0KSSBkb24ndCBzZWUgYSB3YXkgZm9yIHRo
ZSBFRUMgc3Vic3lzdGVtIHRvIGRpcmVjdGx5IGNvbmZpZ3VyZSBzb21ldGhpbmcgaW4NClBvdGVu
dGlhbGx5IGNvdXBsZSBkaWZmZXJlbnQgTUFDIGNoaXBzIHdpdGhvdXQgY2FsbGluZyBhIGtpbmQg
b2YgbmV0ZGV2IEFQSS4NCkFuZCB0aGF0J3Mgd2hhdCB0aG9zZSBwYXRjaGVzIGFkZHJlc3MuDQoN
Cj4gPg0KPiA+ID4gPg0KPiA+ID4gPiA+IDUuIFdoYXQgaXMgdGhlIHByb2JsZW0gd2l0aCB0aGUg
Zm9sbG93aW5nIG1vZGVsPw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gLSBUaGUgRUVDIGlzIGEgc2Vw
YXJhdGUgb2JqZWN0IHdpdGggZm9sbG93aW5nIGF0dHJpYnV0ZXM6DQo+ID4gPiA+ID4gICAqIFN0
YXRlOiBJbnZhbGlkIC8gRnJlZXJ1biAvIExvY2tlZCAvIGV0Yw0KPiA+ID4gPiA+ICAgKiBTb3Vy
Y2VzOiBOZXRkZXYgLyBleHRlcm5hbCAvIGV0Yw0KPiA+ID4gPiA+ICAgKiBQb3RlbnRpYWxseSBt
b3JlDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAtIE5vdGlmaWNhdGlvbnMgYXJlIGVtaXR0ZWQgdG8g
dXNlciBzcGFjZSB3aGVuIHRoZSBzdGF0ZSBvZiB0aGUgRUVDDQo+ID4gPiA+ID4gICBjaGFuZ2Vz
LiBEcml2ZXJzIHdpbGwgZWl0aGVyIHBvbGwgdGhlIHN0YXRlIGZyb20gdGhlIGRldmljZSBvciBn
ZXQNCj4gPiA+ID4gPiAgIGludGVycnVwdHMNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IC0gVGhlIG1h
cHBpbmcgZnJvbSBuZXRkZXYgdG8gRUVDIGlzIHF1ZXJpZWQgdmlhIGV0aHRvb2wNCj4gPiA+ID4N
Cj4gPiA+ID4gWWVwIC0gdGhhdCB3aWxsIGJlIHBhcnQgb2YgdGhlIEVFQyAoRFBMTCkgc3Vic3lz
dGVtDQo+ID4gPg0KPiA+ID4gVGhpcyBtb2RlbCBhdm9pZHMgYWxsIHRoZSBwcm9ibGVtcyBJIHBv
aW50ZWQgb3V0IGluIHRoZSBjdXJyZW50DQo+ID4gPiBwcm9wb3NhbC4NCj4gPg0KPiA+IFRoYXQn
cyB0aGUgZ28tdG8gbW9kZWwsIGJ1dCBmaXJzdCB3ZSBuZWVkIGNvbnRyb2wgb3ZlciB0aGUgc291
cmNlIGFzIHdlbGwgOikNCj4gDQo+IFRoZSBwb2ludCB0aGF0IHdlIGFyZSB0cnlpbmcgdG8gbWFr
ZSBpcyB0aGF0IGxpa2UgdGhlIEVFQyBzdGF0ZSwgdGhlDQo+IHNvdXJjZSBpcyBhbHNvIGFuIEVF
QyBhdHRyaWJ1dGUgYW5kIG5vdCBhIG5ldGRldiBhdHRyaWJ1dGUuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
