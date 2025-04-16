Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4019A8B874
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 858866FCC0;
	Wed, 16 Apr 2025 12:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bc2FsQV_yIQN; Wed, 16 Apr 2025 12:10:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D75236FCB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744805408;
	bh=yR3lgDRBAxpbin6FP1zLi6mAXvqwRuDzZ8Km8IBbLYA=;
	h=From:To:CC:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tQ8bYfz/KEEVUu+CL/xAjpj4A7Whd0R2rnjmhwZbJ1NIzu212u6UOJ7sjeL/0w+iB
	 5HAOIed7xxdsv0Bf2yJgcE2WOx6fPh/0vyMWvFNAmy3XhrRnfrpof/BEFy+B/cCwrs
	 3GoRbY3170wcs/36wYdDgya6lo/Erbk1zfuNMy+PW5K4uwB2iFdHWNLh1lK46X5CrW
	 U/U4I/D8bn2mR7A5EPmDQTOn1nFFKxxcSwqN6MzIxoLilPWnVi1eASHj0tE/uyrHWv
	 UvAMqG2mNqCGS5KIk6iMLqNFz6qx7TCZS65alyBcKnVbMaJgvWTuoYstQNCbzcWzcm
	 VukitNBep92uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D75236FCB9;
	Wed, 16 Apr 2025 12:10:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29255E83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F65A6FA3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hAC5LnofS1Zg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:10:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D13776FA10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D13776FA10
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D13776FA10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:10:03 +0000 (UTC)
X-CSE-ConnectionGUID: TNbHqLKkSRGPvoSWk/yLqg==
X-CSE-MsgGUID: p38zm5C9Rjejp0eGnW+utQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="71737555"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="71737555"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:10:03 -0700
X-CSE-ConnectionGUID: GVh/gANsT7+9wxMRMNntAw==
X-CSE-MsgGUID: mXTUbBGNR+WDmim5XFBolg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130424481"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:10:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 05:10:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 05:10:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 05:10:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GigDYwvk6Gfn/7DR3unDhaUZRaxAgK4AbYjIaF2yltwT0UOTjAQJmb40j5ZpVn6/dazQfV9QzIiL/nGN+QMEKb6ju0KYJUWc3Cf8sWIFKN21orhck7jOLJgnk7u6CrfT2eAI3+t3CIHxbpZnzHtT7Daz8F4hfFmWwmUXAy9g9mhoPuBg0Y78v+wkvCN+DjcMDJ1zSrz51/zpOHeXbzpPuFrThtV9kNkeeTzwAGJpgmHfHJq3IC+d/uQH/5/n/lyu3yymKfbUbIjPieVjaSxGc2hXqpnIX4UIvySp6IUuTO83ZFGxPJulbqEmRWKkeexPBINWhMCiVa6DmanNlY6Vpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yR3lgDRBAxpbin6FP1zLi6mAXvqwRuDzZ8Km8IBbLYA=;
 b=Ipi7YXNgvZO7/rw6awwaY84q/BhtmzAetEXbElIBn9lYhvXYNyXu9/hsCwxcgtsOqT9D7twb3DLMn302qjBsEIObaUudeshf9oxsrloxAUqNS8hKLEXEmCYLs5wn7PbJp7jAfI4ALBVi0manGn/ThAhnwqnI63ANDXa0ArVTH0VMq37n8mYQfH4/2HhTZBfodCkHQKz+JM0FqPEZeIPCf/RBcKFpcEVtMNqXvXk4UGml8X1O9OKsJz2E8zKyqYavGngVlbZ8IlUzdQqCJhvFRbGvKobn7LvFaL05ooa1ZfxaUZpD8KgEmsEkMYMTuInBRteH1YsTXxcmZAQ9WcVp2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SA1PR11MB8574.namprd11.prod.outlook.com (2603:10b6:806:3b1::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.28; Wed, 16 Apr
 2025 12:09:45 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%2]) with mapi id 15.20.8632.036; Wed, 16 Apr 2025
 12:09:45 +0000
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <regressions@lists.linux.dev>,
 <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com> <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
