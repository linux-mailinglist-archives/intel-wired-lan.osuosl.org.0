Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4595B699B25
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 18:21:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A607641965;
	Thu, 16 Feb 2023 17:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A607641965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676568079;
	bh=3ihQpld7CAABurPXW0BpQj9P3/HcFJCtpXPnyS4VkLE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LeSWLL/GnlhODfPh5lyq/FT2GdQJUM5CY29HPMNb41bFZJw7qEcqlZOouhxJk5X7q
	 xiBF9G0p8266znckXIEIAzMuhmJzmEZgURy3RNmJCTHKnBzfdb2UT2rG2HKP6iWIzx
	 23T2wK4aApY66mQ4GUkMaRZnl87Wthy+N8higgAme9xHQMqUteqxZpuCfHQBZMHMWe
	 kSNmx8H4iIe6kRbGwkVcRBeE/vIvwmZDV6WzNFs9mARnulSqAQY4dlMmshQwJ08fan
	 kiSlOcv2nuE6Twe+BBxYTAr3UfFj7NmWnyS3VfudqEMznPZIbCtwnWpG9iNNlFSzOA
	 J4X51e/cy54xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJkKZ4jFKCJ5; Thu, 16 Feb 2023 17:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F0744195C;
	Thu, 16 Feb 2023 17:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F0744195C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B5AF1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 638E040391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 638E040391
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFeJF6ID6Rh5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 17:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC62840158
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC62840158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:21:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="359211097"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="359211097"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 09:13:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="915749754"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="915749754"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 16 Feb 2023 09:13:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:13:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:13:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 09:13:21 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 09:13:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIZZDXu87gccHHMOgooDpzoEuZETm275y3pBLbyYRf/PAW5jO0o6MTaBIMBUoITdYP4IMiB8nLI0Lyx32IwrAFeS4V1qYiz7ocPFo3acI8V+wtf/tv8SiJq1Ki45zPXro3yTKyybJJBNSXTjzdCjRsItE/cSGrlFKPe1KWfPzgeS6sqXgVx8Zymg4UHWhOubGHxkST0Oc0fqxEaGCcur1t0sU3Ko3WARCupBS0xCaPA1qbGeLu9djo5jreG67ncs89cK/thG4Cz1b//hHNPuYWWunG+FzzhA4BxLXtfHPqi3+w/Raqpr0r9eLO7Wm/0mbn0e1aEM7PAp15tGDW/zyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+5+LXG7eoeWrtLgCQq1GcrFuHaM3ZD7m4e7az1rLSg=;
 b=LyeOW5Xo1jNa2oHmziOtUDNbsa7ZvzzqnpYRkB9NbZULtYsFr+PHq212nOZW9H57rWbp0P0iM5nvDtbATeJwF7QrmLeXGTK6mDQWOAnBdmkeBPkgeuTMHjEc9UP/ogwGuWlDxWGGqZbfbBFuaaHFNkabiwnlPE2fv9ahLEMPiHUnBHEtpyarwVtcI8J/PwKyQd+BdGCU0FMoSQPP4oEQ8JI9beBb+r36kt/KsKBlh3ds+TDx6m9aqnVh8eA2cxtWl8/vw0Y8XJbJYFQ9/7m+q1NQKJa1ocRjtnNH78kx7rEPVjW2/B1/6yB83PZOiJkk0zzVjxuXttlYQVJWpAm3RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 17:13:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Thu, 16 Feb 2023
 17:13:19 +0000
