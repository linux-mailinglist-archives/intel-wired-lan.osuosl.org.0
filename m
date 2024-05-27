Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA4C8CFCF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 11:32:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A91040BD4;
	Mon, 27 May 2024 09:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 56xLqFFpPif4; Mon, 27 May 2024 09:32:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D2C940BC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716802373;
	bh=0r65Yq75hccjdxOcszJUDW8zxxYMwLXRDXPGtaeRipc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B+LogS4BJpl8S2oAXvglU6o0tZMDvl+pOi3OyTUroINQ5tjtqHXo66RITTm8RJiyV
	 zGI3ZYOrNaQh4bFekpKZTTSYpurAjjkAZz2kqnQ7bUgH3glk1+/NRzxAuPq7FBDfME
	 ZrUPsIzyp7TNg7jNmCFVbBF5X8ONHBmntrJsMhkXWCI46P9uSxx/+zcSObvuk9Jw4C
	 NsgOk8Qr1ql6IEamkSxXdRCgbw1b02coK2fn2T7JLmBnTeQTNZ+A9xNLFQI1c6gvuZ
	 56YeSsLdLx4djUKq+HEJpgO5dvRbjMqbDgIfQrgQ/ClF0cw3ZvBpe4NG52S3Fm9XE+
	 zrAjW/bh4b/hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D2C940BC5;
	Mon, 27 May 2024 09:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69FCB1D1A89
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6070D81D18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZP63AWuM8W5r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 09:32:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E540081D16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E540081D16
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E540081D16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 09:32:49 +0000 (UTC)
X-CSE-ConnectionGUID: PkVj/+ifQD2BqbWKcBwnLw==
X-CSE-MsgGUID: oBIA5WcVQGyYSRRFmzUjwg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="23675927"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="23675927"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 02:32:49 -0700
X-CSE-ConnectionGUID: Fz1HZEq/Qjqi9m7UbNbjSw==
X-CSE-MsgGUID: t2itegJHS/qadyog0PepKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39681832"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 02:32:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 02:32:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 02:32:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 02:32:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zg2Wlac5DAWn56C9VFaPF+evRDlfd1JNHnGLF5PQPP12deU9yGw+WCVnVTrMkMSw7Qsxvd7BYBXYtE3RjLOdlHAyR6Ff+jT/al12iVdGMz032ZKJcqD5vV80vpbXHeu9IhF8ruNvhexrip5WRYD19VFkcv5xCfpqiU8NoZxWeBD45ySKkswjLYHYFvNN0oDguM5pUsY1GsIjjXYoImFQjs5/jcWrC23vdjviuUpD/Wb8RGYJ+4TZz5NkTV+VVaaVgv4ZlVPU1mrF9KA94H4rpJ9XU0SRHC5juw6aM4vUf0mWzIzVAhRhZP1jxa56p7VZ7Kup59wWQRJmgm37WnXD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0r65Yq75hccjdxOcszJUDW8zxxYMwLXRDXPGtaeRipc=;
 b=GUavJCWqSGJ8YMo2RBQWes3F5wtrc2MQzbnLbWrJDJ/+ba8gNdnx+B7I+0fbZ/LGe58R8ZmwlPIwuiXoB2L22hkC2ZZWeCfzvAdDXl7b7hk3/4XY1rR8ux8naRL0iT4B3hFjQ9YVdX5Q06+gL2PHtcfhuHxEmhFeVSeiDnBov+DmnzaH3DyXvPeFtz/7eQGFWuUC3VTL0Jx0oUXfpsXK0dasMGwWOjd8l6oYNswFjUefqA0OGLwv1vRlBXJEG26mLv08hNEkCtPn52JJoKFuu0IvSOYxe4CH7d+/2PuDwhBM8G9VNRtza6QCVwVp2SuzqPpxsb8ucqSY6S5uX2jbsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CH3PR11MB7276.namprd11.prod.outlook.com (2603:10b6:610:14b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 09:32:44 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Mon, 27 May 2024
 09:32:44 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: add and use
 roundup_u64 instead of open coding equivalent
Thread-Index: AQHapYQbsBDALJ2tgEW3OVxzp1pZ4rGq5i6Q
Date: Mon, 27 May 2024 09:32:44 +0000
Message-ID: <CYYPR11MB8429F4F733C5EA38073ED3AEBDF02@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240513-mirrors-iwl-v2-1-3f6464fb8f17@intel.com>
In-Reply-To: <20240513-mirrors-iwl-v2-1-3f6464fb8f17@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CH3PR11MB7276:EE_
x-ms-office365-filtering-correlation-id: 4f542a19-be03-42eb-f69d-08dc7e2ff68c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?anhuZmxhUWp5YWpTSzcrWkJLMW8xNmw4RTVYV01aMmxtMk03NzA4UEZlYXA5?=
 =?utf-8?B?dWsvblJheFJNcEYvd0lVOG4ybmJ1TnVac1YrREhLdlBPcFhMMUhSTm9OQzFW?=
 =?utf-8?B?M2dqYmdwNFdHOVBMWTU1d2l3UlNnODdDMmZ2RGt3blRzanZEVXdicGdPU0Nr?=
 =?utf-8?B?MkFBN1ZaM25OQzRDMnNMRHN0QlNZV2d6RG1wU0gwRHJ2Rkk0c2VkZldpcWtK?=
 =?utf-8?B?STRYNCtrc1daMlNMT1gyNGpyR1M5YzVzTWROalhlbStwRzIvTmxaNVNoQy8v?=
 =?utf-8?B?bDVoQkNKU0N1bUhWZitmOEgwOEd1UjZHV0U4R080UnV4VnczVDVEenNSUGVE?=
 =?utf-8?B?cXo0WnB4NFREalEwaXVFMzJ2cmNOa3FUM0prV08zN2FGVG9KaWFOaWxLYlpj?=
 =?utf-8?B?UGRTTlZMeS9uU2MvYTBjRkhXZXdWdm1qZW95d0ljVmtiTDdRdFphNUk2OFI0?=
 =?utf-8?B?UDR6TEVGTXdJdm1zNmZBd3N3Y2VqR2lRbjR3VVFSeFJRcU9DL2paTUxWd3dD?=
 =?utf-8?B?TWV6Vnp1U0wvM0sxd3VLUUdiQ3RabGYvU21lY2lyQVBSM2lHalRYOTJaRnFU?=
 =?utf-8?B?OGNjaXFHa1B1ek1HS3pJTU1yemEvSkFSejcyNmdQVnJyWUpSbkRldjBBQUJo?=
 =?utf-8?B?dForcHloTXFtS2hzZWxQbXgyS3ZLOXgwZThPZ1VJYVRrWW5xWXV1aUs3cVFT?=
 =?utf-8?B?b3Y5NFVuNFRESFZaWTViM2hERGtqeFQyeWVhK2JIU3AvSVhxL2dFY1ZQTHF4?=
 =?utf-8?B?L1dHd3FhbFpseUczSU9iVThpWDc0OW13QkRaZ1gzQkMrNi9ZbFNWRUliOFJF?=
 =?utf-8?B?Q2oyRFZCRWx1SWV4VTJNSko0ZGVKQXVtcjBxTGpjWGpiT25nWDRHRzNYWjJN?=
 =?utf-8?B?MllXTDBwZ3hIMlFnTUZvKzZXQXlQYUsrU1llalNmRDhTVk1DaFlqZENIK3ZU?=
 =?utf-8?B?NlpSNnhRYzhGdC9mRU5saCtreDNRc1JoK2g5endqMDFrQU8vU3lRaFpIRW9B?=
 =?utf-8?B?ZElhdlNNM2wxc1pGYXkxcHRkMlpYYmFwcUMrY3Jsa082bmJNaG4rbUh2RzdG?=
 =?utf-8?B?ZkwzZGhEZkpaVDNPUWR1TWthSlY0UmVJeUhBaU5ialpURXduNjAzRUpyb2dT?=
 =?utf-8?B?Q0RNallBUkd6aU04TEVCcHJGRnJqR1dNdjRoODBKcXZscFJzdXI1UFFCdHpG?=
 =?utf-8?B?YW5BcHdSMXZDUWNKRk5FZFB1Y2tXdmpuYTJlcm9sb1RkOURTWEdvQ0pwL0Vr?=
 =?utf-8?B?SDFTTzRhWlZpR0xFYU9WUmNkS1VUYm1GWUNTVENNdnh1QjRNdkFRRzBiTnI2?=
 =?utf-8?B?Y0RqWFM1U2duclMwYUFIWmo4M1JEbno0MExkUDNZMVFYcE5FS0NKb3dtL1Q3?=
 =?utf-8?B?QUMvUFFnWW9CeWxRQXk1TFhQZTMwSEFnaGh3alZvckZNdnR2WTZDWjBFa0NT?=
 =?utf-8?B?cDZiOHlWV3NLUnhSdlZUWFZURUpZV0NLTGQxVjErRk53dGNXMEUzdXdrZjBj?=
 =?utf-8?B?VE1KRkVEMCtmT2ZVVlEvRjY4b25RNjFzbjExK1EvZWlZVGlnd21HQzRxVU54?=
 =?utf-8?B?SWx5THFOc3NsNndzQjZZYlBXN2hyRFp0dFpjRlovQzBDckN6VmhBUGtsR29D?=
 =?utf-8?B?MDhKOFN5ZUR1T3FCTm9yMVQrV1poUHhqSG16V2ZTcEJNSHJtcWxXWUtzdHk1?=
 =?utf-8?B?K1BkVU1rWStDYWplR2NTc2t4aXd3Z2xqNVhGS3hBZDVsU1REcEFpT3BnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlF3N0loRS9ER3lMTDFBTUM0aStjVmpKV3kyTzVrdkt5eUpYSys0a1hqT25U?=
 =?utf-8?B?NnNOQ1pieU5RWTVmUlBHUlRDVDhmTU5QdFlVZm44QnZ6cmZaM2tOb1l0elJa?=
 =?utf-8?B?RzYvQjVuUER1WEIyWUZEU3JTdnhSeHJ3bjV5MXNoUG5rcG4waHN0U1JHL1pP?=
 =?utf-8?B?UW9XUUxnK053b0MyeTdaWEloRks4bzNpZFliUDUxRnhNVkZveXhrbnpLTlJU?=
 =?utf-8?B?ZlJ2dkZjcGV3TXUwdTErNW9GMGVXQWxNYjRQV29YaVlWRHdvbWtVRmRmTWpk?=
 =?utf-8?B?aFoyQldzbWJDckpiQ0F6NzVVY2Q2MDBWRG41aG9Bd1ZGRWdKWGlGZGttVDNn?=
 =?utf-8?B?aS9aK3AxSUY1aHltaGg2R2tpVlFOa3JxRWN2Zm1hQ0V1N2EvbVhsdEVNL0pO?=
 =?utf-8?B?c0s2QlhlbzNFT2pjYXBJNFJGL2lqNk1sMEYydjU0RktEcU9BZlNUMDlPbExO?=
 =?utf-8?B?aEsxVGpuMGtVT0FZY3Qyb1pRUlJ1bVZncmhDVCtjY0R3b1ZjOVJSOVdnb1Zh?=
 =?utf-8?B?WWlGUzRySTdINmJIdjM0ZEFuV0xwY29yV3paTU04M0hTcG91My9XNndtelkz?=
 =?utf-8?B?bU82cG1Ddno2Qm5xME9rNm1tZk5sS3hEczNiMFA0a0hFSzd4RWpzdXdFVERF?=
 =?utf-8?B?V2hXWU9QOVJaaWtOUlBHZERQUEhndUtySkVSR3JSZkpaV1dxR3BGZVc0d1hV?=
 =?utf-8?B?M2xrWjJBSVF3L2Q0cFRkcnBySm5lTFdaaG9SQXVqd0xUUFBlVk9kSzJIeFcx?=
 =?utf-8?B?bmJBYWtUMkdDZFE3ZFM0UVBJMGJ5cmFuMHR5RUJIeldVdXlpYnQvOUFtb1RP?=
 =?utf-8?B?QnhCZnRuVll6TkwwbFpMdHdDYmptMVhmTkZlWXdkNjRra1JoN0JxeVhKRDlm?=
 =?utf-8?B?NjhnbG9mZHg0S3JlcUg0anQ0NTNQZFdQK0ZNZUo5UmVoZUhWenVwMTJyL2hh?=
 =?utf-8?B?bkMxNE5ZT3JxNnFuMkZ3cWVnYzB6aTdsYkFaS3VHbVNzT2ExZVVROWdSMExt?=
 =?utf-8?B?MTlxUlR0R0V1UnBkekcxb1VzQnJqMEdOcXdONk9TSitsVjNGQ3ZXZlM3YWtv?=
 =?utf-8?B?VFdBMW9TQXJqaFpxZUJweC8wRkhaZWpaUmQvWk91alBudEN4TmxmdEcyVG9z?=
 =?utf-8?B?bUZFQldvcmgvLzJja0ZxRTRYYVdocnNXODVLUldBU0lqQzFFY2R3aGxJWlNr?=
 =?utf-8?B?T2FNVlZMOWFrbEljUEw5UUlOQmxUZUVZT0poSytvVkhEVzRnQmpJOFJoTlJi?=
 =?utf-8?B?cGRjR3FlYTBRRmZDcEZuV0N3b1JOYnh1THI2ckdBMHBmUytYMzg2R3h1NVo2?=
 =?utf-8?B?eVQrRHExNVExNWZlL1c4TjFHQ2xhMXJjMEZva3pES1RpcXdTN1dQcXl3aXhE?=
 =?utf-8?B?QnBoOGhlTmpESDhmNjB3Skp4cWowdE00bzlxK2lvZUNsMTZSWk5EMFZEZG11?=
 =?utf-8?B?anZPUDBUeUxlZzZyOGNwMDNMWkRySW44dVY0VWRpYUNJWVZLRTBQaVA3VEJI?=
 =?utf-8?B?b1ZnaEdWY3JhQUM5RHVSZUtweDF5a0RwaWs3OVgyUEJjOThnY0lPWGxTcGVq?=
 =?utf-8?B?STJoZmoyL2V2ZEtra3RjVmc5UmZwdFp2ZmRUWGZIcWd3dFo5QVB4UVZNc2sw?=
 =?utf-8?B?TDFDVU9xbnRrVkgyOUF2a1FtS0NYTnFFUGJkRUhIT1lKRXBJNDJlemhpMWsr?=
 =?utf-8?B?NXpxNU5BZmtjRzdCSExVZGwvVnpFZUpCUmdqb0R1c2pmcXEwWVgrMit6R2JQ?=
 =?utf-8?B?N09oblRjM2RvVytCM1ZVdEZ2V1JGR0Y5MGdnRXh1ZlJCc3VyMGphMDEvd2R5?=
 =?utf-8?B?Zi9ZMnloaS9ab0d0Q2szOW1WNlpoK21LeEJQT1FrVFovRmljMGplRTdLTXQ0?=
 =?utf-8?B?K21WOGhLT3J2bitoblNtVThGUk9CdGZzbXhUTnhGb2hveGtPK2tuK2FVVnFG?=
 =?utf-8?B?MTNnc1g3NWFZVXRNU3lLcGYxOHh2ZndzUkM2eGNDSmhYVEZ0Slc0T3FPb1FP?=
 =?utf-8?B?NlVqMnlHdHE5MVg4T0t1KzJNNUdEN3hDNzhQUENJcEo3ejFiR0R4TnZCcEU4?=
 =?utf-8?B?bDhnWG1IanJ4cC9rd005TzF4eXVsbnR3cWYrcHFGTC80bWd5Mk1TczE3YTF0?=
 =?utf-8?B?WXBsZk1XV3EycTZxaDkwWnVvVVBkaHFzL09VSUVRMXQ4VmNkRHhlS2o2Z1Z3?=
 =?utf-8?B?bkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f542a19-be03-42eb-f69d-08dc7e2ff68c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 09:32:44.4233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EgqVYvAcneXvWmuORt63PO0XdDrMZaqO/qRQti3qtkOipyDQbyf0TpNbjDXcTwOzI0VK8JmDblNT7vg2N/P+tRnZjj/l0T3rjIhOiU+J3z/Gbll9x0HCLbPqvZ9V47Rc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716802371; x=1748338371;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0r65Yq75hccjdxOcszJUDW8zxxYMwLXRDXPGtaeRipc=;
 b=WkJyNb6lUyhDmxlmhxqQaNmYK7PzPgOdgiW6gxD7UNxPD/jk1igq+k/s
 G/u0on1PGG96dC1eYnPydepw/IEfri5lFE1BgmHkPJZgn/KqrdUUIQ9w0
 daanRpJphCOeAimQnk7UAYmMQb45K5GBmzllfCH99HCqbV7v2r6pNpEFi
 DiyrpwJu+EBJCcGlyYk1FQEVLJqDaykAMY6mQVoempPYMQ4iA1kssGAHw
 1kkS+j/jp5UHkEH46taKF+9Ox+ThngLYUbNYQ6zAYsgE0aiFZ9t8uolLk
 Fx51xDcAgVTDFqFaj4wXRv6jdcAtzzl7wL74U+AJyodv+xKp7cFui7HKU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WkJyNb6l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add and use
 roundup_u64 instead of open coding equivalent
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogVHVlc2RheSwgTWF5IDE0LCAyMDI0IDM6NTIgQU0NCj4gVG86IEludGVsIFdp
cmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBLZWxsZXIs
IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyXSBpY2U6IGFkZCBhbmQgdXNlIHJvdW5kdXBfdTY0
IGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgZXF1aXZhbGVudA0KPg0KPiBJbiBpY2VfcHRwX2NmZ19j
bGtvdXQoKSwgdGhlIGljZSBkcml2ZXIgbmVlZHMgdG8gY2FsY3VsYXRlIHRoZSBuZWFyZXN0IG5l
eHQgc2Vjb25kIG9mIGEgY3VycmVudCB0aW1lIHZhbHVlIHNwZWNpZmllZCBpbiBuYW5vc2Vjb25k
cy4gSXQgaW1wbGVtZW50cyB0aGlzIHVzaW5nIGRpdjY0X3U2NCwgYmVjYXVzZSB0aGUgdGltZSB2
YWx1ZSBpcyBhIHU2NC4gSXQgY291bGQgdXNlIGRpdl91NjQgc2luY2UgTlNFQ19QRVJfU0VDIGlz
IHNtYWxsZXIgdGhhbiAzMi1iaXRzLg0KPg0KPiBJZGVhbGx5IHRoaXMgd291bGQgYmUgaW1wbGVt
ZW50ZWQgZGlyZWN0bHkgd2l0aCByb3VuZHVwKCksIGJ1dCB0aGF0IGNhbid0IHdvcmsgb24gYWxs
IHBsYXRmb3JtcyBkdWUgdG8gYSBkaXZpc2lvbiB3aGljaCByZXF1aXJlcyB1c2luZyB0aGUgc3Bl
Y2lmaWMgbWFjcm9zIGFuZCBmdW5jdGlvbnMgZHVlIHRvIHBsYXRmb3JtIHJlc3RyaWN0aW9ucywg
YW5kIHRvIGVuc3VyZSB0aGF0IHRoZSBtb3N0IGFwcHJvcHJpYXRlIGFuZCBmYXN0IGluc3RydWN0
aW9ucyBhcmUgdXNlZC4NCj4NCj4gVGhlIGtlcm5lbCBkb2Vzbid0IGN1cnJlbnRseSBwcm92aWRl
IGFueSA2NC1iaXQgZXF1aXZhbGVudHMgZm9yIGRvaW5nIHJvdW5kdXAuIEF0dGVtcHRpbmcgdG8g
dXNlIHJvdW5kdXAoKSBvbiBhIDMyLWJpdCBwbGF0Zm9ybSB3aWxsIHJlc3VsdCBpbiBhIGxpbmsg
ZmFpbHVyZSBkdWUgdG8gbm90IGhhdmluZyBhIGRpcmVjdCA2NC1iaXQgZGl2aXNpb24uDQo+DQo+
IFRoZSBjbG9zZXN0IGVxdWl2YWxlbnQgZm9yIHRoaXMgaXMgRElWNjRfVTY0X1JPVU5EX1VQLCB3
aGljaCBkb2VzIGEgZGl2aXNpb24gYWx3YXlzIHJvdW5kaW5nIHVwLiBIb3dldmVyLCB0aGlzIG9u
bHkgY29tcHV0ZXMgdGhlIGRpdmlzaW9uLCBhbmQgZm9yY2VzIHVzZSBvZiB0aGUgZGl2NjRfdTY0
IGluIGNhc2VzIHdoZXJlIHRoZSBkaXZpc29yIGlzIGEgMzJiaXQgdmFsdWUgYW5kIGNvdWxkIG1h
a2UgdXNlIG9mIGRpdl91NjQuDQo+DQo+IEludHJvZHVjZSBESVZfVTY0X1JPVU5EX1VQIGJhc2Vk
IG9uIGRpdl91NjQsIGFuZCB0aGVuIHVzZSBpdCB0byBpbXBsZW1lbnQNCj4gcm91bmR1cF91NjQg
d2hpY2ggdGFrZXMgYSB1NjQgaW5wdXQgdmFsdWUgYW5kIGEgdTMyIHJvdW5kaW5nIHZhbHVlLg0K
Pg0KPiBUaGUgbmFtZSByb3VuZHVwX3U2NCBtYXRjaGVzIHRoZSBuYW1pbmcgc2NoZW1lIG9mIGRp
dl91NjQsIGFuZCBmdXR1cmUgcGF0Y2hlcyBjb3VsZCBpbXBsZW1lbnQgcm91bmR1cDY0X3U2NCBp
ZiB0aGV5IG5lZWQgdG8gcm91bmQgYnkgYSBtdWx0aXBsZSB0aGF0IGlzIGdyZWF0ZXIgdGhhbiAz
Mi1iaXRzLg0KPg0KPiBSZXBsYWNlIHRoZSBsb2dpYyBpbiBpY2VfcHRwLmMgd2hpY2ggZG9lcyB0
aGlzIGVxdWl2YWxlbnQgd2l0aCB0aGUgbmV3bHkgYWRkZWQgcm91bmR1cF91NjQuDQo+DQo+IFNp
Z25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAt
LS0NCj4gQ2hhbmdlcyBzaW5jZSB2MToNCj4gKiBhZGQgRElWX1U2NF9ST1VORF9VUCBhbmQgdXNl
IGl0IGZvciBjbGFyaXR5DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAtIEZpeCBkdXBsaWNh
dGUgQHkga2RvYyB3YXJuaW5nDQo+IC0gRml4IG1pc3NpbmcgUmV0dXJuIGtkb2Mgd2FybmluZw0K
PiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA0MjYtbWlycm9y
cy1pd2wtdjEtMS0yODRjMWQ3ZmRjOTRAaW50ZWwuY29tDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyB8ICAzICstLQ0KPiAgaW5jbHVkZS9saW51eC9t
YXRoNjQuaCAgICAgICAgICAgICAgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4NCg0KVGVzdGVkLWJ5OiBQdWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1hc2VraGFyeC5yZWRk
eS5wdWNoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0KDQo=
