Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CCD95A036
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 16:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0FD9403CA;
	Wed, 21 Aug 2024 14:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFV5dxs_2fn4; Wed, 21 Aug 2024 14:43:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B3C540361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724251409;
	bh=6+w/vGws/FYi4MA2dzx/QHBSnu1iOfIu55a4yZ4g2yE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=16iE//rEiinF96Xgd+l7qUGGl/SIZtENjUgnL1pZhq8z/5BUoV36FvfBmg6WsECMj
	 z6foo4TpqaUYq1tmc6I2LvsO6iReIym2XbTApN/WM1Yb/7OBCnZvk1EvuPQkuI0zsx
	 0oznDSgojapBY6YdypGaUrn8DYCNLPGa6jxQL++hlqGXEET7Zsh7iqA8sxKYAzrr3Q
	 DuoWlPJNqaIlwr3Rb93XNxmJCRow6RYru3sagdQc3xN4uqgyBrpXhEg1aRVcaCE/2M
	 elo7P6DbARxryYBexkX4VVqDHLqsTUSBE9VJtYJul7K7uawOgWGkfE4QvGUpb6vbvE
	 /PY1t75xLzPEw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B3C540361;
	Wed, 21 Aug 2024 14:43:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 238AB1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C38B4031E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:43:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FczotUu1CDZr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:43:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 740274026E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 740274026E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 740274026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:43:26 +0000 (UTC)
X-CSE-ConnectionGUID: MGdMbnmRSt6K4p9G5rUYDA==
X-CSE-MsgGUID: NXWlezLHSgSE1JWtlo4qbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22750539"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22750539"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:43:25 -0700
X-CSE-ConnectionGUID: SQvFD5DqSrqDlz52DGQKQQ==
X-CSE-MsgGUID: SlJl6cbzTMOecPJ6dClDdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65316508"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:43:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:43:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:43:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:43:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vX7kwJKN11gTib20gZnjrnSe+PdIBJB2kOxiPPebRwQBuOvfo7JWv1nxA+ZuJwd0L1BVtaT2MDT5zx89uiroEjfJvdQzMj6ZZsRpiJS8Gms34nEtVlZgX6axoBGwV1kzabmBCGhIYI9JmGPrIcb1Gvv8LA0SLaxDwmRbROFaMHKpssLUpAyjwmJ5ugnwCXUPT6o4uFBekx8AvzeV7R+xYE7TBRwn+TeJQGk0tsbH83V5B8nnnBM5ixEYmzWG4qfiwcEv+WXRidF7XAVQMvyOe71N6FnNLDokiDVRX/lK1e7CU/WGy1cYjVznb2r3e8IPoXzWqc8fenJUYpVbt6P9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+w/vGws/FYi4MA2dzx/QHBSnu1iOfIu55a4yZ4g2yE=;
 b=U0h2N8fI9JO13p8nLOn1Hrg04x+ZiUBZj3uEtrswsm5+68KnSRXCWaLMkGN0GUO3zjhFXEcNiTUXbp8Kb3EP3IxgAdZM625eVzV5CiJzTwvNw0082UdFmxlt6bs7SqPVRKhk21xjdrFLaz/k4mJMQ7/tLzq3WrCzp+Za8YGO2K2aKmbZwGOL0fAbEHpIVycmPgcyDCa/Tcl1Poyzey8ZabBxkSuC1l/RnHfPjDWIXUTRZrNhvrOytYAgtqbItcCorMqSZuyc2aHk3lUS0lQjyV8wNKC/WHZRxUGWnUQN4mpRj1Tx8yPQeV83LhxA2GBHCAee/GPGcjXzKb3V9N+X1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 14:43:21 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 14:43:21 +0000
