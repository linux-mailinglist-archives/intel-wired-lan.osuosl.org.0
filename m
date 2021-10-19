Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9900F433FB3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 22:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0371F83112;
	Tue, 19 Oct 2021 20:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKbEyyJFmAsl; Tue, 19 Oct 2021 20:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9E6B825B9;
	Tue, 19 Oct 2021 20:15:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E3261BF476
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C22240686
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DO7WON9jEIC7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 20:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 081F340678
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 20:14:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292085935"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="292085935"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 13:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="661972620"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 19 Oct 2021 13:14:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 13:14:54 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 13:14:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 13:14:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 13:14:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H3OqzT6xbPPggHVw8vDwcvc/FPkjL7/IADoHFecAJEGPVYR+egBNKxtUJMvlg8t01+0S48tUplQ0HVtDJq/K0hXLKgnCBVFScdwYWolAFLu8HihaaqcHJ8QMR2KcBqeoVZkz174lUgl8CUhFy2Jyq/wQJr4DqfgPSTaWn97kG6h9NrX+tRKAiItwVfXewWRN/mvxOQa6MjIXKosEmvNvuLZ+WeLIGlu/3BijkJXRybftF0/FF+8k/ucyHzA6enZHpkNkmtHMNE/olGRBoAbq33m6hMWH8EV9e/NwozWSdA3bCgztERKgc2Pa0BhoBCFULgN30picYk1zHvOjt6K0kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pxtR2dnbb64rVxfGYeD5YQsiCTaWWSA39AUAWvVIJLM=;
 b=a5qR3KOmA4x+LtfploQs/6NV2WvF5FDbGRGZNFLy9an9i+nrbeI9prI6x+jDv4Z7KoqDwD00wry7XU+rtbze290WfDmYukjmZ3/1G6YVKh0CMfdxWOyLjSPmwq9TcpM+YGE9OHf/PHCi5+lWnMQ0mo41P/hn2heArCl0fVACKVzN8IYC8zI2GhqVL1vHuoj/vR2Mhka/HR1gbATvP/y7XX272L6+2CfuxlmyL783+D8Le7iGpU1mOHm2vQLOpdBG0n8ToKjyytSn5LsdsCYodHSL5i7po9Vs+3se+HjEax07cv8n9snE8j/m47kV/B4lLXBirVYwEbx0G6JQ9Gdiww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pxtR2dnbb64rVxfGYeD5YQsiCTaWWSA39AUAWvVIJLM=;
 b=DFWnbXw0zxqH3V2YanqhnW7zHNPKe/FvFS7kqN5jmTG4Pcmz7Pg9feUAotor6xtT1ITYe0A8yls+MI/B0+V3NQghreRcx2l3iRgrbSRm+ZlHRJYfmWRPcmRU0MxRKyuOq02rqpzAgl1KWmNei3oEAkuwSbTRf8PUn9izgUuM0Ks=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15; Tue, 19 Oct
 2021 20:14:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 20:14:52 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix kernel BUG in
 free_msi_irqs
