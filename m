Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F988BCAB2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 11:33:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52B93605F6;
	Mon,  6 May 2024 09:33:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N09zWoump2fr; Mon,  6 May 2024 09:33:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78C8B607C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714987992;
	bh=iqmiulU4+SVTeBJdlg7jHYKd8kNXyzGRED5F9EfOoxc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LGPudTEU+6gGwhfEC29piBtF3Aym12D5K2Df8vR7Q+660DHcfzI/UBijMEwKSisEs
	 5EAaJ0IHm+aP5vpMq6bmExQ8r+1OHS9+FhRAqivw40t4O0BWyCX+6qETuloIJVREXy
	 hl1ny04ddbrMIEju3pBNiV6Zb/x8aE5VNl3CBxKQ/Nxggqpy9bo4ufXe3QbL+FfJBJ
	 3lPlKfH922Jp7xLAyCitv0txYhgcuN0Vp8+uWsXOXBCm4PNDdfgZ5jrOPHB+IzS04m
	 7h1FM1KY8X0oLB2vEGaRBsrzyrk1ZjJipGUs35OLoJUkLndbUUYFj7CG1pi3jsiZUd
	 hDSRo9bPp/gEg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78C8B607C2;
	Mon,  6 May 2024 09:33:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EBD61BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38DE8406DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id irHQwEsCcy_X for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 09:33:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 219FB406E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 219FB406E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 219FB406E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 09:33:08 +0000 (UTC)
X-CSE-ConnectionGUID: qyzAShCWQqe5QstIjI7P+g==
X-CSE-MsgGUID: dBqellhqQgKiTp+Q68q7/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10604169"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10604169"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:33:08 -0700
X-CSE-ConnectionGUID: +tBbadY9TQCSVEckALid2Q==
X-CSE-MsgGUID: Kon6zg97SsmuJycNZob5EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="27995278"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 02:33:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 02:33:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 02:33:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 02:33:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0Bye6jPCFxsoK0uW0sOvPcDcuw1QdgW03gZVV6kC/n0U6S8Hh8PagT8qlzK0nLGHA4rx6WhkDoZFP3UQxjqH7gbnOV+WeFflpl8yk0d6eg8olKfvv+2ComlUc7Dj+dxbaMpch0LITMw8haMgbqJabh+eQIpYPNFcSxfcHgdTKri+EeJmoy7RIbtRexTiWIVdm68NFDk5+bmSMQok6oyd9a6vHl5vWlzC04MfzhmmeUSKE5hI80XcZzG5RymxTCeqIHq1dk6/X9RiDx+9qbU6hUNXUDzHVLIZyJpk2XjW1HHHXidqvCTVKg9XoRlAS6FEbYoZv+GRiJMHmRFPxZtjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqmiulU4+SVTeBJdlg7jHYKd8kNXyzGRED5F9EfOoxc=;
 b=ggkoXCMwBNHHQxOAwlUt+Q632F2NuLkgfszwPnAxEGO0VbV/3YTvt5i2/XwFKN2qRT4AFmynbaazb+APzKqXhmDCiyOG6mz0KOB3MJllSAFKrWNXTvnhKZnNTPp4jbyPlqoxkimTaBB4NG8o8CifMZEN8AJA5jPqOwn2c0bhGyFpUaKn4nHzRL0RBdoIczV33eYvIIaHco9ebAgdpRTDqwuff3mhstzCfGRvkut4omTsZ22IonZhmvRsVRG02Iw1kGh82icnijbEVftUTXT5V2D1OCFWz1r6HNIhr28kQUhbxdFyThIdvhJ9FBYynPPd35yzyudFmhvNy6yl5h8ezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 09:33:05 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 09:33:05 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
Thread-Index: AQHakA4MjiZvoVMaDUCrpkkDdlp28bGJy8TggABBY4CAAALMYA==
Date: Mon, 6 May 2024 09:33:05 +0000
Message-ID: <PH0PR11MB5013958C9390750E1F98A92A961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144325.15319-1-ast@fiberby.net>
 <PH0PR11MB501366480345AB20618700D1961C2@PH0PR11MB5013.namprd11.prod.outlook.com>
 <af4986b8-e868-4540-852f-7dba5e3196d8@fiberby.net>
