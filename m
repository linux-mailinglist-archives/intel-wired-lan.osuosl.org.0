Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B0377FED8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 22:06:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAB8A60A69;
	Thu, 17 Aug 2023 20:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB8A60A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692302764;
	bh=2JUPYWxUeUxWHxBCg3lezGJjGB7GAneblMEe33V1Jm4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GBZmyqyO4xyY5gaauX5zeAR8pCOew6pJf10YKuNihi3V5o3WOR7w6DN6Eu9Z9XsTj
	 hG7nd/SXrnWfSBd5QT6eyLTx3dl//+EBkaza8fXP9f+e/Fhx6pzd7rbwa2MGOiYt1H
	 DfnvCQlwQYjFhGe3wv1vTpWh2q/z9bWc0/g/dBEvMlJWxuN/lhgYWoxkgZrmMc8r1I
	 /q/NjLqTcrv+fOBFcaNq5QQhcy8elfgPHrDb2iEnrE9r7i1FClxAS5B055aRnWoJQJ
	 1Cpuw6PCw9sNFr2Sj1rcVKN6sGSQpHqHe/aZkOIupnBp02Bpz6vJjUbKVZgycO+dYK
	 gCkwzn5BZmmOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKa0zw2hsIJA; Thu, 17 Aug 2023 20:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD4C960648;
	Thu, 17 Aug 2023 20:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD4C960648
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4927C1BF360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 20:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2167883C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 20:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2167883C15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8XlZMO8orRw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 20:05:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 733C583BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 20:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 733C583BE4
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="375698267"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="375698267"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 13:05:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065424016"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="1065424016"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 13:05:45 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 13:05:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 13:05:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 13:05:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hk6Myjd87bVg4t4w8UziKGwMQ99zoL3+5HxMT7NK+VvfV7ycyrIOi9PcTVTEpgoVI3SzIDBai761wvDeS+gVHDTUFUlMzsCTvaXcFQ2pKmhVgjfeVcEvm6xWXwKdB0yqK2prx8hvGr4V5/iNpO8uvKkOJSshzeV/8/rzPREOAjpv8mkr81cjJ/lYTEX3rlvIsOmRNDe8C8LYQZeZ21I0UqeWDC/sGRt6Opl9HF9sMdLuAkqky4mQV0jnZ7AYfoBsl1iK2zb7PFJzwSt9gonlhBwM3rsYxyjmO0DfyJ+AIulE180FkZin2vQ1/KXva7Fwn8DO0dzLwe+fa1pdCOVlGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UM3VdK4Px++aADOLCkMic7y0XbbuFApzy0QCCI0/NhM=;
 b=ZnELW8w0h+yQ7u8zzMlSV8QZ6Z9f5ZHgNgAkNBaN1hC+kmkOadg+l3UhHcjSqch6LW/el6RC7heaBtxzh6qcmaYP2KJRgGqZ70/rwkXV0lFd2X9acgT8X4mZmvdHA21lnwPkecPTY9FUSigaeMC2eUEIPefEWi7ITS5tryIGvSk65tlXaGmWrdKFy/SVA+NauBDMUL42ihm2L6WZZbcH7s8oxAg1mwLFzM7WL7icU6HZ8SuunFkyWGUXT5MxUTQX4sapy97ZiZATTCs3tOSlDjHfhomTtFAY6FGyQJ7HnAFAdEb4T4ZXJrXkrvSJQR2HvbaNUDHFM9Z7yTFmx0egYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ0PR11MB6621.namprd11.prod.outlook.com (2603:10b6:a03:477::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Thu, 17 Aug
 2023 20:05:42 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::64fe:9fb7:f1f7:5208]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::64fe:9fb7:f1f7:5208%3]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 20:05:42 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v3] i40e: add tracepoints for nvmupdate
 troubleshooting
Thread-Index: AQHZztG469odkUOmoE+syROabI+vKK/rpGgAgANJ7VA=
Date: Thu, 17 Aug 2023 20:05:42 +0000
Message-ID: <SJ0PR11MB586624EB6AEA31190272412FE51AA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20230814170640.1642287-1-aleksandr.loktionov@intel.com>
 <0e95cae9-14e8-a2f1-f3c4-ffe897ce3bbe@intel.com>
