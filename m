Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9729C8792
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 11:31:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE3160A5B;
	Thu, 14 Nov 2024 10:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJuFWkadp3iy; Thu, 14 Nov 2024 10:31:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A3C760A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731580263;
	bh=RUIrZxuhUALeeLexcSqrAcQvxfm4+0WlpdNwKDuTiJg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mzy4A7wH5z9SotYCAMiCQwFCQ29PWO4ESoqiZio8yEx6O+NNUX90MYHFugqclpGhR
	 3c2/Sl2KhHsgMRYSyLHPtRNCS8IMJPYnbhTmeIY3DdHtYbzvh/sU5obXgqYDrGYy9t
	 S6WtweX8bpCPFTDCZ78ejvwfROMa1mCEfTpY6IrT25LtHvTeFzfgh6PXXUWs/rmj4W
	 YiqIcXQxm1FrUO9ry3yfA+9EkxFnIJiRGQsvRicnDaCvYuMPevm1yUIek+Je0M5l9P
	 UjaaUGcFiTFTxdh9codWt4b45uFNFkrq4I6c3ziZXxfo3/3GPXDHYQakDShE+Xhcc3
	 L8jLkVwa2SLWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A3C760A69;
	Thu, 14 Nov 2024 10:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 345ABBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FED380C0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7bKDz_wD6ca for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 10:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F3258058A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F3258058A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F3258058A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:30:59 +0000 (UTC)
