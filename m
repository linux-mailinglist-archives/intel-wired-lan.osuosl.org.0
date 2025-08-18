Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AF9B2ADF6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 18:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86BB5605F9;
	Mon, 18 Aug 2025 16:21:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uV1yoQAaw_0j; Mon, 18 Aug 2025 16:21:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5EBB605FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755534113;
	bh=JSaBEoC0aNovzbGxPEPLjadLh6nbjksPclMxWaZq8fk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LKKqlQ+msZCV8QBWUrHGYpuDnqyOmf3l6jD330mMWWha4MovX47RqUTez5bpXPeJO
	 ATmaBJH+pma/u+VU0uO4/KPMNIlWf5AG9R6Vcru7jw/m9kUm1+8XGHlzLne9ZZubgF
	 AwZcaTz8T2R9hTx1zGE2crc96mDpPLLcplizGEl1a5VBexjVoSZJdPVsrTvFMOggu1
	 XpZn+JkcXcX/jLSzEQSC8ZODzbdGSh5Tg6cmphiWzpyCMqhXgBiKwo9rtV+XcVNabn
	 UeuLV6v0Ri9dldXucMcNhdWxsxWHSrps/Zt0TuR8+tzvselruSCzCbzYtAIGegJM0B
	 4m529ojx+KTUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5EBB605FA;
	Mon, 18 Aug 2025 16:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C8B3196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82C52809AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXlNfo1ZdB0p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 16:21:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 94D2D809AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D2D809AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94D2D809AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:50 +0000 (UTC)
