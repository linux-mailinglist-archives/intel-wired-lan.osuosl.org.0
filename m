Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AD9AEB88A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 15:11:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CC77612AF;
	Fri, 27 Jun 2025 13:11:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GPKxqW8HjQVf; Fri, 27 Jun 2025 13:11:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76036612B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751029864;
	bh=uDODUuBygbjKvf2slUG4BdvXSBh4m8I/qUfI2H2oiN8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VXX35ou5CPdstifHVUHfzMt8pWRh2NwQsEhu7lmgEXjR9/2xG3vLX2bQacUX234t0
	 f6jkegoFd2JzVRuIeNWcPQ5S1+e3cp6SCo2QY2bCQEBvzKlhDTtwhQYXbcgJTeFhrE
	 Jn08OEKtBNDaw6es6R7Pi+mG5Zv5TvM02Aqv3dzAZuMrXI0CDLn7AuS8mLozY6He9O
	 zweC2hvOCSwIz0IwGX7+3BipU7THRk5ni59Bdhk6Icpw+Cv0Ef5BkDLLC3tRPW1S4v
	 PD7iwYKfNwwDvEEma9ieDXP+m/XITpBpnDfsp7A5E2hQoCBykKJLHuLkdvzONIIZ0k
	 khET+ZuqGzMcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76036612B1;
	Fri, 27 Jun 2025 13:11:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 518F411A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4355C61275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFxaxLYsH9pO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 13:11:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 347E9612A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 347E9612A5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 347E9612A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:10:59 +0000 (UTC)
