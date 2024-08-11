Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B0D94DFD6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA70040C8B;
	Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmIb_nDErOM9; Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D291440B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347532;
	bh=EQyoHdUxHHf3Cnt34BpqX3Veb/DxgWtbm+l1e4fgEdU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UOtjq17GY2LhOpmVn4fpaMuOTlBnrZQ87XExv+CDufgmHhy0aNbhqEey7o0qpDaWp
	 j6Zq3TnhNclQ7HhpJ554b/AggWeZmXyarZyNEYRYVe7NOgnJSKkoazJiUBpTlcM7/j
	 lDIIGkswGxF3svfoifCnJRDv2gbBIZjkGlLjlc1AmNO1xsPohewgwQtnfu6qdr/ApG
	 mgwHZNQ+xwqHg4Wh3ywpVKM4UEHH6GMBNbtgEcqfd1a1vqAmdmFjFdeuEUYPVLt74Q
	 ZqSfMZDjjMKI0gdO9MZ/33zBsc4PsolgZbcvsKXS1dUx5rILdyyQVm5sytxDtrLmvg
	 D6ob1djZNTuPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D291440B83;
	Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 418541BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A34140BAB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cEkQWHR6ABSI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09D4040B83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09D4040B83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09D4040B83
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:42 +0000 (UTC)
X-CSE-ConnectionGUID: nF+wf92mT+eyiCrrY3FV1g==
X-CSE-MsgGUID: uSdirQ5vSriB+jhJ2LLBgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457771"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457771"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:43 -0700
X-CSE-ConnectionGUID: hrUIsXpVS2SH9nQUTQMOuw==
X-CSE-MsgGUID: rRIKKbRPRh2A/IVn4W4/sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828240"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TnfNwA44xILbGnUhMnrSnN2UoWyWmRZUEYeJ66MI0We1FU2EoamEePiw/616YXtfhAfty7HNhEX5X8cOe8zpk1yVotm9eVFJ0u9nxord+jP8efghfZvEo09nuMmw4wGlYRn7g63DF7ePoX58qRWpYYVCZ7Ygglc9rFQBLdtAYy9yIlFHy3gbJVXL1ywOPBRKXim1ybVoasXMof0j/0oMuh4poRuMjuwhXv0nMMiwFnKNg2g+YAzpWyy7yGFZwT6gskBqvwtuyrbNXD55ONAsxlwrf4RSK8tgNHmn8R5jCHzhKqaa3XxwMs0SS7pnXrgOtYa8qVnMfiV5Wnm84JrHYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQyoHdUxHHf3Cnt34BpqX3Veb/DxgWtbm+l1e4fgEdU=;
 b=GNA18r6cZ6QaYNuGagsVp4KGNhsn/QMPy20fC1i2O9O3wIKJ/+cF5Wod6CWRaML5A1cahZOtXred1bMw/ZrnFDsf7uzee1q8pE6suXMJpVTfVtHYwSOHprrRKjU71XCql04YdnPQa0mPxbppmXzLjBGF59zW7yt1tbHyD/wHRp47me0/S7NOw+Zyg5JgTB5DP3Qs5exWJSPhUYHPRKiJffdH1odliAg7l/O7t9L/VEmVnY4Gq2DDndxv57cNFXjWbgHX8MVPN9DtsVUyaXstwDwTHtYRgSXeQPOuCRlwAAKa+UK450RKYO0Q/Zixl8OgtHpO57hJCovJj9Hseb9eUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:40 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/7] ice: remove unnecessary
 control queue cmd_buf arrays
