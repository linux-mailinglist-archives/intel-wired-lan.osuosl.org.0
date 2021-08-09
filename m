Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A873E4770
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 16:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25AA182A5D;
	Mon,  9 Aug 2021 14:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSQIe8CZ9n2J; Mon,  9 Aug 2021 14:22:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C5E882A4E;
	Mon,  9 Aug 2021 14:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2C121BF3DE
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 14:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC353400EA
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 14:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBqsz8yqP_CH for <intel-wired-lan@osuosl.org>;
 Mon,  9 Aug 2021 14:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CB77400CE
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 14:22:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="201875378"
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="201875378"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 07:22:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="483421130"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 09 Aug 2021 07:22:48 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 9 Aug 2021 07:22:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 9 Aug 2021 07:22:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 9 Aug 2021 07:22:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQo+3CBaWrf7YZiNpSU+HOjHHo4N26+c4CAJluaCacHRLvGr14vA5PS7JS3scSAXnzawFOL6XGkikKt39Rye6Ktz5zngy775Rx+kZdnzxFL7Y0SNam76r6OIbX7gb7LW7PaAUt6M1YSxm2fXvsD3go1HGoSZthUCa8TI0vOUmq6dIA7SpQM1a8Fk7LlMxEiFOKFETpcSAEIQcmMhL5SrE1UFL+9EfdPhpsHAdv8bVQLzy9DtF/wG9xZgd6yjd3PrTsLRWmijVUgrpzPZlbtfnzepN36LucTijZM0ARdulukFD1KcjIkz9svCOlP3U4D8KgZVzoDsr1LZyjfxdsZUeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHCuJWJghbHhoXa0HHCQEu1av7jd70+qzIJiV65Cib4=;
 b=jTOOd1vcUoUyTMP0tyfiQGVmvG8hC/iWCrComBB7jryrdMMV2Sr3U4OIcDDnygs3lIIyzXbHvIacVNKmSArdB+JkiQTJHbCmZu1WHheEK67RNZNP/Eco8udYPR9xEvondugBCg3/Uhr4TqLuz+WhrA7Dih76FdeJGBN1bLOMO5SvvOO1TqIGGICuunA6FjAbY6JHOqwtYZyt1F6SqgsGgSuC0V9cYX7BAikIE/6qnxphQRvaojAy8p/WMwDjtrqdJRlUiIuDZy3cii989vWPWmkWGHbsl+kZAb7ArciznpqfQXl+cU0GTW/C8eiYa+i7PfvYV8GPR0ELvHFRP3ErPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHCuJWJghbHhoXa0HHCQEu1av7jd70+qzIJiV65Cib4=;
 b=Emaa3jjMLwVoGe7YtvryT/DsGdzO2CMQrx+KIlrGFuotXdlt9PiNytiHjXMMniNonqzWsaQvroDMWiAk3mBCBHSFW598xHWaJUuXe0Hx0I7K4WRlS3JaKrzcPsvva4qBV4LY2O6/Dr6+/sNc8y51YzH55di5jmOAtpIZyXW5bCM=
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by MW3PR11MB4619.namprd11.prod.outlook.com (2603:10b6:303:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Mon, 9 Aug
 2021 14:22:47 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::4ce1:c56f:55f:c991]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::4ce1:c56f:55f:c991%4]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 14:22:47 +0000
