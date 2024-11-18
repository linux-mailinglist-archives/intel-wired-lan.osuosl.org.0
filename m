Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7408A9D132F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 15:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC39242D44;
	Mon, 18 Nov 2024 14:37:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5lM7Y8ZweOMI; Mon, 18 Nov 2024 14:37:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCF0B42CE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731940626;
	bh=EjUxLkAzP5J6xHhdNGD7kDvumOkUzxRoDrYv7wf4iw8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RqF+fHM8xtab3VXrJmrWv9m1usAdnp2vti18cx//227QxT9gZwF2uM7x+bIDK51iS
	 fzTFDIJiC/qZ+Vcbhtj5t+hulRF1s2XNZ+NwhGhdv4J5saWMpMFBSs63XACc5ZPn1b
	 UyYk8A78nNZkH9dLA+eTlzYhqZXIXBY7uAzS4I+c7lcInyQL24al7i45GIXpbNnMNH
	 QI94yqQbs1Bnlpz2RyOTlzCtdZ+HT4a5fLinJI/IrKkJ8cN9cAAHpwXfSuOQnTLdEG
	 r7AaxSvRc0d8Ggk0c0nX/TMyWWmSeCoeleOwTCoU/HaCqIbYYy+u7uBZyhZhVvfJCT
	 2xfTit3zza/GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCF0B42CE8;
	Mon, 18 Nov 2024 14:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B62DFB14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 14:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B074642CE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 14:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3HtKuEp8jzk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 14:37:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5CBBD42CBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CBBD42CBC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CBBD42CBC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 14:37:01 +0000 (UTC)
