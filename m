Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MODvLAM2e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:27:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 002EAAEA3B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:27:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCE7583D46;
	Thu, 29 Jan 2026 10:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5R9svMzZ9p7G; Thu, 29 Jan 2026 10:27:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4126683D53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682432;
	bh=8vrY7yp0cWz4DWhmQ2zZrKMhwerA2Cm8xXGtQ35zycs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sShucwzPIyW+H97xhGdKYNBvQiFYei9Gf5el7ozOp0ean7XkR2uc3c+m32FCNjh3c
	 prx5eFtlo+8usa1iO8akfiqV3gJpCTpPEqxnAx1x3VjcTADZPPjPHhJGdIrc1yzcrF
	 X0niw/s+4df1RqcI1+BSqlk2H+HmilbJDBWHhf0EpwD2KYW5Z2iy2YXU5640eVvfCJ
	 fmgBZAAQKwLTwaoOZhC32AAv5hucwwppcBDCteSUp0T0KnEgI+zssO9SmuRd2Ni12d
	 TRiDfULwZ6fkHYKGRySVXT9akVHDUdaFytkkOZIBUuAS5H6eVDS8cO1AUHRPHyQwRo
	 dJFxfHnoyKlbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4126683D53;
	Thu, 29 Jan 2026 10:27:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AB091AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28B9940437
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIcEYoRCRPhf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:27:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24928400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24928400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24928400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:27:09 +0000 (UTC)
X-CSE-ConnectionGUID: lhPoU3kiSYa0vZbjUSK+DQ==
X-CSE-MsgGUID: oFWEZCCDTNCNsaZ0OkxW2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69931582"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69931582"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:27:09 -0800
X-CSE-ConnectionGUID: RMtFXQh1RwSp8EyGgYIWYg==
X-CSE-MsgGUID: lcSrHCfnS6+9PRT/6Piryg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213502691"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:27:08 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:27:07 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:27:07 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:27:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A/QDn7hGnENvPWuRgJEEW4NCnJyPsGQK4rWdXVlyBIfG59N9k4w0Y8la+TMlbs/dVLamaTgh/1GDoPIJvKOQ89a05EBHWHfIamF+y9CWleKkngEYURNGAqQ3uhQ4iQsI6orBcPNyrQ9rMTzp4wVK3/P6HBKubBLY0QpdHgVdz47p4q4O1JVya86lxBNQ27caqoRjhTARHK2GIf93mZ2gJr96vT7DDteUc3m3A42sJipbUDspgr9TA5QhPQ5GNTNITPrOhrOHRN07VLc4uCZlLkYR6GS9tPxiTSvOdelFK/bY/hmvEwvRezbj4tvYyBEd410NNYEwVX7yg6cgB1DOqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vrY7yp0cWz4DWhmQ2zZrKMhwerA2Cm8xXGtQ35zycs=;
 b=zFFu0dY3N+QPeJfZCeK9tcT3yOeCDPzkW4o3CgS7B0aNpf6337hephp58vd6tPI9sE8tsrX4a84EX27JyPbp52C9mj6U6lv3UkT3ilxwDSQwz1lbDS5DJaCQ+EVEhZC58A12qSaVe12WaycnmYw99BeY1/ipF1SgQymlfpwXz1ijdaoMCHBK/6okoO3D65VdxFTL39cPEoBg0kE/UX7wGT0lB5o5fFaMxbRDbyi23P+ZzGSVAuPwXZ5+TJUmr9376ArrkZ0N7KXClXIvFbF3TnkZHqGU/Zg+5aRjpisPXgk3IO5gzd+8TpkaY4WbE8264LHVUgBRocW3rbZ4JPmYDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5213.namprd11.prod.outlook.com (2603:10b6:a03:2da::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.9; Thu, 29 Jan
 2026 10:27:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:27:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 05/30] docs: kdoc_parser: add
 functions support for NestedMatch
