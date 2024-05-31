Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA308D5E86
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 11:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CED240990;
	Fri, 31 May 2024 09:38:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SiBr9pNQPCml; Fri, 31 May 2024 09:38:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80F584064D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717148284;
	bh=61SNiouqUtVTBJDvFz7x6jRXz5D1hcbUPj4N0V2ylSY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nxiztGtDsgdIHSa4ucSrXqRwXBUZuHDxbt2Zmm8sTJv8wY7E22B0bEZoLaS+gQq6l
	 +BzUyRmmOnLbUdq/h4D6ilFJq8XOTqGwwStKWUj7JzXNisZ+H7jFI2G4ET83CrAzu0
	 7OoqNg35w6BGHuG8qcnnod3y41BmCJzJzn/aPfiWViIsPwWQ1yT8sxJrT5Px0CxoLJ
	 XkGKqGm9t7FQsvgs5UvN2NY6wlO0EViXofG4H7Iwq9I2oovynSNcgnI6PsZB8ukDnX
	 WPYubwyH9jT268Ds4sxixquyif5t/V0JcT+Fhp7Yrp95yvWGNnszczTZcReOjFk7Zd
	 NTm+iZpodJM+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80F584064D;
	Fri, 31 May 2024 09:38:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD1E1D5024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 559A6403A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ymd68RZ9qTYk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 09:38:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7C2C401CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C2C401CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7C2C401CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:37:59 +0000 (UTC)
