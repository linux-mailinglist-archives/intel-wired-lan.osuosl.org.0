Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B2D45514D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 00:51:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6481E60A97;
	Wed, 17 Nov 2021 23:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnNPCkAabZ-5; Wed, 17 Nov 2021 23:51:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7049860A8B;
	Wed, 17 Nov 2021 23:51:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79E631BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 23:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6828E826EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 23:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FWlrQwtdosMV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 23:51:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3FBE826E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 23:51:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="232802306"
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="232802306"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 15:51:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="455088569"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 17 Nov 2021 15:51:32 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 17 Nov 2021 15:51:32 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 17 Nov 2021 15:51:31 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 17 Nov 2021 15:51:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 17 Nov 2021 15:51:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8piXhAP6nEWCl7yB/zMCIj7iwVew5phQGNJvi9tZLU5cjYcwCEPi1/glreSpAtYggwCtP3H2kNcY0eFfWLSIuN0/Vo9HVQf5B+dITCzKqq7R7mglMH/TCZU9QPtudU8HFCWfQbVepZ+OjnNV3fKADMVP3gp8nvaSirbnv3TUvJ1m215nwtLSgdml+QAaKrKAlYVdZhgqI4AxKOCCRlJ95GVtD+N75nva5u+ZlEh3XVwB42WroQMDKhXu/0HwXlhqhhtlWjsQu/b8eHAyglejgIvmN2eehGZBJx8DC8b1On/HZATDwAWz77WoKlWSmctn6VBx9nh25wrwvTz2+y+KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zYIVz4LLxq3NmtiHabvTGuAvVD9wIwaylt1tk0toDk0=;
 b=n6yKs87BdbsZxera0bnEz+LmAsp9JElvoNucxEBeIvyJnQXj9GFEChh0OLSlzoPmTN0/D4JGPC4oBFKZ0vIuUM3oRzCQRBAOkYPGtrqL6sG+JY7suHNSp3KszWPytXFbkju2nUH/p0OdJhzTl5nD3WsNo4r1EbfNu3yhbsItg88oXos7uBUt9YQ7t2EP0Lwyv0rye00cl2swCunvrCK4+WFZVXk/HGaieVDHmpDXh/HM3d9RdZ1lOZ/4YftzRfmI3OlwK911k+4EtWP/fF0cgO2Kh4xo2SkBKuC9BAR4S1m8OkwB0h+l2w73pa1+RWryvYjxX7KF82r57YefUIFdgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYIVz4LLxq3NmtiHabvTGuAvVD9wIwaylt1tk0toDk0=;
 b=i0HQ152u5RqJXa63BuhNsdXH/Ac4mgOUXcVdy9pYN0bzvkwdm3xb8IctnKDhedB0dgoq4Vrr9b3JdlUvmBChdXWbarh6dAobzhxn+XunEI1kWQnoUmwpkI5zoQkNcZKBUrnkBgjDNOUtWArVeQQWvZoNr+zDmlVJVfFEWyhDbHM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.25; Wed, 17 Nov
 2021 23:51:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4690.027; Wed, 17 Nov 2021
 23:51:30 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Removed unused
 ICE_FLOW_SEG_HDRS_L2_MASK
Thread-Index: AQHX3AAlS79eL11SKECfAf11xxwzkqwISb2AgAAZ+oA=
Date: Wed, 17 Nov 2021 23:51:30 +0000
Message-ID: <c4abc512a80261c88b989e48687d6831f658428e.camel@intel.com>
References: <20211117221038.70579-1-anthony.l.nguyen@intel.com>
 <b06891ed-4e46-d37f-70a3-391026ed7a4d@molgen.mpg.de>