Thread-Index: AQHckPaUuH6jLda6Gkue5YT8rCX7SrVo8amg
Date: Thu, 29 Jan 2026 10:27:05 +0000
Message-ID: <IA3PR11MB89860FD08C812DF59CA6F004E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <ee5947f9427d8cdcca52ec3db32350b45d3fac91.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <ee5947f9427d8cdcca52ec3db32350b45d3fac91.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5213:EE_
x-ms-office365-filtering-correlation-id: 0521e46e-bf57-457b-ecae-08de5f20f2d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cDM3Zi9WVlk2Ujcrb2hUUWdQZXhNTzloQXhncDI4cnhJa3FqeDlrektYUlJt?=
 =?utf-8?B?dUgrRUZQd2pyS3k0WmJKZDhwVkx0Z3NGY0lQOGhDT0lKQXpzRHgxQVQ3dWZN?=
 =?utf-8?B?Ym1PeXBPY3RMMFRaNFc4dXNCVWtzWWxIQnBRdFBoZ1dmVStkaythNGg3K1pE?=
 =?utf-8?B?NnNLd0FwSWRRTzcxaGI1UlozdU5aU04xQVpPbGxkYm5pdWhpc1hYbEN5UUdm?=
 =?utf-8?B?dk0vZldtYzBaZVRJMlVMME1EVDRYck8xOGlyM2FnYWdIeG5PaXcwWThNME5j?=
 =?utf-8?B?cEhndE9aZ2NjSWUyRGlyVmhqVEdEUW5ka3ZnQUFJbG5QUWVWanc5V204VnhN?=
 =?utf-8?B?bldLVmZyUnBpWG5MOStmVWZiUDNMZmVCd05Lc0MzYWdoUUxYbWxQTGx5b0pZ?=
 =?utf-8?B?K2gzcVNnaWpVS0xRQjZqeHQweDRpY2kxK1UyZmNWRzFBaDh6bUl1VFY5SGFx?=
 =?utf-8?B?N3pJcmdtc1BqaklDcWN3UkloWVVMSCs1NlI0bjU4cDRQMUdwK0o4TjZFU2hv?=
 =?utf-8?B?U2xvRWgxcGVoTlA3SzM0NnNGK3JmdFdaK0h6Y294Z3NieDBVcG55VDZ0a0hX?=
 =?utf-8?B?bEdSbVRwZlFyRExzOXgxNmZ4ZFRJQTJiWGs1UE5MdGNIS1JjMzdxcWNEeTBK?=
 =?utf-8?B?bjhhNVp3R0pYSURPY1FNb3ZJd2haS3JuY25nQm10VWl4a1psblNnU2xqWUtr?=
 =?utf-8?B?ZCtKSTMxNUkveFdvL3o1K3VYS3JrMUEvTm53cWNad1R4S21nb0JGTkVXZ2JH?=
 =?utf-8?B?b2hRcFZqeUtDN2VBUkY3TjFiYy9uVW95SGpCMUxVRCttdHBOR011Q1NGQW43?=
 =?utf-8?B?VjR0RkxLWmpwbE9ZSmZaaWthMVdLeFg3c3BRdkx2cWEvWk9VUlNvVGpRd2x4?=
 =?utf-8?B?SXFuRnRoOEU0MmE3UC9TRUdwOGpxSjNkMGp1d1duL2F2VXljOHNxeTAyTFpn?=
 =?utf-8?B?QlcxNnRwK1JVREZVdE5yUVJyWTIrRkU5VUtsMHM3MEg4RWRCMjdWM001eDhn?=
 =?utf-8?B?Zmw2aDkwVjdKK1ZRMm9LUmRWdFJTQU1MTXlqMDhjQTltY0hobU5QdmNrRitT?=
 =?utf-8?B?WlpXT3Q1aTVkOG5kQ1NWZS9DSFlueW5UNERrbElFUVFOQi9UZWxuNzVQUSts?=
 =?utf-8?B?aFV2WkJGQlBPMG9ZZmdGMWpaWG1mSUs0YncrZCtTQzMya2dCSDN1OXA2ZW8x?=
 =?utf-8?B?MkVsdmJZVmowT0lEdUVuczR2RTZQVTk4UDNKUFF6eDFQRWRGZFU3b1ZpK0Yx?=
 =?utf-8?B?Uk5EUE1ZQXFEWEZScWlwb1VObjl3NzM5aHU2ZW8zQ2JlZmFjQzN0WnBMOFdP?=
 =?utf-8?B?SGs1T2p6ZG5JTFY5WEJDcGpPVCtWZ0JLM3EwanNUTlZkOGVuVXhjZXBDMXNU?=
 =?utf-8?B?a29FVWR6YysrR3ZrV3FBZ1c3eWVzSjBpWDhJZTFKdk9lYVp6eHFmaXptVjRw?=
 =?utf-8?B?ODBlVVlPdWJDV1k2ZWNMdTJDSDJxaTl5OWxacTBmbjZtSVZvWndMRmo2OE83?=
 =?utf-8?B?bDZxMGlPdk9CSEdUVnM1TzFhQ1lxbHFqUzRWMmc5ZmN0SzZuRG1XTDVOZ1cz?=
 =?utf-8?B?NmJ2bTNkd1FwWUlDbnRwTW15b3F6ZENSb0hQSEdYTUFzbkU4dEVET0xDVlUz?=
 =?utf-8?B?bTEvVGtBV3BZZmppZ1VUK1FpNDF4K0JhelViWFloZDd6dkxLMUgzZ2k5cEdC?=
 =?utf-8?B?ZllNM1VXeGpOcUwzZHFYeDJlS2pCbzB3MCtONnRqSFU5SWJCclV3R1JralpZ?=
 =?utf-8?B?QXdUSWZBNkVhZEx5VzFCTGhsYStqMEtPbUpSSUtzblUvOUhiNmdDd3JqeGF2?=
 =?utf-8?B?T3EwVDVFcWQ1UWhxeUNQVlFqUmpvMW5yWWpvL3JOWDJCcDM3S3lQU3Nocmky?=
 =?utf-8?B?Q0k4aklaTGhWRkw5aHFuNkxtSGlaQXZWQzRlbzdvRk04Ti9SRXR5SjMrc3VN?=
 =?utf-8?B?YmlDTTBDS1EyN1ZOaEswY1NvQk5maHJYRHZlMURyWDhPSCtpZk5LeHNDZCtr?=
 =?utf-8?B?aTVyMjROTS9Oblo3bmhLY0JVT2k0eXJpMkYwZ08raVlnc0ZaUTExN0pzTEJC?=
 =?utf-8?B?WnpPa1UwUWhuQWxiUEQxanZzNkhPYWZkblpuQ3NnZEFIYkR4a0tJTFU4RFMz?=
 =?utf-8?B?MEUxQS81L0FnQVJMeE1sa05ybTM5LzV6VnQ3aGNXaWNQZG5ZWUE1bjdFWlJp?=
 =?utf-8?Q?tHaSQOf0CpgQlSI67e8TFEU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkwxUkwrQ3FIRE1QZkM4Vm9jaXZQUlU4Nk9nQkMwVkM3YmFGd3FNR0swaFgx?=
 =?utf-8?B?YjFWeWVvQ0dOMnkyamZEQXVPWkhMb3hrWFRzU2JyaE1uMUY3L1lxRC83cEhC?=
 =?utf-8?B?OHBSWFBVcm44R3BNTnUxcnNsWGF4NERLeHVkWmdXcUhHOHJVczF2eksrQ25s?=
 =?utf-8?B?UFFZdGtjSmd3ZHhLUFA5dWZpTy9hMjFld3RMTkxYclFSSHMwM3ZFRExMSW1q?=
 =?utf-8?B?bFhJbkJQSmtpTGtwMTR6ek4zSWo4d0FqL0lDWjFWYXo0QWdQcDFlQlpiYVZ3?=
 =?utf-8?B?QlJqUWEvRjBtK21XSDhEQ1padVo3Ymt1NWZva1REbzRmdFhySkhMUnN1azRz?=
 =?utf-8?B?L2s3azFETFM3NzRsZFJ1a2w3L203VEx4VEl2SG15YzMxSFEremt5djhEYmU3?=
 =?utf-8?B?Qk1EeEVTK3o3U0VPcXpHblJpRWRMQjFoT09xbWtySkFERWJCWDZ2cHdZdFdv?=
 =?utf-8?B?cE1iWVZObUZCbmVLU3ZYUmlIUUoyNDFxR3p5NmVQQmI5enZmdG1PZEhZWUQx?=
 =?utf-8?B?Ym5IM2gvK2RtbkFiODZmUC9SdGVKbDNQY3dQZmpGWXVYNW4zWXZwN0xkRUY5?=
 =?utf-8?B?N0o0dlE4ZDBja1N6V3RQcStCc3FUVlM2YldDWG1yUDhkWWFJUGpxLzh5UmlT?=
 =?utf-8?B?aSthRXNGL1hlMzNRbVk1djlPUUtKVXAwKzRyTG1MWmQyN1NKanNNRk91V3JD?=
 =?utf-8?B?ek03TDJOdjRNTjBWdzdiMlJ2ZGtNdVlwYkNPUUxjb1EydXNweXBBWnFjTE1M?=
 =?utf-8?B?UVVaQjFXbW05ZDBvU3dJMTNiZGFCTVFzZmVxWUdhSWw0ZGZRMU5KY285Vnls?=
 =?utf-8?B?RzdFaFNyUzRWOXl1NUFndUN3TUJ0Nmx6QkptbzhOUlZIbHpzSVJtRzVGRXZ4?=
 =?utf-8?B?MEd5RGNsZ0c1cjF3ZERGM2tVREhwMkVycVJORHpCZG5SRGhHb0w4Ty9kNTFI?=
 =?utf-8?B?bzM4bDhMZlBaais2eXp1L0FWbG84d0xwS1VmOVUxOWlZY1Q3V202MEcrTnhG?=
 =?utf-8?B?YWRvYzJQUVgzdVpjbklHNytXOEQyQnpjSDNGeG1QUDNRazNuam9wQnJCdkdW?=
 =?utf-8?B?QnJMUUk4M1dZV0pCd3Zqc21MVERQWWZtM3pkelhnQmJtRTN2TUxsTCtXTzE4?=
 =?utf-8?B?blZ1OGdlUVpHSEE1VUtCVVM0QWtHMzgwVExZR25nQTF3T0hiRS83aXlMQjdJ?=
 =?utf-8?B?cGhPUHFNaWNmbUFTd1BkZnZ2SS9hME9wOWUyYlUzMVBTazJuc2VOcDdqZ2ow?=
 =?utf-8?B?aVRsVStaTnBFanVmcC8rc0hiYjcxcjBzSUlPTk44SldmMjYwWDRaMjArMGlq?=
 =?utf-8?B?L2Y5UlROenM4RUNuNjFQeGRBRzlVNTJQNTlIZzhBTEp0eS9ibEsxdGhsUGVm?=
 =?utf-8?B?cDZzMkJvczVwZFVpZWRhdU9VOXFJbVJScTRyTHhqdnNFWVE3eWg1QjJNNXpp?=
 =?utf-8?B?eHpGZkFIMTZoV21VSjcrZEVqb3Vpb3MrZkI5L08rU1JBdWdRY2hFUzNRcFM4?=
 =?utf-8?B?YUM4MDRXRHNMQktiZmNwZDhONU1GM0k2Q3FxdzgrZWpSc1QrcW16VG9iVGwx?=
 =?utf-8?B?Yjh6cU5lSXkxSjdiWVhVcWRQT1dFRUV3NGNuK3hTa3kxSGpoREpYN3RuS3FH?=
 =?utf-8?B?MDJtVGJZbHVkSE5GK0pZM1d1S3doZHNRVVpVQVczM2FyUTR5d3BKUWdJMzFZ?=
 =?utf-8?B?NnFQZmljZVFmNnNSNDJjZk5NREwzTVBURGZob3ZucUlFbit5UnRJemVYamJM?=
 =?utf-8?B?L0ZrdU9uMGtyRWlQcGtXN3pHd20zMUk4MFB4MEFHOFYvckFsNGNtTWY1NFpt?=
 =?utf-8?B?OW0wMTBwMEFVcFIrdDVIcklTbFpIdVo3dVZiZUZnZGE3MENsa3oyYnJieGti?=
 =?utf-8?B?V1R3UnRDbHV6R2RXNlhrWSt2S1JlK3BrcW5YMTk5SnhSejVnRE16WFF6aFh5?=
 =?utf-8?B?NnJlekRjTW5VVFQwREVsZFhwMk01SHNIUGNxWFRuNnB3SkRIOG5VMzhGSGgw?=
 =?utf-8?B?NnNVZDBDc2wxRFB0ZnI5VzUrVlVSZkFmT1pwOVdicWdYQVFlSk5NM2tscjhq?=
 =?utf-8?B?YWtMUUl1UmVkbk1xbUZGbFVKVDRUeHcyb1Rpekd1RzBNYitoc2V6cHhGZmN0?=
 =?utf-8?B?U285aE9XeGVKRXdHNWgxRkZaZEoyVWYvT0w5alRiaENFL1FtMW9kU3BhdkVX?=
 =?utf-8?B?M25wZ2pSVm1QKytBZmFiRFdGS010ejNMVGNTZndnMzdWdXJVNXFqYnJnRXEy?=
 =?utf-8?B?NWNZa0RSTllka2FxMWJKeFM0a1lVNS9GblRyUlVMODYreUpmWHB0YkY4b1ZI?=
 =?utf-8?B?QWs3R2RlaGFERVFxMHBuVm1MaHpJZlROaFRhb3BTVFFZcjZZcW50cU9aVnNP?=
 =?utf-8?Q?mdx7+XarfWV5MsGE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0521e46e-bf57-457b-ecae-08de5f20f2d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:27:05.0350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8FZmqyzJxIlzhs983R9UXHMrsHl1NnAcJLyt8i8en/sWLplUEcpVW8FZ7G+2xFVCziH0gDnTHvL2MiCwf9NUd+Ss3QKsMUdvGavnGTxkgfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5213
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682429; x=1801218429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8vrY7yp0cWz4DWhmQ2zZrKMhwerA2Cm8xXGtQ35zycs=;
 b=ZaI1MoQt3l73oROeHHyv+N7Zup1ORDaJzts/jMjDvtwxzowL2/PhXxom
 dj7g6atRs66ViDQuRVKgFQI4/IPf5Sq8bDmdy035y3qfvDQ50YWZxPy8y
 WO0ff6X2A33e0ZfL4Ugp987Fxi9b1olvgz9wkatOEBOPeRB1P2pIAONVr
 4BglJN18GqvQ4/mbjMiQx2XIPK5ldrDdZcZY+T210HYrcx+BAT1+AwyWj
 XzbmsejP471xxzIKGq0jlCVAbcqt/Qnscdv1LTvcCcizkKAWukqTTAf5p
 pNtGiYbK9wyZMtaZvEUswu236UP6qpsGV9sOmG0kzK90ePNfPM9irVXtT
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZaI1MoQt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 05/30] docs: kdoc_parser: add
 functions support for NestedMatch
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,lwn.net:email,osuosl.org:email,osuosl.org:dkim,infradead.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 002EAAEA3B
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDA1LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogYWRkDQo+IGZ1bmN0aW9ucyBzdXBwb3J0IGZvciBOZXN0ZWRNYXRjaA0KPiANCj4gU29t
ZSBhbm5vdGF0aW9ucyBtYWNyb3MgbWF5IGhhdmUgbmVzdGVkIHBhcmVudGhlc2lzLCBjYXVzaW5n
IG5vcm1hbA0KPiByZWdleCBwYXJzaW5nIHRvIGZhaWwuDQo+IA0KPiBFeHRlbmQgYXBwbHlfdHJh
bnNmb3JtcyB0byBhbHNvIHVzZSBOZXN0ZWRNYXRjaCBhbmQgYWRkIHN1cHBvcnQgZm9yDQo+IG5l
c3RlZCBmdW5jdGlvbnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVo
YWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+IEFja2VkLWJ5OiBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gVGVzdGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5s
YXBAaW5mcmFkZWFkLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19w
YXJzZXIucHkgfCAzOCArKysrKysrKysrKysrKysrKystLS0tLS0tLS0NCj4gLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBiL3Rvb2xzL2xp
Yi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBpbmRleCAzYmEyY2RhMjQ4N2EuLmFlNWIy
ZWY4MGY3NSAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2Vy
LnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiBAQCAt
MTUyLDcgKzE1Miw3IEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+ICAgICAgKEtlcm5SZShyJ0RFRklO
RV9ETUFfVU5NQVBfTEVOXHMqXCgnICsgc3RydWN0X2FyZ3NfcGF0dGVybiArDQo+IHInXCknLCBy
ZS5TKSwgcidfX3UzMiBcMScpLCAgXSAgIyAtIyBSZWdleGVzIGhlcmUgYXJlIGd1YXJhbnRlZWQg
dG8NCj4gaGF2ZSB0aGUgZW5kIGRlbGltaXRlciBtYXRjaGluZw0KPiArIyBTdHJ1Y3QgcmVnZXhl
cyBoZXJlIGFyZSBndWFyYW50ZWVkIHRvIGhhdmUgdGhlIGVuZCBkZWxpbWl0ZXINCj4gbWF0Y2hp
bmcNCj4gICMgdGhlIHN0YXJ0IGRlbGltaXRlci4gWWV0LCByaWdodCBub3csIG9ubHkgb25lIHJl
cGxhY2UgZ3JvdXAgICMgaXMNCj4gYWxsb3dlZC4NCj4gICMNCj4gQEAgLTE2MCw2ICsxNjAsMTMg
QEAgc3RydWN0X25lc3RlZF9wcmVmaXhlcyA9IFsNCj4gICAgICAocmUuY29tcGlsZShyJ1xiU1RS
VUNUX0dST1VQXCgnKSwgcidcMScpLCAgXQ0KPiANCj4gKyMNCj4gKyMgRnVuY3Rpb24gUmVnZXhl
cyBoZXJlIGFyZSBndWFyYW50ZWVkIHRvIGhhdmUgdGhlIGVuZCBkZWxpbWl0ZXINCj4gK21hdGNo
aW5nICMgdGhlIHN0YXJ0IGRlbGltaXRlci4NCj4gKyMNCj4gK2Z1bmN0aW9uX25lc3RlZF9wcmVm
aXhlcyA9IFsNCj4gK10NCj4gKw0KPiAgIw0KPiAgIyBUcmFuc2Zvcm1zIGZvciBmdW5jdGlvbiBw
cm90b3R5cGVzDQo+ICAjDQo+IEBAIC0yMDcsMTMgKzIxNCw2IEBAIHZhcl94Zm9ybXMgPSBbDQo+
ICAjIEFuY2lsbGFyeSBmdW5jdGlvbnMNCj4gICMNCj4gDQo+IC1kZWYgYXBwbHlfdHJhbnNmb3Jt
cyh4Zm9ybXMsIHRleHQpOg0KPiAtICAgICIiIg0KPiAtICAgIEFwcGx5IGEgc2V0IG9mIHRyYW5z
Zm9ybXMgdG8gYSBibG9jayBvZiB0ZXh0Lg0KPiAtICAgICIiIg0KPiAtICAgIGZvciBzZWFyY2gs
IHN1YnN0IGluIHhmb3JtczoNCj4gLSAgICAgICAgdGV4dCA9IHNlYXJjaC5zdWIoc3Vic3QsIHRl
eHQpDQo+IC0gICAgcmV0dXJuIHRleHQNCj4gDQo+ICBtdWx0aV9zcGFjZSA9IEtlcm5SZShyJ1xz
XHMrJykNCj4gIGRlZiB0cmltX3doaXRlc3BhY2Uocyk6DQo+IEBAIC00MDgsNiArNDA4LDggQEAg
Y2xhc3MgS2VybmVsRG9jOg0KPiAgICAgICAgICAjIFBsYWNlIGFsbCBwb3RlbnRpYWwgb3V0cHV0
cyBpbnRvIGFuIGFycmF5DQo+ICAgICAgICAgIHNlbGYuZW50cmllcyA9IFtdDQo+IA0KPiArICAg
ICAgICBzZWxmLm5lc3RlZCA9IE5lc3RlZE1hdGNoKCkNCj4gKw0KPiAgICAgICAgICAjDQo+ICAg
ICAgICAgICMgV2UgbmVlZCBQeXRob24gMy43IGZvciBpdHMgImRpY3RzIHJlbWVtYmVyIHRoZSBp
bnNlcnRpb24NCj4gICAgICAgICAgIyBvcmRlciIgZ3VhcmFudGVlDQo+IEBAIC01MDUsNiArNTA3
LDE2IEBAIGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAgICAgIyBTdGF0ZSBmbGFncw0KPiAgICAg
ICAgICBzZWxmLnN0YXRlID0gc3RhdGUuTk9STUFMDQo+IA0KPiArICAgIGRlZiBhcHBseV90cmFu
c2Zvcm1zKHNlbGYsIHJlZ2V4X3hmb3JtcywgbmVzdGVkX3hmb3JtcywgdGV4dCk6DQo+ICsgICAg
ICAgICIiIkFwcGx5IGEgc2V0IG9mIHRyYW5zZm9ybXMgdG8gYSBibG9jayBvZiB0ZXh0LiIiIg0K
PiArICAgICAgICBmb3Igc2VhcmNoLCBzdWJzdCBpbiByZWdleF94Zm9ybXM6DQo+ICsgICAgICAg
ICAgICB0ZXh0ID0gc2VhcmNoLnN1YihzdWJzdCwgdGV4dCkNCj4gKw0KPiArICAgICAgICBmb3Ig
c2VhcmNoLCBzdWIgaW4gbmVzdGVkX3hmb3JtczoNCj4gKyAgICAgICAgICAgIHRleHQgPSBzZWxm
Lm5lc3RlZC5zdWIoc2VhcmNoLCBzdWIsIHRleHQpDQo+ICsNCj4gKyAgICAgICAgcmV0dXJuIHRl
eHQuc3RyaXAoKQ0KPiArDQo+ICAgICAgZGVmIHB1c2hfcGFyYW1ldGVyKHNlbGYsIGxuLCBkZWNs
X3R5cGUsIHBhcmFtLCBkdHlwZSwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgb3JnX2FyZywg
ZGVjbGFyYXRpb25fbmFtZSk6DQo+ICAgICAgICAgICIiIg0KPiBAQCAtODgxLDExICs4OTMsOSBA
QCBjbGFzcyBLZXJuZWxEb2M6DQo+ICAgICAgICAgICMgR28gdGhyb3VnaCB0aGUgbGlzdCBvZiBt
ZW1iZXJzIGFwcGx5aW5nIGFsbCBvZiBvdXINCj4gdHJhbnNmb3JtYXRpb25zLg0KPiAgICAgICAg
ICAjDQo+ICAgICAgICAgIG1lbWJlcnMgPSB0cmltX3ByaXZhdGVfbWVtYmVycyhtZW1iZXJzKQ0K
PiAtICAgICAgICBtZW1iZXJzID0gYXBwbHlfdHJhbnNmb3JtcyhzdHJ1Y3RfeGZvcm1zLCBtZW1i
ZXJzKQ0KPiArICAgICAgICBtZW1iZXJzID0gc2VsZi5hcHBseV90cmFuc2Zvcm1zKHN0cnVjdF94
Zm9ybXMsDQo+IHN0cnVjdF9uZXN0ZWRfcHJlZml4ZXMsDQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbWVtYmVycykNCj4gDQo+IC0gICAgICAgIG5lc3RlZCA9IE5l
c3RlZE1hdGNoKCkNCj4gLSAgICAgICAgZm9yIHNlYXJjaCwgc3ViIGluIHN0cnVjdF9uZXN0ZWRf
cHJlZml4ZXM6DQo+IC0gICAgICAgICAgICBtZW1iZXJzID0gbmVzdGVkLnN1YihzZWFyY2gsIHN1
YiwgbWVtYmVycykNCj4gICAgICAgICAgIw0KPiAgICAgICAgICAjIERlYWwgd2l0aCBlbWJlZGRl
ZCBzdHJ1Y3QgYW5kIHVuaW9uIG1lbWJlcnMsIGFuZCBkcm9wIGVudW1zDQo+IGVudGlyZWx5Lg0K
PiAgICAgICAgICAjDQo+IEBAIC0xMDg4LDcgKzEwOTgsOSBAQCBjbGFzcyBLZXJuZWxEb2M6DQo+
ICAgICAgICAgICAgICAjDQo+ICAgICAgICAgICAgICAjIEFwcGx5IHRoZSBpbml0aWFsIHRyYW5z
Zm9ybWF0aW9ucy4NCj4gICAgICAgICAgICAgICMNCj4gLSAgICAgICAgICAgIHByb3RvdHlwZSA9
IGFwcGx5X3RyYW5zZm9ybXMoZnVuY3Rpb25feGZvcm1zLCBwcm90b3R5cGUpDQo+ICsgICAgICAg
ICAgICBwcm90b3R5cGUgPSBzZWxmLmFwcGx5X3RyYW5zZm9ybXMoZnVuY3Rpb25feGZvcm1zLA0K
PiArDQo+IGZ1bmN0aW9uX25lc3RlZF9wcmVmaXhlcywNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwcm90b3R5cGUpDQo+IA0KPiAgICAgICAgICAjIFll
cywgdGhpcyB0cnVseSBpcyB2aWxlLiAgV2UgYXJlIGxvb2tpbmcgZm9yOg0KPiAgICAgICAgICAj
IDEuIFJldHVybiB0eXBlIChtYXkgYmUgbm90aGluZyBpZiB3ZSdyZSBsb29raW5nIGF0IGEgbWFj
cm8pDQo+IC0tDQo+IDIuNTIuMA0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