X-CSE-ConnectionGUID: xOvNeCX6SaWx7+Ui9ec6IQ==
X-CSE-MsgGUID: kZbQtDYFTQmvOafm3JDE2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="57308084"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="57308084"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:36:45 -0800
X-CSE-ConnectionGUID: n9Nu1t7xSZ6jgGLlXVZWcA==
X-CSE-MsgGUID: 8xXDCLYaRSWxoEZVnqE0Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="88807213"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 06:36:45 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 06:36:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 06:36:44 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 06:36:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=udeA/YwnnPrRt7f802jsAy1wpeR+5MBF/1HV3w8AfNb0eqgX8XuAnJ8OwzdotB9o1Dd26SoIKr8qwWuL/gX4kcY23VXb3yZaKa8IIvxEkz56LXbvquAarHmiUJ0m1ZkqHzb2C5kICDZl4dIEKVSPYP2u8llL2cxyvpgVWg3LqT4DYYIz1++QFqyOMVjiYxiT/4rWA/rP/CWxGd+aP0OF0WG4WHSuRfZ9bYkmwQztVekyf2dFBNi9YJ2Ir2dweHZWnoTr5lDjADXbUd5iAhL7CkBd7vBNtMZOiMNsYxTJhJMwOp+LQmvKpKEeF+yw2a4ymg3ocuJQuVdLeJAvSmXJ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjUxLkAzP5J6xHhdNGD7kDvumOkUzxRoDrYv7wf4iw8=;
 b=peyQvpvXTSC+GEzYDBdf/M5ULIeZm+GJpBnY5dwskW63QI/Bq7I1laQs07HTTAveF4tajKgz24+ewqKW47CSciVUpjY4Cj7sDEYD3nRPtaq3HNaCyMFUESOIEyAzW3LiDzt0QV8/71s224c18s5/99h46Cru45zGvojoRvtT8r/lYBrR1cQUIV9Rp2tTJeP2Qlhdx4vyx/jdukiM2MIqagUmXh4V1f2FyhzzQCpt3/N1LCk58tMeyIMRagbywZ/2DGH7FnbAh6dTbApITP/Fo7ko4uzxLDqyxMijzkWUBmFkTYetGtXp3+911YUdr0rRTTqhwOiThBzrsB20NP+Z0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by SA0PR11MB4590.namprd11.prod.outlook.com (2603:10b6:806:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 14:36:42 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 14:36:42 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
Thread-Index: AQHbNeOgACv3vXlTB0GhTL5/ibKtJ7K3OWWAgAXo+vA=
Date: Mon, 18 Nov 2024 14:36:41 +0000
Message-ID: <PH7PR11MB5885163CE356FF37F047D1E18E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
 <67365b739f70c_3379ce29452@willemb.c.googlers.com.notmuch>
In-Reply-To: <67365b739f70c_3379ce29452@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|SA0PR11MB4590:EE_
x-ms-office365-filtering-correlation-id: 6bb6b461-dc4e-411c-ac99-08dd07de6b39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?S2ZpWjBYSkRPcEZ6MGZVbTdvdHZaT04vR1hTMVRNZTYyYXoyY2o5aVJJWUdt?=
 =?utf-8?B?OGpEN1RYL09DWkhRQVkrTDNBT3RDL0JhYUV6RTlsRU1QYit2cU5wSHRPTUQy?=
 =?utf-8?B?aDhMR1dRbHRraW8zQU1YR25LV0RBQmNQWU91ejhwVENodUpNN2p6emVFMHFy?=
 =?utf-8?B?elFLaUM3aVNPSU9nMStBODVjZ1JOanFyTjFCeGMwQ2gwbmZ4NHRTRS9iZFRL?=
 =?utf-8?B?RFdxOVh3aVVEdDEyaTVKWm5zSnFJT1RXTWsxeXczcTYyZFRVaHRVTjNZblRH?=
 =?utf-8?B?ZXhaSkZQSjRHbEFuQ2pwMkRLclVFeWlVMzNVZFAxY25iTUpaVGtUT3JjSm5m?=
 =?utf-8?B?dXkwTmZzZkhEQWpQdU5RZllLcDZVMkhFL2doQ0RFM1ZVMEs1TGk4UjFJellQ?=
 =?utf-8?B?dGF4dDZheXdnZkRDMGJpUUZQTDlGbFBRM0ZLNzFHVS8vVGhPaSt3RXJydGpF?=
 =?utf-8?B?TUpiNEJrNWsyYnN3VmxvWDVadnJDM29OdGM1TkxKbldubVp4OFQ5RWNhcGkw?=
 =?utf-8?B?eVQ0ck1VWmxaZTlyVTV5Q245a3MxZitoeFdyNFAzSjZrWWVRdXNRTTEzWDJ5?=
 =?utf-8?B?VURIWFduWVV4ZSthbFVqQ1h1MXRjNzdnM0xKMFdUZkViNVpnYlVhZFhLQmhN?=
 =?utf-8?B?cVhsTy93YUZkQzlDcjhjdWJkMXZ2aTJrQjcxamMvNkJ5WVhXK1Vaa1ByeTMw?=
 =?utf-8?B?NTdRbXV3bGFFT3RsRGxnakZzV1FmQ25xcXhkTGhCWlNNdUtVdnhGRlN2M3dP?=
 =?utf-8?B?OGQzWS9JVFNWMzdtekxDQkFGS0VsZ0ZJYUNrL3hBRC9pMk5RYnJaYUtBRncx?=
 =?utf-8?B?dU1md0Rva25lSm9ibk5KcnFaTlZqVXRLajBFVFNsWlhndmpyTHQ2bDFkejIy?=
 =?utf-8?B?a20xVHhiNHFwMFoyN0hRQUJlU0ZVUml1SVlUeDJZZldKbmtKdFpZbEF6dnRk?=
 =?utf-8?B?aUdiZmM3ZVRFOU5GU0dCaFpHYVJEVHBuNGtQYmQybnpES1ZOZ2FkZkZrbnlB?=
 =?utf-8?B?N0ZJaURlV0V5RkdjaWVla0N3S0ExSDI4ck1neFlobHVDbXBNRzF0M1Z1U3lt?=
 =?utf-8?B?SlpPOFA2UzdKNy9yRVFMQTdRTG5wVHZRdHhGQlU2aXVGSkxDVmx4MHgyVWZN?=
 =?utf-8?B?Y1VOaFh1UnlpdGlybjZzZk1CdGp4RXRmWGZzN0NSQkEvRnhLaUx2WGQwZ3Bv?=
 =?utf-8?B?azh5MGxoeGQvczRxRXpETEsxOExSN1NLdmhJR2xwemU0cWNXa1VFRERUK3lr?=
 =?utf-8?B?YjdVNy93V1ZLYWV2b2NBU2UyVUNkT3hobjlsTXVST3Q1ejM4ek5ud0NxWjBr?=
 =?utf-8?B?cnBUM25adU81QkFFeCtCeVpxa05mMmJCQzlVdVhic3VLUzQ0ZmN3Tmh2S01r?=
 =?utf-8?B?UGlLY2liZ3FIVUFFT0piRFVZSHlHN2JFTzdQcTB4SCs1OU9HSyt0UERRM3V2?=
 =?utf-8?B?ejloZWdDZ2U0QzcxY1gyblArSGh5MWUzNC9MMmZRendnMFBWdHlTMTVIRFpu?=
 =?utf-8?B?U0xvdW9BN0YyR0NFemdETDErbDIrUGFiVjJVUS9SZmhEcVk3R3BBWkp5c1di?=
 =?utf-8?B?dGhzZ3o1WTc4UFJBRE8vL0Q0bVFlay9nOFY2MVNnK0VOZzYwTjlscjFFNEtZ?=
 =?utf-8?B?WEZxOGRPbm5tUmtxckVtYXlhVDQvbE55MWxkZXQ3Z0h5TDg4TDM0M0dpZjFX?=
 =?utf-8?B?a3dQUjFwMWxpZ0o2T2hlZ3hXd3hsZWdHV2h6VGpkVnZFOXFZaE4zWTQ1ZnZq?=
 =?utf-8?B?UVQyanh1RnhQbkRoTlFXa0M4QXIyN1RBMTNSZ1dIc000cHFiUFc0RXdaS2Zi?=
 =?utf-8?Q?Dsnvudt8utsOecIsRuuZb0o4UKrwqTJPnqMwo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXp6THUxVE00ZHBqazlEeFZIK1RQREFiVVpLV3BGZGlwQ2hhVWVVQzUzTXQr?=
 =?utf-8?B?RjNnZTV5UXBHZTRsd2JCSTN1YXYvVEVabWtFOE9JRFpJUFBDeHBrdWJpeGdu?=
 =?utf-8?B?MEduYXMwWDduMVhvK200VnYvbTk3T3VvL1l2WkJDeDRtY2ZndUxUaGFDdUNO?=
 =?utf-8?B?L0FYc0ZadEZJWG1Wa0Z2a1FLZTZRTDNkanBFc3VlVS9IYkxoU1g5MDlPMEl6?=
 =?utf-8?B?RjR6emJ0RnFRSFpmdFF6ZnpEMStRRlhHdWJ1NlZvUnk2TDAyeVp3UlR0SG5W?=
 =?utf-8?B?dnJueUNya1h6NmJxYkJNNms1c1RoRVQvbEdhT0FOVFVIVVZta0tEdTFiRHo2?=
 =?utf-8?B?ZkQ1REVHM1g4Ym5YNDJXVHFZeDBhZFJFcHVqUVpvV1VIdmpGb2x2SytNZEtJ?=
 =?utf-8?B?eGJFN3V0SXFhUDZ2aXNyRU5GQ2xleVBaNmE4cTlBd0xrR0N3dllQUzFOTkVJ?=
 =?utf-8?B?cW9OcUZUNlNxRGtlZ2paNE5mUFR6T1ZselE0TEJDRXpJdWJCaGFOZDRjV3lx?=
 =?utf-8?B?dldHb1FDdXA0eTdiZFdUREtrM2ZKMkh4cDM3dlVPaW50blZCU1FobWowb0pC?=
 =?utf-8?B?bFN3dEpSMkxrbCtWMjczV1ZoOHBHc256ZzRibkZLK3N6UmV6cFBhWjhmVkdR?=
 =?utf-8?B?RlRYelZrV3laeEhkL3h5ZnFzaFdBTlY1WVFWOVd5YTlrQzB1cERPM0hUbjVn?=
 =?utf-8?B?SGhhbjVQMktUelhtNm5JbXh3YUtIVDJZKy9HanBrd3lKaUpsR0ZFbjNpcXN1?=
 =?utf-8?B?YURJQ1hVaG83b2VMMUpLNVl2UlIxRXovY0o3V3d6UjU1bTVRc0hhNVZvMjJu?=
 =?utf-8?B?L01FNFVWakszYWw4VS9hUld3Ly81OXp6cjIvSEtYRkkvWmRaR0J3bGlZWlBw?=
 =?utf-8?B?RWRHWkkxWVlhVmVyYmpDU1ltYXJ2Z2Frc0dXa3Foc2U4VkFmbFZTSnBjdGcv?=
 =?utf-8?B?R0ZzVmNFMG1TZlR3Z1FsczB1dU9OK2twR2FVMEQ5ODUzKzg0UWtLS1d3Zmkx?=
 =?utf-8?B?ODZKOEsyMkJTZVQ5YjJuMEdvNjJLUk0ramhyaktZc2hYQTN2UnJnZjMvWDZy?=
 =?utf-8?B?YldUSC9qVUxWZDEzNkhhM1dsRHB4VE9BaEZ6RXhSTHE4K29nZGgxcDZoa3ht?=
 =?utf-8?B?RXVMZGRXS1llWWZKc040czErTzl2Uit2b1pQRUoxQ3hDRS95WXhvL1Vuc1Bi?=
 =?utf-8?B?UGtKeXo0ZERGNkI2V2p6cWZjTjdBWHVoZWdwbEV3NGtJVXZ6NzNacHhyTTFn?=
 =?utf-8?B?VjczcDlNTXFQV3l0RnY2blp3eER4ZFRyMFFxVktRYS9qUlBaSUNRWG00SHEv?=
 =?utf-8?B?KytDMkM4V0xaQWJ3MkZ1SVY5TERVUkFtSmxaZ0Q0bmJkTDdEZUFPbjdqSito?=
 =?utf-8?B?VlkxT1gzWW1VWWVRYUhBV0gxS3V2K0M1WXVNVFdyVjJMb01oVmM2ZEw3bU5k?=
 =?utf-8?B?WHRJRkJ5UXBoL0p0allGNFpzbldkRkI0cG15bUVldWQ0UFZ3WTlXMDZCdlVL?=
 =?utf-8?B?S0N0L0h4SStoSkpObktxb0FGVlJVRXFBci9iTkJpNEJRbmhiNStYYm9ZcTc3?=
 =?utf-8?B?UmVyRkZSeWRPakFiT0tyaHUxeDhvZWNtQmk5VnBFdnJLYWNXMzFhcGFMZ2xh?=
 =?utf-8?B?NkdyUE9RTHBDWG5wR05SN3pRNFhBamYxVjBkc2FVTXBwRndOV2YrdG10aVo4?=
 =?utf-8?B?VTJCeHIzS0hJaFVMb2lweWV5eU9iRFRkSjdhS0x2RHdyYUNhbVllblU2Z0RI?=
 =?utf-8?B?OWp4TlVtK1N5QWRXSUtCcnZnRC9KdVBYQUVCR1BVVy9lbTJwTHY0ak9yVDRx?=
 =?utf-8?B?b28yZ1d5NmQzUFlzdjFxNy91dVZ1RENOOVZkNEo0WHBJTkVXOFRRbHNvRktr?=
 =?utf-8?B?SmtzdURMdXJHbkhsT3BOdTN2TVFRYm5PVHptb1gvWDhGM2lRcStLdTRpeFBZ?=
 =?utf-8?B?KzZQSmpjaGxlQk1tUXhFQm5pMExWV09EMWNWV1Vsb2MrSjZaV2VuWnFiNkhD?=
 =?utf-8?B?VXUrcmMvY21UcHNuekV0MmkxSEgwNW1tSmNlVTlaVUpMOG5WaVZyZ2dHMS9v?=
 =?utf-8?B?NmpWV2xPTk1zSlhtRlF3eEx1ZmxQeDdEU09qR3JmTVpKRkVqR3lyNG1IdGlr?=
 =?utf-8?Q?JRutTOYsX/YNJpu4EAkz90VVK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb6b461-dc4e-411c-ac99-08dd07de6b39
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 14:36:41.8974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pkWCgFRxp9e5yuX8N3RKJU3rQXCuAMSlOZWJ8vvjEIOIVaOstZaSwevJx940cA0TU7pIGhJr90zCnfbEV0iS4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4590
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731940622; x=1763476622;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EjUxLkAzP5J6xHhdNGD7kDvumOkUzxRoDrYv7wf4iw8=;
 b=HFz3vFkZrkMnpS0BX8AM6whNmm7jKsffEz8aVcDOW7/QgaebtYqUiHfc
 t7ZLaM+eJX3d4a47FlMvyUd9nSa7Yectg2ppFvqwN/z7jx3rP8p/0CN1j
 rO+Xdul1HztGWDx5gsVjLfpe+z8HXi4ronzFzQ/ZcbPlAmTiDP8GQ8BDe
 sbr6a+IjuF0HzJ5Fv7jZWAHePAI8yLubi9AIM58Rxh1RoHBIdfn/LfkUA
 +Q/1Ml8aAB2lMNzGg/18UcPhfk7qIf6ZQa72uaK31pZvo8KJGZYP4JNYG
 2s5ndYb/enoGzPNOL12vMxmEto0yLRg5rFyCGUB5eRm6aRKAxK+nE2y42
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HFz3vFkZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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

T24gMTEvMTQvMjAyNCA5OjIwIFBNLCBXaWxsZW0gZGUgQnJ1aWpuIHdyb3RlOg0KDQo+IE1pbGVu
YSBPbGVjaCB3cm90ZToNCj4gPiBQVFAgY2FwYWJpbGl0aWVzIGFyZSBuZWdvdGlhdGVkIHVzaW5n
IHZpcnRjaG5sIGNvbW1hbmQuIEFkZCBnZXQNCj4gPiBjYXBhYmlsaXRpZXMgZnVuY3Rpb24sIGRp
cmVjdCBhY2Nlc3MgdG8gcmVhZCB0aGUgUFRQIGNsb2NrIHRpbWUgYW5kDQo+ID4gZGlyZWN0IGFj
Y2VzcyB0byByZWFkIHRoZSBjcm9zcyB0aW1lc3RhbXAgLSBzeXN0ZW0gdGltZSBhbmQgUFRQIGNs
b2NrDQo+ID4gdGltZS4gU2V0IGluaXRpYWwgUFRQIGNhcGFiaWxpdGllcyBleHBvc2VkIHRvIHRo
ZSBzdGFjay4NCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3Nh
bmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWxlbmEgT2xlY2gg
PG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+DQo+IFRlc3RlZC1ieTogV2lsbGVtIGRlIEJydWlq
biA8d2lsbGVtYkBnb29nbGUuY29tPg0KPg0KPiA+ICAvKioNCj4gPiAgICogc3RydWN0IGlkcGZf
cHRwIC0gUFRQIHBhcmFtZXRlcnMNCj4gPiAgICogQGluZm86IHN0cnVjdHVyZSBkZWZpbmluZyBQ
VFAgaGFyZHdhcmUgY2FwYWJpbGl0aWVzDQo+ID4gICAqIEBjbG9jazogcG9pbnRlciB0byByZWdp
c3RlcmVkIFBUUCBjbG9jayBkZXZpY2UNCj4gPiAgICogQGFkYXB0ZXI6IGJhY2sgcG9pbnRlciB0
byB0aGUgYWRhcHRlcg0KPiA+ICsgKiBAY21kOiBIVyBzcGVjaWZpYyBjb21tYW5kIG1hc2tzDQo+
ID4gKyAqIEBkZXZfY2xrX3JlZ3M6IHRoZSBzZXQgb2YgcmVnaXN0ZXJzIHRvIGFjY2VzcyB0aGUg
ZGV2aWNlIGNsb2NrDQo+ID4gKyAqIEBjYXBzOiBQVFAgY2FwYWJpbGl0aWVzIG5lZ290aWF0ZWQg
d2l0aCB0aGUgQ29udHJvbCBQbGFuZQ0KPiA+ICsgKiBAZ2V0X2Rldl9jbGtfdGltZV9hY2Nlc3M6
IGFjY2VzcyB0eXBlIGZvciBnZXR0aW5nIHRoZSBkZXZpY2UgY2xvY2sgdGltZQ0KPiA+ICsgKiBA
Z2V0X2Nyb3NzX3RzdGFtcF9hY2Nlc3M6IGFjY2VzcyB0eXBlIGZvciB0aGUgY3Jvc3MgdGltZXN0
YW1waW5nDQo+ID4gICAqLw0KPiA+ICBzdHJ1Y3QgaWRwZl9wdHAgew0KPiA+ICAJc3RydWN0IHB0
cF9jbG9ja19pbmZvIGluZm87DQo+ID4gIAlzdHJ1Y3QgcHRwX2Nsb2NrICpjbG9jazsNCj4gPiAg
CXN0cnVjdCBpZHBmX2FkYXB0ZXIgKmFkYXB0ZXI7DQo+ID4gKwlzdHJ1Y3QgaWRwZl9wdHBfY21k
IGNtZDsNCj4gPiArCXN0cnVjdCBpZHBmX3B0cF9kZXZfY2xrX3JlZ3MgZGV2X2Nsa19yZWdzOw0K
PiA+ICsJdTMyIGNhcHM7DQo+ID4gKwllbnVtIGlkcGZfcHRwX2FjY2VzcyBnZXRfZGV2X2Nsa190
aW1lX2FjY2VzczoxNjsNCj4gPiArCWVudW0gaWRwZl9wdHBfYWNjZXNzIGdldF9jcm9zc190c3Rh
bXBfYWNjZXNzOjE2Ow0KPg0KPiB3aHkgYXJlIHRoZXNlIDE2IGJpdCBmaWVsZHMsIHdoZW4gdGhl
eSBhcmUgb25seSB0ZXJuYXJ5IG9wdGlvbnM/DQoNCldpbGxlbSwgSSB3YXMgdHJ5aW5nIHRvIGF2
b2lkIGhvbGVzIGluIHRoZSBzdHJ1Y3QgYW5kIHRoaXMgaXMgdGhlIGJlc3QNCnNoYXBlIEkgd2Fz
IGFibGUgdG8gb2J0YWluLiBJJ2xsIHRyeSB0byByZW9yZGVyIGl0IGluIHYyIGFuZCBsaW1pdCB0
aGUNCjE2IGJpdC4NCg0KVGhhbmtzLA0KTWlsZW5hDQo=