In-Reply-To: <b06891ed-4e46-d37f-70a3-391026ed7a4d@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c28f953-06f4-44ab-ca3e-08d9aa252d75
x-ms-traffictypediagnostic: SA2PR11MB4986:
x-microsoft-antispam-prvs: <SA2PR11MB4986E422F3A81B0C0A4F3E81C69A9@SA2PR11MB4986.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RTIoaYjTJeT1Czxc0LelYjuCOoBAjwyGwgEYi63B5PDfhBQmukNXQ0zO9DZcbvJ5MI6GL50UXwLHGbkHzzJESjXvzhgVqzAmsDC143QlaVw+yXF8ipRmlHhGE7PRZn3LPh32RPCGgnJGPTuVLySv00GdRHJAKItuKue1RcJ3UXcDgZfjtqqW4S6HmwzOHIv49ZIUjsCDoEmEzlNSOoABDZun3rPmRWlJ1a/EdyK1HzQMx9uo8kQkRZiFOPuxD0/qN+F83ewbMYcEr60Eyi7NPxVRtytmUVqUPkhNCmRMgypH4TpeFCFo7F3EP8gZEpxrYh+yu1fV1yPqtfgRI/UzEdJeg0R2kMCqJnwNfRl8jc0yxdLxweMsYi/TRCVhesgQFXp9ixHkaP4Oe6e2xWuvcz6SuV1X/SnVV1NmtEdB1WxSz36dM+Segmh8Sx0ykEG2kX1jtxMM4Q8VWQVuXcrad0HD32k3OtuMkmopN3Fow9VE7nqybWkQl8zDzmgYDPYjJuIyhXNWzToCdVBuwY5/C2J5/iXFTxPFSZ/t3ZD30lEmudR6gxukWmmRDrJ25C+mBY+3NE2XCtiNLHjGzMtCNnRSasyhmA7BEDombzwiKhh3jBkzLpzrGSgVMFG39AXluniV8VczOc2M6jgWZZ++MlsoL6RHfbMmuBipbsYS7zYUaZbAHctEC31skzFL4g+AZzmpkxScNqXHKTx7vpyC6Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(5660300002)(83380400001)(4001150100001)(122000001)(26005)(4326008)(36756003)(82960400001)(6512007)(38070700005)(66476007)(6916009)(71200400001)(86362001)(186003)(64756008)(66446008)(91956017)(8936002)(4744005)(66946007)(6486002)(2906002)(508600001)(8676002)(2616005)(66556008)(38100700002)(76116006)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTdoWGVjdmVialU4aTBvOUNQcWdHbC9mNngvTkV1TXE4SFFyN3ZGb1ZyMzdm?=
 =?utf-8?B?cUoza3Z0RVJnVWYyZUVFaUM0azM2L28rN1g4T3JHbE5jcjRoNXRZay9nWk5x?=
 =?utf-8?B?dU91WUZTcm1BTWN0dkJBZzk4M21JT29MVlFzUUlDcmYybktRYk9yaitnQ0ZP?=
 =?utf-8?B?SDJaNU54c21tWVVYcjRsUHFSYTB0d3ZyTzd3SllQQU93SjVOd2IrZyttQytP?=
 =?utf-8?B?bUNnYWhvMUJLdlNldFJ4Qk9FL2lmcTJCbGVaWVIzZXU0SS9jWGM2UGFXT2dk?=
 =?utf-8?B?WDNpTnExR1VIWUROK0dNT1RjYUlRRFAzKytza1FtYXZCeE1WTk56WTZyUllH?=
 =?utf-8?B?cW53eHQ0cE5rSXVnRjZKd09vY1FnUzlJVWNTN1o1bG5Mdjg2cEtsTEpKUXVQ?=
 =?utf-8?B?SmFjSWdhU2pGcU11aGN0NEVPTk9pRU5GVjNPSTlZZUhWNHdnb3J2YnpaQkxt?=
 =?utf-8?B?RlloK3ZFbUd4Qk9zZmoybjZVOTZkZUpvRmtNY1VKcWNmUm80Tzc1VHg5c29x?=
 =?utf-8?B?ZlVGc0NoUkRUcXp6MllrMU1RTVJESkF0djVIY2FldFVoRk42cWU5bnhtUUFX?=
 =?utf-8?B?M1F6T0xJcHpXOEJUY3FiaXVPYUtwWmJWT2VmVGo4a3I1cDlsREc1ZzVVVHVN?=
 =?utf-8?B?aFRLN3MzRFdFQ1RJeDh6M1Y2RUZSWlY1NXBXR3Z4bFpndVpsL3BnanBNNzZp?=
 =?utf-8?B?K25tVXBKOTllYUJVaWdEQlhFK2hlV254bzUyS1NhQVVtVTZocWVYUzhFV3dj?=
 =?utf-8?B?L0NGUTJwTkxqMlNhU2E1V2RjR3VTelZScy9YRGE1aldZTmZmQUhDMTI4MEhh?=
 =?utf-8?B?UnBnUjFTR2ZLOWs0d3dzejlqd3doRVRTWUJvMXozRDBGMEg0VTlzUm1tR3Iy?=
 =?utf-8?B?ZUJlNXpJam1JMHRnUWZpejVlb2VKa25ibS9SK1RwcldGSUkxQktGZU5oMjFG?=
 =?utf-8?B?NkowL1ZWN1BGM05HcVh1cUhvSncxN04rOERpbUdpUWtqeUJxS3NEY29velZm?=
 =?utf-8?B?TW43Z1YrTTluNGtDTTNhN29PUVRaeWc3NEhZR0lyZzFoNkErVjhsS3lkeVAz?=
 =?utf-8?B?eW5uMk9VZENRWkN2ZUFROElCYU4vTFBodEhCL2RrV0JmZVlpeVlRZEYxc0VE?=
 =?utf-8?B?T3Z6VTVBa1g1ZnBkT0cyby9oUG45UkVuN3JTZ0pCSUlNNmNnV1BSSFJ3dEZI?=
 =?utf-8?B?QXVULzdKMmpLRG5OWTBIRThPNW9SMC9FSk1JdFBUMnY2L0EwSEhMcm1Ka0NY?=
 =?utf-8?B?cFlWUzJxUDlvbWtIZ0lhenFsMEV4S1Q5Q09MMFNqVGc0ZG14R2xVSU43SW5X?=
 =?utf-8?B?SFBBTHh0aCt6WkZpYk9SSkVLb1I3VytnRHlWYytWSDdRbXdYd1dWTlN1bm9W?=
 =?utf-8?B?dzBBckNobVA3N1RmODFqWTg3c2JlMURIelBlY3pYVy9MYUc2NWxaZXZrclJ2?=
 =?utf-8?B?R3dkUEhaaFh2SDFBODNmRlpWSTFMKzEycFBqS3NHT1lwVnBQQlJlYjBMT2d2?=
 =?utf-8?B?VnhCZFVRVEpSTUI5c0J1U3lPTFY1RE4vckJtb3FLT1o1N3RKd3dkVW1zYUM3?=
 =?utf-8?B?U29ENG5lQUhyUytqdWRMbllyS2taODFsMG5oNkxiLy9Ea1dIZnV5VHRJb1Rq?=
 =?utf-8?B?K0xmSjF0VHBkTGdMeHhUU1Z4eG41L1B6c1Rib29UVzRoak1pMkJmRVdOV2Vq?=
 =?utf-8?B?SnNrWWk2a1o2VlNmTnFNbHMvUjR6SGV4bHQ4TWFmcXhVcGh6cXJ1cldCSjdU?=
 =?utf-8?B?Y1hzRjJTNFIxVVQ5K1MzeHY0SkpFdjl0SERUQ2dWNmlHWGN0eHltcFBPQjNU?=
 =?utf-8?B?R2hUUkpJUksrZ0hjRDlWYkdYMnVqZHBSWWFqUVpQR0RabjdtcTVEM0srMG14?=
 =?utf-8?B?OHlzcmhycmNXUkEyYnkvbURRV05ncStsU20xMzFqam9IazVITnNhYVVkdUpu?=
 =?utf-8?B?TlBWOGtmcHZqcUxualRmMWE4em9zSTl0SWN5QkcxR2NldmRKUlMrS3N2cGgw?=
 =?utf-8?B?MXdvN3VqZHR2QVZCQllVZzJRMWpxcWgxa3VsZk1OcS9yMEFsNjltQVUvV21N?=
 =?utf-8?B?cUY2S01QMUtYK0pPRTRVZ051UnZvcHMxb0MySzhLakU1SzZ1UGJWRXhsZFYz?=
 =?utf-8?B?bm14bGdFbzd3d0xQbUx5VXFJVzNmcGFOOTNxa010azMwQU5PdUt4Ylk4emIz?=
 =?utf-8?B?UERPaTAxQmtXUStMNm9hSmhtZEV3V1dWMERiV3dHM3FIeExOcU1MSGNnM1Rq?=
 =?utf-8?Q?JXzVeHg+c00M22OtPkqVc4nS9vzj+VPS0MhEF+6zQw=3D?=