Message-ID: <e4b360d9-07a6-a02d-ea51-4b2f7b73d2f2@intel.com>
Date: Thu, 16 Feb 2023 09:13:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230216122410.337212-1-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230216122410.337212-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR05CA0197.namprd05.prod.outlook.com
 (2603:10b6:a03:330::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5073:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ad605d5-b4f1-4c97-9f1f-08db104119b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 46uTgWtUCv5Et/ReOEjrFf52ycw2DpXc/4n562ej4/QQ524+Jyaa9G0wy7iMxJv9DhKYc+EXI5/dHMiPtKCISZ+AMokuJc2mzROnBtNEwrItPn+/c7FtYTgxLbgYSBluzemjijwKkMHqzN7erJiYGDrP055G3wtDoJe3KjiJxfARYXcO5WwHdgA6acG5KbuFzoEYj3Ou0Bf7U5BHXFvvNW6/fYAfn8mJmvhErd0zMcLdhrjgUjy9uQIZXmqBoEbhIwroxEXWEwlZjdWs5zVtHXWoXUci4asFhRQ42vu+dQZxa/UoG0V/SWFrsmpYrXiHEQpYBGwUe4JxQnlqZA56Yq9rLbZKoI+USd5PxBTfQDZMo01Lt3qZCpOMyiyCU8B1SzodTvolJBhSViIJSBgYKWXaMixuK4Hq9BhzKmdxux3/Wa3b4DXzl2IhUSaIqIFMC+6xFnTtl9EkSaQBdwj1nicAp9G31DFLRaTPTCX7TIyTmgdW6LVaeCTKG0SNa4XgRUaoPYW58gwvm+qI6TWZPqnwlFltc41/AALsFxuy6lHGvUXwpN0cpVSSmQ4low/3wq5oGrU2aYW1d8vTkGU//MPS50TginF/QJY7mbT5z7L+0LKs9TdEXuBm0ok1Sfp0NFWFdOmH7eevuB1iryZencEcZfwC6ocK2ZWtfpd43qmNDGPgScpPbrvPP7trdCbDYeKQgE3mhhCLwe7FxYAaT5/19wZxOV2bwhWddenVVN8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199018)(2906002)(38100700002)(82960400001)(31686004)(83380400001)(2616005)(86362001)(66556008)(478600001)(6666004)(107886003)(66476007)(36756003)(5660300002)(53546011)(41300700001)(6506007)(186003)(6486002)(66946007)(4326008)(316002)(6512007)(26005)(31696002)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHhjbU91N0x4bXVGYWw3NlpWVnA4RC91RDRRclM1VHhXZUZzZlN0VENpRVFx?=
 =?utf-8?B?Z1o4Q05wcWtoUTZEdGczTGNjNmdBdERtMkVDVUhOQ05lMkt2R1NHejRTY1Zw?=
 =?utf-8?B?aTRha1NOblMwSnNmYkZ6dFRlVXZFMnRPbmdwRG8xK0tXQU9wTXVQODNyYUtX?=
 =?utf-8?B?cHJYOEN2T2xHRUE1RlFKUmFETmgyTmlvSUJwRmE0aVpHbTdtQVBNQ050Q2RX?=
 =?utf-8?B?YWZMcjRxbWMxQm1TTEo3OERNL29saW9BZEY2N2k2VFZWaFZYYXduVkNhd0xW?=
 =?utf-8?B?eXd3Z1l0ZGNSaU5mNkY4eHA4RWJkcEswNzMyTFlSQUdyQWRyZVBvemRNTlM4?=
 =?utf-8?B?SjdJZlFpdGU3dm9CL0JaSnEyZU9wNUlpa2h3M3BGRW90SlNLZ0lDSnNkc0V2?=
 =?utf-8?B?SDh5WTJ4TC9RaktFaUxoRFk5SkMzNkhGemlYNEMrdXhHbXkwNkZFRkxtTytN?=
 =?utf-8?B?NTNwWE5rSFV6aERDS3RxMmZNc0RTalJ0eFlTSHgyUjFsK0xIRm1aUW1jS2Zr?=
 =?utf-8?B?ejVOOTR1aTliUVFhdHgrcUl2bmFjUk1tQVVGNkN2ZDFrRDVSTU0rUzh5VGNo?=
 =?utf-8?B?Qjc0anh1UXpVWUsvUlpabHd5azJ0MkE5dUdXVXZZUHlKdm5FRmlxdGI4K3lX?=
 =?utf-8?B?d3NuY25lTS9iVXppL3dwWVJRYjlSY090dVlpUVJJK2dEcVI3WHlhQlNZN0xH?=
 =?utf-8?B?SlozQ3JxZjRTWVBpeXZqMWQxYVQ4VW9PY2xlRWZyR2VsQ2tIRStmNk81dVBn?=
 =?utf-8?B?V2ZMYmJWaHRqRnIyTGFHTnVwWVYvMkdzUm5XNFNXVGg0NnRtb0x5UGNmVnhw?=
 =?utf-8?B?OGVVbXpEZUNCekdWNHI0N2xvYUJwQTVGVDJHL1BITFdsNmU4bnpSMHRWNnN1?=
 =?utf-8?B?SVp2aUpCd2pBTklTZXFDek9hUEdIb0NIWnVHOHhrc2lwYmhEa2dxTnJNVGgw?=
 =?utf-8?B?TUhuY2hHTEJ2cjJVT2ZDSGVOUndWTU1Zd0pmMjlzWEhLcWVacXdrNEtnd3J2?=
 =?utf-8?B?RGM1ejRwOHFyR3F5bjFIUXhHc1cvU3FUeDhLTmo2SExUSlpUakN2d2luWE9Z?=
 =?utf-8?B?TVFxVHNrcWZxamRkWlBMWU5CWlgrb2xSZHBuOTBIclZDREsvcWdRMnd2ZWVa?=
 =?utf-8?B?QXZCMFZsZnZiMTVZZVV3TElCS2xPbndQTDdxS20vRFRoZEY1L25PQ1B6TUtq?=
 =?utf-8?B?bGx1RU9oVFNIMmNXYnUzNWJFRDNPMEJPUHJyZmJSbVB4UDFkMEFrbm80eTNo?=
 =?utf-8?B?NkNpTVNFRmJrd2xMa0M4TWU2K3docE5LamY3QmN0NzUybmVIVW1BOXZLL0da?=
 =?utf-8?B?b2k0TU5YK0d5c3F6R2I4U0JoaU9FZUI4d1R5VmVpbjM4N3grK282UjloRlZ3?=
 =?utf-8?B?N0JVS2lkdkhwVTNidDFSVU1iUEZIcUMxL3hzTGNvTGM1czJPb0t0Qms1VTFM?=
 =?utf-8?B?Vit5cnlmeVl0ampBeENwbDBqdGc1ZkNDSklQVHZVa3NHWEpqWStRM2tLSyts?=
 =?utf-8?B?cGt5UFViTTJXZUNVaGxndTk5SGxKVit4cEhNVDB0RTQ3TVB5d05hU0FFZHlW?=
 =?utf-8?B?Zmt1d3RycFBsUXk0TjJNRThWZ0pxMUsvdi80N05lVkdvSXJlUmkrbkRiQi84?=
 =?utf-8?B?STFXMy9Da2Nqa21FdFV3dWx5aVY3YkxtU3FGV2pMWVNmays0S0diZktRQU9S?=
 =?utf-8?B?QjdHWk83QXVWWkVGV3liYm9oZmlhd2ltMG9iNGNtd1FTYU4yTDltYkYxTTFY?=
 =?utf-8?B?ZkNsSS85WlBCd1lyOVptb3lVdFc5Vll2V0VERzFBSjVFMlIxY3crWjY4ZGg0?=
 =?utf-8?B?b1FmeStaSEtDRTBvZVpEM0FhL0Z0TnA5NXp6NjJiMlRzaFhRNVVUMm94T0s2?=
 =?utf-8?B?Mk53eERqNDdoSU1zYU9BMHpqR25ZdUNiR1Z5anYxSjl2TFlTQzROcGE2Qkda?=
 =?utf-8?B?blhhejNYYWtBdzErdWhmTFFqWTVNdG9JUDFjc21uaFpWY2tDd3h6SlZzTFM1?=
 =?utf-8?B?QW5UdkU4empBbVpLVXEzZFZjZmY2UWVxY3Brd2VmcnZ4d0ZrT3Y0QTVxa1NR?=
 =?utf-8?B?THBmL0dBMnpyWVFBdUcvZjhHaW1WYVYyTkY4bzhHampsRHJGS1lnd0hyajk4?=
 =?utf-8?B?ZnpGcWpjdWphbVN0WjgrR1hsa0l4Vjk2OWFORFI5WE84dDRYTjBkek5jWmtT?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad605d5-b4f1-4c97-9f1f-08db104119b0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 17:13:19.5168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNPOpCryetWIaouySycFhMH5ONvbdov2SkHQcn9ICD1XDeoODVep1Psqesk5xykA9j/s4dok9w/qJreT7sVgzUKCEPYW/vjjf7z5h8T1TlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676568070; x=1708104070;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cmqsEAFw0EYlBOsPHIDgXMgACfE03lp3F0XSFJztSu8=;
 b=U7PEWDUizuxy3EG0gZRFXYG/5JrLnGEFrf52Shoc8fO7hM0sXl+f+Y4o
 uey2Kb3DmVT+ukSJDU0lD+woYoLO/FrnQBzICQiw6auDl3YllEhWX1w92
 lylP/z+kTd4FeyKk7/6LGoLUKxMoph6nD//2HryUbazQ/YhQthAtdb22L
 BZz5wGQYygo1XvuRhp3BZn7ofcshGApHeaittvvoL4wvEhZ8DQ6xR2XlB
 VrM3uExvkSPLw7TsjfI8DzUcXAh/Y3Tlt8EdH6XoZrEMR7i0l15XVnTRC
 CJ49i8SmvpISc020XBGpuYex2ze0AXzOdD5XozUxfL65aSQ8bGYOg7/5T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U7PEWDUi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igbvf: add PCI reset
 handler functions
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/16/2023 4:24 AM, Kamil Maziarz wrote:
> From: Dawid Wesierski <dawidx.wesierski@intel.com>
> 
> There was a problem with resuming ping after conducting a PCI reset.
> This commit adds two functions, igbvf_io_prepare and igbvf_io_done,
> which, after being added to the pci_error_handlers struct,
> will prepare the drivers for a PCI reset and then bring the interface up
> and reset it after the reset. This will prevent the driver from
> ending up in an incorrect state.
> 
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>   drivers/net/ethernet/intel/igbvf/netdev.c | 27 +++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 72cb1b56e9f2..a89fa422cc5c 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c
> @@ -2593,6 +2593,31 @@ static void igbvf_io_resume(struct pci_dev *pdev)
>   	netif_device_attach(netdev);
>   }
>   
> +/**
> + * igbvf_io_prepare - prepare device driver for PCI reset
> + * @pdev: PCI device information struct
> + */
> +static void igbvf_io_prepare(struct pci_dev *pdev)
> +{
> +	struct net_device *netdev = pci_get_drvdata(pdev);
> +	struct igbvf_adapter *adapter = netdev_priv(netdev);

newline needed here...

> +	while (test_and_set_bit(__IGBVF_RESETTING, &adapter->state))
> +		usleep_range(1000, 2000);
> +	igbvf_down(adapter);
> +}
> +
> +/**
> + * igbvf_io_reset_done - PCI reset done, device driver reset can begin
> + * @pdev: PCI device information struct
> + */
> +static void igbvf_io_reset_done(struct pci_dev *pdev)
> +{
> +	struct net_device *netdev = pci_get_drvdata(pdev);
> +	struct igbvf_adapter *adapter = netdev_priv(netdev);

... and here

> +	igbvf_up(adapter);
> +	clear_bit(__IGBVF_RESETTING, &adapter->state);
> +}
> +
>   static void igbvf_print_device_info(struct igbvf_adapter *adapter)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
> @@ -2920,6 +2945,8 @@ static const struct pci_error_handlers igbvf_err_handler = {
>   	.error_detected = igbvf_io_error_detected,
>   	.slot_reset = igbvf_io_slot_reset,
>   	.resume = igbvf_io_resume,
> +	.reset_prepare = igbvf_io_prepare,
> +	.reset_done = igbvf_io_reset_done,
>   };
>   
>   static const struct pci_device_id igbvf_pci_tbl[] = {
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
