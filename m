Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIXIDDkb4WmmpAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76349412A0E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 138C080EAE;
	Thu, 16 Apr 2026 17:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9jotSbPER4y; Thu, 16 Apr 2026 17:24:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E27A280EB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776360245;
	bh=0TVQCHdtnnS6icHHp8Bv2cTy9twiXcRC+gm4THSAF90=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7mi2umKMvKiCoCHJry9ND9zJ3MWOi4ARGc87gSPKiO13n/jyal6kxF82xBsmTq0lT
	 nWg5423nKLSQCjgx04NPJfcWeF+jE5qam6XidW4oguIQmAsIkHJgRyQ/84XEqBI9+/
	 +l+1DeLpGGhDOEYnpXJU51WwxCGWOpfribbsGYLYPBVCrG+fDysLfi6zUQ5EFokhjV
	 oajUv0OoafdlNJpRWigmMQCHYKjsGmd2o4+xIc7l7HT2r8COS9EUxD9tIBWk1HiDBB
	 yzfOiahTQ3FMCKagfhXIkndUHfYfiX3ojT3zntv+9Zm+5PlTMUx7Og0mZPdLkvnNwS
	 LmNvrUG/bcPiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E27A280EB1;
	Thu, 16 Apr 2026 17:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 740F22CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65E9C409D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCligHmol8pC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 17:24:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5088D409CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5088D409CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5088D409CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:24:03 +0000 (UTC)
X-CSE-ConnectionGUID: qxk5kNCJTaS3lMgFSUXppQ==
X-CSE-MsgGUID: 3GgmJ21vSGWYZWII2ae0Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77486178"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77486178"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:24:03 -0700
X-CSE-ConnectionGUID: 2vWb9AF9RCep48yfWp/Dcg==
X-CSE-MsgGUID: Na+EYRqWStaXVwP4SWPIBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235169400"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:24:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:24:02 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 10:24:02 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 10:24:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EZyL4Xyh3UGM7tbG86MZrBFQBG/H00EQ0I/kdwFC/wClztP1aIbfoUVu/0eTq3CRdNmn7Alv1DzR9iYE/pdkOXHy47m+New/TVzESTDV3XWhDVnjkNyhpzV0jc/eoSUgOAt7gvGmKgyxu/ZO3ypzBgOS6UIVj3w1hXDLxTTaKFEW42XYBRA0I8HoSiHHJH9NclZFp0O0YZSnSrCNhqBTfRy7g/3VQ7qQNWpWMhJHZhWoE4G4dZ4yS+nldXWZhwggvfvpbz17BxQkaxtBfr4KlSS2Tg9QY2WJUKbFTd1FXtba2wN3TNQgMsdkVfCdMYTb8AoESdfQ3He3XtE9ZJ9rhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0TVQCHdtnnS6icHHp8Bv2cTy9twiXcRC+gm4THSAF90=;
 b=kcl+WPiioF8efbOoV4bpjn0+/565js7Lu9dYGLW/VFArUCDoj1yGFGJlXIwpAvQYa55BHHeMx7b9KOH1wlRzwhy3XjNHjjzMLlRW5gnbHUUJDERI9zXsqRQRq+FdGKfIA8ZpgmfmmdgLa8BKBZsVtgjmRcJsGEhBJpmT/siNThxertb7p6PFJbQRpdghg8Vt+vWetzyjXLj0ON96B3eRm3KI0PEd1OJSyWXTjsioOvEGmfMQrw/Ndd1S4cVFP1KDvX5WwbhbSE+3a/ahhLIX4+Zk+DFCckrL0u7BuBi/GoYM/xjAB7Mm4mBGerX2gCjZbszTgMZ2Ap0Xz1dxRlV4/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS4PPF240F42FB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 16 Apr
 2026 17:23:57 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Thu, 16 Apr 2026
 17:23:57 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Miskell, Timothy" <timothy.miskell@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/4] ice: fix ready bitmap
 check for non-E822 devices
Thread-Index: AQHcx4g9bYiT75VrJUWYzalM/2Z1zbXh+vUg
Date: Thu, 16 Apr 2026 17:23:57 +0000
Message-ID: <PH0PR11MB752228B609478AEE6F003225A0232@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260408-jk-even-more-e825c-fixes-v1-0-b959da91a81f@intel.com>
 <20260408-jk-even-more-e825c-fixes-v1-3-b959da91a81f@intel.com>
