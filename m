Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54035844736
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 19:34:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C34DE4364A;
	Wed, 31 Jan 2024 18:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C34DE4364A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706726085;
	bh=ariu+9ekgE96mOkWwDa1yHZziDQMGOMbI7POc5LleDM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=By1osSzcdHUN+y4bkKs11RSiDVaFVUE4d7nEKh5WVDc7BGqVgLW3f1zMWLhuok6wd
	 wo8t6bD06FCyh7X1b7fqfVW+QNxcm7B9tWNK8R3EPIVO0+7fmMlinUvT5lssivtoCe
	 gUU6EiaQalk+F9f5lCGpUWshhhGZ+/dob3J82Q2xUnThUBfyhAQQydyhqEvOBvFI6H
	 vjOtokbMMFTs1ze9Ax683meo7JgIKFxfYANeYo7/7gxw+2GlNpccajdiZahEYxc/uG
	 XTyTtce1PEPmABnT149eElcQYXH+T06+C+SmZwe6VyR8EzoiXXY0nmUS/Ozvv1D9ZM
	 NK6Z58iUpNcVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leWDjwYh8gl2; Wed, 31 Jan 2024 18:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F15B43615;
	Wed, 31 Jan 2024 18:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F15B43615
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BA4B1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 18:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E5C7600CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 18:34:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E5C7600CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPGqpx17P4Tz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 18:34:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03F9D607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 18:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03F9D607A4
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10345255"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10345255"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:34:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="4176333"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 10:34:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 10:34:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 10:34:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 10:34:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l09gS8H1dSIOO8NdQcSywUkhJaVoUpAZdka8dHGY1Azem372D5FTlNJ8jiq5PhBRd1Cs7VGr2aU2JSQQFLzSGx3VG5x2ha8qB578cYekWUIbv6Wqvh8T1AKTU2/V2p5MoyCcxCJAV1ONQtx9h+TEsUoQLnw33GpNFGbwi1Zzuqv+RXnbtGKUt0Ju2l0eB5EYXghdVxYTYGicGbZoRr/d6RP+N96MM9dOF+TRSSN+EkB3sbLtMlbwSnI2kxkcHErtPBfJPA3AiUuHY3h0U1+MGnLy6ATGBuM2dVGcvy2IYa81Mtb+5AoOWvY7tNn0qx405LO2KiEA2o9+UhNi4y1sFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ariu+9ekgE96mOkWwDa1yHZziDQMGOMbI7POc5LleDM=;
 b=IU0kMd8o3o6W2HkBEZD4NaFw686gtuQZHSlDyBEUh/cvjYIIiVtuvm52kVG+pbKs/yqn+hPMJNHAXyPJVXvTZregAu0PDEaon3GyYQY2I2nkO186PJwN4eeUcTO617wcguuEt/kg1BNyuKpeuBi5DLna6iXl979jIRFmsDyvXQEtbQ4rdjRHIM6hpamw2+DHIPFM77DZMpU1+j8FuUEiqOmu/Ji7TtaocwsZIiserOVMixyk5IMKCuMzzhqN4WVp/ooq530Uq1O6MpLKg58aOA9e1bhtmHYsvKs1M5a4uEqEbXecbCkVCFz61Ix+bfMno4vmdCWN8dQaGiHXsWleEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CY5PR11MB6439.namprd11.prod.outlook.com (2603:10b6:930:34::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 18:34:22 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::8760:b5ec:92af:7769%6]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 18:34:22 +0000
