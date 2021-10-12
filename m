Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 809F642AF75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Oct 2021 00:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6325825E8;
	Tue, 12 Oct 2021 22:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PwGbHh4vkauI; Tue, 12 Oct 2021 22:02:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FC2E823E3;
	Tue, 12 Oct 2021 22:02:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEA861BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5E9D60C1F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVUYQTXbwDvh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 22:02:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DCB760C1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 22:02:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="290773892"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="290773892"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 15:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="442035316"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2021 15:02:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:02:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:02:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 15:02:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 15:02:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GP0F/hYUZtYODVFGQnlztzHK+vz4zM1sOG/15y/Dhyj2TcgHKhz1dMuxpQnI2erHCyc9ooHqjhx6GqoxWApOH+sQNBEiIWpSW1V6ILoJKSbAYC3c8IVn8ev7gPVb6YQbmTVms3uFPmWiRzLysf2wgZQk3NI0I1eB75TYklFodo/BVnejsxmV/9cup916yRVYPWuJLPH9DjtlfipMguQUQx8qTsiUqqUozvPF7sLXO/DraWaz+TNLMq4dhH9lNW9jan5hR5RXXDxw1H+WpUkBDZDfk7PlZ08EbH/TMFna2tiPLcc/g6hNgWowoOmUqWHH1YMVAn6Qvhv30YexkrKIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m3W3m36zdf+iFvo1HgMh8wHzi/4fMFMCw0edVVW3BAY=;
 b=fTlI9LIhL7ciPztiqRBb815n93QC2pqvJECo8o1ctJpHsHj/m1fuNtPMtZ3Asi3AybHp8NtrMI3iMSa560AsXpy0r2o54UBIhtG9nzt4JsD5TWZNxB/gdLXa/B/cWMmrxSyL7sP3vvg1w8OBi1UOZPg7QzQFbymWIN5HfLPh8KTQD+JwWeP2iwFtr09muUckPrI6kFF1DppzGYyqFnImUmRQXVQYvqHFcZJci7F0PSX//BBqjlB3DVbYHivwNoBQziQsuCVM5PWrLk+sBTT/XxUhJHw7HQfEvZRtCxQhHn4dJiqnK+x1OoLbz2qc2jTyFqmOjuo110Sg486DkJ9srA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3W3m36zdf+iFvo1HgMh8wHzi/4fMFMCw0edVVW3BAY=;
 b=c6YnDgI9BUsLzK09yn14De5lmndvWOaNJTjj10p+j0pF+RYo2JNWVB+GhmXmrXACBJiXt5NpXTYKE0glIU5n1ZU2oqbmMrQxBOD5EACcZ8vh8X0OJOr3YmseL2gJKIOKUPCPUCfg4e/fMviopdxmIZ6alkc3yCdePs3qjhki668=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Tue, 12 Oct
 2021 22:02:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 22:02:33 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHXv2+5021bnZtlDUOS17oF/qzjs6vP6lMA
