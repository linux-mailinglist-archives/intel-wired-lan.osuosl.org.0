Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPk7I3o6zGn7RQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 23:19:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E01303718E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2026 23:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E76D80675;
	Tue, 31 Mar 2026 21:19:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJ77X3nEC8E0; Tue, 31 Mar 2026 21:19:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A746F806A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774991991;
	bh=At/d5F2FTyojMXYzODv2YCzd7hLbO79grk1VuZC145A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZO0u7yD6C7BxpxjnkM0a69/Z1Qly43NJ2ErCOC71S1t4veBCzefc82vfLgyhQfbmk
	 EJgf0upeJ8+7HOUcQBBzKWN5F08vIoIPAaT+DZSmAxQNDreFIL79dVWwf1ViNPHh+J
	 a4U4x1Hw314gD3iphFrG65au6DvYC1i6i9TEjv3D9HilkmWnXfhr89bHUdOl998Vaw
	 AQ7YX4wdKPlJgfn129agqRstq4AXEDUr2QUt675wWpmaf3hY5+pPcIvodEQxkOFHpk
	 Ryav0AF1u3ydYyPwG5MmfYm4cwXNG9upmmyKX/9E/gWKchd3rtarjkDE2msXHzOBt1
	 wtupZGngyNTzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A746F806A1;
	Tue, 31 Mar 2026 21:19:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CC49E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDF6A60BD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:19:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kreOK2tlLdg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2026 21:19:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEB3160B97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB3160B97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEB3160B97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2026 21:19:48 +0000 (UTC)
X-CSE-ConnectionGUID: C9oJf1kQRmGuZz1gmkmxYQ==
X-CSE-MsgGUID: 614mr8aMQDyr1CfxoXTamQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75905297"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75905297"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 14:19:48 -0700
X-CSE-ConnectionGUID: rvve35aqSkWQk6qfvo87Ig==
X-CSE-MsgGUID: V1gnYl80R+i9ToVSd5dGkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223603149"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 14:19:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 14:19:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 14:19:46 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 14:19:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k+et6MmdwEWCL4x+0YhjOn+MMUm640nvkNFTlqiKRXtplmfO21wnN3PsIPWB2FnGMj6uniKociCoeXl9U6+bvl1q+D9dDCSk3e1bv6ReD3S5iF7b0WKsy04Upqwp9epsQolmUQ7WfQotlBdfXDZERO7ajg06yE5ADkGEM3Vfdu3BMqLmk8W8126+2jUJ0UKFmYrPdq0HdyvQ+LriOM/Tx4Ym2KcPsdIwqDcwtZBlGFljq30eZqRGsoBlz1SNRPw9pOv8sdJ8RfA6QJlz3Wgh77kSR+KaEQlrzoR0jTXZ6NUzq3r1EMy6IdyHW+AsRrUCWNob/Iaiiecxs/kHyVyzfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=At/d5F2FTyojMXYzODv2YCzd7hLbO79grk1VuZC145A=;
 b=G8IxBAoThWbTfTx5XIoHoAr43mO42dvH0LHRQlYTQ7+ESm7Jlnkli2yVIC9Qrm3ZVtyAN9Gv0uMc7zaSKqU7UVRyb9BYC3i9RI3iSw/mc3d8QQmGLdnnUdk7cysv+BKX6AzxVp8/8yR9bVLeIq5MvTO4KWTuF8SREdOg0aFv4CFVYsPdoiAhW39txoznwrrUQx7h+h2dhpzgEOFVBUDf2jMLvM1dREBmvLDWDpFB8AFv6ElwvM7Rjqbg5S7pri//ftSP4QdyvPk20HWy662unLElhEkN1IYlL5yYfcKLm0pWaIGZDNqFxSXX8YBfKv8jLSfUs6ibh/d1VDoxEe0evg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 21:19:42 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:19:42 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
Thread-Index: AQHct5HDdy20lJJyb0mGcszQ7uelC7W/fYqAgAfWUICAAePEMA==
Date: Tue, 31 Mar 2026 21:19:41 +0000
Message-ID: <DS0PR11MB75794D66D8DEDA0F67A5088ED653A@DS0PR11MB7579.namprd11.prod.outlook.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
 <dbe4af5f-b8c6-4abe-bd55-8f970e18add9@intel.com>
 <IA1PR11MB6219D3F43CF0192FFAE07CD89252A@IA1PR11MB6219.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6219D3F43CF0192FFAE07CD89252A@IA1PR11MB6219.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7579:EE_|PH0PR11MB7471:EE_