From: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
To: "jkc@redhat.com" <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero.
Thread-Index: AQHXjR0icOdPpIwjq0KusbEgNPnqB6trNjcA
Date: Mon, 9 Aug 2021 14:22:46 +0000
Message-ID: <3c15dd1fe7eb55bf144e9034d877c366d5871654.camel@intel.com>
References: <20210809125003.679140-1-jkc@redhat.com>
In-Reply-To: <20210809125003.679140-1-jkc@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7d46314-af60-43b9-1f4d-08d95b412927
x-ms-traffictypediagnostic: MW3PR11MB4619:
x-microsoft-antispam-prvs: <MW3PR11MB4619A087B8E1806BFD9E3A0490F69@MW3PR11MB4619.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7hPq8A3Kt6nrkmxQhmC5vypITV/4RxIRGNhyPIFENsAT7CNQybQxe4kxWaQkBhcCC7qpcQAsXheoqdE3SRfyKX0g7nYMd85siME0Mha+9nacEWOOOgEp1R8H24zkCFBMMVGMZjMQRfWVn+Rs67U6OcL7wlbm1HTa5/mMBb0r2iMJoYtlIKF1DP+alStt0RdXhF+cuFMItgZAxnTPJNAVPmT57Ws215jfua22BTg10eaOWRm1UCf2KuLF6gXg4Lg91zBvV0NxQMTW1u2tXNcVLJxD7DSscwKJPVM9WFHSx9mZc8t+bofmOm6+fCIpQNpiTcLSvLKfMfrrfleL93Mt0GWaPM4gfIb+lFsbyswi5C50NaqaSRzIxOMeoSMFBd4I3FCvtsYbHZoEBhgRVh0UbcatWDFXn5noGWA9FlKFefWzq+86i6Jy9bZRTEhjCDfOWoSk+QMkrZ4ssLn6lDPd6dPAucUul1o4KOF1WXGC8+JnOEX5xjN32BiS/HQT6xNDMLaBBxCD8P8Ub10XX2SMkW52okGVAJtTKvLAmNVBIfHqkJm3RADiYzpvwxBpryTrUTWyessEcI3JNNLrdpCkoQZSeKLVbiDHOHG1uRhDa/JHuUvnPAT9J7oTKkNJnJ0h57XtTzZMRSBbAfaSuNq8gvMsENChC6GzKB+489StQD/OR0RiZxSnjY79LIZgvj5bIkg204yYbnX4Da87Dw6bUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39860400002)(346002)(376002)(110136005)(6486002)(478600001)(8936002)(316002)(76116006)(66946007)(2906002)(83380400001)(2616005)(122000001)(26005)(66476007)(66556008)(64756008)(6506007)(86362001)(66446008)(36756003)(38100700002)(8676002)(71200400001)(6512007)(186003)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djNPZUthemVQN2k4dHZGYTBVTWgxb2dpQmlhYVJLbUFNUitUZTg5N2NLVFBk?=
 =?utf-8?B?aXVsbGc5dCtCcldveWkzcGU5V0g2TFRQWEc4UkZZdUp6dGlzR09Ld1FpYzg4?=
 =?utf-8?B?NHRneWdWa2grS2h5TFNtbWdZYTU5c3VtVmxqa0NuZjhVRWRsNWhJSS9LTXEw?=
 =?utf-8?B?Ym5GcVRnT2NHVXJCWmEwdUU1eDZhU0NzY1AvTXlBajhJLzJ6c015eFJzQVpO?=
 =?utf-8?B?YmxzekJRNWRYeHhIUExhSnVsTGRBdEZaNlB6elk1Q0NwRE1McDFHNFk1ZnpI?=
 =?utf-8?B?WjBtbDU5ZTRVdmgzWWNpZTlmQjlENlg3K0E1OEVRRE1hY3poSVE4RFhoYlNR?=
 =?utf-8?B?SnRYdGVoOGJZUDZGRWpHbFUwb00vNyt5aGVDYUNTUk54TEJsNkNGNzB0bTN0?=
 =?utf-8?B?dTcxNVEzdUFzc2VkWFdIdFZMaytPUVFqN3hSTjZRL3JlaXM4QmQ0REpxV2Jx?=
 =?utf-8?B?VWFqRmV1b1NYVFY3UW1EUEVzTlZjTWF5d3J1TWJST0RnRXppdzRyeVg0OW41?=
 =?utf-8?B?OEY4VmZmWlhtSkVKQUNwbnBQd1U2d0FpcWJBTmRvT0R3NnpSTTZ4bk1oTU5I?=
 =?utf-8?B?bzJkV0dVTnRUS3hXK1QyMC8rSGFZdnRKczMrZEVOUVRPbStDK05PT3VOQjl2?=
 =?utf-8?B?cnZoMTk5K2lSUXNyWkg1dkFONzRTR2c3VXFYYkJRY256MVMyWFpTSkNsYmRn?=
 =?utf-8?B?UVl0QVdFRUJLdG9DZFNDRkNZSzNINTIvb0JsWENydjRGK1Y2eTVOSXFPRWx3?=
 =?utf-8?B?T3NmdFc1Wml2MTNGUTFPd1ZMNnZ2SkYwWUdRVDN1SzRxZTVveDI3VjYwWm50?=
 =?utf-8?B?U1ZNUS9LbE04ZEJrR3VlcnEraTcrM0xYdC9mL0lYQmNKME1qYk1HMk85R2tw?=
 =?utf-8?B?cjQxdXNsZ3p3UGU3UXl6S1Zmc0l6NmNyRjZCMXZGaThlSHFzWGcyVmVWeFE5?=
 =?utf-8?B?WVYvWWhtQUZMbWV6T0twUjRyV3pDYjZZL3VxTWVwNExQYTh6WWVmTmNWQysw?=
 =?utf-8?B?Vm8xVGJqSS9vTjFlRjVWZlc2Q1kzU1NMcVlrZUVzcVpZZVlYeStoNG5YVVlv?=
 =?utf-8?B?N2JRNXRLZ3AxNmlLMXpsQ0JDbjBRUzl1cUttUUE5Mk5mRUwvWEdRbWE4SkFO?=
 =?utf-8?B?VUsrR2NGNTMxZGdlbHNuZFZKaEdySEFCRkR1aWNGaURVYmRMRnNoTE9ud1BD?=
 =?utf-8?B?TXlhUEdYZ1RFM0ZEbTg2UlpSQmtQRDJ6MmpuK2xDSEN1cFNoUDY1YnBhbCtr?=
 =?utf-8?B?R2ZmT0hrblhQcXFjbUgzZDY1cVVrWW40QlhRMTMyeGVyQjBxaXRJd25ueWR6?=
 =?utf-8?B?ck1iZVdGOEJveTBqV1ZvV2t4WC96Rk1jRFJwQWVmaXZYTHVtcEJpTHBkZGhM?=
 =?utf-8?B?eTU5WXR3K0ZBcmFsbEs3MlJzNzZUZ1EyekthcnZyQW9qcTJNODB6bTVOdlV5?=
 =?utf-8?B?cFloVW1iOG4xaXZRbFVMOWswSnh5ZmNTNzdQVUEremFGUGkrdE9ZRWtlcUI0?=
 =?utf-8?B?YmZ5R1RnNFdkekpOQVBldkluQ3poQVBPTFRnUlV2QXM0eTN5OWJCY2RIVXB6?=
 =?utf-8?B?UkxROW42Z3hWYUF3M0JrN0JPV1ZzaHhjNjRmSFJ6TlkwV1pWNGJraDFZd0hR?=
 =?utf-8?B?WjRMWW9mdWRKMk1VejJyU3V1RmhmaUVxZlhaMG5vVXpCaTBEZGxFVGg2ckNa?=
 =?utf-8?B?ZWdOQzZSZUtsRnkzYWFVbk1mWmVEOEZLRFp2Qjc1Qmc1YkJPUUViSy9rOVhM?=
 =?utf-8?Q?20GWAMCA2cObUTPubJJkM4LrFccF9mrWiQux6ow?=
