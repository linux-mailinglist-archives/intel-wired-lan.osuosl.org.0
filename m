Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RwTEMYxVLmpAtgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:17:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3385668088F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Jun 2026 09:17:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Bd8905JM;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D745384255;
	Sun, 14 Jun 2026 07:17:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jd_NkD6TMfXK; Sun, 14 Jun 2026 07:17:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48F448427E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781421450;
	bh=uD7CVAc96dnZIYRCqNMuWeok842uRv5mQAjHpokNdB4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bd8905JMcIoACH22LFIHCu6aifi5m/TQ20SpXuEtPCP1I1AOjPahqmaR4W8+VLCPQ
	 JlY4MiRRddxD4C2LX8Q4b6wsh/U0i6H7vsrMVSeiR1padSOrbgZwo71br24FMWMUeD
	 4G1YDcGejuoRj6pnjdGyWx67FYaaImmTmXchBywq05Tlac4RrdltYYH14T+CF/usek
	 dnyIpyC9qcUAUpXk5kMW2sZ/1kt5zfRBo8PH5ry3VYGWtuT3MZRKLrQmixZ6JEzJY0
	 Qu2zusNui9XglVSkccFknuQsfamxLN1L9RBXczW1qWq+KTeB2hqMfxhv8ysFbXoReG
	 YxGwM4aebFZWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48F448427E;
	Sun, 14 Jun 2026 07:17:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A3D12EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FB5584261
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOpLrAAVNRxA for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 07:17:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 990B082368
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 990B082368
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 990B082368
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 07:17:27 +0000 (UTC)
X-CSE-ConnectionGUID: PVF/lyZ1T9Kiggh8C4GM9w==
X-CSE-MsgGUID: wq43jiL5R4GXVpZ6qgAQeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="82204177"
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="82204177"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:17:27 -0700
X-CSE-ConnectionGUID: W1lSshU4QSSzv9WhLvHWbA==
X-CSE-MsgGUID: rA4W1BdNRIujmXI44O4zRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="271254365"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 00:17:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:17:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 00:17:26 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 00:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sG+QGunYrQrYHtWeVIomuZNrBty6/o87h2aiwJHwbC/wBinDaGwLEvot7QhWw/L7Hihz4MbMMoYEa1T1E0C9rLXkJ46UF/CvuPLOGZ9EWPxhKDIeYNV+I+4zNCwckSHJVdQsJ6HxBap0/+y93YvXOE5pdTfTKdoBSbvw2Sa75F2A/tqmSSObV+iBHN87ULx88ataSwl3Lw/42JuM1de1vkmqiDqRTGv9KWdxqf9i/f8n+p3Rly/FzIFssKOLK4oQCMFo3lhUFmVZZIwiOHDAASaohBU4aXK7U+SI8btsLh7BHmjHUxXt2C5xHf8uB4KaGMkB371UFfi9UP/g16jHQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uD7CVAc96dnZIYRCqNMuWeok842uRv5mQAjHpokNdB4=;
 b=TOKhHhAUpEf5uuk2AvbXbPeJu/zMh/Jk14DCE1yudI8EL395Ipcv6lQDVkj2/sGEs3+hTSgUhONP/mRXDfcLuabkr/hHgkpv0PIJD6kC+bUvi9ETW/HcTaPPv5cawd4SaWtg3z9zmTtoVZK/f9wEAra457sNTGZtVCDHqX7s2vANurVZyjLPmBPeqrMEd836QD9MvN1oVaj5THW3twdgAHBxOa4RJ5+TDioXEw3xZfH/huL0flb7BQlJpdx5+EmiAD8FeDWf8+DfsMHy4uj58W75fsRYnPa2ZoecjHxkEEL48cNaGSuTGvFK4meJ+GSqyVnkN0NZ2BONuZ2XZtChPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SA7PR11MB9541.namprd11.prod.outlook.com (2603:10b6:806:4cf::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Sun, 14 Jun
 2026 07:17:23 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0113.015; Sun, 14 Jun 2026
 07:17:23 +0000
Message-ID: <58af982a-1531-43f8-934c-e83b45111b1f@intel.com>
Date: Sun, 14 Jun 2026 10:17:17 +0300
User-Agent: Mozilla Thunderbird
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <faizal.abdul.rahim@intel.com>,
 <hong.aun.looi@intel.com>, <hector.blanco.alcaine@intel.com>,
 <khai.wen.tan@intel.com>, Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-4-khai.wen.tan@linux.intel.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260507214706.309984-4-khai.wen.tan@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SA7PR11MB9541:EE_
X-MS-Office365-Filtering-Correlation-Id: f9cc0c97-f771-4689-aa29-08dec9e4fb18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|23010399003|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: BZgqnJntii5tIbwGgNnWTe6ZDZwhZZv9qIAZXEJw24/mUSlnfHvWlBv5rcleT2y6x9fLQxOHpRxDw7dZXRyx8Cn4JF57/kjSwVMP2fgc3wES0yqYNZ/Hu8Eg/mheHlVGucZv+5teStk1QuOR5T3lrsEcYBH+H6pe8wCPV192vxgxWmfWNoaAxLJL2VCK5lreymdbFzf8RybrbvONob/xVTkLMp0n7mewuPDoHwsp/sSaWKHms04jHgwt7HGtsekrZlaG4xK8LnDqmYdqSv+f9dwLIqbriqVScT/MSHgkb6l0va9g61x8DVfg5i1cTRkaERbfuiRwHTtB9kyU9FZJ/mvr0qo1hVhWYfaOr5QvTJcro7oPxIhTUTDepBis7KWKt9dkCVVejTnt0a85wAFaLiwg11MIIkmD4qATTp/Y/zTeJPj355LZ2+sSQ5Ca8Ak5TwXBPxet2MeUIsuhWfMxRTN0E7DGZEe0GMOkt1oZgMuUh0hrpA0/oB+3NRPIKp+9yfa8bIaRfnj6kQ2g0PmY5l3Jnr5ApG2w/Ifw0mXdyNaHBPlpABkvtNM7L8Hwhj8flOYBpvveKFi77+RaMg9nV4ZLR0pWzMaG63dNFIawVB9KBDtxAXUCBp1GrP90dPJ5k6R5PiHlsyF86J9WHUCKNRrzwiVLTDsCk0j06E+VYIoINOglrv02ieI1i7qJBkjw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(23010399003)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHVuMitEYVpKekxGR2JmK2dXTlhjaWViK0t5bWk4dWJ1RTMxMzVpT0VOOWpT?=
 =?utf-8?B?bmh2a1E0cEN2TEVMZGY3b2pzWk5oT2tLR05ueE9aYjViUFNnZ0tFZnRkRG9z?=
 =?utf-8?B?eHVVa2VJWHljTVRKTFNJckJ4bDRuK3QzTWh5NHpqSFBmVTFyK3QvbTVLYk9i?=
 =?utf-8?B?bkt2OEFLS3hVU2RTMmhvQ3M1ZkZEUFZiaUxjVWowS0ZybjRYQkZFOGkzcVVG?=
 =?utf-8?B?aWtNSWptMGlXNHBXYjZSd3FqYU9YUUlWR3FuWXdGbUpxUnFCS2QxQ2FsL0hH?=
 =?utf-8?B?VDhrNjlzd3lDT1VqdC9PK3FvVDVuS283ZHVQdyt4dk5TYU5kL0MvbWZ1WWRh?=
 =?utf-8?B?VWxCa1VEekNwcFF4VHkwT1lEQlljSGJQUTJIVEFFdlBJcUgrNWdFV21wb3gx?=
 =?utf-8?B?RzE1TGp2Q2RCcVArT0JwSVZobjJ3RTBWY2J6UWVlTjhqYzhCYjJvbkdsWmZv?=
 =?utf-8?B?WjZmODJGTTEyZ1I1N2xOS3lUbnhQdnM1alNtY3ZCWnVOSlhpWW9wWUdXM0Iv?=
 =?utf-8?B?L1NVT21ORTFYQ3ZyK284RGpqSlNkajlzZ2xjb1FvMXZVZmo1SXZhUHNVUTVO?=
 =?utf-8?B?Ky9KQjJMRU55OEF6OU9FR1N4alVDcVpwKzNKemNjYVRtRWRxQjg2ZFhhb3h0?=
 =?utf-8?B?aXpqa1NlNkgxOWRTMHZlVCtvSGVyYWUwNW9rbFYxMXpWT3VwQ3NXbjZvK3I4?=
 =?utf-8?B?ZFBQR2VWdEJRSDQ0dDFXQnlvdUo0TWlaZXdLVTA5ajhwcmRVUDZWNzhpVVZs?=
 =?utf-8?B?aFZHWUNUUDVya3JMUEMvQXhxL1djMGNlV2JpcUkxaDRhL0E5UnVGNktNMTZX?=
 =?utf-8?B?QUl0ZVU4ZjBBODhSeEZsa2FTN1ZBTjNRUWlFWXhKTExqRzl0Mm1heW5ONmlr?=
 =?utf-8?B?eE5xVjZKOTMyQ1BxUHh2akhxMldRL1k1QUhaWTNHTURINXJiRkdQLy9PVVRF?=
 =?utf-8?B?dnlvK3dPbWNPWENnVlhzRWpMWEwySXUrU3ZBeWtXWUpOYk1leWpDRDBSMHhT?=
 =?utf-8?B?NjQrN1FzOWsrSFRoZ2lCN05saWVVYzFjMHVGY1hkTkhPR3VDTVVUYVcyNWlt?=
 =?utf-8?B?b2NTU1BVNHVNcy9HU3NiNU54dmVNVGMxRnVIaFZzRWpldkNKUnJsWVJXTlRR?=
 =?utf-8?B?ZUF1aUk3cjlsZVJiZ003SEdoMmVJeTYxaFpZM0lYT2hNUks5WTJJeDgraENj?=
 =?utf-8?B?MmZRU0RTeTBOakZOZTJMY00wdmN3bjhCYUVmcDg3T0QvTXZINmR5UDB2dGhv?=
 =?utf-8?B?S3VUaTR5VElxSVdvbWsvNUkybkJEaGxUZEVuaGFSTlo1WGh4cTdxRVMvSW5D?=
 =?utf-8?B?a21LNm9Wa3I5TEJTZkw4S3RJN2VFL3JUa0VnSzlpK3Zlc2xSTDduS3dzWEM5?=
 =?utf-8?B?aTFITTVTRkIzYnBLcitQeGF1OUZMRU5sbUhPOU0wNGs3bnlhbVFSME0wK1ht?=
 =?utf-8?B?NzRoUng1UHQyM0d0Q0xJUTFDUHRZTnp4Qktyb2t6RllTQzkzVEZHVTFBTldL?=
 =?utf-8?B?aDEwMThHclErSnM0WTQyUzQzdFBWV2g0ZEVIK0VkdVNBY3BCRWlvL1hDK3p1?=
 =?utf-8?B?Y0YvRTVzTkdMQ3VqT3BUTEJML1RIN1Z2TFp0YjMzMCtxSU01aWpaM1I0aTBC?=
 =?utf-8?B?MHN3VS9tcEN6RGxrSFIxa2xiU0g4L3NQN0wxbWVNdFB0WndNSC9wSVhlRzdV?=
 =?utf-8?B?LzFNNlM5VVE0d0hFSkhwZHBpdGpLcEpCdTlycmRGQysxV2Z2bkdHcGRqTE1Y?=
 =?utf-8?B?aS85YnRwMitMZGN5T0ZFbXFhSGF6bjR1MC8vRFVXWnl6c0JxOU1CTEhhQmQ1?=
 =?utf-8?B?ZktuQWI5S1ppS3V2RUZZWjlCMkdEdkxaU3J1aEZ5em5XS2tSVFZIMU4vT0Zk?=
 =?utf-8?B?cmVhYkluMzR5QUFXU3NXalgwNkFHWFJXOVBsZkJMLzhoay9HcXllWXpvNUlw?=
 =?utf-8?B?b3dzRVluU0FrTHdYZEtQdE5XcGtaZnIwVDF1WVh3bnBsb0FNZVlQTVZjUFcy?=
 =?utf-8?B?Wk9LQkNUREpVR1h3Q1h0UU9WSkl3aFlKL1JKUmUvZXoxU2R6OTh5cFNYS21F?=
 =?utf-8?B?ZWtEdW1rT1ZTY01FK1FXdWVMU29WYWROZGYxQ2QySzJRdCt5Y1VUSlhpbXBT?=
 =?utf-8?B?cnR0RTBLL1EyTlJLTmpYR0Qzdk0xTjJ6cEgzK1FIeFN0VVIzWVNpdmtVdCta?=
 =?utf-8?B?MzRQb2NnYWtaMFpTWktYd2JjdDNxZWlZN3M2OXcyRVhqcjRqYTQ5NFlZM0Nt?=
 =?utf-8?B?YjJBQThsWFVRMldQbXdCQ3NDQk5lbkpRdVdwSlVxMHB2RTRkbHlmbGp5dUJD?=
 =?utf-8?B?TTBRczhBeXdEUkoveWhhSTdZS1ZjOUQ0Zmo0QnRlaFdjb0NZSzhudz09?=
X-Exchange-RoutingPolicyChecked: AbDY2GDcMlZJeqP4USxDDAXj8xuWjL0vRtOhqiY4OU9eE3mzH2OymxQSfWKoTcrgVEYt3MAtT4+DLqb928XcZYqggKfUOxe1hm/AXJ+d+4WEHPhssuXEqXaU8gHUfBbIVNfVg9uuXIIss+XSgJOVuLb3hekuBluGkGTHLS2i2SD2SdSB9vP7MhEZRGa360K7HPSQ1NXXe+CykyzmXxEk6c2uYGrIHhTB5g7uhYoBW+liAZ7qTw/tY40pSUmP4gCxbLqg+hkQbT2SgBZoASoboOu+9/bKk7u8R0fayq638EMODvcidyduGnqX2U6Q2j14C5vPg2qvbNlnO2LK0ZKa1w==
X-MS-Exchange-CrossTenant-Network-Message-Id: f9cc0c97-f771-4689-aa29-08dec9e4fb18
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2026 07:17:23.7558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IFkRBQ0jQ8nzcZwDr2sRsSbPh//RzL3I9Kz7TQs1lTtgQOp16G34ht+6YSFTNWADOWgAqUP3gCr3JlrRORF31Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA7PR11MB9541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781421447; x=1812957447;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EvdbAII5nGjqIhd7CfXcxPVuS2ksLNRYpd1lIo35UVc=;
 b=ZOCrgVFMMN4l25eTmpx+6uSfJhnYVLV86SaoCQTXeG+rfb05EoBkS8v/
 ILyBivbivIoYn3waZX+fI+PoU5pSTkYxyKTWhkyphFE7GLsL4N6ZJwJTb
 4fXIknM5uTjJWFgN8tijfZDAt2ihAJbykBaabrEKRzqNf79tFoVw5X1N/
 8FE5HASUk30feODOJ9bl+6t9P3FvIqvPKjl1pDuDX7HT/soAFlkmgAndX
 H1EOsNIKfav9vBv6CQnx6K0WKlvF5DQfJXxHU/k0PbatXXbSk/CDeC9aJ
 cPo6aSWb/upPO7eeZSScMcEIOliNNo+u7qhY5es6BPYmPxFzDMB/BNQ1E
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZOCrgVFM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/4] igc: replace goto out
 with direct returns in igc_config_fc_after_link_up()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3385668088F

