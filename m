Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4EC447BE6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Nov 2021 09:35:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8031940273;
	Mon,  8 Nov 2021 08:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxgLPRjM6qDi; Mon,  8 Nov 2021 08:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1611E40212;
	Mon,  8 Nov 2021 08:35:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0557A1BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 08:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F40F980DC6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 08:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZ-Tu2WLC8_3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Nov 2021 08:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 914E780DBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 08:35:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="293018563"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="293018563"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 00:35:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="451388741"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 08 Nov 2021 00:35:22 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 00:35:21 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 8 Nov 2021 00:35:21 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 8 Nov 2021 00:35:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XP85PkSB3IF673fbzTPjrWMA5jrEAaZ3YYLeOYi+OA20/waPgwq8d87fb216OeKJS/G0ymTE8mBejU6VFW5ALB9W+mPVuHh0ztgC2zx+vRxJJ+OQh3s+8ZJAuA72v3lsAPlUHfY6d8+ZcSk+ZcACC9tvxIN5yzl3sBb81bwbCy6H7K7WtnZqQ9nco7MpTOSGvt3nPAwYysCoLKfCyNRMGw/xEMB467JAkLtA0LfWf4LZr3/ws5Kc6mhGYIw4ALK02ngSppS3P8LrbJJ5jyUKg9+SaXF3i8krH1rT7ByWUXjRljYRlYdCMbz2mmtEVyy3A8KWE5fb+hyAPrQY7QtcdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57P0G9+yjBCYMMhdfHpRpggeucnCKw2tg2tf9AJ54W0=;
 b=leTvFk+MHy18JmOuvymGdCEwijwgYipuz9PTB4M7D2+8eqpZUZYNrObpQ9z5ICuBK5yvHWPSTYQ6VDK026qLCkdKek5eOzw2ZRlOXToIHEyQ6enaInCpdGGJKHiu0lTUOqDB078T+9UJhaUXLI+dWJtrhllrQXzYGITU0NP1UzAZelAYOR56ap6EwfKUPAHKDxVLekhjxQHMal436geLY+AfvfXeKoTsCeWavlUn7cxrKeh9fSb8cTXCrYBOA4SM+qtfb3t0lQHzrolPyNIvbjZkf6gcNRhOTgcT9xOxI2HFSCP/HFaXaUZxOE7R12TDkvnTqxCLsHzd4tGWMVKLFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=57P0G9+yjBCYMMhdfHpRpggeucnCKw2tg2tf9AJ54W0=;
 b=H2pbv+QtxO+kvtYqMQWkmnAeEyLHipVeF26wzRAM05AUGuNuRuJpUL6znm8X3oFhSgm+9TZZ0lZQHAfBB7eslmdCmO8Tp7xjsbf9Q8yvsla305Q9R4YU2uOaUkxp9HqDszqemGXplb9jA2LRKofHTi0MIAvhFOGWcheUw4ck6xs=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MWHPR11MB1566.namprd11.prod.outlook.com (2603:10b6:301:10::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Mon, 8 Nov
 2021 08:35:17 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::b137:7318:a259:699e%9]) with mapi id 15.20.4649.019; Mon, 8 Nov 2021
 08:35:17 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH v2 net-next 6/6] docs: net: Add description of SyncE
 interfaces
Thread-Index: AQHX0oli6labJUcox0OLXoT9uSo8Gqv4HN8AgAEw1JA=
Date: Mon, 8 Nov 2021 08:35:17 +0000
Message-ID: <MW5PR11MB58120F585A5CF1BCA1E7E958EA919@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
 <YYfd7DCFFtj/x+zQ@shredder>
In-Reply-To: <YYfd7DCFFtj/x+zQ@shredder>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: idosch.org; dkim=none (message not signed)
 header.d=none;idosch.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1e00a73-9474-4b94-888f-08d9a292b16e