x-ms-exchange-transport-forked: True
Content-ID: <CF4C5B520637CE4F9D31DDC70F0B024D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d46314-af60-43b9-1f4d-08d95b412927
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 14:22:47.0211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9CJzGyySgX9OCLlyJaNndY2rsHVGUIPaepjflT+jz+++Agfj7FjKjhB+J21KuQjbuzVTnjcgzGNJVzMNQl+mWZL3wXfR9eLdIlLsPKJob+7DGt1/fysraajBc9XzbduS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero.
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

T24gTW9uLCAyMDIxLTA4LTA5IGF0IDA3OjUwIC0wNTAwLCBLZW4gQ294IHdyb3RlOg0KPiBJdCBp
cyBwb3NzaWJsZSB0byBkaXNhYmxlIFZGcyB3aGlsZSB0aGUgUEYgZHJpdmVyIGlzIHByb2Nlc3Np
bmcNCj4gcmVxdWVzdHMNCj4gZnJvbSB0aGUgVkYgZHJpdmVyLsKgIFRoaXMgY2FuIHJlc3VsdCBp
biBhIHBhbmljLg0KPiANCj4gQlVHOiB1bmFibGUgdG8gaGFuZGxlIGtlcm5lbCBwYWdpbmcgcmVx
dWVzdCBhdCAwMDAwMDAwMDAwMDAxMDZjDQo+IFBHRCAwIFA0RCAwDQo+IE9vcHM6IDAwMDAgWyMx
XSBTTVAgTk9QVEkNCj4gQ1BVOiA4IFBJRDogMCBDb21tOiBzd2FwcGVyLzggS2R1bXA6IGxvYWRl
ZCBUYWludGVkOiBHwqDCoMKgwqDCoMKgwqDCoMKgIEnCoMKgwqDCoMKgDQo+IC0tLS0tLS0tLSAt
wqAgLQ0KPiBIYXJkd2FyZSBuYW1lOiBEZWxsIEluYy4gUG93ZXJFZGdlIFI3NDAvMDZXWEpULCBC
SU9TIDIuOC4yIDA4LzI3LzIwMjANCj4gUklQOiAwMDEwOml4Z2JlX21zZ190YXNrKzB4NGM4LzB4
MTY5MCBbaXhnYmVdDQo+IENvZGU6IDAwIDAwIDQ4IDhkIDA0IDQwIDQ4IGMxIGUwIDA1IDg5IDdj
IDI0IDI0IDg5IGZkIDQ4IDg5IDQ0IDI0IDEwIDgzDQo+IGZmIDAxIDBmIDg0IGI4IDA0IDAwIDAw
IDRjIDhiIDY0IDI0IDEwIDRkIDAzIGE1IDQ4IDIyIDAwIDAwIDw0MT4gODAgN2MNCj4gMjQgNGMg
MDAgMGYgODQgOGEgMDMgMDAgMDAgMGYgYjcgYzcgODMgZjggMDggMGYgODQgOGYgMGENCj4gUlNQ
OiAwMDE4OmZmZmZiMzM3ODY5ZjhkZjggRUZMQUdTOiAwMDAxMDAwMg0KPiBSQVg6IDAwMDAwMDAw
MDAwMDEwMjAgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDogMDAwMDAwMDAwMDAwMDAyYg0KPiBS
RFg6IDAwMDAwMDAwMDAwMDAwMDIgUlNJOiAwMDAwMDAwMDAwMDAwMDA4IFJESTogMDAwMDAwMDAw
MDAwMDAwNg0KPiBSQlA6IDAwMDAwMDAwMDAwMDAwMDYgUjA4OiAwMDAwMDAwMDAwMDAwMDAyIFIw
OTogMDAwMDAwMDAwMDAyOTc4MA0KPiBSMTA6IDAwMDA2OTU3ZDhmNDI4MzIgUjExOiAwMDAwMDAw
MDAwMDAwMDAwIFIxMjogMDAwMDAwMDAwMDAwMTAyMA0KPiBSMTM6IGZmZmY4YTAwZTg5NzhhYzAg
UjE0OiAwMDAwMDAwMDAwMDAwMDJiIFIxNTogZmZmZjhhMDBlODk3OWM4MA0KPiBGUzrCoCAwMDAw
MDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY4YTA3ZGZkMDAwMDAoMDAwMCkNCj4ga25sR1M6MDAw
MDAwMDAwMDAwMDAwMA0KPiBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAw
MDA4MDA1MDAzMw0KPiBDUjI6IDAwMDAwMDAwMDAwMDEwNmMgQ1IzOiAwMDAwMDAwMDYzZTEwMDA0
IENSNDogMDAwMDAwMDAwMDc3MjZlMA0KPiBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAw
MDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMA0KPiBEUjM6IDAwMDAwMDAwMDAwMDAw
MDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMA0KPiBQS1JVOiA1
NTU1NTU1NA0KPiBDYWxsIFRyYWNlOg0KPiDCoDxJUlE+DQo+IMKgPyB0dHd1X2RvX3dha2V1cCsw
eDE5LzB4MTQwDQo+IMKgPyB0cnlfdG9fd2FrZV91cCsweDFjZC8weDU1MA0KPiDCoD8gaXhnYmV2
Zl91cGRhdGVfeGNhc3RfbW9kZSsweDcxLzB4YzAgW2l4Z2JldmZdDQo+IMKgaXhnYmVfbXNpeF9v
dGhlcisweDE3ZS8weDMxMCBbaXhnYmVdDQo+IMKgX19oYW5kbGVfaXJxX2V2ZW50X3BlcmNwdSsw
eDQwLzB4MTgwDQo+IMKgaGFuZGxlX2lycV9ldmVudF9wZXJjcHUrMHgzMC8weDgwDQo+IMKgaGFu
ZGxlX2lycV9ldmVudCsweDM2LzB4NTMNCj4gwqBoYW5kbGVfZWRnZV9pcnErMHg4Mi8weDE5MA0K
PiDCoGhhbmRsZV9pcnErMHgxYy8weDMwDQo+IMKgZG9fSVJRKzB4NDkvMHhkMA0KPiDCoGNvbW1v
bl9pbnRlcnJ1cHQrMHhmLzB4Zg0KPiANCj4gVGhpcyBjYW4gYmUgZXZlbnR1YWxseSBiZSByZXBy
b2R1Y2VkIHdpdGggdGhlIGZvbGxvd2luZyBzY3JpcHQ6DQo+IA0KPiB3aGlsZSA6DQo+IGRvDQo+
IMKgwqDCoMKgwqDCoMKgwqBlY2hvIDYzID4gL3N5cy9jbGFzcy9uZXQvZW5zM2YwL2RldmljZS9z
cmlvdl9udW12ZnMNCj4gwqDCoMKgwqDCoMKgwqDCoHNsZWVwIDENCj4gwqDCoMKgwqDCoMKgwqDC
oGVjaG8gMCA+IC9zeXMvY2xhc3MvbmV0L2VuczNmMC9kZXZpY2Uvc3Jpb3ZfbnVtdmZzDQo+IMKg
wqDCoMKgwqDCoMKgIHNsZWVwIDENCj4gZG9uZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogS2VuIENv
eCA8amtjQHJlZGhhdC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlLmjCoMKgwqDCoMKgwqAgfCAxICsNCj4gwqBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jIHwgOSArKysrKysrKysNCj4gwqAyIGZpbGVzIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4gDQoNCkFja2VkLWJ5OiBBbmlydWRoIFZlbmthdGFy
YW1hbmFuIDxhbmlydWRoLnZlbmthdGFyYW1hbmFuQGludGVsLmNvbT4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
