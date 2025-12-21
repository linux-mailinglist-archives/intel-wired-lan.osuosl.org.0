Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 161EECD3E92
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 11:34:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4056760E38;
	Sun, 21 Dec 2025 10:34:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aVOww1u5L_bl; Sun, 21 Dec 2025 10:34:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B58C360E3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766313267;
	bh=e6R1hcnxx6ujhv6XN8iyPmxuH38cIaXd8OKFxeZQwPU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pq0IPlkDHGAd/MbgVblg9OrzqB2/hsQHUNxVB7EOSUrPKS8Wy34tfc7N5LeZFjAZG
	 gDQDfbN/vri8JFsLJMD/djkUcfggF58cys+Zf3Nl9EBHLmbfDlJ9b9W6kNuKMnBCKo
	 Whua+KRZEXir/I4Eh1Edbs/tC5sHyh4lF1U6Ye3rLwJXW1eHu5LWpOfuHQAck1Jc37
	 c8gmQ1DIWzMcV5isPsX8hMT+Ty1gbX8F5nfrD3gkCSu9NerLOLFCyXG7VQ/qk0cROY
	 CpyFdbhc5uyZss8aUDbL6xrEE6yLZKLWb7LVfZ6Uo6WO0sR7FaT8n4uK1j8C14iidA
	 s69q/8QBnGZxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B58C360E3E;
	Sun, 21 Dec 2025 10:34:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AE5621A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94CAA40785
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:34:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 12_vZCSx_9qa for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 10:34:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9555240754
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9555240754
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9555240754
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:34:25 +0000 (UTC)
X-CSE-ConnectionGUID: vnwX0BotRCidN0VJnyl1mg==
X-CSE-MsgGUID: gBnWmMDvR8W6BPB2o2dVcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="68081115"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="68081115"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 02:34:24 -0800
X-CSE-ConnectionGUID: Ui4wbVYeQ2iGZ37hfTR5CA==
X-CSE-MsgGUID: qP83yLrEQSeD5x9sVO/PlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="199571168"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 02:34:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 02:34:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 21 Dec 2025 02:34:23 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 02:34:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LfARbdYl8h74s31XPFtv01pxkvrcoKQdJvUqvICxAKtunCgR88bUk1CjcqQwGzf52ksndhnKXS5VrY6S+SlG04MiQvfnEzBGMq8vgPX77HR9AZnmEmoLDFzqehMwRT90WDrSXteWS4FHC9d/Wtw7BwYgxJerbMb3a29Q2bKI/BbtbSS1h4lmFllLb3tP8DaBMaRCoX+TBM36sTaGF6RmjrYPFNXJSxB2PZWZe2njaRWW6UBjmLkULE+OSsrs+8rzAuejmnWLQ0e/1yrxT/vVicDqEOEy5cC/OJWFFRdUhXDGQ1Ee7fe/d8vpMCoVnAXAlKXJJzfE8Bd6iXIxsCYeqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6R1hcnxx6ujhv6XN8iyPmxuH38cIaXd8OKFxeZQwPU=;
 b=RHvwNq0+jSk0yBP2LdMtp53YOs96BoT1II1zhGVFuX0kzIgaOVhNVihMoYubLb0MKKe41s1LcOWu2SdlAPUv70svB9UqovoLOs1t410ntvrie2J5mnZ5iyaNWZY+lbk9kqUaLkdpGlIu4jhbEfj5/UZayM+sPmnSU1qJVpKBd+iBeIhIvJ+B4HyErmyUoeU2AwGh82I6OdFAeIO/JDafHl7MahkWBQNIseMDo5pRaDR5s06i6LOlfKoUAp+3S+YDIKIb8OMv9eP2MhM8i+I05VuP5UtBOgKvZ/YbmDY58Miciy5zpC9kjJkoTPChn+CadXGjotmQ+6VfCbjA/lpoVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 10:34:21 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce%5]) with mapi id 15.20.9434.001; Sun, 21 Dec 2025
 10:34:21 +0000