X-CSE-ConnectionGUID: 0ryeDi8BTTS8iEC8wcUmMw==
X-CSE-MsgGUID: c54L9JTwTY2wE7/5T4stXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68028477"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68028477"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:21:49 -0700
X-CSE-ConnectionGUID: F3UefE5aQ0OmZj3vUA9vHQ==
X-CSE-MsgGUID: hCKAMoW1TF64KLCI2fCWuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168419349"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:21:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:21:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 09:21:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.43)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:21:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oNKdkJC6cXACmItSHNb140G9qOJvbobYhsjysaWagyEYQkyH8/+1qWtPVFLSwDoZIP13p/WujHA+rkNYyS9UtYB0tlqR6SYcnhb6640dFbVPL9VYz/x2UVjgEmqizu/GSUQaqdla9oK8KbE21RH5rykjItAAGRdUbOmXlvFHzYhT6aq1WkKHcdz4WtygENdZNrEiqvQlsDuzIx2wAB4nwCvYynWXUbBskN7lAPLgy/gmknGmB0WSUr5eVUY+UcxvQ4j9vjk0jtSQwvo/oTk32vIrjMzXGOBOhuYBTjkPkBzmdH3IaXzd2axH3M3oXXESGW20k0fqMdjes2377fFk8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JSaBEoC0aNovzbGxPEPLjadLh6nbjksPclMxWaZq8fk=;
 b=qqYYnn89l96EU6zfeKLzGctZaKB8uV+r2HTiMf2y6+UPchQXZgbku/TEVMRWrgtIjEB7qr6Katrl3QbJwDY+OgbiCeLakPTg+T2goIOTT3Hv/XErV9XcdEiO9oCFKFp5ehOxkhrw9SNqJJnsBJp0FOMfD1swSyGnoW+OlRhhOLVYaicGStZFPH9EzbtHvgKLoD6eXN3mKVVIQPNHNwT3LnaqihMRrIb/AAKzVukQGJEBpIVnTr/oij4SAgBsuz997sYjA8b0CAKIUqyIZfPVV7Z3os5FWs7+u6TrigdN/jzuhwIlE7C5yrf7ew7EehCwz8I6iJI7ha8zWqQP8fDYRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4689.namprd11.prod.outlook.com (2603:10b6:5:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 16:21:46 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 16:21:46 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Grinberg, Vitaly"
 <vgrinber@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix double-call to
 ice_deinit_hw() during probe failure
Thread-Index: AQHb9zwEYUdAyRE1ZEaRaSHJvI10LbRomk9Q
Date: Mon, 18 Aug 2025 16:21:45 +0000
Message-ID: <IA1PR11MB6241800D4B6DA0F4BC99DF1D8B31A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
In-Reply-To: <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4689:EE_
x-ms-office365-filtering-correlation-id: 27d50f62-3ec4-468e-def7-08ddde73538b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?emRGMmVVQThINmdJZnFBdExUS1V3bkdNU1R5TklzckpQYmlpRUt4Z1NqekJB?=
 =?utf-8?B?RHMyOFRseGxFVGQ3ZlhUU3FySVFVRDNVK0NaeGRudlNJWUpURWJPTkNYUWJk?=
 =?utf-8?B?NnVQdDdET2tCcm1DZjVMTGFxcFdYS0xtdFdYOE1ZWlhCL2dLZ2pFSUhtZW9E?=
 =?utf-8?B?TXVjWnpnOWxsTlpaSTJPRGJRVENmYWhqTzN1THlJNWhtL204OG1YNytBTW5o?=
 =?utf-8?B?Y0lhK2F2WWtsU0hjc1M0a0VsM2tLQ2d1a1VjZ3N2d3E2VGZrYThyVGQ1Slcy?=
 =?utf-8?B?bStpem15Tk9ob3gyZjBPT0s4RU9RYjB6K2VOaFI1ZzhmRVpwN0dhRHNxdWJ0?=
 =?utf-8?B?aUp0cmU4Z1N2Y2ZOMXdNeE0vaTF0ZHl1TkJCcmtZVm5hOTBrenlnVzlBbXdB?=
 =?utf-8?B?cFd1RndwWTY4R1d0Y0x5eWk5b1RRMEY2a2l3N3pvUi9FWnA2VjFyb29COWUx?=
 =?utf-8?B?U2U1NWJMaWxUdVRCT2ViRXd2Z0x1aWJkSmIvNUNPMGpTZFQ1V3ZtL3RsVGND?=
 =?utf-8?B?eHBON3R0ZkxpclBnMWNkSEtvY280RG5obzhOTmpYTXlCY0JBRzIxOEFaNVJT?=
 =?utf-8?B?dHFxVE5YZ0syK1hBYXlpbmtWZUJKbU5qNDRxUDMvRGZNRUsrU1ByekZ5azNM?=
 =?utf-8?B?emVIQ0l2V29FNjZ3d0NTZ0NFUFNVQW1CaXQ3RFNNd0MyL3k2YXZmQ0VKMGdT?=
 =?utf-8?B?UWlmd2NWWWN4cm03U2pEeEF3OXNuZGt3dGJVTWlxdktVZi9yR0F2b0REWHhE?=
 =?utf-8?B?WGozVHg1QVJJSnhCbXI4ZkVyQUtZeGVoVlozYmJYcTk0N0VKZytCK2paOFBB?=
 =?utf-8?B?Ty9nYzFJZWMyRzU0R1FoL0h6aXJSZHFIQ1g0UVJDR1IrTmVxam5KUUpkNXNS?=
 =?utf-8?B?Z0x3UzNNa0Z3TWxiQWlBWWg2U0JiOEFMdjFJbTJhQXJMYmV2NGVtekk3YjVt?=
 =?utf-8?B?QlZQTzE5T0ZCTXUxMmNZckZ1QWZnakZSRmRpSGZCZjhPQTZySzVETHducHVo?=
 =?utf-8?B?bFdUdE5vS3FJQVFFZWxqbCtySzh0V0VhMTU1RDNTSlNoSE9Kb3VJalNaQ0Mw?=
 =?utf-8?B?TG5QTHd5bmFyb2M1TVIrc3lrM1NPcUNidWJmbVNlTWF4YjIzcVBuajRuclZ2?=
 =?utf-8?B?SHVCSVJRdjZpOWVFV0lKNG5CVGZDQ2ljVHphQlArU0tUMU5OMjYxMHdtekF0?=
 =?utf-8?B?TjJLYmRGWGZ2LzR3S2N6bUdldjlzNlVEVzRRQVBXR1dLL0FsNXBJNXpvMEhh?=
 =?utf-8?B?V0I1enFJRWE5Y1I5d3NsZWFOK3NyMVQrNml5NVhkRktFd2IzTTZUWUNVZzFE?=
 =?utf-8?B?TTdKYnBvVDUvNnVackViUmFtUlp3c016MlplcDNwcFVyRndmeG9tdTdJa3BB?=
 =?utf-8?B?b3FIVUpkRUJkTUxJS0kxd0h1b2loazhMaENMejYvSk12b3BvMTI1aWQ1UWRE?=
 =?utf-8?B?Z3hMbzhHcmROY25TajB5MFVMQnRmNkpIL2FSUWwwNlJZSUlwVnVBVnliWTdO?=
 =?utf-8?B?aGwvc3NnTCtrV2JmVG9ETnNYQXcrdXFLTGE4cHJCYk1xVm5meVhtMDZPMEtp?=
 =?utf-8?B?dEJleTVhSUxKeFppenh6ZjNWd1BoVXNWMjJCRlVxdkgrYVV1bGkwL0xseVox?=
 =?utf-8?B?OXhFbzlZWCtiTWdUVytSMDExbGFlWlpKT3pNbng0YW5lRjZrSjhjdFVDWktk?=
 =?utf-8?B?MlpvbVBWRm8wSWZoZE1kc1ZobGpNbXp2M3F6VW1rdGI5UDc1eEQ3K3RhSzRj?=
 =?utf-8?B?UzBjZWtwdXFTTUR3cyt0aUIyYmM2RlpaVFFzOGlHRGQrZ25mcmlvUG55Y3lV?=
 =?utf-8?B?Z2pnZTdLRExnU09qbThCT1JMd3JoNTJPZWhOK2ZKYjZER2t2aEMwcERPeTc2?=
 =?utf-8?B?YjVtMHNEMC8wTS9ISzI5bmpZajFmZ2dxWHlSMThoNDNINjdNQ3FtVjVQd20v?=
 =?utf-8?B?ZjM2QUo5L0xpZWxwRUpnK3lHTldCblVpTWg4VDNIbHIxK1dRTE9HT0RxYjdx?=
 =?utf-8?Q?K/rbyVPX9wDIf3bg4RySpM6e2sMEzg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEpyQlJkaHJtQm9hRlEzd0RlT0ZER3RjK1RVcXFNcWFIOFRqaW1peFQ1RUZP?=
 =?utf-8?B?d3Q0a29YZ1lIWlhqYXVkdHFyTDZscmsrM3lRaWVNUU1LeFNsTlExd1NFUUZP?=
 =?utf-8?B?V3FDV2RseEZLMGpIZFJ0QjBUcmJxYndHMk44ZDdtMGFydzd4WGEvQXNyOE5z?=
 =?utf-8?B?a3lVRlI3ZlMxaWNtZldxb2pwTW5YMWR0MXp1TTZ2cFc3eFRWYXhGK0VraTNE?=
 =?utf-8?B?WXgzbjZHbkxWKzlYWEtGRG1qMFRNVU45STFXRkFPdUlISHdxWWtwYXhNMEtR?=
 =?utf-8?B?eXhJQlBWTjVLK1ZUQXZOWUVubElBQURkVDFISko4V2F4aTRwRHJjTW81R3dP?=
 =?utf-8?B?RUtzMzNlWjV1blEvSGdTQTdnY2Z3dTRGRjIzNHdjZDNBU0V6NzY2SWM3eW1k?=
 =?utf-8?B?Ukw0NmgyQnc1R2VoY1RoTjU3Mkt4dEJHS3BXSzZvTWtMUVB0c2NqNSs3aUxl?=
 =?utf-8?B?YkxpSFEzYWVlMWhVWW15NExITkwzUnJhK01WRDhCY3loczFZYzVsc0ZSdDhE?=
 =?utf-8?B?WFpGYzNCUnp4Ry9rUzAzMEdHTEtBZms3ckRId2x1TXdUcHFUZkJKaFc3U1Jj?=
 =?utf-8?B?TE9lN0RlTDJhMnlhYm9maGpDQVQxY1VzcWU4UzJUZFZoL3l0SkJaanl0NENn?=
 =?utf-8?B?Tzh0Z1hyL1FxN2NxS3dUUTlINCsyZEJ6NmVObjhvUkNLWVF3cUFCaXB3VThr?=
 =?utf-8?B?ZGtzNzVPODhQZUJRcUxVNlFGS054SmIrVFBNaE83THZBclhDQnplODBiei9j?=
 =?utf-8?B?OGhLbnIxbHh4T2lLZitSYjBIK2I4WUV0b2swMGJ0QU9MV003eGNhcHRJNkJP?=
 =?utf-8?B?Y0xOS3NMOXJ2QWV1VWQ0aWc3ZXpiZ0tmVitzQzZoUnNuMGxnbFA0Q2dLMGh1?=
 =?utf-8?B?UXNuY3lkNkw1VXpCZzBuOEpTNGxrQjNUcTZDQUlzcmtoQ1hXeFJyT0t6cEpv?=
 =?utf-8?B?Y0o5YjFMLzhlWVZSY3ZyaHJvSWhkcFFMRFVKRGI4V3JxN0J6TmU5MEx3ejBa?=
 =?utf-8?B?MUVPR2VwL2huTkJuVnpWWDZDNW91MDlvcnhwWGJTOXhDRkZVSXk4d29KUjZq?=
 =?utf-8?B?UXVRbVpOTFVBZDZlY2J6U2taVVZhZTBsM3YrNitSZWkyNWJocTNlSGMvQWtm?=
 =?utf-8?B?NjhaTDcyeUR5NmxZWXBjV25TdjQzR0tkVlRhcCtMVXZvVmRhcW9UWStCc0pB?=
 =?utf-8?B?YzYwTkZwRU1mdUQ5ZklSLzAyNGc0bDVCai9hRFgweWJsSkxjek9YZEpvdHYw?=
 =?utf-8?B?aWdHZjV3OERwTEd1alg5NUFrcXJQdENXeXpPazhLamtNaWJVVnkvR3VFS3lw?=
 =?utf-8?B?T0wrS2pjM1pmenFoaXUyVU5WRUVHTWRVTmRKczN1cldXWU1RbjVMSiswdHVD?=
 =?utf-8?B?SmZIaUdWRmxkRmZYeU9hL2MxSlFCczRlT1lZSlRvMERnS0p5eVVwdmFGZE9L?=
 =?utf-8?B?eUdRRDVZYnlpZnNtMGhaL01QM1NKT3IwS3k5WkpVZVdSUFc4STc3R2lHTUYv?=
 =?utf-8?B?TmJ4dXlFMm55VUxoR1dKOEVBZVVOZDR0WFR1M3JBcEhtcWE5b0Q1cjAxeVBa?=
 =?utf-8?B?SDIvKy9sMi93NndxT0E2czJlajZMU21Ydk04aFI2Rm8zK003UTFLNmpzUVNR?=
 =?utf-8?B?Nkg3MFNuMGduS2JUWW5vUklmVm5SN0dCcTQ4YXIxU1h6eUYyY0hvWFllZFhq?=
 =?utf-8?B?VFJhUitUdkc1Z2ZnYnJTRGVxVVZzd3ZWclhGNUxlMTYrcy9tU2REVk1BNE5W?=
 =?utf-8?B?U2Z2cm4rV0sxK1BMVzd6dlRERkRIb3BmMGVnWCtFRittS1NVaDh3Wk1ScDND?=
 =?utf-8?B?dW5NOUQ4bkVwNUtrWTBQaHhhM3VSUVE4VWUzUzNhRG5hTHg1dHdnTWxzbEN2?=
 =?utf-8?B?WDkxbkFpUWIxVGtybHhGOWhUcUtVV2R3SVlKMXFJK0g1MU43SGVEcmRSNkVD?=
 =?utf-8?B?cnoyalBrZGE5MW9ENFM2NWlXK2JsMS9ONFR4V2pEVFgydHBudnR0WTRaUTBy?=
 =?utf-8?B?Zml6ZHZPTzlKMktRVURhL0NVb0pldzVDelBMQmNCL2hyRU1MRUxnbXAwV1pV?=
 =?utf-8?B?dWNocGlQT2lyQ2x4bFZmeW56c1JkZEFpZGxrTVhKeTcxRFBmU1hZaEVBS2lH?=
 =?utf-8?Q?kyjrtUIdxrLmGuo+brzg9ViUs?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d50f62-3ec4-468e-def7-08ddde73538b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 16:21:46.0184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d7qsZA5mtcMuyk4Cr7MI/e6asGkPaX6mOIIV81HxIckRgoNna6xylfLYcf2dvU4GDMntBrljT6n83ypBeGy5Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4689
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755534110; x=1787070110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JSaBEoC0aNovzbGxPEPLjadLh6nbjksPclMxWaZq8fk=;
 b=dooga92VV3YU9iSfdFzegblAp3k1zixiDMoQsS0tDqI23kLd2zUju5v9
 YEK9LxXRpLHsqsp0YYWhTbH/99N/5wSOo0sCl0c8MFlE7ayE6yVle4Jj7
 PT2pJsM0wL/FF34Bs9bpuualnkgGELkMDJvtVPBayt0qa0qcbN4KqhbmY
 7uGZeHosimj+mrucJG69FoLhHEUPf8qAQK7I8MMbHqUyjwiddn6z7O2yO
 RUxF58jDeCFZGouPIRrHwi/ZUSjN9pSsTcIQsX83WsheJKAy0GZuNAYXe
 zr9vsDFm79l8TfFPQYd/b5flibkunNsnUKic8lECsq1+pGnE9+qFDrI6L
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dooga92V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix double-call to
 ice_deinit_hw() during probe failure
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTcgSnVseSAyMDI1IDIyOjI3DQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxl
ckBpbnRlbC5jb20+OyBHcmluYmVyZywgVml0YWx5IDx2Z3JpbmJlckByZWRoYXQuY29tPjsgbmV0
ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
aXdsLW5ldCAxLzJdIGljZTogZml4IGRvdWJsZS1jYWxsIHRvIGljZV9kZWluaXRfaHcoKSBkdXJp
bmcgcHJvYmUgZmFpbHVyZQ0KPg0KPiBUaGUgZm9sbG93aW5nIChhbmQgc2ltaWxhcikgS0ZFTkNF
IGJ1Z3MgaGF2ZSByZWNlbnRseSBiZWVuIGZvdW5kIG9jY3VycmluZyBkdXJpbmcgY2VydGFpbiBl
cnJvciBmbG93cyBvZiB0aGUgaWNlX3Byb2JlKCkgZnVuY3Rpb246DQo+DQo+IGtlcm5lbDogPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09DQo+IGtlcm5lbDogQlVHOiBLRkVOQ0U6IHVzZS1hZnRlci1mcmVlIHJlYWQgaW4gaWNl
X2NsZWFudXBfZmx0cl9tZ210X3N0cnVjdCsweDFkDQo+IGtlcm5lbDogVXNlLWFmdGVyLWZyZWUg
cmVhZCBhdCAweDAwMDAwMDAwZTcyZmU1ZWQgKGluIGtmZW5jZS0jMjIzKToNCj4ga2VybmVsOiAg
aWNlX2NsZWFudXBfZmx0cl9tZ210X3N0cnVjdCsweDFkLzB4MjAwIFtpY2VdDQo+IGtlcm5lbDog
IGljZV9kZWluaXRfaHcrMHgxZS8weDYwIFtpY2VdDQo+IGtlcm5lbDogIGljZV9wcm9iZSsweDI0
NS8weDJlMCBbaWNlXQ0KPiBrZXJuZWw6DQo+IGtlcm5lbDoga2ZlbmNlLSMyMjM6IDwuLnNuaXAu
Lj4NCj4ga2VybmVsOiBhbGxvY2F0ZWQgYnkgdGFzayA3NTUzIG9uIGNwdSAwIGF0IDIyNDMuNTI3
NjIxcyAoMTk4LjEwODMwM3MgYWdvKToNCj4ga2VybmVsOiAgZGV2bV9rbWFsbG9jKzB4NTcvMHgx
MjANCj4ga2VybmVsOiAgaWNlX2luaXRfaHcrMHg0OTEvMHg4ZTAgW2ljZV0NCj4ga2VybmVsOiAg
aWNlX3Byb2JlKzB4MjAzLzB4MmUwIFtpY2VdDQo+IGtlcm5lbDoNCj4ga2VybmVsOiBmcmVlZCBi
eSB0YXNrIDc1NTMgb24gY3B1IDAgYXQgMjQ0MS41MDkxNThzICgwLjE3NTcwN3MgYWdvKToNCj4g
a2VybmVsOiAgaWNlX2RlaW5pdF9odysweDFlLzB4NjAgW2ljZV0NCj4ga2VybmVsOiAgaWNlX2lu
aXQrMHgxYWQvMHg1NzAgW2ljZV0NCj4ga2VybmVsOiAgaWNlX3Byb2JlKzB4MjJiLzB4MmUwIFtp
Y2VdDQo+IGtlcm5lbDoNCj4ga2VybmVsOiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4gVGhlc2Ugb2NjdXIgYXMg
dGhlIHJlc3VsdCBvZiBhIGRvdWJsZS1jYWxsIHRvIGljZV9kZWluaXRfaHcoKS4gVGhpcyBkb3Vi
bGUgY2FsbCBoYXBwZW5zIGlmIGljZV9pbml0KCkgZmFpbHMgYXQgYW55IHBvaW50IGFmdGVyIGNh
bGxpbmcgaWNlX2luaXRfZGV2KCkuDQo+DQo+IFVwb24gZXJyb3JzLCBpY2VfaW5pdCgpIGNhbGxz
IGljZV9kZWluaXRfZGV2KCksIHdoaWNoIGlzIHN1cHBvc2VkIHRvIGJlIHRoZSBpbnZlcnNlIG9m
IGljZV9pbml0X2RldigpLiBIb3dldmVyLCBjdXJyZW50bHkgaWNlX2luaXRfZGV2KCkgZG9lcyBu
b3QgY2FsbCBpY2VfaW5pdF9odygpLiBJbnN0ZWFkLCBpY2VfaW5pdF9odygpIGlzIGNhbGxlZCBi
eSBpY2VfcHJvYmUoKS4gVGh1cywNCmljZV9wcm9iZSgpIGl0c2VsZiBjYWxscyBpY2VfZGVpbml0
X2h3KCkgYXMgcGFydCBvZiBpdHMgZXJyb3IgY2xlYW51cCBsb2dpYy4NCj4NCj4gVGhpcyByZXN1
bHRzIGluIHR3byBjYWxscyB0byBpY2VfZGVpbml0X2h3KCkgd2hpY2ggcmVzdWx0cyBpbiBzdHJh
aWdodCBmb3J3YXJkIHVzZS1hZnRlci1mcmVlIHZpb2xhdGlvbnMgZHVlIHRvIGRvdWJsZSBjYWxs
aW5nIGtmcmVlIGFuZCBvdGhlciBjbGVhbnVwIGZ1bmN0aW9ucy4NCj4NCj4gVG8gYXZvaWQgdGhp
cyBkb3VibGUgY2FsbCwgbW92ZSB0aGUgY2FsbCB0byBpY2VfaW5pdF9odygpIGludG8gaWNlX2lu
aXRfZGV2KCksIGFuZCByZW1vdmUgdGhlIG5vdyBsb2dpY2FsbHkgdW5uZWNlc3NhcnkgY2xlYW51
cCBmcm9tIGljZV9wcm9iZSgpLiBUaGlzIGlzIHNpbXBsZXIgdGhhbiB0aGUgYWx0ZXJuYXRpdmUg
b2YgbW92aW5nIGljZV9kZWluaXRfaHcoKQ0KKm91dCogb2YgaWNlX2RlaW5pdF9kZXYoKS4NCj4N
Cj4gTW92aW5nIHRoZSBjYWxscyB0byBpY2VfZGVpbml0X2h3KCkgcmVxdWlyZXMgdmFsaWRhdGlu
ZyBhbGwgY2xlYW51cCBwYXRocywgYW5kIGNoYW5naW5nIHNpZ25pZmljYW50bHkgbW9yZSBjb2Rl
LiBNb3ZpbmcgdGhlIGNhbGxzIG9mIGljZV9pbml0X2h3KCkgcmVxdWlyZXMgb25seSB2YWxpZGF0
aW5nIHRoYXQgdGhlIG5ldyBwbGFjZW1lbnQgaXMgc3RpbGwgcHJpb3IgdG8gYWxsIEhXIHN0cnVj
dHVyZSBhY2Nlc3Nlcy4NCj4NCj4gRm9yIGljZV9wcm9iZSgpLCB0aGlzIG5vdyBkZWxheXMgaWNl
X2luaXRfaHcoKSBmcm9tIGJlZm9yZQ0KaWNlX2FkYXB0ZXJfZ2V0KCkgdG8ganVzdCBhZnRlciBp
dC4gVGhpcyBpcyBzYWZlLCBhcyBpY2VfYWRhcHRlcl9nZXQoKSBkb2VzIG5vdCByZWx5IG9uIHRo
ZSBIVyBzdHJ1Y3R1cmUuDQo+DQo+IEZvciBpY2VfZGV2bGlua19yZWluaXRfdXAoKSwgdGhlIGlj
ZV9pbml0X2h3KCkgaXMgbm93IGNhbGxlZCBhZnRlciBpY2Vfc2V0X21pbl9tYXhfbXNpeCgpLiBU
aGlzIGlzIGFsc28gc2FmZSBhcyB0aGF0IGZ1bmN0aW9uIGRvZXMgbm90IGFjY2VzcyB0aGUgSFcg
c3RydWN0dXJlIGVpdGhlci4NCj4NCj4gVGhpcyBmbG93IG1ha2VzIG1vcmUgbG9naWNhbCBzZW5z
ZSwgYXMgaWNlX2luaXRfZGV2KCkgaXMgbWlycm9yZWQgYnkgaWNlX2RlaW5pdF9kZXYoKSwgc28g
aXQgcmVhc29uYWJseSBzaG91bGQgYmUgdGhlIGNhbGxlciBvZiBpY2VfaW5pdF9odygpLg0KPiBJ
dCBhbHNvIHJlZHVjZXMgb25lIGV4dHJhIGNhbGwgdG8gaWNlX2luaXRfaHcoKSBzaW5jZSBib3Ro
IGljZV9wcm9iZSgpIGFuZA0KaWNlX2RldmxpbmtfcmVpbml0X3VwKCkgY2FsbCBpY2VfaW5pdF9k
ZXYoKS4NCj4NCj4gVGhpcyByZXNvbHZlcyB0aGUgZG91YmxlLWZyZWUgYW5kIGF2b2lkcyBtZW1v
cnkgY29ycnVwdGlvbiBhbmQgb3RoZXIgaW52YWxpZCBtZW1vcnkgYWNjZXNzZXMgaW4gdGhlIGV2
ZW50IG9mIGEgZmFpbGVkIHByb2JlLg0KPg0KPiBGaXhlczogNWIyNDZlNTMzZDAxICgiaWNlOiBz
cGxpdCBwcm9iZSBpbnRvIHNtYWxsZXIgZnVuY3Rpb25zIikNCj4gU2lnbmVkLW9mZi1ieTogSmFj
b2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvZGV2bGluay9kZXZsaW5rLmMgfCAxMCArLS0tLS0tLS0tDQo+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jICAgICAgICB8IDI0ICsr
KysrKysrKysrLS0tLS0tLS0tLS0tLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDIyIGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRo
YUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