Message-ID: <4ae03918-32c7-4065-b1b3-71b0361d6187@intel.com>
Date: Wed, 21 Aug 2024 16:43:16 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-9-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-9-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0069.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6442:EE_
X-MS-Office365-Filtering-Correlation-Id: ed7f3a05-5441-48e5-3af7-08dcc1ef9a65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXdNSlJrczZDc2hveG1XVWNYQjRYZU12L3ZaTkZobmM3OWFwWlhPMjBTRkFx?=
 =?utf-8?B?bWdpNitLZTR0THdSS0sxL0Q5MmdHRkg4ODRnV3JiR3dZQ0dyY2ZNRnh3TWRx?=
 =?utf-8?B?WGFsMG5aZjdxczh5YUROL1F2TW0raFVHT1FhcmxISWxnVzU4VVppZlFVQkVM?=
 =?utf-8?B?Q2wwU0VmWFZvLzVaVGplZ1BFZVFmNDhRbHhPMDVtcVNucHNjOGZDVC9SM3ZG?=
 =?utf-8?B?WjNJWnJsSDJ3VFR2YzRodHA2Z0FhNDBDSU1wd2dmQVEvcGlSY3ZnT2R2VHdj?=
 =?utf-8?B?ckduQ0VHNDBNNjdRWFdrWDFjOEorNXVCRWZDYkppQzdrUUpmWEVpdC9lQjZO?=
 =?utf-8?B?Q01MbjVSbzkyaGJkM2RwOVdyTVNLaFpmeDgyeTloZEQ0UDg2YytzV0VZd2xZ?=
 =?utf-8?B?V3BLTGRyNWlNWFB0c1IxU25sR1pDWUl0YmRQK0svTmV0VWVhWTZLcnhSYUJD?=
 =?utf-8?B?S0E0aHV5dERQNHBnMzZudlV4dGFBU0xsVkZsblR0YXNobTNNZGdRR3R0aEZ1?=
 =?utf-8?B?emN5N2d4TkIxdlRSdzE2NWpVVmI2OWV1ckl6Ui9pSmVEMEZxdk1yWmVRYlZP?=
 =?utf-8?B?bzBXL25TcjVCSzdaUmtDa0NyRVk0VzNtcHM0V0crOHVwdStMVDlVVzF4SHJk?=
 =?utf-8?B?S04zU0pNTE9POHJISzNCZlhnSzkxalVoaXQvTzI2MVRvdENtZ1RzWmR1SlEy?=
 =?utf-8?B?WHpmVzhsd2dyU1BhTEs5dmZ0N09hT0tLYUNoM3c1dFZKZy8wSDdxVVZxaFRD?=
 =?utf-8?B?VHQycElPdnZ3TDhoWUZJZGxlNzRPc2RMZ0haWVI2czdSOFgzNkx3bGdKR1hG?=
 =?utf-8?B?Q1luNUhLaEg4SUxkMFRibndpWkJlRWJXSERCZ0VFdnh1WHNxUWtjakxxbTcv?=
 =?utf-8?B?TGR1QUVvb3o5bkIwR0JhV1J2ZDYzS1Y0SU5hdUg1MXkxMktXQVVjakx6ajdw?=
 =?utf-8?B?a05yT2YrRUt3TFhCK3FUWEtTU2Vxb2trVHlUNnh3UnRPMzF6cXNsdklWY2tW?=
 =?utf-8?B?ZEh5TkJONTB2QzYwcWhQVzVhT1FYeVFrVytDYzJIOVlzcFRUeCtwWWhhd3By?=
 =?utf-8?B?ZG55amQzUzhwU0M0MU9EMVBjM0ZISGEyVUlOcDA5VTU2TkFLRUZmWHVHQmVl?=
 =?utf-8?B?MDBWOCsySGlyQkVaVDNzaTVxeTVTVE1vQ1NIRzBzT1NTZmFoMUswOEhTdG94?=
 =?utf-8?B?NFkvTjR4dXhpWG5EdTd6M3B4N1hDMHhOdStKWElieForVUdqMGpzM0xrRjd6?=
 =?utf-8?B?cUpWWThScWtzZ2hjc0tMa0Y5ZTF6eVg2L0FIV2NQVlZXTitwaE9vbmowSjI5?=
 =?utf-8?B?bFFmT2pWTzRsVmdCT2RkbDdmVmpTeUlRVmx5blFVa3Z5YWNDSGFKM2I2NG9X?=
 =?utf-8?B?V3FVTWhBbHZraGZLUGdxNGNoaE1odHIvVitxSEtWUktuRm9WMEdQTnFRcVV3?=
 =?utf-8?B?WXltdDBTT0ZINFlQL0hFZmJyOE5ZUWg5c0lja1FZSnFHb3I5UUVUbDd5NHRp?=
 =?utf-8?B?TzdlWHpMb1QwdlB4bDJ0WUZybEtzd0E4QWU2KzIvdnM2aE9iQnNRU0JzYzVi?=
 =?utf-8?B?TFZXQVFuQ1h0RjJnQTVxV0gxQkd5RHB1eUsybzRnbndNZ3BocExIU0pjU1Fr?=
 =?utf-8?B?cDRFOU9SRG9SNjRhV3lkVkdHK2xmb1YreTIrSzdKVld6NUJLbUhZclpYWXVi?=
 =?utf-8?B?YkdiSU5SeEdESnMxZ0Q3eElUWVRDMkFNTlQzVlRHcFhUVjlaVXlBNU9xeGsx?=
 =?utf-8?B?akFYRkRnbEpoY3BNdGwzMU5zVm1qckR4Z21QaVNUVGs0eitPbWRxb1J0ejV5?=
 =?utf-8?B?UTIxOUovMFBRQ28rRnQ0QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTZIVzBDdDZodWc4dURsN2tsc1ZaS3ZQVkVHR0NTS0kxb21Sa3NHRllHK1Fv?=
 =?utf-8?B?OHNES3UzR2dOT0xxZnRoNkhxcEE5MDRVN2ZKcktKV3NraWU1NTVaby81MEZT?=
 =?utf-8?B?dEt2ZlU4VWNTNlFvdmVQakZiZHRMSjNCcUNzMXIvbWZWaUNVTXN6VTdJRGo2?=
 =?utf-8?B?TVV4UFNCdWNUWTBzb1lIeWlsZi8yUjdDQUptVG9UaEt3QXQxTzVycjRSem00?=
 =?utf-8?B?MVVvV242NGdOZENMaWc1NXppYlNSclFzL1hvLzhRcUttYk5WZnljRzRPZTRC?=
 =?utf-8?B?OHBJcjFldkpSZWZwSGJENCtZR1lZaTBlTlRFTFF2Y0Z4ZUhXVDMyUWxjZEtN?=
 =?utf-8?B?alQ5WVg2QVZGVXZheEt4aVdPdkh2RFFsQkhHdC9XZEdNUkpLbEVSclNQVysw?=
 =?utf-8?B?dXNJWmxERXdIMjVYa1FoRXpiZGtDRmtJSzV3aVNvU2Zkcyt0NVhIV3RUWWho?=
 =?utf-8?B?MG51MFV1VEd6SUxiNCtQaWxKL3BXUWZjT2hrT0dDMGlHcERUUnYwdXZCMWlR?=
 =?utf-8?B?TGVpTzFGbnpUMWRKQk1WcjhuT3pPNEVYbmZRU0VFdm5pOTd0dTRuTVpSUmRW?=
 =?utf-8?B?NmdJOC93QUl5S0tiRE9HM0JwUGxZUS9jQTltRmkyU3g2cHZjR3lhc0xPa3hi?=
 =?utf-8?B?cjZKUWE1Q2VSVkVGME1ZOFg0R1BObm9KVGVEU08zcmlMQ0pDZFRXNWtlc29l?=
 =?utf-8?B?c0pKRGkyTTg5cloyb3MxQnNnNXVmYWM3ZkVxZTA5Z2NVWGdKc3Z6bEpyK1Br?=
 =?utf-8?B?WGw0b3pQdVhweTZMWHI0b2Yzb053RllhOGhncmJ3WDlJcGNyRisxMnNVeita?=
 =?utf-8?B?azhKbWVxQ0tUUEh1R0lybWd3b1FmRmdyWlpWRWh5em8vS005N3ZvRTdmbTlV?=
 =?utf-8?B?VUhwSkhYdkpWajdYUGNra29mbVZreUpKN3BlZTQ4NkN0c1ZTeWh2NWptTEZI?=
 =?utf-8?B?Z3RBb1ZXRWJ6NUNBUFIzcjM5WUwwd2VqcnAwS29tU0xUY1RkaDVHTGJTT1RE?=
 =?utf-8?B?K25RcjBoQmlOWUlIbVZrVDIza2hwYWtGbnpqQXJHTjZDNWsxRXZoK3ZONmpQ?=
 =?utf-8?B?c2JnS051eERhZnVva2d5SVZnMTAvc3cxa0tJWVZzem1kdTVLbDBKOHVVYWpk?=
 =?utf-8?B?RUN4VUJKODk0MHk0R2YwenRVeUNzcXF3QjMyeXdaZVVmeFBpL2NHRlVUSnNi?=
 =?utf-8?B?RXFLZmlWcDBkRGpZZ2c5VTFLbStzMUd4YW5YM3BGdklOcXI4YWF4cXArelds?=
 =?utf-8?B?bDNuTEt0Qm9XV1h1ZFpGOXRrcHZrWTVUeUtxUnhFOHdVZHpiaDU5QStCd3Y5?=
 =?utf-8?B?Si9YYWpCeWszMElKbEhWWTFhbmZ5aUxyK1FRZ1pGa2t4QTZXS09kRjBoQ1Fr?=
 =?utf-8?B?Ykl2Slp2eU13aERLZkRMNFhBUmRuQXpCYVp6RHZkWmVKVWprSkQwMGZmaVY0?=
 =?utf-8?B?bmkrVVYxVU0zb3lZcnFxUWpNOFJxR3FTRUNIaTRMdjFMWTFrMm9FZDZXUjRv?=
 =?utf-8?B?M0xvdW1zSEFSSEJuL25lNkFXQjZzL0ZrM1BNNTZFdVFhMFp4ZDExTTVqL3VM?=
 =?utf-8?B?ZHU4Zkp6ZWgzVFFtODl6VVd3M0M1ZHUxVzNBVEhCYklnaHdNMGVEWHE2TUIy?=
 =?utf-8?B?dWgzd1JINGlRVHdUYXlxZHdZMW0zOWVUMERYRkg2REZ3NVlHOEtqNWUyZVNC?=
 =?utf-8?B?QmMvS3V6cWQwZlE3UGkvMlpyNUFPUlQyMllUZ244bFZsL3FQRENBYWw5YW1Q?=
 =?utf-8?B?TlNTYUdCTXprV0ZNS0l6VGxhOTFoZzFHc241eDNub3YzaFQ5ZGZIcWFhVnlM?=
 =?utf-8?B?K3FlQWNxL1l2N2o3VFdWN2RTVXZtNnFtai9GR2F5YnJKaTc4WDN2RDZMR21V?=
 =?utf-8?B?MXFJc3JmWHh1eXRCYzBOOTh6ck8vRk9ncnhDcTRUa1FwZ0FTYTRlekJHQjgw?=
 =?utf-8?B?UHdnd05vYWtRK29uL2kxMXV3UTBXZ0ZHOUhFdVYxWk5vRWNhZG9ZTVZiM1VJ?=
 =?utf-8?B?UzJlbXVaOGxBOU1SVGowM2xMYmoxN21HMmNZUVdSVGhDbk5pQUx4cUVqc3RF?=
 =?utf-8?B?V1QySXNCczMyNnlRbjBRTWVWcUJCUWVjTXpTREpJNjBwcGM3V29sSlMzdlhq?=
 =?utf-8?B?OXNrSkdobHRMOVp1Qk5VQWFRbjNLSEZQWlNORTltZG5HNUpuRDAxWUt4Q0NM?=
 =?utf-8?Q?R8ES4PmMHBcg1/Ubwd2K4SU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed7f3a05-5441-48e5-3af7-08dcc1ef9a65
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 14:43:21.4153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cJYU3aXO7KtpQtdaLNQGpO56N5SbYEriDIr8OGwSMthD6uexXF8CkpomdOLa+uvUSWi5hu6MLxBQTzsXmcezeZ+uXON9+3Y/4T3wKHRKl+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724251407; x=1755787407;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v1B02PK8ZZSbu+gsAcnybXDkrrRcp9eUYWUGh9Xphn8=;
 b=S1ddqy/Mpt+Jd/wQS8ph7aUUciOICcMwHebERpbUQ/v9RZrGHUYgtQ9O
 AtxSfbDKLmj/hZdJLqmRwhl6FEECwXyVkf1alvYAUrby1IsyXto9pQW51
 GSVn2bO4Y8esCLV12EPY814AbQ+EDCpEsDHpup/yCXhfc0Fw6QQMcVn0c
 QGwsNd20lx2hxRhYPf2MOULmKEOmdCSOZexZiGhNtrOeg9rkRR0JYn/Vw
 zzGIGr2H7gjaDlbz90Ld5UyyRMKpVaRsnGqyNgopPEHreSGMoUh11tcnR
 iOY0iGBXI2v+8qPvLTzRFHCXlReJ2m1O+P6VXvtJBdjodkhO5gIrdudcf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S1ddqy/M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 08/14] iavf: periodically
 cache PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:33 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The Rx timestamps reported by hardware may only have 32 bits of storage