X-CSE-ConnectionGUID: joIadKH6Q7KkkIOxBUqdpg==
X-CSE-MsgGUID: ekg+1eajRpmclooRm3OtLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="70774699"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="70774699"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:10:59 -0700
X-CSE-ConnectionGUID: wP4T/NqRRaWF5bKvu2jSPw==
X-CSE-MsgGUID: CYnpLfupS6WF5J3R9YYDrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="183838268"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:10:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:10:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 06:10:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.77) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:10:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xqHEG0r6tTWm29+I6wVDHwLPJVf/lTRExxwxDBX2GiYs7+fbnUed4TAeTPQ/Ab8Go/hGXprhTiOeolp2sALbJ/H6khRgGLtfrjv6+LkV3q1/K50tlQThBxpcacGlQG5Q6a+QKLFscJJ7CbwQXtOHuhpk0O3i2IUf9qQQKpy85IYsqoxLzI4AA2m9D3dUbxN0hSWIrxBexqzEnyswPn0oa/IgWzWeIoPLHN33/ksBfQ76uQfz0h3rLCrRojbIdCvyobRQOl3ehZQ/sPzsRjsp2KEKrUWBiUgxVa9FdX9jg826xswlcsdGvMf9csMpix9QYMFWQBRQF6+r/1Rj7SVvXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uDODUuBygbjKvf2slUG4BdvXSBh4m8I/qUfI2H2oiN8=;
 b=D9gKyvpof2ApqwCHRUjTU0hMqSwurXZywg0YcL/XcwOUBk0ch5ToKDNAVYDKmhXGGleRmzY3YldxWpsP9N+34a6GjFlcnoc/oGJ7NGvOBQjQ85vxVBm79z/NLBGuLVA/tRYLUIZ2E/8vjj+VO7EpBmyTFdhA9LhXjNp+rB+puVqVv2f0CwxiVVgyyZxTxSf7oLxnv9ia0QWZurX6EnCrGVYgTZwL/BRC6RwpM2XJuUR3Q+of7smytm8m3Uji0OoW2ujUOU7wuy6QIdr4z5rp1DznbkzKlvaIEP8HVyToSRQA/Q1L1+iWiICTd44AD57RnC5EPVLEW9vc0dgmLxe/nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB7565.namprd11.prod.outlook.com (2603:10b6:806:344::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Fri, 27 Jun
 2025 13:10:26 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8857.026; Fri, 27 Jun 2025
 13:10:26 +0000
Message-ID: <cb1ef2d3-4750-40d0-85f9-df6a8ed3ec22@intel.com>
Date: Fri, 27 Jun 2025 15:10:21 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Luigi Rizzo
 <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>, Madhu Chittim
 <madhu.chittim@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <20250625161156.338777-4-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250625161156.338777-4-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB7565:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b81c7e9-1b05-4731-e595-08ddb57bfbb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDlFbllBTzAvQVp1RldFZEJSL3ZkMXdIeXp4QlpBS3l1WFJDR041Y3NEQ1lW?=
 =?utf-8?B?ZU5JK01uTEhDTzJIZERKV0ovckxsVWF4cHJlaTliVzNIMENnZitXdHFqRjZW?=
 =?utf-8?B?SFAwcG9NaGwrNDdzcGRnWFNiTmNyWldwR25wcVQrN0N0a0FEQlg1MFkxYjRp?=
 =?utf-8?B?UEd5Y2Exb2dJQm1LdVNsUExqUVJGWGl3VEg0bTIrb2t2QVNHQnNBKzl1amxO?=
 =?utf-8?B?ck9qZTYxbHBzRDNtNDZFdDZxWmkrek5PMDV4K21aK2ZNNFpteEJJRzRkK0ww?=
 =?utf-8?B?Qkkrb1Z5MUwyVG91RDZLUmJ6dFRsY291NG1GT3NvWlFRa2NtczZVYXpmNU5Q?=
 =?utf-8?B?ZjU0NGJuUzZBQ254dWtpMzlYZzkvd1JaZXRtbkpjNEdRTnZmNXZlYkxUKzlZ?=
 =?utf-8?B?NmZGMVcvRTd2STUwbmloc0xFOStuUVc3ekVITUllNHQ0M1NDV1ZBb1NIR1JE?=
 =?utf-8?B?ZjN4bnNEZW1nMjIwTVdCSzU4Z0d2KzEwOUVMM0wycytHTWVuMjExWnNhcU0z?=
 =?utf-8?B?VEU2MjdKcDhrOFA5cDZXdXVWNzNqTmRvYXNmcUxxVXRDL21oOExxTENnbEkz?=
 =?utf-8?B?aXArSGd5blFXWnVEL0dyRHg4OWRlZjdINHhYTEFiNFYzdnhEVWpYUElEZXVD?=
 =?utf-8?B?TXJncFZNUm5jVWFId1MzZXRkK1FHeEg5OWpyUjFDOFZrTnV2T3ZoTHM3REls?=
 =?utf-8?B?QWFCQXM3NUY1OTYySk84N2l1cHBpbjhNVVpkREUrU2hNTWwrcmVWNXAvK3dn?=
 =?utf-8?B?ZVV4REJVZFBQU0k3OXJVQ0Y4b2wrNGU3NzVmUXZ1L0NPT3dVNUEvRnFpb0lH?=
 =?utf-8?B?K25qZlE1ekdFa21YQXlObE5EQVFPTWxhY0oyNnZxODF1NkhRemV1bkN6enpW?=
 =?utf-8?B?cFgreTVZczdCUDRvV1J0aFRPeXlHMWk0dVpxN0JjZFFtRlVPaVdqVHQ1Z1do?=
 =?utf-8?B?WG1IRnZHQy9vc3U3bDRDWDdmOWFRSTNLTFNnUk9vS01UV2FJTFhGTUQvaWxm?=
 =?utf-8?B?bm5HcGZ5OEhUS1RGa3ZsKzVlNndoOWt1YldqRVlFZ3Ywa1ZCbVFTaDBVSHQv?=
 =?utf-8?B?NmR5MkZLUE9qVC9oTi80enZ2ZGFRVjVGRm1GRkUvMHlIM29hbHZ3MWpDQ2Vk?=
 =?utf-8?B?cHdheEFaaTdGbWFucjZob0VNaUNBM2dPdTZyc21hbXRiWXFTMWxzWnU1QkZZ?=
 =?utf-8?B?QjJoTC92bGZjcDdpYXc4V2plKzBkYW1hbDBGTkVXdTBMc0tSVXhsSzMvUDJH?=
 =?utf-8?B?cVRzS2ZaeFpMcStBRXFUK2wwT1JOUm9WMWdNcDRXZDhUK0hVbnJLZUdpdjdV?=
 =?utf-8?B?V3Z2cW9lVkcwMmxhanYwWE1pa2FKSjVQWkpyRCt2UnQ0T0ZjeGZWc3J3Uzds?=
 =?utf-8?B?Vjg0VzRwdmZZRGhJRExpZ2hZZ1Bsb2o2VHlXd3pzWlF0NzVyVlpFMm9YK1Jo?=
 =?utf-8?B?dTFSYXVxUnN0dWt5OUNvZ0Zpc1V0eVgrck9oL21DSVlDZmlabXFpR1lyelhh?=
 =?utf-8?B?V0FlNDBLM3lTVkRjZmNHSkxoMXZxS1VKQVlNRmtaRjk5di95NlF6czY3aGZr?=
 =?utf-8?B?eWxmYjFGMjcrb1pmMnBUdnBtL25JWVhkeFNobjJBaUJZeFRheEVZUlh3ZmNq?=
 =?utf-8?B?SXpjN2NtSGFzMDBlVmVKQy9XSGpNQVQ5ekI5Y1R5c2tGMXZMcE9pZ0tZMThR?=
 =?utf-8?B?SlJKK3ZJSGZ0K3BtK1ROWGYzcklBdDZCK3RTVS93L3dUQzB1U0phdGFnZzh0?=
 =?utf-8?B?VDlaUHdMcGF5ZW1XT1A4YzhZTFd1WDJJOUpnQzZMSnNMa3lnOEdXSTllWFRS?=
 =?utf-8?B?QWJIZWtiRTVtTWNFRXpDNE9GVGoxYzhMNjQzb2VPa3NsY0lsWUZjTmJjOXl0?=
 =?utf-8?B?SldIb0VwdnZ6OUtwcWxabVF1VnV0WVNPNkx4MnE1aEk2c005NEFiN2Z3dGdM?=
 =?utf-8?Q?f6U4Ia0tgo4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkU4L0dHOGRGTVVPNm1CU0xRem9scmlRcmdMS1hIT21IalhVSUYrTlJHY3pN?=
 =?utf-8?B?aitQZWJWNFZYOEdxTTNwSlc1V3ZQZDBFQkpKbDBRYjRHcnZJTVRpWkVMR0l2?=
 =?utf-8?B?S1Q2c3lQdCtMRVpiUTFLODhMbUlFN3crRTBZbmZxZ1ZzRlRXNU5waUZRVndn?=
 =?utf-8?B?OFdvaHMvQ1o0cHVCZnIxZG9ob0p1YVNSU0QwT1BaRFRlVy9aNGFmSzhLMWht?=
 =?utf-8?B?MlNybzNHYng3MmR0MFZ5UmxlT3ErUTQrWXNzbTU2bURJWWtHcCtuYUJLYnNy?=
 =?utf-8?B?ai90L2l6Y2JudVJRbUdQS0pudzFrakpDaXFOamdEV2hvQVlqNkF0M2N0bDho?=
 =?utf-8?B?WEQ4Y2pzSkhEczVkZmZtbXdWYS91RnhwVUFDdjdkQTY4NkRjV21PZjlwUmlC?=
 =?utf-8?B?YjUrdEl4dmNQRi9hcUVXR08xVG1rUXNEYktCSk91d1M2VWQwOXh5RVMxRGpn?=
 =?utf-8?B?NGlIS09MUlNodFB6RmZkZDFVWUJtWUR3NnNxYk53T1l6QjgzcUp0aE1LY05C?=
 =?utf-8?B?YWRjMWdJZkdVZWRHUDFGNW05U1JCMjlCeGViUW5jcWZsN010MmVBRUFlNnU0?=
 =?utf-8?B?RFh0UkRUdmVVdE4xSTFueHFhK0lMckY0ekIxdlJaLzFJM3h6QUp5KzVYSUI1?=
 =?utf-8?B?RlAzZGdZRVlLYlRZVFFWNXF2dGE1RG1nZktYNlZCcUpUSU55R3VyYU92UXJ4?=
 =?utf-8?B?K09oVG4yRyt0OGRIbWtaVDIzWExhdFJsc00reHdWUFZzbFJvNmV2MHBWUlFx?=
 =?utf-8?B?b25QL0NPdXpUNUcvd2ZDZzdudGU4ZHI2RjJjSGNydHpzVmE3OXpaLzdNcDNE?=
 =?utf-8?B?M2RuNWF5b2ZZRHExT2NCdUo0NFNyV0xIL0Y3aHNvRDhZQmEvdS8zVGdySjU2?=
 =?utf-8?B?U3dFRXBmZlIvUncvcTF2OUdvd3hPdlR0V2FqcE5RZUhwRVRiZXhsQlVIM3J3?=
 =?utf-8?B?cithMkxLcFFEVXo5SkVRdUFqN2NDaHk3dWNTUG4vcnMzbS8zeVh1V2YzUkNV?=
 =?utf-8?B?NTlDNFZpOTVSTEFsSGJuaDFEMzd4VEtUQ3MvV0Z0Z1lrNzVCWjlMT3YweEJ1?=
 =?utf-8?B?MmtGZTE3cFFhb1Z2eEs2cm5CM053Y2l0N1BQelNMOXVJMTc2bzFHT0NNUjlW?=
 =?utf-8?B?eHRYS2dVSmxZaWl3UmdqZDZNRXpwZVRHVXgrWEpUc1R3OG9MY3JROUc2ZHJZ?=
 =?utf-8?B?TEJDRmpmRlpwNHBJSDhjTGp0eUNCZHJaSHg2bGV4RURMMUJKcGV6aS9hOHY2?=
 =?utf-8?B?QjludllRYTJSRGNnQUQyYXFOM2puWUEyRVlRLzRpcGorTDFYYWZoc0xHR05N?=
 =?utf-8?B?cnNDeEg4SkJTV3pVZmRmaUJtU1lObVJGbW1xQzFxZ0Jqb0wyUmFXU0k2YVY1?=
 =?utf-8?B?eUhGQUhqenRubmtjM2RnSlNMVEFqNThaZi80Z3ZCTTN2ZXlNNTdPTmJ5amdU?=
 =?utf-8?B?OFdDOXBVNmVkUnJWOXdGamVBckRPZjRiRlFQM2lHL3oyUEdhbnRhTnUzcHd4?=
 =?utf-8?B?ajhZWkJSejdkZ2RoY1IwNHE3NkRiYm85T2tFL2hwOExQK25CM3U0VWJUSEdX?=
 =?utf-8?B?Y3pZUDRjeDdXZFdublQ1ZEtUSnJLeGNKZi9YWjRPdmRPNXRxNlIvWk1nNUky?=
 =?utf-8?B?VjZwdXlhTTNyRDc2SVBzOXBaRjFpSkpENUY1SFQxNGd5eXFxcGtoLzg5REdy?=
 =?utf-8?B?S1hXZUxDY0FuSUdHcFFETlVrNGgxL1hxZ01XekMxU0VkTGtiYzc2NVI4OWRP?=
 =?utf-8?B?ZGlMWFcxVGJpR21YSkx3U2dVWUhkOTh1NHdvWXE3NGxnZFRsakVKZWk5a2Uy?=
 =?utf-8?B?ZVFRVlZsdmN5QXh2VmxZb3J5d3NXQlhzMWNtcjdZWEwrc0ZzUS9PRmU0UWFz?=
 =?utf-8?B?MEg3ZnhnMmJXVXpLdCtXQ3BYYXhsL3JIdE9Pc3kyUTZwUDVjeDZuS1JJTDlC?=
 =?utf-8?B?T3FRbFhMMWZuLytKNGhqeWMzWFRSR3d1eitqTVlaRFVYZ3lwU0Y2dGZlN2hF?=
 =?utf-8?B?ek9JTzZGVUFpNURzUVdnekFWRHJWbHloS1lYbGREa3NKS2JnZUNIZk50TW9J?=
 =?utf-8?B?cFhhb2YyOUxhL3JCM1l0N0VsK2lGN2tBYkxvUVQ0dUsxYWZBREtzM2I4OXBX?=
 =?utf-8?B?Ri9lZkY2S1pwSXE5b2JuUFh2VFEzVnA5QThEU0RLSzcySmVUNXR2eTZrZEIx?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b81c7e9-1b05-4731-e595-08ddb57bfbb6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 13:10:26.7784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a/gx1uw4DvjMG6eOjFY0B5y5fHpc+aziIZ/3INI4TKvzMfuTwRh0OOvbgZb32YGl2LfdHUlnwQrVp+AvF6gkVsekOybuHa9uXbX995YDP+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7565
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751029860; x=1782565860;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l5JOf6jOea+BZ1MDEIlTfRDOldwfFeR3TEA5a0YAsbE=;
 b=AmO27EUg9+3iTgQnwerFSvY6bntWbekAbZPFSJHWvWlhaDBwpHvoB57I
 sGcb4+Oiiy7EkcFVLCuW0CdmWQFqidXNjEcC90uTtQIpr5x0l5BUsPEgY
 LffWVanae5R3f3XdrUZGKCkPV+/18Rdy8vyyyTkofn4k/q+aU63rgjkf1
 ktVq++dvjWx2k/S6vFoT6Cea7YN63PXz/jPd8r1pGxLYFOtB/pN3BvPQm
 1e82UlbVMBcX6LfZ3eoLqfqIY/vO4hMZbeBBAab12vmL8EJR1AsHBhkQ/
 4ndrpmrV2NrJv99rDW1JnrHqnoyEfPPMXsBgS5kKf+ijxOfqroiBQRIWG
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AmO27EUg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 3/5] idpf: replace flow scheduling
 buffer ring with buffer pool
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

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Wed, 25 Jun 2025 09:11:54 -0700