x-ms-office365-filtering-correlation-id: 7e254548-3e66-40f8-44c7-08de8f6b3960
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: KUQ98p+qz+DY84vl0mM7mN4ucTJa+KDhh6D6n1Yug87P/GSbpFeoX8ptmmjUaxwC/5RZ/3ZY/dMq9BmH3Un1D1ftA2s7V1MmMW4PyG09kEffVbmWYq6XIeciSUhSa2bhEK9MIhiHVYlHho3Ou+g2VdZRwQOFVK6FQpNJEg8eIKYByptV//szNCt/TYDED4c9MZLNhIe1xPrHhZll/SzbhjVeyxouxh2A5fuCBCkYclESqQpAoJ60rT9df4fya40AU6O7HzMKOBwkEpBl2+qF89CtP6C8B2rMjHzC1ElJ8QJGGh9JLMIAKZAFCrDxGBPoKWcEaw+ev8fCr/GUeVY+8m7X6ComL0NBBC5OLQprElI0sEeySeLuE9HnngRlkJpqcj2PDhwqS76QsfKDPWlWbpe1g4C8pyppZx2naTo/9WCcNMoufK/KzUMcxjv2PTAU5YLHBrsblqdGkQ3DHcT71lRvLdGabwnChoz1zWyQYWILWzK3+fmHoaB/cWZ33WMalMFNXIqcvGsXvQnSFwJiOIEK25Fu0K4ZdaU3PndenuIDe8w7BqFu/cntHpP5Z98dS7KiMw/MWhjMfroA1lSQBZvpVuTKx1N4UXG9F6Mm6+J6Pj4f30yh0FciZpN0kCJBujOtEacCKDEA20okIgOeZ8JD92s7QRoSOcdhl7kMQamwNt9ywAtV9dESwjSDkCqC1AfynekLIMA9RBIBlLTFeKQZiuXt1BkHGgL+A9EY+7sB1+PEkuMKxnqwOfplK86QNXMYEkOkNFCX1bzqAjN5rVKqp4dveZPESgjhj6gxyEIMJvjpWV8TVw9gxU+u6Y44
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU9jVzVINkhobFZnRUdEQXNVNnR3TUJUUmVIN0ViNFZ0Ny9aWTlwVUNZbXhu?=
 =?utf-8?B?REtjekd5bGpDV0Z6WXFjYVFKZzhibCs0ZjEwY09lcGhScFBsQjZ5UTBRVXRF?=
 =?utf-8?B?T2VpbjlpU2pYcGN6RnYwRVZ2ejJZMjZNdmJLMVFsNkJaSnRkS29oQkdBSXlT?=
 =?utf-8?B?b2ttdGtHeW1HZ1BZVFJkYUVvdVJLM2tncVpJWDZWWXdoa0NTb3k0RlpuNk9w?=
 =?utf-8?B?NkpkUHNpNExNSThjY1pGZGREUGh6M2w5TThSTWZEWU80TUdFdE9ZQ1JDdnBx?=
 =?utf-8?B?Y1JsTldTR3hGb1JzQWxoS0dIaDM4emx6OUVqL0JPaTExWWh2TUNFSnRJeTFE?=
 =?utf-8?B?Q1Jvc3F4MERZbHVpZGYwV2ZhRGpXc3lCS29sM1RRZnduUTZQS2FlRVFta092?=
 =?utf-8?B?SzVlenNZU1VONERyS2lyNHJnSVVNQXQzbGVzd1V0Nlg5YmdWRi9YWCsxVkg0?=
 =?utf-8?B?UEZTcXNvNUhYYUh5QmY2TjNZc1ZpanBjSkhjREV1NDRSYklJdGsrWktsMkZS?=
 =?utf-8?B?RWtMOFprVlkrdlpYZ3o3bkoyeWJuZW9WdlJlSmV2US9nZFFyM05jT3RWQ3RT?=
 =?utf-8?B?WkJxTVdvd2VxSUh3QjlvS3BXUXJlVGdjRzlHWmZQNU04L1VYVTJnSHRhQ21n?=
 =?utf-8?B?WmtsS2pMMjNRdEQ0WnhFclMrUVhRQWdFY1NCMS9ML2lQTThac3FSV01ZY2RL?=
 =?utf-8?B?dE5kQmYxOUlaNThmVDFNOFNudDEwMzFKTHE1aDF5bUYzdWd2NU9PTk9Dd0xr?=
 =?utf-8?B?a0NuTldKSkk4VjltMnJjNURHMTJLVGtGMTgvMXFFemVDMUVOYUVZZTZJN0tU?=
 =?utf-8?B?SFM5ZWUxcUtTZ1ExOUVJbCtZcDZSK3MwbXJKQ0JDdTJMYUIzRFBQVWEzWVc0?=
 =?utf-8?B?N3dUOEc0bnViOEV0YUlFYmRGWXBNL3NpaVRkLzJYMFhpS3I3dkQrRHlCbVVQ?=
 =?utf-8?B?eHlQampYbUFQd0VKUGZSTWZGM1VnUHpUSHJuMWI5SmwzR1VIWGd5VUd0WFhn?=
 =?utf-8?B?SE1tNk9zOTVGcFYxYmU2UmJiU1o4V0hZNlBCNnkrRUVzSmo0dmt0RFJsTGRO?=
 =?utf-8?B?ZWs1U3VtSEdZN1ZpekdaZ3lLa0ZoOHl0eGhTUXM5STlMYklIcFJkWHkxempa?=
 =?utf-8?B?YnlwOWVqY3dueXV2cWJhT1oralVJNmJickR5OXlVeThKSkxtdFNQN3gwWW5W?=
 =?utf-8?B?VnZUWTZQMnJQZWY3dXFNOEJHRHQ1akFFNURPWTNNS1lhQUh5M3YwNlY4ZkNP?=
 =?utf-8?B?RE5PM3h4Qi9rZk53U1VubzltTndvNUp6RWJMa1NEVzYzWXdENG96Tm9xaHZh?=
 =?utf-8?B?VVpObUIwU0Iyb3p2SjltMnkxODZqb2NZRmN2MzJsOUJiU3J3a25ybFdSaU4v?=
 =?utf-8?B?YU91T3VwbXhhbU14RzNPaU1id0QxZ0FIL2R4dm52V1J1a0JPQi9yMzdXY3Nv?=
 =?utf-8?B?bDh4eklCZWRLTjNpZUlZeE5MQ3o0K2RvWEdBV0xudTZQWDJIcEFvd25BZWRo?=
 =?utf-8?B?YkZONVpFSC82YldFNHRwZHlaeGhkSE1rN1c5eEpKblNQQ0xwK0IzSkNzOTR2?=
 =?utf-8?B?SkMrSlh1U21FWEZGQ1k2Z2hGQTVLQklRdHVIam84THkvcWtzdWg2ZGlNeGRt?=
 =?utf-8?B?c2NiZFJLckJLNDZIc1VPZEZoV3ZNSkVDTGRXSWVucDU0a28zQlVIdG1uOGEz?=
 =?utf-8?B?Q1pidWdQTVlSRHBVcmFtY04rOWFqWmVhK04yUXg1OEhrOFpLRi9jMm0yenpG?=
 =?utf-8?B?MXdPS3hOUUtSYmd1R1pzaG9sT0tKU1hRVXJ0eE1RM3I5cGJJNUdaSHZZWFdU?=
 =?utf-8?B?Qm00dGNyTUZoME1OaFZkeWlGZ2p6TW0vRW00V1RUMEl4aDdvTzNza01ocFBU?=
 =?utf-8?B?OWlqNzdXUmNzZEZvL296VXA4cTJVdmFDY2FpNEMrN084OGg2eWZ1eHBiM05a?=
 =?utf-8?B?dVgwU0pyOUVncC9rNFNUcHlBckVrV25wcHpHdHV2cTNrdzV5SE9rdFY3ZUgz?=
 =?utf-8?B?emc1L0c2ZDFzeWJSY3diNmpiWVg4QXkycXBDZVg4aFAvQWFNdWgveG9ZS3ZI?=
 =?utf-8?B?bjNmcVltMU93RGxJV1g4YWdRcW1BQnFkQ3ovUDNCTFh4MnFCUDRNOEFZVEp4?=
 =?utf-8?B?bHlJWFozVGttU0xPVG8yb0w0S241cjlpVVFOSFdCQTFQZ00vVEpoUzgybHNt?=
 =?utf-8?B?cFUybHdiOTFsOUdZcUV0SWlzUE42Q3U0NjdUWEs1WklXMDBnYmtXWE1ZaVlS?=
 =?utf-8?B?U0FRT1UrWm00TmtWNHpqYndpMm9sZkNDclhzcEdBUUpJU3JuUWNSSkFVM3VD?=
 =?utf-8?B?K2MvMHNuNTNRa0U0cy9aYmdWTWRZZkNDNGdqZXBpa0tmVTJmWkd5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: i3lOMEkYpShInNHASSFFymK/gy8GBkOGYUKHKDrZ/SAVkPrlOjfyYqU4Pvtq1bcyJht+s1stA9Q8gj5qj+hgUKgHl7smA8GoY6YDL5dR+Y1stNKBNegiO4qVZXHJhjCzadhUs+qUYO/OAZGBaeKNsi5Uf3P/w8v7d3RrBABP73xhUQUQG5gU777wULp77Bef6JOlfjwl71e7yELAwj+CO1MKijlt2+/Ck9du7qWxGT/ktaqy+2kEOeYUkeu7DmR2vgAaM5FnuE3HEsB9gHj0b6ur4kI4CZvKlt215et3xiClFmSSgTsTt5oLcP5cKd11+TXAnVTKOaroCNdtAbFoHA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e254548-3e66-40f8-44c7-08de8f6b3960
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 21:19:41.9988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3BmiagvNv2zJDc3GStX46JVYfDXTGUMV3ZU15P3cKA4lFVWTlOhvIgB+JQzJ4TUFZ54g0HjyUXFqVM6xWHGdrT1Okw5gi9eVMZBDO942Nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774991989; x=1806527989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=At/d5F2FTyojMXYzODv2YCzd7hLbO79grk1VuZC145A=;
 b=hzZPdV06dLAu+RKuLHSAMZDkRldrxPh/RZflVWzN9mg6tGZ1TH/2zFRA
 +9zxP3y9cE1nbo+oqgbVO1pysNtZEhZ53Y32boqdyWuGFKJ+80lBxPLmm
 gLUJ8Co2n16JtoKqhUlcgnZsCR481IZENLRXh7UJVTbqcM6S2KWzSCeY4
 avz+HEXlYuOZaEoA3rTEPFxOp2umed53i1fBlSQyasyDNB8dfqETw+p8n
 tr74aQ2nfnR9tFgzO76sDoLwWoXS35luAjIWeLP37TXneeoX8BtqawWyl
 A2pXeORtc1akoJ9nTgGOTB7J4ml0iakmK4k1qFI+R26WKVkL8tTLkpi5y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hzZPdV06
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: E01303718E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTml0a2EsIEdyemVnb3J6
IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMzAsIDIw
MjYgOToyMyBBTQ0KPiBUbzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+OyBLb3JiYSwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRlbC5jb20+OyBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsg
S2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyXSBpY2U6IGZp
eCBwb3N0ZWQgd3JpdGUgc3VwcG9ydA0KPiBmb3Igc2lkZWJhbmQgcXVldWUgb3BlcmF0aW9ucw0K
PiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50
ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhh
bGYgT2YNCj4gPiBKYWNvYiBLZWxsZXINCj4gPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjYsIDIw
MjYgMTI6NDIgQU0NCj4gPiBUbzogS29yYmEsIFByemVteXNsYXcgPHByemVteXNsYXcua29yYmFA
aW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+ID4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gPiBD
YzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPiA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+ID4gPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCBpd2wtbmV0IHYyXSBpY2U6IGZpeCBwb3N0ZWQgd3JpdGUgc3VwcG9ydA0KPiA+IGZv
ciBzaWRlYmFuZCBxdWV1ZSBvcGVyYXRpb25zDQo+ID4NCj4gPiBPbiAzLzE5LzIwMjYgNDoxMyBB
TSwgUHJ6ZW15c2xhdyBLb3JiYSB3cm90ZToNCj4gPiA+IE9uIEU4MzAsIFBUUCB0aW1lIGFkanVz
dG1lbnQgY29tbWFuZHMgc2VudCB2aWENCj4gPiA+IFNCUSBkb24ndCBnZW5lcmF0ZSBjb21wbGV0
aW9uIHJlc3BvbnNlcywgY2F1c2luZyB0aGUgZHJpdmVyIHRvDQo+ID4gPiB0aW1lb3V0IHdhaXRp
bmcgYW5kIHJldHVybiAtRUlPLCB3aGVuIHRyeWluZzoNCj4gPiA+DQo+ID4gIEhtLiBJcyB0aGlz
IHJlYWxseSBmb3IgRTgzMD8gSSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IGRldmljZSBhY3R1YWxseQ0K
PiA+IHNlbmRzIFNCUSBjb21tYW5kcyBmb3IgUFRQPw0KPiA+DQo+ID4gQWNjb3JkaW5nIHRvIGlj
ZV9wdHBfYWRqX2Nsb2NrIGZvciBFODMwLCBpdCBzYXlzICJFODMwIHN5bmMgUEhZcw0KPiA+IGF1
dG9tYXRpY2FsbHkgYWZ0ZXIgc2V0dGluZyBHTFRTWU5fU0hBREoiLg0KPiA+DQo+ID4gRGlkIHlv
dSBtZWFuIEU4MjUtQyBoZXJlPyBDYW4geW91IGNvbmZpcm0gdGhlIGRldmljZSB0eXBlIGFmZmVj
dGVkPyBPcg0KPiA+IGFtIEkgbWlzc2luZyBzb21ldGhpbmc/DQo+ID4NCj4gPiA+IHBoY19jdGwg
ZXRoOCBnZXQgYWRqIDIgZ2V0DQo+ID4gPiBkbWVzZzogaWNlIDAwMDA6MWE6MDAuMDogUFRQIGZh
aWxlZCB0byBhZGp1c3QgdGltZSwgZXJyIC01DQo+ID4gPg0KPiA+ID4gQWRkIHN1cHBvcnQgZm9y
IHBvc3RlZCBtb2RlIG5vdCB0byB3YWl0IGZvciBjb21wbGV0aW9uIHJlc3BvbnNlLg0KPiA+ID4N
Cj4gPiA+IEZpeGVzOiA4ZjVlZTNjNDc3YTggKCJpY2U6IGFkZCBzdXBwb3J0IGZvciBzaWRlYmFu
ZCBtZXNzYWdlcyIpDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEtvcmJhIDxwcnpl
bXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gdjI6DQo+ID4gPiAtIGNo
YW5nZSAicG9zdHBvbmUiIHRvICJwb3N0ZWQiDQo+ID4gPiAtIGluaXQgc3RydWN0IHdpdGgge30g
aW5zdGVhZCBvZiB7MH0NCj4gPiA+IHYxOg0KPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
aW50ZWwtd2lyZWQtbGFuLzIwMjYwMzEwMTEwNzAwLjM0NTkwNC0xLQ0KPiA+IHByemVteXNsYXcu
a29yYmFAaW50ZWwuY29tLw0KPiA+ID4NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2NvbW1vbi5jICAgfCA3ICsrKysrKy0NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgfCA0ICsrKysNCj4gPiA+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAxICsNCj4gPiA+ICAzIGZpbGVz
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+DQo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0K
PiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+ID4g
aW5kZXggODg2NjkwMmVmYjkxLi5jODljNmNhMTI4MWIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gPiBAQCAtMTc2NSw2
ICsxNzY1LDcgQEAgaW50IGljZV9zYnFfcndfcmVnKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QN
Cj4gPiBpY2Vfc2JxX21zZ19pbnB1dCAqaW4sIHUxNiBmbGFncykNCj4gPiA+ICB7DQo+ID4NCj4g
PiBUaGlzIGFmZmVjdHMgdGhlIGljZV9zYnFfcndfcmVnIGZ1bmN0aW9uIHdoaWNoIGlzIHVzZWQg
Ynkgc2V2ZXJhbA0KPiA+IHZhcmlhbnRzIGluY2x1ZGluZyB0aGUgRTgyMiBkZXZpY2VzLCBFODI1
LUMgd2l0aCBFVEg1NkcsIGFuZCBldmVuIEU4MTANCj4gPiBkZXZpY2VzLg0KPiA+DQo+ID4gRG8g
YWxsIHRoZXNlIGRldmljZXMgbm90IHByb3ZpZGUgY29tcGxldGlvbj8gT3IgZG8gd2Ugc2ltcGx5
IG5vdCBjYXJlDQo+ID4gYWJvdXQgd2FpdGluZz8NCj4gPg0KPiA+IEkgZG9uJ3Qgc2VlIGEgc2lu
Z2xlIGNhbGwgdG8gaWNlX3NicV9yd19yZWcgZm9yIEU4MzAsIHNvIEkgc3VzcGVjdCB0aGlzDQo+
ID4gaXMgY29ycmVjdCBidXQgZm9yIGEgZGlmZmVyZW50IGRldmljZSwgYW5kIHRoZSBjb21taXQg
bWVzc2FnZSBpcyBqdXN0IGENCj4gPiB0eXBvPw0KPiA+DQo+IA0KPiBJIHN0cm9uZ2x5IGJlbGll
dmUgdGhpcyBwYXRjaCBpcyBuZWVkZWQgZm9yIEU4MzAgZGV2aWNlcy4NCj4gUGxlYXNlIG5vdGUg
dGhhdCBhZnRlciB0aGlzIGZpeDoNCj4gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9q
ZWN0L2ludGVsLXdpcmVkLQ0KPiBsYW4vcGF0Y2gvMjAyNTEyMTgwOTQ0MjguMTc2Mjg2MC0xLWdy
emVnb3J6Lm5pdGthQGludGVsLmNvbS8NCj4gdGhlcmUgIGlzIGFjdHVhbGx5IGEgY2FsbCB0byBp
Y2Vfc2JxX3J3X3dyaXRlLiBBbmQgd2UgdXNlZCAncG9zdGVkJyB2YXJpYW50IGZvcg0KPiB0aGlz
IGNhc2UuDQo+IA0KPiBSZWdhcmRzDQo+IA0KPiBHcnplZ29yeg0KPiANCg0KSG1tLiBUcnVlLiBJ
IHRoaW5rIHRoZSBjb21taXQgZGVzY3JpcHRpb24gY291bGQgc3RpbGwgYmV0dGVyIGluZGljYXRl
IGl0IGFmZmVjdHMgbXVsdGlwbGUgZGV2aWNlcywgYnV0IHRoYW5rcyBmb3IgY2xhcmlmeWluZyB0
aGF0IGl0IGRvZXMgaW4gZmFjdCBhbHNvIGFmZmVjdCBFODMwLiBHb29kIQ0KDQpMb29raW5nIGF0
IHRoZSBmaXggeW91IHBvc3RlZCwgSSB0aGluayB3ZSBtaWdodCBhY3R1YWxseSBoYXZlIHRvIGRv
IHRoZSBzYW1lIGZpeCBmb3IgaW5jdmFsdWUgd3JpdGluZyBhcyB3ZWxsLCBzaW5jZSB0aGF0IGZ1
bmN0aW9uIGFsc28gZGlkbid0IGlzc3VlIGEgdGltZXIgY29tbWFuZC4gQ2FuIHdlIGNvbmZpcm0g
dGhpcz8gSXQgbG9va3Mgc29tZXdoYXQgc2ltaWxhciwgYnV0IGRpZmZlcmVudCBlbm91Z2ggaXQg
bWlnaHQgbm90IGFjdHVhbGx5IGJlIGEgcHJvYmxlbS4gDQoNClRoYW5rcywNCkpha2UNCg0KDQo+
ID4gPiAgCXN0cnVjdCBpY2Vfc2JxX2NtZF9kZXNjIGRlc2MgPSB7MH07DQo+ID4gPiAgCXN0cnVj
dCBpY2Vfc2JxX21zZ19yZXEgbXNnID0gezB9Ow0KPiA+ID4gKwlzdHJ1Y3QgaWNlX3NxX2NkIGNk
ID0ge307DQo+ID4gPiAgCXUxNiBtc2dfbGVuOw0KPiA+ID4gIAlpbnQgc3RhdHVzOw0KPiA+ID4N
Cj4gPiA+IEBAIC0xNzg1LDEwICsxNzg2LDE0IEBAIGludCBpY2Vfc2JxX3J3X3JlZyhzdHJ1Y3Qg
aWNlX2h3ICpodywgc3RydWN0DQo+ID4gaWNlX3NicV9tc2dfaW5wdXQgKmluLCB1MTYgZmxhZ3Mp
DQo+ID4gPiAgCQkgKi8NCj4gPiA+ICAJCW1zZ19sZW4gLT0gc2l6ZW9mKG1zZy5kYXRhKTsNCj4g
PiA+DQo+ID4gPiArCWlmIChpbi0+b3Bjb2RlID09IGljZV9zYnFfbXNnX3dyKQ0KPiA+ID4gKwkJ
Y2QucG9zdGVkID0gMTsNCj4gPiA+ICsNCj4gPiA+ICAJZGVzYy5mbGFncyA9IGNwdV90b19sZTE2
KGZsYWdzKTsNCj4gPiA+ICAJZGVzYy5vcGNvZGUgPSBjcHVfdG9fbGUxNihpY2Vfc2JxX29wY19u
ZWlnaF9kZXZfcmVxKTsNCj4gPiA+ICAJZGVzYy5wYXJhbTAuY21kX2xlbiA9IGNwdV90b19sZTE2
KG1zZ19sZW4pOw0KPiA+ID4gLQlzdGF0dXMgPSBpY2Vfc2JxX3NlbmRfY21kKGh3LCAmZGVzYywg
Jm1zZywgbXNnX2xlbiwgTlVMTCk7DQo+ID4gPiArCXN0YXR1cyA9IGljZV9zYnFfc2VuZF9jbWQo
aHcsICZkZXNjLCAmbXNnLCBtc2dfbGVuLCAmY2QpOw0KPiA+ID4gKw0KPiA+ID4gIAlpZiAoIXN0
YXR1cyAmJiAhaW4tPm9wY29kZSkNCj4gPiA+ICAJCWluLT5kYXRhID0gbGUzMl90b19jcHUNCj4g
PiA+ICAJCQkoKChzdHJ1Y3QgaWNlX3NicV9tc2dfY21wbCAqKSZtc2cpLT5kYXRhKTsNCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xx
LmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYw0K
PiA+ID4gaW5kZXggZGNiODM3Y2FkZDE4Li5hNjAwOGRjNzdmYTQgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMNCj4gPiA+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYw0KPiA+ID4g
QEAgLTEwODYsNiArMTA4NiwxMCBAQCBpY2Vfc3Ffc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcs
IHN0cnVjdA0KPiA+IGljZV9jdGxfcV9pbmZvICpjcSwNCj4gPiA+ICAJd3IzMihodywgY3EtPnNx
LnRhaWwsIGNxLT5zcS5uZXh0X3RvX3VzZSk7DQo+ID4gPiAgCWljZV9mbHVzaChodyk7DQo+ID4g
Pg0KPiA+ID4gKwkvKiBJZiB0aGUgbWVzc2FnZSBpcyBwb3N0ZWQsIGRvbid0IHdhaXQgZm9yIGNv
bXBsZXRpb24uICovDQo+ID4gPiArCWlmIChjZCAmJiBjZC0+cG9zdGVkKQ0KPiA+ID4gKwkJZ290
byBzcV9zZW5kX2NvbW1hbmRfZXJyb3I7DQo+ID4gPiArDQo+ID4gPiAgCS8qIFdhaXQgZm9yIHRo
ZSBjb21tYW5kIHRvIGNvbXBsZXRlLiBJZiBpdCBmaW5pc2hlcyB3aXRoaW4gdGhlDQo+ID4gPiAg
CSAqIHRpbWVvdXQsIGNvcHkgdGhlIGRlc2NyaXB0b3IgYmFjayB0byB0ZW1wLg0KPiA+ID4gIAkg
Ki8NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbnRyb2xxLmgNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29u
dHJvbHEuaA0KPiA+ID4gaW5kZXggNzg4MDQwZGQ2NjJlLi5jNTBkNmZjYmFjYmEgMTAwNjQ0DQo+
ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmgN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEu
aA0KPiA+ID4gQEAgLTc3LDYgKzc3LDcgQEAgc3RydWN0IGljZV9jdGxfcV9yaW5nIHsNCj4gPiA+
ICAvKiBzcSB0cmFuc2FjdGlvbiBkZXRhaWxzICovDQo+ID4gPiAgc3RydWN0IGljZV9zcV9jZCB7
DQo+ID4gPiAgCXN0cnVjdCBsaWJpZV9hcV9kZXNjICp3Yl9kZXNjOw0KPiA+ID4gKwl1OCBwb3N0
ZWQgOiAxOw0KPiA+ID4gIH07DQo+ID4gPg0KPiA+ID4gIC8qIHJxIGV2ZW50IGluZm9ybWF0aW9u
ICovDQo+ID4gPg0KPiA+ID4gYmFzZS1jb21taXQ6IGFjZDJhYmM1MmRlYTkxYzNiYzNkMWI2ZGQ4
YTkyYjk2MzFkNDhiYmYNCg0K
