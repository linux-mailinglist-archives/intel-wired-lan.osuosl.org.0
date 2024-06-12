Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6515290536A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 15:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EAA881F79;
	Wed, 12 Jun 2024 13:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qi1_SGZvUZnN; Wed, 12 Jun 2024 13:15:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5A3281EF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718198151;
	bh=sbtnOJvn8ceUlaFsXauIwwGpdKcblo6X52GbpOBwD5k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IYI720T1jI+5+5mwiy+UXEYr6LmFiTG6rwiAjNIR/IForipzbjAC1JW0dM/QV1YrW
	 LTb8MqV1mOCzTWFd+HiMxslmzNqcyUIJkjqxPIaCckTrlkYQ5rKg7pxK4rTU6V4qV3
	 hWJ3xcX2MiL66fEJdaHKxzhXcIBQE3lU4WBFJsBtEHZdER6XNROwFQpNSvJz9bMhpi
	 1fi4LbNbp2mhRq/e1pZaAQB1W4tpYR4+yBnwtE61U/g9m682L1ZpxIhdz9jIHxdYgE
	 3NTooZWQKCgRd/mJF6ztaJmJ2pP27KTP6hY84f2tC5zSqWLSU6yM0mSea+beN2qxs/
	 NIVi0+0FraXBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5A3281EF2;
	Wed, 12 Jun 2024 13:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF2B81BF371
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA48C40C1A
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNj4S-bZq_Cg for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 13:15:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB0B640026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB0B640026
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB0B640026
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:15:47 +0000 (UTC)
X-CSE-ConnectionGUID: nJmGvxvKRFexjIFItzl5pg==
X-CSE-MsgGUID: rxArPLAnSmesujWAPy68HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15127837"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="15127837"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 06:15:47 -0700
X-CSE-ConnectionGUID: bCBd2+eBTEaIycfTnxujoA==
X-CSE-MsgGUID: JDKYmwrjQ/+UaT5DfUk2CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="62968976"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 06:15:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:15:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:15:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 06:15:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 06:15:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltvpDH1ULpo/U4Mky0sLsiYKXF/CMLk6bIsvHQSSHHg0GCItEN6CAUn6/Qm2Zy9cNxCr3PiXXu2GTog0e1LK+bLHhJXv6ACV862CfOWuGAef2dVxky2EXHz8iRvbVuaj2qbjduibmgdyXm1RrCPLriawd5jX6XQahExW+s74WR9XiLPmIj0XuC6b0Y/XC5vOkQ+UgghcSXRytlHdz5X955f+56KOMvmKdoFju5jGFC/jnQDug1O5GMxG75DwAoyEhXHeM0l511BwY1y5DEA1OXHFrqGiU2nl9sThI+9AIL9VpUleaIcuPVBKcvUZGtUEPPdrjOpA4Q5eX09DcAyWHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbtnOJvn8ceUlaFsXauIwwGpdKcblo6X52GbpOBwD5k=;
 b=SENWc1zFzgS0u9Q2o6rUrVFZLsTIcwQAr5cCS1pF4PIcyI49OHQ4SQuKKs7lb1j9Eb6NindWuVM44ItRpd7rUXMiILHVtb4LyygMipD/p45xbdgbwumSLWBJqceds3BTWUocJhXOAZ7K/olYvwsQtu9PKASmy0J71vIG+v0ApB2D+lB6u1UctWl7XCsjyFfnGZcC7d6jDi5bwie7hacQS8lRLY+B0t7Njo9bEz2y6D35BHwQcxErahIZ3dp5Cx1qs0osUzL2kI6AyBbA6vdt3rseKnqDUGxEMRmviS0Jcz4bnEi7/3QG4jCGQO36AMN5oCsCHcrZjbCMTIk2Y4NGaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB7066.namprd11.prod.outlook.com (2603:10b6:806:299::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 13:15:43 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 13:15:43 +0000
Message-ID: <f65c89c4-728b-49a5-8e78-7c211896cf5b@intel.com>
Date: Wed, 12 Jun 2024 15:15:23 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-8-aleksander.lobakin@intel.com>
 <c4967261-b461-41af-bce4-de54e3538c9c@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <c4967261-b461-41af-bce4-de54e3538c9c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU7P194CA0019.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::34) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB7066:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a7d581d-bfa1-4a73-43be-08dc8ae1c36c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlU4T3U2TUVTN3VaSGhROVR5MGFSVXpUUWRVditZZFpiYlU0aysvOWZya0dy?=
 =?utf-8?B?OHJISHRSaTFQenkway9kSUk1eE5TSS93YmYxWGpoRkh4S3RwUWF2WWQyWU5q?=
 =?utf-8?B?VUNpV2g4OVozRDNHSk9Ba2J4eG9rVHRtMlAwTCtLOElJMkZ1QWkwWmc5VHdl?=
 =?utf-8?B?WExJSUhUa2NuVmVYMkwwenZmQmt3TVRwUVAzOHBENDRVOU1RWlhwcDVRa2tn?=
 =?utf-8?B?Ti9BZ242aEFCbHhCU1N6V2dwQWcrYWZIS1VTMDdobHB5S1B4c1pBdENtVkRn?=
 =?utf-8?B?OTVjMG83TlRjUHdybHJnS1hQZlA5dml3K0p4dUs3OUpOQ3B4WTB1QUV3ekxr?=
 =?utf-8?B?NXdXbVY2dVI2YmthTGJobzNZejNuSFRVWVU2NDVuT2lqMVUyZTl0aWFwdXBM?=
 =?utf-8?B?Kytsd3VaVW9GMFFvb1Q5MVVZNVdWMjRLMGxMUXBXMjFEdjZJVEV5NmZOV1h2?=
 =?utf-8?B?Wk1vUzBmS2ZVRHVEZVNsRzBMRm14UUIvV0pIVU1KM2hOekhNb2dSREFHQVF2?=
 =?utf-8?B?Ulhra2Zud1M1ODFWYWdmOU4wVmJOMS8yaEE0ZGFiTW5FMjVhUnVKTUs3S0dh?=
 =?utf-8?B?SWt5clB3TDV6ak0zamdrazA0VTRjakRiVlNsZkoxM0Q4bnN6OE5ueDRQRUph?=
 =?utf-8?B?bEVLRDc5UTI0bGE1QURYcmdKVEE0UmM0MVRaUWw5WVhCVm9vVHpkWm5JZzM5?=
 =?utf-8?B?TnA2NHFXUGVRREtWMTEzL3FUZ0UxODBZdmxtdEgvM2VjalNXR052MW9oOVND?=
 =?utf-8?B?SUhieU9YbWxmazVoazMxckU5ZXFkRXhLeUdxTWtaNm14eGUyVkw4aXAwaUMv?=
 =?utf-8?B?dFJVR1JUM1NCM01ZR2FaZTRveVAxdWpqQWNZSHJ2RDNGY2l4OVhlOGxXbjZ2?=
 =?utf-8?B?K0NMOCtFbkZMZzRFLzdrRFhrL0NVSHhETlo1M1E5bGgyUnY5eEJGVmpqdU5T?=
 =?utf-8?B?R2l0MDJXMysrbFJrSXNKZWl3eUNxbzdTNHM1dlQyZ0F5TktDLy9BSFhjQmVS?=
 =?utf-8?B?bDBxOE5ITlN1U1pZYTh0Mis2OTQxc1RaNDlCZkwyd3JPR3pSdU9NUGpBUzhG?=
 =?utf-8?B?amREN1FiOUt4aGIyRVdqZnhLT3BLWGVBenJ6bExoNUFvWTdxTzFFdkl3MTJO?=
 =?utf-8?B?RmFpSUNmeFd0Y1duY3pydzAvdXRIRHhkR3U4M1VoOGZLUE5NNy9SbW5sWUY3?=
 =?utf-8?B?d0ZIK3pQeTJsTGVCWlRDNzdHcHhwb3dPdjN0NGQyZ2VIVFpzdXJ3ZFIzOUtw?=
 =?utf-8?B?SnRVMER2YSs2Z3hyblJuZjBHaDVJK05ZS3hFVlM5V0tocHQyN2FSRUVReFFF?=
 =?utf-8?B?Z0t0TUt0STh4WTBnc1ZNalI2ZE5XUmxGaS9XdG5yOEhlek1QUW84UGdDZ05I?=
 =?utf-8?B?WW81ZWFQOWYzZ3pWTlpLQ1ZONjliTmwyQ3pmYTIvSzNkNzBvUm8wbzJBZ2dN?=
 =?utf-8?B?Y0ZNeExrdjBBNWZUVjAvWWE4MC9IdjNXakh5Yyt5RUhieFB0ZUliL2dHMFFW?=
 =?utf-8?B?NVNKUXVEOFRYOUZKdytaSyt6TzRwb2V2dkNJN0UwVnQydCtYckpOa2FtZWh4?=
 =?utf-8?B?UG83eWk3KzVPMG5VSHdkRFlWbkcwcmlpTEMvOTNOdHJKUzJsOVFFVkFjcm82?=
 =?utf-8?B?UFNuUEQzS1VhWW9CSG9xNWVQTHlQdENvTlpJaFpzcUZhY3kvKzFRZ2Fsbnlx?=
 =?utf-8?B?eS9iUVllc3pLalJiaHlFZU1TaTVvNHZlcmU2cHI2TkZyQ1J5RDFxckFQRTlr?=
 =?utf-8?Q?EP8XkLPYWngxwzqLtY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDB5ZnZ1ZmdTL2lwNVBNRUZUcXlVaTVlbnRqRzJ5S05INi8xNUZuaFJsMWtS?=
 =?utf-8?B?L2MvajNKb3lZazdaaGVyaktqT0xhWExPTytEVWE0RFZ0aDFKSjlVeUloNHI2?=
 =?utf-8?B?T2llaFN5dEFaSmlyVFlVWjhZbmRGNUVwVWVTZFVwS0VEc1A0SUU4UVY5Z3FF?=
 =?utf-8?B?MHZIZWtCb2lNeFBIR2trQmVwaGJqYlpFNmJ3YVlPOG9CM1NSSUtrZW9lV3VC?=
 =?utf-8?B?blNJZUk4VHFlWGZ2RnlBaU9mS0ZoVTFZUkpQL2hpNVZOTWFnS2FXZUR3VEhY?=
 =?utf-8?B?Z3NSL0pkYmRyY1g0dmpCYkRUSTFKSHc3MEEzQ282UzR6aVNFWkJsS3RzVGtM?=
 =?utf-8?B?d1lzZEtFS0ZGaGMxQnpGS2l4VFA3Q0pTM3FSbGdHZ3VURzNObm1yQ1EzbkRL?=
 =?utf-8?B?QVJoN2puS0luMjJHZ3JLZlkwa0pDYWM1YmVxdVozcnpOOHp4NnNCTGc4alZX?=
 =?utf-8?B?MWwvTFhaN2x0T0ZJM1FTd3FkS2Z6MG9WV1gyYjNYWVR6Qm1kMUNxb2xpWnow?=
 =?utf-8?B?VllNUGRhVmY4R25ITkQzblh5YXZyUVBFMzFaWlpRNjMyVWptQkw3Y2dYYTRB?=
 =?utf-8?B?UXlFbnBDZ1VycGhJNHo1bFNqY0o5TnBOeEtUN0VMWlFiUUNGZkc2c2lYblVq?=
 =?utf-8?B?QjN6QmdMVnpyejQ4TnZJVHRtMDFucklqdmtpYUR6eFBsait6dVlKSmtPckU5?=
 =?utf-8?B?M3lQZ01CaVMveXZTT2ZmOVpsOWNxbWVXOWhOWldzenp3WFV0VG9yUDhiUlF2?=
 =?utf-8?B?WE0xL1crK1Jnc1dyMXBsdGQ1a2pLVG81RnhhSXUzOHV4cEJHU0JVbnJYL0Zx?=
 =?utf-8?B?dm5wWnBCUlA2OVdyVzZ1NUZUcDhHQkx4Q2NWNzZhNHVCdDM5SVQxS3ZVWWlI?=
 =?utf-8?B?TmYyaEh3NGhoTlpJaksxcWxEdktGdmhRWThRakZGQTFUOVg5MHA1Wms3TnFG?=
 =?utf-8?B?dGFQeU1udXM1c1lKTW1HdnlCMUMzakRudjhkQ2Q2b29MZUttSXdmdjBJUjdx?=
 =?utf-8?B?a05UbW1CVkpiOHhHYi9XRzl0NDEwdER0ZEI3aHFnMjBrKzhRT3ROU3BkRUtz?=
 =?utf-8?B?UnVsTitLdXhpVzRkWmdibStQSWRBUStCaXRiYmxCZFBPZUZjMnRLM2pHSUp4?=
 =?utf-8?B?YVZ3ei8xemFlOWdUVE9VN04rMzdGUFZFTmMvd1R3ekZua1h6YUwwb1hRRHF6?=
 =?utf-8?B?cEJONzFVN2pkcFA3NUdYdG83YjExSFJvaTdCa1pURkdnSURzSXJXc281N3JR?=
 =?utf-8?B?UUlyT0tYZHlkQ1d5L3hpZFZHWFh5dmg2Vml4Qm05QWlnUVZZc1pCNXdIcjFW?=
 =?utf-8?B?dzFKV3piMFVvbUYxUWVaZkZ4SUQ1aUEyamFjY1ZlZ2ZXNG0zNzg1VmRFM3Qy?=
 =?utf-8?B?c1Judm1RSTkxQUZqallGdVlrLzFralVLMUVOOFFObHAySEtzQlZoc3ZkS2V2?=
 =?utf-8?B?ZFkrTHUybU1UekJMZTdzL0hqUzBXaEppa3VFUWJPT2RxZkpQTndJQkxzbUFs?=
 =?utf-8?B?TUNlWWdLRTdZZkx3Y2dkRUhLWnNOTTVFK0ZFU002cllhZUMvbE8rbVNKNE5t?=
 =?utf-8?B?VVltLzFiSkZnSmlCZW5uRXM4TjlKMitvdGlVblNYVnRyb3FNSjJGbXdKc0FJ?=
 =?utf-8?B?djZrMmtBTkJyWFNMWlU5ME5YNXZ5TGFEZjFtMDNvQ1JFaEpzc2g5OHhFcktr?=
 =?utf-8?B?amc3bzBoUGUyRHdITVdnYkMyL2J6bXZ5aHdOeXZ5YlBKekpDZzJUQ0szMG1G?=
 =?utf-8?B?a2hNWDNLWE9oeFM1ODFnelNCdEorMlFGdEU1ODBjUTBodkp3SXo2aE9pamRG?=
 =?utf-8?B?OUlHWGtFR09WK2ptVkVFNzkvWmdDVS9qbGhkK05sRWp1bkVuaG52VERQeUFC?=
 =?utf-8?B?eUxzZHAvdVZYc1VyMjdzUTBMc0x4TzF6Rk4vaEFzRytZSUtEQWNVYTJDRUlD?=
 =?utf-8?B?enNIR2lZaFZJZzErN25QOHB4YkRNNFRsOFdLeWpOK2l4VUJ0S05aSzNvYkdl?=
 =?utf-8?B?eERNL2lTWDZZVUQvbElPclR5clA2VWl0T0JyT3FWdGw1a2crSmJXdDNyZTVp?=
 =?utf-8?B?R0RCbkVnRUk5N2pHSWZxUzdOSEFjUzJNZ2JZTHNOWkNQb2hKeFArN2JmUHRy?=
 =?utf-8?B?bGtQVE01dlZCUUg2WWpROE5sdUpuTGFuYWdMRGFZaytqaFUyVm83WWRGQXN6?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7d581d-bfa1-4a73-43be-08dc8ae1c36c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 13:15:43.2891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FZOqQI2u39TcMW3xDWoLIv6TZaxemHqNcBYn9StnCruapmxwrxM5fFQplx5mNlB2qzsDGrhr4KFBptHCrML65zaAeZYuiESPlie3XuSOFbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718198147; x=1749734147;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xRALndUr450XUk0w/jZTS8vF/FvkC8lcYKA4dL+gxRk=;
 b=Ov4VJhB2f2fCSothObVLLQR1tg8QqThp+KbeDwkyrrNvhgsQD5v4X5bL
 PA7E5oNGZ1lVF1u1acSIlx0tN10fMpVEuxvpCLmY4tsF6jlzosRlznPrs
 nldKoQWs7lT+bYFfi3DAqPOUaKPWT+Aa84YkoJVKOuEaz7ByADINWDdtn
 iTN9ByBF76R1jrRnZ80fgzLLHkRayp5UMMDl6kODdyM39cn35SMjqpzbk
 0vmEQibUQxfUsNxOmhGyHWGQFoSOK/xbmIa8Mz9zxPp53B3qIKE4U70VZ
 tq75JSrxAf+4hHGihi4V2uR46CyHIWNcWcPZXU/+DbhxdR6jneIgKp7LU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ov4VJhB2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 07/12] idpf: compile singleq
 code only under default-n CONFIG_IDPF_SINGLEQ
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
Cc: intel-wired-lan@osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 28 May 2024 17:47:32 -0700

