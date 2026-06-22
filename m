Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3cILCXlUOWrRqgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:27:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5635B6B0B78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 17:27:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=OFjyt2ac;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC47D809A7;
	Mon, 22 Jun 2026 15:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ShOCdQYuebo; Mon, 22 Jun 2026 15:27:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8176809AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782142064;
	bh=H+70qLjQX8P1Q4XQsfSSM+UXLqUkddGfdlTbYYAWRgc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OFjyt2acPL6Ym0SWtKWwCqX9+zOT/33tYC30BBiWi2C2S84D4lXGgKvvzInG+8Efp
	 Q/JJnfEFulXv23JJkEdyowdv02q4hGSXbI0s+3jWHcfcx05p9zcdzJoyeZ9rpKYtYM
	 WM8udc6j2QMGzRESPkijw/gd7vAsIqw8/IgVx3rpEck54TYJw5my3ifqVuOMixZooj
	 Inm9D8C5ewU70fArlrpbp1ZrfZetehwaZUVLnxNf/5l4zC+O3Xz8LELuRkRwyVBzvR
	 KWeNoxcYYEo5+dGzhVMTvukM2j2yskTfByvPpuDN5QS9Hj8Wz9cOcFjlWsahw4jDHD
	 vAOsacLg0t60w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8176809AD;
	Mon, 22 Jun 2026 15:27:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 11582F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 029E2404EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:27:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IyJQncJ1kFCO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 15:27:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CF2F404EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CF2F404EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CF2F404EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 15:27:42 +0000 (UTC)
