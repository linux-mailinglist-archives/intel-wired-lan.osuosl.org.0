Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1753901F0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 12:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7979840635;
	Mon, 10 Jun 2024 10:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pEiP9K1PV8nh; Mon, 10 Jun 2024 10:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29F93405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718014475;
	bh=mEP8bIXTLo/plQh76Ovmmp0ICwfd31Si4DGEtYnTc2U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BIaE5wCQcRZYkxnd6M17GsP32PErmXsxUrDXKpj7O40txC0NLq7olsyml28Vah9Nx
	 N14z1Fns4PqGow4/37QXgB77TeX8WdFQEr0bhb6e8tKnVj7QWYRA4IBs4NsjvEljN3
	 Sgco47TllPx0L/XI8RID80ljqMMhihmhQAXtyZyVJ24ct6UU5p8bPf0gkOFYBtfuRq
	 RL6OAEMbBOwefC6d+AXFnPezuJ8JyIqzno3d5eh94sQb2Qj7+v6DqO4Z7qK8eSN8cY
	 IGfmoZABNopLzEy5vg5mWIxCitBvYXrdav4/r2dyVedc63rjh5RJLKn2D+t9564XZn
	 bM3OHxKT07pHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29F93405FA;
	Mon, 10 Jun 2024 10:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90F9A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DE5660752
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBfAiDxaYwcr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 10:14:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8651A60659
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8651A60659
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8651A60659
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:14:31 +0000 (UTC)
X-CSE-ConnectionGUID: yOqAbEVCRky577qbrf9X5Q==
X-CSE-MsgGUID: i3dD1RLXRLSVZyMydHV/SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="17588718"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="17588718"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 03:14:23 -0700
X-CSE-ConnectionGUID: 1e5Y6VCISVWKjMCBd7c3gg==
X-CSE-MsgGUID: JU4bkvZfQruuCIrQ8ILTRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39097179"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 03:14:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 03:14:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 03:14:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 03:14:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiZ66jd+ymfnZVmT11H6LhA4YwbWNTgwtRAMYBp4/zW7UPkHEeIhPHgMrAHHGWuHJuzh6nnCmrxgDTeQ2sMx+Hbtz5SRjNopmhR/WHoJEoPrff1iJl7qmyw4TL1peR9b/GWVJTW+e0rZFfopi9HJKA6gf5NY1fw9rz2/Of7sBK1YddlX2WW5aVYXuRIvRenKcdcIs5m73jqOhf0kKSQkuESl0Xw/If1HAiF9MhEdUCGROPJzYh+OhRlFx2chUJLSoyk8SlbktUqtqiCrjG/+ri+b0XNgJi/8pxgPYSd6iF6poTpKKphKq6AzeZ1vT6dnotA0bL0yqPpWfjsF8hCSwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEP8bIXTLo/plQh76Ovmmp0ICwfd31Si4DGEtYnTc2U=;
 b=W6kxe/+iEH1aKeurLSMNMukS8xkdDyH3Y6ctYcn0GTUkXvk1SbdY3R0brfZ89NtOq1h6VP5U8FleT2HfSBhWN8uscPYu04oG8bXPazQttI7x3xhG+wqRwy2PrMPUiQhnZ2798mSJJXNTPx32kd/VizB1aoJ4YZtRvdlx2jLV7OAIW74WIbK7iH2gF5a2berBUqhyhQ8y0+E5ZzQdFUXNvzOjohK/nYdE8IOH/JEHIpLgD1hjwmpmhPMxD9exk2B8v5gsR03Qd2kNPDtr8k6RpOxAHYp/Wmbcyqtfe0bMzGmekgHXgy++300Ig6VuWvvs3JOQ3ON+YRDD0isOMK6QEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Mon, 10 Jun 2024 10:14:20 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 10:14:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Kang, Kelvin" <kelvin.kang@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
Thread-Index: AQHauxePZUIIvyLVckGO394neDxrc7HAv52AgAAHF5A=
Date: Mon, 10 Jun 2024 10:14:20 +0000
Message-ID: <SJ0PR11MB5866360BDA97A03298A4A637E5C62@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
 <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
