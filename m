Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2328B6189C7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:44:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 261806102E;
	Thu,  3 Nov 2022 20:44:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 261806102E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508286;
	bh=suqwtODYecz7oCgbWFGL0OtmvRx2/d89vAMB/3fd+xM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wMxdybNPfM5hlVBw2Rl9/4lQ5ZI++DNHSWfMFz4x8wjfp12Zu84dil6FwOVn+3hxo
	 zL3IXUY+zWkqDZRFknDE/4KDvjCBHdKrpNMdrY4XYPepV78PDEWPT6ajHP1R3770vR
	 +mTkJFtjlFtSNi7WjO922t0jkJlfj9maTB1djbJ40BGx7oYpikCDC0g+XfNX66HbQh
	 3aFO3vJS/TEFfmZGIuFcuKKr5nvwjs/HU9B3l2vWYqj8zfbzLn6CaBLSg1Ne1AICza
	 lbComHkwem8CyBbzQsX1wifb4oYlX9xX8GmrQOJ5bC2SYOr2PeNq1uvwBJhpqlfcZ0
	 vfHLAFNnVbnAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44psgCqBkqRk; Thu,  3 Nov 2022 20:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 398A1606A9;
	Thu,  3 Nov 2022 20:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 398A1606A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2241BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0181180C58
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:44:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0181180C58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NW-y6Hcu_3z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D53F280BC4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D53F280BC4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:44:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="336498273"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="336498273"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964082342"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="964082342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 13:44:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:44:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:44:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:44:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:44:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dn2jaUCaIzpxvIWUFIF4yG9+vmr0wavK0IZLvpsjhq7cuKZExVawGHpukYuYKfH/DzPmb0AzBGorqQPQ2SZBR9iYnDZUvdsFkYwG/GcUu1NNDnbfveCubjLFEmENM4jimHFEUWXNjFDTrlU+iMTvr2i20TvoQ3E0OcpB+cx4BF1W3ughQNy6Wh4tE03edEplr+GLuvsyDHz0Da1m2kHMd2OFL3ifKb8HvoQUQSjnRfQ6FTZxvU+i+OrhtGWbuRf9dWAYFxDRwYguSnaRKPRNTkVz9IXqUeQPjf02JqZodr3rClbMNOQrZMO6HNwwyMAgpccuov4bKNw+dasrwbxcUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15LPMYJqIm8SIIDbP7PajlxLysr3malsGab9FzjukBo=;
 b=JkzUGWa/o816P8cXVag0EcCtDbLM7nd6XxBffSnGEzDCfQO/vpb+5AEsdfi0hsmTNNdaHa2XTaXBmnn3QZWbI9ctVqT/1Xlwj+wKelXRoLS8JtB7ExmVg0n3D4yiverfz1zle2JiUlGE8BTVZsxqOunNhfnBY0YFfB2PoaxJdIhYlgOBvPs/gbOPDGjwvRJ9Kg2CoEbAnQcfLY9PE4wET1Wu/iKw3QDBt42lFN3UR7wo0hWGKZMgkN5d9WgAkw1NU1euJXa6G8i63d1nL/98+1eCsXwKxfQJEtkCjnebVMq0dbDSeWKP9OvSKhzB/y9n2pQEm+Wq2wX2w3yZRl0Cwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 20:44:23 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:44:23 +0000