In-Reply-To: <af4986b8-e868-4540-852f-7dba5e3196d8@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CH0PR11MB5298:EE_
x-ms-office365-filtering-correlation-id: b0a6e176-449d-4f51-8a55-08dc6daf8884
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?STNVVHdEcUsraDdZc21wcWRqUldncWQreW91a215UUtBcXZIY0pJYWMzZjJS?=
 =?utf-8?B?Y0ZCQi84M1hCeXl2eHBianZUTWpKQkhieFdjT3pSODZXWGdJdk1tRjB1UFdt?=
 =?utf-8?B?em53WnBmWDRlck4yU3JRN1FXSDRMVFdJUVQ1Nkh6dkdPRG5vdkV2V0dQUVhw?=
 =?utf-8?B?THVzR2tQRlY5UitJc3Y2WnR0OXdnR2d6cWtCWm5Qai9BU0F0RFNpcmNidE1N?=
 =?utf-8?B?ZE1qanB0UENNQmIwSW8yeDZETkRjcEVXNEhnVDJJNFBvL0RNSFFWRHpMQ0lU?=
 =?utf-8?B?Y0VidmNjeHM5cHFaaXZTMTI1ZndVeDM5bkVRNG1UMnlPY2xTMDlFYkd1b0gz?=
 =?utf-8?B?N01kcnRWZ0FKb2dBUnI2Z2ZiY2dOMlZtSW5EaVpXamczcjg5R1oyUzZCZjNR?=
 =?utf-8?B?bGtlZHcxUWpWT045K1BrS0ZHY05YQWRxMXE1ODA4M0h1WlA4akxpNjNZZGVL?=
 =?utf-8?B?TXFMdWJWZXAyZ1dVOW9NU3poUThCUGdibWVQVlJLR2Y5SzJwanhESTFjSWFM?=
 =?utf-8?B?eGF3bWRLN0hzTi9MQmFVdEV1dDlid1FTcUZqdm8xbjRqY0lkZ0VnNnZ6eExu?=
 =?utf-8?B?cyszNTZXbGZDVUN6bjJXczJvdUVvSE55RGsxamNXbTFmWGhsdUJBcjU1VG5t?=
 =?utf-8?B?OC9FVVNWR2hrcnI0YU1jOEt4L0dKOXk5YStjc0NzMHZtNmphL0dnRjFUS3JX?=
 =?utf-8?B?bnZINTNUMUZmdTN2OTNGazZEZXJtN3B4N0poRExBWVBuVEppWWxFOC94R3hs?=
 =?utf-8?B?TzhYeXhRVFpWKzJweENNRTg2S2svaGlnK205QzdkNmVxN3BhRFBudFVmYzhz?=
 =?utf-8?B?SmRMSkVwSEJVNmlPdG8vYVR6QjdidGxIcm5IMTlOdXNGQkhFYjZjbHRaZHhr?=
 =?utf-8?B?cnVsOHFNS3p4bVRRYlB1bVFOS3Zkc0cvL0x0M05McThnQXpwamovU2dmdUdZ?=
 =?utf-8?B?SVA0NTlRcDRmdGk4UUtQT0Y1OGkxNVNCQzN6NTdRMlN6N1lIWk4wbE00Qk9P?=
 =?utf-8?B?ZHBqbXJFWWQyMy9mckVNTENuQlA1eTVmekpwODdkN0VSSlpWL3ZZV0p1VFky?=
 =?utf-8?B?aFN5cXl6dUp6dnlYVlpTdVdlOElFb3dCT1h5UGZzUVBRTmdVcDhyREVxeFBw?=
 =?utf-8?B?Vmk0L1BZeUVrVmRxSSthdk1jeXR3c3k2OWE3MjAxT1ZuN3dpZzliTnVOSFg1?=
 =?utf-8?B?cU1hd3pGNGg2Z1ZRQzY5WGZJRHNNcGM0dmtlSHZuTTNkckxHV01WOGhiM0xI?=
 =?utf-8?B?elVmbnFMd2twOFY3MXZrZjNFWWxDQkNYUldiTG0xWFAyVzRLWkt0YlRmVGsr?=
 =?utf-8?B?MjA3K05BVUJiMC9SaDFHZ0s3dU1ubnB1TW5WZE9rRTV2RkFwRmtPL0VrV0lS?=
 =?utf-8?B?WnIyK2M1TlcrbW9pWitWejhLZmdaOUhXQkprd2cwYllVMEh0T09STjNiKzFy?=
 =?utf-8?B?WFZ0SWRqZ2thdkY0M2NIcUEvaXAvN3FpNE1oUWYzZjRvMS9nV3g3R210UE1n?=
 =?utf-8?B?cUI2YkF4TmlQNU9sWWZlTzZnZ28rRmV1VmdHR1Q5RlQzTlNKcXVVT0dHVDlE?=
 =?utf-8?B?T2NCOGhPeEJoS1owUE0wOWNyWHRxWWQxM1ZaSjNpTWxQUTdwdlp3OEFZclBh?=
 =?utf-8?B?RFhqMkdodzFlbnNTYzQzZDJwN2YxclhyTGJUdUphZHJmZmdaT2FVWVloMDh3?=
 =?utf-8?B?R0s2TjM2bmo3NWhHbnQ2ckdueFF1bWlJYys1WDRFdG1IblloTVhCcHIycG0y?=
 =?utf-8?B?SU9icUZKQ2l4enpraDk3eTF6c3dNaGFjUHN5MUxmRnpXekJJUGZOc2tXR0Fx?=
 =?utf-8?B?N1JxVlY0VnByY1MyeVA1dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVJRWXlvNkQ2eXBIYnNIZHdSb2F0dzRvaDh6aWVWaGhOYlFhZ3FGbER5dEZa?=
 =?utf-8?B?amdQaTVsWDNGSTJ3UHJuZFhiR3dKdlNvSjFJTk1kUlVhVnZzaThtMFRrOWUz?=
 =?utf-8?B?a2lTVGNEKzVjTnpGc1htcGQ3ZUJ3VUw5WFVSYXNRQmFqNWRGYnhPMTR1TXVT?=
 =?utf-8?B?K0FodURDUGdmWnVwVlMrTUVtSjdodW0zb2hvTDFhNmNLSTVzamlCY0pHQzNI?=
 =?utf-8?B?UnNTWHV0Z3lQWUR2Smd1Q3d3V3l3eTJvSnFuMkhoZ3hvc3kzdHgwYlFYZjVz?=
 =?utf-8?B?Ry9qRmU2SkFyUThLYm5DOUo0NXprMVFkU2JDcVpMUWhsN2hkM1JqWEZoS1Vy?=
 =?utf-8?B?K0QwVlZaVUJKUTkwVEZSUUV5VVFobHRIRFdZdy9LTVJrMVpZQ0UwTHp4MXFG?=
 =?utf-8?B?K3hkT1M1RElxcWZkQ3BvbC9Ba21FS2Urd1JqNG9TT0NlalJtSEN5WkpDNFE2?=
 =?utf-8?B?TVBVeU5Qa1VOL09OdFdSWFh6M2I5WWFWRlA2ZVUwaUE1aTVNbHBpWS9UZlRS?=
 =?utf-8?B?Si9rT1I1WE5rMkYxcUJXSkN1N1ZxSTBCYTdNY1U5YllqMjRuYmNjOHU1Sm8r?=
 =?utf-8?B?OHhHUWxwbm43TW9vWnVSSWNpSG1uV3hvVHhEVU44UEQ3L1ZqSGkvRU1UaTBz?=
 =?utf-8?B?cXErLy9qdldjUSthcWV1L3lyV0h1RmNDZXUyY2JGVklkNFd2SUw0ZmRjOGZJ?=
 =?utf-8?B?d1krKy9QVTg0ZGkxVzlURWtXY2JiSFdyQ2RCM2NiUzFTVkY1TDVFWFhjbmZu?=
 =?utf-8?B?K1NNV3hoVWhsTytWYmVKdkFOTDk4ZnZKOE1obEpTSVQxZ3lQbWtCTjFDNkNk?=
 =?utf-8?B?Tk1JaHlCbVVmdnBZQVBQcnliS0tqNHp4aTJLZy82aDBvVCs4L2wwRFBuTk1N?=
 =?utf-8?B?cnRaRWY0NW9OM1gyZW9kR3ZvSEsrcC9TTzNiMGdNQXR0emM0QnhKNy85enRP?=
 =?utf-8?B?YWE5UE1sd2RoSUtvZWNCb2JIV3ZHNVI5clhOYTc3TTNpVGhVc3RZZXVzcEJC?=
 =?utf-8?B?ZDRTWUtqS2YwQ2VWQkZ3dXdMdEtWaFdibi9taWgvWlNmcjJzR2krU3ZjYVcx?=
 =?utf-8?B?MWNtRmFGUEJGYmIxMG9BU2diRTFHb2VCQzRtUHlyc3g2dy9NamlKRFpUYjlK?=
 =?utf-8?B?eFZSZHZXb3dNcEEyWit1d2habC8xckFUeFQyNUhqSnN1WFNkRURZQzlmL0x4?=
 =?utf-8?B?bUYwSWNoVGxWVHVXNkRqOHU2RmlmOVlzemhMRDNFblk5UU9mclpJd2ZBZXFt?=
 =?utf-8?B?UGZzeDZab0lYRGdwb2RUY2R0NHFBdDJSVEpkL0NhYnNBblZ3VU51U1VvNGNU?=
 =?utf-8?B?LzlKY25FN2dDZDlJeHJDNjlSMExIeGVZOHMzU0tjYXdCQmdXNXBJY2FxL0JL?=
 =?utf-8?B?eFE0SEt6VTdycjhQNGNMZlNkdWRuTGN3YTVRRUFRZm9nTEdwcFpERVJ0U0xl?=
 =?utf-8?B?b2lCMXl2Z09nZkxMTHZmQXRaUmUvcVZKQUE1bjkrNTdmVUowS1p6L29CNHJF?=
 =?utf-8?B?emVRdlRlYm1sZmRNVks5cXF5aS9SZXM5UTM4L3hHSjBmaVJzQ3NTcW82U2xM?=
 =?utf-8?B?cERMb3RURmNvYlNlZTNPWS9mTFpYMUYrR0pGOFFpa1YxVDVWaEtVK0pEa3FH?=
 =?utf-8?B?MnNGTlBybERhdXhEWmxSaEJUN3BrTzBMZFBQQWZ2Vm05Z3M0VDc4amo3NnR1?=
 =?utf-8?B?SHlzQ0taQlUrT2ZCdENsc1N1T3R2YTBJNWFpSm44ajFRbUJyZm1xcENOZGFh?=
 =?utf-8?B?ZnQyMW01b25IejFaaDdXUXdISG5QOUhXaDlFdlpSY0NOUFdmMWtFQXJ6VzlH?=
 =?utf-8?B?NC9WelIvMi8vOTg2VHFHaDBlbUZVSmJiSUw3a1FXTVhwelphTnA3TXErNG5i?=
 =?utf-8?B?UTAvMFZXUXAyNU1XaitETncwZ2VPVE5SeW5XUFJjVUhtUlBEU2c2QzYwZHBI?=
 =?utf-8?B?QnRISUl1Q0xpem9kb1dVenpnai9CVjFRejJNRlhrc1J5T1FNRUlUY3I0aUo1?=
 =?utf-8?B?MHJuYzRsdUxqdGFIL0dnK3ZqUTlDeE9JOUd5MUxGY3Q2ZFhmUHRuYUVYem1o?=
 =?utf-8?B?L2NkWWYyVFp5ZEVHazMraTlxcTVyRUlnWDdHS0pFbVQzZEJQNHdYSXppMGs4?=
 =?utf-8?B?SExhRWVIUXhZOHJRcXJadldkUkVham9TQVBjbDR1NnZMQ3FjSnpoS0kxNkxs?=
 =?utf-8?B?anc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0a6e176-449d-4f51-8a55-08dc6daf8884
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 09:33:05.6600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yYGMP4Bk6SSsLJoOHia6eti9nXtFRdUIhmf1axnxnKORjE0RVvgp+FBSz+HhXy2VPa8a0FlsHKwNq39tyj57+0FE7SbWPqE+xkjiMgDdYFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987989; x=1746523989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iqmiulU4+SVTeBJdlg7jHYKd8kNXyzGRED5F9EfOoxc=;
 b=X4mOw3UGR5HSlstGBog46tUXeQwfcwa9yqqgEQpJBy+FJwpcIdDIZW/o
 wZA01n5YCj+nRKuKlQhOhXo1w9n4ndfRAlAhE8QARU21M/GPtZ3ClvimS
 Eezhg0D5FsYDAo/g1bxkC7rw19PpCWNxtWbZrF+6At8lmbp0ZzEDSWSIP
 OliCCVj2swV0EewKNIsQ2liFy9CJdhEibjPVd9vz372Pgji/BcRcGqW5K
 xyFFi7wdWqhwg3cZop5fNuEdxfLP6OcNppw9rUHeqb7XWVibVczEJpE3C
 9GVM1YJRtgxXdaILJX2wfCny4Bnw+0HBIkIi3X9u6TP4XebgRfqdgwMNw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X4mOw3UG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQXNiasO4cm4sDQoNCkkgaGF2ZSB0cmllZCB0aGUgYWJvdmUgc3RlcHMgYXMgd2VsbCBhbmQg