Content-ID: <912A60ADF8BCA547A816219EE60BB610@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c28f953-06f4-44ab-ca3e-08d9aa252d75
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2021 23:51:30.1802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AcstcitmT972W/jcDMUAZpSxnNTxE2ylAR5emY4h7onQhbB10DSuAHkljAcOg27oJrdHsFjNQWid/3o6oNdZi3O5JwPC6zeq1j2d8sdwfTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Removed unused
 ICE_FLOW_SEG_HDRS_L2_MASK
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

T24gV2VkLCAyMDIxLTExLTE3IGF0IDIzOjE3ICswMTAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4g
RGVhciBUb255LA0KPiANCj4gDQo+IEFtIDE3LjExLjIxIHVtIDIzOjEwIHNjaHJpZWIgVG9ueSBO
Z3V5ZW46DQo+ID4gSUNFX0ZMT1dfU0VHX0hEUlNfTDJfTUFTSyBpcyBub3QgYmVpbmcgdXNlZDsg
cmVtb3ZlIHRoZSBkZWZpbmUuDQo+IA0KPiBOaXQ6IEl04oCZZCBiZSBncmVhdCBpZiB5b3UgdXNl
ZCBpbXBlcmF0aXZlIG1vb2QgKHByZXNlbnQgdGVuc2UpIGluIHRoZQ0KPiBzdW1tYXJ5OiBSZW1v
dmUgdW51c2VkIOKApi4NCj4gDQoNCkkgY2FuIGRvIHRoYXQuIEknbGwgc2VuZCBhIHYyIHNob3J0
bHkuDQoNClRoYW5rcywNClRvbnkNCg0KPiA+IFJlcG9ydGVkLWJ5OiBKZXNzZSBCcmFuZGVidXJn
IDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBUb255IE5n
dXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
