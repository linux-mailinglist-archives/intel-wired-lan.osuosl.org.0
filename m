Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1772397650C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2024 10:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 636CA608B9;
	Thu, 12 Sep 2024 08:59:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tKHPcA1CdFCJ; Thu, 12 Sep 2024 08:59:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACBAF608E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726131544;
	bh=jeQJIikV+pdgS+jQBRkH4Spk76c8jitWK1qx6CPLNHw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ADu3oYfCs4irY4zUm8cZsA1wHd/XpzBq/6tzwH1GC7/XfxymsPx0Eau8TU/KaxNv8
	 bm1CB0zbnGK+MO80N3299cRIwkovFP4oQZToMpNOOzxoHbzTiZLhfX0NK2fOeYJcJv
	 xJJ+m7RNLZQ5VJ+15J7tVUP8NpR3OKON6XQOpyx8fSPhl9gd+JCgiBMoUDa3iZz/pt
	 gnJAZonn09L0JNHdpBKtQqSrz48NNvozf3tSh7G04ly/1NpVZvyqbwimJi9NETF6zR
	 cv8vxZH9bJKan0mF8F7zkGW5lA2/I2MozJlrCG7d++tmcxV8LNNEt9dyKX/f2rHRkv
	 U8LwphX6PD5bQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACBAF608E2;
	Thu, 12 Sep 2024 08:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 913421BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80168608B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TfQ2CBtL85Br for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2024 08:59:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86D72607BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86D72607BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86D72607BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2024 08:59:02 +0000 (UTC)