> Replace the TxQ buffer ring with one large pool/array of buffers (only
> for flow scheduling). The completion tag passed to HW through the

[...]

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index cdecf558d7ec..25eea632a966 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -13,6 +13,7 @@ struct idpf_tx_stash {
>  	struct libeth_sqe buf;
>  };
>  
> +#define idpf_tx_buf_next(buf)  (*(u32 *)&(buf)->priv)

Align it to the next line, i.e. 2 tabs instead of 2 spaces.

>  #define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
>  LIBETH_SQE_CHECK_PRIV(u32);
>  
> @@ -91,7 +92,7 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
>  		return;
>  
>  	/* Free all the Tx buffer sk_buffs */
> -	for (i = 0; i < txq->desc_count; i++)
> +	for (i = 0; i < txq->buf_pool_size; i++)
>  		libeth_tx_complete(&txq->tx_buf[i], &cp);
>  
>  	kfree(txq->tx_buf);
> @@ -205,7 +206,11 @@ static int idpf_tx_buf_alloc_all(struct idpf_tx_queue *tx_q)
>  	/* Allocate book keeping buffers only. Buffers to be supplied to HW
>  	 * are allocated by kernel network stack and received as part of skb
>  	 */
> -	buf_size = sizeof(struct idpf_tx_buf) * tx_q->desc_count;
> +	if (idpf_queue_has(FLOW_SCH_EN, tx_q))
> +		tx_q->buf_pool_size = U16_MAX;

