Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D8C9B3A9B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 20:42:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFF3E4059E;
	Mon, 28 Oct 2024 19:42:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xda_E1mowEs3; Mon, 28 Oct 2024 19:42:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B9544059F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730144570;
	bh=ZgGRgZ3mI/ugWm/pFrihAtiAJCxIFU4ZzagtaQkLdo8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X/Na1v4BxnuFwa11ImUuf9MbguHjuhgG9WI8pCJ/WiweDWqkJq5QU6Sq4jlw9YpqP
	 CdjsNaOhsl9z7OG1mxtlfS0DiTdUvvbAJCMIIORxJweE3tzAiQCPuLdn/K8gNihoo6
	 zpEGdcnCM5v337LP4MSmASq73jUyk/bxJBCQBOY5Eunie7DzITGYm4RKhggEtOh45u
	 p1MOase/JM4aawdh653p/phX9E/xwGW1exvCoIzU2jq6zqDxIfnJuBXG2HEm5vKF9+
	 MsHdSegaE/1qXPuzITKDIPDQpTxfXztT3CR/4hNzy43QFirn3UEdWlet8+ihO9UHmd
	 4GIm38qhPFwKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B9544059F;
	Mon, 28 Oct 2024 19:42:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1F90AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:42:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9310880E12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:42:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MlDkSHPLRATZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 19:42:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DECC80ABF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DECC80ABF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DECC80ABF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:42:46 +0000 (UTC)
X-CSE-ConnectionGUID: kjiemLQcQqeNAwIBf3x03g==
X-CSE-MsgGUID: VaW8UOoPRr2jiAbu//PGrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29872157"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29872157"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:42:46 -0700
X-CSE-ConnectionGUID: F5FBUGgXQGCQ5FGr5JhzNw==
X-CSE-MsgGUID: qMFQaP3lSEqy+WesZFSteQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81878988"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 12:42:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 12:42:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 12:42:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 12:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SZ6rY09QocYRtaFG4lxMX9Tl0przkBjlsMyRWGq74DBa1vMYwX5R/7ua5QHTg3sol5HgyqerD/YudjzW/XmrWZbKKBjxauibr3UX0JUVNakVLOUMJIRqPYBo+G5pBh2RhCoQw9ja5Mwn7OxzZUMFkvVbhI4Y1BRVBLBDV54REgg5tTMjDmA+QABCJLgQKc6xs4hs3NbPdazmNjTzgcNYzZIdDOl6nGUaazdWX9R5l2SFcJaf/ikvjkFT86SZHsP0LT0Y68m5Ju9JN9B4kH+XyhsP5rv08YiTpZoMOtyLqzJANMhvDEy5t9wweYzS/Es+eUl0fO781Dtf/ej90LlNig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgGRgZ3mI/ugWm/pFrihAtiAJCxIFU4ZzagtaQkLdo8=;
 b=iiqoJHSLqiFNCSThtO9HS8qTTEEZEuMklev0dX0lgY31Fv4Ozg/fN+jwk02O2PFwti+fmTGfMnQYb4LJQP/CZH8lpTVmzZXEsQ5LLj5JKgXid9p1x3h8Lx4PLCgnFLXIMIzTw98+wdsi2QOygxNT7epk7xEhdPF+mBRvYB1tUOPal01AmhEeLWy1IQdI7rge5auBedHTnxf4E0CcH8fqmIDTYA34SXWi4LqH/cT0LPFwgf27QqMbpUO9BIrFsuyr65VQYoKqI+bhJd5u9MwCxlIodvt5bImQO2rBKE/r8q6WCLc2Ow4kQD56ueQQm041vv1Ml4Xp9XVF48maSD3mwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by BL3PR11MB6457.namprd11.prod.outlook.com (2603:10b6:208:3bc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 19:42:36 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8093.021; Mon, 28 Oct 2024
 19:42:36 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 0/4] Fix E825 initialization