Message-ID: <7c810e40-ea86-46f8-845c-564306d7ed40@intel.com>
Date: Sun, 21 Dec 2025 12:34:14 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-2-enjuk@amazon.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251025150136.47618-2-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: c6cbd163-ff25-4e2d-3f94-08de407c80d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0tRR2RTQU9YcS96WlZOeFpSb25DajAxQ0ZSZkZnQnIwMFlqMkUyS1ZYek9N?=
 =?utf-8?B?OG0xSGVINUw4V1pJZkpWTmZEdm40SERqQVRLN3luNFp2c0x5cXZNbHdydm1J?=
 =?utf-8?B?YU1CWThHTVV4QW50YWRBRTAyNmx1ZTFNUzI4cmVBMEZBRU1CZ3Z4cUF5OHc2?=
 =?utf-8?B?dHJiTmFWYlUwMDRIMjhKbGVETFpxTTVsTzNDblluVzZQMWFLeWN5RFREMXlP?=
 =?utf-8?B?cXZwYVJPa1ZiU1lJMTFJYlZqVnFGbFlseWlkaG1XMFpyeFZhcGFDZktiMEdE?=
 =?utf-8?B?Q0xtT1ozZ1NPMzBpYW1XWFVtR0syZk53ZzBnYmtEVUIvb0J0Nm9BcVc0WWJO?=
 =?utf-8?B?Tk1UUFZiK2s1ejRzaThUYXQ0dXhNdm1VV21saGd3S2U1SUhWNVFGZlhkUU00?=
 =?utf-8?B?MEdEUGp5YzhSbmJxdlVVMWRoc0VCYlordGp5MEZUUFNCTVkzeHZyZWtDdDI2?=
 =?utf-8?B?azB6VEZDVXNDMTFUY0RaVUxoYW00WXROcUxaNTVOdFNXRDQxbFlJOXZpZEto?=
 =?utf-8?B?NWcxeDZFNzlQWUE3V21GUXBvQzJwcHlseXZrelhPeFZZaitzbEFxdnhUL0dz?=
 =?utf-8?B?U1pSbDlKRllrZ0wxZk9CT1ZFbE04ZnpwUU5UN2lPUjgzSkJYTDVCUGJXSlg4?=
 =?utf-8?B?eHllVDE5TmpEcm5YVisrQWluMlVIa0JMWFFqbGhleHJFUzh3OEhrSkVEWHJI?=
 =?utf-8?B?ZTJRZ05TOVo3NDdoSEZiQlExSm8xOEpPY3htS0x4cmZ1NHZ1TlUwRWUremtv?=
 =?utf-8?B?V0wxSlA2WGxkWVcrT29ka3NkT09XVVhlbzBxZ2krUlVVWEdqQU1Rc0ZuKytW?=
 =?utf-8?B?bW9NeWdSVVZzQUpydzI4MU5Ma24veDQzbWJaYTZlQnNzVHZGSmhWU3YwNUZ2?=
 =?utf-8?B?UjQ4UUVKTHdEbUs0Q0dkdHhBZ3U2LzhlNnJPaWFHL3g3ejBmY0ZPVTVrSGJU?=
 =?utf-8?B?UlhJVzZMaVBKM2d0SzBDN283Smx0UEE3anEvWEFtQllUYzRISWJMcE9hOGln?=
 =?utf-8?B?bWxnZUNWbmFwNC9NZHlYV2tlemN1K1lPSjArS0JjTTZRby9YTmlVU0lmNG9J?=
 =?utf-8?B?dk1HZnRxSG56d2hrbXZacGJTaFhubmFuTkJmd29tVUQvUnNhS3QrcllCK0o3?=
 =?utf-8?B?WnZRMTVkV1cwQVNNUkhpV0FscEF2ZGpkSEJzaUZpZWpuc0UrWTdxdGZiNzV4?=
 =?utf-8?B?RUFBN29tQm8zNTlnOG1hOEhFb2RCV2hISG90SlB4WDFsVDdTOGF3eUJ6cnRZ?=
 =?utf-8?B?cEVkTGFrRnkwMHA1UE9kUXpzaDZ1VmhPUzdTSlhCdzl5Qi95bVl4a0tSZ2ZJ?=
 =?utf-8?B?Wlk3OHBlUUxZajFpcU9zN3A3T29ic0pzdmp1dkQwM1dFejAvNU1sbXVtTjZt?=
 =?utf-8?B?eUd5VzNUdjFrRVhaYTQ1Ulg1NGVDNGZsYk5zMVF5RGtmS1hGWE8xUXpBTXh5?=
 =?utf-8?B?dWI2UFUxUmErZFFiZU9CYXhqSHV6QTR2RVlYK0RkQy8yelVhajEzTTFqa0FI?=
 =?utf-8?B?OXRZeFpjcFI1cWd4RFh6eDBZWHJKd1BEaXg3aHFVUGhqV0FqZU55Mm4yLysx?=
 =?utf-8?B?NkYrRUFGcm1zeThsVDFEaURDNi9WVTMxaVNYMTBYYmJMWElLNlNnZVRkeXYw?=
 =?utf-8?B?dElTMDdac0gwMlJGVzBoVVRxdFlhRVFaZWk2Wmt5d0pjY2VJN2FNbWl1cjJW?=
 =?utf-8?B?Rms3MStPWkVIZGNOQW43QURoWWtTMkhNY0M5ZUZDSFJzSENIUGNnRGgzZk1a?=
 =?utf-8?B?SEluOVhQNXJKVmQ0b3dCSXdhOEEwUlZ0VGlDbS9STzV2TkNMN3JzdmY3Q2RS?=
 =?utf-8?B?Y2RpWkVlMGZCd1RxdU5wTzFhUE5kRGtmT1NhbXlubzkxYTlLdGIyeWdjRDVR?=
 =?utf-8?B?b0R6Qll4ZW9vT3Y4UGIrbFMydXhDblNYU2FZbDBNK3FRek1vOTZTUzFLVldJ?=
 =?utf-8?Q?EbZcnSz+1OM4mgUI4RfK83gEHI2GiqOE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUVRdDJ0YU8vazhXN0NpWFlaRjRiUXFrVnRteVJUNEg4b0NSVUY2MUF6TW1D?=
 =?utf-8?B?UjIvcHJ5cmxPR3lZQzNPcUhXMzdpRDQ1NVpCRE4valNrUGp4NVZFTE1YYmdj?=
 =?utf-8?B?VE42TzRHTjErYmtyb0VLT25TVVQ5cUtGT3FWb01FUVZPN1B0TWczSG0rUW5i?=
 =?utf-8?B?UmZiVkNEMWRPUkRwOXhsRGxVK1AzeFhBc2dSZXJoQ3EzclJkemIrMVU5RlZV?=
 =?utf-8?B?UHNXUkFscWlVV1NjYXZid3U5Zml2S1RqR0V3dVdvT293M0JVUTZSbnZycUJj?=
 =?utf-8?B?MDNzYmFDNVlNQXFtOGdVZ1dlR3BJK29ESWk4VnJRbkhDcEFwZUphRFlUb015?=
 =?utf-8?B?cGhGdE82UEdBa2N1K2krMjJWSHNqQTAxeXk1YmpmRmdrKzY5RU9pb3NQUlFC?=
 =?utf-8?B?TkJzL3lUOTJ2amNlRVduQjVmSGlsZjhiZHhJUkFNM2ZTdkhGRGVVQkw5SFJH?=
 =?utf-8?B?S1gyYlFreFBJekRKQ2hDd3hjQXdxOTJQcnRRRUUyaU9PV0hSTjN5UTBwcFdT?=
 =?utf-8?B?Mkg2Q05KZzFncENDNDZQS1pjRk9KU0J0d1RIOG5lM0ZxQ0RXUTkzQkhDd2xV?=
 =?utf-8?B?TEovZkVZWHJTWjhOYllhYVBRYWFVUlFyNXVSWUJiaG80ei9qd2plTHlXRXI5?=
 =?utf-8?B?OXp6SkFMR0lLWVo0NW4zYWtBWTBuMUZXZmJFVlpsUWEyU0pwOFgzQU5Mcjl0?=
 =?utf-8?B?dy8zOEhZeDB5TTJRMHdyZ3lqZEQvbVFCellKSFNBL2dMbnpUcVJOQ3N4L1F3?=
 =?utf-8?B?MjNJRSs3NGtOMitLNnZRclpoT1ZqU3JGSEZVaW5mRzI0clNEa3g4a1pzQnNB?=
 =?utf-8?B?RWd6TFVncElTWStubDkxTXpQcTFxQnpoYTRCMHpmbWxDam96aVRENDMrV0kw?=
 =?utf-8?B?dStENDJnbnRPb08vTDN5TFlJU2J4WXNjeFVQcW5FNnBoNGNQQ202MFZEL2hU?=
 =?utf-8?B?WEtPeFJ2MEtCcG9mMlNnT1pUei9zODhQT1RqOVBqTXRXUHlTM2tRQS9ORkRH?=
 =?utf-8?B?bUF2cHdCc3BmMllUdEZSZmlOamVNQi9yOTEwbzBZRXdOOHkrMVQ2N2c0c3BC?=
 =?utf-8?B?R3V0bC9aT3NRMHQ0cDFzK0I1OHBic0FybHJKcmEvaSt3TEFjQXUyM1ZHbTBK?=
 =?utf-8?B?emNXN1N6SE4yU0pBeHVQbGxZUGkwM0VYSFpTVVAxcVg2RVM0blYrMy9MVEVZ?=
 =?utf-8?B?L1g3eC9SY2s1YmZLamM0UlUxWThOendVY3VlR3ZKTWJ1SEVudUxSZHBDUFhu?=
 =?utf-8?B?anQzdmxCOWNQeTlDOHc1eWFlZnFJcnJnaHFtekhJWE5rYkdKYlVPcE5XNjlK?=
 =?utf-8?B?Y1Z5eVZiQllzaUk0Sys1cldjZDlCaW94bDVoUDIvYm9wVTN1cjlRUC9Ld2py?=
 =?utf-8?B?SUlXZlh3NnpwZzZkemhtVVIxVVVxeVJncklvbERBVis5cnU5QktrTDFybUFL?=
 =?utf-8?B?TjRRQ2pOQ0RGSTNqUy9lSUhqc2x4M2krdUI2cW9qKzc1S3dtK3lIN2tKTlc3?=
 =?utf-8?B?NlNxUlJBbTJqUzllZlJ1Mm9qTnBaWlZXV281TDF1NTdxQjdlZ1AzV3R1UDlG?=
 =?utf-8?B?aFBFMHpqbTZGVElBcFN6d3M5dWJqTGI4Ky9kbTVFS0tscnpXOTdYWnRRTXhZ?=
 =?utf-8?B?aFdoQUhVSXhVekptK01abHNPT0dSU1JTNEdOYkxnRk1NVnlKZDJOYy9xRTdI?=
 =?utf-8?B?N1R0eW9PcTJHUUVPRXhxZVJQb0tkdnZ3YXVURmNMU2tPNGJrNW9tM1k5cjFP?=
 =?utf-8?B?Mkl3RjRCb002eVp3VXU2MmZXdEc4eXNUMmRxM3BueXJQOGtKQmh2SkVJMWNw?=
 =?utf-8?B?cldDSTFWTVJvTW1jTG4xamc5RVcyY2xTRlJGdnBHMEpVWlBYQ0lOYVBkQStV?=
 =?utf-8?B?LzYxb0UzTjk3T1JhSkJSUHhQWW9iSmRnMGJNbWY5QlY1TXU0QjVRYzlETVJs?=
 =?utf-8?B?dnQ4d1doTm55RVFSNytiNkVVRXdYdTBRU2xEQjlHMHNvcjhtOGgxaGZLcXlL?=
 =?utf-8?B?aW5KVGRsdXdYUENPUmpxK2FQMng2QTVPb3l4OEJieXFMUGxWS3V2Q0wzMXRk?=
 =?utf-8?B?dzg3WGEwelBGemVYZ1l2MmZWTlRDY3ZYbTZUN1k3S2VNS2w5VkJMRS9tVk1C?=
 =?utf-8?B?Z3IxeXJOOXVJeEhmeVdCUlBrWEQ3ZlAwTnBWTnBCY29OZlEvc1VXcGxQWSsr?=
 =?utf-8?B?Umgyc0ZsaGtETU9tQU9BancrdnN1U25hb1huRnh0UzVjQlEzTmU1UFVGY3Qw?=
 =?utf-8?B?YXhuSXdxa2dod2VEOStSdTVQdStweSt1U2k4MkxPSUYwcEFtSU1yMW1rOWwz?=
 =?utf-8?B?b3RxU3NHQ1pNNjIzL0VpdExwN0gzdzZZWWV5ZHIxeC9aZkNXK3VpNTFnSU9p?=
 =?utf-8?Q?UPKpxGdZOx7eZ3f0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6cbd163-ff25-4e2d-3f94-08de407c80d5
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2025 10:34:21.6016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uUQlMxB7zhrg6EHJwCvgVA2P45rAzEd0n8JxqN3asGQxYCDX0wa7B95Q4dsoqT3PPLpNC53BjeAchOCa9cd3tyZ75JyYT2h/6XiHII2rVAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766313265; x=1797849265;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rnYeBaFPtEfV479Bs1FPdPqpYqklWf6mUvhXkL0LTZc=;
 b=EjBYYkZJba0js9df9z/ODTGXinpfyhr8mtBupe5Md4H22hlVZc6fWfHL
 lvHGXplGl+L6TmWtxp0t9auASX4BTBrmXg1UfENpreJqEzoO7Un6b0EiG
 bKESOgLV4pvn5CFziYFSuoncrj4uW7o19qEk3oglQCKrdCfwRmx3V10ge
 /wD3aXcjUbYHoTQjCqXUCOJJjd4ueIAnPhX0lfEHbldPWmecSwMGx7q9p
 9xsD/PGR+dSYnbqqf6JPqskYeCL+utuhiXKL9BFyQmjRtD33au2uaSByD
 gcotJZY+G1BaN66nq1bx4Xh0Lj6T9LGhRn5iCOUB4/v8bpN7TmyEWOAXr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EjBYYkZJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] igc: prepare for RSS
 key get/set support
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



On 25/10/2025 18:01, Kohei Enju wrote:
> Store the RSS key inside struct igc_adapter and introduce the
> igc_write_rss_key() helper function. This allows the driver to program
> the RSSRK registers using a persistent RSS key, instead of using a
> stack-local buffer in igc_setup_mrqc().
> 
> This is a preparation patch for adding RSS key get/set support in
> subsequent changes, and no functional change is intended in this patch.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  3 +++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 12 ++++++++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++----
>   3 files changed, 17 insertions(+), 4 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