X-CSE-ConnectionGUID: JqH6XjL8Rdmlv9LC8kOSxQ==
X-CSE-MsgGUID: 8Q1jQxWcSv6aI/ijQbgzaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24794456"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24794456"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 01:59:02 -0700
X-CSE-ConnectionGUID: pkO2lt9jSIG2uq00TJwrcg==
X-CSE-MsgGUID: PQP3bKxTRj6BhxZtgOCunw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67943153"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 01:59:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 01:59:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 01:59:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 01:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dykD3OmSNKoxhUBRkJ8/vvzsELF4EWrZXoEWf6FbSzK5tCvBONy2iq5wCex0PHFjLlyV3NMqxZxBJLeYH45EzwDqvzMyJI1gUxouGj8uI3UKteWk93Z1zaOg7mkumK+Ac8c30t3MzyPuoGm5gIxmu+ZpwQRMfELGlUm3OVJcQMotzjyck5u4+hNU1yrradFAavcHXJvc1DJsenKEOnOSBSWZRqyXavE0leaBO4aouje6XgqDn0vqM2UjHwXFBiA85jrE2dQgqHE/DWeR7mTy7M9dyxTAFllBnE04wVEp6I2bf4yOMjvkU0ryyHEzlU1bFfcTVO5f1E+woo6nrQ/b7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jeQJIikV+pdgS+jQBRkH4Spk76c8jitWK1qx6CPLNHw=;
 b=czrxOXJtLcRyvhL3IgqC4G83C9IBrz7k406z/QJEnMKSYo3KKhofD9HrgiJdkjjCySMYRlae6NZiGbInKZ9USIU1ncbF4Kw7tSDhgxGSf5lD9MDqLAPll7i+frMhDY86YewinBJhB8dMRaC7DpJg3x/N5zz/xw8SAaX7eV5sHMohSXEpcWyZI89oHIQuCW1J21l0yOTvtqMkfngLLpcC7RdyXiSoFSNdll1qUGQe1ACO/XJLArn8JE0c6pjHtlIHui3PB3/KHYgPsYFdpVCTdV3TrEkAqUg3wir519APz+hs6Efdh5R0Ls4LWF0Ga/2iJ9NdxJoTwHLMjXagjQtpWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CH0PR11MB5313.namprd11.prod.outlook.com (2603:10b6:610:bc::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.18; Thu, 12 Sep 2024 08:58:59 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 08:58:58 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll output pin
 configuration
Thread-Index: AQHbA9m7eMbVsGVIGECRWyuj/WzbZbJSHhkAgAG9e9A=
Date: Thu, 12 Sep 2024 08:58:58 +0000
Message-ID: <DM6PR11MB465785D14A74A7591B9755BA9B642@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240910232807.675214-1-arkadiusz.kubalewski@intel.com>
 <963208e7-792e-46fb-aa84-705c91533862@molgen.mpg.de>
In-Reply-To: <963208e7-792e-46fb-aa84-705c91533862@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CH0PR11MB5313:EE_
x-ms-office365-filtering-correlation-id: 826148ba-42f4-456c-4cd6-08dcd30923a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WUN2NjBTZWowU3RBNDNoTEx0RWVwakFCVDE3RzRGZS84TTNPTlpiSEhOR2dp?=
 =?utf-8?B?TDFjVTRZMmxRbXdzb2MxYmJWWnpqQlFtUlM4ZjNuc3ZacWVVSTVHbkxOai9Z?=
 =?utf-8?B?d3dQYnJWeFh5K2xtc0RvU0RmYStRMS9UVXNLUi9SZE9laFlhUkRKeUNLelpm?=
 =?utf-8?B?ZnpmUndqT0pzVzdkRzEyNzFTZGZrTmRHQXhKSml6VWxsaWdlNHZEVGo5TUFq?=
 =?utf-8?B?a3NQTVlObXZJS3RxbzlleHp5clJ5QjYxRnJDM1VUZ1ZHaUFOOUNnOUp1dEto?=
 =?utf-8?B?WnhnakxaNm5VeVpqQ3VNajR3YjZJMnN0MkNHSUdDNEwrck15S2FkSTFRZzcy?=
 =?utf-8?B?bVh3b1NCY1BDYlU4bjRiampaTDZKbU5ybStMNkEyWlVLdDJmUFlsb2Y4RDFI?=
 =?utf-8?B?YlREYk1LM01yTnJXZXpKeXdKMFE5d3JvT0NkNHFtTjFpdXd1OWJUS1JvUnpx?=
 =?utf-8?B?bllQOUh4TDc4bDRnUkJGSHFQYmRneHEyendPbkprTkFDVDBaZ25tNm5YS25m?=
 =?utf-8?B?U2pCb3A5QnV4ekpWVktqRnJ6bnRLWkZ5Sit6ekZjZmdmSEJBY0VNUWl1eW5G?=
 =?utf-8?B?QUdNbEIxMFdmaXFmQVNWMU11ckN4eDVITmY5WTFwQmRVRG1XYnl1djdkUm85?=
 =?utf-8?B?Qi9sOXVGS2E0WGprc3NjeTdmNStXdW9mUWRNczdqdHhaamlQUWhhRGNYa1NO?=
 =?utf-8?B?ZDVnR0ZOVUVaWlFlV0I5NjMvUmM1SU5vYlJvSVp3VXR3ZmwyaEFKK2p3eUhE?=
 =?utf-8?B?MlJoS2hHRENZeGd3b3VFMGxvWk1TOVFyaGZvZjZQZElWS2RTVlJWUk53S1Zv?=
 =?utf-8?B?dTAvejdDWnpuSDlCbUhWNHNvQ3M5VmFyS0g4a0NtWnJlSDZaMU1JVDBVTVht?=
 =?utf-8?B?UGVHamFDZDgzV09pdVdFT0dNck9ldUVZc1lKL3MwekJTbjV2N3dHUUdmbi93?=
 =?utf-8?B?dHdwZFdDZTRyeGpCcVlwTWM5blhWREZ2Nno0Wm0vcnY0R2VMOGhpQm90VTg0?=
 =?utf-8?B?SlVoc0ROTGZEaVI1QkNSOS9GdStZU0w5ZVBadzVCUnk0UVZXU0xBOXZmY1k0?=
 =?utf-8?B?RnNsZVpTR3RzaWJDRTJvNlN0L3dHaHdITHNJc1dvTExXMW5jN0dXdzZ4dXJo?=
 =?utf-8?B?ZUFhQldCZWJSbzY1MGFzSzJXK2ZsTmZFR1hkOUlRS21FekV6NGFFY0dYUllM?=
 =?utf-8?B?dmVoYVdzSnMwZVlVd3lwbnZMZDFSV1BvRTVya1pYbDRwT1l3dFFaMDR3ZDNV?=
 =?utf-8?B?T0w2MGxJZUJBakpuZ25tWENHNGV1ZnhBNDdsenZsSWhDTXE3bnd6a1lPWUIx?=
 =?utf-8?B?YlFqdU9vUThvT21vMmRBamJxenRhV2tlTGxGekdRdnF3SWlDVGZCcmE5WFd2?=
 =?utf-8?B?anJycVRYMGVnUFhHVTBOUEp1bEx6VXc5QlVYOXJwSWlsOElJVmJPNkJTQWc3?=
 =?utf-8?B?MUlKNWtEUkJGYlkxaGF3TXV1UTNKRVkzOG54OXU5c1ZHN2toWnZYR2IwWFBj?=
 =?utf-8?B?SHBuWFdtM3h5R200R1F3ODFIdHdnVzBpQ3FiNjB6YVNmUjNaaHVHSDVwSHl0?=
 =?utf-8?B?dXprTFFNT1BacnNqakkzTkxNUWVrMmtBUUlaNjlqVEdzVjl5REdnbGsxb2ZN?=
 =?utf-8?B?SzIxNk1vZjhUSmFQLzdWc3lHcERWR1YxWjJ4ZVB2NE5RdVc5cGlFWm1kNld2?=
 =?utf-8?B?NUE2YzNGYzVvTjNNRStVcWhrSjFLTkhDK2wzVW5pems5TXpvdElnSXlkOWtZ?=
 =?utf-8?B?VGNDc2tIUHAzZDBZdzF2SEZEM21LaFp5YUZUd0dpdWlRd2Z2MjdCcHVZWlE3?=
 =?utf-8?B?OWhKODhmUkNOT2JQMjBVSmEvOERQTVc1amlQL1F3bHhFMy8vRXNCYjNSYWsv?=
 =?utf-8?B?d3BxcTJ0bHh4L1VFckY4dUdDbzhSNkZ5eXh0L0xpYkl2dWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTFSYjIxV28zZ3JQMzgvV1VHUVNHTm9rY0t6eFM5NnhBajJ6aU9nRjlwNTJo?=
 =?utf-8?B?bEM4WTNMaE5HR1pPaDdhZEJoVDgyaFNTRDk2SkZ4MVpGV3pQbGhLRU1YZElZ?=
 =?utf-8?B?LzV3aHltaDdHODFobStyQm1CR3JtLys5b0dFMDcvYklhOHk3Mmd2SjZwelNz?=
 =?utf-8?B?Z2xEZmZWN0tKQTlyYWpFekhaeVZFK3RJbVBiL0I3eGxXLzZYTm8rODd0MVNN?=
 =?utf-8?B?Q1hZSERjRGJiNnBuUjQ1VlRaNE5QSWFJWVZxOTRqc1Rpc0Vwdm5HN1F1UXIx?=
 =?utf-8?B?ZmY1T0dBeTlCMERzK21nblhXUEFGSVRlZGZlWTVhdVlXMitrNHZjOFJaZE16?=
 =?utf-8?B?K0MyV0hMVkFwd1RFOS9UQkh2eHFpY0ZLZmlqNUdQOFMwdmVrM1lKZExXVXFr?=
 =?utf-8?B?SnhtRy9leWVZYVNyWWdFR1A2ck9BSHVJek5tWVVIZjVIRmUyTlJRbjhYMUkx?=
 =?utf-8?B?WkRSZTRzd0cyT0NKSFdCSXRVQlg4MkZpMEZWc3RJTmkwODJZT1pIVzZ4Q0Zy?=
 =?utf-8?B?c2ZBRUlqcVNRMFM5enFPTEtiejdXeGpYcXhzUjJxSzZndGRqa0dzejQwYjE1?=
 =?utf-8?B?YXFONEdVamw2dXdwZDlEVFM0ZzRHQ3FYQ3Znc1lHSHdlRHpraERnRUFFK2pY?=
 =?utf-8?B?RDNya016QmxicTZ0dEU3a0xFckVnek5KN2tOVlhlL0x2aUliNVJwMWp4Q1Aw?=
 =?utf-8?B?Q0t2L2F1UXNkcmE0RzNIQVZGUE5zQVdibE1QR3BWNEpzOXIxbE13WTVJVjg4?=
 =?utf-8?B?WXFTSC9SUlN1dzAwSWthK2NMdTZSM284djZmZm9aYzBUa3RKTC8wclgxMFdC?=
 =?utf-8?B?cHh2ZG56dDBoL2NpbmRGbUxCUHgzMU01bkxTcThwSmZzSWtRRnp3WEVzODQr?=
 =?utf-8?B?OVBCR1BiUWlWRmlMa3ppUGtrZkd4ZVl3SGNaelNvRjY2V3kyZGxIUEppLzNS?=
 =?utf-8?B?WDd1dSs2WHRtbHp5QmR6YW5LSit2VnlGSlFxTkxoNmJlVmNvLzJnOE1LTTJN?=
 =?utf-8?B?TFlKVkY5ZnZEQURPVTE5aHJlTHJ1UWh1RFNBcExlenNIZFJoVEtpK2FvQ3FO?=
 =?utf-8?B?UjZDS3V2S0F0Qnp3Z01xYTE5T1FMNVBtMHpGUWVuS3JIRFNQVWtUQTFmemJi?=
 =?utf-8?B?cTl3RUN1b2dYVTlWM0o0OFRzbkNxczB0RURCdXJCWkV2dlBCbFNneU83QVYv?=
 =?utf-8?B?ODlkM3doUVBxN29WM0lTMTExTFg0U0V3b2cxS055MUZRcVlKL2trS0VRR3p6?=
 =?utf-8?B?NUl5ZnV2UnJNUnlORGhhRW5pZkNFb09lQk5oNHZIKytCN252ajR1UHJLTlAx?=
 =?utf-8?B?ckduQ1FKRVRJYzZSaitmR3FFR0t6Um1ha1dwNUtwY2N4WEFVeGRkZXdZckd2?=
 =?utf-8?B?UzQrZ0xGSFZ4QnpSMEcyTUQ5aU5HRm40cGYwTklYQkRUOHdmcElJd2pybXFE?=
 =?utf-8?B?dEQrVXU2K0EzYTNSQzFoVjQyZzJwNDJ1b05HYjNyZGRxd1BTZlNIT1FMMlNq?=
 =?utf-8?B?S2FCTFNkcDRLbEthRGJIa2pPcFB6M1dqblZwODAxS3Nwc1Zhc1N6emhPQUxm?=
 =?utf-8?B?SmJYRHF0S0tKWjFWYnJUOWJVMGlmRWx1bTdnNUtqdGdhV0NGV09YU0pJZDhl?=
 =?utf-8?B?VDVGYWtpdFdNN3RuNGkrR0ZrRUxyWDJBSkZwMVJtVFFzcnhvQUcrNlV0NTAx?=
 =?utf-8?B?ekY2NHFMRWVBL0Q4UERmbjVEUjRnTzkvZWxKdm90Y0pRQ0VwaDF2L243ZU1l?=
 =?utf-8?B?b0ZhUGZwTG5sV1BVN0NaeDJTbU41NmdQNTYvS0VWWHQ4Zk5KQm1mRjM4S2tq?=
 =?utf-8?B?OG1CS05TazE4N0hOMzFadTBSWFc3MTlabmF5NSt1cVNMb1hmMi9vMms5YURU?=
 =?utf-8?B?enJKbkRwY2pGV0dsTlovLzJPd3Z1akRQR3hFTW9lRTgvYXM3R1FuckF1TGRw?=
 =?utf-8?B?Y09OU2hPbnhQTkJmOVBFNzVKSkpqQUxxeXVOdUtnQnVPS21jd2ErakJ5VjQx?=
 =?utf-8?B?dTlwKzhkNjBWUk01SnZnL2xyeFFCd083VDUraW5NVzJNaVVKZWROcVBsQklx?=
 =?utf-8?B?d21OR0NKcVFpRHdkeERZeXBiSm1MeVpoa1MzQlpWd0NjTkZ0KzlESnNlRTFE?=
 =?utf-8?B?VmIrNVd3U3NDd00reHU0dWpUd1VHc2NVQkFFSDVGc1NHTHlUN1UrMXNQeVI4?=
 =?utf-8?B?Vnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 826148ba-42f4-456c-4cd6-08dcd30923a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 08:58:58.5704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q9CYgweJg26hlWQhrzhC8oy6u7mdSebi28oU1GvA7QNEpuYBiKshSPGvWexiyvqpXd7TxKx3JMpsr1iKKuwirT/BUYTeiu4b+iP6y3FXaKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5313
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726131543; x=1757667543;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jeQJIikV+pdgS+jQBRkH4Spk76c8jitWK1qx6CPLNHw=;
 b=XLYLSCgSsE8YriFl1P8qXPJlHBBmzVKDF0I6jXJ7Ql+HVAFDbG4nRw4Y
 K2GBcLZjEE8kd3ek+Me0b1C0ByzFqFEnOCzQKYWXl2l0Pvt0AR2eHwYCa
 omItOvr7t1ZgBvOJMyR7x+pUTKbfmm72F3d/c++hRt+LDCPwArRTA5ylu
 7h2BrRuB7egbPMiWmj4RGdajBrxDV2hJJTHYxfzt9LsgoYV3wrouyd0Jb
 10UY5nuuXTaWI5niG3k9bOMz/sPFMF54E5IDgRvF4UXYNqP+xI/NHvCO+
 Vq7n34pVuqacXy1W/ATIFDqfz8KwMQCKY+rqcebKpe2byj/xPCRY8svA4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XLYLSCgS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix dpll output pin
 configuration
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+U2VudDogV2VkbmVz
ZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMjQgODoyMiBBTQ0KPg0KPkRlYXIgQXJrYWRpdXN6LA0KPg0K
Pg0KPlRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4gSXTigJlkIGJlIGdyZWF0IGlmIHlvdSBtYWRl
IHRoZSBzdW1tYXJ5IG1vcmUNCj5leHBsaWNpdC4gRm9yIGV4YW1wbGU6DQo+DQo+aWNlOiBEaXNh
bGxvdyBEUExMX1BJTl9TVEFURV9TRUxFQ1RBQkxFIGZvciBkcGxsIG91dHB1dCBwaW5zDQo+DQo+
QW0gMTEuMDkuMjQgdW0gMDE6Mjggc2NocmllYiBBcmthZGl1c3ogS3ViYWxld3NraToNCj4+IEN1
cnJlbnRseSB0aGUgdXNlciBtYXkgcmVxdWVzdCBEUExMX1BJTl9TVEFURV9TRUxFQ1RBQkxFIGZv
ciBhbiBvdXRwdXQNCj4+IHBpbiwgYW5kIHRoaXMgd291bGQgYWN0dWFsbHkgc2V0IHRoZSBESVND
T05ORUNURUQgc3RhdGUgaW5zdGVhZC4NCj4+IEl0IGRvZXNuJ3QgbWFrZSBhbnkgc2Vuc2UuIFNF
TEVDVEFCTEUgaXMgdmFsaWQgb25seSBpbiBjYXNlIG9mIGlucHV0IHBpbnMNCj4NCj5JdOKAmWQg
YmUgZ3JlYXQgaWYgeW91IGFkZGVkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMuDQo+
DQo+PiAob24gQVVUT01BVElDIHR5cGUgZHBsbCksIHdoZXJlIGRwbGwgaXRzZWxmIHdvdWxkIHNl
bGVjdCBiZXN0IHZhbGlkIGlucHV0Lg0KPj4gRm9yIHRoZSBvdXRwdXQgcGluIG9ubHkgQ09OTkVD
VEVEL0RJU0NPTk5FQ1RFRCBhcmUgZXhwZWN0ZWQuDQo+Pg0KPj4gRml4ZXM6IGQ3OTk5ZjVlYTY0
YiAoImljZTogaW1wbGVtZW50IGRwbGwgaW50ZXJmYWNlIHRvIGNvbnRyb2wgY2d1IikNCj4+IFJl
dmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVs
LmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3ou
a3ViYWxld3NraUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9kcGxsLmMgfCAyICsrDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9kcGxsLmMNCj5iL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBs
bC5jDQo+PiBpbmRleCBlOTJiZTZmMTMwYTMuLjNkMjBjM2IyMzJhYSAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0KPj4gQEAgLTY1MSw2ICs2NTEs
OCBAQCBpY2VfZHBsbF9vdXRwdXRfc3RhdGVfc2V0KGNvbnN0IHN0cnVjdCBkcGxsX3BpbiAqcGlu
LA0KPnZvaWQgKnBpbl9wcml2LA0KPj4gICAJc3RydWN0IGljZV9kcGxsX3BpbiAqcCA9IHBpbl9w
cml2Ow0KPj4gICAJc3RydWN0IGljZV9kcGxsICpkID0gZHBsbF9wcml2Ow0KPj4NCj4+ICsJaWYg
KHN0YXRlID09IERQTExfUElOX1NUQVRFX1NFTEVDVEFCTEUpDQo+PiArCQlyZXR1cm4gLUVJTlZB
TDsNCj4+ICAgCWlmICghZW5hYmxlICYmIHAtPnN0YXRlW2QtPmRwbGxfaWR4XSA9PSBEUExMX1BJ
Tl9TVEFURV9ESVNDT05ORUNURUQpDQo+PiAgIAkJcmV0dXJuIDA7DQo+Pg0KPg0KPldpdGggdGhl
IGFib3ZlIGFkZHJlc3NlZDoNCj4NCj5SZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxA
bW9sZ2VuLm1wZy5kZT4NCj4NCg0KR3JlZXRpbmdzIFBhdWwsDQoNClN1cmUsIGZpeGVkIGJvdGgg
YXMgc3VnZ2VzdGVkIGluIHYyLg0KDQpUaGFuayB5b3UgZm9yIHlvdXIgcmV2aWV3IQ0KQXJrYWRp
dXN6DQoNCj4NCj5LaW5kIHJlZ2FyZHMsDQo+DQo+UGF1bA0K