Date: Tue, 12 Oct 2021 22:02:32 +0000
Message-ID: <d59b30ef63b884b74ffcabc48e097721f2cd52f9.camel@intel.com>
References: <20211012130447.6177-1-michal.maloszewski@intel.com>
In-Reply-To: <20211012130447.6177-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4682f524-99c5-4fc2-638b-08d98dcbfe23
x-ms-traffictypediagnostic: SA2PR11MB5068:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5068058EFE9665D71058720CC6B69@SA2PR11MB5068.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PFjURLbwV4ryELZSSrMFuefZmV8NHJFA/W8g524JSg1Kb8RrDcoNKl/1GC1dtUcYulUfQZXsFcO1MMqBOZGs9U8im/m85CXVqOwpavAHxfCcNybODOYPUq7Dbfa3YLOtL6MdAE73tj/MhhXqlDwq0Lw4yx2G+5A/5Rn3xGHS56Pt/L2p8tTYJ+JBVXynrgjOsZf4Vo9WNJjxTV3a+uPTleeDBOzR4tbPFltWC7rEx3Jhbulh22mNUGg1pzjDezm44CRiVbLPDbHoVTxex2TQVwBFkz5SlW93ZVVuEGKVbDgzBXnP4qOX8raoXlB8lFUV5jYXhekL2pAkjc8tKiT1OfJKz6Ud6X5Hz0+8q1lwrScu4lkosVPAUERF0Noaxqv+8sI7FZoqY+ZROl9YOEYvg/7SvBagu6T4JH7zyLNaMWXx9sNZqAMoRRNVAXPmJhbeEJZHENPr1QOuy6g+0mcbZajPx7f3iejEllVbn+FmrZCzO4NDjTe/iJPWNpgI2e1Z9Bc3zQhE520y4Mw6ZqF9eR8+X42GhcEB3o4Qq+2FF3w7PkZUYHZxgnUms7TYPTCe4inJsJJgjylKUwq+D95Z4RkiKEohm+mQC1yJKneq6yD8WqeL+VKwc/7Qo7W8XE+oi/jYYbSONNItNuBOZxLy1P+GKa0GjTEoV3TwoiMLeplYc/LtMvXiUkS3yc+AQyM94gForEzMQ33jihovxdnbgg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(86362001)(6512007)(316002)(15650500001)(122000001)(6506007)(110136005)(5660300002)(4001150100001)(4326008)(26005)(6486002)(38070700005)(508600001)(66556008)(8676002)(64756008)(186003)(83380400001)(66446008)(91956017)(8936002)(36756003)(66946007)(2906002)(2616005)(71200400001)(107886003)(76116006)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnFjQ1NTSmxUNHBvSGJJNW1xdElrZE5sbTVHL28za3ZleHVQUHVMZkJ1eWdK?=
 =?utf-8?B?MjhuSi84bzh2cW13bzV1dFRuUjhab21mTjF3V3lhUVFEK3A1bnNOK2xOdG9q?=
 =?utf-8?B?K0xuZVYyZDRNSXNmR0VrajB1d1dMaU00MWZQWDV5cnpzbWJDWUQvcWM1SjNl?=
 =?utf-8?B?U1pjUnRPZkQ1VXV5V2JnWVpHVGhGR1N0ZGFudFA3KzI2MFBvYndHYTl1WnV1?=
 =?utf-8?B?T29SWDYvUGcza2tOUlFadUc2NkcrSS9kK0tUTGl5dDFrMXlKKzBGTnFVWmVQ?=
 =?utf-8?B?dnFGMUZwbXlQVDYrZVBtdVI1cC9rY3I3ZXNwUnFQMFRJVFNjelJDZmRUUUM2?=
 =?utf-8?B?YXg0bTBvWE9XM3I5a2EyaDRqdTZHMXZmc2wzSFdZQi9QL3d4TG9sVWlxZFY0?=
 =?utf-8?B?TG9NblM5NDFzNzJSTzFiZ0QvVG9qQU0ySzdvWHY0NCtCQmVKMERNTWs3M3Zt?=
 =?utf-8?B?Rk9qZXpkLzFQWHZjZ1B4SEd2VEE2Nkl6VEJJUHgwR2kvSWMvemMwaFFwYU1o?=
 =?utf-8?B?WmkyRFAyVTM2bjZ1MENYYU9pWEtpZC9wMnltRFFuVyt4bDdpTERSYjAxTUdl?=
 =?utf-8?B?OU8zSEl0SnNyc1JSQjNEajNERFZNZXBZR0JVUnlNQkwrREl6ajFXNVRZY2pG?=
 =?utf-8?B?dEJjNytLcGhkOXRLSWpMNWZYUCtQUnRIbzVGdkxqcEhVOXl6dVpOeWRGOU96?=
 =?utf-8?B?OXMvbnduOFFvOUl6Mk94YkNRWEZjMU5WZzNPTGlhM2VDa2kzVXpWQnZpcXpk?=
 =?utf-8?B?aHlNaFlGN0NWd1lUbzZIb20wVjZHeEdwNDJ0V0JUYlFGVmMwWnpqUHltNWg5?=
 =?utf-8?B?VkJZdWxIVEpXS2pqR1ZLTmgyNm1zenRXMlNpODhRRTRZODlrUHBFK1hmNjJP?=
 =?utf-8?B?NHk4V3lwc3BtS25jc25ad1ROMWd0MVRCQ0NyWDJwdnczeXZldnhDV3dYa3JQ?=
 =?utf-8?B?NmFnSlh0Nld0SnJZVHMrcktqYmdzdzAxYTM4NUNTMmFpd3ppK3BvamwzanV0?=
 =?utf-8?B?bVdaVHB0dUZlQkxQcHMwMUZzTjBqU3hoYW1acTlZWDJkeit6aS9wNUdrTGFh?=
 =?utf-8?B?OGM5dThDL1FIMThSQ28wT0E4bWh4Uk5PZC9WVmhhOFMwMzd1U3BjWGwyeXc2?=
 =?utf-8?B?UzlqUzZUTHAxbE5KYUp2YnA5bGNuN1ZLYjZXcFMwNmdIN3RPYTRyVGxLZGE1?=
 =?utf-8?B?VmxJNndscGxxQUl4bFRLeHA5Vmczd291TDJTOGhYYWhkT2dEVWphT1VYR3N6?=
 =?utf-8?B?T25Fa0ZObm9MdkR1N2JyQ1VDZW5Cb2srYXVQUGFFdDZtNWJKbkdSQW1yODFZ?=
 =?utf-8?B?YzNGWDdqM0dpRGdxOUExMENYcjY1bitvcitka0pFOGo3SEhnc3kvaVN1bVhP?=
 =?utf-8?B?c3dDMmg1QVhPKzJ1R2ZJalNDMnYwNDU0Yk9YaEd1RzJVdjlKSkhOWXN4V282?=
 =?utf-8?B?RFFzdUY2NmJUOG5nV1Z6VW5RblNheHRnTnRtMG04K0Y0RDNMeGZVRVJXQTZH?=
 =?utf-8?B?VzhTNWFEYjFLenVBbm5rUXJFVXNHY3dESkRYR3BLbTk4WklkZEt2bFE3WDF5?=
 =?utf-8?B?RVV1dHF2MmNONkFpNGM0a0ZWdDZXK2VTd0kxZHRnWDlvSUZTSlVIQTdiVHhZ?=
 =?utf-8?B?VVdtWEpDK2NQSWFhdWdzN1VPTnM5TXJhK29vQmk4QjdSWnZNekhIaTV3T1V6?=
 =?utf-8?B?b2UyVlBkUFRFTDlCZVdpM0JxZlhLcWFESzJBOHB1WnhLZUtINXcrODJNejdS?=
 =?utf-8?B?RE1jMEdaZFhIakUySGxTMVJwdEJiazhaWllEQU5HM3cvM1hFdlBxUDc5R0s1?=
 =?utf-8?B?ME5TRCtFZ0pRN1VqdU8rZz09?=