c3RpbGwgaXNzdWUgaXMgc2VlbiB3aGlsZSBlbmFibGluZyBIVyBvZmZsb2FkIG9uIGlhdmYgaW50
ZXJmYWNlLg0KDQpbcm9vdEBjYmwtbWFyaW5lciB+XSMgZXRodG9vbCAtSyBlbnM1ZjB2MCBody10
Yy1vZmZsb2FkIG9uDQpBY3R1YWwgY2hhbmdlczoNCmh3LXRjLW9mZmxvYWQ6IG9mZiBbcmVxdWVz
dGVkIG9uXQ0KQ291bGQgbm90IGNoYW5nZSBhbnkgZGV2aWNlIGZlYXR1cmVzDQpbcm9vdEBjYmwt
bWFyaW5lciB+XSMgdGMgcWRpc2MgYWRkIGRldiBlbnM1ZjB2MCBpbmdyZXNzDQpbcm9vdEBjYmwt
bWFyaW5lciB+XSMgdGMgZmlsdGVyIGFkZCBkZXYgZW5zNWYwdjAgcHJvdG9jb2wgaXAgcGFyZW50
IGZmZmY6IHByaW8gMSBmbG93ZXIgZHN0X21hYyAzYzpmZDpmZTphMDpkNjo3MCBpcF9mbGFncyBm
cmFnIHNraXBfc3cgaHdfdGMgMQ0KRXJyb3I6IFRDIG9mZmxvYWQgaXMgZGlzYWJsZWQgb24gbmV0
IGRldmljZS4NCldlIGhhdmUgYW4gZXJyb3IgdGFsa2luZyB0byB0aGUga2VybmVsDQoNClRoYW5r
cywNClN1amFpIEINCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBc2Jq
w7hybiBTbG90aCBUw7hubmVzZW4gPGFzdEBmaWJlcmJ5Lm5ldD4NCj4gU2VudDogTW9uZGF5LCBN
YXkgNiwgMjAyNCAyOjUwIFBNDQo+IFRvOiBCdXZhbmVzd2FyYW4sIFN1amFpIDxzdWphaS5idXZh
bmVzd2FyYW5AaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3Jn
DQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBOZ3V5ZW4sIEFudGhv
bnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3Vi
YUBrZXJuZWwub3JnPjsgUGFvbG8NCj4gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsgRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpYXZmOiBmbG93ZXI6IHZhbGlkYXRlIGNvbnRyb2wN
Cj4gZmxhZ3MNCj4gDQo+IEhpIFN1amFpLA0KPiANCj4gVGhhbmsgeW91IGZvciB0ZXN0aW5nLg0K
PiANCj4gT24gNS82LzI0IDU6MzAgQU0sIEJ1dmFuZXN3YXJhbiwgU3VqYWkgd3JvdGU6DQo+ID4g
SFcgb2ZmbG9hZCBpcyBub3QgZGlyZWN0bHkgc3VwcG9ydGVkIG9uIHRoZSBpYXZmIFZGIGludGVy
ZmFjZS4gVkYgdHJhZmZpYyBjYW4NCj4gYmUgb2ZmbG9hZGVkIG9ubHkgdGhyb3VnaCBWRiBwb3J0
IHJlcHJlc2VudG9yIGRldmljZSB3aGljaCB1c2VzIGljZSBkcml2ZXIuDQo+IA0KPiBBZ2Fpbiwg
dGhlcmUgaXMgYSBhd2Z1bCBsb3Qgb2YgZmxvd2VyIGNvZGUgaW4gaWF2Zl9tYWluLmMsIGlmIGl0
J3Mgbm90IHN1cHBvcnRlZC4NCj4gDQo+IFRyeSB3aXRoOg0KPiBldGh0b29sIC1LICRpZmFjZSBo
dy10Yy1vZmZsb2FkIG9uDQo+IHRjIHFkaXNjIGFkZCBkZXYgJGlmYWNlIGluZ3Jlc3MNCj4gdGMg
ZmlsdGVyIGFkZCBkZXYgJGlmYWNlIHByb3RvY29sIGlwIHBhcmVudCBmZmZmOiBwcmlvIDEgZmxv
d2VyIGRzdF9tYWMNCj4gM2M6ZmQ6ZmU6YTA6ZDY6NzAgaXBfZmxhZ3MgZnJhZyBza2lwX3N3IGh3
X3RjIDENCj4gDQo+IC0tDQo+IEJlc3QgcmVnYXJkcw0KPiBBc2Jqw7hybiBTbG90aCBUw7hubmVz
ZW4NCj4gTmV0d29yayBFbmdpbmVlcg0KPiBGaWJlcmJ5IC0gQVM0MjU0MQ0K
