Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPjTGSNuxmmkJwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 12:46:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE81343BAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 12:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC3AC415F6;
	Fri, 27 Mar 2026 11:46:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ny1qEa2PGkxk; Fri, 27 Mar 2026 11:46:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32B68415F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774612000;
	bh=k1PbWJWZ17N7xuFNLxF1eyr4UiGdEa0fmQPbbaKIgaQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YxRT9+5YL5Ynt4fUxfXkffg3tJ1GLjHlElMPTJRQ7+GTjTFUa1ezuR8KXkGNbUx/t
	 26CwwbRD2aSvqvxEIEw7m1C7bW2uF13MZymPlSEUzXv9FR2hul+mfTD1WsHwqMrotB
	 BsakLvvN0l/v1BeaKLxoar0SQGae8sLcxM0g5FFTqDTvktlYVfruSi8odrtY6n5WO9
	 xtuCGvdr2iBTKzxh3nfFxL6/ftQqJ5ZE2wQiCZYpwKEjNwyvguOucxV2iIGDeXXAfv
	 YcgTgxDlQR9IIC60Y/asJVDXBaX91UWIaDWRcTdmWCcI677nTmjksKUhsZAqs87fWd
	 kEI+4q1DAWJ+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32B68415F8;
	Fri, 27 Mar 2026 11:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B3092D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 11:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20A8140BF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 11:46:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2rjmPW2k_Swi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 11:46:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 358FB403DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 358FB403DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 358FB403DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 11:46:37 +0000 (UTC)
