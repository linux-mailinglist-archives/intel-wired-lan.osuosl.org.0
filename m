Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF198AEE3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 23:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3800A40496;
	Mon, 30 Sep 2024 21:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yqmp-ogIHXKM; Mon, 30 Sep 2024 21:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 432FC40291
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727730896;
	bh=auQCOCNnsztJCRTdCCAjA5vLve8JSMkxuvP5D06ofLs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O+YyI1gIrheRBplxfxUbQRXrdNw0dxcPx8UEGRdadESO+E7aJJFvCX0PKsk7TP5Cx
	 hMAE6pNe5zJPeQKU3VWNroIuaNSqruhu3skgm5BW7bSN30WQ06sTP214xzlHDFx23n
	 Jhcfg90X1CiqlbDXHH24yqGwO7BG3ppjyEaBB/aLodlTnEVifm/nC6GSBTmvSREtGL
	 Hyp9Yubj1i98xPY9+pP/3FKDyL2qaqJUs75PInWVifOMqClC0IPmYy61MxkZX26ROc
	 cxEzMNBStrhupdYe6B493nQD6fhTiXyAyh6jwOamivS5f33Yh0cNKyYiGZP/pfglW7
	 WZXQjtZ4ERz1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 432FC40291;
	Mon, 30 Sep 2024 21:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09CB41BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 21:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB9D0401B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 21:14:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ih-Aq6K4yFDA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 21:14:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3BB5400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3BB5400FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3BB5400FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 21:14:52 +0000 (UTC)
X-CSE-ConnectionGUID: Nl64D06XSLyKbvBed6EaYA==
X-CSE-MsgGUID: IDX5fNNUTnm2zUcBkLCWIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="37407119"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="37407119"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 14:14:52 -0700
X-CSE-ConnectionGUID: CMjHNpF2QFqa24JcPsz7Yw==
X-CSE-MsgGUID: y6Fz/6KzTsCnd9allidYOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="78284756"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 14:14:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 14:14:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 14:14:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 14:14:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 14:14:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j8Xy6FoGl0Z+KO58tSl6SJmtJl2t7rqeeHE0QHWZrew4Ob3VtxJ/sdAHS0R382wUeonldS2l+/waU6mV1KDLqsgtlVmA5U6Q3k6UAfNdk6pNgoGjAgYqvJzOrtuNz7vZrWmYFqZzSJhaHchSkhRf90Uts1dxkowetYUY9NX2Fy06ZKqV2rPn44WqVIyMqwekP1hSyk9nrT/yZdybyrlX7pOEAEdTj216fK362QoRuPSF4TiuTo+2jpsNRSFLBFft/Dnxoymnhu3M45h+6UBk1xQcIcSRyGWaNR3A3SRy1dfxCNGd5fo+ZU3uSD+1Kf4Ide/ODJyeCno+LXAcx9PFbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=auQCOCNnsztJCRTdCCAjA5vLve8JSMkxuvP5D06ofLs=;
 b=fx2i/kDWd1mu0nJMZ5Sw4yloswC5zgAQc3Mzew0gjb2nudrqJrV/WG9e06lUFAXrL8FURVnLc6T4/JO7rsZtDB0ycZPOjQFKC0w0xgj2lhRLZmKHoDQv/NgACVqiacFe+6fwAZcdHrsPOnO2cscxzyu31E0QO0kZNCnteVhGW+Nvbek5LT4StghwNCQCZLD6vHNvv90PbbjKQ5TMbrjg3wXP7izSYtUn3OSPRx0URYjx8cGY4NsMf7GIxL5w2dqYX4TR5frP91lhNhOFVaccfq3E12obUQJSrc8rEVFWOcreg2EcJcaa9xCgUvjWoyCzDqWL0yPq5N3uTkFYzitM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 21:14:48 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8005.026; Mon, 30 Sep 2024
 21:14:48 +0000
Message-ID: <5cd9480f-1d26-a98a-5e56-1e827a64fddc@intel.com>
Date: Mon, 30 Sep 2024 14:14:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Julia Lawall <Julia.Lawall@inria.fr>
References: <20240930112121.95324-1-Julia.Lawall@inria.fr>
 <20240930112121.95324-34-Julia.Lawall@inria.fr>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240930112121.95324-34-Julia.Lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA0PR11MB7791:EE_