x-ms-traffictypediagnostic: MWHPR11MB1566:
x-microsoft-antispam-prvs: <MWHPR11MB15662C1B20B541E07D3C1B90EA919@MWHPR11MB1566.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ASwBan7fmS8KQx4BBqioSseokdA1tme3dlVpfv8EY/nLKl6vANWTuaDbPjCtTwC/PhLHuGnE5/yifylNWm+nQCsc2n+tE4/ukO0UrrOSVAOvW2ygkc0B1OiZGzA8RyF/xcOuvLsNWEvNmH0DC3T1D0nTo23/7A085HMoanIICpUm7XZ53TZBO4CZA/16T9XI/M2nFbSNneFviQqfGmE6QyE+TYLuqn9s7yUqDEOcu3Pn61w6uQ/orXaermFv59FwIc6Hfoe6fVaoTzp1VWsE0xADo6WZNvC0Rwz1v4oCMWe+hMB5WXzpe1mpFeHZ3qSeXxIB6XDMujglEdcJFgHI8nW6RDOtGBIM0mXBHspva1GL0bPlbkgLUtRtche72cvsK20zgIlCjmkKGY+SG7mvEhXXeyAV/UQJXmMGK6WQrIKKMgvmDQJ32TI8jB7A6waCQSwbecRaW+yMIYpzxpFgyv9RbljOpwiYc0f/W7YhLyekXBldj94/97R+zfdZZAP998FJ2IW/6nUDDjkwt4ljvD6Sfv+WSb9iTtvhMiLbp4eSDBvNhvZbZPyy6Bdgzjw7zpCjk3J4pa8Bn4IWaP4vM9y0nbzN0DW4TR5TJs/bgculy55p2J7QQdNLweSBNk7PWK1r3wQegC6gbE8mWjxhcYY6FQN7wNkBOIPCE79vwuAEeJpsq6UAHPBw//NlEe+LC5SFbII4r3C/aYVmEHYUyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(26005)(122000001)(38070700005)(8676002)(76116006)(83380400001)(66556008)(66476007)(6506007)(66446008)(64756008)(66946007)(508600001)(38100700002)(6916009)(82960400001)(4326008)(55016002)(5660300002)(7696005)(71200400001)(53546011)(2906002)(9686003)(33656002)(8936002)(86362001)(54906003)(316002)(52536014)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajBPK1hkbTJwa2F3eW5pL0FCNEI2RmwwV3VCVUNhaHQwUTdQTG1kYTJpTkJt?=
 =?utf-8?B?OUprUTFTRitmVzc4Z2hxWjcwZWpKcEp4ZmN4L0ZCU2ExWnNEaU5BVmthcktK?=
 =?utf-8?B?ajVMWmtrZGdtZGR4azc3QUovdEZlVTIwWjg4TlU1aXpnbENKVXprM3pWTWx6?=
 =?utf-8?B?NTRtb0p2TzRYV2RMdlQ3bzFBN29YWk9RdzhoZDA3bjZGYWgvWlFic2k0K21V?=
 =?utf-8?B?eWliTjByeHFTeHUwQXZVRVlRUk0vYWt1U050emV6MUgzeUJnMmpjOHZ5UjZR?=
 =?utf-8?B?b1kydDNoMlRPbG9tWW5ZakMvL2RxTGhNNFZveEQ2YXhhbElaYmZQZGpaQTA2?=
 =?utf-8?B?dzI4WUlnWmM5R1pzSFNWaUppeDk1SUoxQlR6bWJKS2VNSzE3TERJMjF6dzRs?=
 =?utf-8?B?VXhsN2c2bG15RzBlbHp2VGFkV3R3b1pJNEdNU1AwVk9JNUJYcjBjL0tJeWFj?=
 =?utf-8?B?Vno0em93a2VneDZ1QmRCUTFMbEpIeXBhemdtRXBjTExwYk5jb21kV2Jxckt3?=
 =?utf-8?B?aVdUUGMvcCtpREFoalQrRGpXcjVjZ3pPR3cvOHJPOTlFWWc4UytvblF2dzZs?=
 =?utf-8?B?di8wT3NzanRIMUI1MU9RdlZhaWpRZjRTQTZkK1VsUWM4RzVKaFFML2NSMFVh?=
 =?utf-8?B?WkEyMU5JL1VycmQxNVBQMGtGN29xNzBPbWJCb0ZKYzlWTlVDRHB6UndIdVU0?=
 =?utf-8?B?cWZBVGdMTG5LS2xxbDhmS252cmN2bzZITWhML2s4d2V5c0hjdWFIZGFlY2w3?=
 =?utf-8?B?V24wMVNvdGVrNXJMd1BaOVE3NCtseG9lREl0anlQZzlSRFBQZGg1ZVhNZG1O?=
 =?utf-8?B?aXV3dS9BdThDMy91a1ZVb1hLc2pNZTRnaDBCM3RudE51VGpwTUZ1RXR5Wm1F?=
 =?utf-8?B?V1VPbXZYSloxVVpValZ6ZUMydFRRcTB4QWk3STJSM0VNK0ZqYkdXTzNIbG5D?=
 =?utf-8?B?bEpQT2h6RThITDV0bFBENkc3cVhUUW94eVZQQldFMmRPNEFiRm9vS0lLQko3?=
 =?utf-8?B?VjB1S3hEV2ZaYlhMTU5IcU5OTm1td1A0dlo2ZDc4dDB1Q3loUzYwenkrcmJm?=
 =?utf-8?B?WmVCdkNSUFpyNFlEbHZaZGJKRHl2YzFMMi8vYmhlZ1NuaVNhNGN6ajM1ak1T?=
 =?utf-8?B?bGgxNk1xZG85c2dxbm8ySGUxVmp6NmtRU3Y4NG00NjcxMjhqRGFNVmIwdnhZ?=
 =?utf-8?B?Mm5FdHNSUll0b05XMC9OYk54WXdWa05mbW9jU09lQnBWc2VMYnpvT0JFUEhT?=
 =?utf-8?B?MHJzaVVaRjdEVU1WZHdjbzZaWW5udmM4dkMycm9va1JEZkRtMWZnYWtpMFFX?=
 =?utf-8?B?SWljY05qaTFvWDdzZVBDaTFNcDNBWDZFNG55c0JtQW1UYTJLRER4b1hHTEc2?=
 =?utf-8?B?WE9kZjMyYURGNEFPZko1WEhqZDVtK1A4azFxL1RjRVQxQVNmc1FJUHBYZklh?=
 =?utf-8?B?cTBEUjVYK0k2QzZwNTZkcFlqVGZMaEZtV05SRVNsVHRFSE52NnhXZklObVpC?=
 =?utf-8?B?M1h6YjhRWlhzNHUvUTkwY3Fvb2xFUmhjTzZnQWRyVUNIM1dmVmh6ME5hNXZE?=
 =?utf-8?B?TkhDV1p1TE81am9uOEp0d1AwNkFoYWJDcVArZFFiVU1jL2hDQ0xIQklTN0Rh?=
 =?utf-8?B?bnBPUmJ1NlNzQko1ZWlsR3E5SndBU2ZSVjNhVUpRYTBwbUZXMnVmbU1abTQy?=
 =?utf-8?B?bkEvY0pZY3F1STBRUnpCSGlaU25IOG5HSkFKTURERloxM1ozN2cwZWlpcFhB?=
 =?utf-8?B?UTFBL3d1Nk5wSzluNmJXcWFJdFg2RDRLc1d5NXZ6b2taODMvSzA2dzZYcXJ3?=
 =?utf-8?B?WStCMlBCdVo1UlQxbWlkeU5UZlZGbXRIbGF1aE15dzhDYmFRS2ZRWUh0VWxj?=
 =?utf-8?B?RE56MFhtTWl4RWJ6QUxWNjEzOEdYcEppNGlndXlpUUgrZDUySmxaTG5ESnFN?=
 =?utf-8?B?TlRPRzRMa1VxNHZFejBabVh2NTdXQUJObXF4Z2tVT1MreHV1RFRjSHhHUUgw?=
 =?utf-8?B?M3R1YWFyMVlwTUxMeUN0aGZDcTNwQmJSekt2UDR6SDhTaDhGVWcxNFVsZFdR?=
 =?utf-8?B?S1B0Z3FwREtLUU5NcEN1c2hRRFY2RXE5WWxNVmV0cXNiK1QwR21vZlgwd09L?=
 =?utf-8?B?MFlJQVI3bFc4T1d3STNIaE5GOHVXT3NwK1MrL1pteTMzSlJadnVmRjZ2V3FK?=
 =?utf-8?B?RGo4dk0zSVJIdkhzaU9VekJMZG5JelNtRmFoNWlnd2gzWVpScU1Kdk1jdndx?=
 =?utf-8?B?b3BPUUppbnlrcVBqVWg5QVQ3ZFB3PT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1e00a73-9474-4b94-888f-08d9a292b16e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2021 08:35:17.3719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xbw9q8JQRES5PRfC+3cpsxyrqabWsZ5JNrIoxfihrdBIz7DL03lPtPMU1KTsBjXSLZCsEa58f6es03tQQaUO5yHuZ3NrPK0owUHaRoYGC7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Ido Schimmel <idosch@idosch.org>