Thread-Index: AQHbGx/8cOdohy2CdUm78GQ1WG+Sj7KKD72AgBKb8CA=
Date: Mon, 28 Oct 2024 19:42:36 +0000
Message-ID: <IA1PR11MB6219AA96E5657E994330E8DA924A2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
 <52932429-4e6c-40e3-8dd1-988e1be02b20@intel.com>
In-Reply-To: <52932429-4e6c-40e3-8dd1-988e1be02b20@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|BL3PR11MB6457:EE_
x-ms-office365-filtering-correlation-id: 64a1f62f-fac3-46e4-d03c-08dcf788aca2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RkhRSmVxdmRkbXVvbldJaEJaR2ZaNW1MclpGaTdjN1VISE9mSkFQSFVuenZx?=
 =?utf-8?B?czBUaFR0REkzZ1cvcFNZQTFuK0NacEk0U1p3dlNIU041bmpLdUV4MlJ5TCtt?=
 =?utf-8?B?MGZDbjBHb3BwKzVzZEFZc3FoMGxIZTlVM041OHpQTktNcnNrMXJkUE5EUjFI?=
 =?utf-8?B?dW8vK1k1VEYzd1BINHBpSEhqSlE0TCtYb1RmMjA2WGwwZUlxajRnYXEvU1BP?=
 =?utf-8?B?RjJDNFp0ZmRwdjZxRUtwbk96S012VXBjK0hxT2NMQ1lNeDJwejdhRzY0eGdV?=
 =?utf-8?B?K05lZnczSS8rNUNmN0ozRzd4RzMzU0FZL3B2eDRXdGt6Y2ptOVNpZkJRN2Uv?=
 =?utf-8?B?Mk1oS2lEK0pnUjZnMURMTlNUSnVremtqeCt3ZW1DSzByOUxNaFNsZTJKOTF0?=
 =?utf-8?B?WXpyMmIrUmFOMVdIcGdSeGlmU0VjS3Eram1ZSGRWaitEdGNqNzdOSVhRUjg2?=
 =?utf-8?B?ZDdjbllNLzF4R0cyVnJ2L0c4dEZrcklaalNFYzRMVXJZSzFKZXlMeURPQTly?=
 =?utf-8?B?V2VOQmpPdWhWRWhSMFJaTmpVTHpVTFFvTmFlMzJKeForNXBpWVIyb2g4YU9Z?=
 =?utf-8?B?UENoUFdmNFBQc25IbXRmZ3FSTkwzQXdOUTVmaElxckdYZkZZQmRFTVdSd0FR?=
 =?utf-8?B?dG9CamUxYWk3MVBKUHYzMnBoeWR1ZldqSVB3QnpFUDE2YmtlM0dhaXE4T011?=
 =?utf-8?B?VUswelZ1OUhQejZmTWhrRXhIa2pBYUpibTNzN1NqNExzNnRHZWkxdk4vS2FY?=
 =?utf-8?B?dU9ZRW9VNHdVZUFxR1M5SmhIOFJSL2lpSkdtZDRuQXg3QnZBbUVFM2srR29Y?=
 =?utf-8?B?Nys0Z1BldEFsZCtVREUrNlI5REszaUdNRzlGWEp3R3VMZUVVREZVT3YydldL?=
 =?utf-8?B?anJ2MmRjU1BRa1pTL0ZRbytmckxvU1NqZ256dUxwY3dEUzNWS2NMTU9ydTNY?=
 =?utf-8?B?bzJaWWM0T2hKWko1UkJJdWFtdlMyaXhvL25telZjNVJvdlFvV1AzYWF2U2pS?=
 =?utf-8?B?OWVEOUM3cDhsTk5VWnFqTmZqWGVYSlBuR0h1K2l6clE4N3doTWZ2RnpwRXJy?=
 =?utf-8?B?SnhuTkxNSGxML2hBUmZBeHFaTHFCWEFhSHVobk1uYVFYL2hRZG9sOTduR0E3?=
 =?utf-8?B?YlVIRGV0dit0K1RUQlUrZ1dsWHRXWm5wVExXVGNEd0lTNWpyYmMxL0JZT1dC?=
 =?utf-8?B?NGZCYy8xN0ZBQ0NneGpIY1RGOHNsNWU4TmtOSWhwdFVSNjVaSmtmdm4zTDhN?=
 =?utf-8?B?eWVGcHdXZEV5SGFUR3BFRVRvV2Iwcnc4cXFiOEl5SlFxYVpWSlZmWkllUzlI?=
 =?utf-8?B?WU9kaDE1MGNsN2Zpem5rK0lGcFlpOGxzaGRYZEZmU1U2T3BQUzFoTkdaRUxi?=
 =?utf-8?B?YlREWE9nQlh4aTZrMnE2WmYwaEFnNThPdFFqUm9LZDhrcDN3SEpkSnZ1TGNi?=
 =?utf-8?B?OEpFU1V1OE1Yc2l2V0tRYU81OEZEQnUwUUtPNVlZamMvUXovT29HYkU0RkM5?=
 =?utf-8?B?STF5Z2VzM0Q2aTlobTF0ZGVHTk5OZjZ4NVdKVThmcXBCVk5sNnB2aytKSXg1?=
 =?utf-8?B?NFdzZVVId1FTSnRybU44UHAxZk1kTWhGSVY0aWduYUZrVUN2Sy9yM1dBZS9C?=
 =?utf-8?B?bDlDRXNiTGNZK3hUM2RkeG00WCtnSWEyYWJyUWpjYndENTY3T2R2amduL3hT?=
 =?utf-8?B?d2lmZ3FwUktKWkZYS1JDM1BNcHlrV2I0R3d3dEVucm5KWm03M3ZjS1ZZS0Uz?=
 =?utf-8?B?clJ0Z2JLUi9Cck5RaWNNd01MbnFwbk5Xd0N4S2lCRG0wRjFDczg5aWNrKzNK?=
 =?utf-8?Q?a+ahtzVywS8HXkUQrJhBnof5F8DGg5xwRmLFE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1A2Ty9EWVBkTC8xbE11aVUrcnZPeHJQUkUyZFNVc3R3dTVodmJSL3B2YzFy?=
 =?utf-8?B?Yy92T3ZaTDNzL3dWZDRJQVhZdDRZSFBGTU9tbXhET2wwc05GME8xV0FCdGRH?=
 =?utf-8?B?UFhuRnhvOHlvc3BWTTZVVkNkZ3I3UFcwUDBxM0lhdjBvSXoyRERibFZrc1pZ?=
 =?utf-8?B?RXlNNmJPOHkxa0JadGZ5Nk5RRE5iaU0ra3hyMk8xdW56bGxjaGNBelpyMEUr?=
 =?utf-8?B?YjhJdVJEeDVJMExKSys4QzRXYlppWFBQcmtXREQ5RlBwQVpodU5hV2g0Nmtl?=
 =?utf-8?B?UFFkMExDVmk1QzlyN2huUG5GdFoxS1YrczhmMDV1eW10Q2VBRTNKenlMVENE?=
 =?utf-8?B?TmtyN1BnVW5xMUt5aHdBQU9TaGZLam9xMk1weEtXeVNjWDUrYUZ0bGg0QXJR?=
 =?utf-8?B?SEF1ZjllVytOWG9IYjFMQjJFRnBLK3FieUNHQ294bEkyUnhEK1VnMzZhQS9U?=
 =?utf-8?B?bGQ1dVQyY0pBSG1UbGF0NTlHQkp2VEM2M3hzUTR2ZDhsQXRkZ3NaR0FvVGtO?=
 =?utf-8?B?UjV6MEFxc2JYQ2N2ZnJIT0w3eUc0MUwyUHc1cEFRREVxSXQ1aktkei9KR3Zw?=
 =?utf-8?B?Tmh3SzF5a2I2ekZLZEtpNHZla0U0L3QvcFlxYStkUCs3SnpUdkxxMk5FN1o5?=
 =?utf-8?B?WWVtNUJ6WlZNN0xteElna004QlgvWVJPK3NvUjNuSFc1Yk5kR1VHdWcwbnBZ?=
 =?utf-8?B?TkMvLzBsQTdUZ3NxeDZVU0luZVBTZk10TXJ1R3BXU2Z6cFY3TGdVUWd1Y3Vi?=
 =?utf-8?B?ZGdkTnVLTW9aUEIyV2JhYkYxNk5rcGx4bkNscisydWkrNWRzM3FYc1BYVU00?=
 =?utf-8?B?SFo2OUhvbU1wZ3VWZWxsMUlUSk9lVVNHV1BMNjdmckNYaUpFZ2I1NTZMQkZK?=
 =?utf-8?B?U1o2WDE4RGFmNGF5Rlo5TWc1TlhXdEo1dEtjaS9QK2QxUG04eGRJZHFBUW5C?=
 =?utf-8?B?RWJCaklwUlhaeldOWkxZZ0xjd1ZadE9md0kxd0lzYmF2ZlFiMXdJQ1NQRHhT?=
 =?utf-8?B?SW9NMmtneTAzeWcvR0s5Qjc5WTIyekMybXl3MGphZDdlWEV3Ykhvb2ZTcDZ4?=
 =?utf-8?B?SzdiN0V5OFZ1VW80cGhycDRGaU5POUVBVndqUkp5SmxiUEljNkxuaEdRREdH?=
 =?utf-8?B?V0I0cFRtOG5qcGpBekNsMzltdUVWWk81b1BKa3RhRzd0TmxMekhsc214NXFJ?=
 =?utf-8?B?NVNNK2kvWVlmV0toY2VQZnZ0ZXJMam9xU016SGxaV1ZXcTZWcS9uZmdWb1pk?=
 =?utf-8?B?V2tuVEkrcm9id3FweVJ0THNIeVFEVThJTWxvU3IvY2NwMHpSNTkyTHBTOUt4?=
 =?utf-8?B?WDFFbk5sTE9YR0tYYWRHcHozNnlnRjBicFJ5R2hTVXR1YTFXU1NZN2I2dXlW?=
 =?utf-8?B?OG5LdlVVdVZVUnNTbitTd1NzRjVaY0NsM1prQ2lNNjdxcU5DQlQ2SlRPa2RS?=
 =?utf-8?B?VDF0LzVwckJHMU0rek1aTkIzcjNLdnlwZkRtbDRvVUdPdithdU50MDJrR044?=
 =?utf-8?B?QWN4bnk3NjQ3OGxSajk4TjBhUDRwN1lPNmwvcUE5RjIwWmY2Q0tab0pxeFNV?=
 =?utf-8?B?YW5aUlQ4U0VWSXlYbndiVWxMb3BxeDlUcncrbVFrT211ajNBR3A2azJ3RHdu?=
 =?utf-8?B?TTdTSTZHRUFReGxXWnIvM2h2N3I3RmMrQXpSc014c01kZDdhTkd6U2wyQlIr?=
 =?utf-8?B?amtYS3VWZEJMVkd5UU1jYnRNRTZlUmlCei8wcFlFaWxyS3BmdUs0VDlHTm42?=
 =?utf-8?B?YzQ4R3MvQXp4ZjV6dXRmb0RpOTdvT1RqUnU0RWJKKzEvQ0I5ZUNaS3NLeXEz?=
 =?utf-8?B?ZllKQlBYS3duekxPR29vNFY2TDVVWXNDU3ZlanVSbndtTGUrQ3h5WWFRdDRq?=
 =?utf-8?B?SlV0YytoaXZnY09xWEI0bkVKNndkemNTb3ArTE8rbW9qSnZHMlVJajlzS2V3?=
 =?utf-8?B?c1FJMHRaVmtNcjlOMHRMTDVJaEtSelJ5YXlVZGVyRGJzMXFKOUFrcVkvZmN6?=
 =?utf-8?B?OWduMEpMSTIwU0hLN0hVdUsxWW5nRGQyQmJVL2d2QS9US2ZTcVZncWNGNjYx?=
 =?utf-8?B?U2ZRcGN3ZlkwUXh3aGQwSFIvMlBCdzRSRC9zb214K0gyT0pQVUhHa3FiQXJh?=
 =?utf-8?Q?mD1QhxtWcWkZXhxk2TFdTWHOX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64a1f62f-fac3-46e4-d03c-08dcf788aca2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 19:42:36.3602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yOazMNVUqUhIrBK8RmCeyyrVPL/IDJoUP20Bceqil8dV8NvTq0ef7duzZrw/jmVmKr6VoU8VfWlelrZVNpuZX22UGz+i1u7DaIQVogY8Rmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6457
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144567; x=1761680567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZgGRgZ3mI/ugWm/pFrihAtiAJCxIFU4ZzagtaQkLdo8=;
 b=cIl9Gn7WXQEqG7yIg6k/ErEb8ooqrNcFUB02sL71D+k9SXb1fl0KXD1r
 RoNIAEXXddxliYaflzirDZKRDfqU81wn6pasoXIi/pFD5Nou55BwI/Flv
 w96X5zBtpFFbKVHOMscK5G5t5Sn0D47MWjuZ60sQw9xqumRdQC5xrck7P
 eZFnALR/sdlxKKgXUzxtmptS/Khg4HVwGLIrrrpN0LSEnlvi86Y3MXbvX
 mf0b/sMRcBzphdtvo1+FZuLgsFKoHgcef017zInljuaQ2PkP1wgzDJVws
 E/W3J1knlp0/gRisT09dgbgp7mupvqdxdkIuG8cpK2z0qAKy5sQn7TqsA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cIl9Gn7W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 0/4] Fix E825 initialization
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDE3LCAyMDI0IDE6MjggQU0NCj4g
VG86IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT47IGludGVs
LXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsg
S2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiBpd2wtbmV0IDAvNF0gRml4
IEU4MjUgaW5pdGlhbGl6YXRpb24NCj4gDQo+IA0KPiANCj4gT24gMTAvMTAvMjAyNCA3OjIxIEFN
LCBLYXJvbCBLb2xhY2luc2tpIHdyb3RlOg0KPiA+IEU4MjUgcHJvZHVjdHMgaGF2ZSBpbmNvcnJl
Y3QgaW5pdGlhbGl6YXRpb24gcHJvY2VkdXJlLCB3aGljaCBtYXkgbGVhZCB0bw0KPiA+IGluaXRp
YWxpemF0aW9uIGZhaWx1cmVzIGFuZCByZWdpc3RlciB2YWx1ZXMuDQo+ID4NCj4gPiBGaXggRTgy
NSBwcm9kdWN0cyBpbml0aWFsaXphdGlvbiBieSBhZGRpbmcgY29ycmVjdCBzeW5jIGRlbGF5LCBj
aGVja2luZw0KPiA+IHRoZSBQSFkgcmV2aXNpb24gb25seSBmb3IgY3VycmVudCBQSFkgYW5kIGFk
ZGluZyBwcm9wZXIgZGVzdGluYXRpb24NCj4gPiBkZXZpY2Ugd2hlbiByZWFkaW5nIHBvcnQvcXVh
ZC4NCj4gPg0KPiA+IEluIGFkZGl0aW9uLCBFODI1IHVzZXMgUEYgSUQgZm9yIGluZGV4aW5nIHBl
ciBQRiByZWdpc3RlcnMgYW5kIGFzDQo+ID4gYSBwcmltYXJ5IFBIWSBsYW5lIG51bWJlciwgd2hp
Y2ggaXMgaW5jb3JyZWN0Lg0KPiA+DQo+ID4gS2Fyb2wgS29sYWNpbnNraSAoNCk6DQo+ID4gICBp
Y2U6IEZpeCBFODI1IGluaXRpYWxpemF0aW9uDQo+ID4gICBpY2U6IEZpeCBxdWFkIHJlZ2lzdGVy
cyByZWFkIG9uIEU4MjUNCj4gPiAgIGljZTogRml4IEVUSDU2RyBGQy1GRUMgUnggb2Zmc2V0IHZh
bHVlDQo+ID4gICBpY2U6IEFkZCBjb3JyZWN0IFBIWSBsYW5lIGFzc2lnbm1lbnQNCj4gPg0KPiAN
Cj4gSSBhcHBsaWVkIHRoZXNlIHRvIG5ldC1xdWV1ZSwgYnV0IHRoZXkgZG9uJ3QgYXBwbHkgY2xl
YW5seSB0byBuZXh0DQo+IHF1ZXVlLCBkdWUgdG8gY29uZmxpY3RzIHdpdGggdGhlIFBIWSBtb2Rl
bCBjaGFuZ2VzIGFuZCBzb21lIG90aGVyIGlzc3Vlcy4NCj4gDQo+IEkgYWxzbyBoYWQgc29tZSBx
dWVzdGlvbnMgb24gb25lIG9mIHRoZSBwYXRjaGVzLg0KPiANCg0KSmFrZSwgcGxlYXNlIGlnbm9y
ZSBteSBwcmV2aW91cyBjb21tZW50cyBhYm91dCByZWJhc2UuDQpMaWtlIHlvdSBub3RpY2VkLCBt
b3JlIHJld29yayBpcyByZXF1aXJlZCBmb3IgbmV0LW5leHQuDQpJIGhhdmUgYSBwYXRjaHNldCB3
aGljaCBhZGRyZXNzZXMgdGhhdC4NCkluIHRoZSBtZWFudGltZSwgbGV0J3MgcmVzb2x2ZSBhbGwg
dGhlIGNvbW1lbnRzIHdoaWNoIGFwcGxpZXMgdG8gbmV0LXF1ZXVlLg0KDQo+IFRoYW5rcywNCj4g
SmFrZQ0KPiANCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24u
YyAgIHwgIDQyICsrLQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5oICAgfCAgIDEgKw0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X21haW4uYyAgICAgfCAgIDYgKy0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuYyAgICAgIHwgIDIzICstDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcHRwLmggICAgICB8ICAgNCArLQ0KPiA+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcHRwX2NvbnN0cy5oICAgfCAgNzcgKy0tLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyAgIHwgMjgxICsrKysrKysrKystLS0tLS0tLQ0K
PiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oICAgfCAgNDAg
KystDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc2JxX2NtZC5oICB8
ICAgNyArLQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaCAg
ICAgfCAgIDIgLQ0KPiA+ICAxMCBmaWxlcyBjaGFuZ2VkLCAyNDMgaW5zZXJ0aW9ucygrKSwgMjQw
IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gVjEgLT4gVjI6IFJlbW92ZWQgbmV0LW5leHQgaHVua3Mg
ZnJvbSAiaWNlOiBGaXggRTgyNSBpbml0aWFsaXphdGlvbiIsDQo+ID4gICAgICAgICAgIHdob2xl
ICJpY2U6IFJlbW92ZSB1bm5lY2Vzc2FyeSBvZmZzZXQgY2FsY3VsYXRpb24gZm9yIFBGDQo+ID4g
ICAgICAgICAgIHNjb3BlZCByZWdpc3RlcnMiIHBhdGNoIGFuZCBmaXhlZCBrZG9jIGluICJpY2U6
IEZpeCBxdWFkDQo+ID4gICAgICAgICAgIHJlZ2lzdGVycyByZWFkIG9uIEU4MjUiDQo+ID4NCj4g
PiBiYXNlLWNvbW1pdDogYWI4MDI0ZjAyMDdlZWMwZjM3NjU5MWM5NThiNWJkMzBhMDNhZTM3MA0K
DQo=