Message-ID: <e27bd484-f79b-4bfb-95bd-6f24518d1cbe@intel.com>
Date: Wed, 31 Jan 2024 19:33:35 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alan Brady <alan.brady@intel.com>
References: <20240130005923.983026-1-alan.brady@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240130005923.983026-1-alan.brady@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0218.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CY5PR11MB6439:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cebc62f-8feb-4408-1d96-08dc228b3e58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X9U/eJN6Z0uKQy0kEX76WiBpMVDc1IhFA+VForKq/lvjy4OyEEJTxjmohPT3v3z9ONDLuUkzqbWwTz4YEJLE6T3yh5PPbHYjoAqrtl8DaKAnBOnIxbP2goJh7mTArAL2KfMsdMhnbhoiLIWWcQPnjvN6arzY9FSBDR6j0EnsoxIxu23m8eYLMDCwttsF18tLqUT5p4vkjoVf5Y0RHaNskqRm737eiiaUkwmFWiABzOkZrbXKvn0mM7PUSZXyHwKU2meJt5j9jVRLtI4WpxaPA+Bzs0x5r5xdlKfggjew3t58HkHatYXIawcvKvno7BZY3PKCNlGBityu77E9nDS10B6S7kyaj1+cLElsrNM2Cp9X8GpKDgAFiq4rPKXbSNfoTXO4us4Gk+2P6LpWL33UzWlVpZaWIFuORTL3NeYMCHYdeaeATwLCEBa4wH4mWyeZrOpBy/OdVsTVT2ZTTCb1ldFZ+I99llblg/WKCT6GLcANMM1jZhJNOLxJFjAQwjjaktFI02ngMLOPoFnk5VMmzM5ZVc61gygj5mH+GZMnxrIo0ctFhIq6VW4s2Ti03ojKt1Z8mdUtPJKxiGEiHC/4CUOvw8H6IA+r1/WuiK5FVI5sKRH1B5YqqcMmmmvIghqRMY9kyAF0toc4MTU2v/iuHg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(376002)(39860400002)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(31686004)(41300700001)(83380400001)(82960400001)(36756003)(86362001)(31696002)(6512007)(107886003)(26005)(38100700002)(2616005)(6506007)(15650500001)(6486002)(478600001)(2906002)(45080400002)(316002)(37006003)(6666004)(6636002)(66476007)(66946007)(66556008)(6862004)(8676002)(4326008)(8936002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alBTRTRXTllucjJaYWJLTjY1ZjFEQVZMMXo5YTVhK1JLbTRlKzlLdURNMWhr?=
 =?utf-8?B?anZCSHNrT1krcVNoWVhYakZJUWswc21pYWpTdlhMK1BLekVjU0xTWGxuQkhY?=
 =?utf-8?B?THlZYTVmZVpSVzd0Nm1VRys5R1IxUUZZLzc5TzZJUU5EZFI0R0g1K1N3QytE?=
 =?utf-8?B?M1I0dGJYRmxQRkZZSUxJQjZrQ2F3L29JYlBZcW83NTlwaTluSk1CM3BzTExj?=
 =?utf-8?B?TU1zbGpiUjBJSmswbm5wLzVBUFdRZkVWMlFmekRrelFaZTdTYmxGUlZqd21Y?=
 =?utf-8?B?L0V5QnJvSnZNY250dkVqMlkyN0FIb0xGS2h1K05mOGJyZ0JVRzlwdm9kN0dL?=
 =?utf-8?B?RFRydHlwSVNDMXVNcWRyOWFrTnNudmwzVDdISEVoUGIyeFBIcGg1ZFdzRDVG?=
 =?utf-8?B?OWRSbGI2QUswL25aOC9BdkZvRGpCZXkyZUhJZXpaSDRqaHk0RHA2UlJyeEFV?=
 =?utf-8?B?ZU4rUkRoOXVRT1FLdTFReXhSWTFOa05sY1FaQTloYnNGUmlTcHR1TW1vbXc0?=
 =?utf-8?B?RmxKcGdYb0RNZ1E0STBHWUFFbDRseEZmNEhWd09kNUJPOTMzYmNGV20vUzJv?=
 =?utf-8?B?WFh0TGN1ajdmYnJ0STdHUENJd3F2UHB2dk5aUC9UUjNhVG4xbUNjNkNxb05i?=
 =?utf-8?B?M05BVk8rbE90TTJpbUVuaS9RemFBd0M4aVRJaXJ4cU5YNUhQK3ZBazBZd0g2?=
 =?utf-8?B?VWFFS1NTWVlIazRsVExTUVpYN05WQ2I5anJScE1LaUFXb1dla0VCeW10M216?=
 =?utf-8?B?ZTM2NlhRdENnRG5ObHF1SWp0TXREZE9YSmdkZHdxTjBNNVNmZjRTampBVmIy?=
 =?utf-8?B?QjgyM1UyNkY4SjhScENGb0xEZ3VHNnhkcUlyWVozSFhNMVhXd3g2ajBBVmNz?=
 =?utf-8?B?a1VEcGQ5Tk1Nbkk1YzJ2L0JpejkzVHZwcHZPcTZaL0tUS1VRRG1jVzRYczhD?=
 =?utf-8?B?NjVyTE9yUkwwMUtCQS9UVWlwb2lWdFVmRkVETExBUVdPV1hSVnpteDFqMGpL?=
 =?utf-8?B?YjBIVThuem80andxUzBiNHNybG9ZTzJvYU5SMmxIM0d5ZlhhOGhLajNySk9i?=
 =?utf-8?B?ek9mWHdBS0dmN0RRNXhkOU9mUTFmdUw1SVZ2YXBtcFgyZDFwQUdsZGFuOHBX?=
 =?utf-8?B?VmVqaFBiaFlETmtjUWdUV0tBTWloQTV2aTVnb0hCUzFRZ21XVTFUUDl3R2RL?=
 =?utf-8?B?TWxILzFBVVpaMENSUTc4VnZBMmF6YlhHRUZIQjdkQ3ZMenpnV0RycVNYdm15?=
 =?utf-8?B?V01PMG1vRWZKaUhBeGRsUk5DOWZua0ZLbUZyL01sblpwWE5ISFM1TWVrU3lP?=
 =?utf-8?B?bFJXbWlqOFJYNkkzSnEvUHcxSHZ3ckR2STFWU0N6Y1E0MExQL1VOUnZFVWVo?=
 =?utf-8?B?WlJpQzJROHM2ZlpVQjgrZzJWQVlnZk16bWVxa1hKcFA2R3BiYU11V0dCam1j?=
 =?utf-8?B?SlJjR3lmUzNPWXZyVkZRVHI5eVNQNDRjVEJnSFNqdWczMHlOVVhoVElwTmU2?=
 =?utf-8?B?NGdKaGhJRW9Scm52T0VzRXpYTXZaSkJSZmVlWVp1OGpQZXhuWTVWWmhJR2c0?=
 =?utf-8?B?QlE5a2g0ekUyYnhXVFR1ckNFM0puTXJYOVAwVzBWOEFOL1lDOFdDQ1V3Z214?=
 =?utf-8?B?TDZyMmlQSmZkb3FKZUk5MUVib0RHT1ZZYlpzd0Fsc2cxUDROVldwYlV4c1Br?=
 =?utf-8?B?bUkvdVN1bzRHNTMwNG4wa0cwRE9WNHBxQmlPT0toVldRQVdJb3o3cVVLUGU3?=
 =?utf-8?B?TzhGQzVSZldrYlBvcW1OL1hSQXVXenk3SUNGekFkOXZVelZzaG11TlluNGN1?=
 =?utf-8?B?eWc0Y1RETVZVS3EyRk5yeEhMN0JLUWY5TEJmWTVFdVRnajR5ZnF1WWV0Ym8x?=
 =?utf-8?B?UFkySTRhTjJ4alhuTk1DTXRWc0grUDltRXRLZFJKZ0xmOE9ad254YUE3TjhL?=
 =?utf-8?B?TnZENTFJMU9QMTVVNnA3WkxqVmx0aGQ2ZUF6TmgwZ0hSeHNTZE5OZkt2Q1da?=
 =?utf-8?B?Nmt4UW5iQTZlVy9kRUdjMFZmcmFXNEUra29wOXBIVng1T0RLNTRFTDJsbW5L?=
 =?utf-8?B?bmEwWXdyM3JCTlI2ZWxXc2p3VzhTaTdHTmtFSU9zWHdYdDNBNnhHSnhSdTQy?=
 =?utf-8?B?UU5ucUtGekRqQ01YZWJBTm5ZQ0lxKzd6SHpTdXNodi9CM0o0L1ltV0dPRThG?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cebc62f-8feb-4408-1d96-08dc228b3e58
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 18:34:22.3726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hMU/R2JXhQY7H681ZdWE5reEGaMeogSH20A3CVoQLtlVj7jAkbYshp2r/ADTC3gizDwK/QsFNC1y+4Mt5mIKdMhR+AfX1FdoDFnEz3BpTDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706726077; x=1738262077;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jJ7rPVAfgv+yuvgjdWl4i8Cjz90uSDaBorWbccixoOQ=;
 b=WIHFkjTIv0N75NibZcpXPvAZkL9qkpVDqa0FUOdA4C+hRd9xaxExAOEl
 Ln70v2BZ29duauMYBKt03QF+WzFVBkS267XZJ3CrAsH9lCf/fB0yj6YZT
 +14tnkxeyMDnem2Nmd/P53CJej5Lkrs8fhRxXYNtyvsJ+aUX+LVFWx5PZ
 AJ0AM2gNzhlbirjhnrnc/nujrU8NJYV8HcMXmQ3lITOyHtVCsildJwXBo
 ja0dTTFXUK+c1Svz/07kOiJvs2fNzGwhQExN6N6mJF5BV02Lnz8zRuzbn
 V2i3P+iJx+E1wj0nwi7DT/DSE9JZyLf97qE8dXxyAfmPMhjuN3bkjAJnG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WIHFkjTI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: netdev@vger.kernel.org, willemdebruijn.kernel@gmail.com,
 intel-wired-lan@lists.osuosl.org, igor.bagnucki@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Mon, 29 Jan 2024 16:59:16 -0800

> The motivation for this series has two primary goals. We want to enable
> support of multiple simultaneous messages and make the channel more
> robust. The way it works right now, the driver can only send and receive
> a single message at a time and if something goes really wrong, it can
> lead to data corruption and strange bugs.

Have you tested v3?
I have this on my system (net-next + your series), no other patches applied:

> [alobakin@GK3153-KR1-CYP-38282-U39-ETH1 ~]$ sudo modprobe idpf
> [   89.785966] idpf 0000:83:00.0: Device HW Reset initiated
> [alobakin@GK3153-KR1-CYP-38282-U39-ETH1 ~]$ [   90.241658] BUG: unable to handle page fault for address: ff8e1df482000000
> [   90.241704] #PF: supervisor write access in kernel mode
> [   90.241728] #PF: error_code(0x0002) - not-present page
> [   90.241751] PGD 107ffc8067 P4D 107ffc7067 PUD 207fdc8067 PMD 0 
> [   90.241782] Oops: 0002 [#1] PREEMPT SMP NOPTI
> [   90.241805] CPU: 32 PID: 847 Comm: kworker/32:1 Kdump: loaded Not tainted 6.8.0-rc1-libeth+ #1
> [   90.241841] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0008.2305172341 05/17/2023
> [   90.241879] Workqueue: idpf-0000:83:00.0-vc_ev idpf_vc_event_task [idpf]
> [   90.241932] RIP: 0010:__free_pages_ok+0x338/0x4f0
> [   90.241962] Code: e6 06 45 31 e4 41 bd 40 00 00 00 45 85 ff 74 13 4b 8d 34 28 4c 89 c7 e8 36 97 00 00 8b 74 24 04 41 01 c4 66 90 4c 8b 44 24 08 <43> 81 24 28 00 00 80 c0 49 83 c5 40 4d 39 ee 75 d0 e9 7c fd ff ff
> [   90.242027] RSP: 0018:ff3f281b098d7b78 EFLAGS: 00010246
> [   90.242053] RAX: 0000000000100000 RBX: ff8e1df400000000 RCX: 0000000000000034
> [   90.242084] RDX: 0000000000000d80 RSI: 0000000000000034 RDI: ff8e1df481d980c0
> [   90.242115] RBP: 0000000000000000 R08: ff8e1df481d980c0 R09: 0000000000000000
> [   90.242145] R10: ff25062537f9fe00 R11: 0000000000000020 R12: 0000000000000000
> [   90.242174] R13: 0000000000267f40 R14: 0000000004000000 R15: 0000000000000000
> [   90.242206] FS:  0000000000000000(0000) GS:ff2506253ec00000(0000) knlGS:0000000000000000
> [   90.242240] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   90.242266] CR2: ff8e1df482000000 CR3: 000000207d420006 CR4: 0000000000771ef0
> [   90.242297] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   90.242327] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   90.242357] PKRU: 55555554
> [   90.242378] Call Trace:
> [   90.242393]  <TASK>
> [   90.242410]  ? __die_body+0x68/0xb0
> [   90.242437]  ? page_fault_oops+0x3a6/0x400
> [   90.242467]  ? exc_page_fault+0xb2/0x1b0
> [   90.242496]  ? asm_exc_page_fault+0x26/0x30
> [   90.242527]  ? __free_pages_ok+0x338/0x4f0
> [   90.242554]  idpf_mb_clean+0xc1/0x110 [idpf]
> [   90.242600]  idpf_send_mb_msg+0x50/0x1b0 [idpf]
> [   90.242643]  idpf_vc_xn_exec+0x189/0x350 [idpf]
> [   90.242688]  idpf_vc_core_init+0x32c/0x6d0 [idpf]
> [   90.242735]  idpf_vc_event_task+0x2da/0x390 [idpf]
> [   90.242779]  process_scheduled_works+0x251/0x460
> [   90.242807]  worker_thread+0x21c/0x2d0
> [   90.242830]  ? __pfx_worker_thread+0x10/0x10
> [   90.242855]  kthread+0xe8/0x110
> [   90.242878]  ? __pfx_kthread+0x10/0x10
> [   90.242902]  ret_from_fork+0x37/0x50
> [   90.242925]  ? __pfx_kthread+0x10/0x10
> [   90.243802]  ret_from_fork_asm+0x1b/0x30
> [   90.244598]  </TASK>
> [   90.245361] Modules linked in: idpf libeth rpcrdma rdma_cm ib_cm iw_cm ib_core qrtr rfkill intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common i10nm_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel binfmt_misc vfat fat kvm irqbypass rapl ipmi_ssif iTCO_wdt intel_cstate intel_pmc_bxt iTCO_vendor_support dax_hmem cxl_acpi nfsd ioatdma intel_uncore mei_me isst_if_mmio cxl_core i2c_i801 isst_if_mbox_pci mei acpi_ipmi pcspkr intel_vsec isst_if_common i2c_smbus joydev dca ipmi_si intel_pch_thermal ipmi_devintf auth_rpcgss ipmi_msghandler acpi_power_meter acpi_pad nfs_acl lockd sunrpc loop grace zram xfs crct10dif_pclmul crc32_pclmul crc32c_intel polyval_clmulni polyval_generic ghash_clmulni_intel nvme bnxt_en sha512_ssse3 ast nvme_core sha256_ssse3 sha1_ssse3 i2c_algo_bit wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua ip6_tables ip_tables dm_multipath fuse
> [   90.252381] CR2: ff8e1df482000000
> [   90.253263] ---[ end trace 0000000000000000 ]---
> [   90.314201] pstore: backend (erst) writing error (-28)
> [   90.314686] RIP: 0010:__free_pages_ok+0x338/0x4f0
> [   90.314970] Code: e6 06 45 31 e4 41 bd 40 00 00 00 45 85 ff 74 13 4b 8d 34 28 4c 89 c7 e8 36 97 00 00 8b 74 24 04 41 01 c4 66 90 4c 8b 44 24 08 <43> 81 24 28 00 00 80 c0 49 83 c5 40 4d 39 ee 75 d0 e9 7c fd ff ff
> [   90.315511] RSP: 0018:ff3f281b098d7b78 EFLAGS: 00010246
> [   90.315778] RAX: 0000000000100000 RBX: ff8e1df400000000 RCX: 0000000000000034
> [   90.316043] RDX: 0000000000000d80 RSI: 0000000000000034 RDI: ff8e1df481d980c0
> [   90.316308] RBP: 0000000000000000 R08: ff8e1df481d980c0 R09: 0000000000000000
> [   90.316573] R10: ff25062537f9fe00 R11: 0000000000000020 R12: 0000000000000000
> [   90.316838] R13: 0000000000267f40 R14: 0000000004000000 R15: 0000000000000000
> [   90.317104] FS:  0000000000000000(0000) GS:ff2506253ec00000(0000) knlGS:0000000000000000
> [   90.317368] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   90.317631] CR2: ff8e1df482000000 CR3: 000000207d420006 CR4: 0000000000771ef0
> [   90.317897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   90.318163] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   90.318427] PKRU: 55555554
> [   90.318687] note: kworker/32:1[847] exited with irqs disabled
> [   90.319202] BUG: kernel NULL pointer dereference, address: 0000000000000008

[...]

Thanks,
Olek