Message-ID: <16f5979a-0df0-0f21-0654-72d8791a0a76@intel.com>
Date: Thu, 3 Nov 2022 13:44:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-2-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221101225240.421525-2-jacob.e.keller@intel.com>
X-ClientProxiedBy: SJ0PR03CA0107.namprd03.prod.outlook.com
 (2603:10b6:a03:333::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ1PR11MB6276:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b7cbf49-8b39-4048-8222-08dabddc305f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q44y5KsEIulW/Y0bhv+uho15R1VwQkXkDwmAOb5tUt/1WCRbr81BBrP/OfHz5h9K24Kz+TizVuI3URbAXaStrab1XPf+mj/e4rZTPUPo0WaEuV/Fr7pENGBNpSje4Q7kTZB9HfistIRL68bX+al3Dxrgky7Eww8X2QYHa9zKD0b6p6C0wizvred6C3XiwJ7xVeDE0hZLOfpobLYzPgtfmVr+zXiDfC2HVrP/wRvI076zH5LimDMiaBWIWidYZ3npNubmNIa1THkxwLTeoMnpJiJWWormXSk1Hmg5Yu5ir0IV0MeRQLmK6k2TIisURIMste3q93cpUjocLiPLGunOxd+00M+P1a+dcIehowfEUdzeLHlVgTjFt41LtYYO3dHEKMna/aRDhtVOiyt8kMmpyOI/uo3q0RsmDFCf8X69ICF2jokyOq1PotZy9FoLSWaHhbvsk+2IYe8jzC+PCClrwq2bLrvmWCBCeavNTSi8xpWUnfjGDniLEasrVV7cDxnZSH51ikDcI+w/JFoiK3sgqVXQ39rBj9ejYKpM/v4RMx5flVxJFgIw2HiveIGQ6C7eUuHvmWvKnsUaBGNmgH1P4PkjfHKyVX8EHsk+XvTYJijX2TnQx3I+NTZ2Qbh6sFvbqKLy+9zAsPWloqDHDFEL/5z3RhwJXBpmnFsMdSALTbpszIdCUUroLDVrktb+NZWwZsk313wn2QWeVrEMCZJviMvRcKdxB78V1kJXo0u8e6j3dLXCV41n8r7yCFx9YOcG0xn3e5XteQ4dmW1inwmIVOFeMjwNh5e8bhtrLRobSkyp+c37ox4369IcJl4559MzygM5pL/VSJGnhHKtisgPxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(396003)(366004)(346002)(451199015)(83380400001)(31686004)(86362001)(107886003)(6506007)(478600001)(2906002)(4744005)(6486002)(38100700002)(82960400001)(36756003)(66556008)(6512007)(316002)(31696002)(186003)(2616005)(26005)(66476007)(4326008)(66946007)(53546011)(5660300002)(8936002)(41300700001)(110136005)(8676002)(41533002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWhhRGxudFY1Z3R0d0xUTFY2RWhudFdkOHdzbWFTOStwSU93bG5NaGIzT0JO?=
 =?utf-8?B?akxnYmRBSW8rcnhwc0QwWjdHVVQ1YVQrNG5BMHY3Nk9aeXhRMnRaMlJpWENk?=
 =?utf-8?B?TTdEMnhKS2tNNjFOWHhEcThBaTJCY1dScDhxMWYybXMweDQ5bStRekZ3c3JX?=
 =?utf-8?B?QUlWWEZXS2dEQ1dzV2xrRitFOVdFNVF1Tkw2OXZwMHlCTFJRUnNvalpIR0dX?=
 =?utf-8?B?UjExU3o1VDBlNXlmTWFpdjhLUHJ3ZlJYTlJvWUI2NEVaS2VQaFNwQnUrQkxU?=
 =?utf-8?B?anJlcFZMZzFMNi9yNHpBYW5uOWFmUUU5WEwzT0JaRDIrVUxHelMvWDk3enVo?=
 =?utf-8?B?Yy9XL1NCMmdVV1I1MHlmOVZicnVJRDF3RlRBMERkU3YzVzNwUzhNZXkxU1RC?=
 =?utf-8?B?SUhTZUx5ZDVveEFORnBSU2p0OVJweXRrRFpRcTVYcFBWUkhSR1BNamFDYWtU?=
 =?utf-8?B?ZHp0WExMcjhybmRSMjc4V3BveS9nUHJMODI0TWtXWlpQS1J2TFhDQVZjbFJT?=
 =?utf-8?B?RFExVldGSW1uL2VvbldhVW5rWlR6ZWdERFBjZlhsQnRPTUd6MnJ3UmpadWM2?=
 =?utf-8?B?NmVjaGlLOHZ1KzBiN3ZoYTJzT2ROUlFEK1kwVEI4RVlYdy9OMUsvL0Z3L1Nm?=
 =?utf-8?B?OXk5eThOb1R5cVhhMHd4Y21Rd2N5KzVVZndTSWtZUU5HWGRNYlBpaXBRQWE0?=
 =?utf-8?B?S0o1Z0t5VTVRWkdHamROUmpTdEk4WXF0NlFCMTZVREZ4RUdSODV0Q0p1N2pV?=
 =?utf-8?B?UkFUVk5IT2tpUEk3bUQ4KzRpMkt4bVpTV1MzTjVKelQrQ1JiQ2JQSlJ4clR4?=
 =?utf-8?B?R0oyekl1OFpvZU5mM2R2WTZZU0s1R0RPYWNwcnBhYmtKeXU4YTY3ZGp3RFd5?=
 =?utf-8?B?OVJwTXE2TWQ3Mkd0R2N4bnpVdGpEVFNmV1BqWUhrK1dIUUdIZDJLeGdoS0JG?=
 =?utf-8?B?ZW9UVGdwZUZIeWZ2Q3pSZ1JOVUM4VUF2MXg5L1BFNEZJc3ZDRzkvRjdMVEF2?=
 =?utf-8?B?elc0Z3pzZ1dVQjRnUzFlWG1SVkhGaFRNSDNhVFFkUXFvak12ZzFnQ05nSllr?=
 =?utf-8?B?Zm52dnFKeDhNL2FZTHFOcnVOTE1oT0IvMmI4NzVNZ2Z4OFdFNWdld0dXeVhp?=
 =?utf-8?B?Qkt5QmVVOXFSbUxGR2NSRmtGUUFQZENXcGVoTFdrUGRac2ZNeDExSHQwbGNW?=
 =?utf-8?B?aU8renVucVF2c3hzb2ozYTYzTC9EeW1jNWpBdUdndEErZ1oxNlFnRDVHdzBi?=
 =?utf-8?B?UEN2OFRWN0FWaGFoTzhranhVSWRuYmZSOFlvY1ZGN1daOVJFTXcrc1BNTXVh?=
 =?utf-8?B?YnpvaTFtSHVjSG1QZ2FIYmtHdllHMnlOSUx3T3p1T1VDck8zbmhzL2FuSkk2?=
 =?utf-8?B?c09RTnlNQVJ3UmpBNFk2bXZ4REJ0bktQSk1zeE0rMmpFTEtCd3c3T2MwVVpj?=
 =?utf-8?B?U2JJdEQxMk5EeEZBQVpIQWEvWUpuWGxXZWVWRXVTbGxUa0d2Z2VIMGpqUUZ5?=
 =?utf-8?B?L2w4d3ZrT1dwcDhYWWQxeGJCMmJ1MktaNVdFbk5pcFdONWpCb1NRRkxUdFR5?=
 =?utf-8?B?dVRRdmwzTHFubXZuMnNqaTNyVUNrWlpza1djWDFIQ3JYalF5ZHpCWVFZdVU5?=
 =?utf-8?B?bC9CZ3RIdWp1cHBaSUpyeE53bENVMUZBVVhYQSs0SlRBU1ZWdEtOaThFSDNH?=
 =?utf-8?B?dTFjK3pSUmpETk1iUnBsSTNHbWpEa3ZkR2Nad0IxMmZoOHRUU1JWeUVHMVlM?=
 =?utf-8?B?dFY0V3JyWERQNGN4TUxoWGMvcnJVQmVreXhqM2RsbEVGNmhrcmtrQmFQU2g0?=
 =?utf-8?B?Mit0cHgvNnZiYWYwTHFNWXJvZ3lHNlNPNW5GUzllWHdkek51R3RiUlpkTTRF?=
 =?utf-8?B?dEdWY2JRd2UvQ290VkhHYzd0c3REYnROWU1KaElRWXJZUFlmczI3Vytyd0FI?=
 =?utf-8?B?MU5vdTdBM3A2UWNuQWZlRS91RmR1MVR2R2oySzZFZ0ZSWW1TOHoya2VncTE3?=
 =?utf-8?B?eVllRkN2Smg0VVdiQkhwbThSQWVVcFFYNWtsd05hOXlVajJYUW1VVDgxVmhG?=
 =?utf-8?B?MHF6SEQzZ2hocTc2QTBsaXgvTU5ZendHTnpYVkZHWVRsYWR0NXE0eS83NGdQ?=
 =?utf-8?B?MmZSdDVJZUxDc2ZMZmZma1VVZXBuYm0wZ1JTSWhqQ1hpdGltV3FOTUNLMFBo?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7cbf49-8b39-4048-8222-08dabddc305f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:44:23.1179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S+wwcfa/oIdXWCKhkZeefHy8dgrhYUAqcanyOOCZBjnhvPSWZ5Zz2PmtnwlYGWk/0R7ugjgnVCCbPkJ2SE5TRADn8QNFDFwE5gl/dWL3F8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508277; x=1699044277;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X25q1LEpPKTyb0TGvZzvPPfwfXy4WxX53eZnPFASpr0=;
 b=IN/4I1iMoLGTmHcJkr/Ts3XlCG2lOe/vqNyZVGqvRHLuAQE+d6oTj2Qn
 EiOWfXilSqumxIJ+njrQ3c50D0j1RqPNYUogqhH+tkvKSm1KG/SMk9l4W
 JyftW0uer5Tfzz3auCKjikDeVUyS8mDlNnr/FmkZSQIWDBxECtkBiPdJ2
 IGinapS2Hf35WvFvdyLe12jO2erbrzYP9vJxVMvC255gWu9fVJrNDkZe+
 ex7RgnaivcwYKHryn1pb+j14jp5KUU3qIhYbkZB9xt3r7EGQHcxZO+Y3d
 mXGsyXPf9RN9FCTiQ8dxQLaOOFJdSRXFh5e/EyZr+wl44IoJmsyLvEwh2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IN/4I1iM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] ice: Use more generic
 names for ice_ptp_tx fields
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/1/2022 3:52 PM, Jacob Keller wrote:

<snip>

> @@ -128,7 +128,9 @@ struct ice_ptp_tx {
>   
>   /* Quad and port information for initializing timestamp blocks */
>   #define INDEX_PER_QUAD			64
> -#define INDEX_PER_PORT			(INDEX_PER_QUAD / ICE_PORTS_PER_QUAD)
> +#define INDEX_PER_PORT_E822		16
> +#define INDEX_PER_PORT_E810		64
> +#define INDEX_PER_PORT_ETH56G		64

I believe this is an extra define (INDEX_PER_PORT_ETH56G)? I'm not 
seeing it used anywhere.

>   
>   /**
>    * struct ice_ptp_port - data used to initialize an external port for PTP
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