In-Reply-To: <0e95cae9-14e8-a2f1-f3c4-ffe897ce3bbe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ0PR11MB6621:EE_
x-ms-office365-filtering-correlation-id: 29b45d32-7219-4f76-1957-08db9f5d55c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k79aoLNP5bdS5AHrfmzN4Qb4M2JzMKqpddklbQAsk0FypAX7p9Wb2+80RsQ/feB1yQIkupamSLJeyWD4iE/DW03akWQPOCr4fxwABlwCUa7DQvWwPOD+MfffrDRRV0Vre8PNi6VZves3MEQGftTWKv/BhJRxKGuLqyOmmDn0OeaUCh6AkCPisDEOeUA0Xah40UW430+hjbl48dFchvhxo9ko1aJWosHvA4eeW+qE9Ubt6BB02wfDHySFZUHL/7DFhhvRnJLAKeoi+F8MYE41hyMPA2Jbxt8ba0Y+MEQyhPsfIAPdyoS2rx+KYDlE+Dqg6kfvQPYdV2BfRBmDppc3OhWRvkiNmP1InSkpossM52XAAFgIAt9DuK6x/UE3WPP3kaeFdqiankTRCj2j6YGuDccpplV8Wd1tLfyqE/TwwwWM6gubbAMjSSnO6YuaaaUzo9acaRpTBi1P4J4Lj94wFNvORZ/7kAfs6O0roysuaQJCWkXrOaNiUq3tBELcoEoKTgNv6FwYnlM7INoAtLxfhYuDI8a/chPnBOHLZK5zlypJzzyQOZ/uJuHW0YPoUMHoPFZzBh84Zr1g80B3Jvz4HERxae8yvpChS77KXJdip31U9Cd3ViHSLPnFZ5gFH5Xu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(346002)(376002)(186009)(451199024)(1800799009)(2906002)(30864003)(83380400001)(26005)(86362001)(478600001)(6506007)(7696005)(71200400001)(33656002)(53546011)(9686003)(55016003)(5660300002)(52536014)(41300700001)(66446008)(122000001)(316002)(64756008)(76116006)(66476007)(66946007)(66556008)(110136005)(8676002)(8936002)(82960400001)(38070700005)(38100700002)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NldsUUtNSjRhc2FzVitKV0JiMGRsQXR6LzV5OUtaSDJ6THBoSkk2ckhjNGl4?=
 =?utf-8?B?WlltT01sSWhvWS93Z1ZrOXRGbWdmR0Y5WkVEMWlYeU0xY3dSRVY3ZEliLy9W?=
 =?utf-8?B?R1MzMkFNRnFsUEw5dnd0ODdhZmpreHhpK2wyYWU4RG9HSWxiZnV6cWVDa1Zm?=
 =?utf-8?B?a2U0RUlKem5rc2p2bFg5OFZsMVhmUlk0alFDWTR0NmRrZ0lGdDhpaG5MeEpZ?=
 =?utf-8?B?SjN0N2RCdGpPZFlxQm1acXBPMFBhYU0zYTRlTDlaeVFIcllFT0Q2Q2pNZi9Z?=
 =?utf-8?B?aGFFQXlzdDlzOU5TbEFzVXNPZ2FhV0ZSYzBmQlF1YnRabS80ZDdLaWJvdG11?=
 =?utf-8?B?aldRdEp4by9ZWFJiQ3RlTkh2bWZHMHFqdFRsVEM4N1Z3R1J0TkFUNlhLaHVS?=
 =?utf-8?B?bXJlYW1NTUhSeWw5aW0zOEdRc3pGYnlBakZVY3l4Ym5aUUYwTEdEQnlCSC9u?=
 =?utf-8?B?Tll6Sm1YcSt5bmZ2OFR5SnBvQkdFZldnaXlidW1UQ3RWQmYyYWxFRnRqTnFB?=
 =?utf-8?B?ang2TGNPV2trZFd2QnMzVjd6Z2FrZGhLTVVaSWJjalFvUzNIWjduUGhTWGNx?=
 =?utf-8?B?RFhlalFhM1dpNGlpSkZmUk4ydWlZMm1nc085Nk50NE5KNkdmTnFRRUJjS003?=
 =?utf-8?B?YTJCaTRsQm5XT3FMdFdLTFVsNlZlQUFsd3JPSlc0OW9Ldk1CeDlybVRFQmI3?=
 =?utf-8?B?b0lwRUF4eG8xL1owQnlhZk5ESzNna0h1R0Rtd2w0NXlBT3JEWW5nUjU3dkZw?=
 =?utf-8?B?TmhqaUUvcnlpS0RmWngwOTUxODd1OXZsWXRQTVVHbE9vOXpZN2ROeUQrNnIr?=
 =?utf-8?B?dFMvOVFGMW5yL1pvdkJ6bjhNU1JyS3c1U3ZRNHZwM0RadHRJMlJtanJIai9l?=
 =?utf-8?B?YVNJbG8xUkIzTUJpalhZVi93NEw2VDNyc2V1ZWNIdHN3MW9VYWdXNDF0V2lj?=
 =?utf-8?B?NGJwc1JLTGlPV3pWV21Eb2dMdWtmRmkwRnJudm5MK3JZVVgrLzkzb2ZVSFhn?=
 =?utf-8?B?azUvaG83L1FoelpCNmZWNElpM2x5QlNlM0wwUnl2Ry9ZOFVZellHa1hLVFNq?=
 =?utf-8?B?ZmVXNG1VR2RETzJSS2hEYUpFc3c4Qm85UW5VZ3Nud1NnY3ZaNnFDMFdBbTNo?=
 =?utf-8?B?ZU5yUDdveU5FYmZ3L3hWdlZsOVhIazV6citoUncrOWZCRk9IeVpmUi85dStN?=
 =?utf-8?B?azgwcUlFNUpnTGt3U3NhMlZ3VGJSVWY1WHQ2OER2Y1IwQ3ZGSWtWQ3JSVWhw?=
 =?utf-8?B?WUNHQk1lUFVpN3pxdHNMUXgrMi9XZ25hMjFWVUNiZGNYa1lpTkNIeElXWExH?=
 =?utf-8?B?SWx2N1hqeGEydzhyeC92L3hiZGIzRU13clFSSTNBcExKeGdhdUwwbjdOa3o1?=
 =?utf-8?B?Umc4TklXaE5NNk01dU5kZG54L3puZ3JzMDh3c2JnRXIyQ3RCUzR6SkFmU21R?=
 =?utf-8?B?TUdqdUcyRSt6L1lqTWF3bVdwVFA2bVdPeGRZVWxHY1ZJS2p1NTRYR2NVN0NE?=
 =?utf-8?B?R2JiV2d0VTJxcWpad3JyaDlQUmxIOWdKaGE5MkdMWTg0cFI0QjlValdjQnNh?=
 =?utf-8?B?d3lRbzdBdnQxYVZYN2tPMm1zaURQSXNxeE1oUHBVT0JLazIwam1ibGhsSElh?=
 =?utf-8?B?TE5melNlRi9vdW9pQmlWN0g3S0xWYXgwOHJIVzJ5dnNESEx2VTRFaFVzTFND?=
 =?utf-8?B?QUp0STFCNktoWFI4ejBVbGJwVVduNmFvZzJCckNMMmFKckF4QTZFemtuR3JE?=
 =?utf-8?B?NXpLYmtQWjBIeWwxamRDTk9Ba2g4ay9ETUtJMkJMSFVpb1FGd0tMSndWU1BE?=
 =?utf-8?B?ai9hRXhWM3pKbjNCYVVHeXpnancvSlduNlBYZjNMMEpJQ3lMNE1WenNOWXJo?=
 =?utf-8?B?djN4USt0a2dlNTV0MlNOekVEbjM5QkMrdEVGRjFpVUx1bC9vMDFiQnBiQzha?=
 =?utf-8?B?Q0R4T0ZJWlM3b3hpemlmeGpBZjMwTW4zWXhPUVZES1NORVB2OGt5c01LR0Ni?=
 =?utf-8?B?bUVObzlGeDhzNHAvZXVINkNNbVdJaWNVSkZERWs1THJSald5S3Y4ZDBCZGRh?=
 =?utf-8?B?b3lvREUzQmh3VmJMM1ZWQ3l2QUgrU2F3WXpXdzdBdy91b3lBTjFJMGZ3Mjg4?=
 =?utf-8?B?SnplUkRkZzJUTnM5MUh6Tk11cnNiRXRXbW1yenhQMVdabmw1Z0JSK3dHSkk1?=
 =?utf-8?B?UVE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29b45d32-7219-4f76-1957-08db9f5d55c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 20:05:42.2638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IZ96ynAQSqZXJ2eIa5rjcK4tgw8N/ApelfR6SUauimGpvDG3MTPs5w0FjxXVxQ0ilxBD6xYAup0YIvxawIaQsw4IjjfWlanE2PtuYGgTsVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6621
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692302756; x=1723838756;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UM3VdK4Px++aADOLCkMic7y0XbbuFApzy0QCCI0/NhM=;
 b=iH+kgEy7rYRHEq4jR22m44buab+/0MQG07HG/4ANCO11Kge6RqhGINAK
 9mZoLtL9tZHXTF5GUTgTQAXFi8dhxfvVQ1iPfsg5cr/pqiTcK+fltTkIF
 ryghslUDLdn+4V/Spc25hb+WlA8XlWn8I3DiLtlVbCsssrcwwkmChwUds
 mHOff2EeOJv06DJjVXwPMJFMzd1nWhn0lyDZ2PWs1d9/Gnywf/0kcQWZv
 F7DsH9IS1h732DQ7iE5N5LqnE5IRj+jJ1CKDdIICDCPTVtUnwSj2kDjEW
 K1sMWZHSyjmWOCWPb/OpmLsRyf/l3ZVf2ipxY8bQ6R/AZurn1WYM3LXzO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iH+kgEy7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add tracepoints for
 nvmupdate troubleshooting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Tuesday, August 15, 2023 7:51 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH iwl-next v3] i40e: add tracepoints for nvmupdate