Message-ID: <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
Date: Wed, 16 Apr 2025 15:09:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SA1PR11MB8574:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c6fe066-71f0-4c79-338e-08dd7cdf938e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0xmVTF4M2Y1Mm9hN0hnbnFoejhUWFVOeGtmWDkwc2NubzVVMTFySXBmcmQ3?=
 =?utf-8?B?SWRNSGJ2R2VmNUlSRkU2RGU2VklmNjhIeVlub1FEYnV5bFVIN1BDcFlBVUNX?=
 =?utf-8?B?SzQ1TXEvZXYrMlY1Mk54VFZ5UGJTZVdQWUhEZ0I3bTdKZjQveVJBaTR5Zzhs?=
 =?utf-8?B?V0JCdTZxTkVnMHBVa3RJZGRKb0xUZmttWTlycXBiYzhQVFZ2UUVKd0srT1FG?=
 =?utf-8?B?UW5pMXg5TDF2cEZSZkVIYVo1SldVSE5pRjQrN1NEWHhIZ3JmMjI2WWNmMWY3?=
 =?utf-8?B?Rm5WU0x3bkY0MVRTZ0pZWXJmV3FLU0Z4a1pnVHNKK3hzdVM2MTlDSURhS05C?=
 =?utf-8?B?dWtrR1pab2FvRFQyemx1VGVFaEhyVXZBdUkvU0t2WUVKZldQQko3cXpXTmpo?=
 =?utf-8?B?RzFwRFhFSVlmcmpDTjJxSlJjc0FtMnNpSEVIYWcrVWN6ZGhieVh4WVNPTDFI?=
 =?utf-8?B?WTI0YXBRVXJydGlNT1FnSG1YcU04djU5bEhwejBqdnJjU01xUnVDek5qdWt4?=
 =?utf-8?B?V0Y0bGt4bHRpZ01TdHcyRTNrZlp6NlJuSTJXUXZBRDBnZURCZVNaYjQxVk1Q?=
 =?utf-8?B?aFFnck1KQ0ZaaXFvZ0FhSVZ3Snk3NlpYT0p1R3lCVHo4dVdCOHI4TXlEb0Uw?=
 =?utf-8?B?TkMzVmYrdklZemdJOWFscS9XTEhUUFNudXlLcGZuekF2K0VkU2pscDFLWlRh?=
 =?utf-8?B?bTNhYWZ4VmVyQ0lSVGNjbjAzM2lBREtHVVpib2ZVZmtOSFFDUEFkK1UrQXdV?=
 =?utf-8?B?OUtDUjdnZWsvNnQwRFBsay93UDBWNWdCaElocjBtMEdiQi9USTlXTkRxbDls?=
 =?utf-8?B?alZGOXZyNkpPdS9lTDVkRlVzZXV6cmRyUkxmQTlwQ3dBWSt4OWxiWFluTE8v?=
 =?utf-8?B?b3htTXRhOXZHa20rb1FkNGZaOFY5OHhxbTNxQW92a1U4YURRTXNmQUxnZWNX?=
 =?utf-8?B?MEhUMWQrSjBNaWo3Z1Boa05wblBpL1E4Yk1PcWlMKzZrZzZVTG1CSlliREc0?=
 =?utf-8?B?cTMwUy93VWZEbFFDZGJjdzltUGpMaEE5dTFKVmpLR1JJOW1VTEczVFR3WnBU?=
 =?utf-8?B?N0d5eHU2VSt2ZFNsdzdjcWNYS1Y4eUJWdFJVbjlES2F3TGI3QitCODkyaHd5?=
 =?utf-8?B?NW9uRFBPMUozNnRBbDZaUUY3ZHNENEZvMloxN2V1VFlWOHduTWx1eGdMSHRx?=
 =?utf-8?B?b1ZZa0h2Z21tU24wSnpJYzhveFpISFY4bUR5bk1SZnJ6V1V2bEN5QjF3ZDk1?=
 =?utf-8?B?TnppcnZqb0RIajZtb2ZHTTVPTUZpM1lVeGZKc0ZWRFphTHpDMW5zT3FNTnps?=
 =?utf-8?B?ZTFrdW9BZnltSzBldWEwN0dGeGcweEY1MTZBandCenpkN2dMQXRtajhDeHNa?=
 =?utf-8?B?UDZweFlNTk1jazY5d1ludUN4aXJIVE5IUEg4TXVncVZKUkQ0SVpiZnVYUDhX?=
 =?utf-8?B?bGhyWmhJdVE1UHpYSk8zbCtucXM2U1Nnd0tIb0JDN242VzJXV2cwYWhRNXRT?=
 =?utf-8?B?UnlsUjFrblJKQk5vVWdvY3cweFU3Zy8vU1BJdWtXKzJrSW55aUUwcUhOQzFT?=
 =?utf-8?B?dWtNWWRreWkybzYrY0NFcEFqK2pwSGhLYm8weEJxRkZLam5pRHc1SS8vbzNY?=
 =?utf-8?B?b1I2NlJXNkEvZ1diaGcyWlZvd1hFMy9hQmZLaThYRU4wd2lhK3hZa25lYk9I?=
 =?utf-8?B?ckd0R0FVQ3lad1I1cVVPU2ZFeDF5c0ZWR0V5VFJzR29yTElpUVhNejIrOWk3?=
 =?utf-8?B?WWpCZzZVaGtKT044TkR0ZjdvMUQxbjczZnk1YlRGZzZ0WFd5RDFRRnk3NEkv?=
 =?utf-8?B?dUExVFhjV0d5cWJLYlJ1WUZ6RW9mbEpmbzFrWEw2QUJtaVFnZkdHZm5IVmZ5?=
 =?utf-8?B?dlZiUjdtWU8rOVBvM2ljSzBWNnFTVzFKVGR2M1NyZXJnYTVFOWo1a2U4eGpV?=
 =?utf-8?Q?1eTPMG4qC0M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXlYb0grS1hnWFJrT0lNSEVjQk9YMFlZL1RySkRwOVl3cWpvWVdzVjhUTm1w?=
 =?utf-8?B?Tk1xME5JaHVLODBPQmhnNGNqT05CY2ZYcVYyQzQrM0VNa1ZpTEFyU0xNbmUw?=
 =?utf-8?B?SFFDS3ZwbGt1dit3bDZFUUh0c1ZlWkl6cjJTekpodmtaQW8vM1VTdEtLTVhv?=
 =?utf-8?B?V0s3U1JMWG9pUzEwQUNKQXV3YktJZzRiRTNSUGNhNEdmUHY3OXU2ckJXd2lu?=
 =?utf-8?B?cVFKZWxpeWRVY21lMmJiKzk1MmVCbnhqcHZhVlgyRmF5UVVsUzlmMjA3VGFa?=
 =?utf-8?B?Vk5lRFdrWEpVRG1vaTJ2QUwwbng0cEMrSG1BUkpkQTVISkV5UTBra0NxeVhu?=
 =?utf-8?B?RkgweU00RHM4eWF2N2VvY3hsTzVkcTRzcjM4d2RiZlVscnNZNE9QOXhHKyt1?=
 =?utf-8?B?ZWpSeHFXY3pYenJ4eXZremZQMWc5WFVySnlPeGRlOGFuLzFSZFU5TWVTVlV1?=
 =?utf-8?B?QncvS3JtM2VrOFpMRnhPeXlEZ2RLUEJRZ0Z4bzl4ZndvNUVkbmh4VnVLM0lI?=
 =?utf-8?B?SU4zckNJZ29VRG83a3M2bUxqbjVrOHk5YXhLQzdJZ2svUXhiblJhVWFDazhS?=
 =?utf-8?B?cDMydjJ4MEZWcjQxc1pybFJSbE84NDZjVEZqMFpld2xEYm1makd5ZFVmdFk1?=
 =?utf-8?B?YWhxUW1GN25KdkM5R1VURWxuUTN5QkJHU3NPOVFkditvLzNaeUxnNVFybkl0?=
 =?utf-8?B?MkVhMkNyWE1PcWY3VkpzUHNRTHJ3UmtNQzBhQ0IrMG82K3lOb1FBdE15cEtI?=
 =?utf-8?B?MDhjVFE0ZzQ5OURyT1M1VHdBbVV4WDQ4eEszNC9BOG9DcFIyZHdqWXRNR1VS?=
 =?utf-8?B?dDd5Tkh4MjBsQmpWUk0yRmJmT2hMcXR5QjVRb1U5MVdyWFg3eEM4Q1NTK3Fa?=
 =?utf-8?B?RFppQ1FiMThDNi9IQTVlcFdxd2VTbFBkcTgxZGZ0RnV5b3BZSkJsUzk5bHhj?=
 =?utf-8?B?QVhKaElxYUYvdkJCWXlzRnpjSkVRdyt1Q3p4ZEdsd3h1aGF4a28zNVhvcCt6?=
 =?utf-8?B?LzJyT3NBNTM5eXhpNmhoWktmOXVVSVdkMTk1NmZpMjlHSUVpQ2ZmdFlDeFN4?=
 =?utf-8?B?czZza2pvREZNcmd2MkQ3OWJxalo0amdVWTRIZlBHNXAzYnptcDUzU0VOZzBZ?=
 =?utf-8?B?SHB4eXNCSHl5TEZMUUtUK1VqdHliTVRQOWlyTGlGeDg0MkZFdkRJMlpJVkVI?=
 =?utf-8?B?YW1MbFYwTFpqOTZzK1dtUWJRcENaSmttcU9tSVJ0OFhmMWRYVFJWRTZvV1dL?=
 =?utf-8?B?OG14bW9JeFBnVlBYTGh5RzhxblR2UWlCUEVjNWhUMmo1SmM4Nm5La1pyb3N1?=
 =?utf-8?B?dVJkRDE4SFhoWFdhVnVTYW44aXpXVUVnK3BkL09nYi8zTmhWL2NCTmJIRktW?=
 =?utf-8?B?eGcySnBYcVd1Ukl1VjIzZUdqSmFxazJla2NlaFJ5aWFpN3VrQndBdDltZHg4?=
 =?utf-8?B?bGt2UVFpRFNjWENXd1VhOFZoRm01eFJDTEZUZWlZSFZFZEJzVDJ1UExmRHRp?=
 =?utf-8?B?UmYySlRnWVFJa2RMWFlMZnJ0NjZPdXVRaHcya1JDQ2JEMlcyV1lUTlM3d3B0?=
 =?utf-8?B?MVE5d1JiazBLTTd0VTlhL3dRbFFpTlJzUk42WkRCMFVnT3JZK2dXUTFJUTRM?=
 =?utf-8?B?OVJaeDFiaDFkbUdFeUc1U0lHZU5KdlVzOW1MNjIvcFdVbmNiQnNPY2FYWGtG?=
 =?utf-8?B?VEZVckw2bnBzVWZtZXdCZnBPcjRXakVLYXZ1L3B1eEJkQWxCSy9Sam10TVl5?=
 =?utf-8?B?RmNRdTQ4WEJlajkwNWRaaVFpYit4Ui9lczl3eFpFTDNmRTFuc2RMNVIwb3l3?=
 =?utf-8?B?blEycG5vWno0M3JGM0dWRndReTBGYUp4QzF0NjBjTEtraTNwQ2lUVGUrZFZr?=
 =?utf-8?B?T2pmZG9SdTd6amxYamxZQW1PVmpYTUZySHJWSnB0RDJ6eTJ3OGhMV0I1WGJC?=
 =?utf-8?B?azYrN1lxc0dnWGlpZVVtZkZjZ255TzdXRmZHZHVqa2kvMXJvakNTQUVUWVFs?=
 =?utf-8?B?UDd3RnRhOG1YRkR6VjM3NzhDR0g4TGIvRWVFbkdKRDRtR0RQbm1mbDZxeGgr?=
 =?utf-8?B?bDgwcXIvR3IvOFMrOWIyWm1SblJpNWVwN21WQkxKRG9wUzdvRnhMUUdEbWtV?=
 =?utf-8?B?cjZpdGhOTUpQZUUvY1VLb1ZtVXdzem1KZWVqL2p2cDltWk95ZExBNVBNTFND?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c6fe066-71f0-4c79-338e-08dd7cdf938e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2025 12:09:45.2931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TXinlloJ6pT2KhxF6IaFOS38wMU0Ug/fRcRXXLWzkRh4ntDLSv5Npq+vLuBa3NwzXJcgzPaZ59jwo7yBSSZh9Psh9qOxGXzadIc2nOVM/g4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8574
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744805404; x=1776341404;
 h=subject:from:to:cc:references:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JaqD0iessxWNq86Qx7x4dVpLJJwCukOcsdIlJ41tfK4=;
 b=nL9GIXYyBPEMcUY9cTbIvVAmsI8XpG/PvzzgWl78p4FwuRMlWKq6s8zL
 ADtkFsObmJGLw41JvAYac5lcaNq/dPYxlAaxyhPhOTnIk28EKarGhbxav
 Hk3pkJLuS6ELsS1fVzkMtkfnzHe45T1/nxUN3AU+Yz+lRSr3AH7h9FA2v
 0wec2G1GSLfYhfBSxh5Mm3qRk33SRZFzRYHcTwabvi2b4nnD4Ybt5ujwK
 wqSwDchTXaVMS1p2O2N7oA/kJlt+SwU3ctWS7wKUkLUkkqGHfLnX7iMJm
 dBmjQV9WXHvAGqEXbwy2XdhhBBAJnxIYhYhlaz6dLGsojSLZEB+evhB7o
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nL9GIXYy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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