On 08/05/2026 0:47, KhaiWenTan wrote:
> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> The out: label only returns ret_val with no cleanup. The kernel coding
> style guide states: "If there is no cleanup needed then just return
> directly." (Documentation/process/coding-style.rst, section 7).
> 
> This improves readability ahead of a subsequent patch that introduces a
> new goto label in this function.
> 
> No functional change.
> 
> Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_mac.c | 15 +++++++--------
>   1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 142beb9ae557..0a3d3f357505 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -458,15 +458,15 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
>   				       &mii_status_reg);
>   	if (ret_val)
> -		goto out;
> +		return ret_val;
>   	ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS,
>   				       &mii_status_reg);
>   	if (ret_val)
> -		goto out;
> +		return ret_val;
>   
>   	if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
>   		hw_dbg("Copper PHY and Auto Neg has not completed.\n");
> -		goto out;
> +		return ret_val;
>   	}
>   
>   	/* The AutoNeg process has completed, so we now need to
> @@ -478,11 +478,11 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	ret_val = hw->phy.ops.read_reg(hw, PHY_AUTONEG_ADV,
>   				       &mii_nway_adv_reg);
>   	if (ret_val)
> -		goto out;
> +		return ret_val;
>   	ret_val = hw->phy.ops.read_reg(hw, PHY_LP_ABILITY,
>   				       &mii_nway_lp_ability_reg);
>   	if (ret_val)
> -		goto out;
> +		return ret_val;
>   	/* Two bits in the Auto Negotiation Advertisement Register
>   	 * (Address 4) and two bits in the Auto Negotiation Base
>   	 * Page Ability Register (Address 5) determine flow control
> @@ -598,7 +598,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	ret_val = hw->mac.ops.get_speed_and_duplex(hw, &speed, &duplex);
>   	if (ret_val) {
>   		hw_dbg("Error getting link speed and duplex\n");
> -		goto out;
> +		return ret_val;
>   	}
>   
>   	if (duplex == HALF_DUPLEX)
> @@ -610,10 +610,9 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	ret_val = igc_force_mac_fc(hw);
>   	if (ret_val) {
>   		hw_dbg("Error forcing flow control settings\n");
> -		goto out;
> +		return ret_val;
>   	}
>   
> -out:
>   	return ret_val;
>   }
>   
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
