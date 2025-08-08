Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ECAB1E5E3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 11:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C34160BA4;
	Fri,  8 Aug 2025 09:46:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZXvr60C-or9U; Fri,  8 Aug 2025 09:46:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEE8C60B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754646406;
	bh=Dzfj/+7FRvZHsRGdcuFPYc8hiMmFnFFdM32a8C94/N8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oarp+dcPOCRXah8cOYtGzJEg4OEYUJXl/GhNCL6KCMKfVYxTsh9NqVsUjf1SNS/aC
	 jlr/Ui6AVUtWYAlLZtBfcCn8woUwr7LfwpXf3AZ9jZfUQZ1AAQljzKxcFrG5zuwU/G
	 E9m7a/sp3UUjTksQdPmNcMI+V2dJljPPzkc7cHpd69x8z6hd7rolM2rdyiKgQxYKRt
	 GSPOa1TxnWSDi6u6ahmtvM4d30+/VCQZSfLhnNttaWkyVSPrWR+aWj6qZFxrOIqn77
	 zQjOYqPViet8/+UIDgTE/Uqp5xPQnozlqhDo8NrsuCJGw/nvD5ZA2Px431PnPLmk+T
	 /dtxBg81zv0zQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEE8C60B9A;
	Fri,  8 Aug 2025 09:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D6F031
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 642F340862
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYV_UShIag9U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 09:46:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A94D0406B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A94D0406B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A94D0406B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 09:46:44 +0000 (UTC)
X-CSE-ConnectionGUID: CtX0HELSRjqDNDRg0ybjAw==
X-CSE-MsgGUID: f1TJhBFySUK3IJNmdKxWnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68360639"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="68360639"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 02:46:44 -0700
X-CSE-ConnectionGUID: yKf4cm1uSq2xQMvnzlychg==
X-CSE-MsgGUID: BLYpTTcyTUymme1MbJ/MEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="196270737"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 02:46:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 02:46:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 02:46:43 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 8 Aug 2025 02:46:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xtt/voz/sVTdjmA8SVjLlobik7UuJeeK4KcRJ8QpfNIFjo6M1u+3LS8IST1+UyZziv2wbVvQUEGodZfvhAXNf1cHDnGCNFxVmGlExVLrcOQs6d8oNma019aevei9mrgnRakeCJq+rWpYXmbWGo4SrfjM9V49C9bTKxKqwNg6VLry+Vhxgm5ldsAiYs5k1qftsooiSi+duUj5qxWPupgMUh88Jr7StvaV/s5aftm+DQrdvZIRwQCDCgWJ9iHahLjyqv4OwiMLvA9dVzRmFca2qEohg6ktwQFZyXyZaiG8TAKGI31bTEoV3saPOvXppqNx1F8rFXEQcl1kIBeWwgoJYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dzfj/+7FRvZHsRGdcuFPYc8hiMmFnFFdM32a8C94/N8=;
 b=khI+f+KFZ5Zb6DvDVk0BpwoYsWj7vHg2f3voD/GOFf6x7hHOzVm5aTDh0X64gvTOBglN8TKWBgf8X4qeCwLIpwH/j6V52xhDRmrXJKhUSieI8pJzCgbT73LRX7Jmh0pAdTPPviJcQU8S1AtzjeN057CczkaqhW5j1M+5WEEfcio3Wu+JHGWLF9YQH+wepJNiZfoXYfK0V1OZcYuEbyh27wT+zJbqfM05TQK/YLNejfelw/IbeGdGVy3IuS0sLvfy8cJNhcKg58lRRpZo9m8Imvb3EdlBErP6esDMkPqDuv/KdfGEf0KtpUlE4N5UDcrxlbGg6/NUVv4jWgU+STTPgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6076.namprd11.prod.outlook.com (2603:10b6:208:3d4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 09:46:40 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9009.013; Fri, 8 Aug 2025
 09:46:40 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop
 unnecessary casts to u16 / int
Thread-Index: AQHb+6+i/woGGVCaJkGNLOmbwixlVLRYccnQ
Date: Fri, 8 Aug 2025 09:46:40 +0000
Message-ID: <IA1PR11MB6241722C1747493C737688C78B2FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
In-Reply-To: <9e21249d-b5a7-4949-b724-e29d7b7ea417@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6076:EE_
x-ms-office365-filtering-correlation-id: 3d1e2354-400d-4afe-2418-08ddd66079d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?eHNJM2VJRGRmeUtIdTB6Qkk3aXR1Zm0wYStOMGJDL0NmLzVIdGJXcHp4ZktQ?=
 =?utf-8?B?UXh1anZWeTNWNlF5bmJYTTI3M1p6RzBSY1Y5ZlNIcEFuTjhmbEttcnlXMGtF?=
 =?utf-8?B?VWtJUGVvV0lHNnVDY2ZIQ2MxUzduMndQcU82cW5Zd1FXOUVuU2h1OEhDb1NG?=
 =?utf-8?B?ck9iamRZbDdlQ0dnUDJ4d09jMUIyV3ZNV05oQzVWOHN4bktHWmx0ZkRLTlRa?=
 =?utf-8?B?UllSMDVrSW5FL3QxaHllckFjVkRMK09NZWhrRWdvWnRvZTF2bCs4NThqK3Zk?=
 =?utf-8?B?dlpFcUFaQWE1NHNBc2owMGVySnhIeGJaNkgyTXFZRFZmb0x2NkZwOVFpQ1lT?=
 =?utf-8?B?RWRvakF4eE1TNTQyTHcvSjlleERGb1dYY1d5VGoyL3gxL3NXeHFjd2lvQUpk?=
 =?utf-8?B?TFZORUgwL0NWRlRPU2xZbFkyRnIyeWxMc3g4WEUxYzl4S0l0QU9ucWFiOWFG?=
 =?utf-8?B?R0l6SGE2WnFXVjBkTmhGdHdkKzhpeDVQaUFiaXA4NjNxMWtXTjJHQWFnSjRs?=
 =?utf-8?B?bm50eWQ4TWd6NDNTVmNMUmtvN1hQbUR4TGxTS08vd3FoZDVXc0orYWc0Tlpo?=
 =?utf-8?B?NXQ2TDJLOXlyRERRb2xCTnFHaE9mTkNBVUxJaW8zSWMrc3U4d01tK3d2L2pE?=
 =?utf-8?B?R1lKWk54VTRUYTczR1dqQ0hvR1BoNXRUMnordXpIdTg1bGRmSTdVQjdzcTdz?=
 =?utf-8?B?c0RmbUxycWlMOG91NmM4eHlvNW1wenVndFR1RERjczVXQkx1OWg1WjRwbDQ3?=
 =?utf-8?B?c0ptb1NGYzFHUkxqYXh5YzhiTUVvTmVpbTJqUUMxcUVWZ3dLbHpoUTNsMWl0?=
 =?utf-8?B?TDRtQ1BoWExuOTlJd0g0UjYwamxSWHRPU0JnZTFwYzk1ZVRsczNYUFlNVXFV?=
 =?utf-8?B?b01KTG9BaHdzZWx4alpMZ1F6Mkdod1JuSm5nbW1EbGJ3bkUyZjQ2bjNKcWRV?=
 =?utf-8?B?YUVGUE80WWJvZERycHJrdHZoSTBQa2pHSnJyRjRmb2dPRlg5WkZNUDc5R005?=
 =?utf-8?B?TGsrbEI1ZWplS2xDYkdvelNyU3V5T2VFMW5YSU9sOFVnZ2U1RnJ6eWFZaS93?=
 =?utf-8?B?VW1BQXhicWpmaE91M1lGajFab25pSDh3RmhmcW9oWHd6WXg0cGQxR3hoMGNm?=
 =?utf-8?B?R1grSlBaN0NodlQxNnBxTWUvRE94dGNML05kbmVQTUVXVGNDZVpaMzljR2pT?=
 =?utf-8?B?T3EwMjJtYmdaMzF3cWJ6WldrSUg5cDl5Mk1VVklZZ2Y3L2Jlb1d0SmVrTVJZ?=
 =?utf-8?B?Ujk4TVByMXlrSDRZMkZkeFIvcE5kVkxSWEhuU0xsWFViazB1S2ViN3EzZWR1?=
 =?utf-8?B?VVlrUGcvV3NaYlhONGxwSXdrbjFEek43YjVUeERYOUJpb1RzQ2RFRzBUdDBh?=
 =?utf-8?B?NlR3Unl4aEhhcXRRT3VnamdUUEJnZmxWQUNTTGhmaXk3L05UVjdZbjFIVUIv?=
 =?utf-8?B?Rm9ib1hDTTVXak9EOVg4d0QxQTZVbTJLTXNtc25GWlpOaGUvL3drUXIrNUVV?=
 =?utf-8?B?U2d6cXArQVovekJ3c1gzdzRRZXZ0NUJmWHp1KzlyeVFiL2IxaDUvSWlRbWdj?=
 =?utf-8?B?RTVJWGdTb3lQZ1pONk1CRzd5OTJRWWFob3ZkYk5FRkJMV09WeGtUbE5HKysw?=
 =?utf-8?B?dTROdWpQME8yUVBibFkwb0EvZERic1JQRCtmVy8rNjh4SEpMN2tKRDhtN3o0?=
 =?utf-8?B?azFXNk93NkNUNVRiZHJ0MzA3VTY2OTYxNUIrc3JwelVGRW1OcFloMGFaKzNq?=
 =?utf-8?B?TE16U0xJc1krT3NTeERaT21Bc3hWOFQ2OUFYcURLQXNENFUyaFpnTDNXWUxW?=
 =?utf-8?B?bnpiNnE3UWV0M2Z2bFl3bWtIMmk4b25PK2VqUFRiY2wvRlkrVkY0OE9xL2Nw?=
 =?utf-8?B?ZFc5Wm9kSVRqTVI1eDNDZ1RXcForU3F5enhUYXV4L0NYek0zM3lEQVhrUjJr?=
 =?utf-8?B?R2VoZDR2QWJMMFZnb1hXeExKTFF3L2paSjQwWlJqM0pKeS9zYm0rY0VrMHZq?=
 =?utf-8?Q?luLY5qXB2lQm4Hr5sfC/ZbZpudfycI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEdaL0lKVzgzMFJkcmZMSmpyNE81a0FiS09qa3F1Z2Z5SkFxaUUyOTc0V1VO?=
 =?utf-8?B?M0JzWnBsVm1uQ2hsTkQzZ3c2YWZZRjZXVndueEhGcEFDcDYyYnA1aVE3bzlt?=
 =?utf-8?B?b2JjdlRVRk9ucDBpY0VRT1pURzR6alc3bXM1Z3c0d09ET3hWWVN6Zyt3TEdv?=
 =?utf-8?B?aldFbjVXSXliVnJSeVFlMEpUWlhSeGtDa093ZkZoOWVBb2hEWHNzYlJmS3Iw?=
 =?utf-8?B?TGtUaDBsdmtEZTh3M25yS2xPVWxHWlBXSjlwYkQ5ekZSV3hVSzRWZ0MzV1pF?=
 =?utf-8?B?NExodmkyc1lZOEpjVGd0OXB3dHdmUytTT0swZTR1ZldNLzVZTllHd3hnZXhH?=
 =?utf-8?B?dm1mbURJWkhWcDJITEJDT2lhT1ltOWdnMUtWT2c2M2hwM05jN1ZyU21JZXZC?=
 =?utf-8?B?djVHMlExSmRFYlJTRHlaZEUxcXRvaFFNSm4xdlpKa1NkVjF0Zkg4WDJibGJM?=
 =?utf-8?B?bnN6YUJkQk9zRUxOYXp3cWxXUXRFRTZUcDJVdGFobW90alc0S1UwQjM3Rnhp?=
 =?utf-8?B?eXBEVjQ0QlEyRFB2cUlzWjlpNHpKaXFrWE1xU0VkMWd3TjJHYjFITzFSZms3?=
 =?utf-8?B?ZEJ0bXlkS2FvQjN3MnhtTGZTUkVyZVBtOWFUNkxoL3N4MlppckdRdDl2dEFN?=
 =?utf-8?B?MlVnVWVvNEl4c3hOVEVFMmFqbjlCSEcxcXZRTVZqY081OENsRUlEdjVQYnA3?=
 =?utf-8?B?YVlNVnZEdzhDYXIyMy9Ya1A3QUR6b0xFYUluY2NDZFNzb2hYZkU1VDQvNUZq?=
 =?utf-8?B?NHRpY0dxTFZzM0d3RVdGcEFZRDd3NlFMNEVGL2QzcTR5UmRGL2V2RWVVbm85?=
 =?utf-8?B?eXlBdTlacjZ0VFFESnp2Z3hnYXlISlZvR2VoNlpoZlZhNHJJaHBCdHZZbHI1?=
 =?utf-8?B?elhtSFZsMndmT1lvWnR4amhVNU9DSURsZWJuYkJna1l4cjliNTVtK2ZPd0Ir?=
 =?utf-8?B?dy9BRGp6ZS9aSWJpQkJCNjJ2b1ZwalRmUFR3eTh2cTlQTVlUajJIWjkvUDFW?=
 =?utf-8?B?VmZGOEZVZzBrTGRTTFRJWmI1bXJsSjRHeWdjWGJoYndNbmNlREY2VDhqcmJW?=
 =?utf-8?B?cDJPZEtDVnRHWWV5K2xDTUlXTGhMOXNpL1NBRjhyMjY1Y3BHcU1XUmRLQ0JH?=
 =?utf-8?B?NktqUDVPdk5lRHhjZ0NzQWljTkVRWTBES0o2MHhQVTZzckN4dTBDVmNSUVFp?=
 =?utf-8?B?b3pEWDhraVdPMmtCZm5uRmxSVkd0bUw0WWkwMU5UTk5NUWRpOEgxUWs1aTVM?=
 =?utf-8?B?a0V5RURLL0JHMlJOV1ZjRFNIM1RXRjdvUStZb0YwZ1NCTVIvVXdLTWpkWkw2?=
 =?utf-8?B?THZnMG4yUm9CY2RQeXpmRUM3N2hzaVc5NzdNd3ZQbytwTzhiZGFQWUtFbnE0?=
 =?utf-8?B?cXl1MWQrdU1tUFpaSnJ2eU4rZm96c2tUVHI4a2gyYzlxYSt3bUQ5VHVYNlVR?=
 =?utf-8?B?ZW85alR6NXhQT1FsZytkTlNLbDI2OExmNlBuTWluQmE1ejh6UHl0QXRvV2hh?=
 =?utf-8?B?OXBrTnVLNXo4TDQrVnRFai9vT1Y3eU5aUE04UDZIMnBzdFhuc1dLM2EvYUgy?=
 =?utf-8?B?M3dQakVpTWlqenEvYm9ESVhOY0FYY3ZYbVV0d3VsUHVPeUNtSVBkemhPdjNu?=
 =?utf-8?B?QnpaZ284L2c2dnlhZlZzNUlHYWlqK29mMFlFWEp1SXBobnRYaG9qNkpPR0sy?=
 =?utf-8?B?VWlJc3ZpV3JPNG0wNUREOG9LT3BmSjZKM0RnUnpsRTVpck9GMTU0dDBZWng0?=
 =?utf-8?B?TmRRelBlNnlBNCtCSWNMaDR6QjlhRnlpWTA5ZzNVRUFFcm9TUktvWTBLSGNm?=
 =?utf-8?B?WG84WmE2b1lsU3ZMRXlKVDRkMVF4YUNISWhkYnhCUmw3RGYySTRMNkxMSWlD?=
 =?utf-8?B?UnducnBaWUVpN1pTaGxad25sUXcvOFVOSzR4VkRPOHpFVWk1em5FdldHVWFk?=
 =?utf-8?B?cTMrTUdNRFBpdkNTMUR5WTQyZC9FNzkzQTZucDZ4Nk5aZE5HZnNTajRGZTRo?=
 =?utf-8?B?d2htQ3gvdWtjcjNCbytRUkZTODFWSExDOG53S0V6TTJRcWNkQjcvbjQveUdt?=
 =?utf-8?B?SUtXMkEyOWlXeS81NW9PYXFFcjVLY3laWE1CcXRUUjY5OXVqcGE4UE1JRlVY?=
 =?utf-8?Q?Ldn3q8expB39aJdLK/VQji9hE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1e2354-400d-4afe-2418-08ddd66079d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 09:46:40.5203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJcq34setj6cGD6wgBvpIyTsr7KaMGmwD6wuFJ9BfXBFxkraNWDZvSWZ6+E2xyVViTQMnJ0rv9iZUv3vXepfRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754646405; x=1786182405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dzfj/+7FRvZHsRGdcuFPYc8hiMmFnFFdM32a8C94/N8=;
 b=GhbGUs6Ofs9DfWke8uyO8fhGP8CzE3KBcdrFMkRKZDM4ecuNXcYF/hQ6
 9r6KDq7ql4enVkEYSbM+szddfMcluvlO35IreHy/iHK7hCDToQRYQXFNh
 8o9jVDf0DFwdSsekpvDM6zymD4doEOL7N0jRdj6WZfXZoU9jP2zcJrEMm
 woTQCPeGdtzltV/qmrS1OabkBqes3A7APFk/UH3/qMUGvlzyx8iZ3BGfM
 g4lXGThHKH24AZyx0sseCK7M33Rq5WMqxmE6OSIolBoqZfQ8CaL04WRW6
 MaAY4PIPq71itFY2hgGOmLIZ06XS9pte4hTYxD1/sFTode8zi7+/0SDQw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GhbGUs6O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ixgbe: drop
 unnecessary casts to u16 / int
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNlayBLb3dh
bHNraQ0KPiBTZW50OiAyMyBKdWx5IDIwMjUgMTQ6MjYNCj4gVG86IE5ndXllbiwgQW50aG9ueSBM
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVt
eXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5u
LmNoPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0
IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47
IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2Vy
bmVsLm9yZz4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wt
bmV4dCB2MyA1LzVdIGl4Z2JlOiBkcm9wIHVubmVjZXNzYXJ5IGNhc3RzIHRvIHUxNiAvIGludA0K
Pg0KPiBSZW1vdmUgdW5uZWNlc3NhcnkgY2FzdHMgb2YgY29uc3RhbnQgdmFsdWVzIHRvIHUxNi4N
Cj4gQydzIGludGVnZXIgcHJvbW90aW9uIHJ1bGVzIG1ha2UgdGhlbSBpbnRzIG5vIG1hdHRlciB3
aGF0Lg0KPg0KPiBBZGRpdGlvbmFsbHkgZHJvcCBjYXN0IGZyb20gdTE2IHRvIGludCBpbiByZXR1
cm4gc3RhdGVtZW50cy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogSmFjZWsgS293YWxza2kgPGphY2Vr
QGphY2Vray5pbmZvPg0KPiBTdWdnZXN0ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVs
Lm9yZz4NCj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2Nv
bW1vbi5jIHwgNCArKy0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X3g1NDAuYyAgIHwgNCArKy0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX3g1NTAuYyAgIHwgNCArKy0tDQo+IDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBp
bnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
