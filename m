Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xfdsEDAATWojtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:33:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D3B71BF3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:33:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Nj8kXhIf;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01571607A0;
	Tue,  7 Jul 2026 13:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d68_6r_zvS4h; Tue,  7 Jul 2026 13:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35BBF60794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431213;
	bh=2b0Ikg9yvvDfcmG768bnHLjRch/eUG/nl1cg1u9Ypr8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nj8kXhIfD9cP+ZL3ipq4EaYV77twDKqas1YF2GBZw/QPu0uXWl8EVEsW2UYQe5GlK
	 pA1j1uJU0oiRECqQPPHi5XIb+9IAPLyqWhzn+iIFU1Fimnlsnm9trcARUfuVJ69Lj/
	 hPsmQI1P0fIAmh3ZHJuhURZRhTBBwFXVLzurx/73Y4hKJN4SN02g2KPpSv5tm1jb6P
	 oZQd39UOYIRaOFwfa+FGP6ONxfZHAhCVju9duBiLgFXmlTYuWVfBm9ulw2CPOdGi4N
	 kdV9wp7ieqY31NekGjAdggCzhO1rqpbFprbucj1B3l+TX42HiM8B1MOxl459GyHFfG
	 vNTZdqdtZ4hGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35BBF60794;
	Tue,  7 Jul 2026 13:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A6E82A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:33:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C5426076D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sk6ZZnpjktBr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:33:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F21FE6063E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F21FE6063E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F21FE6063E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:33:30 +0000 (UTC)
X-CSE-ConnectionGUID: btBVZCSWTza9EpvfsiDR1w==
X-CSE-MsgGUID: pOp7l8ZaTneOJhYwnkJbXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84267201"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84267201"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:33:30 -0700
X-CSE-ConnectionGUID: FY5M7134Rw6XdDzg4CnteA==
X-CSE-MsgGUID: Yty3Q6PFTI6YT10t+xnRNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="277220523"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:33:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:33:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:33:29 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:33:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GWFgmoFkWzrL5JvLcsFRh+RPSpQfzEmG5KB+v0d9Kh+bpNnlCl0I7aS1NsE6ze/QB0VPi+JFJa0tbwgkyrIfbd2Ku7zh2WvsA2PMBnW1vVSlU6jvWQslIW9qSMedLilJiWTisrs81ndsMj1mt224M3PwHHDbkvFY8K+3+VvsmielfIrwRFxx9jlYMW2El4fz0idPUvvLzO/F+YCzjlxBDUW2+CS8/TDhFg5wOqpdMp/0+zo6eEjDM7Ib285BKEiJ9hXq3er+niICwtp7t8maJqpYu8ITHpg89BwXq3XBGq8in1WlH4Bj8rGpjrjJgxZ8thyFfUc7PdencROom3MEtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2b0Ikg9yvvDfcmG768bnHLjRch/eUG/nl1cg1u9Ypr8=;
 b=mZqtO0OfF1i2Nmj+71OCWvHX7OaZltV567KJBHzFrqFPaoIXq0iAh2D5YPd8nG0XeTwIcfByER3/v2vTfq8PHMJwIc7ztqLlNpuO8OzvyaQcVl6o8IUB3Tt/fUeHvtSXKFtKQIHWiv7P1cU/fd3hsTCAtAHfY1ZmTCjfbbttAAP3pdF9nK/8yQ5J6YH/n8sHRQEcU7mL7Jvbb6cnMHIerKyZTEA9PWRG2Opn+4HGzpOpQPJ/SeG13B3fOchpbqjbE5WIikNOXGkjHC8qJu+tdQ0V68WJnG/twsL4D4uZdhvBnIe0MeeL7m2nbyqK5PH76Y7H+BtfxQVAITx+PEXHQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Tue, 7 Jul
 2026 13:33:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:33:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Manish
 Chopra" <manishc@marvell.com>, Paolo Abeni <pabeni@redhat.com>
CC: Edward Cree <ecree.xilinx@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-net-drivers@amd.com"
 <linux-net-drivers@amd.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/4] ice: use kzalloc() to allocate
 staging buffer for reading from GNSS
Thread-Index: AQHdCWGdQuHfYunzc0qBE2Mq9pdJ1rZiF4iQ
Date: Tue, 7 Jul 2026 13:33:24 +0000
Message-ID: <IA3PR11MB8986C7AD43098632586A2B64E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
 <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-2-58776615db6e@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM6PR11MB4754:EE_