X-CSE-ConnectionGUID: X1UkkdjKRN6u8c2Mzcvn1Q==
X-CSE-MsgGUID: JPk+I0/FQCGPTca2I5rHPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13907296"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13907296"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:37:59 -0700
X-CSE-ConnectionGUID: fC6kIiB/SQ+Z7+Yv47azpw==
X-CSE-MsgGUID: SFBYRzDKRYq1VyWOM5+64w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41027962"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 02:38:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 02:37:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 02:37:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 02:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AtlDdEXLoaciO7lHMSm5ClggvCe1RZU3Q73B3LMKFlcLHcwv0M1WpGMqyn9oRE7qD38te+jnRP1lxgDA9+EWCbD11L50ELEjn5dQlnRMWW/UrSJHZfEDqE3Ow8GyCFMEiUb7VgjPR3mZFid0r4E6WU1EAeF1FK0jnSGEgA1zXyzfJOckfmk5rdMXU0GlydxG3QgpakpKsC1zSytFAhRLxwy0FmR6XX0I0jusX4XnUH5eHvKBvrJspub1P67uoHnE2gTDxihHsTFEWbWWLb9CaOICwzk+xOZXa0ndc3mfBIorniBYXrk2TE9PhOkwpVTwbPiSiY9CeMG1SjYajlxoLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61SNiouqUtVTBJDvFz7x6jRXz5D1hcbUPj4N0V2ylSY=;
 b=e4dPBCTxFg/qyioomtOLEl9yi83qXlnbULycUjMfoScAtbQkN9HV76QQQht0zjgxyOxOfRgQhSksyzTgGRGS4FMDOwO9CLRM8ghCnNSGQ99PqmGzFleGVnG4OH3Mi7nz8BBzDx0QV21FNaOy3cPoimvQhnJwv+vKDPvBhjAHr5xBWLUbbRAJw1u9NoiYukHLbToJN9y5go7CsdNuLlRCwkW1VHbxOFULjEKUZ8JWL4vMhosAG68pdcz87NBfNpWUp7dony39kEwjtvQO3fG/ufR6+XowBw56Kb0qNN5VBRUvkLC+X3fezDBm/ZO8uh+/7Usg1VWyn1q/A1fEhT/U0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB5969.namprd11.prod.outlook.com (2603:10b6:8:5c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.21; Fri, 31 May 2024 09:37:54 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 09:37:53 +0000
Message-ID: <1ecbda96-5b32-4c6f-9cd3-74f9b78cb9e2@intel.com>
Date: Fri, 31 May 2024 11:37:44 +0200
User-Agent: Mozilla Thunderbird
To: En-Wei WU <en-wei.wu@canonical.com>, Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
 <88c6a5ee-1872-4c15-bef2-dcf3bc0b39fb@molgen.mpg.de>
 <CAMqyJG0uUgjN90BqjXSfgq7HD3ACdLwOM8P2B+wjiP1Zn1gjAQ@mail.gmail.com>
 <971a2c3b-1cd9-48c5-aa50-e3c441277f0a@molgen.mpg.de>
 <CAMqyJG13Q+20p5gPpLZ1JYBS6yt5HZox0=gaT87vDyxN1rxRyA@mail.gmail.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <CAMqyJG13Q+20p5gPpLZ1JYBS6yt5HZox0=gaT87vDyxN1rxRyA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB5969:EE_
X-MS-Office365-Filtering-Correlation-Id: e0a7e0fd-c6be-498d-94ef-08dc81555877
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VW9RRlFWY0duUHpzclNRbm1pcllXU1FvZ05abmd3MEtzaEZZekN3ZCtMVnFw?=
 =?utf-8?B?ak9MK1crSVBXalcyNTlKSTA0K255dXE4c1FUSHRTM21HUkNSdzBldWNXNTBk?=
 =?utf-8?B?YlRreFVTbkcvL2IzTWEvZHpOdGhsTndlOTNGVWFERzBxSksxUGlJQTlzbGx2?=
 =?utf-8?B?bXM2czh1a3NBSzZlaGErd3Iycm5Mcm5VWFZLWk1tcWxWdm5KQTZxZWZSbkt6?=
 =?utf-8?B?c3lMSmZ4UVozSUhmbStxZzU2aW1PYW0yb1FNS1pLWCtWam5nL05HdGZFRnU2?=
 =?utf-8?B?bFFFemErWEJCRUUrUThqNWlBMmlvRWNzZ0pET0RhVldJNGdrN1hyQjEvS2pC?=
 =?utf-8?B?bHM2NnNSVjltNVlSYVhKWkgrNnlnMDRjeWZxbGlNRW1uRGwxQXBJbU1lVDVh?=
 =?utf-8?B?M1VmSjdzdmsvL1JUNzRkU1A0ZWl4Z093ZW1ZK21SaXZiMy9CYXd5RXFHSm9z?=
 =?utf-8?B?NHUzOHdlVTd2UXVYVER2WFlLQ2NSRzlGd2ttN0JLWTZtdWlCdEFxL28yb3hL?=
 =?utf-8?B?WmRpbW45OE16bDVaMENjbThTNVZCRjU0VUVMMm5kVFVPNUpQYjZ5cFJSWllF?=
 =?utf-8?B?clIrbHJYTHdib0hJRVVMQkgwRlN0cnFQRURzaS9sQkVPMzhWTFFER3IrZWJy?=
 =?utf-8?B?OFdUU0J1WlplNmw2TEo4OEovRjhZcE9hdjRHbUJjRkllZXFKS2NsUlA2ck5L?=
 =?utf-8?B?NVdTYmpOQTh2bmpxWlhXSytEQkdiSmE1NXZBajczZlN2WXd2K21TcGdzODN4?=
 =?utf-8?B?UVRSZDlWU3grRUpsZEl0RTJ4eVpnVFdtVE1uQWZYZ2NjeUJLWUtFMGpJUEJU?=
 =?utf-8?B?S0tFTEl3Z1U3WmFWKzNVSW12M29qdy9Cc0tBMWVnY3gvQjFnbFpsVFJLSXN2?=
 =?utf-8?B?ZjVlTlVSam5NMVdzVXlQN1l1VXU4SDd4SHJnSmdkdEVLZ08xamZBTzNxZHVL?=
 =?utf-8?B?N2hZOEhpMGZncUNpS201MlgzdHptWUtMZG9xcUhGM0xyNXpSQ2FxYWlUbko2?=
 =?utf-8?B?WHZjSlFVTjQydnFLRUVQN0JxQ2tuMVNzd0RwWTFSZmxYRGhVU2FoZjNnNW13?=
 =?utf-8?B?NzNhZ0Z1Qko1S3hTenN1Y3p2eWdkYU1qL3E1YzZ1VGJUcE0vaVlDN2dvWDk5?=
 =?utf-8?B?TVNtYm8xVE9yaHJvM3N4SEZ1N2ovZEdmY2g1ZTA5SFllVVdYU0d1bUxBVit3?=
 =?utf-8?B?UEVaSnBSNWpISE1lQnJWOUJNVllvTFJkdU5CVGpIdzc1YkpaazhtdjNSVks1?=
 =?utf-8?B?VXliZXh0MlFHb3B4UGY2YVVPL2liNVl3NTdwa3loVDkrTlZWNTN4R2k2ZjBZ?=
 =?utf-8?B?cUF5azhnN241RGh0ZWpOYWRhUE1Gc2Zzb0dSS0NUTTlMKzlVTVNYUlBrRUlK?=
 =?utf-8?B?L0NkS1BtLzNsQW5zMllVeEJkdU1jQjBacVJBUDFETWVuU2Q0TUZVUWkxQ0lj?=
 =?utf-8?B?am1MbGNreHJnTFlNNmtMUUUwdHBQYUV0NnBCODEzbkthdEdoWW1uREVLZjBv?=
 =?utf-8?B?T3ZTekxIRTUvZmlmWVdxR3F6aFFMSnR4R2FBb1Z4bmkwSVlrUnFCb1VuOXpt?=
 =?utf-8?B?ZDZUTE1qVEZZK0NUU0IvMlVqTEdBS3A0VVg4c3V6NXFaeTRNeGxOYm9XWHpI?=
 =?utf-8?B?YWR2NWNNVm9vb3ZkZmwrNXdrSUExYUo0eHpPWGxJcURJNVAxMGM2ZDNxYTFD?=
 =?utf-8?B?M29Kd084Y1d2Q0xPS3lLeXpRcG0vVkI5aTRyand2cmQvR1habE1zbXhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmVRZlZtNkhPbVBMR2dXMENFL0FOdVJkaVRwRUJMbWMzZDhaRXQxVStaVmo2?=
 =?utf-8?B?R3dndVRRZmxzOEQ2bEh0WDJTaXFkeWUrTnZxblgwakt6dTJzTjRkYktrVFU0?=
 =?utf-8?B?QkhJZmJnTFEzMElIRXNscjlBY3M0dG1JanBvdzJCaVB5Wlg5dDlyS1V5T3Zx?=
 =?utf-8?B?S1gxU2l6ZEx3bys1RWkwZHNUSWVDZ0czQlprdldjOWpmb1ZEazJVRG9KY1M5?=
 =?utf-8?B?Sk11bGJ3UmtjMHNhaG1hRnRycEZmSzVmWStvY29sVjAzV29NWDBPSHZJZis2?=
 =?utf-8?B?YldhYUhTS0cwVHdhWFFuUDZNYkFWU3BQck94UkhReDFxeXlUdHF4NFY4N3pH?=
 =?utf-8?B?Y1RIMFk0TlFnNFM3RGkwOGppRTVVWThCT2RSektjM1IyU3YzbWlSV1NIaGNy?=
 =?utf-8?B?eGZHODdnS2RROGNYbmRMTlp3dm9Bdy8rSG54N0JRQ1BCazNodmZqdXBlR1I0?=
 =?utf-8?B?d3JrN3hTUFZLYm1Ma25DVEdTelNvYlI1czlYdW1PcUVUNHNmQmpCU3hzdE11?=
 =?utf-8?B?WGZZNlNzVkpjMDEvYlIxMXJWKzh6dk53Rjk4Q3hCa2NpcUZsT2NRUGJEc1cz?=
 =?utf-8?B?S1VZeVowSTZhTTlUUkc1UXQxemdmMThadWhNcHlSUDMyV1luN0Z5bytKcUxa?=
 =?utf-8?B?MFN1TlBKZDF1a0hiUFFsTWZkT3U1K3p3K3RLdTlsTzFJQWV2TnI3RnFQRE4v?=
 =?utf-8?B?OFp5OStTaFZ3b2hncGVKMWFEZXBjVW96ODg5MGtlZG1JWTdVZlNFNzZvbEVq?=
 =?utf-8?B?b1RObTc5aWJQSVdHRTd4enhFTlA5ZjlsM2NxQjkxZmhNZmo4WjJHUzBXSEFV?=
 =?utf-8?B?ZUo3MjgxTCtoT2EvZ0lpM0R3czZLbkZrakVZYXdlem5NYnVRdUo3allBd3hz?=
 =?utf-8?B?S3ZsY1VGamd3RmZ0RElrUFJMUFQyQ1ljV2wvSEh1QnA1K3ArYlNvVERIRXM0?=
 =?utf-8?B?MUpzS2w4L1JWOE5xbnQvMjFKN0J3NUVYM3BlazVOS25Fa0dMWGxMRWxEV0Nm?=
 =?utf-8?B?Q2FIVVlwS09QcVNPOCthbmxMdWt4YnYzOWhCZjVOOHpLMGlGS0FlUzBXTTMw?=
 =?utf-8?B?OXBnZENmdnJnL1RqYnllZ1N4Ui9IQmJ2Y3dsSXQySFFpQVpZZWhvQ2FqbzRl?=
 =?utf-8?B?RTJJOGtOT3g0SExSYm9MVFVaY2VkcEdhTVh6NUpjMVpOYTJGaVJLNVhXS1p0?=
 =?utf-8?B?TXNwLzdEY3JsaXQyams4NHdoWFIxYVdvU1NxUjVCUlYxQ0l1bjFiTkJjZHUy?=
 =?utf-8?B?aHBSa0Rkekg3bkJHcnpuc3ZwT0lObzlNSUhzNVp5VWN4YUxsa2F0NDhnMCtK?=
 =?utf-8?B?UGxDMkdWc2FDT0JWb1oxb0JKWldYZTZnQjQxUitNUFlmUW5KTDZ0T1RmbGNj?=
 =?utf-8?B?cDVKWlpZbjhSVXZaemlYTlFwajNmTHJ4SDV3VGRMU3JwbHFNTzdJTExVY3po?=
 =?utf-8?B?OGZIUFNhK1FqelVtQWU4dnVZYi9nVGdrV1J0R2xvRGdmVkpnQmdLajJHUzBj?=
 =?utf-8?B?NjQrc1NueDAzMUFqbzhaNWpzRk11b1l3RVAzbVV1ak1ZS0dyd1lEMWpYeU9v?=
 =?utf-8?B?c2FIYjR3RHBDdzJVMnVsNDlMTXFCdFdOQlQ2bXBONWl1MW1oL1ErcUhsaDYx?=
 =?utf-8?B?S29MRWV4S3F0eVBOWnRETWxVS2pjdVFvck94akNkRy9CTHJPK0M4SVZDdUpt?=
 =?utf-8?B?TVJIT0s1NWRHMjFBcm55SnJRdlhZUEhTRm1wd2tTVHNnOERiSUR0TXlMNjJB?=
 =?utf-8?B?ckZ2ZGw0NjhWQ1dpTlVnYWdrd3d1YWMxKzNXY21YMDk2dVk5eHhwVTJ3SlUv?=
 =?utf-8?B?MFdjT3pPeVpCSkJhd2Y5WUdvWWVEV0FpNXhuaFg0emtneTZNNHUzSko1blN1?=
 =?utf-8?B?THV1aXVEQlhIcSszaTdISEk5N25PaW56Nis4ZHYwSTF6NUwwbUFuajVlVkhv?=
 =?utf-8?B?SENRbldsaVdidjZmbFNvMnkzaDNNMUNnSkM4VThKTXlmaGNRMmR1TmlPUnNx?=
 =?utf-8?B?OXQ0TTJpckRYdWhpbkk0aDYyZ20wOWp5R0psSERyOFFzc1djVkxYUDBxcFhy?=
 =?utf-8?B?QUJIOFNiODUreXJVcXRKNDdTZllRYjA0aExUSmkvdEdyeEVqZVBjOXEzYUJn?=
 =?utf-8?B?aTM2SkVOT3kwSWF0TjB4a09hV2I2eW5Mdm5JcUZHc09uL0dzb05lQ1JrQ2Zw?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a7e0fd-c6be-498d-94ef-08dc81555877
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 09:37:53.8851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+RKJcD5vB1uKLOS+9LA7a0r77cqOwJwTmm+pAuWdg5R52fECCllQ2suUaMd1p66Xrf5FkBQxn/0zqsR7r9hBZiIHZGgXsPRBKt2yxYhWfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717148280; x=1748684280;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0TXdL0uYAVLDtXlyj3SaOnmtEUnSbw3hDDnfxxxsE5o=;
 b=X86OT9BSJj+RNXctpNXcvK/CqV35VqhnbLozfLARiHwTgXiAMns887ie
 hClOHwfgvPHUTNyhRwJHNNCPaqLnBc9D5pL5/c1Nl6056UWJxdu8vc0AU
 oASalFeTQsCLjELFZ5jkGoSHJq94mV7JJDL+fjUjSeYNb40RMs2CCjSYS
 wi11UivOTEWZ63JvhYmdSP1a0gb4573jKHACPmzXBGWp0Cul4v9ucLWxx
 4pAQj9hUcB2m+8h0CWrkHxPwosRsC2FQN8sqi/kZvI/btzZeMJj4ehwNh
 tZ77PKU2O44vQRsaR0msiwuy5vCxzDORaTZB61nqQBJYxrNcc+aP5xFk3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X86OT9BS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.05.2024 09:08, En-Wei WU wrote:
> Thank you for your reply.
> 
>> Sorry for being unclear. I meant, does resuming the system take longer
>> now? (initcall_debug might give a clue.)
> I've tested the S3 suspend/resume with the initcall_debug kernel
> command option, and it shows no clear difference between having or not
> having the ice_init_rdma in ice_resume:
> Without ice_init_rdma:
> ```
> [  104.241129] ice 0000:86:00.0: PM: pci_pm_resume+0x0/0x110 returned
> 0 after 9415 usecs
> [  104.241206] ice 0000:86:00.1: PM: pci_pm_resume+0x0/0x110 returned
> 0 after 9443 usecs
> ```
> With ice_init_rdma:
> ```
> [  122.749022] ice 0000:86:00.1: PM: pci_pm_resume+0x0/0x110 returned
> 0 after 9485 usecs
> [  122.749068] ice 0000:86:00.0: PM: pci_pm_resume+0x0/0x110 returned
> 0 after 9532 usecs
> ```
> 
>> And ice_init_rdma should be moved to ice_rebuild (replace ice_plug_aux_dev)
> We can defer the ice_init_rdma to the later service task by adopting this.
> 
>> You should call ice_deinit_rdma in ice_prepare_for_reset (replace ice_unplug_aux_dev),
> It seems like we must call ice_deinit_rdma in ice_suspend. If we call
> it in the later service task, it will:
> 1. break some existing code setup by ice_resume
> 2. Since the PCI-X vector table is flushed at the end of ice_suspend,
> we have no way to release PCI-X vectors for rdma if we had allocated
> it dynamically
> The second point is important since we didn't release the PCI-X
> vectors for rdma (if we allocated it dynamically) in the original
> ice_suspend, and it's somewhat like a leak in the original code.
> 
> Best regards,
> Ricky.

Makes sense, let's keep ice_deinit_rdma in ice_suspend.

> 
> On Thu, 30 May 2024 at 04:19, Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>>
>> Dear En-Wei,
>>
>>
>> Thank you for responding so quickly.
>>
>> Am 29.05.24 um 05:17 schrieb En-Wei WU:
>>
>> […]
>>
>>>> What effect does this have on resume time?
>>>
>>> When we call ice_init_rdma() at resume time, it will allocate entries
>>> at pf->irq_tracker.entries and update pf->msix_entries for later use
>>> (request_irq) by irdma.
>>
>> Sorry for being unclear. I meant, does resuming the system take longer
>> now? (initcall_debug might give a clue.)
>>
>>
>> Kind regards,
>>
>> Paul