> troubleshooting
> 
> 
> 
> On 8/14/2023 10:06 AM, Aleksandr Loktionov wrote:
> > Improve nvmupdate troubleshooting with bpftrace utility.
> > Add 'stable' static tracepoints to decode nvmupdate commands
> > compatible even for future driver versions.
> > Remove 'static' from eeprom functions declarations, make them public
> > to enable dynamic kernel tracing and profiling.
> >
> > Example:
> >          echo "i40e_*" >/sys/kernel/tracing/set_ftrace_filter
> >          echo "i40e_*" >/sys/kernel/tracing/events/i40e/filter
> >          echo 1  >/sys/kernel/tracing/tracing_on
> >          echo 1  >/sys/kernel/tracing/events/i40e/enable
> >          ...
> >          cat     /sys/kernel/tracing/trace
> 
> checkpatch reports multiple instances of:
> 
> CHECK: Lines should not end with a '('
> 
This is file full of macros, I don't break the style of exiting kernel code, so please ignore this warnings.

> and it has clang issues:
> 
Is fixed in v4

> +../drivers/net/ethernet/intel/i40e/i40e_main.c:10854:6: warning:
> variable 'ret' is used uninitialized whenever 'if' condition is true [-
> Wsometimes-uninitialized]
> +        if (test_bit(__I40E_DOWN, pf->state) &&
> +            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +../include/linux/bitops.h:61:29: note: expanded from macro 'test_bit'
> +#define test_bit(nr, addr)              bitop(_test_bit, nr, addr)
> +                                        ^
> +../include/linux/bitops.h:49:2: note: expanded from macro 'bitop'
> +        ((__builtin_constant_p(nr) &&                                   \
> +        ^
> +../drivers/net/ethernet/intel/i40e/i40e_main.c:11129:32: note:
> uninitialized use occurs here
> +        i40e_trace(state_rebuild, pf, ret);
> +                                      ^~~
> +../drivers/net/ethernet/intel/i40e/./i40e_trace.h:48:69: note: expanded
> from macro 'i40e_trace'
> +#define i40e_trace(trace_name, args...)
> I40E_TRACE_NAME(trace_name)(args)
> +
> +^~~~
> +../drivers/net/ethernet/intel/i40e/i40e_main.c:10854:2: note: remove
> the 'if' if its condition is always false
> +        if (test_bit(__I40E_DOWN, pf->state) &&
> +        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> +../drivers/net/ethernet/intel/i40e/i40e_main.c:10846:9: note:
> initialize the variable 'ret' to silence this warning
> +        int ret;
> +               ^
> +                = 0
> +1 warning generated.
> 
> 
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v2->v3 apply on dev-queue branch
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e.h        |   5 +
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  30 ++-
> >   drivers/net/ethernet/intel/i40e/i40e_main.c   |  20 +-
> >   drivers/net/ethernet/intel/i40e/i40e_trace.h  | 212
> ++++++++++++++++++
> >   4 files changed, 256 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 6e310a5..d48f9fd 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -1170,6 +1170,11 @@ u32 i40e_get_current_atr_cnt(struct i40e_pf
> *pf);
> >   u32 i40e_get_global_fd_count(struct i40e_pf *pf);
> >   bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features);
> >   void i40e_set_ethtool_ops(struct net_device *netdev);
> > +int i40e_get_eeprom(struct net_device *netdev,
> > +		    struct ethtool_eeprom *eeprom, u8 *bytes); int
> > +i40e_get_eeprom_len(struct net_device *netdev); int
> > +i40e_set_eeprom(struct net_device *netdev,
> > +		    struct ethtool_eeprom *eeprom, u8 *bytes);
> >   struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
> >   					const u8 *macaddr, s16 vlan);
> >   void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter
> > *f); diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index bd1321b..259301c 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -4,6 +4,7 @@
> >   /* ethtool support for i40e */
> >
> >   #include "i40e.h"
> > +#include "i40e_trace.h"
> >   #include "i40e_diag.h"
> >   #include "i40e_txrx_common.h"
> >
> > @@ -1848,8 +1849,8 @@ static void i40e_get_regs(struct net_device
> > *netdev, struct ethtool_regs *regs,
> >
> >   }
> >
> > -static int i40e_get_eeprom(struct net_device *netdev,
> > -			   struct ethtool_eeprom *eeprom, u8 *bytes)
> > +int i40e_get_eeprom(struct net_device *netdev,
> > +		    struct ethtool_eeprom *eeprom, u8 *bytes)
> >   {
> >   	struct i40e_netdev_priv *np = netdev_priv(netdev);
> >   	struct i40e_hw *hw = &np->vsi->back->hw; @@ -1860,6 +1861,8 @@
> > static int i40e_get_eeprom(struct net_device *netdev,
> >   	bool last;
> >   	u32 magic;
> >
> > +	i40e_trace(ioctl_get_eeprom, pf,  ((u64)eeprom->offset << 32) |
> > +		   eeprom->len);
> >   #define I40E_NVM_SECTOR_SIZE  4096
> >   	if (eeprom->len == 0)
> >   		return -EINVAL;
> > @@ -1874,10 +1877,12 @@ static int i40e_get_eeprom(struct net_device
> *netdev,
> >   		if ((eeprom->magic >> 16) != hw->device_id)
> >   			errno = -EINVAL;
> >   		else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf-
> >state) ||
> > -			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> > +			 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> {
> >   			errno = -EBUSY;
> > -		else
> > +		} else {
> >   			ret_val = i40e_nvmupd_command(hw, cmd, bytes,
> &errno);
> > +			i40e_trace(nvmupd_read, hw, cmd, ret_val, errno);
> > +		}
> >
> >   		if ((errno || ret_val) && (hw->debug_mask &
> I40E_DEBUG_NVM))
> >   			dev_info(&pf->pdev->dev,
> > @@ -1943,7 +1948,7 @@ static int i40e_get_eeprom(struct net_device
> *netdev,
> >   	return ret_val;
> >   }
> >
> > -static int i40e_get_eeprom_len(struct net_device *netdev)
> > +int i40e_get_eeprom_len(struct net_device *netdev)
> >   {
> >   	struct i40e_netdev_priv *np = netdev_priv(netdev);
> >   	struct i40e_hw *hw = &np->vsi->back->hw; @@ -1952,6 +1957,7 @@
> > static int i40e_get_eeprom_len(struct net_device *netdev)
> >   #define X722_EEPROM_SCOPE_LIMIT 0x5B9FFF
> >   	if (hw->mac.type == I40E_MAC_X722) {
> >   		val = X722_EEPROM_SCOPE_LIMIT + 1;
> > +		i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
> >   		return val;
> >   	}
> >   	val = (rd32(hw, I40E_GLPCI_LBARCTRL) @@ -1959,11 +1965,12 @@
> static
> > int i40e_get_eeprom_len(struct net_device *netdev)
> >   		>> I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT;
> >   	/* register returns value in power of 2, 64Kbyte chunks. */
> >   	val = (64 * 1024) * BIT(val);
> > +	i40e_trace(ioctl_get_eeprom_len, np->vsi->back, val);
> >   	return val;
> >   }
> >
> > -static int i40e_set_eeprom(struct net_device *netdev,
> > -			   struct ethtool_eeprom *eeprom, u8 *bytes)
> > +int i40e_set_eeprom(struct net_device *netdev,
> > +		    struct ethtool_eeprom *eeprom, u8 *bytes)
> >   {
> >   	struct i40e_netdev_priv *np = netdev_priv(netdev);
> >   	struct i40e_hw *hw = &np->vsi->back->hw; @@ -1973,6 +1980,8 @@
> > static int i40e_set_eeprom(struct net_device *netdev,
> >   	int errno = 0;
> >   	u32 magic;
> >
> > +	i40e_trace(ioctl_set_eeprom, pf,  ((u64)eeprom->offset << 32) |
> > +		   eeprom->len);
> >   	/* normal ethtool set_eeprom is not supported */
> >   	magic = hw->vendor_id | (hw->device_id << 16);
> >   	if (eeprom->magic == magic)
> > @@ -1981,10 +1990,12 @@ static int i40e_set_eeprom(struct net_device
> *netdev,
> >   	else if (!eeprom->magic || (eeprom->magic >> 16) != hw-
> >device_id)
> >   		errno = -EINVAL;
> >   	else if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
> > -		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> > +		 test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
> >   		errno = -EBUSY;
> > -	else
> > +	} else {
> >   		ret_val = i40e_nvmupd_command(hw, cmd, bytes, &errno);
> > +		i40e_trace(nvmupd_write, hw, cmd, ret_val, errno);
> > +	}
> >
> >   	if ((errno || ret_val) && (hw->debug_mask & I40E_DEBUG_NVM))
> >   		dev_info(&pf->pdev->dev,
> > @@ -2011,6 +2022,7 @@ static void i40e_get_drvinfo(struct net_device
> *netdev,
> >   	drvinfo->n_priv_flags = I40E_PRIV_FLAGS_STR_LEN;
> >   	if (pf->hw.pf_id == 0)
> >   		drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
> > +	i40e_trace(ioctl_get_drvinfo, pf, drvinfo->n_priv_flags);
> >   }
> >
> >   static void i40e_get_ringparam(struct net_device *netdev, diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 506e11d..540eae4 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -4331,20 +4331,27 @@ static irqreturn_t i40e_intr(int irq, void *data)
> >   		       >> I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT;
> >   		if (val == I40E_RESET_CORER) {
> >   			pf->corer_count++;
> > +			i40e_trace(state_reset_corer, pf, pf->corer_count);
> >   		} else if (val == I40E_RESET_GLOBR) {
> >   			pf->globr_count++;
> > +			i40e_trace(state_reset_globr, pf, pf->globr_count);
> >   		} else if (val == I40E_RESET_EMPR) {
> >   			pf->empr_count++;
> >   			set_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf-
> >state);
> > +			i40e_trace(state_reset_empr, pf, pf->empr_count);
> >   		}
> >   	}
> >
> >   	if (icr0 & I40E_PFINT_ICR0_HMC_ERR_MASK) {
> > +		const u32 err_info = rd32(hw, I40E_PFHMC_ERRORINFO);
> > +		const u32 err_data = rd32(hw, I40E_PFHMC_ERRORDATA);
> > +
> >   		icr0 &= ~I40E_PFINT_ICR0_HMC_ERR_MASK;
> > +		i40e_trace(state_hmc_error, pf,
> > +			   ((u64)err_info << 32) | err_data);
> >   		dev_info(&pf->pdev->dev, "HMC error interrupt\n");
> >   		dev_info(&pf->pdev->dev, "HMC error info 0x%x, HMC error
> data 0x%x\n",
> > -			 rd32(hw, I40E_PFHMC_ERRORINFO),
> > -			 rd32(hw, I40E_PFHMC_ERRORDATA));
> > +			 err_info, err_data);
> >   	}
> >
> >   	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) { @@ -9908,11
> +9915,13 @@
> > static void i40e_link_event(struct i40e_pf *pf)
> >   	/* On success, disable temp link polling */
> >   	if (status == 0) {
> >   		clear_bit(__I40E_TEMP_LINK_POLLING, pf->state);
> > +		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
> >   	} else {
> >   		/* Enable link polling temporarily until i40e_get_link_status
> >   		 * returns 0
> >   		 */
> >   		set_bit(__I40E_TEMP_LINK_POLLING, pf->state);
> > +		i40e_trace(state_link, pf, pf->hw.phy.link_info.link_speed);
> >   		dev_dbg(&pf->pdev->dev, "couldn't get link state, status:
> %d\n",
> >   			status);
> >   		return;
> > @@ -9987,6 +9996,7 @@ static void i40e_watchdog_subtask(struct i40e_pf
> *pf)
> >   				  pf->service_timer_period)))
> >   		return;
> >   	pf->service_timer_previous = jiffies;
> > +	i40e_trace(state_watchdog, pf, pf->service_timer_previous);
> >
> >   	if ((pf->flags & I40E_FLAG_LINK_POLLING_ENABLED) ||
> >   	    test_bit(__I40E_TEMP_LINK_POLLING, pf->state)) @@ -10039,6
> > +10049,8 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
> >
> >   	rtnl_lock();
> >
> > +	i40e_trace(state_reset, pf, reset_flags);
> > +
> >   	/* If there's a recovery already waiting, it takes
> >   	 * precedence before starting a new reset sequence.
> >   	 */
> > @@ -10119,6 +10131,7 @@ static void i40e_clean_adminq_subtask(struct
> > i40e_pf *pf)
> >
> >   	/* check for error indications */
> >   	val = rd32(&pf->hw, pf->hw.aq.arq.len);
> > +	i40e_trace(state_arq, pf, val);
> >   	oldval = val;
> >   	if (val & I40E_PF_ARQLEN_ARQVFE_MASK) {
> >   		if (hw->debug_mask & I40E_DEBUG_AQ) @@ -10140,6
> +10153,7 @@ static
> > void i40e_clean_adminq_subtask(struct i40e_pf *pf)
> >   		wr32(&pf->hw, pf->hw.aq.arq.len, val);
> >
> >   	val = rd32(&pf->hw, pf->hw.aq.asq.len);
> > +	i40e_trace(state_asq, pf, val);
> >   	oldval = val;
> >   	if (val & I40E_PF_ATQLEN_ATQVFE_MASK) {
> >   		if (pf->hw.debug_mask & I40E_DEBUG_AQ) @@ -11112,6
> +11126,7 @@
> > static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
> >   end_core_reset:
> >   	clear_bit(__I40E_RESET_FAILED, pf->state);
> >   clear_recovery:
> > +	i40e_trace(state_rebuild, pf, ret);
> >   	clear_bit(__I40E_RESET_RECOVERY_PENDING, pf->state);
> >   	clear_bit(__I40E_TIMEOUT_RECOVERY_PENDING, pf->state);
> >   }
> > @@ -15430,6 +15445,7 @@ static bool i40e_check_recovery_mode(struct
> i40e_pf *pf)
> >   		dev_crit(&pf->pdev->dev, "Firmware recovery mode
> detected. Limiting functionality.\n");
> >   		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet
> Adapters and Devices User Guide for details on firmware recovery
> mode.\n");
> >   		set_bit(__I40E_RECOVERY_MODE, pf->state);
> > +		i40e_trace(state_recovery, pf, val);
> >
> >   		return true;
> >   	}
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > index 33b4e30..38bbe4d 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
> > @@ -54,6 +54,218 @@
> >    * macro above will select the right trace point name for the driver
> >    * being built from shared code.
> >    */
> > +DECLARE_EVENT_CLASS(
> > +	i40e_state_template,
> > +
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val),
> > +
> > +	TP_STRUCT__entry(
> > +		__field(u64, val)
> > +		__field(u64, state)
> > +		__field(u64, bus)
> > +	),
> > +
> > +	TP_fast_assign(
> > +		__entry->val = val;
> > +		__entry->state = *(u64 *)pf->state;
> > +		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
> > +			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
> > +	),
> > +
> > +	TP_printk(
> > +		"state: bus %02x:%02x.%1x state=%016llx val=%llx",
> > +		(unsigned int)(__entry->bus >> 32),
> > +		0xffff & (unsigned int)(__entry->bus >> 16),
> > +		0xffff & (unsigned int)__entry->bus,
> > +		 __entry->state, __entry->val)
> > +);
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_reset,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_reset_corer,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_reset_globr,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_reset_empr,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_hmc_error,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_rebuild,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_arq,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_asq,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_udp_sync,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_watchdog,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_link,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_state_template, i40e_state_recovery,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DECLARE_EVENT_CLASS(
> > +	i40e_ioctl_template,
> > +
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val),
> > +
> > +	TP_STRUCT__entry(
> > +		__field(u64, val)
> > +		__field(u64, state)
> > +		__field(u64, bus)
> > +		__field(pid_t, pid)
> > +		__array(char, comm, TASK_COMM_LEN)
> > +	),
> > +
> > +	TP_fast_assign(
> > +		__entry->val = val;
> > +		__entry->state = *(u64 *)pf->state;
> > +		__entry->bus = (((u64)pf->hw.bus.bus_id) << 32) |
> > +			(((u64)pf->hw.bus.device) << 16) | pf->hw.bus.func;
> > +		__entry->pid = current->pid;
> > +		memcpy(__entry->comm, current->comm, sizeof(__entry-
> >comm) - 1);
> > +		__entry->comm[TASK_COMM_LEN - 1] = 0;
> > +	),
> > +
> > +	TP_printk(
> > +		"state: bus %02x:%02x.%1x state=%016llx val=%llx %5d:%s",
> > +		(unsigned int)(__entry->bus >> 32),
> > +		0xffff & (unsigned int)(__entry->bus >> 16),
> > +		0xffff & (unsigned int)__entry->bus,
> > +		__entry->state, __entry->val,
> > +		__entry->pid, __entry->comm)
> > +);
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_drvinfo,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_eeprom_len,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_get_eeprom,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DEFINE_EVENT(
> > +	i40e_ioctl_template, i40e_ioctl_set_eeprom,
> > +	TP_PROTO(struct i40e_pf *pf, u64 val),
> > +
> > +	TP_ARGS(pf, val));
> > +
> > +DECLARE_EVENT_CLASS(
> > +	i40e_nvmupd_template,
> > +
> > +	TP_PROTO(struct i40e_hw *hw,
> > +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> > +
> > +	TP_ARGS(hw, cmd, ret_val, err),
> > +
> > +	TP_STRUCT__entry(
> > +		__field(int, ret_val)
> > +		__field(int, err)
> > +		__field(int, status)
> > +		__field(u64, bus)
> > +		__field(u32, command)
> > +		__field(u32, config)
> > +		__field(u32, offset)
> > +		__field(u32, data_size)
> > +	),
> > +
> > +	TP_fast_assign(
> > +		__entry->ret_val = ret_val;
> > +		__entry->err = err;
> > +		__entry->status = hw->aq.asq_last_status;
> > +		__entry->bus = (((u64)hw->bus.bus_id) << 32) |
> > +			(((u64)hw->bus.device) << 16) | hw->bus.func;
> > +		__entry->command = cmd->command;
> > +		__entry->config = cmd->config;
> > +		__entry->offset = cmd->offset;
> > +		__entry->data_size = cmd->data_size;
> > +	),
> > +
> > +	TP_printk(
> > +		"nvmupd: bus %02x:%02x.%1x err=%d status=0x%x
> errno=%d module=%d offset=0x%x size=%d",
> > +		(unsigned int)(__entry->bus >> 32),
> > +		0xffff & (unsigned int)(__entry->bus >> 16),
> > +		0xffff & (unsigned int)__entry->bus,
> > +		__entry->ret_val, __entry->status, __entry->err,
> > +		(__entry->config & I40E_NVM_MOD_PNT_MASK),
> > +		__entry->offset, __entry->data_size) );
> > +
> > +DEFINE_EVENT(
> > +	i40e_nvmupd_template, i40e_nvmupd_write,
> > +	TP_PROTO(struct i40e_hw *hw,
> > +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> > +
> > +	TP_ARGS(hw, cmd, ret_val, err));
> > +
> > +DEFINE_EVENT(
> > +	i40e_nvmupd_template, i40e_nvmupd_read,
> > +	TP_PROTO(struct i40e_hw *hw,
> > +		 struct i40e_nvm_access *cmd, int ret_val, int err),
> > +
> > +	TP_ARGS(hw, cmd, ret_val, err));
> >
> >   #define NO_DEV "(i40e no_device)"
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