x-ms-office365-filtering-correlation-id: 5d25649f-f24f-4cab-08f5-08dedc2c51db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|23010399003|1800799024|38070700021|56012099006|4143699003|5023799004|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: gpxDzqA2wknvHfr8J+8Jj5frIyeMf02tHHQohN1rqKGYr531jgiXqRl8Gx08jHnleLtw2WAOmq1Ftr4XzVx6/D27kfG70Urn1WFyBvifqy0Vk2JStanGoimAaUnuhy1fQqBHntc8DCUAnBL1CzBLgfgQR+XpoLIPQ21324pe/CZgCjQF31fpMaiX/DNfNh5E5qX2G0IebPciWI+U7q0khiOsOFk9OXnzzg/qv1tB+OBQq01vzbZBbo8biw50nF06SVzBNFfmTiB/cO8CL1ZmqfbQ1Z6aW098TwjuQHDbgt0z+kqAzaHB0reFqi5FAjJRVYJgqrn7TXUlcpr+qQoFuXQOugSsoSwZTjALUxd/hfh0h2Y6zHYnodtmkgVdqaK4KqoEpoD1pyWAHF4Z9qoED44ERmRUVKzrA7Xew//E3+WWuFBh4+ol0Y/GsHBYm9dWPgWHbpGqNADK79PYoWWrtHuoAQ0ztMgelZaRRwh5GeSLwbkKPJbF1dl3Yapnh7U8q8bdgy9GIJF7ywhN6a2O4HQcON+V6HMHPBchcwEqgLeRiy42h/Fs+H+VAlrBhnK9qC4lKbLR4Gm5ptDMSZIjHTDY/db4uNNpQz80CY/UaTzGIslVAfiF2yslaSQaUXB9jgepuW0UJ6kCCl1XVB2m6wer1WZIRauiGyp4ytxLqL9QgHosl09USWJt2Fb0BxF/Wt6QWCHGCqO9oYWVhXZIpvRRVQGkewnVjy1Wi/wX0a0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(38070700021)(56012099006)(4143699003)(5023799004)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUxxM2VIM3N1Q0Jpd3VMcVZqMTg4WkxsS2ZvaDFqekdaR2M3amNhMUVGU1RY?=
 =?utf-8?B?WGZ5QmE4YlppSSt6RHhBbktqbTByNWhYc0EvOUNtb2hGUExjMElWYW56N1J2?=
 =?utf-8?B?cnNJUDloZWdYMmRUYUhtY2FRdW5DZUdxYnRtelZRUjhNM3RVN3FNSFRHdHNR?=
 =?utf-8?B?WHhSSDh5cHZoazFBMUIyNjEvNWV1VFdWQnVreG1COEJZR3dPZ01ZUzlVRGIx?=
 =?utf-8?B?VFFCcm1RUkU1V0k0Yk9pYjNNQ3U4ZVJNeDhDUlFCdiszcXlaSnM1RWxWY2pi?=
 =?utf-8?B?YURjdkU5cDUzcTFnNnBtU3FBZHV0Mmg3TFRBb0xwSS80eFpTeUhzaDJvamxP?=
 =?utf-8?B?ejBxemZ1anZnT3JyaHVxeTBWcittMmsrNDlUREZ3MW1KWmlnOGVjWHdiQlJq?=
 =?utf-8?B?aGdVYzVMOVVRZkdWcU15WjkvTG16U2F5VW5tSG1xdFovakY5WjJPVnhjNklX?=
 =?utf-8?B?dmtqUjhERlByc0RCekZicFpjU0pBczJqeWtMTEZOcHUxM3BJRjBnV0pBQzJR?=
 =?utf-8?B?VndUSUYrRzB4c1Vodm13OUV6UndCQ2xncHdhQU11Rm15T3pRUU16blM4U2Ft?=
 =?utf-8?B?bVh3YVpxZWt1R0RLR2ltbG01ak5CbThqQXhTT0l0RmZEVmp1bjM0U1pCM0ZF?=
 =?utf-8?B?TXI5U0dMY1dBMWxNUld0M01XeGxNZjA5NDJ1VzVvb2g2SWpVb0crZnpoazRG?=
 =?utf-8?B?ZmlkN1Jpa0tYNFVSdlgvMkt0dWJhOEFqamk3eUJnK1lBTlJEQUhaZC90MTJC?=
 =?utf-8?B?RzhHNlpDeEQ3bWdLZE1vNERBSytPSVVydnRwdjdFWW5sRU5MZ25qNlVqRlRW?=
 =?utf-8?B?ZTB0VmpvOFpPUkhxK0I5bnZDYXptWjFOcVBIa28vT2l6b2lLajZOQzVPQlBk?=
 =?utf-8?B?MnYyRzl6aDdXdlZGa0NRd09vSGp4NnNWTFQzZ2xTS210enFhamtDejVCT3No?=
 =?utf-8?B?YXhaUGJ6MTd0cUdDWnNKOU5TdWhyVGNHWVVkQXNCUW9hOTFWTGtvUGVKTlIx?=
 =?utf-8?B?MHZaZVhmOFF0bGgzbkhnTzJhTzRjZTlQL3FjSlRxTkJCMXUwYTN1TjlpT3Fj?=
 =?utf-8?B?bXBCN1BpYWxzTElHNWZDWFlDbU9GNlN2V0VQaWROYlllM0xIUTg2RWtVaEpO?=
 =?utf-8?B?R2h1VSs0THJTd3FBMVNmNDFlblFZNmY4SVlTUW5YUzVET1NIQ3NkUnZNd1BE?=
 =?utf-8?B?d2o3dFhVN21OdDZQZ0I4UG02SW1QV0dVOUZmZmF2dFBkY043QnN4MlIyeWtB?=
 =?utf-8?B?a1FxUVBxbmVOOW1Eb0pNV2FOSU9sTGN0RlN3QnBpWFhkL2hkTnlWOVQ1MHF6?=
 =?utf-8?B?azJHZmpKNUl6TURjMzdJUzhCcnVZRHphUFVDZHFNbTFXVGZ0aGxRSlJLZzRw?=
 =?utf-8?B?SDN4alJlbjlJMVNySWVLNFpIc3RFYkpQdmJ2U3lDT2FXajVvS0J5ZXRBVVJZ?=
 =?utf-8?B?dDk5K2pzQ3R4cjRhS2tITkNtSi90NmsrWmtVZmZDUWhXdXhGQkxsS3RSSEk4?=
 =?utf-8?B?YU9JNjd0OWZZdzJRRTltdk1mQS9TZW9aUTR1Y2U4enFsVnIyNWJud0RUaXpV?=
 =?utf-8?B?SHl2QlptVy91THpsR1NSWmVHTTNIRHl2Mkp4eEdwcjZNOGtpN2YxSXdWODhM?=
 =?utf-8?B?QVR6c0c0K2IwVEpOb3l2RnVBR29Xd3lvbmxVdU84VkFJbmY3eUZVYjRRUEps?=
 =?utf-8?B?eXliR0RzbWNwMjh1SFh5dXlFeEVMbngxbDVmbzU4QzB4akFqa3UvV3pqTmlI?=
 =?utf-8?B?Zys2MzB0T1VzSUtNODZxRS9TRC9ZVUc5aUdEa2RpbFIvN05wRllYd1haSDZy?=
 =?utf-8?B?em1yVDk2TVh6NDdXNkgwR21ZdEpzM1dRL2FKdUFGVzUrS1dGVWxEZEM2Y2tu?=
 =?utf-8?B?ZTBvdFhJK0NUUXJlM3I3Z3ZCdW5yMUFQTm1ZQTUvNUlpUjJUT2FGWHkrQ3o0?=
 =?utf-8?B?eUE1SjNVQW5jRDgvV282MnloY2orWm93TWc5SlhXNC9LMyt2aE1NeXZxanJS?=
 =?utf-8?B?cmIrcVZLQkJ2QTEwRUppRjVKUTVZRW1rbXcrOTNVQVNDaThEbTl4OW5YblQ0?=
 =?utf-8?B?WXhEOUZqNng1QVo5NHkvOXkxQjFVcTk3Q0cxUEFYZWlYcDBrWkQ4MVYwOGdJ?=
 =?utf-8?B?Q3dqM1RTeVJtajZ4RlhyZ2pOSC9aWWpCR0pETFE4QTBQanNnR3czcUl5bFBH?=
 =?utf-8?B?Rk5YcWsxUmYvQUZlRUZ3Ym5VNVhxQ2Z4R01Hd1Y4N01iQlhRR203ZEpOb2Ni?=
 =?utf-8?B?MDQ0SWFvQWhlTnQ2TlZjUHgrbkttOFJCbmRVbWFWNnVXMW9JQ056TmZsNkh5?=
 =?utf-8?B?VXJYdkZCTVpSMi9wQUJFbWRsd3MwTStoWGpsS2p0dUZhMDBVYTJUUE5MaWVp?=
 =?utf-8?Q?mPjJ51N8rIGFb9rQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OrjcA3rtKSS1Ywz/Sv+1gxK5/7VTLqSU7EDlgKIcNReZqD4AsWSibKMC7xcjCPshB6SadAAfeGlwbW/ZmFCzwDCD7VHA/ysuluYBmA1zBmkysoSPXu3X2SxhQ279uPGlneoBBatRvXm9HvdkU+UDtnjfNau9ulOAFTj4BNHovSY9YO+wFktE+B+s6ScqqvaVGxWMNbTvAhPse6hG1P8DkpEJ+NkHlFXtnehi+Kqe9jy9vfXqWY0aV6kjajfDOY8TaqK9En+XWK9LEr607TA3JJCPUo1fe38zyGweJ5sNf+hCG8EReK/9BMODKogs4GxYeRAuo1tK8rRH/Be3B0Vvqg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d25649f-f24f-4cab-08f5-08dedc2c51db
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:33:24.2991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0DQ7HdGuiMXsNbv+GFrFXw23hdZAlt8wu2tqHHxOz83X0ec0O9UI8xxOPAogOkvunr5kK3GMAptEA9w42RADQiICxSsbkDzWVVta4jWtnFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431211; x=1814967211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2b0Ikg9yvvDfcmG768bnHLjRch/eUG/nl1cg1u9Ypr8=;
 b=NxuiaLnp0maniaEmY4Efs0yB1yommsLW6Xna4jeB4i2wayOkqczbZs/g
 3SlE6nYNYGFk0qIERIOxvrWYyvgd1K9ADtxBqGZaUCtjtNROvUG5IyupV
 itRfGhzcZvnchZr+308/iNcS7UnV43wVDOnrCjzW+byD3kpifNMOdpZCd
 si29375q0r5bKDfQE56FACOUzJgOxSZ4iUewgOfDCel3S67VsvAIFWjOG
 Nehd3Q7qxeQgQV2CyUjEMLBgRg6aLf9MJPH1sJqxrpaJLglJjj2Ah6o8k
 +COnSefiUYwOjhJHIYJcrK5BdkFfJ/3Q9KXClG7dpopxjKHdOUh7A6uaC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NxuiaLnp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/4] ice: use kzalloc() to allocate
 staging buffer for reading from GNSS
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,marvell.com,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81D3B71BF3F

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWlr
ZSBSYXBvcG9ydCAoTWljcm9zb2Z0KQ0KPiBTZW50OiBXZWRuZXNkYXksIEp1bHkgMSwgMjAyNiAz
OjU3IFBNDQo+IFRvOiBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQg
Uy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpl
dEBnb29nbGUuY29tPjsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IE1hbmlz
aCBDaG9wcmEgPG1hbmlzaGNAbWFydmVsbC5jb20+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+DQo+IENjOiBFZHdhcmQgQ3JlZSA8ZWNyZWUueGlsaW54QGdtYWlsLmNvbT47IEtp
dHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBTdWRh
cnNhbmEgS2FsbHVydQ0KPiA8c2thbGx1cnVAbWFydmVsbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkg
TA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBNaWtlIFJhcG9wb3J0IDxycHB0QGtl
cm5lbC5vcmc+OyBpbnRlbC0NCj4gd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBtbUBrdmFjay5vcmc7IGxpbnV4LW5ldC1k
cml2ZXJzQGFtZC5jb207IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIDIvNF0gaWNlOiB1c2Uga3phbGxvYygpIHRvIGFsbG9jYXRlDQo+
IHN0YWdpbmcgYnVmZmVyIGZvciByZWFkaW5nIGZyb20gR05TUw0KPiANCj4gaWNlX2duc3NfcmVh
ZCgpIHVzZXMgZ2V0X3plcm9lZF9wYWdlKCkgdG8gIGFsbG9jYXRlIGEgc3RhZ2luZyBidWZmZXIN
Cj4gZm9yIHJlYWRpbmcgR05TUyBtb2R1bGUgZGF0YSB2aWEgSTJDIGJ1cy4NCj4gDQo+IFRoaXMg
YnVmZmVyIGNhbiBiZSBhbGxvY2F0ZWQgd2l0aCBrbWFsbG9jKCkgYXMgdGhlcmUncyBub3RoaW5n
IHNwZWNpYWwNCj4gYWJvdXQgaXQgdG8gZ28gZGlyZWN0bHkgdG8gdGhlIHBhZ2UgYWxsb2NhdG9y
Lg0KPiANCj4ga21hbGxvYygpIHByb3ZpZGVzIGEgYmV0dGVyIEFQSSB0aGF0IGRvZXMgbm90IHJl
cXVpcmUgdWdseSBjYXN0cyBhbmQNCj4ga2ZyZWUoKSBkb2VzIG5vdCBuZWVkIHRvIGtub3cgdGhl
IHNpemUgb2YgdGhlIGZyZWVkIG9iamVjdC4NCj4gDQo+IFBlcmZvcm1hbmNlIGRpZmZlcmVuY2Ug
YmV0d2VlbiBrbWFsbG9jKCkgYW5kIF9fZ2V0X2ZyZWVfcGFnZXMoKSBpcyBub3QNCj4gbWVhc3Vy
YWJsZSBhcyBib3RoIGFsbG9jYXRvcnMgdGFrZSBhbiBvYmplY3QvcGFnZSBmcm9tIGEgcGVyLUNQ
VSBsaXN0DQo+IGZvciBmYXN0IHBhdGggYWxsb2NhdGlvbnMuDQo+IA0KPiBGb3IgdGhlIHNsb3cg
cGF0aCB0aGUgcGVyZm9ybWFuY2UgaXMgYW55d2F5IGRldGVybWluZWQgYnkgdGhlIGFtb3VudA0K
PiBvZiByZWNsYWltIGludm9sdmVkIHJhdGhlciB0aGFuIGJ5IHdoYXQgYWxsb2NhdG9yIGlzIHVz
ZWQuDQo+IA0KPiBSZXBsYWNlIHVzZSBvZiBnZXRfemVyb2VkX3BhZ2UoKSB3aXRoIGt6YWxsb2Mo
KSBhbmQgZnJlZV9wYWdlKCkgd2l0aA0KPiBrZnJlZSgpLg0KPiANCj4gTGluazogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzYzNTQwNWU0LTk0MjMtNGEyNS1hNmU3LQ0KPiBlMDNjOGVhMGJj
YmVAcmVkaGF0LmNvbQ0KPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IChNaWNyb3NvZnQp
IDxycHB0QGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9nbnNzLmMgfCA1ICsrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9nbnNzLmMNCj4gaW5kZXggOGZkOTU0ZjFlYmQ2Li43ZDIxYzM0MTdiMGIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jDQo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jDQo+IEBAIC0yLDYg
KzIsNyBAQA0KPiAgLyogQ29weXJpZ2h0IChDKSAyMDIxLTIwMjIsIEludGVsIENvcnBvcmF0aW9u
LiAqLw0KPiANCj4gICNpbmNsdWRlICJpY2UuaCINCj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+
DQo+ICAjaW5jbHVkZSAiaWNlX2xpYi5oIg0KPiANCj4gIC8qKg0KPiBAQCAtMTI0LDcgKzEyNSw3
IEBAIHN0YXRpYyB2b2lkIGljZV9nbnNzX3JlYWQoc3RydWN0IGt0aHJlYWRfd29yaw0KPiAqd29y
aykNCj4gDQo+ICAJZGF0YV9sZW4gPSBtaW5fdCh0eXBlb2YoZGF0YV9sZW4pLCBkYXRhX2xlbiwg
UEFHRV9TSVpFKTsNCj4gDQo+IC0JYnVmID0gKGNoYXIgKilnZXRfemVyb2VkX3BhZ2UoR0ZQX0tF
Uk5FTCk7DQo+ICsJYnVmID0ga3phbGxvYyhQQUdFX1NJWkUsIEdGUF9LRVJORUwpOw0KPiAgCWlm
ICghYnVmKSB7DQo+ICAJCWVyciA9IC1FTk9NRU07DQo+ICAJCWdvdG8gcmVxdWV1ZTsNCj4gQEAg
LTE1MSw3ICsxNTIsNyBAQCBzdGF0aWMgdm9pZCBpY2VfZ25zc19yZWFkKHN0cnVjdCBrdGhyZWFk
X3dvcmsNCj4gKndvcmspDQo+ICAJCQkgY291bnQsIGkpOw0KPiAgCWRlbGF5ID0gSUNFX0dOU1Nf
VElNRVJfREVMQVlfVElNRTsNCj4gIGZyZWVfYnVmOg0KPiAtCWZyZWVfcGFnZSgodW5zaWduZWQg
bG9uZylidWYpOw0KPiArCWtmcmVlKGJ1Zik7DQo+ICByZXF1ZXVlOg0KPiAgCWt0aHJlYWRfcXVl
dWVfZGVsYXllZF93b3JrKGduc3MtPmt3b3JrZXIsICZnbnNzLT5yZWFkX3dvcmssDQo+IGRlbGF5
KTsNCj4gIAlpZiAoZXJyKQ0KPiANCj4gLS0NCj4gMi41My4wDQoNClJldmlld2VkLWJ5OiBBbGVr
c2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