X-CSE-ConnectionGUID: CPBUb/8+S8yJnbRCCARvpw==
X-CSE-MsgGUID: zN4sJs58TVycjyzTUJ+7Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="87065219"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="87065219"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:46:37 -0700
X-CSE-ConnectionGUID: TzmqBKniSou4Uwj2Svry/w==
X-CSE-MsgGUID: iM/KbvHJT1ut3jE1RwLIvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="229374032"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 04:46:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 04:46:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 04:46:35 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 04:46:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y/myoqwlYs6wXoMTLwj0IVxM1O05M94cxXcBNyGiZmyr8xftD76rp/wB7JjOYie+Tw+Uq3TeWipWWhQ1eGuf/LOl+A/6qQsbya6xQxM/7Z8W5ywrbUf5Sjbo8V3kQgYKuZOzOgF7z428X/qb4jyTfkAbh0gSJbD9Ls97x71jKMq4Mb0TebfV7IJax0ckBHUdKSo4BQRzKOFd2ODnKkaZSoxzL5duZ0768ToYFja5qvd46/8H3yV0fJx+zKZJdjWBKr/UgKyH2g8aKDhNFX7PuEWScgy6mqZ20CDSncXVeTFW0An+zpjIxiJ+S1pIY1bC6N1tktZhxdGScap7mWTwLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k1PbWJWZ17N7xuFNLxF1eyr4UiGdEa0fmQPbbaKIgaQ=;
 b=FLfRrR4kWOHINQ0kHkEIFP3Az+ZP83RfnGQxlmTTkEgULGBiezPfzd7G71nbs4TRc0o7vACly9KtLwFIJ2Ti6PDYS2YNpTAiYro0wLoz7Bz+4E8GPkuV3kjJfr41v8TSKU0kRhWcIGg9INspzcA2ieh0crpCZdPbP/o8lL4UA3lxQp52BEX76xU1dBC67lrNKUs38mc5h44iXhYT4b4BYTdfY0PQiYEAn6XRL2G4Hwv0LJJY9vpnyK1bUCkiEwJczfCRKEIrQXGRaq78tzZwelqgH+Ow8/yoEgwNAu/5VMwsHT4iOLuy8DiPZzxU/Q+TjDigzNKsXXrcnQD3Fem3HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6125.namprd11.prod.outlook.com (2603:10b6:8:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.6; Fri, 27 Mar
 2026 11:46:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 27 Mar 2026
 11:46:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
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
Thread-Index: AQHcvT5a2yNljoOrWkCkG2fcHzVZobXCBMQA
Date: Fri, 27 Mar 2026 11:46:25 +0000
Message-ID: <IA3PR11MB898696725A05CA82FA6ED1FEE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-9-grzegorz.nitka@intel.com>
In-Reply-To: <20260326162832.3135857-9-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6125:EE_
x-ms-office365-filtering-correlation-id: c3e66b78-042a-4f85-d510-08de8bf6799d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: TqvDporv7LQHpxaUy2OXEzEezeypmpszPFlUlFWCoOGJNqOeyIfD+OeyhcXaCob5qNZ1xX+KDLnefu64nN3nSDcvOV6bhikH5huryTmzkgKjf28DpeWW9cGRSvz+HUkxnBJZt02MtrxApkmLMZwSF2Bmb03F9AePtovvgkET8gra93lk7ADp7kIIQtE1OKiZl8NGW6we6NZEGBsOIVZf3skUX3GQunF9qBMxXQUMdjPCKdVyzRiuuSx5BOe8mIIbpbzSMHq+ocadSXmXYihX/ClWubsN1er1OmhwHHSgQpdn6ujF/IdEOcW4yhgwcxAlLZLQGMJbszsnPePjDWtha6/okyZRkfUZYw6a4YeFSuFCm9A9t2or0Q4ugHxOjwFHgkGFCo6ATt9ZVzQt5VNxU1YTyKZuNuAZvg5nIRwciZog705DUvSCUmkvO4OER9iDrDoDnGjrC3JUeettpfDOdWdhepkp+6tY8HSRlK8lqXagnAEeacYpplG2Q9CnXW1qqKi4vi9NS0B8TcXeqATo2fZPVgxfCvwCYTCHW6CBnah0ZK53nucVRbtZW6W9xpCV66WFAFwqApFgSrkK1HeiXOO8ZTDVmzCsT14WAOMbENQ/ZL3sfzgW0wwxSctVvST+MzxwOIesR7iC9AmGOCQPPjgTzXeLKs/Yv543054Pk+wPTWC8lB7JsFu23RHbQnqVruu/Lgsl6T2sHzFkXEFGyGyw8AkywPd56PxXCS72DAhIdNJ/5elPsHuQQKov3H71vk6zlCOUmiaJIWh6gotSb8ig5IFEobttk4IxnMZUEag=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzA1WnBQRkdNRDdPVUV5L0ZFUGFud3ZMenBCSXppQXlMTCtGRE1Oc3FIMzlK?=
 =?utf-8?B?L2pFZVFzT3QvWjc4L3Z1R2VWSWozdWt6bXJEcktYYXo0a3BTV0FTc1l4MlZY?=
 =?utf-8?B?QVR2NDN0R0lkWEQzOTRFaUQydFVlelRFdEx1a2Z6ektXSXBBeTVtd0tma3I4?=
 =?utf-8?B?bnFyWDZtRlQwUXBWdXk2OTZCNDE1VVBPRUlaanIvbUJFRVpxcFFWeHh6Vzgv?=
 =?utf-8?B?ZVYrdlRtdC9Gdk5yTzRtTU5xaGJZRTc1QmtuMEFERXg3M0FGMk1rL1FXb2I2?=
 =?utf-8?B?L2VmSXFXbGNQLzZOOUJmRDFCQ2VuWUdVRXVkZFNoU3J5bXlyaFBvOXg1dXdF?=
 =?utf-8?B?VWlpMElrS1NFcktkRGlyQldkYmllcGFFZkJNY25kU0ttN2lnY1AzUko2Rkto?=
 =?utf-8?B?QUZ2WFFyVDNzeUlnK0JZa0dtM1NOdjhWa0FUZXpnYXR2ZXkvdVNMTGx5QTI2?=
 =?utf-8?B?N05JTC9UQU1KeWdGRzF4N25GbFpyMFNzdWRwSmxrdmpaSGI2bktzdlNZOUh6?=
 =?utf-8?B?U0ZPRU1nTmZnbWNKVmJVQTk0WXdmMlN5T2FwYnZUZFN5bXp6ZzRMMEJoRG5R?=
 =?utf-8?B?Z0luaTNyZzQ0Zi9NK0Fqbi91QkRNa0JxYXR2Tkl3bkpBNXc3YkdscG1GYnlL?=
 =?utf-8?B?NlAzS0oxOEUwRFpGNnFyRGEreTlPVGdURUdjYjk1MzAzMjFtU2pqY1VRYTRL?=
 =?utf-8?B?ZDA3d25LaEhNMlUwUllhQWpxSjJPVUZlRUd6NFZMZ25qVFQ2VFgyYmZVdmh4?=
 =?utf-8?B?bTgrc0hVZHBqelZRdFVOSkZWR0N0NEE2RDJJa1JmOHhyM2JmMXR0Y3ZUTGRQ?=
 =?utf-8?B?Mm93WlNoYm9NK25CLzR2WEJmRk53L0dnak1qbnFibDdLRnZuMWx4b3hPejhk?=
 =?utf-8?B?eUZDT3FoZHFtdkN3SFQvRVNrSjZjMFQwaTlDRW1JbHdNckdoZFN4eXlWQ2FL?=
 =?utf-8?B?WDNxcFJHdmZEc1BiZnllVVQranJtZ1psSXlTYWZzU0V0WEsrczY2M1dYaU4z?=
 =?utf-8?B?Z2lyNlBOZHYzcWdyalc3U1l5Ynl0eUVzS0l5Y25qTHBZV1NCb1dFR24rRGdR?=
 =?utf-8?B?ZUpQcm9iYU1sSDVBcnMxQnBtT2dGVXE1cy9EWG1ETWNRVnlHdmViMzd3L0tL?=
 =?utf-8?B?bko0WStFSUt0alZ1OHJjT1RuTEV5UTF0TGo5OU5iOXFvTEhXZ25NelI1NFc4?=
 =?utf-8?B?dUFBbmxSN2MwSGdkM2dsVy9SZGRZTWhXMXpndDFnSzhVUEwyUTdsVVhJTWpK?=
 =?utf-8?B?WXdFellSSVJBOWtxRDZWcVRKcHd5ejYzWGRPU2N5cWJSd01nZ0dUcVNzbURl?=
 =?utf-8?B?S1BpSEh1bHU4WHFHanVSWGpYMDFhZVhDbnZRUElZU1k0N2pyREN5UitVbHVI?=
 =?utf-8?B?SEhFV2VQdll1MnAvKzg2L21xdGh2OTJsRXcxMUY3S2lYWDBOQklOb1F1akRk?=
 =?utf-8?B?NW0yNTVTV2JxNG9EZHV5eVhZZEpZMU9meHdDdnhjMTJQRm82dnRMajg2b1dE?=
 =?utf-8?B?Y29VQU5IYVRIaUkyck1oRnhBYU92c3hLcjNUdG9jSGJGa2dyb3UzSG5iMkVS?=
 =?utf-8?B?elJMVkNtSVZCOXBzR25uNnE4dU9ZcGRXM2p3WVRDQ0J5MEx3TTFrb1pGdTI5?=
 =?utf-8?B?OEVrSTlSUkRWcFpmVmRQZjNZRkoxQ0VaWEdoUnNidDEwVnVlMU5uZE1JalRM?=
 =?utf-8?B?NmlHelUzNSs2TkoyRHRBRzdVWHlyQmlkUllVZGpXL3hlMmVnK1FTWTN0UjlW?=
 =?utf-8?B?RXpCdHBReHhYV1FBWXBEL3hoVnhDSmM2N0ovTGkzV2haL1JYMnAzKzJwNitv?=
 =?utf-8?B?aWNZTitFNUVaVW5HSmFramxBOVZXWnpNTlEvK1RVQldVT1IxVGl6Sk1IMHFj?=
 =?utf-8?B?QVRhRGFuWHFEVkNwRmxwaG5oc25RUXpCT2JjaWQ4L0lYTDBHYlZEYzdoRDM1?=
 =?utf-8?B?US84Ulo3SmhZUFdpSmVqNW1kTjVLWVhGNmgwdzZROXY2S2pLZmxJdVBOd0p2?=
 =?utf-8?B?WmZjclBwOXh5WFhuMHFCMWdhT2pCYzZ0d1BMNDdpMEJwajNVb2JDREdXemI5?=
 =?utf-8?B?OThaZFYwa3F2WEtPdGVrR003T1pIVTdiOTkvSDNnM29Ka3F0anl3czVZQWYw?=
 =?utf-8?B?MEVEeERSVGdXTFZyWVN5TFJRbFhJeXBUOURwV0dlOEJmVXJXOVpCV3l6N3Rw?=
 =?utf-8?B?R1d4aXBkRWczbmx5MGM5OUNVdncyQUlYTkJBNnBZU3JEMW5TQlJVdjRrbisw?=
 =?utf-8?B?SEg2aUxtQ0p1N2VHR1V5SmtKaGdpTDdlQkRlbjdzTXZublNRaUFMK3dFZVNo?=
 =?utf-8?B?MCt6QkI0MnFPbGs0bzhBM0xhTUFGK3liS3FuRjlYbithekZaZmgxUzhVYm9R?=
 =?utf-8?Q?aCDImKA0V5wYcEi8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HdgWhTXdwKlDDqJLXsvZ0UMnmDXaRwpMWz/MK2xo/Nu1OJ5Gm+QbIdJvdMQa/YvfQQKpq17Uj1sxoDc0ayUXJSb33IDhN1lWjwtZKwVZWZvhDdgVTGSg17bQ8LpauBtHqW6lDXKklyV62uQcBYHQV6TLvZQwPszTEF1p1bKlEq0+ewDU8Fgo6eW/svwwMH3wR5OzHzXqtcZsUAGkitgoTvHrwFhJ9+Bj0RfQLrdbA8GMNIPK2emqsk25RUJZwqTO2qXiEK2MNmzgCBQfOvN8+GRLhqVkiWvOIUMHdhdSiyVuMkiVhqWDb6H5dwxGgNrWSqWTJYZDrj6WE3lgzr/NNQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e66b78-042a-4f85-d510-08de8bf6799d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 11:46:25.1349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OVRwe3HmKIQOaeN0qr3nJcO41tuHPl7la0rJnMvc5w2MsX+zdurfOtmSxpOsyWJSqEbYql3UBRlioAhQcah39Fh58Os0Tb/h9G4dh30LyDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774611997; x=1806147997;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k1PbWJWZ17N7xuFNLxF1eyr4UiGdEa0fmQPbbaKIgaQ=;
 b=XQEEUHlDv8dpxg/5c5B/TFw37cKgGEFL4dPrVJcnmMSPodAx5xohSAVI
 /hOsnFCqJ6k+zcpMKt0QiY9KgZk4X7Mcs8res0c1YUJCFZjE3+NLiIL6f
 obLbHG5GdcC3RSIWQvlW28F48/DKOpR0A634vSQJgNF/nGuMjiAxYA18J
 948q9ZTDWdyvn6pfVd9Cq6pyG4wxymDu9/qIUd9zIDyIR1AiWD8bmlPez
 X2lmtud4dNw265Jld9ZXa806Wv6DvQnFbm+dhXSMueoDfCZly1l2ArVj2
 7u5sMiOMty++Q75I6NaX3rYSxxoPyW+bgYO8ZEHV59RL5/xNfR0FNBkZP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XQEEUHlD
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
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 4FE81343BAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgR3J6
ZWdvcnogTml0a2ENCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDI2LCAyMDI2IDU6MjkgUE0NCj4g
VG86IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IFZlY2VyYSwgSXZhbiA8aXZlY2VyYUBy
ZWRoYXQuY29tPjsgdmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldjsNCj4ga3ViYUBrZXJuZWwub3Jn
OyBqaXJpQHJlc251bGxpLnVzOyBlZHVtYXpldEBnb29nbGUuY29tOyBLaXRzemVsLA0KPiBQcnpl
bXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgcmljaGFyZGNvY2hyYW5AZ21h
aWwuY29tOw0KPiBkb25hbGQuaHVudGVyQGdtYWlsLmNvbTsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgS3ViYWxld3NraSwNCj4gQXJrYWRpdXN6IDxhcmthZGl1c3oua3ViYWxld3NraUBp
bnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnOyBob3Jtc0BrZXJuZWwub3JnOw0KPiBQcmF0aG9zaC5TYXRpc2hAbWljcm9j
aGlwLmNvbTsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29t
PjsgcGFiZW5pQHJlZGhhdC5jb207IGRhdmVtQGRhdmVtbG9mdC5uZXQNCj4gU3ViamVjdDogW0lu
dGVsLXdpcmVkLWxhbl0gW1BBVENIIHY0IG5ldC1uZXh0IDgvOF0gaWNlOiBhZGQgVFgNCj4gcmVm
ZXJlbmNlIGNsb2NrICh0eF9jbGspIGNvbnRyb2wgZm9yIEU4MjUgZGV2aWNlcw0KPiANCj4gQWRk
IGZ1bGwgc3VwcG9ydCBmb3Igc2VsZWN0aW5nIGFuZCBjb250cm9sbGluZyB0aGUgVFggU0VSREVT
DQo+IHJlZmVyZW5jZSBjbG9jayBvbiBFODI1QyBoYXJkd2FyZS4gRTgyNUMgZGV2aWNlZGUgc3Vw
cG9ydHMgc2VsZWN0aW5nDQo+IGFtb25nIG11bHRpcGxlIFNFUkRFUyB0cmFuc21pdCByZWZlcmVu
Y2UgY2xvY2sgc291cmNlcyAoRU5FVCwgU3luY0UsDQo+IEVSRUYwKSwgYnV0IGltcG9zZXMgc2V2
ZXJhbCByb3V0aW5nIGNvbnN0cmFpbnRzOiBvbiBzb21lIHBhdGhzIGENCj4gcmVmZXJlbmNlIG11
c3QgYmUgZW5hYmxlZCBvbiBib3RoIFBIWSBjb21wbGV4ZXMsIGFuZCBwb3J0cyBzaGFyaW5nIGEN
Cj4gUEhZIG11c3QgY29vcmRpbmF0ZSB1c2FnZSBzbyB0aGF0IGEgcmVmZXJlbmNlIGlzIG5vdCBk
aXNhYmxlZCB3aGlsZQ0KPiBzdGlsbCBpbiBhY3RpdmUgdXNlLiBVbnRpbCBub3cgdGhlIGRyaXZl
ciBkaWQgbm90IGV4cG9zZSB0aGlzIGRvbWFpbg0KPiB0aHJvdWdoIHRoZSBEUExMIEFQSSwgbm9y
IGRpZCBpdCBwcm92aWRlIGEgY29oZXJlbnQgY29udHJvbCBsYXllcg0KPiBmb3IgZW5hYmxpbmcs
IHN3aXRjaGluZywgb3IgdHJhY2tpbmcgVFggcmVmZXJlbmNlIGNsb2Nrcy4NCj4gDQo+IFRoaXMg
cGF0Y2ggaW1wbGVtZW50cyBmdWxsIFRYIHJlZmVyZW5jZSBjbG9jayBtYW5hZ2VtZW50IGZvciBF
ODI1DQo+IGRldmljZXMuIENvbXBhcmVkIHRvIHByZXZpb3VzIGl0ZXJhdGlvbnMsIHRoZSBsb2dp
YyBpcyBub3cgc2VwYXJhdGVkDQo+IGludG8gYSBkZWRpY2F0ZWQgbW9kdWxlIChpY2VfdHhjbGsu
Yykgd2hpY2ggZW5jYXBzdWxhdGVzIGFsbCBjbG9jay0NCj4gc2VsZWN0aW9uIHJ1bGVzLCBjcm9z
c+KAkVBIWSBkZXBlbmRlbmNpZXMsIGFuZCB0aGUgYm9va2tlZXBpbmcgbmVlZGVkDQo+IHRvIGVu
c3VyZSBzYWZlIHRyYW5zaXRpb25zLiBUaGlzIGFsbG93cyB0aGUgRFBMTCBsYXllciBhbmQgdGhl
IFBUUA0KPiBjb2RlIHRvIHJlbWFpbiBmb2N1c2VkIG9uIHRoZWlyIHJlc3BlY3RpdmUgcm9sZXMu
DQo+IA0KPiBLZXkgYWRkaXRpb25zOg0KPiANCj4gICAqIEEgbmV3IHR4Y2xrIGNvbnRyb2wgbW9k
dWxlIChgaWNlX3R4Y2xrLmNgKSBpbXBsZW1lbnRpbmc6DQo+ICAgICAgIC0gc29mdHdhcmUgdXNh
Z2UgdHJhY2tpbmcgZm9yIGVhY2ggcmVmZXJlbmNlIGNsb2NrIHBlciBQSFksDQo+ICAgICAgIC0g
cGVlcuKAkVBIWSBlbmFibGUgcnVsZXMgKFN5bmNFIHJlcXVpcmVkIG9uIGJvdGggUEhZcyB3aGVu
IHVzZWQNCj4gb24NCj4gICAgICAgICBQSFkwLCBFUkVGMCByZXF1aXJlZCBvbiBib3RoIHdoZW4g
dXNlZCBvbiBQSFkxKSwNCj4gICAgICAgLSBzYWZlIGRpc2FibGluZyBvZiB1bnVzZWQgcmVmZXJl
bmNlIGNsb2NrcyBhZnRlciBzd2l0Y2hpbmcsDQo+ICAgICAgIC0gYSBzaW5nbGUsIGRyaXZlcuKA
kWludGVybmFsIGVudHJ5IHBvaW50IGZvciBjbG9jayBjaGFuZ2VzLg0KPiANCj4gICAqIEludGVn
cmF0aW9uIHdpdGggdGhlIERQTEwgcGluIG9wczoNCj4gICAgICAgLSBwaW7igJFzZXQgbm93IGNh
bGxzIGludG8gYGljZV90eGNsa19zZXRfY2xrKClgIHRvIHJlcXVlc3QgYQ0KPiAgICAgICAgIGhh
cmR3YXJlIHN3aXRjaCwNCj4gICAgICAgLSBwaW7igJFnZXQgcmVwb3J0cyB0aGUgY3VycmVudCBT
RVJERVMgcmVmZXJlbmNlIGJ5IHJlYWRpbmcgYmFjaw0KPiB0aGUNCj4gICAgICAgICBhY3RpdmUg
c2VsZWN0b3IgKGBpY2VfZ2V0X3NlcmRlc19yZWZfc2VsX2U4MjVjKClgKS4NCj4gDQo+ICAgKiBX
aXJpbmcgdGhlIHJlcXVlc3RlZCByZWZlcmVuY2UgY2xvY2sgaW50byBBdXRv4oCRTmVnb3RpYXRp
b24NCj4gcmVzdGFydA0KPiAgICAgdGhyb3VnaCB0aGUgYWxyZWFkeeKAkWV4dGVuZGVkIGBpY2Vf
YXFfc2V0X2xpbmtfcmVzdGFydF9hbigpYC4NCj4gDQo+ICAgKiBBZnRlciBlYWNoIGxpbmstdXAg
dGhlIGRyaXZlciB2ZXJpZmllcyB0aGUgZWZmZWN0aXZlIGhhcmR3YXJlDQo+IHN0YXRlDQo+ICAg
ICAoYGljZV90eGNsa192ZXJpZnkoKWApIGFuZCB1cGRhdGVzIGl0cyBwZXLigJFQSFkgdXNhZ2Ug
Yml0bWFwcywNCj4gICAgIGNvcnJlY3RpbmcgdGhlIHJlcXVlc3RlZC9hY3RpdmUgc3RhdGUgaWYg
dGhlIEZXIG9yIEFOIGZsb3cNCj4gYXBwbGllZCBhDQo+ICAgICBkaWZmZXJlbnQgcmVmZXJlbmNl
Lg0KPiANCj4gICAqIFBUUCBQRiBpbml0aWFsaXphdGlvbiBub3cgc2VlZHMgdGhlIEVORVQgcmVm
ZXJlbmNlIGNsb2NrIGFzDQo+IGVuYWJsZWQNCj4gICAgIGJ5IGRlZmF1bHQgZm9yIGl0cyBwb3J0
Lg0KPiANCj4gQWxsIHJlZmVyZW5jZSBjbG9jayB0cmFuc2l0aW9ucyBhcmUgc2VyaWFsaXplZCB0
aHJvdWdoIHRoZSBEUExMDQo+IGxvY2ssIGFuZCB1c2FnZSBpbmZvcm1hdGlvbiBpcyBzaGFyZWQg
YWNyb3NzIGFsbCBQRnMgYmVsb25naW5nIHRvDQo+IHRoZSBzYW1lIEU4MjVDIGNvbnRyb2xsZXIg
UEYuIFRoaXMgZW5zdXJlcyB0aGF0IGNvbmN1cnJlbnQgY2hhbmdlcw0KPiBhcmUgY29vcmRpbmF0
ZWQgYW5kIHRoYXQgc2hhcmVkIFBIWXMgbmV2ZXIgc2VlIGFuIHVuZXhwZWN0ZWQNCj4gZGlzYWJs
ZS4NCj4gDQo+IFdpdGggdGhpcyBwYXRjaCwgRTgyNSBkZXZpY2VzIGdhaW4gZnVsbCB1c2Vyc3Bh
Y2XigJFkcml2ZW4gVFhDDQo+IHJlZmVyZW5jZSBjbG9jayBzZWxlY3Rpb24gdmlhIHRoZSBEUExM
IHN1YnN5c3RlbSwgZW5hYmxpbmcgY29tcGxldGUNCj4gU3luY0Ugc3VwcG9ydCwgcHJlY2lzZSBt
dWx0aeKAkWNsb2NrIHNldHVwcywgYW5kIHByZWRpY3RhYmxlIGNsb2NrDQo+IHJvdXRpbmcgYmVo
YXZpb3IuDQo+IA0KPiBSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVz
ei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3J6ZWdvcnogTml0a2Eg
PGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvTWFrZWZpbGUgICAgIHwgICAyICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlLmggICAgICAgIHwgIDEyICsNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZHBsbC5jICAgfCAgNTMgKysrLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyAgICB8ICAyNyArKy0NCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwLmggICAgfCAgIDcgKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8ICAzNyArKysNCj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuaCB8ICAyNyArKysNCj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV90eGNsay5jICB8IDI1Ng0KPiArKysrKysrKysrKysrKysrKysrKyAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eGNsay5oICB8DQo+IDQxICsrKysN
Cj4gIDkgZmlsZXMgY2hhbmdlZCwgNDQ1IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKSAg
Y3JlYXRlIG1vZGUNCj4gMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
dHhjbGsuYw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfdHhjbGsuaA0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9NYWtlZmlsZQ0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9N
YWtlZmlsZQ0KPiBpbmRleCAzOGRiNDc2YWIyZWMuLjk1ZmQwYzQ5ODAwZiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9NYWtlZmlsZQ0KPiBAQCAtNTQsNyArNTQsNyBAQCBp
Y2UtJChDT05GSUdfUENJX0lPVikgKz0JXA0KPiAgCWljZV92Zl9tYngubwkJXA0KPiAgCWljZV92
Zl92c2lfdmxhbl9vcHMubwlcDQo+ICAJaWNlX3ZmX2xpYi5vDQo+IC1pY2UtJChDT05GSUdfUFRQ
XzE1ODhfQ0xPQ0spICs9IGljZV9wdHAubyBpY2VfcHRwX2h3Lm8gaWNlX2RwbGwubw0KPiBpY2Vf
dHNwbGwubyBpY2VfY3BpLm8NCg0KLi4uDQoNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHBsbF9w
aW5fb3BzIGljZV9kcGxsX3JjbGtfb3BzID0geyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwLmMNCj4gaW5kZXggMDk0ZTk2MjE5ZjQ1Li5hNzVhMTM4MDA5N2IgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPiBAQCAtNCw2
ICs0LDcgQEANCj4gICNpbmNsdWRlICJpY2UuaCINCj4gICNpbmNsdWRlICJpY2VfbGliLmgiDQo+
ICAjaW5jbHVkZSAiaWNlX3RyYWNlLmgiDQo+ICsjaW5jbHVkZSAiaWNlX3R4Y2xrLmgiDQo+IA0K
PiAgc3RhdGljIGNvbnN0IGNoYXIgaWNlX3Bpbl9uYW1lc1tdWzY0XSA9IHsNCj4gIAkiU0RQMCIs
DQo+IEBAIC01NCwxMSArNTUsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGljZV9wdHBfcGluX2Rl
c2MNCj4gaWNlX3Bpbl9kZXNjX2RwbGxbXSA9IHsNCj4gIAl7ICBTRFAzLCB7ICAzLCAtMSB9LCB7
IDAsIDAgfX0sDQo+ICB9Ow0KPiANCj4gLXN0YXRpYyBzdHJ1Y3QgaWNlX3BmICppY2VfZ2V0X2N0
cmxfcGYoc3RydWN0IGljZV9wZiAqcGYpIC17DQo+IC0JcmV0dXJuICFwZi0+YWRhcHRlciA/IE5V
TEwgOiBwZi0+YWRhcHRlci0+Y3RybF9wZjsNCj4gLX0NCj4gLQ0KPiAgc3RhdGljIHN0cnVjdCBp
Y2VfcHRwICppY2VfZ2V0X2N0cmxfcHRwKHN0cnVjdCBpY2VfcGYgKnBmKSAgew0KPiAgCXN0cnVj
dCBpY2VfcGYgKmN0cmxfcGYgPSBpY2VfZ2V0X2N0cmxfcGYocGYpOyBAQCAtMTMyNSw2DQo+ICsx
MzIxLDEwIEBAIHZvaWQgaWNlX3B0cF9saW5rX2NoYW5nZShzdHJ1Y3QgaWNlX3BmICpwZiwgYm9v
bCBsaW5rdXApDQo+ICAJCQkJcmV0dXJuOw0KPiAgCQkJfQ0KPiAgCQl9DQo+ICsNCj4gKwkJaWYg
KGxpbmt1cCkNCj4gKwkJCWljZV90eGNsa192ZXJpZnkocGYpOw0KbXNsZWVwKCkgdW5kZXIgbXV0
ZXggc21lbHMgYmFkbHkuLi4gLyogaWNlX2NwaV93YWl0X3JlcTBfYWNrMCgpIGFuZCBpY2VfY3Bp
X3dhaXRfYWNrKCkgKi8NCnBmLT5kcGxscy5sb2NrIGNhbiBiZSBoZWxkIH4yc2Vjb25kcyBibG9j
a2luZyBpY2VfZHBsbF9wZXJpb2RpY193b3JrKCkuDQpDYW4gQ1BJIGhhbmRzaGFrZSBoYXBwZW4g
b3V0c2lkZSB0aGUgbG9jaz8NCg0KPiArDQo+ICAJCW11dGV4X3VubG9jaygmcGYtPmRwbGxzLmxv
Y2spOw0KPiAgCX0NCj4gDQoNCi4uLg0KDQo+ICovDQo+IC0tDQo+IDIuMzkuMw0KDQo=