>> And also ethtool output if useful:
>> Settings for ens7:
>>     Supported ports: [ TP ]
>>     Supported link modes:   10baseT/Half 10baseT/Full
>>                             100baseT/Half 100baseT/Full
>>                             1000baseT/Full
>>     Supported pause frame use: Symmetric Receive-only
>>     Supports auto-negotiation: Yes
>>     Supported FEC modes: Not reported
>>     Advertised link modes:  10baseT/Half 10baseT/Full
>>                             100baseT/Half 100baseT/Full
>>                             1000baseT/Full
>>     Advertised pause frame use: Symmetric Receive-only
>>     Advertised auto-negotiation: Yes
>>     Advertised FEC modes: Not reported
>>     Link partner advertised link modes:  10baseT/Half 10baseT/Full
>>                                          100baseT/Half 100baseT/Full
>>                                          1000baseT/Full
>>     Link partner advertised pause frame use: No
>>     Link partner advertised auto-negotiation: Yes
>>     Link partner advertised FEC modes: Not reported
>>     Speed: 1000Mb/s
>>     Duplex: Full
>>     Auto-negotiation: on
>>     Port: Twisted Pair
>>     PHYAD: 1
>>     Transceiver: internal
>>     MDI-X: on (auto)
>>     Supports Wake-on: d
>>     Wake-on: d
>>          Current message level: 0x00000007 (7)
>>                                 drv probe link
>>     Link detected: yes
>>
>>

Can you please also share the output of ethtool -i? I would like to know 
the NVM version that you have on your device.
