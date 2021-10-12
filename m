Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3013F42AF8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 00:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C43CA60C28;
	Tue, 12 Oct 2021 22:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3k81Sli1m0p; Tue, 12 Oct 2021 22:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1CD360C24;
	Tue, 12 Oct 2021 22:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 350E21BF342
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22119401C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dnCk6VgIK-mG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 22:10:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D820400F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:10:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="226057327"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="226057327"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 15:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="442037921"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2021 15:10:15 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:10:15 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:10:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 15:10:14 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 15:10:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y61EFXzSA1WXqDJN+NcMyXTV8yNuLKTV4K2vN7P4NjnP61Xd3EBu90dw4DQZrOWh+lQsxM/UfNgbx5XksWgKBMQNt7DAyUnxwqDHYhojsjOE2o5SJHrbbHLDNaTyUS2EFIG+xVxGEOSSbqArC3fWJe9YDsIZAlVG3jtTzuggfGKYp8jL8pO33bxSDD3mweyVQPso33oSfmZ2AxzEf1S/9K/yvi9iWHwddNj9XvgMwcr8CnodwuHnYr8v5SRF2JPf9Sae0K4cpY3HsBiJBsr47ZJN9TAw8Fm/iWqWkggehI5C/rQk2zRQk1jG/wtQusD1UxNcXF7jqYTvmR2EWrH72Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=93S5q0y7NQeFhfXk3IvAg14nNTbpGXwRnb1LRtN5jS8=;
 b=VntM41ud2u558QIkGvu69iFiGvPWf+AkzKleNJStL3JMM3nou5RWCa2lYgFHTw4bR0nht41M+cOXu8SiNdRPKgNmmZhJsFsRR6L8M84sHoAexWF9eHD2PGCGjXl5xrYqyAj+HeIagAc55z6S4UflJtGek8V5EoXfmBwxQ3bi2h00sinP2Bnja0velGtcSkLqJucHtosdPrCwmJVyZGeTiqDs/I6YkNEExuDeP9YQio3BWMhVi3dtvbbnZzVw4dUcv9v/d/6yQ8i32FLQxJ1P+RH1QLKispTM7LySSQTN8gSnZOQ4IV49a0QydqlJ8oX8vUn/34HjIG0+v8y70LdLbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=93S5q0y7NQeFhfXk3IvAg14nNTbpGXwRnb1LRtN5jS8=;
 b=GRtaLxmkIoIrbhs7iXOIZ5ul2wNjCi7DsdLa08E5huFEAfcQli1XWBF48KLMgxE7TnIR3jaCC5aiHApXQxB36xMs8qbyh211FzT2X0SblLeheRFpIOVAz5XzQtJF0MwJt5otnWYwANlPhyAtwEWcNzUswtaS9CHC1oPqS01M3aY=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4811.namprd11.prod.outlook.com (2603:10b6:806:11d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Tue, 12 Oct
 2021 22:10:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 22:10:13 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when
 setting descriptor count
Thread-Index: AQHXv3L9fHI0GHhWc0SIHRLCCAWBvqvP7HEA
Date: Tue, 12 Oct 2021 22:10:12 +0000
Message-ID: <6309239359306fc8c0260301684ab0168626b239.camel@intel.com>
References: <20211012135245.6979-1-michal.maloszewski@intel.com>
In-Reply-To: <20211012135245.6979-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c28ec6e5-8fa3-4cb6-7b7b-08d98dcd104e
x-ms-traffictypediagnostic: SA2PR11MB4811:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4811D9385CC94D3ECD05C276C6B69@SA2PR11MB4811.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1trJtu19CeJl426Tl335Vgc5AqQ0HskSJu8GK8DZovh42R9tR9Goj1pq9DrNmYeNNB9wC0GVVNpVegAHqNzL/LNtJv1yvq5Ac+ZByD+6jMApjCj3pW/nsCvpBOsz9zt79UveYXIrQQenT1gGh4sEGZbjPo4KwhFggH1t5Coz8hLseeVUpL2kHhuv0JcgD1xZ5dzUK1/q/fs5LQPT5EyUCQvfH3SjX5A6YomcvihImrOymFYP1bTuQWFpbFpTFTCYa41iRIRBZQ1ApXVnCXMngvDus28DFRpp1hBTbWjhJf9R3xd6Dc+O1xl4c2+wMvnn7PCCluH5fFCnCXVnbA4s0KjAYJaAhGVSyfKT46gz0NS5JIvJytP7PKNKaClm+WGyQxFOA7cnWXWdbqKOVqC+ncPoJH/DDI3HL3Lc5LtTCH+eHLyiQ5dPhV9UCmfBkIacRZ5j+OZz6by4jFZxro95wD7MpcvSwU9LL4Uk3JN5NavBOC2LB3zhIR0zC7bAoZDGjc+bDXbErXHRO/iv7+Yp8fvvuDkZRZqHRNfLN/LNQi1yoN1ht9DjNsG29a8dITCX2dZyDDUC+3SDindpT9u3YCrntH+j74b3lFbkXIAAwKGhoDHHA3+NJd2gX8SOAM9gcx036NQkqZd4jODS03uojiS3S//q0a+hhSoM4CmNc5Zq68biu0RTJiMq5UMr9wRX3TU8H1RRfiUzEzeuf781lA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(83380400001)(36756003)(8676002)(66556008)(66946007)(91956017)(6512007)(66446008)(66476007)(64756008)(71200400001)(2906002)(2616005)(76116006)(107886003)(186003)(86362001)(5660300002)(508600001)(110136005)(4326008)(122000001)(38100700002)(6506007)(38070700005)(316002)(4001150100001)(6486002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlNGL2Z2MDh0dTJETFM0MEE2aC85OVNRNWtFWE9xZ3czWVJSVExMclBqandT?=
 =?utf-8?B?MmVUNHFSZ2tzdUNYU1dmZ2I3cHROTlQwaVFmMkE3cHR5RTJVNmlVVy9DYWpP?=
 =?utf-8?B?S0xTM2pZWmxsSjhmOGVlenYxRjliSG9OWENGN3NMdk0yZWp3SXVuWmdNb2RK?=
 =?utf-8?B?ZDVVcW1yNFNISGhCM0h1YzNwNGI2ZThGWVJPMUZ6TGx2WHQ4V1NySG1YWnox?=
 =?utf-8?B?dXVnSFdiZmFqb2MwMEs1aTFSMDBmNGlRODI5Rm1KNTBsV3JNczc2bFZCbVRG?=
 =?utf-8?B?cGtGaUNIK2RiVnRaNGtSeTJyN2pFamtzc3dwaXRSdUlLUGJtM0xXb1F4blRx?=
 =?utf-8?B?SVFtSFlTY2tlNWFpTGRPSnlLNFBmVjNMczczZk9VOUo4VDlBRklZd3VOZjlP?=
 =?utf-8?B?YnJkU09PeDRxSUViYUdJU0JvcCsvU0R3NXNSd2htM2M1TFppMFE5MUJJWXl0?=
 =?utf-8?B?VDg2U0QxMTF0Z2pUSFMvMDhWNFpOZS93aW1ncjlRcGVYcHhBd2k2SE1vekxq?=
 =?utf-8?B?dFhVd3k2TVVGcEdCMnBDZXg5VzJsUmZJSGFjSjVxQ3NzU3ZhNGR3QmQ5ZkpE?=
 =?utf-8?B?anlBTFM0TEtLVGxDZjhaeDZvTElUdnFYMktZY1RkSVhPNHd1QWNVUlI4czBm?=
 =?utf-8?B?aEk1bU4xemZuRHNFRG80cmdyeE04SnFxRkUzVkxjSEtINzVKMFRBZmY0TnRs?=
 =?utf-8?B?Unk5N0NuTEl0UUVhbTNoN0ZWS0JMcFUwRVE5ZmtJMFV6SzRjVWRZZXFud1NI?=
 =?utf-8?B?V2E5cExCMyswSlU5MVYzam1ZTUFaQitwT3crQzJLTm03ai9adWJEL1QxeC9i?=
 =?utf-8?B?VnpZcW1VUnZuU25tcjlnZG1EWVJXUmlkT1NraWsrWm5uenlGdXIvVGR2ZzI4?=
 =?utf-8?B?RXlxMHpiRU1UVHZYK1J2UGcvSTBmU0twcCt0UDBzZHdEVStSanBhb1owTldP?=
 =?utf-8?B?K0dJUUEza3VPTThhaFBpS04yekxkZEQ2MWpTVFpoTHNRT1RWUm1MY21zTHVv?=
 =?utf-8?B?bmR1anZzcGFpRytCeGZDcVY0UTY4Q0FuL2tXQlBTbFlHZ3lNZEc1TG92SFkv?=
 =?utf-8?B?TjY0M3U2Rkx3YjV3bTZKWld1dWlDYlRTM0IzbjdxenVOZHdCVmxKRGFpY1VP?=
 =?utf-8?B?Y0tKMkNPVFFUcVk2aFVnaitsU09VMG1xdlp2aUpXcHJTY0MvdXJ6MEJBS0py?=
 =?utf-8?B?T2pqMFozSHVlU2NCZGlDVDJkMWtDRlE4RE1xeHZTSWRtUW5UVWRPWlk3cTE3?=
 =?utf-8?B?NHlVejRjQXU5bmhkRXphaU1XYnRDdDB3eEUrN0U0ZDZwSUVnT2JEM1VHMlAz?=
 =?utf-8?B?RzBIZEVwTmF0MHRZYnUybUZQTWNXSmV6N2wzeTdqUVNNa0dSaVR0cWJ0ZjRm?=
 =?utf-8?B?U1Z5KzFSQktYTHNMMFFSdzZIcVl2RE1XVnZKWTNmTVNKTnZKdHZCYXlNTDFh?=
 =?utf-8?B?b0RLaTJrSGJBaVR6TmZMMVhUMGZuQUJhL245anBjbEJITW1ZZk5MM2tNR3dW?=
 =?utf-8?B?Q21BMzdSNWxFdnVjME40Yk5xaVVZQ3dVUjU4Yk5YZ1pVSzJjOFBOeXg5a0Yy?=
 =?utf-8?B?MzMrc3dSakVaR0NJRUZlMVBGb1I1YW1HYVljMWxTLzFnazZWQ294QnZSeEJI?=
 =?utf-8?B?REdUaWhvTmd3QytnY1kzbkVnZ0wvVDVkS0p4TG9JeXo3UHpnWUQ0VEVnQjlH?=
 =?utf-8?B?ODIrcmM3bjhrZmpkbFJJWXQ5VEFtWGxZZnBwdUJiQ0lzSEZrMU9Cd0w0WHdl?=
 =?utf-8?B?cExra1craTR0Y0dqQkFnSGlFckFEd3h3RFhJTUlzaEMrclBIOFVLS25oNzZr?=
 =?utf-8?B?eWV3RHh6QmxVWjdjVDQ2QT09?=
Content-ID: <C11204E09DA189418F2D17ADF63D4B32@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c28ec6e5-8fa3-4cb6-7b7b-08d98dcd104e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 22:10:12.9807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mTdabjiWxdWGGLtl3QUQ5z/OM8c53Icy+JeqKbk3lWjrAf1Qklin4KdXxDAmHMEob2/XjfEbkCBSb/0zQcuv0aWvwnUAD9LkdU+nIS38LsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when
 setting descriptor count
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

T24gVHVlLCAyMDIxLTEwLTEyIGF0IDEzOjUyICswMDAwLCBNaWNoYWwgTWFsb3N6ZXdza2kgd3Jv
dGU6DQo+IGlhdmZfc2V0X3JpbmdwYXJhbXMgZG9lc24ndCBjb21tdW5pY2F0ZSB0byB0aGUgdXNl
ciB0aGF0DQo+IA0KPiAxLiBUaGUgdXNlciByZXF1ZXN0ZWQgZGVzY3JpcHRvciBjb3VudCBpcyBv
dXQgb2YgcmFuZ2UuIEluc3RlYWQgaXQNCj4gwqDCoCBqdXN0IHF1aWV0bHkgc2V0cyBkZXNjcmlw
dG9ycyB0byB0aGUgImNsYW1wZWQiIHZhbHVlIGFuZCBjYWxscyBpdA0KPiDCoMKgIGRvbmUuIFRo
aXMgbWFrZXMgaXQgbG9vayBhbiBpbnZhbGlkIHZhbHVlIHdhcyBzdWNjZXNzZnVsbHkgc2V0IGFz
DQo+IMKgwqAgdGhlIGRlc2NyaXB0b3IgY291bnQgd2hlbiB0aGlzIGlzbid0IGFjdHVhbGx5IHRy
dWUuDQo+IA0KPiAyLiBUaGUgdXNlciBwcm92aWRlZCBkZXNjcmlwdG9yIGNvdW50IG5lZWRzIHRv
IGJlIGluZmxhdGVkIGZvcg0KPiBhbGlnbm1lbnQNCj4gwqDCoCByZWFzb25zLg0KPiANCj4gVGhp
cyBiZWhhdmlvciBpcyBjb25mdXNpbmcuIFRoZSBpY2UgZHJpdmVyIGhhcyBhbHJlYWR5IGFkZHJl
c3NlZCB0aGlzDQo+IGJ5IHJlamVjdGluZyBpbnZhbGlkIHZhbHVlcyBmb3IgZGVzY3JpcHRvciBj
b3VudCBhbmQgbWVzc2FnaW5nIGZvcg0KPiBhbGlnbm1lbnQgYWRqdXN0bWVudHMuDQo+IERvIHRo
ZSBzYW1lIHRoaW5nIGhlcmUgYnkgYWRkaW5nIHRoZSBlcnJvciBhbmQgaW5mbyBtZXNzYWdlcy4N
Cj4gDQo+IEZpeGVzOiBmY2VhNmYzZGE1NDYgKCJpY2U6IEFkZCBzdGF0cyBhbmQgZXRodG9vbCBz
dXBwb3J0IikNCg0KSSBiZWxpZXZlIHRoZSBjb21taXQgdGhhdCBBbmkgcHJvdmlkZWQgd2FzIHJl
ZmVyZW5jaW5nIHRoZSAiaWNlIGRyaXZlcg0KaGFzIGFscmVhZHkgYWRkcmVzc2VkIHRoaXMgYnkg
cmVqZWN0aW5nIGludmFsaWQgdmFsdWVzIGZvciBkZXNjcmlwdG9yDQpjb3VudCINCg0KSSBkb24n
dCBiZWxpZXZlIHRoaXMgdGhlIHRoZSBjb3JyZWN0IEZpeGVzIGZvciB0aGlzIHBhdGNoLg0KDQo+
IFNpZ25lZC1vZmYtYnk6IEFuaXJ1ZGggVmVua2F0YXJhbWFuYW4NCj4gPGFuaXJ1ZGgudmVua2F0
YXJhbWFuYW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgTWFsb3N6ZXdza2kg
PG1pY2hhbC5tYWxvc3pld3NraUBpbnRlbC5jb20+DQo+IC0tLQ0KPiB2MzogQ29tbWl0IHdpdGgg
Zml4ZXMgdGFnIGNoYW5nZWQuDQoNCllvdXIgdGl0bGUgaGFzIHYxLCBidXQgdGhlcmUncyBhIHYz
IGhlcmUuDQoNClBsZWFzZSB1c2UgY2hlY2twYXRjaCBiZWZvcmUgc2VuZGluZyB5b3VyIHBhdGNo
ZXM6DQoNCldBUk5JTkc6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHBy
ZWZlciBhIG1heGltdW0gNzUNCmNoYXJzIHBlciBsaW5lKQ0KIzkyOg0KYnkgcmVqZWN0aW5nIGlu
dmFsaWQgdmFsdWVzIGZvciBkZXNjcmlwdG9yIGNvdW50IGFuZCBtZXNzYWdpbmcgZm9yDQphbGln
bm1lbnQgYWRqdXN0bWVudHMuDQoNCldBUk5JTkc6IHN1c3BlY3QgY29kZSBpbmRlbnQgZm9yIGNv
bmRpdGlvbmFsIHN0YXRlbWVudHMgKDgsIDE4KQ0KIzExNjogRklMRTogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYzo2MTU6DQorICAgICAgIGlmIChyaW5nLT50
eF9wZW5kaW5nID4gSUFWRl9NQVhfVFhEIHx8DQpbLi4uXQ0KKyAgICAgICAgICAgICAgICAgbmV0
ZGV2X2VycihuZXRkZXYsICJEZXNjcmlwdG9ycyByZXF1ZXN0ZWQgKFR4OiAlZCAvDQpSeDogJWQp
IG91dCBvZiByYW5nZSBbJWQtJWRdIChpbmNyZW1lbnQgJWQpXG4iLA0KDQpXQVJOSU5HOiBTdGF0
ZW1lbnRzIHNob3VsZCBzdGFydCBvbiBhIHRhYnN0b3ANCiMxMjM6IEZJTEU6IGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmM6NjIyOg0KKyAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQoNCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