Thread-Index: AQHXxPZVMo50bT6w40aFOsQV0LJaVavawYoA
Date: Tue, 19 Oct 2021 20:14:52 +0000
Message-ID: <7d20c8f15b98a58c5fe771daf2c00877e70e6251.camel@intel.com>
References: <20211019135917.15621-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211019135917.15621-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f461f0fd-4109-43a1-1606-08d9933d1c50
x-ms-traffictypediagnostic: SA2PR11MB4826:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB48266024F6B477968DA7CD0FC6BD9@SA2PR11MB4826.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aFvFPJFFk6i7eiYA0XMpfZeCt91+nsS630M2NKwjBb180FOHqv5G9raIjNBUDtWWBMyp7JkyrN/ukQCMQ/TnM4Ia2Nh2nG4tcJzkeconJFrFKD4y7eMpDPAfFItZX4trEoCGDi5AOiutXCCaqqVtCPKzJzk12OXVK9MS9IsCpWDRBoVHsZ8BJyJFhqN9EF2iMlnhAE2FE8jEG/MBPMhRD9/CUQmLfcr/vB06YsxoZAjitfxHlpgprljXe0c+aJe8lYYfA+nY9oOHzHn3Oi4rOHZu12je5RyUnxybhrBnoDPlrflLDBuNIlVU2uBjRArTcGJ6JMMADMXr7OKyf1exQQ5vqF2JV9MLLKYBBBkOb7WeH1hAtcnByXuKU7iL080oHNot4kguAlnhzkuXWJAuuVPC5BOfJFI3oL0CDwZkeu+WDX9hi1EI84X+obD1OamZ3qVpnP5kh8eM+iCi8yPiMExxnF0+CJk7inTIST824IOZh64/dt066WjHVyxoOW5ivK0H57QuU/klB6LNecvx08cL4idudLdAeFQDuUtBxKuEXGQQ9HEbSdPFf/08P/Esh/NPI37V50/a1mgGCmQNabqAgPbfwJPZpCvaOWvNvLUDyx6YcyIs7pNqJjjSVCa8zo7+fMm1eBjIeSgc29aiCCFgnJa2SXFhwHKJfPf5jnw91qSje7RWVxsxVTjjQzg+9MhpLkIBwuugjgeyM/DjMq9ZEnSrXdxzHSBvBWkdjZXUHWbkeXvo4a3+G0CA031vjodWihJOe+8W+ySr6qcvNMfbhc1O321CP/AnFzoOQjY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(6506007)(2616005)(186003)(107886003)(2906002)(86362001)(6512007)(71200400001)(966005)(38070700005)(83380400001)(38100700002)(4326008)(4001150100001)(6486002)(8936002)(122000001)(66446008)(76116006)(26005)(91956017)(316002)(5660300002)(110136005)(36756003)(64756008)(8676002)(508600001)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEVpK3hlejBLT282NmZHditCcnZlNGtmNDE2VENBVjhzSHM3c0IyelVjekpG?=
 =?utf-8?B?bFI5ZkZHS3JYZ2FPVWlTMy9TZjRjKzdUaXJ5RG1DVjRJVkJIWjd4eFZJUlIr?=
 =?utf-8?B?dEIzQzF2SllpTVNSeFc1OGlUMFpScUxTNXFuWUp6bHEyNjJ5aU5yeUhUSWJv?=
 =?utf-8?B?enhyb1MraE9NaEY4a0pTUU1HaUx0QVNvbi9QN1NmTUwrcGdUUzFIQnAzdHpn?=
 =?utf-8?B?S041RngwZEJCR3M1TUtuUFVQUmJNWkdPNDVPM2FSUklrYlRCYnB6Tmd2QVly?=
 =?utf-8?B?TTBDVmRwWUQ0SnVBVFN1SEVXMHVET0pvZkZ4VWlEOHEzQzg3U0U3L0tOdFhv?=
 =?utf-8?B?ZVNkSTE4T09aZFZpc1lXTnA2aHlJZmxSODYzbDVlT1NGa3A0YmNvekdTMHJs?=
 =?utf-8?B?Um85aG5MVHJmS3dEUnE3Ymh3OE8ydGkvWHUxN2xSb2ZKUUkwb1pQMDBEVnBa?=
 =?utf-8?B?OTlsaFBNMnpycUowbnFVNUJsYUNwaHRyVTladFhOYlltODJNT1hUaXM3ZTE0?=
 =?utf-8?B?ZzZWRlJxaDViZkNPRjdPNGFHZTdiMnBRRUhHVUZOZ0orMFpldG9PdGVVRlNX?=
 =?utf-8?B?bkpNUm4wTHlZVmZ4c1pZbnAyS2E1TVhQNFdsMTdSNGV2d1NyeUpwcTdXOEpJ?=
 =?utf-8?B?dkVRMjNDYXBvQ1ZsL25FWXZ5VDB6MUJkRTk0TG85TU1DckVjUUZqMlA5amg3?=
 =?utf-8?B?UjlJajVxRHZyY0ZIdFhhUmNmaWtjRFJXZXVCU09oektqMkFlOXlVYTQxSEM5?=
 =?utf-8?B?bWxUU09nZUh0THBPRm91QzBKeTdJOEh6cXpvVDJ4U3RXejB0UnUyckgxK1VN?=
 =?utf-8?B?M2lYbWNxbnNqZmNjcGhEOGZXcFNSWkE0YnNnZ1NaMkxpeE9BMXRqaTFvbDFO?=
 =?utf-8?B?aHBtRS9pZS90TlYvcXdsRGx4Z1FQT1FKaVRVdGVTakhYNGdEZGQ1UU1YY0lE?=
 =?utf-8?B?WXR4YjBxUjhrZWRNRDJkWTgwSEpUaUVrY01LWGpXdUViUVlvdzc2RGc2cEd5?=
 =?utf-8?B?VTJJOXlmN25UZE9aZldIbGxzLzdZTW9MbHNxVlM1TWErZndMVUFrVUFERU9L?=
 =?utf-8?B?Nm1Vc3ZIUVNtdTlpaEhCL0laK0ZaR2pJN3Y5TEVrUlRNNkpKTnQza1FObU5U?=
 =?utf-8?B?cGU5OEhWY1VWM0xFTSsrV2p6OGc4NnNWNEdUdHUyaUlFaXBOZEVDQUtTTG9q?=
 =?utf-8?B?M0E4dlY2OW9zSzA4aGRjNnRTeW9wbVdoYUR0S1JNTjZhMGN3MkpCZ2ZybVpa?=
 =?utf-8?B?NFIrWW9OSzJGUWNaajFQOUNkRDA1SnZDb1NlbHJBT0hyM0tvZktrYUZQN3NZ?=
 =?utf-8?B?OXVBVk95bzg5bEpCU0ZUM3gwS3pWaDI4ZDdsVk85WmJYTTZ2VGdqNWR5MVo0?=
 =?utf-8?B?bXFEV1JDMUlHSnBKUy81KzdtRHRZdVEyRE9Ib1IyOFNFQmQ5dWo4MzhIN0w2?=
 =?utf-8?B?NkNVYmNlcUlSdkU3SGRlZ3lSZXhXQkNJTnJ3V3o5cHNzcS95aFB1bTlNWGwv?=
 =?utf-8?B?TEwzdlZNT3U5c1dNbStSV1NsMWZoZ0w2Q3VBSGRUYUcwdlBzMnVnaEh0ckU3?=
 =?utf-8?B?QytpV0Y1MnJhREtIS2ovR3c4VWlEOXBNdm0xb3FjMTFQajkyWkN4S2dhVkxZ?=
 =?utf-8?B?SzFBQTM5aEFPZVZTd2NUbVN4V0RaenRuR2VaM0hYR1pWYlp3UHRxdjB0d1JI?=
 =?utf-8?B?UEZOd1VaS3pOZGlveXpheW11d2ZBZGJlNitmZDFxZ29BSE93NmwrRmRjUHJq?=
 =?utf-8?B?bkl4bWk0TW1zcGRkQXVYNXI0M3d6elpsQ21lckVsL3JqYkkyT1kxL2FpQ3J0?=
 =?utf-8?B?cSsxTjkvMXZ0Z21seGJBQT09?=