> 
> 
> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>> Currently, all HW supporting idpf supports the singleq model, but none
>> of it advertises it by default, as splitq is supported and preferred
>> for multiple reasons. Still, this almost dead code often times adds
>> hotpath branches and redundant cacheline accesses.
>> While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
>> the singleq code only when it's enabled manually. This corresponds to
>> -10 Kb of object code size and a good bunch of hotpath checks.
>> idpf_is_queue_model_split() works as a gate and compiles out to `true`
>> when the config option is disabled.
>>
> 
> Could you clarify why we can't remove it? Presumably there exist some
> users out there who depend on this (and can thus set the CONFIG option)?
> Or is it because we intend to support some hardware which only supports
> singleq sometime soon?
> 
> This is a huge improvement over leaving it as-is, but I do wonder why
> not just completely remove it. Its also a surprisingly small patch, but
> I guess thats because the singleq_txrx is a separate file.

I'd be happy to remove it completely, as it has bugs, makes some
optimizations more difficult to do etc. But I was told there *might* be
real users for it, although with no particular examples, so it can't be
removed. Maybe Emil or someone else from the idpf team will finally give
some ¯\_(ツ)_/¯
In general, I have no idea why one might want to use singleq when splitq
is available: it's way faster (one queue is strictly RO, the other one
is strictly WO -> better CL usage, less descriptor reads and writes
etc.) and more flexible. XDP will be available in the splitq mode only
-- it would be hell otherwise with no practical benefit.

Thanks,
Olek