In-Reply-To: <a2ad5189-10d1-4e6b-8509-b1ce4e1e7526@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB5972:EE_
x-ms-office365-filtering-correlation-id: 18f42167-8878-4533-ab6f-08dc89361814
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?RkxET0I0K0g4LzJQc0xlMHdGeUZvUEQyc2xuZTFMZldQUjdlR0MvMmF0VUh4?=
 =?utf-8?B?RDQyazAwSy9NTHFoZ1RrOVhtd1dEMmRkZmNZYlpsRi8vNHNsOXJGek0yaXZr?=
 =?utf-8?B?di94UUVVNU9lZUtBcTg4STVaakxKUWp1TEkyMnUzNGhkMHNXcE1DV2kyRzhk?=
 =?utf-8?B?NUl1dVdKbVdtNnk1T0pVR2VvT0pmYm5hb3VCT21Pc1dJeGpmUENqQzByMkZH?=
 =?utf-8?B?ME1UbUR2OHp5OGQ3cW1TMTltOWFROVBRMzdUdUs2bVZ2S25lOWNub2ladWxJ?=
 =?utf-8?B?VjFvUlhqTFlKYmdKc3o3K2xQRkNQd3YzdUlLdmV6aE5PTGN0OC9HTGhZTHJE?=
 =?utf-8?B?UGdrbFNwdmdISG5Mb0RCQTNHaU9IL09Hb3RKQXprUVZMcEpSV1czTllTZFRU?=
 =?utf-8?B?c1hMTjRDa1dhY3RhaUJ4Z1JYazdxUUVpWi9RdUVxa1hpVmpmN1loMXpDS1Rs?=
 =?utf-8?B?MnVYR3Z1bmpJN0swck9KT0NFeDhnR3dhQTBYZFhtY1VuaDl3RUt0ck0wOXVm?=
 =?utf-8?B?SEs0N0pGRThuby8xVGw0S1JTeW12MmthZW5nalJWZzRWdEhZWXI1b1hBVVcy?=
 =?utf-8?B?NnFCcmpyQ3ZwejhiY2d4UmJhYXJLZVgxa2FqYlJ2NkY3NkllS1JGZWY0QTNW?=
 =?utf-8?B?Z1FOR3ZnenhIQXJ0TVEvR0lZVTVKSDcyWVE0dE82MjNEelNDMW1DZ1BsWXpQ?=
 =?utf-8?B?YjAwZTd0Y0RTL29MWWdhcTc5bkJTaU04NndvYkVoMWtkUG5qSVA4VFBEUGFE?=
 =?utf-8?B?S0laRzQ5SDRURDN5TE9JWk9BeFdMZjVTekNYRXVnSWhleFVOMW9UOXMvSDV5?=
 =?utf-8?B?SFlGWDVSN1VqeTdXTTllZWpMMlhRUndDSU85cjRTR1l2VWxxZHRydG1BcXdI?=
 =?utf-8?B?ZXFGOExJZ1dmMG45ZncxQlNIdmpMaW1JRHhRTFFHSnMvS3laYmpFZFVPN2Zw?=
 =?utf-8?B?QjYyS1hiNm53ZzhhNVdBNWExdjV5VnFWem9PSDhVYjcxZGxpYXNSV1lwaURX?=
 =?utf-8?B?ZVR4ZzYyNW90S2oyUDlTd1l6aVljanRoUFNDYkh1MWlzbktzUjhQNnNzSy80?=
 =?utf-8?B?dC81OHF2d3BrczRuREozbjhIOXNYbzYvQUpqR3dvTElwNmd0N1hIcDUwRkJu?=
 =?utf-8?B?WnBHNFNoUjFCTW5pNzhNcGFkVitmMmcwc2RZQUJLaWRLSkJpcU9pYUdUMmor?=
 =?utf-8?B?M3JBZkpKcStZaXFEbWhheWhrT29zZWgzcmZMdzcwSnQ5MkdodWJKQjB3SWhU?=
 =?utf-8?B?clRLT2JENWR4QWwyenFzQVo5NWMwYjVLSmYxa2ZLRjR5RkxrTjVHT2RyNXZW?=
 =?utf-8?B?RDZSY1JIOFR3REIwR0d6VzdnNlltRzRTOFBYM2xqaklDNDJ6Qzg2ZEtWakZE?=
 =?utf-8?B?VzR6SHNxbThKWVRoQVNPRFFQSzB6V2tiTGljNE9jRURvT3BBcGFlbHpZeldn?=
 =?utf-8?B?QUVqWVR3QVF6SmEvODV0Nk1XbEFoT0FnYXRTb2k0K1Q3SGxjRkZYazFIK2tK?=
 =?utf-8?B?MmRydkZBcE9vMHNTMlJkU1J1Z1JmcXdZeXB2bzBRckQ2cG5lS09PbkkwK3Vp?=
 =?utf-8?B?NmtTdXVXeXEyR1RtRXBkMGIxczRDM29WVHhIMUlDTXF5eUtYTGY5V2htdGxy?=
 =?utf-8?B?dzliNzJPZFVycmtMMDhVMTd1NndOSGFrRWQxY2JIVzNJcXg0MVkxdTAzQlpG?=
 =?utf-8?B?Y3NFcnIzdHVLbUViR2hXMmYwR2dqUHlDczJCRFZuaDNJNUtHRjBaZTZyM244?=
 =?utf-8?B?MnRhdkdFNTJYNHFEZFNjOUJMbXdvZTBLWDFOc0E3bHZwSUhvbUowcUNVYWNx?=
 =?utf-8?Q?wT4RKqYglg1Te+6dVdQqml4rhPJn2S/hD4DZE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0JlQTNSRHQvdng5aU9YNnZSVmsrZnVYVGd3ell6bXQrQnVmUTBIY1hxYW5p?=
 =?utf-8?B?bUNmNW42dEVmR1liSWFMcThoYkZXSVNqNU0yNVRCVjVhRG5pSUtPeUZzaVVD?=
 =?utf-8?B?TTI5aFo0SjFUbDdLVGRKWElrNGQ5NzNUblNmaTFpSkJIM2kvQjRkdVB6Wk9t?=
 =?utf-8?B?Qk1sVTkrT0xhVndVWUxqQXJaNGtuRlQrUUE5REdadElDL004SEhKUDJRekRE?=
 =?utf-8?B?bEdjRmtlbzVKdDFkVFlhNFBKSW01NmM4V2RDYmpsOHU3a1RvYkdHaGh5UGQ1?=
 =?utf-8?B?VWRsQ1JuenVTT1VBV014YlhReHdRbUZHbmZVR1F3cjZ0MENIWlpMYmR4RzY4?=
 =?utf-8?B?K2lBNEFRWHhTalhldm1qOXRjUGZPQVM0QllJWmxCZUN4Q0lkbGtncEpJK2dF?=
 =?utf-8?B?R2R4QTBCS1dmaTNaUjRNS004V3A2eFZTTFZDdVprTldXdnVBZmhLUXUwazgy?=
 =?utf-8?B?N1FnRWJCOEZpZE4xM1VwdVRJZkJqWURtR1VRRlN5N0lKWGZDeXJXMzE5U2ZR?=
 =?utf-8?B?dFlCTEE0cmZUamI5MFdBNDVxMm9kTTByTS9yK2xrWFdlSGJCNEJUVmZtUktv?=
 =?utf-8?B?VG1mMzErc0prRis0Z2ZCYjhOaFh3eVBTcGZVUHQzbWpuMGM0NE5YbFpyc2Jy?=
 =?utf-8?B?R0hOYXJwMXBKTWxpWEluL3drbngvZE5kQ3BWMWswMWFJalNsZWNSSGVlZ2RT?=
 =?utf-8?B?WjZHUFVjNnhpVnQ2TkZ2WG1pcEVuS2NjTS91RWRJR25mMnE2Snk4NnU3eXMy?=
 =?utf-8?B?M29EWWU4eU5FSWFXaEpaSy9vWlQ0ZlNoK2JnWmNFSDY0WjJld0ZPRVpHV2wv?=
 =?utf-8?B?bi8wVTVBYU9JNTd0VHFTSjRCSE44OFJMd1Zrd0lab0Fxa3Zsa3dnS3NCOWlz?=
 =?utf-8?B?V2pLYlR6cjJHcDlTUkRsUk01SDNPTDhFOHUvaTNSYXhCYWREdTdWbEYwTSs1?=
 =?utf-8?B?UnpQUkdqVVZDaVBvcFVuUEtIeXdPU0IxT2pSTzExOW5PUUpnbTJDa3EzQ0FY?=
 =?utf-8?B?OFg3QVluVG5hb1hQMk9naVdxZy9qUDJtaENxYlZhMmdlUitiU1ZmSmxkaHRY?=
 =?utf-8?B?L2ttakF0dm9SclFZczRZRHJRTkRqT0xUOXphVHNZNUJJTG03MWdQemFTRmJ6?=
 =?utf-8?B?N05UM0RqQWEwUjF6V3U1YjNGMU1BcFVwRWdDZGNJQmEzVUpEZmUvd0FIWjh2?=
 =?utf-8?B?bmdZYjRoV1BTb0xxMmF4TUxWd1RQNlg4VUpLRXF3RU9zck00YUh4NXgxaXRK?=
 =?utf-8?B?WWhoZ2xsNUoxVVRReXdZOGFvY1oxUHdIWXIxcTlvNGhaaU9rdDZXVTQ2VWEw?=
 =?utf-8?B?UEx6eEVkWTRqMWdkN3ZDMGlOS1ZIaVg1c3BvS1FjNWdRdVRjWFl4WURKNTRW?=
 =?utf-8?B?RlpZaXpQRThpVFRxMTRINklnNU1vVjEwQ1hRa0pFc0svNlowSVd2SkpoeDlr?=
 =?utf-8?B?QTZ0MzE3aXdyN3hSYnpkT2dXS3UrbENQeVpKcEhtTVJ4YVo3blRjOXNyZTZL?=
 =?utf-8?B?VXJLcHU4WlBVSTFIaWRMSTdmNlptcThTQUVPOEpHeHlabFp6ZDE1V0NUMGhl?=
 =?utf-8?B?ZVlGTWZGOXpUa0dlSjN2Q3JRNEhCT253ZzFaWjJjVXlNQUcra0ZSNG9aK2pG?=
 =?utf-8?B?enNHYmNaTnluT0h3QUZuS2NkYTNidlF4TEZjMHBtZlRuQisvTCtHNUNQdExJ?=
 =?utf-8?B?dHlhMXJFTTFxMncwQStxRkExalJScUlsNFZ1S2hiRld6SHgvSkUxM2VITFlK?=
 =?utf-8?B?V3JJSEJBZ0NIT2dOUlVqcm9kN2xnMEx5dHVkak1PVUd3M1pQNzUzeDZSeG9q?=
 =?utf-8?B?SHpnb2d5R3VBVjdFeHRnSFQ3aWN4bGt4cFVyQ3YzQVNMVDkvU1A0U1BpTUdM?=
 =?utf-8?B?cmo0MFRHbXljZnIyK1ZvL1lBVmNhKzg5M2s0TzZFZTRNcDNBOTF3dG43MHl6?=
 =?utf-8?B?M0F1dVNyMHEzK0JkdVNVem5xQU1LVkswS3ZMbjNLZlRrNXVJNjZTMEE2SHNF?=
 =?utf-8?B?azlacWVJMkhIcDJCbGFSWkRGdzJtWWdaTDVhcUhValE1VE1NSVRVcUhvUXNL?=
 =?utf-8?B?ZDJab1E0QUtUb1A5Q011aDlxaW1vUm1xL2tLZy9pSWxmVW5MdDl5WDMyVVIw?=
 =?utf-8?B?dmhiOS9tMUMyeVVvUXNvNnFCeXE5ck44RnhKMWtpa0JPSFNsUnVsL2ZteUFZ?=
 =?utf-8?B?alE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f42167-8878-4533-ab6f-08dc89361814
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 10:14:20.4716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wNIxoSUSgE5t2ucJTC+/LRNmkEx8fLPYqgUggtqpIt2O/uM8iOG0ENYf/n2l9bXvnjb9/zRBmEB1Sfap3BCRSyMq0+Ucu4SF7Bq8UYB+Z5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718014471; x=1749550471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mEP8bIXTLo/plQh76Ovmmp0ICwfd31Si4DGEtYnTc2U=;
 b=ACd/sHXMGKXW67PDeFyMeFQ/o3Xa1w0qt71NwLe19EQOjEtoCFU6QDTm
 jrR0RNRLrypDlJK07fExROFXxyC7NJ+CDtpYW09FKaCWd0TXKhgJ+t6I1
 pcIGARhQbeoc+EITQIDXMADNsKNT0gfvZy7NnF9vA1CUsE1tdLyk8ZiiM
 YVbmkWxUF32vUIT4ZNlNXkqDPOYBqb+Ji6atXP40vZPXmUWFarJ9RyaJd
 UuTMW9p4fdWAopjS8t5LqJMSRgTYNEiMXkgRrCA1Wy3jvNyLtjegATLJ3
 twoNOTc54nQrb5ahWZ+q7m9JUxmB+J507doVAeDo/u9UiFACLABu2uZnV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ACd/sHXM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBKdW5lIDEwLCAyMDI0IDExOjQ1