> for nanosecond time. These timestamps cannot be directly reported to the
> Linux stack, as it expects 64bits of time.
> 
> To handle this, the timestamps must be extended using an algorithm that
> calculates the corrected 64bit timestamp by comparison between the PHC
> time and the timestamp. This algorithm requires the PHC time to be
> captured within ~2 seconds of when the timestamp was captured.
> 
> Instead of trying to read the PHC time in the Rx hotpath, the algorithm
> relies on a cached value that is periodically updated.
> 
> Keep this cached time up to date by using the PTP .do_aux_work kthread
> function.
> 
> The iavf_ptp_do_aux_work will reschedule itself about twice a second,
> and will check whether or not the cached PTP time needs to be updated.
> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
> from the PF. The jitter and latency involved with this command aren't
> important, because the cached time just needs to be kept up to date
> within about ~2 seconds.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
>  2 files changed, 53 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index d709d381958f..7124a717cd03 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -153,6 +153,55 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
>  	return iavf_read_phc_indirect(adapter, ts, sts);
>  }
>  
> +/**
> + * iavf_ptp_cache_phc_time - Cache PHC time for performing timestamp extension
> + * @adapter: private adapter structure
> + *
> + * Periodically cache the PHC time in order to allow for timestamp extension.
> + * This is required because the Tx and Rx timestamps only contain 32bits of
> + * nanoseconds. Timestamp extension allows calculating the corrected 64bit
> + * timestamp. This algorithm relies on the cached time being within ~1 second
> + * of the timestamp.
> + */
> +static void iavf_ptp_cache_phc_time(struct iavf_adapter *adapter)
> +{
> +	if (time_is_before_jiffies(adapter->ptp.cached_phc_updated + HZ)) {

Also invert the condition to avoid +1 indent level?

> +		/* The response from virtchnl will store the time into
> +		 * cached_phc_time.
> +		 */
> +		iavf_send_phc_read(adapter);
> +	}
> +}
> +
> +/**
> + * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
> + * @info: PTP clock info structure
> + *
> + * Handler to take care of periodic work required for PTP operation. This
> + * includes the following tasks:
> + *
> + *   1) updating cached_phc_time
> + *
> + *      cached_phc_time is used by the Tx and Rx timestamp flows in order to
> + *      perform timestamp extension, by carefully comparing the timestamp
> + *      32bit nanosecond timestamps and determining the corrected 64bit
> + *      timestamp value to report to userspace. This algorithm only works if
> + *      the cached_phc_time is within ~1 second of the Tx or Rx timestamp
> + *      event. This task periodically reads the PHC time and stores it, to
> + *      ensure that timestamp extension operates correctly.
> + *
> + * Returns: time in jiffies until the periodic task should be re-scheduled.
> + */
> +long iavf_ptp_do_aux_work(struct ptp_clock_info *info)

Why isn't it static since it's used only within this one file?

> +{
> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
> +
> +	iavf_ptp_cache_phc_time(adapter);
> +
> +	/* Check work about twice a second */
> +	return msecs_to_jiffies(500);

Thanks,
Olek
