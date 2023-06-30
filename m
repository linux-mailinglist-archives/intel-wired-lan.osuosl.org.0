Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6323743ACA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 13:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EAAE83927;
	Fri, 30 Jun 2023 11:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EAAE83927
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688124367;
	bh=g1LJr4kor3kEW6pxYLaCJZ6f5rzlqLYt3EUi712VU+E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CycSjsle0A602fs70MaWpwryEzTgQ+qIY1aeQ/xQ/u6pS68QPk3bR72HbjihxlRtQ
	 iwW/PLlVkRkqxoBND5OQYKXRZiv6d6WiI9sZ05KNtaYAxFHP/aLMPrVAzH+E0iWvnz
	 4Wxoju2yQ7OcwCdSANxLoB6+WxvVUwoqGazyPw7PLGUjIFzfwYR1510uPhvkDm7kWI
	 EKU+JHHlRS43qbY1OClyJqjo/1HsquVZgKUPFw5WkyNePCstTO2hqcaA1mh51i878Z
	 LCb7kC9Pf2ie/PWEkCrg2kpLZNdHBhNN13UGlXvMC6hWzGfTjgwBdekUkMXkuJIqM5
	 +P5TTM8EM9kaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oX-4T75yCPmT; Fri, 30 Jun 2023 11:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 145AB837D3;
	Fri, 30 Jun 2023 11:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 145AB837D3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D14B21BF361
 for <intel-wired-lan@osuosl.org>; Fri, 30 Jun 2023 11:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A701F41F8F
 for <intel-wired-lan@osuosl.org>; Fri, 30 Jun 2023 11:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A701F41F8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mvEB46fNSbR for <intel-wired-lan@osuosl.org>;
 Fri, 30 Jun 2023 11:25:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE79C41F8E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE79C41F8E
 for <intel-wired-lan@osuosl.org>; Fri, 30 Jun 2023 11:25:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="448750182"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="448750182"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 04:25:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="711785751"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="711785751"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2023 04:25:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 30 Jun 2023 04:25:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 30 Jun 2023 04:25:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 30 Jun 2023 04:25:56 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 30 Jun 2023 04:25:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLhHpWxffB5fY8LJ97iXK3Y08322KUtPtU6Eucqqep7YrtGv3MkNqV9r6kou50tyQRAxVIi3DKpvCQxmmZJJT8gRjEo6dTx/g5+RwbA1bgIM8n+NlR/Savv3WzSjWhpdB+r9rt0XZPKJHFRcrPmE1RsUfTga9lmdhlULJCJgp4E+jVXF0UmvBAhFJI+bTQEcAlP5zRt3D6Sc6EkZzPQfFWIJCNpMGqI4dVKPF3KX+vQOgM37u7OpZGnsTfj+SbDw1rglib51qKbQlnMuG4mxidVzSXi+h+LEY5h7oW7AOBws1hzmrQmDUWAiZP3wKuPcpKP+M6G/B5GWfhph73BECw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHXwELTvrTMde9/mmBhskpPKeyn2DCUBy02Rq9DqEZw=;
 b=dbIUBhao2QYS4xOGMjv/qVC5G24FaiBChG+zqEQ8OmbVV7ULC5h3zsbbf/5NGLhKxtWq2tObklKFWybaCd5EC0BNr0tq7b1W0YYt3Z3NoUYDN4rPVcHR90CT/pPIR8U5oxjKlMNIvcMkNYFkF2cDLAeajQy2bsRiuQmX9kx5VJCIzVvYM7ADyDRYoHOJ171kiCOZ9OLwl6c4bzIIvcD6CPJqU80eui+RthAu9TC6ErL9Q09kuQQNy5j2gyupN/smszSj/fI1aPdpEZVU/mjfwlWpNjcfrcpPGqcXdhr1PTlcQVHiDU6+WLgCcJ15xDgVCAceHMH/QDwP7sFdNlRiKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Fri, 30 Jun
 2023 11:25:50 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 11:25:50 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v3] igc: Fix Kernel Panic during ndo_tx_timeout
 callback
Thread-Index: AQHZqKVp6MTe4j5au02rm2e+OHDDGK+gf6UAgAK5PpA=
Date: Fri, 30 Jun 2023 11:25:50 +0000
Message-ID: <SJ1PR11MB6180BBC89B1C97312150827DB82AA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230627031217.1476-1-muhammad.husaini.zulkifli@intel.com>
 <a49f657f-88c1-08e3-5e53-771778be63ad@intel.com>
