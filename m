Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F005890C95
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 22:37:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41331417FC;
	Thu, 28 Mar 2024 21:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XExCQ4zMdxXl; Thu, 28 Mar 2024 21:37:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B1884181B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711661832;
	bh=CsFY+Rqlinj6otdTMta62x3jOmzU0GrdqiaQre5EzIM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Od3oPR9616PTOqeu9hNSpkel2bskhEvYaX29Y+2PlINpgJ4iMVPn9KlzZhtTpc4E0
	 5AYwHrjoOFqOrhhdEfHwfVIoFVBhUHoshm5bdzS5mi40qHdl7C3cN4DuASFwC+VzoR
	 ufcyQAsw+ublk6vye15qTYNpOX80ZNjWeXEbPWoDiQUwv1n1ZBbblsPmowg71rY6+k
	 Y0CjHztTP1eoO4BN0eZpdANqga84ZPl5WqWCFuU52vmMQ22q6iXe7Dd5K0+pKajdLH
	 MlzjQJHevPbDVNgr2zk7evs7Qff3MHLdCh09bA+p1mb3KI/6V9ku17bfSy5CULf6YZ
	 QgijLcTxYK21A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B1884181B;
	Thu, 28 Mar 2024 21:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D8DE1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17F1B4171F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjiiXcKhPzP6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 21:37:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mark.d.rustad@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA6F441719
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA6F441719
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA6F441719
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:37:08 +0000 (UTC)
X-CSE-ConnectionGUID: L0xZ9NnoSvGg7ulh/xlauQ==
X-CSE-MsgGUID: dkmTXV+dSF+AWVVNQi347Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="10631616"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="10631616"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="17167977"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 14:37:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:37:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:37:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 14:37:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 14:37:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lAwXtr4gdLMsYOYSg9iIheATpcwTK8MARxHsWvhMDqdIC20OuQnRrgDWHMsNvdDeAqd4XaR3QOXxZdkITmzjg1mWTfqoWabsEnbIv7jIHBxhTRLkDLqiR1TIy7LTfwm3qFszQ9ZcHFknWWFeMWDIGhOgkHkitEx6OdEO9YAMcXsS7B9YraZNsjoQSxl0w4jreRg+2zpMTLgFvE7a7/Jf7AuW4h0Y1Iv5SEgAJzRGI3l4S346UVaNBxFEMqSuJJ2VG0A5kVllDWAWhSTjoKy/5KgeFrtP/HYmu4mqQvzB2KpjLBJBqYFCOr8jTZbep7W9R7x2QxLPBRJVFGIufha+zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CsFY+Rqlinj6otdTMta62x3jOmzU0GrdqiaQre5EzIM=;
 b=KFCmLYaNNtbGmwu/1yi+xQR6fSK+yeUvFgRS8ifiC+FlTcOSBITsL/0haUh1JCXWHf5shKiWCb7raXRGaV4vqqknRxsI+SHKdrIJmx23LYrXx0o6XnTBWLy7keKyJMWfKkktB3G1t/zQ3/HJRtkxH2kz0eEgOeapNOZ3xnVAbe4mXPtU2+kYe+gQRfFLAuMLrReARIcY/Rh2/3vNuBN18hagvaCME8hpKHeN8StI5Qb7Gw1JzV6BHxyF7R7F59i0H05Nsf+qSmD06zV6okhhysQP2+kYx5krcr78RGvYjFfhghvFwCeMwrL6zusuxg7frwI6An0R1cLNJE72ye1agw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5484.namprd11.prod.outlook.com (2603:10b6:408:105::16)
 by DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 21:37:03 +0000