> Sent: Sunday, November 7, 2021 3:09 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: Re: [PATCH v2 net-next 6/6] docs: net: Add description of SyncE
> interfaces
> 
> On Fri, Nov 05, 2021 at 09:53:31PM +0100, Maciej Machnikowski wrote:
> > +Interface
> > +=========
> > +
> > +The following RTNL messages are used to read/configure SyncE recovered
> > +clocks.
> > +
> > +RTM_GETRCLKRANGE
> > +-----------------
> > +Reads the allowed pin index range for the recovered clock outputs.
> > +This can be aligned to PHY outputs or to EEC inputs, whichever is
> > +better for a given application.
> 
> Can you explain the difference between PHY outputs and EEC inputs? It is
> no clear to me from the diagram.

PHY is the source of frequency for the EEC, so PHY produces the reference
And EEC synchronizes to it.

Both PHY outputs and EEC inputs are configurable. PHY outputs usually are
configured using PHY registers, and EEC inputs in the DPLL references
block
 
> How would the diagram look in a multi-port adapter where you have a
> single EEC?

That depends. It can be either a multiport PHY - in this case it will look
exactly like the one I drawn. In case we have multiple PHYs their recovered
clock outputs will go to different recovered clock inputs and each PHY
TX clock inputs will be driven from different EEC's synchronized outputs
or from a single one through  clock fan out.

