Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPLwNP16ymlT9QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:30:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A9A35BFE9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAFC640BBE;
	Mon, 30 Mar 2026 13:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KEKvVkU_WuH; Mon, 30 Mar 2026 13:30:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC64C40AB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774877434;
	bh=m5DBEwais6tvoBm+A6iKwEYocdn8W2o8BbN9YynxgIs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1ky8hfuIeWuh7l/AdeG5+DcgM622FI85I/+7lg1jxTxdMpVmBaYkZTawAIjAZQD/g
	 Cbn/tXCijwUHZvBsw+BcHEyUF8j1A3M5+2CP7uaie3eQM0uvGwDJ7EbYKm7el/ZUcR
	 ciUXKapDFQkKrzICso5ciUv2DyEEpxByowKIqZtLOi9SIDgbyXmdfwolMldFORcQLB
	 78+Xn+WO13gFvzZwRU+bNPlGVPXxuiSWapFbAqTmSq8PLRXszg7U25BjLQiuwmQrNU
	 OamQIBPErKwNWRKBjGRXkEOzjI5aNXFUTKcJ32qEu690CDijjfAszA34/K/7AVqqff
	 bJ///ka0G4ZMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC64C40AB2;
	Mon, 30 Mar 2026 13:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EC5132C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDCC960B4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tISGj4PrHuvu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 13:30:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 030E160B20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 030E160B20
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 030E160B20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:30:32 +0000 (UTC)
X-CSE-ConnectionGUID: VhwyJCUZScChVWw6dM+/4w==
X-CSE-MsgGUID: 6vfvOfPMSOy1UJ2bAPv6Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="87339196"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="87339196"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:30:33 -0700
X-CSE-ConnectionGUID: xuLiuSpUTa+YDh6RIbTO2A==
X-CSE-MsgGUID: KnjCvPa0TFa22oWZGMOrZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="219413877"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:30:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:30:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 06:30:30 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:30:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YrlesxO82L20WyHkv8SI0d1LCW6mVuWbnHYH5n0KA/ttH9hlM102Am5tt4eukhGn5lo7M2upt7FtFHhnLXHrcnYHLXzWqagPX6GavyTEyRVu9afU+Cbl8GFLPEf1jBbmcuaLbATMhTk/86Y9pBn9LpQPX73xyfrg422K/pd2O7w+SJ+ybZkm7Bt5h14jNe49FLS/rAkuRof+DikO+RioYTZm089VKu2k1cHnOjPGYv90lhIEdN+GUbVLuJDyPHD2PMrTKMqYTwtTvUBE0MhRwBnyDEnhwoe+4nlhIarLN8r5gvqfG1Pty9OZ3HZpDYRvmn1e0UoRb3A4N1pjq0C4dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5DBEwais6tvoBm+A6iKwEYocdn8W2o8BbN9YynxgIs=;
 b=YoMHArr5KUFy04Un/pWHanJYE3We3MEaAdWu/KKVch8gOXWRabNnafplcOxkDcNduKs2+/uzZ1KcKfGHYS6ay/bFPnZv0ng1keS7+0a/UX9MgKHhJZWHjrKUlZPdSjfpdJeyZiGvkvR71phffzRZVTOLtiSLSZi329J/l5iFS/z3Y4vdjNZjRK6BYws318frjKn/h8B32Rgm0AB9JYgmbntQlw4oPX5FIY+YA3ALtg/P7jBWZK6i4vN4BM6FRd6d99SbpKzKytJgJBpGgfm3z+qJPeaY63sBaaTCbfxUwkMVCPxDTLbDpTUunV+29RJOJbYDAVw1HFhfV381XTGSig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SJ0PR11MB8269.namprd11.prod.outlook.com (2603:10b6:a03:478::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 13:30:18 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9769.006; Mon, 30 Mar 2026
 13:30:18 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
Thread-Index: AQHcvT5NHGuGxaboIk2wyZqv87SPJ7XCRDGAgATTUVA=
Date: Mon, 30 Mar 2026 13:30:18 +0000
Message-ID: <IA1PR11MB621921B0C0C842A8FB11F2B39252A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-9-grzegorz.nitka@intel.com>
 <IA3PR11MB898696725A05CA82FA6ED1FEE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898696725A05CA82FA6ED1FEE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SJ0PR11MB8269:EE_
x-ms-office365-filtering-correlation-id: 99466a01-ad43-4b62-a0bb-08de8e607c53
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: PJ74gpAjS/O1MWeS8e4iV3JSuAvDnsGOJHkxUU+tTg6yC1Bqw8WqxsFq2xmxmgzNuB3f6DC376nzkmY9IhQipYd6hKaWgOhNK9DJM3kLnvW5Pmq2k5DuDUXh4xnedf+sdVM+FEhdny6K2FvR9kP+jvUbmqFNjUjXEYIUCRoRMrnBoz7ut79DeOPOYqmSnkPkvMdVsjLCKywUC6Igvje3AlrNnLNNBFhE57FChuYqun6MSQzfMWZqGuy8vEawGq9IDTAMgTf+R8qLsE3CleVoeozuhX60JFqIOAsc/VX5H+H9j+qGGgqN8Ae1lnaBr5ibjbs9F5fidayiixCOe3tZbWUl6N0mAUu70aGDPxJ/MbDuMDhlrePoNZdSKmrSUPMlyBIIC2Llg/LuLxelIfMb5OJw0sTICtaGvK33DU7JMwWotQhl/Hlyo0tVpJ+wbY6+9Gl5XfUAo/Swa0FgwYTOlfeL9/vpVNTtyZMeyaIGnGxJ+fJGZD2L2xJ8fNvBKqV23xML5LL3sece8x2MHkyR7zZDssR9KPRsoFHHiC9J1U1hWmgJ4Zu7mtalDCMkJL5M1JV8XSK8wByM46qmwValklHxhQw6Bu3h83b9AmlHWRVdzAbSS7ROBmZVKDjN05+mQmVGKHW2CowlZVDGHpMBBFxrXSzYewA9/59SaPiBgskKFneg8WHdS7RdQn4GgHwRPliPnEUascYKgy3dqNOBEyQjNgGDc6TO3t7nYmv4JCQdWoVbBVHXPzC+8NVxQAyb/gYWo2NufBsOtN/RTnlZT6UiUTLwUFPC/mYxIyUlMOg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnN0SXh2TzdmRTVWRWprMnh3d0V4V2dTanNKZ2VpNWEvM01qUEJJTGMreUU4?=
 =?utf-8?B?MXAySnVLbWxkcUdQQW9aMDJUQTFoeW42cXRIelY1dnVNc1JqWFh4ZkhsTEhZ?=
 =?utf-8?B?MTd2QjJBclc5ZkxHbDJsaVIybzBYQW5zUTFqSmlGdzBOeFk5dVM3ekNQbkpm?=
 =?utf-8?B?bjE0YllTaTcyNkh2OURpR3MrRENWNFM1WjRGUDl5QUcxSzdmS25EWXZzZnZw?=
 =?utf-8?B?QmtXZUwwMHNmbTRBb2Zkai9FMjEzYllHRDJrM0RYMTlvbzVuTUlHRmErN0Fj?=
 =?utf-8?B?WWVxNytDaE53bjdsc09JdXpGb1N3UHFjTEhBd3lNeXI0cENNWlVZYk1iU2F0?=
 =?utf-8?B?bWlnZHpVMFVKQ0lUdUNyTTFocUlJazBSVjB6VHBFWG5uT0FNODVCV2E0L3Mr?=
 =?utf-8?B?d2o1b3loY2JsU1JXNnZZMlNiTEk5dmlmM3picTZScERGdzh5Zk4rQW43R2Nn?=
 =?utf-8?B?SWVLWXBmZ0Y1ZTVlQ00yanZLT3l0ZGh5YUJCUGE4TTBsUTVPdThzb3orMnIy?=
 =?utf-8?B?VGFaNVh0Y2Roa3J3RFpLYzEyK2s5S082M3ljaXlNWUd2R3Y4VmNxdlBoSTUw?=
 =?utf-8?B?SytrREs3UVhqcm9ycCtUdlJQVWNpNlV5RS9WMmJuTDlwZmx3anJseGZCSllV?=
 =?utf-8?B?MTVwOEZSWDdwbUlNdlZseUduOU1ENnBRRGZHUmp3ek1tUnhVYVlvdlVqUkF3?=
 =?utf-8?B?ZXdXTXdJVDRVSTFSRWROSGVIV2hhWmtMNXJxWk00U2dXZkxBQ0k5YVVGL1V3?=
 =?utf-8?B?d2dEaUlQWGttRnFiVUJxOUk4bDd4K001eDJyTzNDOGhpTmtSMG4wZzZIRnNM?=
 =?utf-8?B?RTB4eGVKTDRDck04Yzh0dDZxUXVtb3p1aDNKbVdDUjlTVEhpSXBlZG5oaHRF?=
 =?utf-8?B?Y3BJM0VGUmlQazh2dWhSRDFpN1g3UTVIZTZnOWxZVUlpMkNsMTNNbmZnb3dM?=
 =?utf-8?B?LzE0M1haWit0bThncEx5Yi95WFY3djlMeVllSzN2Wkh4OHZwMGFzN01NbHFC?=
 =?utf-8?B?dlE1cGhhYk9ib28vQ0tmWDB2SmUyWmF1VzVxWEFlZDlQUm4zeHR0MzdZZ0l3?=
 =?utf-8?B?czBKTEN6UnppOHlheVpJMkZ5ekprVnBoZDZXSUVYRUtJUEFkZkViMmRLM1ZS?=
 =?utf-8?B?YzdsdkJzbEplc05Gdnh3MkdsMlkrUm11cHZxU2F1YzZXNTFtQVNmSTd5R2VJ?=
 =?utf-8?B?MDBSMGgzbFJ1MDFiQXUyaVRheXV3ejBnN0Y0blY3em9pRDYycUFvbDE2L2c0?=
 =?utf-8?B?cU1NeExKVkFPbUh3UnI2NW5hUmxkUWZEZ2NJNlE5YkpDWndpa1NsUkd3RHox?=
 =?utf-8?B?RVYxU2JiWXlsODR2eGFHN0crb0o1RzRUZmxUN3RQRGhzWkFIbkppWFpJb1FS?=
 =?utf-8?B?elZwM3Z2dUJDMlk1R0lSOTgwN2Q2emFZWFk5WW41Q3hyMmp5UnZmWm94dFE0?=
 =?utf-8?B?ay9CWTlxR29Yc1BJUUVkRGd1N293UCtHU0ZJWGFKOFMvYU1WdS9zbEQ3SmZy?=
 =?utf-8?B?bEFJUVFwMyswbVdaTDRSL2d5NmtDcTJrWE1WOXNuRXlnd1Z3Q3dLQm1YUXZm?=
 =?utf-8?B?UHd3V3l6bFlQK0IxcEpjUHlIK3g3M0JPc0JFNXJVYnI0d0p5MGVtSG95cW1F?=
 =?utf-8?B?clEyOTVHR0VNZGU1ZzNPemJkd1FFTlg3RDJDNWtDdWNCNDJPRDdhRDE1eDNk?=
 =?utf-8?B?RDc5cFhsSmdCMXlDMzhGWWlTSzhqdkhoNzBpQi9FdVY4YXdNcEp0Qk1BdUMr?=
 =?utf-8?B?OXkzV1l2dm1adDNzcnVIU2RDVFBNNEYvakZyZGZFRVJOaVVURDZhQ2Fid3Nj?=
 =?utf-8?B?dmg4eFgwQlJ2eXFpRld6K2pXSXhZT2ZoRmxIRFV4TWdhVHJkcW1jR0hnZHZi?=
 =?utf-8?B?VGVLVDFRV1hGY08zbGd6MFlHWS9rU21TQ3dGWTBKUXdrQzRVNGZlMU1FZDNa?=
 =?utf-8?B?aG8vRVFBdVl1RXhSUmxCR1VISGlyckRFdkVrVkd4MWsrQklVd0Y5c2p1SURw?=
 =?utf-8?B?OEk2M2Z2YjVnM0pVS2ZVRnFGdVMxeVBlNmMyTE8vMHhHQmxBNGZsbXIrMXVI?=
 =?utf-8?B?bGV5dG5xK1JkWnd1ajd4c25xbVNwVnB3dlRLOHlRUDd1Ym5INENKeENjbGVP?=
 =?utf-8?B?R1JSdG9lU0JZYkhTd010WFREWnFRMjVLZStNNmxuRWtoSi9nZ2QzY1orYnp6?=
 =?utf-8?B?dVFURXkxbHo4UkZKS2hvcGg1VkUrcCtOMVFGSkJNWkdWazU3bnJJeTlQbXZy?=
 =?utf-8?B?U0laZmtGZDRnMWhOd1hEUEgvL0Z3cU9MMlp6ajdML0dwZmJVOWp4SlhHR2h6?=
 =?utf-8?B?MFQrSkR2UjJlMi9NQmtsL0RLV2cxTmtOSHhVME9NOE15RTlBbGJQZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FfohYXK7ILLIbRGtOVhBadVrlxzSNhViMfi1u4Eon5i3BD8l1NkZU4VeMecwBjoFCiOi+aa+aqUCLWPjPF6WkE3Y+aU4OmoX53ooZfLcdGarILXM6Ex8a5gK+kaxrbdpRBB4hIkDCvgrM65jghGp3K8PmxPmPa04CgujDIdkJ3KKa3pgT2GBqOjFLHjaitH+yNH9UV6gGtwTtnUe2QJ36dHiLOqBxHVyFpljbbaNJnW+AFwst6/ni4fM2edgpY5j1zIG36xmcyxWHPGI+lPnx38TGje0QYVFDsa7W6bSfZQ9dWG01tWw/taAWheHpT176QLBtBUkTh87nRpLwTaNTw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99466a01-ad43-4b62-a0bb-08de8e607c53
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2026 13:30:18.6791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XNNhy23iItFHrnFiDRlD3BnSVN8keDZHs7fgGclleQJv5hIFnwK4vz+DZuDyt5cMfWmcBt88uhk9EAGqO81nrWpX7gjvJYH6cA6MepTQC1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8269
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774877433; x=1806413433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m5DBEwais6tvoBm+A6iKwEYocdn8W2o8BbN9YynxgIs=;
 b=CuqfeHHqotqWQA+6sfL5J+ZAPZ3R1eVikf6YtPQRG/qJn8B91Zb7qJao
 ZI52N9H9fFAw8YZ8m94gehBdiYUfucCFaMT/jzjw6gFMPb84k+sjyd46p
 t6H2Hs7kZqZR+qK7lknOFcAU2Znu2W6AhVA7IJflgl7xcGDgQwCttx7RR
 vD6C4pkkkXnHPqA1vTqQ08Vez0JEdYRGZaPtKXAQ1ofMLZ9O7xHoqS7nQ
 feLWvW0wwNOdVCKn8XSyPO+XE6Km8SVsCjCzn2CsKZCoCldiD3hgMuOOY
 wAZAHOmTorfdZgY8KaC3MhsiBUFhys2bs3tMGt2f3+f3HjGL4bnJzenIe
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CuqfeHHq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-0.956];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 39A9A35BFE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1h
cmNoIDI3LCAyMDI2IDEyOjQ2IFBNDQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5p
dGthQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IFZlY2VyYSwgSXZh
biA8aXZlY2VyYUByZWRoYXQuY29tPjsgdmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldjsNCj4ga3Vi
YUBrZXJuZWwub3JnOyBqaXJpQHJlc251bGxpLnVzOyBlZHVtYXpldEBnb29nbGUuY29tOyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgcmljaGFy
ZGNvY2hyYW5AZ21haWwuY29tOw0KPiBkb25hbGQuaHVudGVyQGdtYWlsLmNvbTsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgS3ViYWxld3NraSwNCj4gQXJrYWRpdXN6IDxhcmthZGl1c3ou
a3ViYWxld3NraUBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBob3Jtc0BrZXJuZWwub3JnOw0KPiBQcmF0aG9zaC5T
YXRpc2hAbWljcm9jaGlwLmNvbTsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgcGFiZW5pQHJlZGhhdC5jb207DQo+IGRhdmVtQGRhdmVtbG9mdC5uZXQN
Cj4gU3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2NCBuZXQtbmV4dCA4Lzhd
IGljZTogYWRkIFRYIHJlZmVyZW5jZQ0KPiBjbG9jayAodHhfY2xrKSBjb250cm9sIGZvciBFODI1
IGRldmljZXMNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+
IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9y
Zz4gT24gQmVoYWxmDQo+ID4gT2YgR3J6ZWdvcnogTml0a2ENCj4gPiBTZW50OiBUaHVyc2RheSwg
TWFyY2ggMjYsIDIwMjYgNToyOSBQTQ0KPiA+IFRvOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+
ID4gQ2M6IFZlY2VyYSwgSXZhbiA8aXZlY2VyYUByZWRoYXQuY29tPjsgdmFkaW0uZmVkb3Jlbmtv
QGxpbnV4LmRldjsNCj4gPiBrdWJhQGtlcm5lbC5vcmc7IGppcmlAcmVzbnVsbGkudXM7IGVkdW1h
emV0QGdvb2dsZS5jb207IEtpdHN6ZWwsDQo+ID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRz
emVsQGludGVsLmNvbT47IHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbTsNCj4gPiBkb25hbGQuaHVu
dGVyQGdtYWlsLmNvbTsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgS3ViYWxld3NraSwN
Cj4gPiBBcmthZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IGFuZHJldytu
ZXRkZXZAbHVubi5jaDsNCj4gPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgaG9y
bXNAa2VybmVsLm9yZzsNCj4gPiBQcmF0aG9zaC5TYXRpc2hAbWljcm9jaGlwLmNvbTsgTmd1eWVu
LCBBbnRob255IEwNCj4gPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBwYWJlbmlAcmVk
aGF0LmNvbTsNCj4gZGF2ZW1AZGF2ZW1sb2Z0Lm5ldA0KPiA+IFN1YmplY3Q6IFtJbnRlbC13aXJl
ZC1sYW5dIFtQQVRDSCB2NCBuZXQtbmV4dCA4LzhdIGljZTogYWRkIFRYDQo+ID4gcmVmZXJlbmNl
IGNsb2NrICh0eF9jbGspIGNvbnRyb2wgZm9yIEU4MjUgZGV2aWNlcw0KPiA+DQo+ID4gQWRkIGZ1
bGwgc3VwcG9ydCBmb3Igc2VsZWN0aW5nIGFuZCBjb250cm9sbGluZyB0aGUgVFggU0VSREVTDQo+
ID4gcmVmZXJlbmNlIGNsb2NrIG9uIEU4MjVDIGhhcmR3YXJlLiBFODI1QyBkZXZpY2VkZSBzdXBw
b3J0cyBzZWxlY3RpbmcNCj4gPiBhbW9uZyBtdWx0aXBsZSBTRVJERVMgdHJhbnNtaXQgcmVmZXJl
bmNlIGNsb2NrIHNvdXJjZXMgKEVORVQsIFN5bmNFLA0KPiA+IEVSRUYwKSwgYnV0IGltcG9zZXMg
c2V2ZXJhbCByb3V0aW5nIGNvbnN0cmFpbnRzOiBvbiBzb21lIHBhdGhzIGENCj4gPiByZWZlcmVu
Y2UgbXVzdCBiZSBlbmFibGVkIG9uIGJvdGggUEhZIGNvbXBsZXhlcywgYW5kIHBvcnRzIHNoYXJp
bmcgYQ0KPiA+IFBIWSBtdXN0IGNvb3JkaW5hdGUgdXNhZ2Ugc28gdGhhdCBhIHJlZmVyZW5jZSBp
cyBub3QgZGlzYWJsZWQgd2hpbGUNCj4gPiBzdGlsbCBpbiBhY3RpdmUgdXNlLiBVbnRpbCBub3cg
dGhlIGRyaXZlciBkaWQgbm90IGV4cG9zZSB0aGlzIGRvbWFpbg0KPiA+IHRocm91Z2ggdGhlIERQ
TEwgQVBJLCBub3IgZGlkIGl0IHByb3ZpZGUgYSBjb2hlcmVudCBjb250cm9sIGxheWVyDQo+ID4g
Zm9yIGVuYWJsaW5nLCBzd2l0Y2hpbmcsIG9yIHRyYWNraW5nIFRYIHJlZmVyZW5jZSBjbG9ja3Mu
DQo+ID4NCj4gPiBUaGlzIHBhdGNoIGltcGxlbWVudHMgZnVsbCBUWCByZWZlcmVuY2UgY2xvY2sg
bWFuYWdlbWVudCBmb3IgRTgyNQ0KPiA+IGRldmljZXMuIENvbXBhcmVkIHRvIHByZXZpb3VzIGl0
ZXJhdGlvbnMsIHRoZSBsb2dpYyBpcyBub3cgc2VwYXJhdGVkDQo+ID4gaW50byBhIGRlZGljYXRl
ZCBtb2R1bGUgKGljZV90eGNsay5jKSB3aGljaCBlbmNhcHN1bGF0ZXMgYWxsIGNsb2NrLQ0KPiA+
IHNlbGVjdGlvbiBydWxlcywgY3Jvc3PigJFQSFkgZGVwZW5kZW5jaWVzLCBhbmQgdGhlIGJvb2tr
ZWVwaW5nIG5lZWRlZA0KPiA+IHRvIGVuc3VyZSBzYWZlIHRyYW5zaXRpb25zLiBUaGlzIGFsbG93
cyB0aGUgRFBMTCBsYXllciBhbmQgdGhlIFBUUA0KPiA+IGNvZGUgdG8gcmVtYWluIGZvY3VzZWQg
b24gdGhlaXIgcmVzcGVjdGl2ZSByb2xlcy4NCj4gPg0KPiA+IEtleSBhZGRpdGlvbnM6DQo+ID4N
Cj4gPiAgICogQSBuZXcgdHhjbGsgY29udHJvbCBtb2R1bGUgKGBpY2VfdHhjbGsuY2ApIGltcGxl
bWVudGluZzoNCj4gPiAgICAgICAtIHNvZnR3YXJlIHVzYWdlIHRyYWNraW5nIGZvciBlYWNoIHJl
ZmVyZW5jZSBjbG9jayBwZXIgUEhZLA0KPiA+ICAgICAgIC0gcGVlcuKAkVBIWSBlbmFibGUgcnVs
ZXMgKFN5bmNFIHJlcXVpcmVkIG9uIGJvdGggUEhZcyB3aGVuIHVzZWQNCj4gPiBvbg0KPiA+ICAg
ICAgICAgUEhZMCwgRVJFRjAgcmVxdWlyZWQgb24gYm90aCB3aGVuIHVzZWQgb24gUEhZMSksDQo+
ID4gICAgICAgLSBzYWZlIGRpc2FibGluZyBvZiB1bnVzZWQgcmVmZXJlbmNlIGNsb2NrcyBhZnRl
ciBzd2l0Y2hpbmcsDQo+ID4gICAgICAgLSBhIHNpbmdsZSwgZHJpdmVy4oCRaW50ZXJuYWwgZW50
cnkgcG9pbnQgZm9yIGNsb2NrIGNoYW5nZXMuDQo+ID4NCj4gPiAgICogSW50ZWdyYXRpb24gd2l0
aCB0aGUgRFBMTCBwaW4gb3BzOg0KPiA+ICAgICAgIC0gcGlu4oCRc2V0IG5vdyBjYWxscyBpbnRv
IGBpY2VfdHhjbGtfc2V0X2NsaygpYCB0byByZXF1ZXN0IGENCj4gPiAgICAgICAgIGhhcmR3YXJl
IHN3aXRjaCwNCj4gPiAgICAgICAtIHBpbuKAkWdldCByZXBvcnRzIHRoZSBjdXJyZW50IFNFUkRF
UyByZWZlcmVuY2UgYnkgcmVhZGluZyBiYWNrDQo+ID4gdGhlDQo+ID4gICAgICAgICBhY3RpdmUg
c2VsZWN0b3IgKGBpY2VfZ2V0X3NlcmRlc19yZWZfc2VsX2U4MjVjKClgKS4NCj4gPg0KPiA+ICAg
KiBXaXJpbmcgdGhlIHJlcXVlc3RlZCByZWZlcmVuY2UgY2xvY2sgaW50byBBdXRv4oCRTmVnb3Rp
YXRpb24NCj4gPiByZXN0YXJ0DQo+ID4gICAgIHRocm91Z2ggdGhlIGFscmVhZHnigJFleHRlbmRl
ZCBgaWNlX2FxX3NldF9saW5rX3Jlc3RhcnRfYW4oKWAuDQo+ID4NCj4gPiAgICogQWZ0ZXIgZWFj
aCBsaW5rLXVwIHRoZSBkcml2ZXIgdmVyaWZpZXMgdGhlIGVmZmVjdGl2ZSBoYXJkd2FyZQ0KPiA+
IHN0YXRlDQo+ID4gICAgIChgaWNlX3R4Y2xrX3ZlcmlmeSgpYCkgYW5kIHVwZGF0ZXMgaXRzIHBl
cuKAkVBIWSB1c2FnZSBiaXRtYXBzLA0KPiA+ICAgICBjb3JyZWN0aW5nIHRoZSByZXF1ZXN0ZWQv
YWN0aXZlIHN0YXRlIGlmIHRoZSBGVyBvciBBTiBmbG93DQo+ID4gYXBwbGllZCBhDQo+ID4gICAg
IGRpZmZlcmVudCByZWZlcmVuY2UuDQo+ID4NCj4gPiAgICogUFRQIFBGIGluaXRpYWxpemF0aW9u
IG5vdyBzZWVkcyB0aGUgRU5FVCByZWZlcmVuY2UgY2xvY2sgYXMNCj4gPiBlbmFibGVkDQo+ID4g
ICAgIGJ5IGRlZmF1bHQgZm9yIGl0cyBwb3J0Lg0KPiA+DQo+ID4gQWxsIHJlZmVyZW5jZSBjbG9j
ayB0cmFuc2l0aW9ucyBhcmUgc2VyaWFsaXplZCB0aHJvdWdoIHRoZSBEUExMDQo+ID4gbG9jaywg
YW5kIHVzYWdlIGluZm9ybWF0aW9uIGlzIHNoYXJlZCBhY3Jvc3MgYWxsIFBGcyBiZWxvbmdpbmcg
dG8NCj4gPiB0aGUgc2FtZSBFODI1QyBjb250cm9sbGVyIFBGLiBUaGlzIGVuc3VyZXMgdGhhdCBj
b25jdXJyZW50IGNoYW5nZXMNCj4gPiBhcmUgY29vcmRpbmF0ZWQgYW5kIHRoYXQgc2hhcmVkIFBI
WXMgbmV2ZXIgc2VlIGFuIHVuZXhwZWN0ZWQNCj4gPiBkaXNhYmxlLg0KPiA+DQo+ID4gV2l0aCB0
aGlzIHBhdGNoLCBFODI1IGRldmljZXMgZ2FpbiBmdWxsIHVzZXJzcGFjZeKAkWRyaXZlbiBUWEMN
Cj4gPiByZWZlcmVuY2UgY2xvY2sgc2VsZWN0aW9uIHZpYSB0aGUgRFBMTCBzdWJzeXN0ZW0sIGVu
YWJsaW5nIGNvbXBsZXRlDQo+ID4gU3luY0Ugc3VwcG9ydCwgcHJlY2lzZSBtdWx0aeKAkWNsb2Nr
IHNldHVwcywgYW5kIHByZWRpY3RhYmxlIGNsb2NrDQo+ID4gcm91dGluZyBiZWhhdmlvci4NCj4g
Pg0KPiA+IFJldmlld2VkLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFs
ZXdza2lAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnpl
Z29yei5uaXRrYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9NYWtlZmlsZSAgICAgfCAgIDIgKy0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZS5oICAgICAgICB8ICAxMiArDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jICAgfCAgNTMgKysrLQ0KPiA+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jICAgIHwgIDI3ICsrLQ0KPiA+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5oICAgIHwgICA3ICsNCj4gPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8ICAzNyArKysNCj4gPiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oIHwgIDI3ICsrKw0KPiA+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhjbGsuYyAgfCAyNTYNCj4gPiArKysrKysr
KysrKysrKysrKysrKyAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eGNsay5o
ICB8DQo+ID4gNDEgKysrKw0KPiA+ICA5IGZpbGVzIGNoYW5nZWQsIDQ0NSBpbnNlcnRpb25zKCsp
LCAxNyBkZWxldGlvbnMoLSkgIGNyZWF0ZSBtb2RlDQo+ID4gMTAwNjQ0IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhjbGsuYw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eGNsay5oDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlDQo+ID4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUNCj4gPiBpbmRleCAzOGRiNDc2YWIy
ZWMuLjk1ZmQwYzQ5ODAwZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvTWFrZWZpbGUNCj4gPiBAQCAtNTQsNyArNTQsNyBAQCBpY2UtJChDT05GSUdfUENJX0lPVikg
Kz0JXA0KPiA+ICAJaWNlX3ZmX21ieC5vCQlcDQo+ID4gIAlpY2VfdmZfdnNpX3ZsYW5fb3BzLm8J
XA0KPiA+ICAJaWNlX3ZmX2xpYi5vDQo+ID4gLWljZS0kKENPTkZJR19QVFBfMTU4OF9DTE9DSykg
Kz0gaWNlX3B0cC5vIGljZV9wdHBfaHcubyBpY2VfZHBsbC5vDQo+ID4gaWNlX3RzcGxsLm8gaWNl
X2NwaS5vDQo+IA0KPiAuLi4NCj4gDQo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHBsbF9waW5f
b3BzIGljZV9kcGxsX3JjbGtfb3BzID0geyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cC5jDQo+ID4gaW5kZXggMDk0ZTk2MjE5ZjQ1Li5hNzVhMTM4MDA5N2Ig
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4g
PiBAQCAtNCw2ICs0LDcgQEANCj4gPiAgI2luY2x1ZGUgImljZS5oIg0KPiA+ICAjaW5jbHVkZSAi
aWNlX2xpYi5oIg0KPiA+ICAjaW5jbHVkZSAiaWNlX3RyYWNlLmgiDQo+ID4gKyNpbmNsdWRlICJp
Y2VfdHhjbGsuaCINCj4gPg0KPiA+ICBzdGF0aWMgY29uc3QgY2hhciBpY2VfcGluX25hbWVzW11b
NjRdID0gew0KPiA+ICAJIlNEUDAiLA0KPiA+IEBAIC01NCwxMSArNTUsNiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGljZV9wdHBfcGluX2Rlc2MNCj4gPiBpY2VfcGluX2Rlc2NfZHBsbFtdID0gew0K
PiA+ICAJeyAgU0RQMywgeyAgMywgLTEgfSwgeyAwLCAwIH19LA0KPiA+ICB9Ow0KPiA+DQo+ID4g
LXN0YXRpYyBzdHJ1Y3QgaWNlX3BmICppY2VfZ2V0X2N0cmxfcGYoc3RydWN0IGljZV9wZiAqcGYp
IC17DQo+ID4gLQlyZXR1cm4gIXBmLT5hZGFwdGVyID8gTlVMTCA6IHBmLT5hZGFwdGVyLT5jdHJs
X3BmOw0KPiA+IC19DQo+ID4gLQ0KPiA+ICBzdGF0aWMgc3RydWN0IGljZV9wdHAgKmljZV9nZXRf
Y3RybF9wdHAoc3RydWN0IGljZV9wZiAqcGYpICB7DQo+ID4gIAlzdHJ1Y3QgaWNlX3BmICpjdHJs
X3BmID0gaWNlX2dldF9jdHJsX3BmKHBmKTsgQEAgLTEzMjUsNg0KPiA+ICsxMzIxLDEwIEBAIHZv
aWQgaWNlX3B0cF9saW5rX2NoYW5nZShzdHJ1Y3QgaWNlX3BmICpwZiwgYm9vbCBsaW5rdXApDQo+
ID4gIAkJCQlyZXR1cm47DQo+ID4gIAkJCX0NCj4gPiAgCQl9DQo+ID4gKw0KPiA+ICsJCWlmIChs
aW5rdXApDQo+ID4gKwkJCWljZV90eGNsa192ZXJpZnkocGYpOw0KPiBtc2xlZXAoKSB1bmRlciBt
dXRleCBzbWVscyBiYWRseS4uLiAvKiBpY2VfY3BpX3dhaXRfcmVxMF9hY2swKCkgYW5kDQo+IGlj
ZV9jcGlfd2FpdF9hY2soKSAqLw0KPiBwZi0+ZHBsbHMubG9jayBjYW4gYmUgaGVsZCB+MnNlY29u
ZHMgYmxvY2tpbmcgaWNlX2RwbGxfcGVyaW9kaWNfd29yaygpLg0KPiBDYW4gQ1BJIGhhbmRzaGFr
ZSBoYXBwZW4gb3V0c2lkZSB0aGUgbG9jaz8NCj4gDQpBZ3JlZS4gVGhpcyBpcyBub3QgYSBnb29k
IHByYWN0aWNlLg0KSSByZWFsaXplZCBpdCBhbHNvIGFwcGxpZXMgdG8gRFBMTCAndHgtY2xrJyBp
bnRlcmZhY2Uga25vYnMuDQpJIHdpbGwgbW9kaWZ5IGl0IHdpdGggc29tZSB3b3JrZXIgYXBwcm9h
Y2ggaW4gdGhlIG5leHQgaXRlcmF0aW9uLg0KDQpSZWdhcmRzDQoNCkdyemVnb3J6DQo+ID4gKw0K
PiA+ICAJCW11dGV4X3VubG9jaygmcGYtPmRwbGxzLmxvY2spOw0KPiA+ICAJfQ0KPiA+DQo+IA0K
PiAuLi4NCj4gDQo+ID4gKi8NCj4gPiAtLQ0KPiA+IDIuMzkuMw0KDQo=
