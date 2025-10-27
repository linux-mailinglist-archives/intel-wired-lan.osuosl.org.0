Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E33C0F972
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 18:18:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9A838418A;
	Mon, 27 Oct 2025 17:18:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U98F57BkH5ij; Mon, 27 Oct 2025 17:18:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B9A784186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761585495;
	bh=b0Up2t4Yj9aAiLNbvbDFJbLOa+qUVNbZoQe9SJphiX8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yzJ1makhh2/u5FVeOTAcJ2Og4vLUdMUHXMLOEZo4gTv86uxnwqkJqM8efs0Ocj9dA
	 ZAO+vM+qKTwhNPi8QVAxWoSkKrXD3X3wTwCWR5PL6q1EFKZemE7boCmUdurvEjFlGX
	 9rOJ/ZYtrcR6gPscBy0Z/p2potZeEGk7RcUBIRDJrwPP4a5gv9CoL6UHPMANngDB8v
	 iYKCuskPlDm8YOY/4zRQYgc6CRecyxaxIW5aG0RWfmvGAna0iO0FNhVvP/KuEnsLVR
	 S6cGdFZjXVP2Bm8y6XFp31CXchowciHt3A0siQrza4Iggll/68nbQNrCTpjbV4mNr2
	 G7odMTGgDxX1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B9A784186;
	Mon, 27 Oct 2025 17:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ACF143F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 17:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C5D28417D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 17:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_pqQNFFYqQv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 17:18:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE3508406C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE3508406C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE3508406C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 17:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: QqWws/hFTRKhr4yVs9icjg==
X-CSE-MsgGUID: 62u+LCH2ThW4C3RsTYu5mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74275373"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="74275373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 10:18:12 -0700
X-CSE-ConnectionGUID: +dCFPGivSeWMv/qI2yqZsw==
X-CSE-MsgGUID: T1SPEu0RQmWH5mUMtUuG7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184994847"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 10:18:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 10:18:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 10:18:11 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 10:18:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GNruYJtquMJWG1IPcvlKPXwHClDZnPoeKpJL5ZxYqxjO5V07PLO6XQqawJBPhPVMT7+wpDxiTNtr83cZCIRs12rQlLqH1wYQFf0M+6KPful+j0ROqI9CbH4+wtMhTR0h0nWEwUUqjOwqWfWW0AdLc6Ui7QL9ow7wgrPb9IcZlmfj/iGTQFIgp8F9JH3W9inqJGTZWeqqwehdZosl4S1mbAU2ycBzfR+Rgoku5jQ8hGP63/V8fLXsQK1W5BTv+t8dirMVofaTMV9T0SBtBTUb5rapwQuXk6NVJBVml+mD8665/Wl7acRTlu/DwqJEKiMqqxgQ29zDcmDzV0NlaJx4dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0Up2t4Yj9aAiLNbvbDFJbLOa+qUVNbZoQe9SJphiX8=;
 b=gq6ARXkN1571uKqpTqTeOnsi9BJptX3HCIe7I6Tzv7D1ImYSzVGe7LlXY2RjIXtBZ/L/edq7ptRtCNtpmA0XEg4tljqnsEgSp8tbWN/mvOk+rfvLRl/x7aQAN1evJbrx8b8vD7qn2g5iFrABA8JgU71/faeOBegCEbRwDy0fX3GK+27Xt6kO1ckCNA+fXf5c39PE4E11WSdIXREoGl3B/y0cQXEvXF72AuQv0iL8s0jAxhtn6qcVCYSzRwbDt2gblocYxmeGXv7kwIa/Po+esDomfjncjfMGaaDieKtWJWa0MNskCwjrTmTRBVZKERMi8JKaqxkqNBinaE6uD8G/Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Mon, 27 Oct
 2025 17:18:06 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9253.018; Mon, 27 Oct 2025
 17:18:06 +0000