X-MS-Office365-Filtering-Correlation-Id: fca475e3-d57b-4f0a-6f3a-08dce194ea25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NlFlNENlTlV3dVVoR1hWVUFHbUE1SFZpVFhDTDVzNzgvUU9DbEdBLzhwTWw3?=
 =?utf-8?B?clUxTkc2aFpaQS84M2Uxa0FmNUJTeEFjL3VkSmVRZW9ieUNwdEI2YUp5OGhT?=
 =?utf-8?B?MmxtcElBWHpkYnBWUFh3TWgyWVd4b1ZZdXdLazllVm04VzdOZ2ZoVEZUUU9P?=
 =?utf-8?B?eEdVbU5sTWxqOUkrNDV5YmIwZyt6TDJNK0hWKzRQWVg5RjVRV08yZHl5eXBk?=
 =?utf-8?B?K25qUW1OOTJuUUY2dEF5dWlpVGtSWWpVMnd1Y0JyNEg1Wk96VFlQZjQvMHFt?=
 =?utf-8?B?Q1NCd1BFbXZFczUyNWFWakprS2toZExWSnJ3Ylp2dTJJNzVNd3FtYzMyTklB?=
 =?utf-8?B?R2daZS9XNGxObVRMckVVVDRnNVh3RlZkcEpRVlBON2RwMXByVEZYOVp0RThq?=
 =?utf-8?B?enoyUmRjS0VYWm9pMG91cng3eUFyWHFaRCtaNCtGQ3ovYmNxalZXUFUrUjJE?=
 =?utf-8?B?c0VxZEpVL1VPNTNHcjA0U3BDZzByeUxXMjE3WlNaWlZ1VHpmNzVWYS93Mm5C?=
 =?utf-8?B?ZWtDdGtqeGtwQmFoKzBPTW1VTXBONUphYWIvYlZnQXVBTFJsRmo5a0xKWjZ6?=
 =?utf-8?B?UW5vSVQrcTdtcnBHV0FMWGpESDJwdzB4cENJdUZQSWVmMHdmbVhBWFRXUEJL?=
 =?utf-8?B?OGJaUmFCQkZNcHRCVXVsV1pLc2RHVm8zbDFGczUzY29tL0VzaU9EVkRiRDNB?=
 =?utf-8?B?R1hpZU0xV0xoZVh5TWlUc1dYOVdXZ3dGQU1ENjRVd2dMNXpSazdoVEdyMWk1?=
 =?utf-8?B?QkZrQmdqQU5LUmlEcjJOVkFPSnV2UEtsTHk3TXI5eGZ2NzJpYUNXTVJWak1T?=
 =?utf-8?B?aEtyVUpnai83TC9TTGc0dHg1NXcyRHVtcW5aVDBxd04rZUNSRmVudDdPdmJD?=
 =?utf-8?B?N0I3dERma1RORzN2ajBzN01XQlI4ODVGdDRoOXpRdSsrdDhVUHZYZW1pQjJS?=
 =?utf-8?B?V0YvS3hNNXM4ajJUaDNQcmhhMmViNkRSS3o2NDJ4UGY4SW1QVUdXS0piV0t6?=
 =?utf-8?B?aWJmNHFacnpHei8xK05CRnVUZmp2Zm9PWWZIUkZvYnlTUW5randtZUk4MkEw?=
 =?utf-8?B?djBydDF4ZFREK1Q4TTkyVEJxQmlGSTdZWUxoa2p6Y0s2OElrdmlscllKamho?=
 =?utf-8?B?U1NnaEZxY1pJZWpzQnVNWStQV0NscENZaE1hTW9EL1pMQmdybGIyTnlTZENI?=
 =?utf-8?B?VFBhRVJ0eUkwWkVKNWp3cEhMbDRTbFBBYjhrWjlsLzNVK3FwQ0RRT05pR2ZO?=
 =?utf-8?B?clR2MW0vZEVENmk0WkpIZENBZnE5b0lzeHRodUV5b2VvMjNGdjVLcURLenpv?=
 =?utf-8?B?VXRHYktDNEhpWHZFK2l2WjhEK1YyKytiMW9DbFYyR1BnU0RtdklYTnZuWHBz?=
 =?utf-8?B?dTA1L0U0UkIzTktudGczNXVZNHhNb2x6QzF6UUg5cnBZZSs5M2hSZUxTRjdS?=
 =?utf-8?B?aVcvU1JHMzhVVlU2TDlLYjdlUzdicmovU2hOY3E2ZW03QzR5dU5QbjYrcU1o?=
 =?utf-8?B?c3l1SlBtN1BuREx3M01UUklwbHMxY2puQm5RNy8yeU5jY3JwYWtEVnVyc1Q0?=
 =?utf-8?B?ZEsrNXA0K1dWOXJETmNDblJIQkpuWitJdXRpNlg5RjhwbHl3QWtyQ0Zldm9v?=
 =?utf-8?B?U2RiejhHRy9ZM1dJY2U3dE5ETklnc0tHVWZLSU1TbzlBWS9WYXFvVVdSRDNk?=
 =?utf-8?B?OVd3QnowQWRuZzBqQ29aTy9lMDlqRlh3UTBkSEdBaU8ybVNuZkhpY3lyUzNI?=
 =?utf-8?B?eUd5WFFrTk5rajI5NXhPK3ZCc1dRWEJPTklkNjBJMXJnamh2Zk44b0tSelJK?=
 =?utf-8?B?ektOVXI5eHEzR0U4ZmRGUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXFlaWkyei92a2hhK3N5OWQrdVpLU1lLaC9Icnp2SVNpY3pnNWJHaE1RMmlX?=
 =?utf-8?B?ajZTRnM4Q1pBaUhDRXA0RWlnWTVWWWk1YlREcjlsb2xLWksySjI3QkJBU2RY?=
 =?utf-8?B?SnNsSjhoK0FldU9RMURsV1RiOVR4c3B5QTZ5dUVMdlJIQkZSN25rT1ZQNndN?=
 =?utf-8?B?NGNFcDVjRTgzeWdJNEJRVDJHNWlLeUFhR0NNS0Q4SmtUY1ZSMlFxQ0czWU5m?=
 =?utf-8?B?SmlUeGk4b3FQYVpsZ0I0S0dWcWJQL05FaXhNakpqdDVOZnFyR3FrVmFHTFFT?=
 =?utf-8?B?SW1KUkllWElaWjBlUTdQc0ZNdGRuTVBHZ255WlN2WnBmbzRuTWU2azNkSnU1?=
 =?utf-8?B?YXBiU2haa212N3VaN3d2dHJ0cUlrd3Ixcng0bVZlZW1WeHg4WTE1RDY1aDBR?=
 =?utf-8?B?UVdpTGFTemNSYlpLWXBJVXZKdk1GVi8rZXpWRmsxNGRCdFdGSm5XUFJzVWNI?=
 =?utf-8?B?bkwvaG9yamFIOEc1OE9tMEs0U2NpZHNnTTlrdU02NXc2UjJSSWIwSXpyZkZ4?=
 =?utf-8?B?L3o3UHM1TmxXdUx6czdVbG5LZndhdEl0OENoWkdSM1k2UEJubGRsZHVCay9B?=
 =?utf-8?B?SndkRlVxbXltbFFQd0FjYmhESG9pbk1HYkZXajlRcndsb2pCRmp6OTVzaGQ3?=
 =?utf-8?B?OU9wdlZsY0V0aFpCMXNLa1VvR0VMbGUxeE9XUDNqNHpuTDAxcE8zTHB4Snlr?=
 =?utf-8?B?cUFDMTBiRnFuRldhOWRQbVJWd1M4ZnFicURhbVJUQW01RE9oMkZyOHFVWkdJ?=
 =?utf-8?B?R05Pc3Z6YTZDY2ZQcGNUbU9ueTMxVDI2ZjFXVnBPb3YvNTZJTHhtbk9zUE5o?=
 =?utf-8?B?eDNKNC9oOUM4Z0drTzJtSDRBYW5kVEdzbWRMUWpyemdrTklucDUrNmVkNm5p?=
 =?utf-8?B?TmVqRXQzUEZGem9aNDZXcDNxU01hTE9SM1liWmhINUMyVm1kaG1EUTdlN3lH?=
 =?utf-8?B?Mll1VW9PakFvYnorbXBtTjVJRzFjVUthYWFZWGxnTjR3TkRvTGNiVzEwclNq?=
 =?utf-8?B?NURuZ0ZBYlM4WHVsTmNJUVBsN3k4QkRoT29lMWJITHM0WG5HTDFHOXZlc1Er?=
 =?utf-8?B?clk4RERrbFRGdFY1aWdJWFJhSkROZTJNejZZSUNGMGc1RDRiOGx5LzNwcTlk?=
 =?utf-8?B?ckh4MTY0bGFsNy80NUNzUzE3YmV1Rm9SR05DdFRrK0pBYjZFakJzRHVaZUpa?=
 =?utf-8?B?UUVHY0RwbCtGSFhLOVBZZWowdGxabVpTeXp1NkJNc2sycXk4YVozdXMzSmd6?=
 =?utf-8?B?VUszSFVyUnB1bFBzS2szeUtSSFhqZTFXYXdkUHRjaytwRWgyN1F0UytHK0to?=
 =?utf-8?B?clVNc05KVjNEbWRmNjlITEd4cjk1QXI5TGk5eWFraEloNTdMZ0o0eGxWMHhs?=
 =?utf-8?B?U09YSFRnNTF5YzVsbkI1Vk5MaUlnVzNkS1JmeFp3ZFlJYkNOdzZRVlhpZXlF?=
 =?utf-8?B?SVJzYW9IdURjTFhkYVBIUVdJbjBmZUpUdTJ0bUYzRUtxQ1JOWDZzVStVTVp3?=
 =?utf-8?B?UStoVDJxQzl3ZnVOeUV5U0Irdk5henIxUC8vTXRwblhnLzJha0VrcHpqRlpK?=
 =?utf-8?B?WHQxM0dQdXJBUTMxNnFwYnhlSnErTEdZTThSd2xncGxCZnFZdzhmUjF0ancy?=
 =?utf-8?B?REJtbHBITnJ4djlZRGoxcktvdkhQQzhZb0hPKzR3RXBqdCtlZmx0Tk1rNmV3?=
 =?utf-8?B?VDJ3eVhDcmw2QTdxQ1VBcUUwWjZ0SzZka0FIU2JKWlVUL3UxNHpRRHdKMkRx?=
 =?utf-8?B?YVA0NytabUE4Q1ZJaGZsaVBHL3hKYStRT1dCKys1ZlM2N0s1Y2l0bGpOYmNE?=
 =?utf-8?B?VUVwU0I5ejZVd0xGSG83eEdIeHVKYnA1MDlpNWphWWZGa09HV0ZTTHFpK3I4?=
 =?utf-8?B?S3p3K2RIYkpXY0NZUEMyOTdMdmR2V0pSSHlWWXcvRkdOaUNia3pTSTNRVkxB?=
 =?utf-8?B?T1kxYU9INnpXdERxS05pcGN6RWN3TTlwZldyR2RMMXJNL0RNTm01eENXUm92?=
 =?utf-8?B?K0FNTWpUWVJpWjRHWVVuK3lwOW9RdkRLbFlqK2pqNld5ZmF3KysxVzMwK05w?=
 =?utf-8?B?TjlOVjVXRk8waWJXTEJ2S08yZDl1bjFPclYzZ1R5ZXNxb2REQVNDNFE1UE92?=
 =?utf-8?B?bTRWVzFhSXU4bGZyQ2FwN0RETTFDRUdWN21kaDR3VzJJMUVwOWpTSXlmaXNn?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fca475e3-d57b-4f0a-6f3a-08dce194ea25
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 21:14:48.1235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7H1W3CJj8fsR/3osC91ZFLsXi3oCwPUoFayo6UdNbeuvHVZBulekDFnp0lsDp+YJw/2ZXJOAHUwPV8dWSlmpW+giTNxV7go8XnhszFWP4e0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727730893; x=1759266893;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JxOPx9ZLtIOMHg75PhesuIcG2dI4ZMEBUA8iapD9aEk=;
 b=dWK4bo0AdEfFIXYoyGeH4cLnFwisZ9AeRuKyepu2RSE57neWs3JNf8yQ
 gjESNjxvApl3hvVPNaeca5MjLyzjNITn0RYMN9/rUiPfNn6FBmZCUM3bT
 /vSQ6oypTYprDV4ha2rXVpmxvyFhILmRdWwU/WFXKo3upq4wMqvBPk4iD
 +h6zDQXS23LQaijAuov9adKi4UpPSwcmePRCRIRzccmYIM343fqEXmSCz
 YhF2uFfG7XY/GTepUIVETBSTNJpMTSRCdYP/EijH3tgwZKAz6NiRtgZ+E
 0chbE44NyaL4bGIsEpVJV5QtVlon7w7Zrxdk/QLFGly7eE7n85z2UhpxK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dWK4bo0A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 33/35] drivers/net/ethernet/intel:
 Reorganize kerneldoc parameter names
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/30/2024 4:21 AM, Julia Lawall wrote:
> Reorganize kerneldoc parameter names to match the parameter
> order in the function header.
> 
> Problems identified using Coccinelle.
> 
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> 
> ---
>   drivers/net/ethernet/intel/e1000/e1000_hw.c     |    2 +-
>   drivers/net/ethernet/intel/i40e/i40e_common.c   |    7 +++----
>   drivers/net/ethernet/intel/ice/ice_common.c     |    2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_common.c |    2 +-
>   4 files changed, 6 insertions(+), 7 deletions(-)