IEFNDQo+IFRvOiBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+OyBLYW5nLA0KPiBLZWx2aW4gPGtlbHZpbi5rYW5nQGludGVsLmNvbT4NCj4gQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLdWJhbGV3
c2tpLA0KPiBBcmthZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IFNva29s
b3dza2ksIEphbg0KPiA8amFuLnNva29sb3dza2lAaW50ZWwuY29tPjsgTGVvbiBSb21hbm92c2t5
IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQ
QVRDSCBpd2wtbmV0XSBpNDBlOiBmaXggaG90IGlzc3VlDQo+IE5WTSBjb250ZW50IGlzIGNvcnJ1
cHRlZCBhZnRlciBudm11cGRhdGUNCj4gDQo+IERlYXIgQWxla3NhbmRyLCBkZWFyIEtlbHZpbiwN
Cj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+IA0KPiANCj4gQW0gMTAuMDYu
MjQgdW0gMTE6MjAgc2NocmllYiBBbGVrc2FuZHIgTG9rdGlvbm92Og0KPiA+IEFmdGVyIDIzMGYz
ZDUzYTU0NyBwYXRjaCBhbGwgSS9PIGVycm9ycyBhcmUgYmVpbmcgY29udmVydGVkIGludG8NCj4g
PiBFQUdBSU4gd2hpY2ggbGVhZHMgdG8gcmV0cmllcyB1bnRpbCB0aW1lb3V0IHNvIG52bXVwZGF0
ZQ0KPiBzb21ldGltZXMNCj4gPiBmYWlscyBhZnRlciBtb3JlIHRoYW4gMjAgbWludXRlcyENCj4g
Pg0KPiA+IFJlbW92ZSBtaXNsZWFkaW5nIEVJTyB0byBFR0FJTiBjb252ZXJzaW9uIGFuZCBwYXNz
IGFsbCBlcnJvcnMgYXMNCj4gaXMuDQo+ID4NCj4gPiBGaXhlczogMjMwZjNkNTNhNTQ3ICgiaTQw
ZTogcmVtb3ZlIGk0MGVfc3RhdHVzIikNCj4gDQo+IFRoaXMgY29tbWl0IGlzIHByZXNlbnQgc2lu
Y2UgdjYuNi1yYzEsIHJlbGVhc2VkIFNlcHRlbWJlciBsYXN0IHllYXINCj4gKDIwMjMpLiBTbyB1
bnRpbCBub3csIG5vYm9keSBub3RpY2VkIHRoaXM/DQo+IA0KUmVhbGx5LCByZWFsbHkuIFRoZSBy
ZWdyZXNzaW9uIGFmZmVjdHMgdXNlcnMgb25seSB3aGVuIHRoZXkgdXBkYXRlIEYvVywNCmFuZCBu
b3QgYWxsIEYvVyBhcmUgYWZmZWN0ZWQsIG9ubHkgdGhhdCBnZW5lcmF0ZSBJL08gZXJyb3JzIHdo
aWxlIHVwZGF0ZS4NCk5vdCBjYXJzIGFyZSBhZmZlY3RlZCwgYnV0IHRoZSBjb25zZXF1ZW5jZXMg
YXJlIHNlcm91cyBhcyBpbiBzdWJqLg0KDQo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBLZWx2aW4gS2Fu
ZyA8a2VsdmluLmthbmdAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEtlbHZpbiBLYW5n
IDxrZWx2aW4ua2FuZ0BpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEFya2FkaXVzeiBLdWJh
bGV3c2tpDQo+IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogQWxla3NhbmRyIExva3Rpb25vdg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5j
b20+DQo+IA0KPiBQbGVhc2UgZ2l2ZSBtb3JlIGRldGFpbHMgYWJvdXQgeW91ciB0ZXN0IHNldHVw
LiBGb3IgbWUgaXTigJlzIGFsc28NCj4gbm90IGNsZWFyLCBob3cgdGhlIE5WTSBjb250ZW50IGdl
dHMgY29ycnVwdGVkIGFzIHN0YXRlZCBpbiB0aGUNCj4gc3VtbWFyeS90aXRsZS4gQ291bGQgeW91
IHBsZWFzZSBlbGFib3JhdGUgdGhhdCBpbiB0aGUgY29tbWl0DQo+IG1lc3NhZ2UuDQo+IA0KPiA+
IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5o
IHwgNCAtLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5x
LmgNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuaA0K
PiA+IGluZGV4IGVlODZkMmMuLjU1YjViYjggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oDQo+ID4gQEAgLTEwOSwxMCArMTA5LDYg
QEAgc3RhdGljIGlubGluZSBpbnQgaTQwZV9hcV9yY190b19wb3NpeChpbnQNCj4gYXFfcmV0LCBp
bnQgYXFfcmMpDQo+ID4gICAJCS1FRkJJRywgICAgICAvKiBJNDBFX0FRX1JDX0VGQklHICovDQo+
ID4gICAJfTsNCj4gPg0KPiA+IC0JLyogYXFfcmMgaXMgaW52YWxpZCBpZiBBUSB0aW1lZCBvdXQg
Ki8NCj4gPiAtCWlmIChhcV9yZXQgPT0gLUVJTykNCj4gPiAtCQlyZXR1cm4gLUVBR0FJTjsNCj4g
PiAtDQo+ID4gICAJaWYgKCEoKHUzMilhcV9yYyA8IChzaXplb2YoYXFfdG9fcG9zaXgpIC8NCj4g
c2l6ZW9mKChhcV90b19wb3NpeClbMF0pKSkpDQo+ID4gICAJCXJldHVybiAtRVJBTkdFOw0KPiAN
Cj4gVGhlIHJlZmVyZW5jZWQgY29tbWl0IDIzMGYzZDUzYTU0NyBkb2VzOg0KPiANCj4gYGBgDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5x
LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4g
aW5kZXggZWUzOTRhYWNlZjRkLi4yNjdmMmUwYTIxY2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuaA0KPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xLmgNCj4gQEAgLTUsNyArNSw2IEBADQo+
ICAgI2RlZmluZSBfSTQwRV9BRE1JTlFfSF8NCj4gDQo+ICAgI2luY2x1ZGUgImk0MGVfb3NkZXAu
aCINCj4gLSNpbmNsdWRlICJpNDBlX3N0YXR1cy5oIg0KPiAgICNpbmNsdWRlICJpNDBlX2FkbWlu
cV9jbWQuaCINCj4gDQo+ICAgI2RlZmluZSBJNDBFX0FETUlOUV9ERVNDKFIsIGkpICAgXA0KPiBA
QCAtMTE3LDcgKzExNiw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGk0MGVfYXFfcmNfdG9fcG9zaXgo
aW50DQo+IGFxX3JldCwgaW50IGFxX3JjKQ0KPiAgICAgICAgICB9Ow0KPiANCj4gICAgICAgICAg
LyogYXFfcmMgaXMgaW52YWxpZCBpZiBBUSB0aW1lZCBvdXQgKi8NCj4gLSAgICAgICBpZiAoYXFf
cmV0ID09IEk0MEVfRVJSX0FETUlOX1FVRVVFX1RJTUVPVVQpDQo+ICsgICAgICAgaWYgKGFxX3Jl
dCA9PSAtRUlPKQ0KPiAgICAgICAgICAgICAgICAgIHJldHVybiAtRUFHQUlOOw0KPiANCj4gICAg
ICAgICAgaWYgKCEoKHUzMilhcV9yYyA8IChzaXplb2YoYXFfdG9fcG9zaXgpIC8NCj4gc2l6ZW9m
KChhcV90b19wb3NpeClbMF0pKSkpDQo+IGBgYA0KPiANCj4gU28gSSBkbyBub3Qgc2VlIHlldCwg
d2h5IHJlbW92aW5nIHRoZSB3aG9sZSBodW5rIGlzIHRoZSBzb2x1dGlvbi4NCj4gDQo+IA0KPiBL
aW5kIHJlZ2FyZHMsDQo+IA0KPiBQYXVsDQo=