3.2 Mb per queue... OTOH 1 Rx queue with 512 descriptors eats 2.1 Mb,
not that bad.

> +	else
> +		tx_q->buf_pool_size = tx_q->desc_count;
> +	buf_size = sizeof(struct idpf_tx_buf) * tx_q->buf_pool_size;

array_size() if you really want, but the proper way would be to replace
the kzalloc() below with kcalloc().

>  	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
>  	if (!tx_q->tx_buf)
>  		return -ENOMEM;

[...]

> +static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u16 buf_id,

Just use u32 when it comes to function arguments and onstack variables.

> +			       struct libeth_sq_napi_stats *cleaned,
> +			       int budget)
>  {
> -	u16 idx = compl_tag & txq->compl_tag_bufid_m;
> +	u16 idx = buf_id & txq->compl_tag_bufid_m;
>  	struct idpf_tx_buf *tx_buf = NULL;
>  	struct libeth_cq_pp cp = {
>  		.dev	= txq->dev,

[...]

>  	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {
>  		if (unlikely(!idpf_tx_get_free_buf_id(tx_q->refillq,
>  						      &tx_params.compl_tag)))
>  			return idpf_tx_drop_skb(tx_q, skb);
> +		buf_id = tx_params.compl_tag;

So this field in tx_params needs to be renamed as it no longer reflects
its purpose.

>  
>  		tx_params.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
>  		tx_params.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;

Thanks,
Olek