Message-ID: <5800be3b-9347-452e-97df-d0e7d939fadf@intel.com>
Date: Mon, 27 Oct 2025 18:18:01 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
 <aP-cgMiJ-y_PX7Xa@horms.kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <aP-cgMiJ-y_PX7Xa@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0019.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: 336c7450-8e23-4559-0c46-08de157ccb2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWpxVW8vTlVVbGN5MVdici9DbHg5TUYvRnFIU05lQUVyZUY0ZFZ4TXVGZmc3?=
 =?utf-8?B?SStlWDU2VmVzSWNqMy80b3dqWDJyTkRHTm9VQTJ1clRmaCtscVV6VjAyV3JF?=
 =?utf-8?B?cDFjUUhnMjlsVzdvZy85a1hPYU5JUmpaWjZ5TER0MmZIeUZ0bUtQWXJKdVZa?=
 =?utf-8?B?Qnp3am0zeDBkK3FqcFc3NnNPYnpuWGE3TWJFV3NHeGpoV1dMRXRIeFdZcUhF?=
 =?utf-8?B?bWhJWFROeTZrenFPczVnRFdQS0lMR3ZSZ2JSQXFBQXJSUGEvZkQrdkFxWnl6?=
 =?utf-8?B?bTJRRmZEY0tYMjI5T1ROaEJlSDVpWXpZQUkweDEvem43eStzRW9Fdi83YzBq?=
 =?utf-8?B?blNBcTA5L1pHSXBoRk1UVEdtMkxGM01IdlRTYjBWU0VzSkF1NTE0NVpZaUVS?=
 =?utf-8?B?ZXEwa3d0bFdYZ2VJQUkzT2F1bWI0WnNEUHNKeUVuN2h0R2tQRk5wczFzcDUv?=
 =?utf-8?B?ZkcraFJBSjlFNm9XSTc2N0NsODlaSGtlL05rc2gydjE5VmsrbE9HU3lIRHln?=
 =?utf-8?B?WTNjVFBqanUyU05oWjNLQW0yS3ZxeFMzWFpCRjY2dDZrY0FTMFBtcVZuYXlM?=
 =?utf-8?B?UGZac0ttUlFSbFNtWmJPVWRBWmlYeUMwSkI2b3BvdFFqUzg2NWd6QlNGMEZE?=
 =?utf-8?B?eTd0Q2VjczRIeTF5UXNZV1dtNmRmTVBoZkRVNThEdThOTW5pRmwxa2E3TUxI?=
 =?utf-8?B?T2NBVC9yZ0FaWDFWZUhzL3FsTDl1ZGNhS2RpLy8wUkNaUzk4azVFYnZGZW9v?=
 =?utf-8?B?VjBRVWowaUhKZlhhWkkxOWpzUHRnQXpZUktLaW1DKzZMOEgydDNrRFpKRHpa?=
 =?utf-8?B?SzFhOEVJMzJ1aG5yUHk1ZkZLK3pqQk1qcWs2VUNvRFNsU0pkWEpBK2p6WFJn?=
 =?utf-8?B?dUJMc1ZOeHB1VXpLOUlFSTdlOU1FakppL082RGRpUk8wck9taUxURUx4b3Ev?=
 =?utf-8?B?YUZ3Wm5OcUwvVmI0ZTBucHYwYW1sK0hwT3U5blF4NnBEamp4NmxLMGlZeXNi?=
 =?utf-8?B?STNud1kwSG1nRlpaS0NSZzdZdUZQZ0RJMzVGQmI3Uzkrc3phVEREajN3cEZw?=
 =?utf-8?B?UzhEYjlKeVEvcERxRmNaQ3U1bUYvRHlDL2JLUXkvS09xWHRlaUF6dHozdDFN?=
 =?utf-8?B?QmpSeXlUR01zMGJHNGVobUZ0QWJ0cTFKbDZ1MUR1ZVhhQUpzdkRkMnJKYy9q?=
 =?utf-8?B?OUF5T3pEZVN1SnRpUitaV0dXd2hLZytYYVhWVnVoQ2hzS3RBYlZCRkNwM3lZ?=
 =?utf-8?B?YUYxNUpqU1JFN245ZEszaERvdFdhaXQrL1BhV215KzZVU1pzTDVlMFBieEFD?=
 =?utf-8?B?WTZLU2NyQnMxTGNUMFlCZGpJTmpXQUlXcUhpTzdhemZBbjlMNVpxYzZaV0Ry?=
 =?utf-8?B?TU9lTGZQMGhVYmJ2aVBlYWUzemdXZVZKUHpObWFQRXVJa3JrSmZSRjlxMHdQ?=
 =?utf-8?B?Sm9iRDR4ZG5pcXlmeGwrMVYvV3dZZkdpaEp2Rnhrc1AzQ1JNVlhjVlNhbFBG?=
 =?utf-8?B?cDc0MTRoTUgyNEJiamJDQ0VZMzZDYW1GcU5ad3A2cE43c0UzZDhoWXh5VGUz?=
 =?utf-8?B?aEtTaXRuektnM3lNZm4vb1YrL2xJQ0FHUWkwQnFEVk94ZEJMYWpRd2pmUXJi?=
 =?utf-8?B?VUM4Y2ZML0JQc1pHdjNsdWVoNU13WUptejRMTTdiNmNCUVNTMVYrU2JWOGtH?=
 =?utf-8?B?cWl6aUJMREJQYnlPNkFKZlZrdXpDaE9UV0sxSHlmYkhTNFhSUVEreFhieEhQ?=
 =?utf-8?B?T1ZadE10LzJWbmppRHlNU0NwYnhoRGY2WktyTHFTTFVtaTlMWEFyenBHcmJT?=
 =?utf-8?B?eVM1eHVoRkZ6bnp4azNueFBWUDJHd2Nmd0JJemFXYXhtbUFkdno0bFY3ODRW?=
 =?utf-8?B?TlBsclpWaTRpQjlsTWcyS1M5WXhHZzlDMFdPeVVSdGZBTUdCYmZuekdNd2k5?=
 =?utf-8?Q?DworXGUuWARJZ6ZM3KK7ztd6XA0QfK7E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckZ0R0Zmb0REbkcrT1Nzcmt2MGNjSmJKNkFmZlU1ZXFDRHFXZXFveE5jck9i?=
 =?utf-8?B?Q1JhVE1rZU9pcUVabnc4eFhlWndHeGV5QzhiL0tGTVA2ZHZsNWhFOTY1enRo?=
 =?utf-8?B?dkN5MlF2NnZHQm0wLzNXMWwwYnVSYkoxdTJ0alU5YTVtemV5RzZ5eEp5RkFp?=
 =?utf-8?B?NEdBR1J3dGpmUURBblN0R1VTUXBvZDNtT29paHIxMnNnQU16SzA4TEZRWlI5?=
 =?utf-8?B?N3VFcXlNWnpBVHVvUzdOZ1M5ZUhpREpVa2Exb3RveEY0RnZXYzlRa0h5MUg5?=
 =?utf-8?B?QXpFUnVYU0ZVWWYxSGR5RVZmbUloWEw4L2Z3QjFtbFR0S0tBTnZ4em9ZKzJZ?=
 =?utf-8?B?M2VySGZDd2IrbkFkSFRScGpOeVNOY2Rkem8rcWIweFpFNXJRTW1YNkp3MVRa?=
 =?utf-8?B?b2RzaHVvelNqd1BoSE1MRGE2NUZaUTljREI1NUVSS0xtbFVTUDFhREIzOUVZ?=
 =?utf-8?B?RGRXSGZjS2ZFOVc2QlJESmRRRGo1ZVNiUDJzcjNMMVpKMnVMT0lkWHNxSGdF?=
 =?utf-8?B?MnRhc0FKL2crVVE3VkQxMkt5WXk3RHpPWjNGVXVGUWo0ZDR6TDBMa1Y3SGpH?=
 =?utf-8?B?U2FURnF1a1F6ZU04QzVEd3lzaGMzaE5zVzFNZFl2YjJIaHhPNFp1Y2RVbyt1?=
 =?utf-8?B?VzB6SEFNRFVUSE1zMXlqQlVSTW5yb3BucU5QNDFCdnFQNThja1FldUlGWGNV?=
 =?utf-8?B?Nys5U0lQV0lwZjZXVmZCdWFCY1RUUm5FZHQ3dW10SzAwb3plWHBRVXRiZnNJ?=
 =?utf-8?B?Nk5ZTnlwdVAxS0RFVkRnR3RtQkRoV1FFSlBKWnNBcDgrdFhTaHZJVTFmdVR1?=
 =?utf-8?B?RjE2c211REN0QlpRSHkvWXh0SjdJNUJHano2eUUwZkd2T21yQWVZZ0g0ckJy?=
 =?utf-8?B?Rjgwd0d5M3dVU1htZEFCRTQvR3F0bmtCZ0w4Ym9PSFpKUER1M2FlY0Zrd2dJ?=
 =?utf-8?B?RnVuSFpROVE5RlR2ZGZ2V1ZJbzh2cXRLb2o4ZzJnaFc1UTdUZ0pLNW01QjVP?=
 =?utf-8?B?NEs1SSsySFNoLzE2d2hwMHRXRmxjUzVubkEySm4vK0FPTVhmbkUwTWdzNEpq?=
 =?utf-8?B?aHc0UFdCTzd3Z29wUmZEN1lWMHR6dmcvTHJ5Y3Y0d01zQVdZcXVHMzk4Y1RL?=
 =?utf-8?B?Mm45cnFlWEpWdS9xZ3NrSkF4RUNSWEpFSFZlblpndS9uNUdIS3U1WEFDbjJG?=
 =?utf-8?B?QVpMTmlpQVM1czdyOFVmYnYycTZNMzVnMWxZSyt6K095ZzRNQWx1YitCRjFj?=
 =?utf-8?B?ZUh2cVVCUXpkd21WVER2eFRPR0dySjYwRE1tZmgwc0lISmtLTkE5OUJVWmM2?=
 =?utf-8?B?V0hYVDNWV1hBT3FDUkp6aFppeEk5cG1TNmVtVUQ0QjlqdWhqZ3dTK2JOb09P?=
 =?utf-8?B?a2dRM251ZkIzeEVXOVZRLzJZTjEwWnNrSzV6RS9neW05cHdSK0t3akhUL1pk?=
 =?utf-8?B?S2RZR2J0NWtmM0M1QkFCTCtBMzB2V1pRQzdnYm1Sa0hiUkpySFZxcUhkcFZH?=
 =?utf-8?B?dFg0Zjc0c1BNUjFFVjRBREtJTlh3TitQWVFxV1BzQTIvZTJJbTlZMG9UVElq?=
 =?utf-8?B?RGVCaTg5WnpzaUxMbGp5TVJLSVVLYjVHMWpZeENEcmM1RktqU3FKdVRNdnJo?=
 =?utf-8?B?V3RDNTJSUWkwT3RLNnM2MlVrQW9YdUtCdllMelNVRm1MdFJuTkl4ejJFVm1J?=
 =?utf-8?B?NmNUbHZNMjR6bUdwQXUxaE5zTnFabUwzU1g5Y0ZYdWxkTVExUTcwZnFKNmR4?=
 =?utf-8?B?cEVIK1dkN0tiaWk1WUFkSU5QdG9HbzREU0ZqUG40QWNMNFVRZ0U1SEtOSW1E?=
 =?utf-8?B?aVMzWklmQjkzMTAwcjg1SVFqaFF5ZkJ4VndlQlA1dDZDcFJHdkNHemZRMW8z?=
 =?utf-8?B?cjdyYi9HTEIrLzdUUStIS1l4cjdGMms0NnljdjFiVTlQT1JIeDhENTNGTklz?=
 =?utf-8?B?VnRNa1F1ZlRDQzVzZm1tYTFjeTgySTFlVHVoSXlTbTRKaFFlakpyMGFwc3p2?=
 =?utf-8?B?aFRyTDNTdWg5aFJ2aVg1dDQzSkpYTWRhMTdCRVBwTU0wKy9vWE13QW9jTFhz?=
 =?utf-8?B?Q3NnRThMeWxpajAxSHV3b25jK1RXdGVtdG5Wang1bGVxbzFScVVuWFdmUkJX?=
 =?utf-8?B?NGdTeW1YOWxtdmpQZld1ZE1GZklvL2dCWTVmVjJQakJySTRXZHhzczNKbWtp?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 336c7450-8e23-4559-0c46-08de157ccb2d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 17:18:06.4308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YFGAl5Ikksma6dVA8CZvhHrJaGV+Qlg2ZC+/awR1A64hWgKiUpc44ZIv62sWiuIdImkzIC1Av9ldjzIBBsIm9Pg2RWrwS8EyjKoq+Aq6jEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761585493; x=1793121493;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W7V2WMXPX2FoDarzAXZe2K0aWntQDkauj2RJncmE/M4=;
 b=KbnIjgrahygSJJ7x4INacj54tXouuU/wt5ldOHSa/Vjmry9nXn1cEAnk
 bMjxbEeYo4rgU0yfjSDs49gH0FD2oexG7Dkj4Qe24eEGhUUAcqA/OGE1r
 g7OsrGWZ+nzW0af9yro2jor3qbyAGl7P0djhxSQbrYgK7OJxM8RAORO7u
 0E01ExaUn0JqWuQ4UvnDFpFJ+TV519jw8irvlyy2LxIXp3ek7efunU6cl
 dgGYmwrNoTHSeshSKaouOan6TT92cp7A7FaHaVelo8aSDjkH6E6A+7cbj
 3EOfmKB1Bcn10t7SM5ygVx0iC9xdHlN1HR0fDpfaFirV6GpoalYY4mWIG
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KbnIjgra
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
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