Content-ID: <E66666ED02D3214CB82312AAB25EB0E9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f461f0fd-4109-43a1-1606-08d9933d1c50
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 20:14:52.6005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anthony.l.nguyen@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix kernel BUG in
 free_msi_irqs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDE1OjU5ICswMjAwLCBNYXRldXN6IFBhbGN6ZXdza2kgd3Jv
dGU6DQo+IEZyb206IFByemVteXNsYXcgUGF0eW5vd3NraSA8cHJ6ZW15c2xhd3gucGF0eW5vd3Nr
aUBpbnRlbC5jb20+DQo+IA0KPiBGaXggZHJpdmVyIG5vdCBmcmVlaW5nIFZGJ3MgdHJhZmZpYyBp
cnFzLCBwcmlvciB0byBjYWxsaW5nDQo+IHBjaV9kaXNhYmxlX21zaXggaW4gaWF2Zl9yZW1vdmUu
DQo+IFRoZXJlIHdlcmUgcG9zc2libGUgMiBlcnJvbmVvdXMgc3RhdGVzIGluIHdoaWNoLCBpYXZm
X2Nsb3NlIHdvdWxkDQo+IG5vdCBiZSBjYWxsZWQuDQo+IE9uZSBlcnJvbmVvdXMgc3RhdGUgaXMg
Zml4ZWQgYnkgYWxsb3dpbmcgbmV0ZGV2IHRvIHJlZ2lzdGVyLCB3aGVuIHN0YXRlDQo+IGlzIGFs
cmVhZHkgcnVubmluZy4gSXQgd2FzIHBvc3NpYmxlIGZvciBWRiBhZGFwdGVyIHRvIGVudGVyIHN0
YXRlIGxvb3ANCj4gZnJvbSBydW5uaW5nIHRvIHJlc2V0dGluZywgd2hlcmUgaWF2Zl9vcGVuIHdv
dWxkIHN1YnNlcXVlbnRseSBmYWlsLg0KPiBJZiB1c2VyIHdvdWxkIHRoZW4gdW5sb2FkIGRyaXZl
ci9yZW1vdmUgVkYgcGNpLCBpYXZmX2Nsb3NlIHdvdWxkIG5vdCBiZQ0KPiBjYWxsZWQsIGFzIHRo
ZSBuZXRkZXYgd2FzIG5vdCByZWdpc3RlcmVkLCBsZWF2aW5nIHRyYWZmaWMgcGNpcyBzdGlsbA0K
PiBhbGxvY2F0ZWQuDQo+IEZpeGVkIHRoaXMgYnkgYnJlYWtpbmcgbG9vcCwgYWxsb3dpbmcgbmV0
ZGV2IHRvIG9wZW4gZGV2aWNlIHdoZW4NCj4gYWRhcHRlcg0KPiBzdGF0ZSBpcyBfX0lBVkZfUlVO
TklORyBhbmQgaXQgaXMgbm90IGV4cGxpY2l0aWx5IGRvd25lZC4NCj4gT3RoZXIgcG9zc2libGl0
eSBpcyBlbnRlcmluZyB0byBpYXZmX3JlbW92ZSBmcm9tIF9fSUFWRl9SRVNFVFRJTkcNCj4gc3Rh
dGUsDQo+IHdoZXJlIGlhdmZfY2xvc2Ugd291bGQgbm90IGZyZWUgaXJxcywgYnV0IGp1c3QgcmV0
dXJuIDAuDQo+IEZpeGVkIHRoaXMgYnkgY2hlY2tpbmcgZm9yIGxhc3QgYWRhcHRlciBzdGF0ZSBh
bmQgdGhlbiByZW1vdmluZyBpcnFzLg0KPiANCj4gS2VybmVsIHBhbmljOg0KPiBbIDI3NzMuNjI4
NTg1XSBrZXJuZWwgQlVHIGF0IGRyaXZlcnMvcGNpL21zaS5jOjM3NSENCj4gLi4uDQo+IFsgMjc3
My42MzE1NjddIFJJUDogMDAxMDpmcmVlX21zaV9pcnFzKzB4MTgwLzB4MWIwDQo+IC4uLg0KPiBb
IDI3NzMuNjQwOTM5XSBDYWxsIFRyYWNlOg0KPiBbIDI3NzMuNjQxNTcyXcKgIHBjaV9kaXNhYmxl
X21zaXgrMHhmNy8weDEyMA0KPiBbIDI3NzMuNjQyMjI0XcKgIGlhdmZfcmVzZXRfaW50ZXJydXB0
X2NhcGFiaWxpdHkucGFydC40MSsweDE1LzB4MzANCj4gW2lhdmZdDQo+IFsgMjc3My42NDI4OTdd
wqAgaWF2Zl9yZW1vdmUrMHgxMmUvMHg1MDAgW2lhdmZdDQo+IFsgMjc3My42NDM1NzhdwqAgcGNp
X2RldmljZV9yZW1vdmUrMHgzYi8weGMwDQo+IFsgMjc3My42NDQyNjZdwqAgZGV2aWNlX3JlbGVh
c2VfZHJpdmVyX2ludGVybmFsKzB4MTAzLzB4MWYwDQo+IFsgMjc3My42NDQ5NDhdwqAgcGNpX3N0
b3BfYnVzX2RldmljZSsweDY5LzB4OTANCj4gWyAyNzczLjY0NTU3Nl3CoCBwY2lfc3RvcF9hbmRf
cmVtb3ZlX2J1c19kZXZpY2UrMHhlLzB4MjANCj4gWyAyNzczLjY0NjIxNV3CoCBwY2lfaW92X3Jl
bW92ZV92aXJ0Zm4rMHhiYS8weDEyMA0KPiBbIDI3NzMuNjQ2ODYyXcKgIHNyaW92X2Rpc2FibGUr
MHgyZi8weGUwDQo+IFsgMjc3My42NDc1MzFdwqAgaWNlX2ZyZWVfdmZzKzB4MmY4LzB4MzUwIFtp
Y2VdDQo+IFsgMjc3My42NDgyMDddwqAgaWNlX3NyaW92X2NvbmZpZ3VyZSsweDk0LzB4OTYwIFtp
Y2VdDQo+IFsgMjc3My42NDg4ODNdwqAgPyBfa3N0cnRvdWxsKzB4M2IvMHg5MA0KPiBbIDI3NzMu
NjQ5NTYwXcKgIHNyaW92X251bXZmc19zdG9yZSsweDEwYS8weDE5MA0KPiBbIDI3NzMuNjUwMjQ5
XcKgIGtlcm5mc19mb3Bfd3JpdGUrMHgxMTYvMHgxOTANCj4gWyAyNzczLjY1MDk0OF3CoCB2ZnNf
d3JpdGUrMHhhNS8weDFhMA0KPiBbIDI3NzMuNjUxNjUxXcKgIGtzeXNfd3JpdGUrMHg0Zi8weGIw
DQo+IFsgMjc3My42NTIzNThdwqAgZG9fc3lzY2FsbF82NCsweDViLzB4MWEwDQo+IFsgMjc3My42
NTMwNzVdwqAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NjUvMHhjYQ0KPiANCj4g
Rml4ZXM6IDIyZWFkMzdmOGFmOCAoImk0MGV2ZjogQWRkIGxvbmdlciB3YWl0IGFmdGVyIHJlbW92
ZSBtb2R1bGUiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IFBhdHlub3dza2kgPHByemVt
eXNsYXd4LnBhdHlub3dza2lAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXRldXN6IFBh
bGN6ZXdza2kgPG1hdGV1c3oucGFsY3pld3NraUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoHYyOiBG
aXhlZCBjaGVja3BhdGNoIGVycm9ycw0KDQp2Mj8gSSBkb24ndCByZWNhbGwgc2VlaW5nIGEgdjEu
DQoNClRoaXMgcGF0Y2ggZG9lc24ndCBhcHBseSwgaG93ZXZlciwgaXQgZG9lcyBhcHBseSB0byBu
ZXh0LXF1ZXVlLiBJZiB5b3UNCmFyZSBzZW5kaW5nIGEgcGF0Y2ggdG8gbmV0LCB5b3Ugc2hvdWxk
IGJlIHVzaW5nIHRoZSBuZXQtcXVldWUgdHJlZVsxXS4NCg0KVGhhbmtzLA0KVG9ueQ0KDQpbMV0N
Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RuZ3V5L25l
dC1xdWV1ZS5naXQvDQoNCj4gLS0tDQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX21haW4uYyB8IDE3ICsrKysrKysrKysrKysrKysrDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmX21haW4uYw0KPiBpbmRleCBkMzg0ZGU0Li40NWE1YTQ4IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gQEAgLTMzMjksNiAr
MzMyOSwxMyBAQCBzdGF0aWMgaW50IGlhdmZfb3BlbihzdHJ1Y3QgbmV0X2RldmljZQ0KPiAqbmV0
ZGV2KQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX3VubG9jazsN
Cj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGFkYXB0ZXIt
PnN0YXRlID09IF9fSUFWRl9SVU5OSU5HICYmDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAhdGVz
dF9iaXQoX19JQVZGX1ZTSV9ET1dOLCBhZGFwdGVyLT52c2kuc3RhdGUpKSB7DQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXZfZGJnKCZhZGFwdGVyLT5wZGV2LT5kZXYsICJWRiBp
cyBhbHJlYWR5DQo+IG9wZW4uXG4iKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGVyciA9IDA7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVycl91bmxv
Y2s7DQo+ICvCoMKgwqDCoMKgwqDCoH0NCj4gKw0KPiDCoMKgwqDCoMKgwqDCoMKgLyogYWxsb2Nh
dGUgdHJhbnNtaXQgZGVzY3JpcHRvcnMgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoGVyciA9IGlhdmZf
c2V0dXBfYWxsX3R4X3Jlc291cmNlcyhhZGFwdGVyKTsNCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChl
cnIpDQo+IEBAIC0zOTc3LDYgKzM5ODQsNyBAQCBzdGF0aWMgdm9pZCBpYXZmX3JlbW92ZShzdHJ1
Y3QgcGNpX2RldiAqcGRldikNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpYXZmX21hY19maWx0
ZXIgKmYsICpmdG1wOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGlhdmZfY2xvdWRfZmlsdGVy
ICpjZiwgKmNmdG1wOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGlhdmZfaHcgKmh3ID0gJmFk
YXB0ZXItPmh3Ow0KPiArwqDCoMKgwqDCoMKgwqBlbnVtIGlhdmZfc3RhdGVfdCBsYXN0X3N0YXRl
Ow0KPiDCoMKgwqDCoMKgwqDCoMKgaW50IGVycjsNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIEluZGlj
YXRlIHdlIGFyZSBpbiByZW1vdmUgYW5kIG5vdCB0byBydW4gcmVzZXRfdGFzayAqLw0KPiDCoMKg
wqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmYWRhcHRlci0+cmVtb3ZlX2xvY2spOw0KPiBAQCAtNDAw
OSw2ICs0MDE3LDE1IEBAIHN0YXRpYyB2b2lkIGlhdmZfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpw
ZGV2KQ0KPiDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9jaGFuZ2Vfc3RhdGUoYWRhcHRlciwgX19JQVZG
X1JFTU9WRSk7DQo+IMKgwqDCoMKgwqDCoMKgwqBhZGFwdGVyLT5hcV9yZXF1aXJlZCA9IDA7DQo+
IMKgwqDCoMKgwqDCoMKgwqBhZGFwdGVyLT5mbGFncyAmPSB+SUFWRl9GTEFHX1JFSU5JVF9JVFJf
TkVFREVEOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoC8qIEluIGNhc2Ugd2UgZW50ZXIgaWF2Zl9y
ZW1vdmUgZnJvbSBlcnJvbmVvdXMgc3RhdGUsIGZyZWUNCj4gdHJhZmZpYyBpcnFzDQo+ICvCoMKg
wqDCoMKgwqDCoCAqIGhlcmUsIHNvIGFzIHRvIG5vdCBjYXVzZSBhIGtlcm5lbCBjcmFzaCwgd2hl
biBjYWxsaW5nDQo+ICvCoMKgwqDCoMKgwqDCoCAqIGlhdmZfcmVzZXRfaW50ZXJydXB0X2NhcGFi
aWxpdHkuDQo+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoIShuZXRk
ZXYtPmZsYWdzICYgSUZGX1VQKSAmJg0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGxhc3Rfc3Rh
dGUgPT0gX19JQVZGX1JFU0VUVElORyB8fA0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYXN0
X3N0YXRlID09IF9fSUFWRl9SVU5OSU5HKSkNCg0KSXMgbGFzdF9zdGF0ZSBldmVyIGJlaW5nIHNl
dD8NCg0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9mcmVlX3RyYWZmaWNf
aXJxcyhhZGFwdGVyKTsNCj4gwqDCoMKgwqDCoMKgwqDCoGlhdmZfZnJlZV9hbGxfdHhfcmVzb3Vy
Y2VzKGFkYXB0ZXIpOw0KPiDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9mcmVlX2FsbF9yeF9yZXNvdXJj
ZXMoYWRhcHRlcik7DQo+IMKgwqDCoMKgwqDCoMKgwqBpYXZmX21pc2NfaXJxX2Rpc2FibGUoYWRh
cHRlcik7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