X-CSE-ConnectionGUID: T0TDTD4RQO2D6mvEHLTsGA==
X-CSE-MsgGUID: uNiW1nx9RyWC80XgOoqJYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31486788"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31486788"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 02:30:59 -0800
X-CSE-ConnectionGUID: 6vCaPmf9SbC8i3u6eo7VHA==
X-CSE-MsgGUID: KDkIBYOIS4im0J5r1Amekw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="92616357"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 02:30:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 02:30:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 02:30:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 02:30:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VCRWUbmKq4/RuIMpK0h5sifpS0L9fvg4zU6WQ1QBfT9vq7uexxliQ2GdOkAR++nM/cbZ1Mdnmxap6hnVeJ7xrLVpaOK0Re0cZEAdKBkNshCgF0o6TMCBRKMAXx0dfPRyjcbmI+jmkbRKci1Z2G2pkVfEYMJ2splQ1f9CsAUpSYMk5wVOCQhd62EpSPpljfQM/7z3nXLLmAnwjLPsMSi9CWicaYVecaXLU5u8YgCjvzOxsEvc7AAGwjOfEb0JEhI+tnOCd4hm3cg0oi9A4ssdYgDMEwEmpCy13h8QSWH4qlvPyX4WqR54/DqPlDzxEEvPEUjhZjLqspTuZxZ+7OEUnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RUIrZxuhUALeeLexcSqrAcQvxfm4+0WlpdNwKDuTiJg=;
 b=Tw2I8vyZ0SFXUMzHPccThU5XqCXhEXwxv5Pl8QmHkROIBSrnjHcYYm/2o9HAIibXB+Wg+9jIoGahHZXPkzXQ0JMDzNrIZjlu9BdRFMgFZ9WsHu+T/SbzP4i/OLXEL3wV7NvFQEOXxFHPB/dNmNSY0XUCz2CslId6s+Cex39dG89mA9wXvRc9s+PrkYhQ7mtAOc4DIE5XtKKnxTrFozQ2kAye6h5GgTRP3vI/DPNS5UjxQQIAhx2DYaL1PGaeK6Ae9N8KMvoHJnPUWj5JPa3UEJ/hqojMl67ZirThldGx1g4l8YOPe1pMcZVS1+1CpX/RNYEa8pgISH343REYr/a5og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by LV8PR11MB8581.namprd11.prod.outlook.com (2603:10b6:408:1e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Thu, 14 Nov
 2024 10:30:56 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 10:30:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ixgbevf: stop attempting
 IPSEC offload on Mailbox API 1.5
Thread-Index: AQHbLLKjgZ72Op4wBUiosLS1rf9VULKpTmWAgA1YpvA=
Date: Thu, 14 Nov 2024 10:30:55 +0000
Message-ID: <SJ0PR11MB58659992046AE4636E45E1608F5B2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-1-f556dc9a66ed@intel.com>
 <1177b2aa-3ab2-4e08-8cb8-22117135b829@intel.com>
In-Reply-To: <1177b2aa-3ab2-4e08-8cb8-22117135b829@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|LV8PR11MB8581:EE_
x-ms-office365-filtering-correlation-id: 55f61191-b799-424f-9666-08dd04976c45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RnNBN2xSeGVDRmNEN3IwVnhnWnBzNWpPTFhwQndzUGl4Y1JrSDc4MXJ2SjEy?=
 =?utf-8?B?U2pTZFdiRDJ3Q1dreVBLRFRUcks4TGVhUUQyOU1naFFpcFlhNnhWRE5WYVZI?=
 =?utf-8?B?Ukh3amJGVUsvUmVjTUlpYUxxUmRGM0M0azlNRU5iSHByYXc2clJ3eVRMMkVl?=
 =?utf-8?B?enJMV2FZRDAveDcvMTN2enZ0Wmw2RVhRcVUzMS9MUUVEU0FKTlhablJoaGQ2?=
 =?utf-8?B?UUd2MUptU29keitUOGc4RmVBcXVZKzQ5b0dpVjZ1NVFUeFVjVEYxeHB0VElG?=
 =?utf-8?B?MnJDNlpZdm5iZ2NZWUpyR3preVJoZUoxRkhHU1RSOXh1MUZydnV2Y2xxdEpM?=
 =?utf-8?B?UFJBdFdtUVpnOFUxUjVsNXJMRnM2NzIwRktiVjIzb3plYWVmaExxa0FMUnhw?=
 =?utf-8?B?MDdlc2l5UktxcmYrVTZXQmlZZVRkM1JmTlFzSUVuNkRVb0pHVnRBOGtXMHZa?=
 =?utf-8?B?dDNYbjJVNG4rWUxBK2h1Z2ZjYXVSNDRkQzArcFJWMUp3UVFtdktnMlFMNjJD?=
 =?utf-8?B?V0Y3d1o4V0hqeW5YTWRCaVlhdklLWnl2R1daWFd2RUNyVDV0dUIzQ0krTkNC?=
 =?utf-8?B?RkJvTDFZenRTUkJaWlcvNDBYYk15bXZoOEFJdS84dDE0dmFEdFJxM0pvT0Zv?=
 =?utf-8?B?S2NkT1FSSklCdmtlVzI0UTFlSC9HTjlvQTJ4U3RaZCtoOUhvUjRHTVVKcnBZ?=
 =?utf-8?B?Tk9VR25TZ1NoQ1MzeUVGNlB5TnR4K3E5UGRSakNHMWp6OVkwTUpaRjhuYTM2?=
 =?utf-8?B?bXBIbFJwMzJDc2FMbkh4LzN5YlFVMWJnVDFnOGpLTkRaRU02WUFkd2cyWXlp?=
 =?utf-8?B?RVFzRXlaaWNTNDNTemprMkNMYXhwWjk0ejdBREdnNGxqZWoyN3RzeFpsS0Vq?=
 =?utf-8?B?aWMyZUh6d2tjTkY4MWdFU09VblFBZjd4TjkxejZPQ0h3SzdzSWVWYXRrYTZM?=
 =?utf-8?B?d1RsdTloeTlsYXlZM3V0WTFwWUsyUmEvelVSMlU4TTVTamxlbEdQYWJkQldI?=
 =?utf-8?B?aUszRVJCRzdKTnM3OU5ZOEtUTEFRRGMvR1FmYk4wVHU3MWdGOEZrTzF6N3dH?=
 =?utf-8?B?UnpjSWYyd2UweXFQR21aaXUwcjNlZXNtdG1iSThHelFNSGJSdVdybk9kSFgr?=
 =?utf-8?B?bWFBMFNwKzdpejdwN1h2U2FrWjk2SGxFRlQ5TXF2NTcrQkxiTE9WTVJ0UDBM?=
 =?utf-8?B?ZktuTExuaGprN3pNN0FQdzhCUEl5enlIWXF5dHJFNEFpUlNEVmkwTjJ6UHRp?=
 =?utf-8?B?d1lmV2xpOVpBWHFSNHd5N3kyTHZnT1lWMmhTUmJucXZSc0UvSFN6RmU5Y0Vn?=
 =?utf-8?B?Ykxmci9CZjVzS3dRZ0R6NERDYTdFSDgzVFRJbmNVcmZGNDZBVmZXMkQ0eURM?=
 =?utf-8?B?dHNnWXh3K0VDQkhUMEo5bTJFeDEvTUNKTUxOWjdrd2plQkMxbnErc1FTWVl4?=
 =?utf-8?B?VE9uci82bDVlYUl1TmxsZXFScmdLUnRETHVyanNrdTJRM3NYdjBoTHV4MW15?=
 =?utf-8?B?MS9XN1FrZ2NpY0pOTWFNNnUyZGFTeGhDbVkzT0RUSFdkOVdIZGJreS9jTlpE?=
 =?utf-8?B?bGd6eXN6REFpYmlSeElwVWdtY0F1cGY4bStLOXNZQndMSHRvUXM5TnA2QXhQ?=
 =?utf-8?B?dk9vRDhlN0tGUHFvd3oyR1hZYld4RGZQaVJOaVhwa3ZZYUFmZ0NCTjFxZUJu?=
 =?utf-8?B?Q09iSDBDSTM1ME1CUTdaVzRJdGJWeElxc0tMRDJmZkd2S1hVUG5aQnJJWkVT?=
 =?utf-8?B?ZGdPVE10N3hkS0srbU1oRnhHNTBFLzV2d2RXYW9wWGY4VXJMRC82azVjZ3p2?=
 =?utf-8?Q?WlSWMMItLp3qCL8AMzD3WUzfcfSz4ls349GXU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFVsRUVtSWpwdHhXMWprdFhPckdKUm1QMEhCaVVGUWZKclhaRGtqUmRnaVl2?=
 =?utf-8?B?L25iOUpRRnMzS3RnZDloTFh4dTVqTVo3TFJrbXhyTS9odXMzVExtM2J5MWVH?=
 =?utf-8?B?U0NHOEZjSE85cFhZNUtVWUxGbThIdFZUbTdjRmw5alZTUThyMFZzV1VIMXBz?=
 =?utf-8?B?ZjVWc2R3YksxLysyVHlwM2dPRCtsc2tzSmcwYTN3eWppdUdKRllXcnpPeDFx?=
 =?utf-8?B?bk10YVJqdnNySXRpYSt4Ny9McHJ0b0I1S3p5VnVCcmQza3k0a0Z6U3NvTVVH?=
 =?utf-8?B?LzdmVExWOUhqK2x4bHdaWHRUL1Npbm1oNitQVzBUZ3dGM2pWUlo2aXcxbWtl?=
 =?utf-8?B?b1QybjBjRjJiQlR5N05QdUVUVmg5QVFPcjlPZnlYMFN1U0MvMEdYK29IcExr?=
 =?utf-8?B?N0N2RC9HSDlRQlcwSFlnNjFpSHRGakZzT20rbmxiLzJ6Y3laL3dBZ0tmMFZR?=
 =?utf-8?B?aWdDbisrNVErTFJzV1Fhb2w0eGd2cHZkWlM4a2lLL25GVGZhWnJmc29pWURs?=
 =?utf-8?B?OUhCZEZqT2lXSWhrTk0xVHV2elA4MFgyT2xVY2NYNFdRYjQxdkdTM3dpUzB1?=
 =?utf-8?B?WE1pVXdJYjBDRExDM3RwQ1pya1pjYXBqVnNQMm1xeGZkanh6UmFHYVlWcllu?=
 =?utf-8?B?YWthRGRTem5zdStUVHdTN3hnOUhReDNsMEUvZEE3ZC80QmRrR0Q4RVo3MzdI?=
 =?utf-8?B?SlM3RTJEazllckZWR0diTFFBQXQ1VVkwblo5OGNaMGtXb2NvdmJyQ2R4aXg3?=
 =?utf-8?B?YzhKSXp1MGF3d0ZLdUxud1pKVUVVWU43eVRlQ1greTNLRW1Id1lvZUhhbVNC?=
 =?utf-8?B?MHBNbDF4bmdqMXZ1TWlDN0kvQ0VoazJya2M2YldPNFRpa1oyS2crMHpTV0FK?=
 =?utf-8?B?U1QyMGFuOFh3NGlhQ1ludWJZcmZtYnVCa2tVVk54dCsvSmN6L1R1WEc2am55?=
 =?utf-8?B?Y0VpQ2U1dTViN01uSEJQRkl4cmFiajFFM3JFTTdOT0JvbUVkV1V6QU4rSG5W?=
 =?utf-8?B?YnBzN3VGcTFicnJjV05iTnZYK2FqK3EyUWsxZXp0MjJSeGtMQVVlY01ubzVD?=
 =?utf-8?B?UFVENUFzQk1QS01rUUV2cFEwU1BodWRPZDFFVTdWRzBoSnlnUDVuQm5IWERo?=
 =?utf-8?B?VWN4MkMvODBmY1hKcklMdGNZVzdKQjdwQ24zeldtOU1JSnpMaTF2TUpGcVhp?=
 =?utf-8?B?YjkxUlYzblVwTjRSNDhJV2YwYXQ2bnlXUjJYNXFBbStGa0hQREJrWjI3Slpp?=
 =?utf-8?B?REJIUFFPZFVIWHJOcGxxdWtzTU9KZGJNTTM1R2tDMUZkSmtuN2k5Si9RYi8z?=
 =?utf-8?B?a3FCdVh4RVkvUE1Jei81TkhJWFF0ODNjYTlQcWJaM1h5UnpRSTl0Z1dlUW9M?=
 =?utf-8?B?T2VEajBYb0ltVCtDa0VISFhmOVhKWm9XWGRTeW8yTkJxUVVMZHJmaVBieHJR?=
 =?utf-8?B?R0k1endIUy96TFNjZ3BRMG9MT3BreVNJM2xhNWJlMWFXNlJBV2IxNER4N2d6?=
 =?utf-8?B?WDhKd1ByQ0VjajFwYy9mUkdCRVE5WkJxWXJXQzNqcTJwdVpKOHRYL21XQURM?=
 =?utf-8?B?SVZNcjdRbExvQUZ3bmg5SE54VUFGVTFoOVQydnVrVFRJYkhtYUlWUTdDLzhR?=
 =?utf-8?B?SFRCSENsYUZwdGo1QWJldnN5QWhuVmR3akdJd2h4ZURMWFoxem1DQmRFSyth?=
 =?utf-8?B?R05tZlRVc2NaTk0zcGpzcDMxeXlZcmRpdS94c2ZBemVVZWNxZlpUdys4QXBv?=
 =?utf-8?B?MEFSTXJSU2d3U3NSd0QxTzdjWVBiUlhnUC9Yd2k2Y0ZFQ2UzeGovcmxqd3JS?=
 =?utf-8?B?SWdtVjZlV01JbFU1OWVlVlV1TDFQUVh3dFY3WHJUc1R5eW5qQVRPY3dwR2lq?=
 =?utf-8?B?SzRpSkRkdGZSY2FxNzdPTjg2WGlIMlB6U3FSejQya0ZVWDUzU3kwVGpXS1ZI?=
 =?utf-8?B?bGcrYlI4R0xKUUVxcGs1RE5KODN5dmFicWtxbHJCYTh2QjlNSC9wL0dScU8r?=
 =?utf-8?B?TmNWVGdFR21WcEwvTFZBZ3BLWVBYbno4MDBUdWFwRm5kdUlIMUxGWE5takFM?=
 =?utf-8?B?ZGRXRGFEYUp4RFQ4bEhyM3p0K0lBKzhNT3BabVZTT0NBM0RUbTJ1T1NiblRk?=
 =?utf-8?B?N29pcWxIZVM2WEtCZUpSTTY3ejJ6Wm42NWtBY3lRdUJsRVNDU1dneGhBa0E2?=
 =?utf-8?B?SXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f61191-b799-424f-9666-08dd04976c45
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 10:30:55.9281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TA7saMidzKOSBXztwgy2gfaS0svyMWC27rwuKzzf+dmaZ/Vd3DJxYLBfrnQ0UlRHEH4cYHc9v9DnfbloBlsX0CxavXaJlvmugmERN0fgr/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731580260; x=1763116260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RUIrZxuhUALeeLexcSqrAcQvxfm4+0WlpdNwKDuTiJg=;
 b=LpTNjWt4FEq1Xf+65K4NkVh5S2zb1X3mBLHzLklYy+p8MWENWABhYvhl
 mmEA3hDBsJa9UVKRO/aNOlOy5HuuOWz8ZPmUaZSJkzaRNLHYvuvUca8rZ
 h22D100gmn/yOUhfdZwdp6tVRRYBa+lM4fFh/mXN/8UmAe+FZfGqnmR3V
 si4rx3Al9juDrSd1Bop/1jkafnKWRJ5ax2sUm8uQwq3BW42MSuXeXB05d
 dwFAPxiJjHP4GWOw8XcvW4XwSnuTPUZMZ9akaRnUHgVZQ+5/YPhil2Hzb
 MfD1X/tfTTQ+FHU0hp+cX2UZZ9ehuRr8mxPVpKvErJPuJg+mxjtvNbmKH
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LpTNjWt4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ixgbevf: stop attempting
 IPSEC offload on Mailbox API 1.5
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgNSwgMjAyNCAxMTo0MiBQTQ0KPiBUbzog
SW50ZWwgV2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz4NCj4gQ2M6
IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCAxLzJdIGl4Z2JldmY6
IHN0b3AgYXR0ZW1wdGluZyBJUFNFQw0KPiBvZmZsb2FkIG9uIE1haWxib3ggQVBJIDEuNQ0KPiAN
Cj4gDQo+IA0KPiBPbiAxMS8xLzIwMjQgNDowNSBQTSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KPiA+
IENvbW1pdCAzMzlmMjg5NjQxNDcgKCJpeGdiZXZmOiBBZGQgc3VwcG9ydCBmb3IgbmV3IG1haWxi
b3gNCj4gPiBjb21tdW5pY2F0aW9uIGJldHdlZW4gUEYgYW5kIFZGIikgYWRkZWQgc3VwcG9ydCBm
b3IgdjEuNSBvZiB0aGUgUEYgdG8NCj4gPiBWRiBtYWlsYm94IGNvbW11bmljYXRpb24gQVBJLiBU
aGlzIGNvbW1pdCBtaXN0YWtlbmx5IGVuYWJsZWQgSVBTRUMNCj4gPiBvZmZsb2FkIGZvciBBUEkg
djEuNS4NCj4gPg0KPiA+IE5vIGltcGxlbWVudGF0aW9uIG9mIHRoZSB2MS41IEFQSSBoYXMgc3Vw
cG9ydCBmb3IgSVBTRUMgb2ZmbG9hZC4gVGhpcw0KPiA+IG9mZmxvYWQgaXMgb25seSBzdXBwb3J0
ZWQgYnkgdGhlIExpbnV4IFBGIGFzIG1haWxib3ggQVBJIHYxLjQuIEluDQo+ID4gZmFjdCwgdGhl
DQo+ID4gdjEuNSBBUEkgaXMgbm90IGltcGxlbWVudGVkIGluIGFueSBMaW51eCBQRi4NCj4gPg0K
PiA+IEF0dGVtcHRpbmcgdG8gZW5hYmxlIElQU0VDIG9mZmxvYWQgb24gYSBQRiB3aGljaCBzdXBw
b3J0cyB2MS41IEFQSQ0KPiA+IHdpbGwgbm90IHdvcmsuIE9ubHkgdGhlIExpbnV4IHVwc3RyZWFt
IGl4Z2JlIGFuZCBpeGdiZXZmIHN1cHBvcnQgSVBTRUMNCj4gPiBvZmZsb2FkLCBhbmQgb25seSBh
cyBwYXJ0IG9mIHRoZSB2MS40IEFQSS4NCj4gPg0KPiA+IEZpeCB0aGUgaXhnYmV2ZiBMaW51eCBk
cml2ZXIgdG8gc3RvcCBhdHRlbXB0aW5nIElQU0VDIG9mZmxvYWQgd2hlbiB0aGUNCj4gPiBtYWls
Ym94IEFQSSBkb2VzIG5vdCBzdXBwb3J0IGl0Lg0KPiA+DQo+ID4gVGhlIGV4aXN0aW5nIEFQSSBk
ZXNpZ24gY2hvaWNlIG1ha2VzIGl0IGRpZmZpY3VsdCB0byBzdXBwb3J0IGZ1dHVyZQ0KPiA+IEFQ
SSB2ZXJzaW9ucywgYXMgb3RoZXIgbm9uLUxpbnV4IGhvc3RzIGRvIG5vdCBpbXBsZW1lbnQgSVBT
RUMgb2ZmbG9hZC4NCj4gPiBJZiB3ZSBhZGQgc3VwcG9ydCBmb3IgdjEuNSB0byB0aGUgTGludXgg
UEYsIHRoZW4gd2UgbG9zZSBzdXBwb3J0IGZvcg0KPiA+IElQU0VDIG9mZmxvYWQuDQo+ID4NCj4g
PiBBIGZ1bGwgc29sdXRpb24gbGlrZWx5IHJlcXVpcmVzIGEgbmV3IG1haWxib3ggQVBJIHdpdGgg
YSBwcm9wZXINCj4gPiBuZWdvdGlhdGlvbiB0byBjaGVjayB0aGF0IElQU0VDIGlzIGFjdHVhbGx5
IHN1cHBvcnRlZCBieSB0aGUgaG9zdC4NCj4gPg0KPiANCj4gRml4ZXM6IDMzOWYyODk2NDE0NyAo
Iml4Z2JldmY6IEFkZCBzdXBwb3J0IGZvciBuZXcgbWFpbGJveCBjb21tdW5pY2F0aW9uDQo+IGJl
dHdlZW4gUEYgYW5kIFZGIikNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3pl
bCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi9pcHNlYy5jIHwgMSAtDQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmV2Zi9pcHNlYy5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZXZmL2lwc2VjLmMNCj4gPiBpbmRleCA2NmNmMTdmMTk0MDguLmY4MDRiMzVkNzlj
NyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2lw
c2VjLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZXZmL2lwc2Vj
LmMNCj4gPiBAQCAtNjI5LDcgKzYyOSw2IEBAIHZvaWQgaXhnYmV2Zl9pbml0X2lwc2VjX29mZmxv
YWQoc3RydWN0DQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93
c2tpQGludGVsLmNvbT4NCg0KDQo=