Received: from BN9PR11MB5484.namprd11.prod.outlook.com
 ([fe80::c1c1:4367:a0a8:3c04]) by BN9PR11MB5484.namprd11.prod.outlook.com
 ([fe80::c1c1:4367:a0a8:3c04%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 21:37:03 +0000
From: "Rustad, Mark D" <mark.d.rustad@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: update E830
 device ids and comments
Thread-Index: AQHaf50iJB0syNq710CDp319tq8fYrFNqxuAgAAFwgA=
Date: Thu, 28 Mar 2024 21:37:03 +0000
Message-ID: <6C819B98-E110-43A9-8578-3C04B03FC954@intel.com>
References: <20240326163635.1529314-1-paul.greenwalt@intel.com>
 <20240326163635.1529314-2-paul.greenwalt@intel.com>
 <212d2acd-5f5a-aa20-ca24-13746f23d492@intel.com>
In-Reply-To: <212d2acd-5f5a-aa20-ca24-13746f23d492@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6.1.1)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5484:EE_|DS7PR11MB7860:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 002gmhq/XpEXPPWogTAkl/jDgvg21vS1VhK3f096tLsf1NNbaDQ5LjP/wezAimZE/vjTZtUkFH4Dmxp3gNBXD4CEim3PIn/TG6AQuZPT2JjyGkuJWSlIc9z9RT1U7tSswYDcrGFlEK383shEYH6lzDn7XtG/6BtRLZwovmTlq2//atYQk4VQooH1iEd98/wac+xAqii/fmWQG2B65H6aEERmdbLLXEINxZo1EUT3d68uPnQdPMb9HSRKgo5PFn3Z+hAokYwjAkMnq7VTfK6XDPMUmtbUQFTBGNGax5ohx+BJYOONlo3Jv2Mpb3121L2AN5mXjoQWszwNogcJZXEqF2+1yMarIdM/S6uZorAWNFzem69xsXr3IFA2LcWoDEUhCppepvWBqaTqRRpMHf77uSKKanWcW8qxLtyIYzP3XUMk4YBQMQ7cfPpdCWpYj5DtQFyNI8LVosx+YViUNz4LJO7XE3Dw58xCeWQb3y3h8zSHQOeE8OdVmQJe+UMkVXmw0OB+ZsWErYEscejieh842eFGNlMrZ7+HoNMj7hC7ZQyoFeZ9JZVloun97JHjBJiFy7dOOWt/tvHUwB0cACRqCQaC1248vdeuVqaVm5NVeQ0KTfoVKL3xvwFQTKrD2sq86ByTxzxwbsewPD/w2P/+y/a0C3hYX9GgROtb5cvAzzg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5484.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHYwSnZYSFBudmlrdFZYRzhLMEdGakJHcmpRaHpKZUtNUEMzWkpHb25qZXFN?=
 =?utf-8?B?NnBLc0hCai9sNHRCVG1idUFZZTJkWC9qclk0TU54L1BPakY0NFB3VjVaZlZa?=
 =?utf-8?B?SGZldkpSVTRWWm53MTdLL3FHWmcxNVVvU2owcXBZcnZKZVJTUmlGa2JmdFpv?=
 =?utf-8?B?dGZjWkhlMXRqNmFKYzRtcUZkUlZUa083TU5CcWZtMWh6Ly9rdzloaDlmVHlW?=
 =?utf-8?B?bXdyRDBlK2F3WGxveGJObFBTTGpxZkdoTGZ0OE9MZGlzS2dFUVpUSnFhVWRj?=
 =?utf-8?B?SUwxaTliTkpNem1FQmJBWVpvai9SOFZoS2VGVWNqNDJjdG5mOThzbFR0K0Rv?=
 =?utf-8?B?MFFlb2MwazBNWlkvUFFDSGxPVEZZT0tuYlgvR3RCOXZsZG1aaEVycTRxQ2FH?=
 =?utf-8?B?dEZxbGJmTE11bWFoT2VZV3B2NjVNZWVTd0FsT0VDS3grZ1lscHVJSC9scExO?=
 =?utf-8?B?Q0dHcmg5S0EvVHJ4dWVwcG9MdDJIaElDaWRvMmFidWYyaCsydUdxSFp5aHk1?=
 =?utf-8?B?L2FJK3huZ1hJYlgxUUZHQzJ4WG5DL1hwYVI3TXBaWVBlSzBRRVArUTBqK2s4?=
 =?utf-8?B?QVFhWm5EbHBZeThub2tCbC9jM3hDbTZKc0JrbFZPL0ZkWUlPdTRnWDBKK3Vy?=
 =?utf-8?B?YUtNaXZ1WG9kbnpLZnZzYjcrZ0dZRG9ETXZvZkVvSEpWcG5iSVRUcCt3aGts?=
 =?utf-8?B?OE9Qa2pVNHhRK2tjQkxnV0VPZ2tncm1yNTgzZ2I2OEFIcVNaTmVwMmpNZnBm?=
 =?utf-8?B?YitlWTFvbEQzWUYxaUdKTmVRelNmTG5WYjFwa1pnUDRsOUNoYWNUVGhROVNL?=
 =?utf-8?B?RDB0aksydmdVcmRDQmpydGNjbTRqRmtJNzhNRHZSVDdmb1hERkZyMUxUR3Zh?=
 =?utf-8?B?SU90bjAzb3VXS0lxNVdNeWhjeCsvK2V1WjNxaVhnTVRhMGliakxhZTZ6YkZY?=
 =?utf-8?B?S0t0YzE1TUtYYkU4eU13Z1lacWJnTkhsZG9IMmxQODRaS0FsS25Cd21TMWtX?=
 =?utf-8?B?RE0ybXorUjI1SmVVNlh5WFBmcGpLV2V6aktLenNmdmtVdzZFN1loT1B6QTZX?=
 =?utf-8?B?Sm1CdHV5YU9odThaVTJhYUlHMlB6aTRIayt4YnhhMUw1dGlXMzJwdkI3NUdO?=
 =?utf-8?B?QVJ1VllBdlloakV2QmJJbjhmSytMZnExd1VtZE43eWY5NW9nUE84c2F6bWg0?=
 =?utf-8?B?UGl3MjUvOVVDSnp6VitqcThkU1llcTM0SGZ0SUpzTi81R0p1UU12MHNQY0dN?=
 =?utf-8?B?aXl5WTJUU3hyYkFSeHVhdlVqbEFPc3cydGdTWks2M05MMVduTmZTTUV1ZUpw?=
 =?utf-8?B?Z1NlM0NZMlRLSXRzUDU2dDlBd0tZWXhhbWhpcjlYZ2MvVlVpMStQL2QyTlh3?=
 =?utf-8?B?M05WdFF4MzNwUUkvOUV4NUN2aDdFOEZYak5MQ1NDbnYxRHplSldXMzVEaHor?=
 =?utf-8?B?eWpZN09LM0RCL3QvNGxXWjh1V3F0TU0zNlZFcmVGd0IwRFRkS2krdjY4NVVI?=
 =?utf-8?B?SmswcVRIcG9UK1ZJZHVONTBvVmZLN3pUb3BYTnM1NzZ6dmhUSlZOZzJLdGVI?=
 =?utf-8?B?Y2RMTHg3cklBMHdtWmhGcEtuUTZSdjlEWHhBQU1NU1ZyampVbUJNUGdPWlpa?=
 =?utf-8?B?S1A2ZDlwaU9zWHhjNTlHSVB1Yi9EeU80TUxqVitQeENFQnhWNnhQY0QwdXhY?=
 =?utf-8?B?Q0FXTm0yWmhkRU91Q2pPUkFNVUY1OW5NR2xJcWcxUlZBa3NDVWU0RUtvZmc4?=
 =?utf-8?B?d2hqeXQ0SHYvZWxWYVUrdXFkOEY0d1FKYXZGNU1NVUFraUg3bndPUGNXVSts?=
 =?utf-8?B?YlQvMnFYcWh4TTIzWXB4b2c4OXJua1lZRm8wVWpOQW1xZHdYaFo1VG9EbDRP?=
 =?utf-8?B?aVN5OHpQL3UvcGd6WVlLY2g5N0toamJDd0o1UHJER3cxQVRMd24rYXRvbXJN?=
 =?utf-8?B?b2V5WlBhQnZkd0xWdndsUlBhcHd6SldxVWlIYzJMd0ZQUnlzOGdxbkQ1MUdB?=
 =?utf-8?B?MThlYnAvWnZUOFY3Y3AzWVl4c0dxSEQyUXlkelVaeEtCZnBnM2k2VWN4THdH?=
 =?utf-8?B?N1FQQnR5Y0V1NVpuTHl5SnJRT2Z1UmRKNGJRSkZUOUJvVFNkdzhrb3A4aEdv?=
 =?utf-8?B?clJVOGY3ejVzY0w4VnBvR3BUWW5MaVhWMXZ2VGIyeUhJbFl1U21vRVQ0Nll1?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <01E1823B0BBB6244A09F81319C85514D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12aa9960-5f9b-45bc-f54d-08dc4f6f354b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 21:37:03.3536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7zghathvAFTqFTHTFlKq6Cf30ocCeSo7dI5nOznXpyii2fiD3K0mUZrCENKzP9n8gkMjnScIEbG9LpCCTvajtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711661829; x=1743197829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=CsFY+Rqlinj6otdTMta62x3jOmzU0GrdqiaQre5EzIM=;
 b=Bk+jYIynMBk/yJfoUaTisDnTiQN78PXcpfBGA06TM6hOB4O5TVdB/3Hx
 QwHMcJhIVX1CxhDhREmwl7phQzKreDvxGAPsyfNzZYn1p1b6bnpsPK4Fb
 1yPzHDhgLezEx9HuoJ8CLDbLogvRb+cMLUZXdbwtvHYXMhXxsesBG1X5n
 khD1R1ZLmYM1bym5dC8FGs9amXQKyevtSY8NmuqevRakx69QHGmdV1+ih
 +PxRUds5xt9yf8ASOJBklUpueMlZBbCvCu06gLQVo0kqd2yOHhWTXbh6m
 AIqjqb6fim5bqHfyziuRAvuj4XISSvNOTRHMsK4N6E9uSVYW6rxc2GhTK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bk+jYIyn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ice: update E830
 device ids and comments
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Greenwalt, Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBPbiBNYXIgMjgsIDIwMjQsIGF0IDI6MTYgUE0sIFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT4gd3JvdGU6DQo+IA0KPj4gKy8qIEludGVsKFIpIEV0aGVybmV0IENvbnRy
b2xsZXIgRTgzMC1DQyBmb3IgU0ZQLUREICovDQo+PiArI2RlZmluZSBJQ0VfREVWX0lEX0U4M0ND
MF9TRlBfREQgMHgxMkQ0DQo+IA0KPiBUaGlzIGRvZXNuJ3QgY29tcGlsZTsgdGhlcmUncyBhIHN0
cmF5ICcwJyBoZXJlLg0KDQpOb3Qgc3RyYXksIGp1c3QgbWlzcG9zaXRpb25lZCBpbiB0aGUgZGVm
aW5pdGlvbiBhYm92ZS4NCg0KPiAuLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbW1vbi5jOjE2NjoxNDogZXJyb3I6IOKAmElDRV9ERVZfSURfRTgzMENDX1NGUF9EROKAmSB1
bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhJ
Q0VfREVWX0lEX0U4M0NDMF9TRlBfRETigJk/DQo+ICAxNjYgfCAgICAgICAgIGNhc2UgSUNFX0RF
Vl9JRF9FODMwQ0NfU0ZQX0REOg0KPiAgICAgIHwgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fg0KPiAgICAgIHwgICAgICAgICAgICAgIElDRV9ERVZfSURfRTgzQ0MwX1NGUF9E
RA0KPiANCj4gLi4uDQoNCi0tIA0KTWFyayBSdXN0YWQgKGhlL2hpbSksIEV0aGVybmV0IFByb2R1
Y3RzIEdyb3VwLCBJbnRlbCBDb3Jwb3JhdGlvbg0KDQo=