In-Reply-To: <20260408-jk-even-more-e825c-fixes-v1-3-b959da91a81f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS4PPF240F42FB7:EE_
x-ms-office365-filtering-correlation-id: e5894918-d5b3-4693-79d4-08de9bdcf120
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: JE9MkcpFGolTY9X656cE8GTxXrim9z4kO/uibhu8vEBNQgFBD9mu0j0nFmuQmJrMEAx2iWh85+0PJ6cnQfxVwXi/vO+ei6/5DCp4f4twHgTI7wUOnjpgMY/Z++7iaCB8LYgInDtcQdswzdRrRrJpo0lg9FNCMwd4Zn6KMQFZc/wks1SsBe9zbN3P16qClPnJi6zYpkPTzqQloHC9zm/8J6qRSc95hA00PKd4czWKWMMLdDmvlDTC75sh0IrnjrMx4eSO9tiKlt/4wmZXoQrctMwkF8/yQiDPR4fna7na1HNzbi1EujUeB3q6Hyt3zHkUHcdgKOqyhIRXCsFb7O6406AV1sq6BJ+wsMpGPt75qrzpNjTTMz7ba5XE+sUgmWpW77pjUGAfjW2iWn3YKc3T+nPuan2cecl4G8PbbNZDLmW8uzKKgrwwTfsdZg+nAHByb2KPShPwBDiNt9OJH0BVVa/wXqhjFwrn9jI7wC56NOX463lH+4bIgtTksHrZMkzN6utw8oe7P9uphJR43tlyj//RVWuse+MsD+IOCAhIJ2r13nBj3X8waYThmTo36SusDHAbKIQ6roe99aqYnYOIOE8We1gXwvYCun/9aTej3ErxEjPV8IpDnkmjjPcRcb0aoTY/6Yit15iVyv5OHjn/DpSU6edI1YmabGOUemsHyTKNZhHuPavJQYO6z+7kllHOF6+5WyYm3XFyKoejBf3NBaNr6clc1Daifgu93Xi2++OMRelvbHVUskfQ/nqWGySPgu7QlisNdOqrS4TSN32R++CQSwUQc91Wekr9FUP1KiU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVhQM0ZuaGl5eWRoV3JadlhYMnRQQm5jVzFBZHoreDZpSkhMVWN2clIyV2ha?=
 =?utf-8?B?VnRkUkFacjJZcy92N29zSHdZZnVEbnFoY1ZZOURNU0dnV0ViaFJRVStGZ0Rv?=
 =?utf-8?B?UzlYbloyYzZDYW1jUU0wUVhDV1pkWWRQZ1FzUWtDZnZhM05jNVJ3ZW5ocXpB?=
 =?utf-8?B?Yk8xWVlCazZhR1R6OFZTNXFCMzlRVXJXMC85d2RiOFB3Wi9lckh2T0xvRzJC?=
 =?utf-8?B?Nk5PMXVqUGhJYTRLN3Y1MkttZUdLVjFLRXVwaTQ1VUs3aVNFdk9UYTZIM0tZ?=
 =?utf-8?B?QmdSQWVYRjlibTlpdXpJTndsRklyeitiVENuUUM4bzBHNC9OeExPNlBydndX?=
 =?utf-8?B?SUhnK2RBblRyeGZiUzBnS2FXMm1HQXFQNlZ1LzRVN1BxL2dXbVRmZ285YnJ6?=
 =?utf-8?B?VCtZZWJoaXJJYmF3SDlZK1htSDlRRnJ3U25kQm5rNWRCbi9YRW1jTXlmSnFE?=
 =?utf-8?B?ZEtzZGhqSkp5aEdOa3NnTlpLSCtEdVZpQWFSTzQvYWFrYTgyUTRuMVUyQlVh?=
 =?utf-8?B?T3Zla0pGaEVMek9JbzlIU0V1aVhRQkRqYWxuWGMwUW81ODZqN1l1RGRHRGNW?=
 =?utf-8?B?Ujd3anZJQU03T3UrSUlSdTFWeUlVeUVwRnJvdi9JdWQzdFYxdWxvRE9kQnhH?=
 =?utf-8?B?Z241YjJ2T0tPNUdqYVQzQTYxL3dKT0hkZVREQ01tdnNaTUZDZjJnalVqL1d4?=
 =?utf-8?B?eXBGbWhkVCtJdU5PV1JGQjhwL21RTHN3UEFoNU5sakVHUVhPVjRBQlNYT3JY?=
 =?utf-8?B?S3ZRUGI0Mkc2Wjg4UGdSYXJZRG1XYXp0MHBUMGxTaXNkYUFGc3hsMEZSRGN6?=
 =?utf-8?B?OTJBV0JVRHpuOElGenp4cnNqdzgwbUllY1dSaEdNMDEzNklGOG96aG1JVlk0?=
 =?utf-8?B?UnpJWVZEWlpXdjFRRzhrMkg3cnBNZFd3aFhqNEo1dkN2T1ZaM3BpWDRxdnFo?=
 =?utf-8?B?NHBSZmNvRkk1U2RBdGJmMHI3WXI5SHJiTS9PVFVXUDNBdUVnTXJmVWJrUDZI?=
 =?utf-8?B?NElGSGVuT0dCcnJGai9DK050UmNMRkg5d1ZyNmlIZzRKR1JMZWZBaW80UnI3?=
 =?utf-8?B?SjRwQi9CbDFKYVVRWmcxK1dyT3Z2T0FQZlNBMUpxeVRzZXc5ZFNVS3hmMmMr?=
 =?utf-8?B?RnZpb0tGWkpCVU5GQXFkMnlZRmg4Y3pDOVhmK0hhb2diTUt1R2lSWUg5RWQv?=
 =?utf-8?B?NzBqRTNnMkRzR2RmNEdPOHV5bCtCMTdvTUFnTjJ3dkNNNVNPSmU4MVdHQzFh?=
 =?utf-8?B?ZGc5a0xETkpKcUpzME1keERFYzJRM0hqUEJ1T2lXVEFlTWhQWFVXekN3MEIw?=
 =?utf-8?B?RUlOcm1oU2kvSVJBemFoNGdvM2hWUnp1ZEZOajA3VEszN2VWazduOUdnckRm?=
 =?utf-8?B?eWNNYWNUMzBQUHVTNHFlODhFeklhMGJsRmJZZzRPNjJUUEpjTVUvVHdMZzFV?=
 =?utf-8?B?dFQvRDFiNWtoOXk0R0F4UGdna01ad0pGa0R3NUZ6NlI1eEZhTUowVlJUeFRm?=
 =?utf-8?B?cW02aFBqTm1UbHZVN0hHcEl4NEdzMDFUQ3huU0dWbitWMHBOWWNBTVQranh1?=
 =?utf-8?B?K3ZwZ3piMXZzV2tEYXk2T3VrSlAyQ2xDNXZGMUxsaWdkZ1I3d21DQjd5ZGZU?=
 =?utf-8?B?TldrdXJJN3RrbU1vTHR6K1pMOWVNckdrWm41ckl0VElHY2RVVk1TZTRlV3Nz?=
 =?utf-8?B?SHQ4T3pkb2tscnMwRUVBWllyTXVXUnN2WDk5L1FnUDV5aXBQOG1DQnQvQURP?=
 =?utf-8?B?dEIyT05adnJZd3VaZGlsUUhEUTRNWDFFMTJNV0s0b01YTTB4aCs5VHQydGdL?=
 =?utf-8?B?MDgyS1B0d0VwRGtEUjRrcHlHNlhjT3lNeXAyU2VrZFYzZkQ0NTBla1ZQa1NK?=
 =?utf-8?B?TG10UUxHcGI4bktRNlIyY1Evdk40dmdZVVFJREIrZXlUd0diWVlTTkt1aWFF?=
 =?utf-8?B?aDNBSENMNTY0Vy9lS3E3YWlLOGxQU1hvTXBhVXYyS2Fzd0Fyc3RZNmNrR2Jk?=
 =?utf-8?B?VlJiN0o0cklGSjhWMDR4SkR1VEpQTVlmR1Erdms5SzNRbVVTM1ZyVzd1RkRv?=
 =?utf-8?B?aEZEZVU1YjN3Vi9LV0J0WUIzeVllTTNVUXFhSkdsU0VYSHZxbTIvb3JKM09y?=
 =?utf-8?B?UmNSejJvcmdUZlJjWUpXeDVib0xJWnJjczhuRGVsT1czR0k0RjlnVDVoN0gx?=
 =?utf-8?B?R0Q4NlhOcWIvZklhTHRNSlBJSkp4UHBpczl1dTJYanh5RVpBdm0yM1lmZHM5?=
 =?utf-8?B?eTBZeGwvb3lNS2VpZ0w2MmpBYzNRQTBodUVic1puMm8vZ2RZQ0s4ZStPbHUx?=
 =?utf-8?B?bVZnMGtZTFFkYTQ1SGg4dU10Z1ovVWkwTG53MVFUTmxLWnFjNEtnNDlzMzEy?=
 =?utf-8?Q?qRRskN4B2gxs/1zg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vmtjKEelydzKa4ARo18yTLNw4cDUUWTzxsCR1jNj27sSoeqesfFaLbelxlQlrxQMn4Egmpcx/KEqdA+lsj2TcPmmNkZU6nBYBl2FswQtqyQcGGg0yP58V/L+nKmE+57FMIJDnX0tjVGDwOvNYKHK6ECJvr8lm/rA/Fw05SESbkQLpxrNUKd4DixXy/x2f8AzDmJibFnlJfWE5nk8oxQkLyy0YjlezKC9icS7oa2seGswDWA9dE+lGVxBX9nKFBJn5UjKTKPHNPGH2jYKXd5Ky4UstoPnIz02B3XAazieWErAIPAOpvYWD/zUTO6tXC9fT7y50wc8IIgVYVx43o0Wnw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5894918-d5b3-4693-79d4-08de9bdcf120
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 17:23:57.3237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KwynyuxlifR+uRpAnZjACLVnGwANRD+fstqKkBmzQb9huOIY2NiJd9J64lEQLgbubaROjpQc/Zyx1I51J3jdkjB8JCd9KeR5MV09U2d7YpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF240F42FB7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776360243; x=1807896243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0TVQCHdtnnS6icHHp8Bv2cTy9twiXcRC+gm4THSAF90=;
 b=Qq8yNCvemtKuVYQ5J0eBD6jst9w3ypG15MC29LSfNXODbVa0cyAN3y6W
 Ff3LCq/y6ce9jLzqiGzaTHj/BIC0JHolxqKM9MawfktT6tImqWexNBENR
 6bMgH3lFdjSV+uD1682irZfJhDVVixGdKAK3FnNBBpDZHlRA9WuoCWyUX
 ge/ZkinxJByBYOioeB4oPHvOACk35IfMaD5xPus+bW+BytKiT0+LeV875
 grTf9W2vd/Qilr/jjTl1UT9iTdLNd1IGYG2IPJ2DreS6JIf05aoR93WxR
 f6bUKBwaryM+34Ia53AvfvXtDyV096L8be6Vz+1b3eg0z8AkSz8n/9auB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qq8yNCve
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/4] ice: fix ready bitmap
 check for non-E822 devices
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,PH0PR11MB7522.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 76349412A0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCA4LCAyMDI2IDExOjQ3IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZw0KPiBDYzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50
ZWwuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBNaXNr
ZWxsLCBUaW1vdGh5IDx0aW1vdGh5Lm1pc2tlbGxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCAzLzRdIGljZTogZml4IHJlYWR5IGJpdG1hcCBj
aGVjayBmb3Igbm9uLUU4MjIgZGV2aWNlcw0KPg0KPiBUaGUgRTgwMCBoYXJkd2FyZSAoYXBhcnQg
ZnJvbSBFODEwKSBoYXMgYSByZWFkeSBiaXRtYXAgZm9yIHRoZSBQSFkNCj4gaW5kaWNhdGluZyB3
aGljaCB0aW1lc3RhbXAgc2xvdHMgY3VycmVudGx5IGhhdmUgYW4gb3V0c3RhbmRpbmcgdGltZXN0
YW1wDQo+IHdhaXRpbmcgdG8gYmUgcmVhZCBieSBzb2Z0d2FyZS4NCj4NCj4gVGhpcyBiaXRtYXAg
aXMgY2hlY2tlZCBpbiBtdWx0aXBsZSBwbGFjZXMgdXNpbmcgdGhlDQo+IGljZV9nZXRfcGh5X3R4
X3RzdGFtcF9yZWFkeSgpOg0KPg0KPiAgKiBpY2VfcHRwX3Byb2Nlc3NfdHhfdHN0YW1wKCkgY2Fs
bHMgaXQgdG8gZGV0ZXJtaW5lIHdoaWNoIHRpbWVzdGFtcHMgdG8NCj4gICAgYXR0ZW1wdCByZWFk
aW5nIGZyb20gdGhlIFBIWQ0KPiAgKiBpY2VfcHRwX3R4X3RzdGFtcHNfcGVuZGluZygpIGNhbGxz
IGl0IGluIGEgbG9vcCBhdCB0aGUgZW5kIG9mIHRoZQ0KPiAgICBtaXNjZWxsYW5lb3VzIElSUSB0
byBjaGVjayBpZiBuZXcgdGltZXN0YW1wcyBjYW1lIGluIHdoaWxlIHRoZSBpbnRlcnJ1cHQNCj4g
ICAgaGFuZGxlciB3YXMgZXhlY3V0aW5nLg0KPiAgKiBpY2VfcHRwX21heWJlX3RyaWdnZXJfdHhf
aW50ZXJydXB0KCkgY2FsbHMgaXQgaW4gdGhlIGF1eGlsaWFyeSB3b3JrIHRhc2sNCj4gICAgdG8g
dHJpZ2dlciBhIHNvZnR3YXJlIGludGVycnVwdCBpbiB0aGUgZXZlbnQgdGhhdCB0aGUgaGFyZHdh
cmUgbG9naWMNCj4gICAgZ2V0cyBzdHVjay4NCj4NCj4gRm9yIEU4MlggZGV2aWNlcywgbXVsdGlw
bGUgUEhZcyBzaGFyZSB0aGUgc2FtZSBibG9jaywgYW5kIHRoZSBwYXJhbWV0ZXINCj4gcGFzc2Vk
IHRvIHRoZSByZWFkeSBiaXRtYXAgaXMgYSBibG9jayBudW1iZXIgYXNzb2NpYXRlZCB3aXRoIHRo
ZSBnaXZlbg0KPiBwb3J0LiBGb3IgRTgyNS1DIGRldmljZXMsIHRoZSBQSFlzIGhhdmUgdGhlaXIg
b3duIGluZGVwZW5kZW50IGJsb2NrcyBhbmQgZG8NCj4gbm90IHNoYXJlLCBzbyB0aGUgcGFyYW1l
dGVyIHBhc3NlZCBuZWVkcyB0byBiZSB0aGUgcG9ydCBudW1iZXIuIEZvciBFODEwDQo+IGRldmlj
ZXMsIHRoZSBpY2VfZ2V0X3BoeV90eF90c3RhbXBfcmVhZHkoKSBhbHdheXMgcmV0dXJucyBhbGwg
MXMgcmVnYXJkbGVzcw0KPiBvZiB3aGF0IHBvcnQsIHNpbmNlIHRoaXMgaGFyZHdhcmUgZG9lcyBu
b3QgaGF2ZSBhIHJlYWR5IGJpdG1hcC4gRmluYWxseSwNCj4gZm9yIEU4MzAgZGV2aWNlcywgZWFj
aCBQRiBoYXMgaXRzIG93biByZWFkeSBiaXRtYXAgYWNjZXNzaWJsZSB2aWEgcmVnaXN0ZXIsDQo+
IGFuZCB0aGUgYmxvY2sgcGFyYW1ldGVyIGlzIHVudXNlZC4NCj4NCj4gVGhlIGZpcnN0IGNhbGwg
Y29ycmVjdGx5IHVzZXMgdGhlIFR4IHRpbWVzdGFtcCB0cmFja2VyIGJsb2NrIHBhcmFtZXRlciB0
bw0KPiBjaGVjayB0aGUgYXBwcm9wcmlhdGUgdGltZXN0YW1wIGJsb2NrLiBUaGlzIHdvcmtzIGJl
Y2F1c2UgdGhlIHRyYWNrZXIgaXMNCj4gc2V0dXAgY29ycmVjdGx5IGZvciBlYWNoIHRpbWVzdGFt
cCBkZXZpY2UgdHlwZS4NCj4NCj4gVGhlIHNlY29uZCB0d28gY2FsbGVycyBiZWhhdmUgaW5jb3Jy
ZWN0bHkgZm9yIGFsbCBkZXZpY2UgdHlwZXMgb3RoZXIgdGhhbg0KPiB0aGUgb2xkZXIgRTgyMiBk
ZXZpY2VzLiBUaGV5IGJvdGggaXRlcmF0ZSBpbiBhIGxvb3AgdXNpbmcNCj4gSUNFX0dFVF9RVUFE
X05VTSgpIHdoaWNoIGlzIGEgbWFjcm8gb25seSB1c2VkIGJ5IEU4MjIgZGV2aWNlcy4gVGhpcyBs
b2dpYw0KPiBpcyBpbmNvcnJlY3QgZm9yIGRldmljZXMgb3RoZXIgdGhhbiB0aGUgRTgyMiBkZXZp
Y2VzLg0KPg0KPiBGb3IgRTgxMCB0aGUgY2FsbHMgd291bGQgYWx3YXlzIHJldHVybiB0cnVlLCBj
YXVzaW5nIEU4MTAgZGV2aWNlcyB0byBhbHdheXMNCj4gYXR0ZW1wdCB0byB0cmlnZ2VyIGEgc29m
dHdhcmUgaW50ZXJydXB0IGV2ZW4gd2hlbiB0aGV5IGhhdmUgbm8gcmVhc29uIHRvLg0KPiBGb3Ig
RTgzMCwgdGhpcyByZXN1bHRzIGluIGR1cGxpY2F0ZSB3b3JrIGFzIHRoZSByZWFkeSBiaXRtYXAg
aXMgY2hlY2tlZA0KPiBvbmNlIHBlciBudW1iZXIgb2YgcXVhZHMuIEZpbmFsbHksIGZvciBFODI1
LUMsIHRoaXMgcmVzdWx0cyBpbiB0aGUgcGVuZGluZw0KPiBjaGVja3MgZmFpbGluZyB0byBkZXRl
Y3QgdGltZXN0YW1wcyBvbiBwb3J0cyBvdGhlciB0aGFuIHRoZSBmaXJzdCB0d28uDQo+DQo+IEZp
eCB0aGlzIGJ5IGludHJvZHVjaW5nIGEgbmV3IGhhcmR3YXJlIEFQSSBmdW5jdGlvbiB0byBpY2Vf
cHRwX2h3LmMsDQo+IGljZV9jaGVja19waHlfdHhfdHN0YW1wX3JlYWR5KCkuIFRoaXMgZnVuY3Rp
b24gd2lsbCBjaGVjayBpZiBhbnkgdGltZXN0YW1wcw0KPiBhcmUgYXZhaWxhYmxlIGFuZCByZXR1
cm5zIGEgcG9zaXRpdmUgdmFsdWUgaWYgYW55IHRpbWVzdGFtcHMgYXJlIHBlbmRpbmcuDQo+IEZv
ciBFODEwLCB0aGUgZnVuY3Rpb24gYWx3YXlzIHJldHVybnMgZmFsc2UsIHNvIHRoYXQgdGhlIHJl
LXRyaWdnZXIgY2hlY2tzDQo+IG5ldmVyIGhhcHBlbi4gRm9yIEU4MzAsIGNoZWNrIHRoZSByZWFk
eSBiaXRtYXAganVzdCBvbmNlLiBGb3IgRTgyeA0KPiBoYXJkd2FyZSwgY2hlY2sgZWFjaCBxdWFk
LiBGaW5hbGx5LCBmb3IgRTgyNS1DLCBjaGVjayBldmVyeSBwb3J0Lg0KPg0KPiBUaGUgaW50ZXJm
YWNlIGZ1bmN0aW9uIHJldHVybnMgYW4gaW50ZWdlciB0byBlbmFibGUgcmVwb3J0aW5nIG9mIGVy
cm9yIGNvZGUNCj4gaWYgdGhlIGRyaXZlciBpcyB1bmFibGUgcmVhZCB0aGUgcmVhZHkgYml0bWFw
LiBUaGlzIGVuYWJsZXMgY2FsbGVycyB0bw0KPiBoYW5kbGUgdGhpcyBjYXNlIHByb3Blcmx5LiBU
aGUgcHJldmlvdXMgaW1wbGVtZW50YXRpb24gYXNzdW1lZCB0aGF0DQo+IHRpbWVzdGFtcHMgYXJl
IGF2YWlsYWJsZSBpZiB0aGV5IGZhaWxlZCB0byByZWFkIHRoZSBiaXRtYXAuIFRoaXMgaXMNCj4g
cHJvYmxlbWF0aWMgYXMgaXQgY291bGQgbGVhZCB0byBjb250aW51b3VzIHNvZnR3YXJlIElSUSB0
cmlnZ2VyaW5nIGlmIHRoZQ0KPiBQSFkgdGltZXN0YW1wIHJlZ2lzdGVycyBzb21laG93IGJlY29t
ZSBpbmFjY2Vzc2libGUuDQo+DQo+IFRoaXMgY2hhbmdlIGlzIGVzcGVjaWFsbHkgaW1wb3J0YW50
IGZvciBFODI1LUMgZGV2aWNlcywgYXMgdGhlIG1pc3NpbmcNCj4gY2hlY2tzIGNvdWxkIGxlYXZl
IGEgd2luZG93IG9wZW4gd2hlcmUgYSBuZXcgdGltZXN0YW1wIGNvdWxkIGFycml2ZSB3aGlsZQ0K
PiB0aGUgZXhpc3RpbmcgdGltZXN0YW1wcyBhcmVuJ3QgY29tcGxldGVkLiBBcyBhIHJlc3VsdCwg
dGhlIGhhcmR3YXJlDQo+IHRocmVzaG9sZCBsb2dpYyB3b3VsZCBub3QgdHJpZ2dlciBhIG5ldyBp
bnRlcnJ1cHQuIFdpdGhvdXQgdGhlIGNoZWNrLCB0aGUNCj4gdGltZXN0YW1wIGlzIGxlZnQgdW5o
YW5kbGVkLCBhbmQgbmV3IHRpbWVzdGFtcHMgd2lsbCBub3QgY2F1c2UgYW4gaW50ZXJydXB0DQo+
IGFnYWluIHVudGlsIHRoZSB0aW1lc3RhbXAgaXMgaGFuZGxlZC4gU2luY2UgYm90aCB0aGUgaW50
ZXJydXB0IGNoZWNrIGFuZA0KPiB0aGUgYmFja3VwIGNoZWNrIGluIHRoZSBhdXhpbGlhcnkgdGFz
ayBkbyBub3QgZnVuY3Rpb24gcHJvcGVybHksIHRoZSBkZXZpY2UNCj4gbWF5IGhhdmUgVHggdGlt
ZXN0YW1wcyBwZXJtYW5lbnRseSBzdHVjayBmYWlsaW5nIG9uIGEgZ2l2ZW4gcG9ydC4NCj4NCj4g
VGhlIGZhdWx0eSBjaGVja3Mgb3JpZ2luYXRlIGZyb20gY29tbWl0IGQ5MzhhOGNjYTg4YSAoImlj
ZTogQXV4YnVzIGRldmljZXMNCj4gJiBkcml2ZXIgZm9yIEU4MjIgVFMiKSBhbmQgY29tbWl0IDcx
MmU4NzYzNzFmOCAoImljZTogcGVyaW9kaWNhbGx5IGtpY2sgVHgNCj4gdGltZXN0YW1wIGludGVy
cnVwdCIpLCBob3dldmVyIGF0IHRoZSB0aW1lIG9mIHRoZSBvcmlnaW5hbCBjb2RpbmcsIGJvdGgN
Cj4gZnVuY3Rpb25zIG9ubHkgb3BlcmF0ZWQgb24gRTgyMiBoYXJkd2FyZS4gVGhpcyBpcyBubyBs
b25nZXIgdGhlIGNhc2UsIGFuZA0KPiBoYXNuJ3QgYmVlbiBzaW5jZSB0aGUgaW50cm9kdWN0aW9u
IG9mIHRoZSBFVEg1NkcgUEhZIG1vZGVsIGluIGNvbW1pdA0KPiA3Y2FiNDRmMWMzNWYgKCJpY2U6
IEludHJvZHVjZSBFVEg1NkcgUEhZIG1vZGVsIGZvciBFODI1QyBwcm9kdWN0cyIpDQo+DQo+IEZp
eGVzOiA3Y2FiNDRmMWMzNWYgKCJpY2U6IEludHJvZHVjZSBFVEg1NkcgUEhZIG1vZGVsIGZvciBF
ODI1QyBwcm9kdWN0cyIpDQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oIHwgICAxICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHRwLmMgICAgfCAgNDAgKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDExNyArKysrKysrKysrKysrKysrKysr
KysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEzMiBpbnNlcnRpb25zKCspLCAyNiBkZWxl
dGlvbnMoLSkNCg0KVGVzdGVkLWJ5OiBTdW5pdGhhIE1la2FsYSA8c3VuaXRoYXguZC5tZWthbGFA
aW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