X-CSE-ConnectionGUID: Ch2DjBGwT4ytbxA8X+B/+g==
X-CSE-MsgGUID: LGbobq+aQiWO/SU5+tqnhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="93529188"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="93529188"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 08:27:42 -0700
X-CSE-ConnectionGUID: 9lQcR1YsS662f2NG4ukANA==
X-CSE-MsgGUID: SoMYVY+9SOKAery0QMZDmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="254353023"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 08:27:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 08:27:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 08:27:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.33)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 08:27:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hznaeOrnIqyN41Xu/R4JZZndK576upnR9j5JfboKsL4Igt0f4wKJBFrIesJdxdSGB2DYEPYGKde/0IoCTGyuQHdxOhbStmV8S1tGEg6VYSsutG7IO4JzZIpY2JvFqq0i2dtoGqmwWN3fd9VTyj9+N6MGLtWjsPsuN/Dt2shk0OBaTfHxD/o+MXHi/n+YH0N42sY9Lk7N/W9/yJKJ6PsWim6CKFMb21/JTQa3XXE16lC0FQS9oXvPwnCaWw+MWBZaZF4YyP1ZHGtUf0afcFYC4gbRXQVwmCxbQLBG+F17uOEvktkbOzKPF7AsThtUsaAZNeltAjHpl+1SyEOH9OPc5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H+70qLjQX8P1Q4XQsfSSM+UXLqUkddGfdlTbYYAWRgc=;
 b=GSAI/Vo4ecdE7ufrux2gwGF4zV4pdzF7s0DkiY1fmiUEm35M4qzuw1z5GCb3/E1Oyqq+DdYGtBXIquIl10FYZarxMgBfpEPO73fLfWaxogVVGwBZLwV9tJYg+VduaNyLeMOKdVjbq+Wlm2GI75XNOV60FmQagwwbpNFw9U/j4w2EtB0g7xkZMQ2zIRM4tLGte8uRjdwQpzxPaW1XzsUMrycGaGAff4PfqpHqmxu8mxwdHvrteNfFRj5d2QDfe0ouO/iAPgoQgri6eG4icTkytlXV6GV1wRzM26cDpR1RGEgvL1obsrwyjI/hAlHuZGa7cAGWgeLsW60YRYVTqu0h1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB9479.namprd11.prod.outlook.com (2603:10b6:8:296::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 15:27:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Mon, 22 Jun 2026
 15:27:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "tkusters@aweta.nl" <tkusters@aweta.nl>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Jesper Dangaard Brouer <hawk@kernel.org>, "Kurt
 Kanzenbach" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
Thread-Index: AQHdAlpqLDMuxt56+0u0NBj2eayI6rZKsm/Q
Date: Mon, 22 Jun 2026 15:27:33 +0000
Message-ID: <IA3PR11MB89866D9DA2985F69A36832B5E5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260619-igb-rx-ts-fix-v2-1-d3b8d605ca62@aweta.nl>
In-Reply-To: <20260619-igb-rx-ts-fix-v2-1-d3b8d605ca62@aweta.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB9479:EE_
x-ms-office365-filtering-correlation-id: ec37472b-1d04-4673-f6f1-08ded072c82c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|7416014|921020|38070700021|6133799003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: 4c7kwlpENdb7aj0GMS3GGWJFuLQB63HYd/vMCYgMIgK9bd4WqTOwj46YYvJqXr6uDL+Zmxl/4iP2654lTaATrAFvmqyxN5dHPdLhdru6aeoFWCBBlQQN+a2kI+n2zZtF6842kqlalCi08orUE3jPsgJ3M7Hy0qD2PzqbiuTyiZX6/Td+FBqZ7HZqEn1Syoy/VFxOzjKymsHUVQ3OSrFsPLyb4hMQyaXW9KkjdHp6yvWSCmXHJzXhfdcoeDFoYWgE3Jhju0AuchK7C7lU2KeFBteJANCgYME7DlRNhb5R9iRFtY9xq03i8rfu8LByn2i4v+W3C85G11SXJuNmwBMPcSFpl6RGPXnsBH14SzUW6VqgbQsqzErwxwHONOI9dvvdLfZuoAHRwx+/Sl+/e9B+06DexjHxVE5oB2arew4z5E4TP2JVDhhXprlsUqPWpJgiy+oRdYGsjyjdAvmgbRgyeDxgwgeD/R39JXZpWvh+zKHCpbPJR+kzsp70bMtbaOBOKrEU/D8RAfDHd5yx2qVtZgUozBF40eaRqoCHNUMeBLptqAfHqvCu2tJ+GwQXANPC/aR4ew2WwV2jqu6eC/8mlxdClKtXKTFPhz3eHT9C7Yr61wx8NQwAFpv+lrufxpQ+DxnIrLSEQAzBu6QEHDWCA4a6vZuY6YWh6AWDX2tF5o+MixMF54b8be0tPBKOJDub4QYnoky+LXvceNSKa2y901NXumtP2peDV3ndbeWbdzzuWkunLr/8gHTq1WT8jwMU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(7416014)(921020)(38070700021)(6133799003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVU0eU1xZXNhUElPQnVmdmcrcmpPbWtSUTErVWdnSW0vRDJrMk5jNk9sT1V1?=
 =?utf-8?B?VmZnci80OXdXNFY5NnBoVU9ONGFVTlY0b1NPWHI3MzVoM3ZBVkVNNGIwazMx?=
 =?utf-8?B?aG5ucVhFNVJqcytnS05ocEtvdjJNejM4ZCtZV083cXFPZEN5ODFxc29yakZr?=
 =?utf-8?B?VitKUWxDVW9xU014d3RqMGFKVHVIZnNqcFVXa1piUzB6eHlxN25tbTdaNXFU?=
 =?utf-8?B?VkRhL2orRXZyNDkyMXZKbmZmTWNzTXl5ZkhucXR0a1V5dE1lUjRWb3I5c3Ni?=
 =?utf-8?B?RmUwb1duREhtRW9jYktMT08zSnF1bU96VlZjQUNreUd5RGlQd3FRNGQwL2dK?=
 =?utf-8?B?OHp4a21ZcC81eC84S1BhejRTMkg3THN1Z2FLbk5QNjZPK3QveEhOcEFpWnFG?=
 =?utf-8?B?Tm5EeGZYS1c4cFVJc2pOeVA5VGNqMTNyWWN3WFlEbm93N2RMOEFPU1ljUk45?=
 =?utf-8?B?SktyWExLR3kxOXZLQjNmbXVZNnlaN2VQZGl5Y0RaZkx6aksxNU9HTGo5RlFW?=
 =?utf-8?B?cE1rMHUxaUVWTVIyQ2REem11RXVCbUYySkpCUy9xREFSdEN0ODI2ekUvSk1T?=
 =?utf-8?B?aXhxNlVrdkFpRFVVcHloKzhnNmk5K1JvZ0l3N0RheHNYR3drRGlLM1FIUlZZ?=
 =?utf-8?B?Tk01TThRYmdwZ2xDdEw1clhUZ050QWdqQmdraFJlOWU2M3QwaC9RbW5hazN2?=
 =?utf-8?B?c3dWQ2dML29hQzFMb0FoVVBTcmdIa0RSUThwU3BLYnNDaFVSbWFLaGQ3dVNT?=
 =?utf-8?B?Tjk3b21FSHJrc1VBMWhWUTJiUkltdm04MkJtZ2J5Q1RwaCtOcjFnTEM0R3VF?=
 =?utf-8?B?LzVzbzRsbWwvbVNpSmJhOW12UVNiamdSTm1aS2NGb0V1MmpWdVZvQ1BXZGtw?=
 =?utf-8?B?M1BKeW15ZGZWZUZjTWV4N0toZDhQSCsvYm5zcjhZdjAvLzhTcU8yRW1veG55?=
 =?utf-8?B?cFh4R0U2YitwblNQM3kwNlkyNEtxVDRnS0x2bnZ0RFRDU2t3YkxjZDUwR2lt?=
 =?utf-8?B?c0lobllkdTlieEd0Qm96cmFhK3JYNTAwNWxYWWRMWFBjRkVxV042S2YzcUlw?=
 =?utf-8?B?azNrWTRkcWNLZlZlVDByTVdpNkg1b0FZd2VXdnlwSUV2NTNQYXB6NmxkdS9Q?=
 =?utf-8?B?K3lONWphTFVUTXFMT1ZIS3ZMSmR3bkFNZ2J0cE8vTWVTdWZtajFiekRsMkJw?=
 =?utf-8?B?aGFLNlpOb2Y4Y0Nlcmx0Yy9ibktrNU9LalFOZU5WSlZwQ1Y2N05LUHNKdHNP?=
 =?utf-8?B?K2s3ZXRpNE1pYzlwcFlJcnExMGFGYktYajdhU1NlbWhRZ2N5U0kweGFoYlhQ?=
 =?utf-8?B?UGhQOXB0SiszK012bUlQbzBmRzNSOVcwOUh3em9JNVJXNkRLRGxZL29JRGJG?=
 =?utf-8?B?ZzJudWNHb1htVUhCTGpEcXhXNWRtZ3N6NHJuVitaNFM4cUpraFVvbUxBb2Jo?=
 =?utf-8?B?OWhyYVhZYTFqNWpkYjc0K3dCcmNUK29jTXhqZ21zSjkrcVNrRjlURFdXQUlV?=
 =?utf-8?B?ZWhPbWU5bGZnaWdheXIyQ2hyQWViTk1YQmZqNVNnelV6K0U0NzlrbXdqTHFv?=
 =?utf-8?B?RTgwR2NBYk5keEJBcmxGUTh3cWtHc09NejNzUk1PMXRra1NJaGVmMEZvdGN2?=
 =?utf-8?B?RW1rb3Jkb0EvNVZoZlJTcmUyYy9XL09iNm9OVkowcGp5Qklrd3J0NEtxcnNt?=
 =?utf-8?B?TVNYZW02SzJsSXZjUzFPK3V4aEcrOXo0RWZyQVBNYWc5dGFDdjVYWk1FRTFo?=
 =?utf-8?B?N2oyNzJRcWRGMFZhMmZWVDM1UmdhUjJiRldpZ3RvNm1wUDhBWHJJMEc3bkd4?=
 =?utf-8?B?Q0p0NW5OUG9VS3ovODZCVklEUnh0b203bi9jQUxkcjNFQjBlSE9LMnl1NGRr?=
 =?utf-8?B?dXUvVk93TkVpaW1MbmVMM3duVmd1bG95eDNOcyt0SXhsY3RlM1BaYzNkajIx?=
 =?utf-8?B?ZmRybmR5MnlGeUFybEhMNGRkeG16Yk95alJ4WVVwdU5xOTYwejYvbUVGZjNr?=
 =?utf-8?B?eFBDcE9DcFpHWS9ZMFc2dzNWNDhWTm1qbU1mMnVkYzh3WmlQcTZjaWZSbUhL?=
 =?utf-8?B?anB0R2FjKzhCZjBpUkRGTmM0dzhYc2FVc2p0UzdtTUhnMzFZbWc2YVJ2S1pz?=
 =?utf-8?B?NDVRcWxsSy9NM1MxVGFhelRLeVF3R1hsM2l6TklCRHBLZGVmODUzaXIwbWtq?=
 =?utf-8?B?TVFxcE9JWndwY0hLNWp6T000OXhRL2ZpZFRpV0ZtcDlwZFFoeXV1OXFjbGpE?=
 =?utf-8?B?dVltUFVqQWpYSXJqcjVudTluZDh4NHFEUU5RT3RpUncrampQM3cyOU9kVnVq?=
 =?utf-8?B?RUhZMjlqWDNlQm52bWZPYlBYTXQ0R0hpQnErNGhDd3FVNU9GOTFvK1ExWHky?=
 =?utf-8?Q?C/i9s7hOBMYnM7Ug=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VVG3Xtsjlqyk5TVI3+NtvRTKOxsWY/pzmyuz692ObIK9Ju7rilh8H/sMrKuJyALDe8XQcQci3oEfu3t4T4RICG25MxfUCRKUebUH8EFsI8p2Td4uCs1luFMwwzAbDNq9c8VVsmeq5pHLWw6FigqopzkPX8fOPuEl59anQSsMwHZkURABLr92eG7ZDVbmkDNlb3EMmpR3UvICV0MQMJokqJ7z9KeOLiYCPaVq/ymKn1wwKyHgCmXG1QsJ45mDF9a9F/p8vmknPKBW5Udq3/VKrejxc+Q7bPWyz/4f48GWdygoxyowGg6t3a4x9j9JHqi+FDvqeSdynOAjTvR8HXve6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec37472b-1d04-4673-f6f1-08ded072c82c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 15:27:33.6054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7T/nJLIZHMrabnSNUJeC+nSy6dOHQ5qDQTqvciilA2lHb6r1p4AzMqBClHM2uBxI3mBmAlMRNe7VM5UV9E4XzCbluR0t9Ji68Yaa2cMSfZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9479
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782142063; x=1813678063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H+70qLjQX8P1Q4XQsfSSM+UXLqUkddGfdlTbYYAWRgc=;
 b=hH51ZuRjRU5mqN7rCMp0Q3akQX3nPgcTenC9u0hzDvWq2VwXcmO6kyyJ
 iwmk8cpy7CXBUIRrOTXrNBUtwB20ZCiDCfTBRj/nFdJO6ZxSaOSiV/Dzm
 mjNsuht6fWi0Seb5jX8O6zc7OGyNtZ/Uj5dUGarM5Xs7bwM7NW3wFSgPI
 4PdX0lzLeAEhyEu4KWh33GK7fDl8oPMcU0eDGx1gQpV7AFOd+/NBE5Wxx
 K0cY3k7hWxdw41HywT8/YMGMYm2OTIm+x/YuXfK1ez/q9wzq7uhxgoLLv
 YC1cXphOYz+EnEE+1JRhLO5UhRh72AKUkx9QBZAJfh+O2bdhXGYPjqB17
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hH51ZuRj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tkusters@aweta.nl,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:kurt@linutronix.de,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[aweta.nl,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5635B6B0B78

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgVGpl
cmsgS3VzdGVycyB2aWEgQjQgUmVsYXkNCj4gU2VudDogRnJpZGF5LCBKdW5lIDE5LCAyMDI2IDk6
MTUgQU0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
OyBBbmRyZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVy
IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYw0KPiBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUu
Y29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvDQo+IEFiZW5pIDxw
YWJlbmlAcmVkaGF0LmNvbT47IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwu
Y29tPjsNCj4gSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8aGF3a0BrZXJuZWwub3JnPjsgS3VydCBL
YW56ZW5iYWNoDQo+IDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+IGtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7IFRqZXJrIEt1c3RlcnMN
Cj4gPHRrdXN0ZXJzQGF3ZXRhLm5sPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggbmV0IHYyXSBpZ2I6IG9ubHkgc3RyaXAgUnggdGltZXN0YW1wDQo+IGhlYWRlciBvbiB0aGUg
Zmlyc3QgYnVmZmVyIG9mIGEgZnJhbWUNCj4gDQo+IEZyb206IFRqZXJrIEt1c3RlcnMgPHRrdXN0
ZXJzQGF3ZXRhLm5sPg0KPiANCj4gV2hlbiBSeCBoYXJkd2FyZSB0aW1lc3RhbXBpbmcgaXMgZW5h
YmxlZCAoZS5nLiBwdHA0bCwgd2hpY2ggY29uZmlndXJlcw0KPiBIV1RTVEFNUF9GSUxURVJfQUxM
KSwgdGhlIE5JQyBwcmVwZW5kcyBhIDE2LWJ5dGUgdGltZXN0YW1wIGhlYWRlciB0bw0KPiB0aGUg
Zmlyc3QgUnggYnVmZmVyIG9mIGV2ZXJ5IHJlY2VpdmVkIGZyYW1lLiBpZ2JfY2xlYW5fcnhfaXJx
KCkgc3RyaXBzDQo+IHRoaXMgaGVhZGVyIGluc2lkZSBpdHMgcGVyLWJ1ZmZlciBsb29wOg0KPiAN
Cj4gCWlmIChpZ2JfdGVzdF9zdGF0ZXJyKHJ4X2Rlc2MsIEUxMDAwX1JYREFEVl9TVEFUX1RTSVAp
KSB7DQo+IAkJdHNfaGRyX2xlbiA9IGlnYl9wdHBfcnhfcGt0c3RhbXAocnhfcmluZy0+cV92ZWN0
b3IsDQo+IAkJCQkJCSBwa3RidWYsICZ0aW1lc3RhbXApOw0KPiAJCXBrdF9vZmZzZXQgKz0gdHNf
aGRyX2xlbjsNCj4gCQlzaXplIC09IHRzX2hkcl9sZW47DQo+IAl9DQo+IA0KPiBGb3IgYSBmcmFt
ZSB0aGF0IHNwYW5zIG1vcmUgdGhhbiBvbmUgUnggYnVmZmVyIChlLmcuIGEganVtYm8gZnJhbWUp
LA0KPiB0aGlzIGJsb2NrIHJ1bnMgb25jZSBwZXIgYnVmZmVyLiBUaGUgdGltZXN0YW1wIGhlYWRl
ciBvbmx5IGV4aXN0cyBhdA0KPiB0aGUgc3RhcnQgb2YgdGhlIGZpcnN0IGJ1ZmZlciwgYnV0IGln
Yl9wdHBfcnhfcGt0c3RhbXAoKSBpcyBjYWxsZWQgZm9yDQo+IGV2ZXJ5IGJ1ZmZlci4NCj4gDQo+
IE9uIGEgY29udGludWF0aW9uIGJ1ZmZlciB0aGUgZGF0YSBpcyBwYWNrZXQgcGF5bG9hZCwgbm90
IGEgdGltZXN0YW1wDQo+IGhlYWRlci4gaWdiX3B0cF9yeF9wa3RzdGFtcCgpIGFscmVhZHkgaGFz
IHR3byBndWFyZHMgYWdhaW5zdCBhY3Rpbmcgb24NCj4gYSBub24taGVhZGVyIGJ1ZmZlcjogaXQg
cmV0dXJucyAwIGlmIFBUUCBpcyBkaXNhYmxlZCwgYW5kIHJldHVybnMgMCBpZg0KPiB0aGUgcmVz
ZXJ2ZWQgZHdvcmRzICh0aGUgZmlyc3QgOCBieXRlcykgYXJlIG5vbi16ZXJvLiBOZWl0aGVyIGlz
DQo+IHN1ZmZpY2llbnQNCj4gaGVyZTogUFRQIGlzIGVuYWJsZWQsIGFuZCBhIGNvbnRpbnVhdGlv
biBidWZmZXIgd2hvc2UgcGF5bG9hZCBoYXBwZW5zDQo+IHRvIGJlZ2luIHdpdGggOCB6ZXJvIGJ5
dGVzIHBhc3NlcyB0aGUgcmVzZXJ2ZWQtZHdvcmQgY2hlY2suIEluIHRoYXQNCj4gY2FzZSB0aGUg
cGF5bG9hZCBpcyBtaXN0YWtlbiBmb3IgYSB2YWxpZCB0aW1lc3RhbXAgaGVhZGVyIGFuZA0KPiBp
Z2JfcHRwX3J4X3BrdHN0YW1wKCkgcmV0dXJucyBJR0JfVFNfSERSX0xFTiwgc28gdGhlIGNhbGxl
ciBzdHJpcHMgMTYNCj4gYnl0ZXMgb2YgcmVhbCBkYXRhIGZyb20gdGhhdCBidWZmZXIuIEEgZnJh
bWUgc3Bhbm5pbmcgTiBidWZmZXJzIHdob3NlDQo+IGNvbnRpbnVhdGlvbiBidWZmZXJzIHN0YXJ0
IHdpdGggemVybyBieXRlcyB0aGVyZWZvcmUgbG9zZXMgMTYgKiAoTiAtDQo+IDEpIGJ5dGVzIGZy
b20gaXRzIHRhaWwuDQo+IA0KPiBUaGlzIGlzIGVhc2lseSB0cmlnZ2VyZWQgYnkgYSBHaWdFIFZp
c2lvbiBjYW1lcmEgc3RyZWFtaW5nIGRhcmsgZnJhbWVzDQo+IChtb3N0bHkgMHgwMCBwaXhlbCBk
YXRhKSBvdmVyIGp1bWJvIFVEUCB3aXRoIFBUUCBhY3RpdmUgb24gdGhlDQo+IHJlY2VpdmVyOg0K
PiB0aGUgYWxsLXplcm8gZnJhbWVzIGFycml2ZSB0cnVuY2F0ZWQgd2hpbGUgZnJhbWVzIHdpdGgg
bm9uLXplcm8NCj4gY29udGVudCBhcmUgZmluZS4gVGhlcmUgaXMgbm8gZXJyb3IgaW5kaWNhdGlv
bi4NCj4gDQo+IE5vIGNvbnRlbnQtYmFzZWQgY2hlY2sgY2FuIHJlbGlhYmx5IHRlbGwgYSBjb250
aW51YXRpb24gYnVmZmVyIHRoYXQNCj4gYmVnaW5zIHdpdGggemVybyBieXRlcyBmcm9tIGEgcmVh
bCB0aW1lc3RhbXAgaGVhZGVyLCBiZWNhdXNlIGJvdGggYXJlDQo+IGFsbCB6ZXJvLg0KPiBGaXgg
aXQgc3RydWN0dXJhbGx5IGluc3RlYWQ6IG9ubHkgYXR0ZW1wdCB0aGUgc3RyaXAgb24gdGhlIGZp
cnN0DQo+IGJ1ZmZlciBvZiBhIGZyYW1lLCB3aGljaCBpcyB0aGUgb25seSBidWZmZXIgdGhhdCBj
YW4gY29udGFpbiBhDQo+IHRpbWVzdGFtcCBoZWFkZXIuIEluDQo+IGlnYl9jbGVhbl9yeF9pcnEo
KSBza2IgaXMgTlVMTCB1bnRpbCB0aGUgZmlyc3QgYnVmZmVyIGhhcyBiZWVuDQo+IHByb2Nlc3Nl
ZCwgc28gZ3VhcmRpbmcgdGhlIHN0cmlwIHdpdGggIXNrYiByZXN0cmljdHMgaXQgdG8gdGhlIGZp
cnN0DQo+IGJ1ZmZlciByZWdhcmRsZXNzIG9mIHBheWxvYWQgY29udGVudC4NCj4gDQo+IEZpeGVz
OiA1Mzc5MjYwODUyYjAgKCJpZ2I6IEZpeCBYRFAgd2l0aCBQVFAgZW5hYmxlZCIpDQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFJldmlld2VkLWJ5OiBLdXJ0IEthbnplbmJhY2ggPGt1
cnRAbGludXRyb25peC5kZT4NCj4gU2lnbmVkLW9mZi1ieTogVGplcmsgS3VzdGVycyA8dGt1c3Rl
cnNAYXdldGEubmw+DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAgLSByZXNlbmQgdmlhIGI0
ICh2MSB3YXMgc2VudCB3aXRoIGEgbWFpbCBjbGllbnQpDQo+ICAtIHVzZSBmdWxsIGF1dGhvciBu
YW1lICJUamVyayBLdXN0ZXJzIiAoSmFjb2IgS2VsbGVyKQ0KPiAgLSBhZGQgUmV2aWV3ZWQtYnkg
ZnJvbSBLdXJ0IEthbnplbmJhY2gNCj4gIC0gbm8gZnVuY3Rpb25hbCBjaGFuZ2UNCj4gDQo+IExp
bmsgdG8gdjE6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9QQVdQUjA1TUIxMDY5MTA2
RDUyRjRFMTdGMUVEQjk5QzY3QjkxODJAUEENCj4gV1BSMDVNQjEwNjkxLmV1cnByZDA1LnByb2Qu
b3V0bG9vay5jb20vDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2ln
Yl9tYWluLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMNCj4gaW5kZXggY2U5MWRkYTAwZWMwLi5hYmI1NWNkNTg5YTkgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+IEBAIC05MDYxLDcgKzkwNjEs
OCBAQCBzdGF0aWMgaW50IGlnYl9jbGVhbl9yeF9pcnEoc3RydWN0IGlnYl9xX3ZlY3Rvcg0KPiAq
cV92ZWN0b3IsIGNvbnN0IGludCBidWRnZXQpDQo+ICAJCXBrdGJ1ZiA9IHBhZ2VfYWRkcmVzcyhy
eF9idWZmZXItPnBhZ2UpICsgcnhfYnVmZmVyLQ0KPiA+cGFnZV9vZmZzZXQ7DQo+IA0KPiAgCQkv
KiBwdWxsIHJ4IHBhY2tldCB0aW1lc3RhbXAgaWYgYXZhaWxhYmxlIGFuZCB2YWxpZCAqLw0KPiAt
CQlpZiAoaWdiX3Rlc3Rfc3RhdGVycihyeF9kZXNjLCBFMTAwMF9SWERBRFZfU1RBVF9UU0lQKSkg
ew0KPiArCQlpZiAoIXNrYiAmJg0KPiArCQkgICAgaWdiX3Rlc3Rfc3RhdGVycihyeF9kZXNjLCBF
MTAwMF9SWERBRFZfU1RBVF9UU0lQKSkgew0KPiAgCQkJaW50IHRzX2hkcl9sZW47DQo+IA0KPiAg
CQkJdHNfaGRyX2xlbiA9IGlnYl9wdHBfcnhfcGt0c3RhbXAocnhfcmluZy0NCj4gPnFfdmVjdG9y
LA0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiAyZDMwOTBhOGFlYjU5NmEyNjkzNWRiMDk1NWQ0
NmM5YTVkYjVjNmNlDQo+IGNoYW5nZS1pZDogMjAyNjA2MTktaWdiLXJ4LXRzLWZpeC1jZDcwNTg1
ZWUzMTYNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gVGplcmsgS3VzdGVycyA8dGt1c3Rl
cnNAYXdldGEubmw+DQo+IA0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