Thread-Index: AQHa6EHrXVFAjvgigUezwV8lSPj3Q7IgWbkg
Date: Sun, 11 Aug 2024 03:38:40 +0000
Message-ID: <CYYPR11MB8429A88F9564BB8690B8E3ADBD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-6-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-6-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: f6f5ed87-a7fd-4898-bbdc-08dcb9b7176b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OVA0dmN4cTNSTXVONHh5L2xsaDZVbVpMN3YrQXAwMUk2Ti9xWG5xRDZtbDlR?=
 =?utf-8?B?TzU3dlF4OFpKNjJnamNGQjJkTEFyWjBjUzEzWW1LTWhSY2I5RXBPdXhic2J3?=
 =?utf-8?B?Wk9RRjk1cG5MdkluclB0emRNL21uQzhxTDBzMUxpeXVzSCtyTnZWdnlLdnVW?=
 =?utf-8?B?emg0YjZrbndXMHdsSllsZHJaYlpXd0RHYWxwa3FnR0ZXT2Z3N1RVaVQyOXI2?=
 =?utf-8?B?K0JualRTNE5sT2c3bjl1Kzh6NmFhVHBMazE2d2IzUjJ1K0xiU0t2L2x2NFVq?=
 =?utf-8?B?NHp1VndJczdueUsvYXI5bWNpUHE1bXpzdmJXaGpiQTFHWHIvbitMU21PWUQz?=
 =?utf-8?B?amZaZTQ3RTVpS3lWSjZqUXpISzNnUVZTK25GZ3AzYmx2WHgralNhYnpRa2FO?=
 =?utf-8?B?VFp5Ty9sUks5Ly9KbFZma0JTU1dLb094cmU4Q29ySjI3TW1jMTJkQVRUWEJq?=
 =?utf-8?B?em9uYks5Z2VaZVZIOWFZUG9CaTVEMnYrcnN3Zzd5ZElwNXNOZUZxS1NLWGFm?=
 =?utf-8?B?UE9weWZuVTBWNkRnZWQ2QUdhVGtvT0toUHFlTVQyaTNaZDRBNXpFNUF2c2x4?=
 =?utf-8?B?RGVORHcybXhRbGduQmxRYnd3UjQ0eC9JRUFuSE9NdElScldkNDhGUlRTcDM3?=
 =?utf-8?B?VU05NWtFK3pRV1YrSG9qcUU5RkpRT2VYTTBGWndFU3RlSFE5ODZUSWFLS3BT?=
 =?utf-8?B?d0taRTZnckV1Zi82Tm9DR3BabjY2Q1QzQUc0NndNbVdJOVZQMlF1OWtjMS9N?=
 =?utf-8?B?RFd0WmJXWFkzdXpsMXhQazZTNHZ5Q3A3WURrKzkvcFJuY2NWeDdUMTArRXFO?=
 =?utf-8?B?akUrU3FIbmFOcjU2QnNRQkw2d1J1WEI0WS9hSG5WZ3B6TWFGRmpndWdwMldm?=
 =?utf-8?B?YXJHMy9jNlAxa0tScEcvaGo1OVZ5ZUcyVzk2Vm1mc3ZPcWJ5YXJZaVZTZEtG?=
 =?utf-8?B?UU9MVE51SUpoams3YTF0bG5abGdadGI3alpuQ0FmMTR0U0NqUVd5dldQSExo?=
 =?utf-8?B?dkpHUjBqZzBmOFh1S2xsSDZ5UnVVcFluSHVuUm9Td1BqczkrWnozN2xhMDBm?=
 =?utf-8?B?eEZLdW1PSGk2ejhaN1QzZlNqU2JpYnVhYjhJZFhzWFdjMSt0Sy9LYldZRTF0?=
 =?utf-8?B?bk5CY0NWUmJTakNGR0Z4WEVPcWxiNUlwbVY2UVV0MWlOd2w1QVN5VjYxQTFm?=
 =?utf-8?B?UklsUnUvYVQ3R2F0K1FSWkRVZnFSMlVnbW5BYW5yZGJMRTFDQlczTFoxK2s1?=
 =?utf-8?B?WHN6Q2ZlWDU1WFZ0d2RTTmUwYmd0R1V6YUxUalFBcENvQmY5allUb2RxVUFw?=
 =?utf-8?B?NUE3U3NUdWc5eGFYUHNHM09McEdVOEwreTlmMC9UT2Q4VWw5L2FrVVhRSFZw?=
 =?utf-8?B?WXRLdURZV1ZhT2psUjdoVzNzc0ptamJVdFVsbUdGbHlpUGFpN2psZ3FkbjFI?=
 =?utf-8?B?bGhNSmF2UzFsNnFRcFBidE1mcUZDbDNZNTRxRzM0dUNVUG5tSkJqMjhjQVhG?=
 =?utf-8?B?L25HUzVvNFhTZTVObFpTVVFvQkkrRkNOUVB5UlBFU2Y2K0lkS3pCWDJqQkFS?=
 =?utf-8?B?OXNoUkFPSm5IbWc4MVBQRjA4enJ1VTV4Ym5UQ0pNVGdTa0JyOHp5aXlLSlVD?=
 =?utf-8?B?ZnBGSWdqa3ZXYi9LRHYyalFhRUM5SzhnZ3pJZWFsckJyL1BDdzFDYndLVWVP?=
 =?utf-8?B?SndwNENYQ0ZPdVhZYVRpK2lML3lCVDNkRUVndU9PUDJ2K2VtUkhtYWhUZksx?=
 =?utf-8?B?Y2YvblpMRHcwQUhPa2pBaGFoQnpLb1NRZ3k0bFBrNUkrWjMxbmw1NHBVbmFF?=
 =?utf-8?B?U1RBano4WHRhUDFDRWxSVmVQdDBGamdvZDczZGRjMXdqTjdNOURaeE5LWkk0?=
 =?utf-8?B?YlpWN1VDY2FvZWNrT2xpcEJZdXUwcjNrcldXSk4xR3lxSGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2l1d0d5bExHdkkwMGFJY3ZMajkzaDNIc0ViaEtxMnlQaURRVzEzWVZyN1Rj?=
 =?utf-8?B?QXoxcG1YczBPUFBkNUZ6ZkVsQ0NvTkpXT0xZRytoUU5nT2pJeHJmd0NTcVEx?=
 =?utf-8?B?RWt5aTVxczUrSnM3RDYrcHNjRk9oMkxhN3ZicEtySkhueFpKQzRvRkJXQ2Qz?=
 =?utf-8?B?STlkZEVJbGR3dU5Wc3VoeVFFYzFwKzZNcjV3NWhsdlVVU3BDekI1TG1OQUhE?=
 =?utf-8?B?Sk9yUU1XMWJmSyszMzRXY3pKYUZkY3V6NlZwbmhqYnhudVFNZHd6OVhVakln?=
 =?utf-8?B?T0swcWhzRUxNRzN2Z2Nyd1QzYkZ3VFE1UERYdWJmTGJPbURTQXM2T3NIVXVl?=
 =?utf-8?B?UHd3ZzZxaWdxKzdVODVnMmt3NjEyNExZWUVPeGRsbkhwcUN0RE42RmpYcjRC?=
 =?utf-8?B?UGhGS2JkWEpRSVVSVFJsdXc3WHFtQnI4UDFTSk1QRG5Ra2ZCZE5oT1NJMHNE?=
 =?utf-8?B?QkJoY2J0Ny9WMWdJVGxqOHY5UFRSdkdJVTVkTFdIWEIzd2QwSCtCYlEyNXdO?=
 =?utf-8?B?eUwwbnhhbjZmMERSTWQ1UlpGdURnZHI2MUhSY0p4VWU3L1B3YTJUNWpaRXJ4?=
 =?utf-8?B?enREYlVNa095UXdLSERMenZudzNPZnN1alBLQXJLc0pnaUxFL3Zlb0hwTnJY?=
 =?utf-8?B?REVXK0hkQzlNOEVvRU83L2h4NzRMQ3d3SlNjTEN5RE53U3lWVkVyY1crN1d5?=
 =?utf-8?B?N0tFTnkrS2J3aXNSS09FZlBobHV4UktLKzJwRVA1VlJsWTFxRllQTVgycGF3?=
 =?utf-8?B?R1NBNSsvT3liUDF1cGNORTZDamZla0hMa1Raa1dPWjlzRENnVVYxc3RUUzVR?=
 =?utf-8?B?RnRaNm5PSkwxd2E5aXk1WHlsNk9BdDhlVGFpZGtnb2wxUGJLS0l1MUpnWHc4?=
 =?utf-8?B?UC8wS1NYeHIwSDU0M2FXNmZBNXNMdzRXY2kzWmVjR2J4enhEWEhYNTYvOXIx?=
 =?utf-8?B?b0lJVDcrdXB5cEdleHRRdVBucENya2Y4MnNoNGV5MkRtR3VpYXpTRS9SQ0E2?=
 =?utf-8?B?Y3Y0N0lDaW9CeHl2RTBkSG9INjV2d1lLOS9hY1BTTlZiY1o5azFucVEzdHpV?=
 =?utf-8?B?bGpXdDNUM081VWZXUUROWGZGeWVrbndtNEVtRVhpclF2TUpMeUs2ZTFqdFow?=
 =?utf-8?B?SDJTRTVUN3FTcXNDK0ZyKzBaR212ek1Icmt1b05YNjBNTzdSU1hvTkRKcGs0?=
 =?utf-8?B?WEZZdS93azFDQ3hZbGVXRk5mZ1FIQ3NOMzgxaXI0M0tqYkcwcGNGczljTDdX?=
 =?utf-8?B?V3dUNVI3emMwelUybVRqakR2K29SbkhPU29hMmZiZ01uU3RWREpId1NiaGJo?=
 =?utf-8?B?d2N2NmZHalF2Wm1pUDc0d1RGMlJkeEtvR0xYdGtvLzJPekQxSmMwczk2MjA1?=
 =?utf-8?B?eFlTQndtNXdEdURaMEQwTUpIOUpWTGp1VUFUR3ZVeVdKcDljeDRDWlVsWXcx?=
 =?utf-8?B?WTVKSGxLaEdnWVJ4K29NR2RTRStNU2x0YTliaFdiSkpHOGxuWW0xcEhka3ZG?=
 =?utf-8?B?c21YZnVxcElscjRFaVB6VHV6OW43cXVDeHNDdk5ydlFGZkVFN2h3RU1XZGw0?=
 =?utf-8?B?U25CSlRKaVdZSUVPc213b1ZqOGMveHQzRXhJOVNlYmlhL0hqUFpFSjZYUUlT?=
 =?utf-8?B?RTQ0djhrSXhUYVdycWM1OVhsZk9rRFNsZG85cmdnSmRtZU9BR3ZkNlp2eTNY?=
 =?utf-8?B?aEtoMVBJbCtjUXZCYTBmZ1I0QUhSMU5NcHRRb0UxWGsyeTAya1BNRHpqQUZT?=
 =?utf-8?B?ZEVubjl0aXVtRTFFMDlJdnVvR2NaUk53WkE0Q1U5cTRyQ2xQS0lvMTgwa0Qx?=
 =?utf-8?B?NXhiS1JEclFrRjZ2cWRyaTNqOGNBSGk3dHZRM0RNZk83UzIrbG80aFRFU1BR?=
 =?utf-8?B?em1ENlcyOUhRR25aTmlJTUpaRUphblJvSVR0SE81ZDU5Z0lXZExyOHRRYTQy?=
 =?utf-8?B?OXJyUzhTd3FPYWtiOU5XUlZoa2FzZ3RnMUt6NzRERG9UaEZYY2M4YVJkTFMr?=
 =?utf-8?B?OTRNZGp1NUNUWit3L3d6cEl1b1Mrak9xVGZxc1QrKzhkSExjcDNzWXFsc3lw?=
 =?utf-8?B?dXR1cHdMUWlhVTNrT0lqck5WSmwxT2xhYnczMUJrUWVMN0RNaHcyYlpHYndM?=
 =?utf-8?B?b0tyYkFpaXhLK21zazZ6MjFubHZ5bFhsY1MvYWpUcHlKejZacEtsRnlVNTlF?=
 =?utf-8?B?T0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6f5ed87-a7fd-4898-bbdc-08dcb9b7176b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:40.2333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AFu7gdsi0BLKE8nk1gjdd5QMoknvV50GACoaha8h2xm04WcnjAvSVpQcsBrEQbeoi/OghUTf+XLK82QkAUo1p3MukCoL7iQF1wjz9Jg+k7C14AkrApPmo8dF6R84tnui
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347523; x=1754883523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EQyoHdUxHHf3Cnt34BpqX3Veb/DxgWtbm+l1e4fgEdU=;
 b=KxWCA2N33ehK3sZRs16e2xSLjHNxpiI5uw/qL6tKH4ASTwsw4ftqnobT
 sEqosk/W3fY5yeHZOWH2KhVFRz4XJDAqzdXQWKoeWnfwZ4QQm7A/sss8V
 w//iPBZZEkWXFh3HO+ULCaTcv6BwX6BmR7qdANlD0RUF6rEKy3tySHDfx
 p03lkQlsK5dxUheLjzwAXXSBEmWoijrO2IgIRVOP/cGloATD0J40tH+Ex
 8tOuB6v43jD6qr9m1lm8O+z0vpckBRWxG0yTd2/i7oSLmGL8nKyQSzA8V
 X5Fr/aAIwDMZveHjpE4ZgsdIiKL87YtxFR5ywuygCv4YxW/GgYv4oDm5G
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KxWCA2N3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/7] ice: remove unnecessary
 control queue cmd_buf arrays
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCA2LzddIGljZTogcmVtb3ZlIHVu
bmVjZXNzYXJ5IGNvbnRyb2wgcXVldWUgY21kX2J1ZiBhcnJheXMNCj4NCj4gVGhlIGRyaXZlciBh
bGxvY2F0ZXMgYSBjbWRfYnVmIGFycmF5IGluIGFkZGl0aW9uIHRvIHRoZSBkZXNjX2J1ZiBhcnJh
eS4NCj4gVGhpcyBhcnJheSBzdG9yZXMgYW4gaWNlX3NxX2NkIGNvbW1hbmQgZGV0YWlscyBzdHJ1
Y3R1cmUgZm9yIGVhY2ggZW50cnkgaW4gdGhlIGNvbnRyb2wgcXVldWUgcmluZy4NCj4NCj4gVGhl
IGNvbnRlbnRzIG9mIHRoZSBzdHJ1Y3R1cmUgYXJlIGNvcGllZCBmcm9tIHRoZSB2YWx1ZSBwYXNz
ZWQgaW4gdmlhIGljZV9zcV9zZW5kX2NtZCwgYW5kIGluY2x1ZGUgb25seSBhIHBvaW50ZXIgdG8g
c3RvcmFnZSBmb3IgdGhlIHdyaXRlIGJhY2sgZGVzY3JpcHRvciBjb250ZW50cy4NCj4NCj4gT3Jp
Z2luYWxseSB0aGlzIGFycmF5IHdhcyBpbnRlbmRlZCB0byBzdXBwb3J0IGFzeW5jaHJvbm91cyBj
b21wbGV0aW9uIGluY2x1ZGluZyBmZWF0dXJlcyBzdWNoIGFzIGEgY2FsbGJhY2sgZnVuY3Rpb24u
IFRoaXMgc3VwcG9ydCB3YXMgbmV2ZXIgaW1wbGVtZW50ZWQuIEFsbCB0aGF0IGV4aXN0cyB0b2Rh
eSBpcyBuZWVkbGVzcyBjb3B5aW5nIGFuZCByZXNldHRpbmcgb2YgYSBjbWRfYnVmIGFycmF5IHRo
YXQgaXMgb3RoZXJ3aXNlIGZ1bmN0aW9uYWxseSB1bnVzZWQuDQo+DQo+IFNpbmNlIHdlIGRvIG5v
dCBwbGFuIHRvIGltcGxlbWVudCBhc3luY2hyb25vdXMgY29tcGxldGlvbnMsIGRyb3AgdGhpcyB1
bm5lY2Vzc2FyeSBtZW1vcnkgYW5kIGxvZ2ljLiBUaGlzIHNhdmVzIG1lbW9yeSBmb3IgZWFjaCBj
b250cm9sIHF1ZXVlLCBhbmQgYXZvaWRzIHRoZSBwb2ludGxlc3MgY29weWluZyBhbmQgbWVtc2V0
Lg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVs
LmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbnRyb2xxLmggfCAgMyAtLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
Y29udHJvbHEuYyB8IDI5ICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6
IFB1Y2hhIEhpbWFzZWtoYXIgUmVkZHkgPGhpbWFzZWtoYXJ4LnJlZGR5LnB1Y2hhQGludGVsLmNv
bT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQoNCg0K