> > +Will call the ndo_get_rclk_range function to read the allowed range
> > +of output pin indexes.
> > +Will call ndo_get_rclk_range to determine the allowed recovered clock
> > +range and return them in the IFLA_RCLK_RANGE_MIN_PIN and the
> > +IFLA_RCLK_RANGE_MAX_PIN attributes
> 
> The first sentence seems to be redundant
> 
> > +
> > +RTM_GETRCLKSTATE
> > +-----------------
> > +Read the state of recovered pins that output recovered clock from
> > +a given port. The message will contain the number of assigned clocks
> > +(IFLA_RCLK_STATE_COUNT) and an N pin indexes in
> IFLA_RCLK_STATE_OUT_IDX
> > +To support multiple recovered clock outputs from the same port, this
> message
> > +will return the IFLA_RCLK_STATE_COUNT attribute containing the number
> of
> > +active recovered clock outputs (N) and N IFLA_RCLK_STATE_OUT_IDX
> attributes
> > +listing the active output indexes.
> > +This message will call the ndo_get_rclk_range to determine the allowed
> > +recovered clock indexes and then will loop through them, calling
> > +the ndo_get_rclk_state for each of them.
> 
> Why do you need both RTM_GETRCLKRANGE and RTM_GETRCLKSTATE? Isn't
> RTM_GETRCLKSTATE enough? Instead of skipping over "disabled" pins in the
> range IFLA_RCLK_RANGE_MIN_PIN..IFLA_RCLK_RANGE_MAX_PIN, just
> report the
> state (enabled / disable) for all

Great idea! Will implement it.
 
> > +
> > +RTM_SETRCLKSTATE
> > +-----------------
> > +Sets the redirection of the recovered clock for a given pin. This message
> > +expects one attribute:
> > +struct if_set_rclk_msg {
> > +	__u32 ifindex; /* interface index */
> > +	__u32 out_idx; /* output index (from a valid range)
> > +	__u32 flags; /* configuration flags */
> > +};
> > +
> > +Supported flags are:
> > +SET_RCLK_FLAGS_ENA - if set in flags - the given output will be enabled,
> > +		     if clear - the output will be disabled.
> 
> In the diagram you have two recovered clock outputs going into the EEC.
> According to which the EEC is synchronized?

That will depend on the future DPLL configuration. For now it'll be based
on the DPLL's auto select ability and its default configuration.
 
> How does user space know which pins to enable?

That's why the RTM_GETRCLKRANGE was invented but I like the suggestion
you made above so will rework the code to remove the range one and
just return the indexes with enable/disable bit for each of them. In this
case youserspace will just send the RTM_GETRCLKSTATE to learn what
can be enabled.

> > +
> > +RTM_GETEECSTATE
> > +----------------
> > +Reads the state of the EEC or equivalent physical clock synchronizer.
> > +This message returns the following attributes:
> > +IFLA_EEC_STATE - current state of the EEC or equivalent clock generator.
> > +		 The states returned in this attribute are aligned to the
> > +		 ITU-T G.781 and are:
> > +		  IF_EEC_STATE_INVALID - state is not valid
> > +		  IF_EEC_STATE_FREERUN - clock is free-running
> > +		  IF_EEC_STATE_LOCKED - clock is locked to the reference,
> > +		                        but the holdover memory is not valid
> > +		  IF_EEC_STATE_LOCKED_HO_ACQ - clock is locked to the
> reference
> > +		                               and holdover memory is valid
> > +		  IF_EEC_STATE_HOLDOVER - clock is in holdover mode
> > +State is read from the netdev calling the:
> > +int (*ndo_get_eec_state)(struct net_device *dev, enum if_eec_state
> *state,
> > +			 u32 *src_idx, struct netlink_ext_ack *extack);
> > +
> > +IFLA_EEC_SRC_IDX - optional attribute returning the index of the
> reference that
> > +		   is used for the current IFLA_EEC_STATE, i.e., the index of
> > +		   the pin that the EEC is locked to.
> > +
> > +Will be returned only if the ndo_get_eec_src is implemented.
> > \ No newline at end of file
> > --
> > 2.26.3
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