From: Simon Horman <horms@kernel.org>
Date: Mon, 27 Oct 2025 16:23:28 +0000

> On Mon, Oct 06, 2025 at 06:20:53PM +0200, Alexander Lobakin wrote:
>> Add second page_pool for header buffers to each Rx queue and ability
>> to toggle the header split on/off using Ethtool (default to off to
>> match the current behaviour).
>> Unlike idpf, all HW backed up by ice doesn't require any W/As and
>> correctly splits all types of packets as configured: after L4 headers
>> for TCP/UDP/SCTP, after L3 headers for other IPv4/IPv6 frames, after
>> the Ethernet header otherwise (in case of tunneling, same as above,
>> but after innermost headers).
>> This doesn't affect the XSk path as there are no benefits of having
>> it there.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>> Applies on top of Tony's next-queue, depends on Michał's Page Pool
>> conversion series.
>>
>> Sending for review and validation purposes.
>>
>> Testing hints: traffic testing with and without header split enabled.
>> The header split can be turned on/off using Ethtool:
>>
>> sudo ethtool -G <iface> tcp-data-split on (or off)
> 
> Nice, I'm very pleased to see this feature in the pipeline for the ice driver.

This is a prereq for io_uring/devmem support in ice which I'm currently
finishing :>

(I know it's a bit overdue already, but I couldn't find a free time slot
 earlier to implement this)

> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> 
> ...
> 
>> @@ -836,6 +858,20 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
>>  		 */
>>  		rx_desc->read.pkt_addr = cpu_to_le64(addr);
>>  
>> +		if (!hdr_fq.pp)
>> +			goto next;
>> +
>> +		addr = libeth_rx_alloc(&hdr_fq, ntu);
>> +		if (addr == DMA_MAPPING_ERROR) {
>> +			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>> +
>> +			libeth_rx_recycle_slow(fq.fqes[ntu].netmem);
>> +			break;
>> +		}
>> +
>> +		rx_desc->read.hdr_addr = cpu_to_le64(addr);
>> +
>> +next:
> 
> Is performance the reason that a goto is used here, rather than, say, putting
> the conditional code in an if condition? Likewise in ice_clean_rx_irq?

Not the performance, but the thing that I can avoid introducing +1
indentation level for 9 lines. I don't like big `if` blocks.
IIRC there's no strong rule regarding this?

(same for ice_clean_rx_irq)

> 
>>  		rx_desc++;
>>  		ntu++;
>>  		if (unlikely(ntu == rx_ring->count)) {
>> @@ -933,14 +969,16 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>>  		unsigned int size;
>>  		u16 stat_err_bits;
>>  		u16 vlan_tci;
>> +		bool rxe;
>>  
>>  		/* get the Rx desc from Rx ring based on 'next_to_clean' */
>>  		rx_desc = ICE_RX_DESC(rx_ring, ntc);
>>  
>> -		/* status_error_len will always be zero for unused descriptors
>> -		 * because it's cleared in cleanup, and overlaps with hdr_addr
>> -		 * which is always zero because packet split isn't used, if the
>> -		 * hardware wrote DD then it will be non-zero
>> +		/*
>> +		 * The DD bit will always be zero for unused descriptors
>> +		 * because it's cleared in cleanup or when setting the DMA
>> +		 * address of the header buffer, which never uses the DD bit.
>> +		 * If the hardware wrote the descriptor, it will be non-zero.
>>  		 */
> 
> The update to this comment feels like it could be a separate patch.
> (I know, I often say something like that...)

But this update is tied closely to the header split itself. Before this
patch, this update would make no sense as there are no header buffers.
After this patch, this comment will be outdated already without this
update :D

Thanks,
Olek