Content-ID: <B67DB66B7DE67340817C2088C2CE0D64@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4682f524-99c5-4fc2-638b-08d98dcbfe23
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 22:02:33.0066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a2I8yAxb2+0xPVqjuxBRZhC7GJMIUl67r83ANMQNX9fDXDxYkSRmlzdXbps1zXkGwPiOmflcteY9PJiBvzK1lDQ5dCgBIzByrCYzWjoKZbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIxLTEwLTEyIGF0IDEzOjA0ICswMDAwLCBNaWNoYWwgTWFsb3N6ZXdza2kgd3Jv
dGU6Cj4gTW9kaWZ5IG5ldGRldi0+ZmVhdHVyZXMgZm9yIHZsYW4gc3RyaXBwaW5nIGJhc2VkIG9u
IHZpcnR1YWwKPiBjaGFubmVsIG1lc3NhZ2VzIHJlY2VpdmVkIGZyb20gdGhlIFBGLiBDaGFuZ2Ug
aXMgbmVlZGVkCj4gdG8gc3luY2hyb25pemUgdmxhbiBzdHJpcCBzdGF0dXMgYmV0d2VlbiBQRiBz
eXNmcyBhbmQgaWF2ZiBldGh0b29sLgo+IAo+IEZpeGVzOiA1NGE0ZjAyMzlmMmUgKCJLVk06IE1N
VTogbWFrZSBrdm1fbW11X3phcF9wYWdlKCkgcmV0dXJuIHRoZQo+IG51bWJlciBvZiBwYWdlcyBp
dCBhY3R1YWxseSBmcmVlZCIpCgpJIGRvbid0IHNlZSB0aGUgcmVsYXRpb24gYmV0d2VlbiB0aGlz
IHBhdGNoIGFuZCB0aGUgRml4ZXMuIElmIEknbQptaXNzaW5nIHNvbWV0aGluZywgY2FuIHlvdSBl
eHBsYWluPwoKPiBTaWduZWQtb2ZmLWJ5OiBOb3JiZXJ0IENpb3NlayA8bm9yYmVydHguY2lvc2Vr
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgTWFsb3N6ZXdza2kgPG1pY2hhbC5t
YWxvc3pld3NraUBpbnRlbC5jb20+Cj4gLS0tCj4gdjI6IGNvbW1pdCBtZXNzYWdlIGFuZCBjb21t
ZW50cyBjb3JyZWN0ZWQKCllvdXIgdGl0bGUgaGFzIHYxLCBidXQgdGhlcmUncyBhIHYyIGhlcmU/
Cgo+IMKgwqDCoCBub3RlIHRoYXQgc3BsaXR0aW5nIGxpbmVzIGlzIG5lY2Vzc2FyeSBiZWNhdXNl
IHRoZSBudW1iZXIgb2YKPiBhbGxvd2FibGUgY2hhcmFjdGVycyBvbiB0aGUgbGluZSBpcyBleGNl
ZWRlZAoKU3RyaW5ncyBhcmUgbm90IHBhcnQgb2YgdGhlIGNoYXJhY3RlciBsaW1pdCBydWxlLiBJ
ZiB5b3UgcnVuCmNoZWNrcGF0Y2gsIHlvdSB3aWxsIG5vdGljZSBub3RoaW5nIGlzIHJlcG9ydGVk
LgoKQWxzbywgcGxlYXNlIHJ1biBjaGVja3BhdGNoIG9uIHlvdXIgcGF0Y2hlczoKCkNIRUNLOiBB
bGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzExMjogRklMRTogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmM6MTQ2NzoKK3N0YXRpYyB2
b2lkIGlhdmZfbmV0ZGV2X2ZlYXR1cmVzX3ZsYW5fc3RyaXBfc2V0KHN0cnVjdCBuZXRfZGV2aWNl
CipuZXRkZXYsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29uc3QgYm9vbCBlbmFibGUpCgpXQVJOSU5HOiBzdXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25k
aXRpb25hbCBzdGF0ZW1lbnRzICg4LCAxMykKIzExNDogRklMRTogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmM6MTQ2OToKKyAgICAgICBpZiAoZW5hYmxlKQor
ICAgICAgICAgICAgbmV0ZGV2LT5mZWF0dXJlcyB8PSBORVRJRl9GX0hXX1ZMQU5fQ1RBR19SWCB8
Ck5FVElGX0ZfSFdfVkxBTl9SWDsKCldBUk5JTkc6IHN1c3BlY3QgY29kZSBpbmRlbnQgZm9yIGNv
bmRpdGlvbmFsIHN0YXRlbWVudHMgKDgsIDEzKQojMTE2OiBGSUxFOiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYzoxNDcxOgorICAgICAgIGVsc2UKKyAgICAg
ICAgICAgIG5ldGRldi0+ZmVhdHVyZXMgJj0gfk5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYICYKfk5F
VElGX0ZfSFdfVkxBTl9SWDsKClRoaXMgYWxzbyBzdGlsbCBkb2VzIG5vdCBhcHBseS4gQXJlIHlv
dSB1c2luZyB0aGUgY29ycmVjdCB0cmVlPwpyZWJhc2luZz8KCj4gLS0tCj4gwqAuLi4vbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jwqDCoCB8IDQ0Cj4gKysrKysrKysrKysr
KysrKysrLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X3ZpcnRjaG5sLmMKPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0
Y2hubC5jCj4gaW5kZXggOWMxMjg0NjJlZC4uNjg3NjFiOTJmNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4gQEAgLTE0NTYsNiAr
MTQ1NiwyMiBAQCB2b2lkIGlhdmZfcmVxdWVzdF9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyCj4g
KmFkYXB0ZXIpCj4gwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPmN1cnJlbnRfb3AgPSBWSVJUQ0hO
TF9PUF9VTktOT1dOOwo+IMKgfQo+IMKgCj4gKy8qKgo+ICsgKiBpYXZmX25ldGRldl9mZWF0dXJl
c192bGFuX3N0cmlwX3NldAo+ICsgKiBAbmV0ZGV2OiBwdHIgdG8gbmV0ZGV2IGJlaW5nIGFkanVz
dGVkCj4gKyAqIEBlbmFibGU6IGVuYWJsZSBvciBkaXNhYmxlIHZsYW4gc3RyaXAKPiArICoKPiAr
ICogSGVscGVyIGZ1bmN0aW9uIHRvIGNoYW5nZSB2bGFuIHN0cmlwIHN0YXR1cyBpbiBuZXRkZXYt
PmZlYXR1cmVzLgo+ICsgKiovCj4gK3N0YXRpYyB2b2lkIGlhdmZfbmV0ZGV2X2ZlYXR1cmVzX3Zs
YW5fc3RyaXBfc2V0KHN0cnVjdCBuZXRfZGV2aWNlCj4gKm5ldGRldiwKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGJvb2wgZW5hYmxlKQo+ICt7Cj4gK8KgwqDCoMKg
wqDCoMKgaWYgKGVuYWJsZSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXYtPmZlYXR1
cmVzIHw9IE5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYIHwKPiBORVRJRl9GX0hXX1ZMQU5fUlg7Cj4g
K8KgwqDCoMKgwqDCoMKgZWxzZQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGRldi0+ZmVh
dHVyZXMgJj0gfk5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYICYKPiB+TkVUSUZfRl9IV19WTEFOX1JY
Owo+ICt9Cj4gKwo+IMKgLyoqCj4gwqAgKiBpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb24KPiDCoCAq
IEBhZGFwdGVyOiBhZGFwdGVyIHN0cnVjdHVyZQo+IEBAIC0xNjc5LDggKzE2OTUsMjAgQEAgdm9p
ZCBpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb24oc3RydWN0Cj4gaWF2Zl9hZGFwdGVyICphZGFwdGVy
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfRU5BQkxFX1ZM
QU5fU1RSSVBQSU5HOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRldiwKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkNoYW5naW5nIFZM
QU4gU3RyaXBwaW5nIGlzIG5vdAo+IGFsbG93ZWQgd2hlbiBQb3J0IFZMQU4gaXMgY29uZmlndXJl
ZFxuIik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAv
KlZsYW4gc3RyaXBwaW5nIGNvdWxkIG5vdCBiZSBlbmFibGVkIGJ5Cj4gZXRodG9vbC4KPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIERpc2FibGUgaXQg
aW4gbmV0ZGV2LT5mZWF0dXJlcy4KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWF2Zl9uZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQobmV0ZGV2LAo+IGZh
bHNlKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJy
ZWFrOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBWSVJUQ0hOTF9PUF9E
SVNBQkxFX1ZMQU5fU1RSSVBQSU5HOgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRldiwgIkNoYW5naW5nIFZM
QU4KPiBTdHJpcHBpbmcgaXMgbm90IGFsbG93ZWQgd2hlbiBQb3J0IFZMQU4gaXMgY29uZmlndXJl
ZFxuIik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
ZXZfd2FybigmYWRhcHRlci0+cGRldi0+ZGV2LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiQ2hhbmdpbmcgVkxBTiBTdHJp
cHBpbmcgaXMgbm90Cj4gYWxsb3dlZCB3aGVuIFBvcnQgVkxBTiBpcyBjb25maWd1cmVkXG4iKTsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qVmxhbiBz
dHJpcHBpbmcgY291bGQgbm90IGJlIGRpc2FibGVkIGJ5Cj4gZXRodG9vbC4KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEVuYWJsZSBpdCBpbiBuZXRk
ZXYtPmZlYXR1cmVzLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpYXZmX25ldGRldl9mZWF0dXJlc192bGFuX3N0cmlwX3NldChuZXRkZXYsCj4gdHJ1ZSk7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl9lcnIoJmFkYXB0ZXItPnBkZXYt
PmRldiwgIlBGIHJldHVybmVkCj4gZXJyb3IgJWQgKCVzKSB0byBvdXIgcmVxdWVzdCAlZFxuIiwK
PiBAQCAtMTg5Nyw2ICsxOTI1LDIwIEBAIHZvaWQgaWF2Zl92aXJ0Y2hubF9jb21wbGV0aW9uKHN0
cnVjdAo+IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNwaW5fdW5sb2NrX2JoKCZhZGFwdGVyLT5hZHZfcnNzX2xvY2spOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYnJlYWs7Cj4gK8KgwqDCoMKgwqDCoMKgY2FzZSBWSVJUQ0hOTF9PUF9FTkFCTEVfVkxBTl9T
VFJJUFBJTkc6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qR290IGluZm9ybWF0
aW9uIHRoYXQgUEYgZW5hYmxlZCB2bGFuIHN0cmlwIG9uIHRoaXMKPiBWRi4KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICogVXBkYXRlIG5ldGRldi0+ZmVhdHVyZXMgaWYgbmVlZGVk
IHRvIGJlIGluIHN5bmMKPiB3aXRoIGV0aHRvb2wuCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXZfcmV0dmFs
KQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9u
ZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQobmV0ZGV2LAo+IHRydWUpOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIFZJUlRD
SE5MX09QX0RJU0FCTEVfVkxBTl9TVFJJUFBJTkc6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoC8qIEdvdCBpbmZvcm1hdGlvbiB0aGF0IFBGIGRpc2FibGVkIHZsYW4gc3RyaXAgb24K
PiB0aGlzIFZGLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBVcGRhdGUgbmV0
ZGV2LT5mZWF0dXJlcyBpZiBuZWVkZWQgdG8gYmUgaW4gc3luYwo+IHdpdGggZXRodG9vbC4KPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmICghdl9yZXR2YWwpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpYXZmX25ldGRldl9mZWF0dXJlc192bGFuX3N0cmlwX3NldChuZXRk
ZXYsCj4gZmFsc2UpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDC
oMKgwqDCoMKgwqDCoMKgZGVmYXVsdDoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChhZGFwdGVyLT5jdXJyZW50X29wICYmICh2X29wY29kZSAhPSBhZGFwdGVyLQo+ID5jdXJy
ZW50X29wKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkZXZfZGJnKCZhZGFwdGVyLT5wZGV2LT5kZXYsICJFeHBlY3RlZAo+IHJlc3BvbnNlICVkIGZy
b20gUEYsIHJlY2VpdmVkICVkXG4iLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