In-Reply-To: <a49f657f-88c1-08e3-5e53-771778be63ad@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MN0PR11MB6135:EE_
x-ms-office365-filtering-correlation-id: 073db192-d337-414b-b7a7-08db795cc228
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CWGOEQvFuR9aUf7dGlXon7vSjXJodSI3tFM+TSDpZp5w28NPGEGpUWqfdDRQI87VgDbpbyKE+KIIrMyO4UC7r5Kk3LtF+jeE8QLV+r22bfnaA/R6Jy40gmQSOkFtjVSH+MaDwB1L6REoKxEmcMk3zK/aDBB0SbjsX2+cxKm5p2opvYUmtT1YBw4Wse2tmYDJ2RkMrgvP4SC09DWeKaQitcladlvlP+TNfG/y3VVlR2EaJCZFSp45Kue3BcJ1m4aiajmI/C/MurmtgTzDyGX2yX7/qwQuc1tm7w1j/6RJqMHK11SvmGuEx4qZPqkkE2qg1nma4nMXP61m1PLOaYTjsomPH3KbADQMAZ2W1cCA1SZL1RN634bpT1CMXUw0LoAk8fqUgCRnMthZX9JB5t5cCEip1+bqhOSrMfGYDwALHvSlAyrWvFL01bmdEYd3nYznZ8sKNQWf14Ag0QvBZEqEIeoPE8wuaT7lajbt2KuCWmyvAqr986ZNXat2RAzn9l0YMr0xISARFCyeAkkrqD4o77IQYTpYliiZze6+BfWk/adTAqdpMY8ideuAfxiqj94XydG8oRgCK2NGtgFJ5VGErAodKfFz2smV2a6Nj3ZJSwWqHwEX8b3WIZ7YvidcpU2m35Jc/hc4MHf2TdoKGo8IlA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(376002)(396003)(451199021)(54906003)(478600001)(110136005)(966005)(7696005)(83380400001)(82960400001)(55016003)(86362001)(66446008)(53546011)(64756008)(6506007)(66556008)(66476007)(38070700005)(9686003)(26005)(71200400001)(186003)(66946007)(33656002)(2906002)(8936002)(122000001)(4326008)(76116006)(38100700002)(5660300002)(316002)(41300700001)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eU1ET3Jjak9JblpkMWFwUFAxTFNJNXowa1lpNGoxRjZHOE9rSGVGN0JBWHRq?=
 =?utf-8?B?OXJudlN1SGx2eVpyWklmTUIvS3o3RjkyVldOVEZINmY1cFhreHcxbUN5QTdW?=
 =?utf-8?B?cXR1SndJb2dpdmxDeXRwZ2phbkdFQUNtS085RlNZSWlkeWVON3kvLy9UNEFD?=
 =?utf-8?B?OGswYVA0dzRJbFFaUGtZU0xKbWxOUXdYMS9kVE5vNDdtRTQwWDRWUktYcjB4?=
 =?utf-8?B?ZjB2T1pnQ1BPQWJkS1dHZkpNMytiM0RrYS9ZZ1RraFdEc0prVWZjWXRJcnNY?=
 =?utf-8?B?bmZxclpvVWJTbGwwY0xQZmVzMlk5cndLV3ZqZ3p6WGcrZlp2dUFzMXBicHVt?=
 =?utf-8?B?bkxsTitnZVVRbUh3K25jZlFZODhtVU1FOHVWWHRaYzd0cDNyVGxvbnZjaXVk?=
 =?utf-8?B?OXB2ai9EZSt3TXZSZE4wOXJ2bHpYT29ITjVONjdwdHBFajdCbGswQXlmcFlS?=
 =?utf-8?B?YWE1a1kyN0pVZ2dMblE5SjNjelRCSWpRNTZ2aWpnbzFLNnZPazRXNDBFNFVG?=
 =?utf-8?B?SmNEaUUycXRvaU4rcUQzbVV6Tml1UTUzbkxua0Zja1FLOU1CaEVpa1pLaHVP?=
 =?utf-8?B?QlhFV3JuM3FGMzY5SmtlcUVpTzJZSzBKL2NIVCtEY2ZGOHlJVWdWVGdjRW9t?=
 =?utf-8?B?a1crY3QzbnhBYmpVd0dlZXExUllCZUJoT0F0TDFuYnYrTVFJZ2oyNVhZTVY3?=
 =?utf-8?B?UDJKQ3o3K3ZmSFpPM2VZcWtrdGFWblBxT0MwblRNVS90WXNEY0VuN2R0TllE?=
 =?utf-8?B?N2VMU0hxdTZ2OXlHaDkrdTJEbkJVY2tUM1ExRTJRZVRTVmxXRmtST2ZLdm5W?=
 =?utf-8?B?SURvTjZLa1VIS0s0VFRtalE2Q1Z0S1lSYUJTMTVoNVQxcXhVNjNkYTNJRWZx?=
 =?utf-8?B?YVV6Z3VsVkNkbk5BVHYxUVpKVnB3ZFBjbit0VzVtUW4wT2k0dU10SDY1aFk3?=
 =?utf-8?B?VEc2bk5TcE9iQ0RQa0pyNjlocXNhYzduWm1sUVM2ZmFUZGlKTTdQMVN5RXZR?=
 =?utf-8?B?ZGkwdEVSTmxQajV2bVNLaW1lRld2NUJEZWJhekhteTEzeGlmSTYvV2pCU2Vj?=
 =?utf-8?B?MFllNUpjYW9KOExFQnlsUHNvS0tGQk5uMTA2a2lKRGNHajlnSXlYcmRUc3ds?=
 =?utf-8?B?dGRGTVBWTUg4clJrQ2xjOUIvWi9LVGtVbjQwV0c3RFJpUFAzMUlXRUJIZU1a?=
 =?utf-8?B?dDlpN2FCTmdxdVVaVERwK2dPS3pHZ1dDcmQvQ1hvQVMyZTVBNUU1bE9LMDRu?=
 =?utf-8?B?eHNlVGk5Q2RkZVRzRDFCcTNtVXJXbE1HRkNNVGR1K2RLYXR0SWgwcjFxVm0v?=
 =?utf-8?B?b0I2S2x1OURPYVpRbmFPVnJ2SHRUMkFoOU94eFlaOHp2ZENmSFJYUUxhMWxz?=
 =?utf-8?B?MmlRY3lFWTNUZGtjcXNEYnhLdkJFRWdUdlVscDljVXlHOFNvMk4ralkvUnkv?=
 =?utf-8?B?NTRDbnM2NHV1aVcwK0dmOXhmQVhmSDFvRDhPSTcyZDExWEx1ZTlXZFRIMzdM?=
 =?utf-8?B?THNobm81ci9ES3JkM3ZYWXB0SWFVMjhMMmgxL2s0YzNEV2VIWTNoRERsSGFN?=
 =?utf-8?B?bjROL045Ynl3NFR2T0V2UVE1dDAySTEzMDBLbWhSV2FubngrWWpnZVZ3NkxZ?=
 =?utf-8?B?U1puSTBiZ1hRdTY5dU03TEwzaC8zNElzb255eGRiSmZzQnkxR0lDb3NIVDF2?=
 =?utf-8?B?N1ZEemdyRkRrSHpNdXVIK0Qwa1hFSm1ZenBBMXI2NDJVSWgxZTRsWHlWUC96?=
 =?utf-8?B?ajduY0FoQ3FyTGszS0lPWk5HaUFWd0JjWVhvUTdFT1FJMXowUHdob3lzTzg3?=
 =?utf-8?B?OHRXQm1NMi9ueHFDV2F4OWovczJuTXcxSVVINW5BQTRVMlJXOVNmaGlXVlAv?=
 =?utf-8?B?U3V0WVRueU03eVFYcjRSYU11dUozVTlHcmFkT2EwWGpkb2NlNU51eFRmM29y?=
 =?utf-8?B?a25TNDFmbGUzN24zUUtraVpjVWp5dlBPdlBVZGNPOXpMOVZuTzVGREIvZ0Jo?=
 =?utf-8?B?b1UxcDNsL3B6Sk1JWHFvYzl0TjZ5Q1ZYOUpUTWZ1M1JVVVo1QzZTOVhKV3Fl?=
 =?utf-8?B?UWlRUlIrbm5IUDVBVVlmaEZMSCt4SC9sdXN5TjZnZzdYTWl0eHZXNS9KRm1Q?=
 =?utf-8?B?ZXJPUWZIQnNYeU1tRk4zNHhSTVR6OUZ0eGVESHFSVkx4MUhqR0NGbUtWKzBs?=
 =?utf-8?Q?jx3ONAPlaiy8Xxay43Mzs4g=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 073db192-d337-414b-b7a7-08db795cc228
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2023 11:25:50.4322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: APQZtX9PWHq2YnKcM08tFnkLyb1pF0iImPml9j+xxPJRALYkaUyLIBLfrikpZ/tzcPK2fKcb1/jSilp8KGTWR+hanSsNdgqQrltuBfLudtMTNx5AG4/5bIqPF/S4+ymc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688124358; x=1719660358;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LHXwELTvrTMde9/mmBhskpPKeyn2DCUBy02Rq9DqEZw=;
 b=eE5DAAaHeXci3SXC2L41E8mILIPAsy/iVZOVb1pwaZohvTAd7SximQtj
 d5ORLLHsDK59Q2iHK8DFwJRcrOoOpYDB14epiitCMSTrPPo2bYEkBeXLw
 IdS8mhfThloJvMKtGKTpbNY2dYlyB8+OIdA7r7DjYiebhjtEGQAULWFL3
 ZSUIopRhYcRIKpKvlbdgpwkkQSHi2g7mgm5bArV2H4eVjPOsCZipWXvOd
 7exW9m5KzedKkk1qkfNtV+97hlZ/QE6/UO9SeMiXFSwje71FnrCsxo0aF
 MZoTq7c87VUZ+06bnmNJ3ZPV+slo/YHGM1fpVvmIu8yIbDQ7KpETTEFP1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eE5DAAaH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbnRob255LA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE5n
dXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gU2VudDogVGh1
cnNkYXksIDI5IEp1bmUsIDIwMjMgMTo0NyBBTQ0KPiBUbzogWnVsa2lmbGksIE11aGFtbWFkIEh1
c2FpbmkgPG11aGFtbWFkLmh1c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPjsNCj4gaW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcNCj4gQ2M6IE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRpbkBpbnRl
bC5jb20+OyBHb21lcywgVmluaWNpdXMNCj4gPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT47IG5h
YW1heC5tZWlyQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXQg
djNdIGlnYzogRml4IEtlcm5lbCBQYW5pYyBkdXJpbmcgbmRvX3R4X3RpbWVvdXQNCj4gY2FsbGJh
Y2sNCj4gDQo+IA0KPiANCj4gT24gNi8yNi8yMDIzIDg6MTIgUE0sIE11aGFtbWFkIEh1c2Fpbmkg
WnVsa2lmbGkgd3JvdGU6DQo+ID4gVGhlIFhlb24gdmFsaWRhdGlvbiBncm91cCBoYXMgYmVlbiBj
YXJyeWluZyBvdXQgc29tZSBsb2FkZWQgdGVzdHMgd2l0aA0KPiA+IHZhcmlvdXMgSFcgY29uZmln
dXJhdGlvbnMsIGFuZCB0aGV5IGhhdmUgc2VlbiBzb21lIHRyYW5zbWl0IHF1ZXVlIHRpbWUNCj4g
PiBvdXQgaGFwcGVuaW5nIGR1cmluZyB0aGUgdGVzdC4gVGhpcyB3aWxsIGNhdXNlIHRoZSByZXNl
dCBhZGFwdGVyDQo+ID4gZnVuY3Rpb24gdG8gYmUgY2FsbGVkIGJ5IGlnY190eF90aW1lb3V0KCku
DQo+ID4gU2ltaWxhciByYWNlIGNvbmRpdGlvbnMgbWF5IGFyaXNlIHdoZW4gdGhlIGludGVyZmFj
ZSBpcyBiZWluZyBicm91Z2h0DQo+ID4gZG93biBhbmQgdXAgaW4gaWdjX3JlaW5pdF9sb2NrZWQo
KSwgYW4gaW50ZXJydXB0IGJlaW5nIGdlbmVyYXRlZCwgYW5kDQo+ID4gaWdjX2NsZWFuX3R4X2ly
cSgpIGJlaW5nIGNhbGxlZCB0byBjb21wbGV0ZSB0aGUgVFguDQo+ID4NCj4gPiBXaGVuIHRoZSBp
Z2NfdHhfdGltZW91dCgpIGZ1bmN0aW9uIGlzIGludm9rZWQsIHRoaXMgcGF0Y2ggd2lsbCB0dXJu
DQo+ID4gb2ZmIGFsbCBUWCByaW5nIEhXIHF1ZXVlcyBkdXJpbmcgaWdjX2Rvd24oKSBwcm9jZXNz
LiBUWCByaW5nIEhXIHF1ZXVlcw0KPiA+IHdpbGwgYmUgYWN0aXZhdGVkIGFnYWluIGR1cmluZyB0
aGUgaWdjX2NvbmZpZ3VyZV90eF9yaW5nKCkgcHJvY2Vzcw0KPiA+IHdoZW4gcGVyZm9ybWluZyB0
aGUgaWdjX3VwKCkgcHJvY2VkdXJlIGxhdGVyLg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBhbHNvIG1v
dmVkIGV4aXN0aW5nIGlnY19kaXNhYmxlX3R4X3JpbmdfaHcoKSB0byBhdm9pZCB1c2luZw0KPiA+
IGZvcndhcmQgZGVjbGFyYXRpb24uDQo+IA0KPiAuLi4NCj4gDQo+ID4gRml4ZXM6IDliMjc1MTc2
MjcwZSAoImlnYzogQWRkIG5kb190eF90aW1lb3V0IHN1cHBvcnQiKQ0KPiA+IFRlc3RlZC1ieTog
QWxlamFuZHJhIFZpY3RvcmlhIEFsY2FyYXoNCj4gPiA8YWxlamFuZHJhLnZpY3RvcmlhLmFsY2Fy
YXpAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE11aGFtbWFkIEh1c2FpbmkgWnVsa2lm
bGkNCj4gPiA8bXVoYW1tYWQuaHVzYWluaS56dWxraWZsaUBpbnRlbC5jb20+DQo+ID4gUmVwb3J0
ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPg0KPiA+IENsb3NlczoNCj4g
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjMwNjIzMDA1Ni5PR3Jz
dnlLVi1sa3BAaW50ZWwuDQo+ID4gY29tLw0KPiANCj4gQXBwbGllZC4uLiB3aXRoIGxhc3QgdHdv
IHRhZ3MgcmVtb3ZlZC4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIGlzbid0IHRvIGJlDQo+IGluY2x1
ZGVkIHVubGVzcyB5b3UgYXJlIG1ha2luZyBhIHBhdGNoIG9ubHkgdG8gZml4IGEgcmVwb3J0ZWQg
aXNzdWUuDQoNCk5vdGVkIGFuZCB0aGFua3Mg8J+Yig0KIA0KPiAnSWYgeW91IGZpeCB0aGUgaXNz
dWUgaW4gYSBzZXBhcmF0ZSBwYXRjaC9jb21taXQgKGkuZS4gbm90IGp1c3QgYSBuZXcgdmVyc2lv
biBvZg0KPiB0aGUgc2FtZSBwYXRjaC9jb21taXQpLCBraW5kbHkgYWRkIGZvbGxvd2luZyB0YWdz
Li4uJw0KDQpPaCAsIEkgc2VlLiBJJ2xsIGtlZXAgdGhhdCBpbiBtaW5kLiBUaGFua3MgZm9yIHRo
ZSBpbmZvcm1hdGlvbi4NCg0KPiANCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2ly
ZWQtbGFuLzIwMjMwNjIzMDA1Ni5PR3JzdnlLVi0NCj4gbGtwQGludGVsLmNvbS8NCj4gDQo+ID4g
LS0tDQo+ID4gVjIgLT4gVjMgOiBGaXhlZCBrZXJuZWwgdGVzdCByb2JvdCB3YXJuaW5nIGFib3V0
IG1pc3NpbmcgcHJvdG90eXBlIG9mDQo+ICJpZ2NfZGlzYWJsZV90eF9yaW5nX2h3Ig0KPiA+IFYx
IC0+IFYyIDogUmVtb3ZlZCBmb3J3YXJkIGRlY2xhcmF0aW9uIGZ1bmN0aW9uIHN1Z2dlc3RlZCBi
eSBWaW5pY2l1cw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
