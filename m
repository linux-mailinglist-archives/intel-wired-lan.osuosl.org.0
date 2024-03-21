Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33897881A7A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 01:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C797781EAC;
	Thu, 21 Mar 2024 00:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WL1cEFHNUTmC; Thu, 21 Mar 2024 00:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB75A81E37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710981289;
	bh=PQ8NGCWNe8Ul3llwquV4TwaXz5zy0mZkEiCnyZhNeAg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PYTfHUt9XDPTUf4LwLok+El2LHURnB1G2qUmEbvf0+GF4ruXIZb8AVeLyNF5ncoQI
	 c/jfDG2yeM4uIZvURSWtw/LUF8RsquGVHzYxr1G2uoK7raCG2FN2mI9cuHfJFQfE6q
	 xKo8VoISRIGbc8fsVqL+6Md1Y3ioKNueRGKajKIkBgT1/K3q0984bGiOi6zQIPcu7c
	 +v74s4uhvMPKcv9ltXN8UKr6RpZw3+zUV3eJHmoEp3+BQWfpl4xeEKoBPB6cmN67SK
	 KVh7Fsaa7jE8SJr428A5H4OFbPLZxapDACpJPZvZRuuFoE50bmc6v0VgWmZaC4bmwI
	 NfTfuwl282o0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB75A81E37;
	Thu, 21 Mar 2024 00:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4C9A1BF976
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4967B401C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-CQ_STA8RQM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 00:34:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 114AA40194
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 114AA40194
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 114AA40194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 00:34:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="17394938"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="17394938"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 17:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="19046441"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 17:34:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 17:34:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 17:34:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 17:34:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wetueeoi5NArtzrJC7T+k0kcQOG+c1exPl1w2VDlT5cToub2DmzgOT7a2GDfWN6DAOhbEzm5fz5bmgkIdPIrwpzYO0aUv3au9VHgY65/vLlREH4h+31v2kvrL+GW6EjqPJ4XW0rLHNpnNJ6yofntbhuFJO3IrYSyHSfpTqbbw13Ej7KdvT/00IW1FKDrV8M3+XPmFPBEFwCR+9EpfsDAGKf6d2nWbzNRgn2WD25fGJlDPf13oqShd1rOMqGyBKZuYElhxZagjKw+tiB2wJXNRyhO1To2fLc2axDNOelyBIbyq+bKNKCEiszfV6A0WFXefvn2tR6uwPRiGE+RzY8K4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PQ8NGCWNe8Ul3llwquV4TwaXz5zy0mZkEiCnyZhNeAg=;
 b=CB2qlyyxkCkkmnDmfGycThLZyKGMymVIhIuoLvqgoeiK+ZK2snPDsY8anhB+wQg64BlHqoyZZroYrrk6z0sWxkXcxWk/8PlhPhf/E7wKqOCwYWJ3l95imPScuJf5/qbVLHTdiY3b4IIne1UlUnGoSypPujnh8pxMxvu5Dmx2Gs3T200r4m3RBYmNYZUxeaEb/fJtPMI8DTmxhHQTlaK6TKTrJfbGk03dhn9YeQWDEB8nc0qC5uogExc+LPSO1fHYHGIBcA52JxLwlzS+wz8uCUj+d+79SPGtkOfQe8TDKuVVi4eOtYNbfGeYbNZYvn/D6tr0KoyL0Go+79Y+bSpdtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by CH3PR11MB8563.namprd11.prod.outlook.com (2603:10b6:610:1af::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Thu, 21 Mar
 2024 00:34:34 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::d5b4:9a0:100a:2e18]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::d5b4:9a0:100a:2e18%7]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 00:34:34 +0000
Message-ID: <3cb9997f-7703-c62c-40db-efdcc749ab09@intel.com>
Date: Wed, 20 Mar 2024 17:34:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240318162958.991829-1-paul.greenwalt@intel.com>
 <0021db2e-5b15-457c-af35-fb1e1ac7cb2b@molgen.mpg.de>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <0021db2e-5b15-457c-af35-fb1e1ac7cb2b@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0141.namprd04.prod.outlook.com
 (2603:10b6:303:84::26) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|CH3PR11MB8563:EE_
X-MS-Office365-Filtering-Correlation-Id: 059287b5-2fac-4e93-a115-08dc493eae95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mfe7ow3Pnz9Njlh3fBExsOrjL912puIkbyn3vPXSc1DVB5z68JTyp+FmhXaU26UTH4d2meIaZ+vsMBZ80HC+9YmterSTPYVV7/sF0wDShbm19j7aEapkSuCkA6oP+Zqe8KNX4d/F02TS13Xw5AaFtOfBXYnpwXXe1RNWa3qcEySnSZHCfRsHuYCKp/XqZZ4OrFw7U76JRHBjJ2hruSafGFInYeZlnvVCF8tl5rueCKcTqs2ONhMXZDrwjL8Z71E6mV5UXCPc/kIeNKHGsvyKh8S6OMLcq8oe7f2AuM2ku7bJf0jCtWJu4g3Ll4yPFGus5DeD1CljF9XMbE77AV2KDiTA3xWhZbToifHLT3uKzuozpw5ZBesMhK44qV/tu29zdPgbXDSshKlW9Aq0F+QW9zVzg7tZgX1fYEPZBT9HXDWW1XVDj1Mi5TkrCtz+Bbn+VKYHIrDx4r7eCCluzLycDOMuLlnIEMam2Ppn5YEcQZrVQyez51WGCGW7RKASEOKiQ/3qEuIAuqKFhl0E4bWd8LIj1s0H0ocyqaKAN41cQjTY31AZZVis5OnJI7MjI94dxaZChAU1Q38/nNbyrcqKKRoEO3h5Tptv6iQf5aSJ4iinviTbY35djbqaNYMFSqE0ZK69imbsxPKtWAWT1gF0jKhniQHDxO7xofeRLSzR+Dk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2UyQXlLNW9TVmh4Z2xRcjVHTkFlVTE2cWx1MzBPMkMzMWRFbCthSUo2bUd1?=
 =?utf-8?B?dHJudFZmNkFoNnY2eDBPa055MXQ3UGVnci9qbFRHYXo3TmNNdHFWZlNSUmZY?=
 =?utf-8?B?d3YwQU9RR2t6ZmxMNEdmUitmRmNZTGF0Ui84YVhBTVRzK0h3TUZPcW9iRVho?=
 =?utf-8?B?U2h1SFMrKzlWT2JkcEZyd0puY1BVc042NjJWN3FsMVdscFc3K043dFhaRldU?=
 =?utf-8?B?NkFXd0tRWHNIM0lmVnFZWGs1eXJ1aGNGTVpXY0JOczRmVUJJRjhOdWpBQWds?=
 =?utf-8?B?QjNvT2QrUk1mTnpvTkE0VGdCMERSdjIwcjNYNEtUNWtuQllBbEZ0QUxFd1FU?=
 =?utf-8?B?VFJyZnVpOUJBSDQ4VFNUbk10SUo5WVdrU2FrS1FJUzdISXN0VngrVkhuM0I2?=
 =?utf-8?B?QnprZlZZOTdzRFpPNk9BVUI3djM0dThFL3BGZmpuaVR1TnF5NEw2bFAzNXVS?=
 =?utf-8?B?QTJKQnQydVRVNnJsVUpKVnVRdkI4MkVMTU5HSWNzdHpGdWl2ZC9hRXQ5aFRx?=
 =?utf-8?B?ZFNnVHQwR3pBMXQ3UWVKTzlreTVhbUJCWjRIWGVXN3U2WnllZ1N0OU02VEJ3?=
 =?utf-8?B?a1pma21Yamt0S1lnUHJRelFYeWw0RnRacjRvMlNvaU1hNktOVEFRVjhNOU43?=
 =?utf-8?B?SlNNMWVGeWJFOW1yeGVJSzBrM0NiMTQvUUQwUFlTbUpqNW5EVFVMYWZLVjdZ?=
 =?utf-8?B?RmoyQkNFK0RCcnkrSzc2bUEwOFIvakhQRW9NWGtjcXlwb3BiT2U1UDc0ZWdP?=
 =?utf-8?B?QjRGZVZ2a0dINExkM0E3Qm9CK2tQOXA5RW9GV0pDUmZudi9nTkprdnFQTmdl?=
 =?utf-8?B?ZlNDbnFtZVRGb0lkbml0SUl4SGRmaEVVcjQ0QUNOSEVmYWxKRTgxWlQ5K2oy?=
 =?utf-8?B?eThXVVVudldTSkVsZk1QUFZMek90d0VHSmxONHpCcjZRWTFZaWYzaGc2Vkdh?=
 =?utf-8?B?SURzR2FTVi95dUZjSG9tbHhGSEZMV1hPc2w1V2RWa2kvNjc0ZGVpSFY3amhG?=
 =?utf-8?B?NTk4ZTdqbS9YY1kxT0puVWRleS9rZWdVMXBKVGZmQXF2Vlo0ZjVFWjNzWTVv?=
 =?utf-8?B?WFQxOVJnODJyMnl4c1kyaTlxcUpMbW1xVHpnWXJIcnprcjJGRC8zT0t1ZG1p?=
 =?utf-8?B?Z2E3N3poemRJYjVwTmR5L1R3SmtQdmtLekdzY0h1LzVYUWFhV0NmT3FzWXYx?=
 =?utf-8?B?MTZSa0F3THV4K1hyOWJOMTFtdm0zd0o2MFF3MytManV5LzNkRldla1FKRU1z?=
 =?utf-8?B?WGJIcXZwWDhHQnE3RlY0cnRzd3dac290U1BRRTdGb2lONUNLeFhVVXZkNHVD?=
 =?utf-8?B?RFk5RUlCbkRpeXVQaWtKdUl5QVNOYVVYdEpZQkV2cS9UUjZzRHhYcVJhVkFK?=
 =?utf-8?B?d0VTb1FDTktGOHhCb011dzQrOHBPUmF1ZTJvNVMwQVVlc2xwbEl6T1NDMWVS?=
 =?utf-8?B?MzlEcnU5Y0lhTnEvWmVHUEMvOU8yblZrbTBwd25hUHpGS2lqbUZGZGNDWmhT?=
 =?utf-8?B?SExUbkpJeFFMaFZ1REtvRHdUWHlWZlZiNGd2bS9ROVJaNTFkclBFY3JieHFS?=
 =?utf-8?B?em9jMk1GL0hFd3c5OUlGQmVRUTk3eEtTRFpya2pvQTR4bDdmVXJjdnREYW5T?=
 =?utf-8?B?b2JRTHRMV2s3ZWcyTDFGWUUvdmR6SS9lRkFWVWRJWWxRVllnb1BXUkdBa3Uy?=
 =?utf-8?B?NDJqU0tCTko3ZzVYSHlkME5DU3ZsNkdqV3NpQ1MrVnJSeXRJb2xrcU9hVUgw?=
 =?utf-8?B?SmRLdi9vMUcwdTNpaS90WDNaVS9ib3hZM1Z3MjN6dmQrR2d3NXhJY1RGOGpD?=
 =?utf-8?B?cWhVYWxTNHE4YW9pMnEyc1ZBNlM0Uzh0eDhlUDRrRUpTcGpBYWxtbFM0Vkdo?=
 =?utf-8?B?RnMyL21PRnhGWkJWSVdDYzRoOUhhWmZSdVJTakl6UHA5V2k1ZmcwWUVFblpo?=
 =?utf-8?B?cUxZeDBiQ3R3cDgzalh3TXE1b2lrRngxWHVyaGRmTFcrSkpvVUlJcUVuNnlY?=
 =?utf-8?B?N2hUbFJlWTFMZ2VGL0JFRUVBeFpRN1NwNWJVNXBkbnN2bEFvK0NGdXlOSGFW?=
 =?utf-8?B?YVc0cnFoZ1ZiUXVHQUJmUzFISFZZdmJlRndWVy9ma2xlYXpnN00rSFpjTnE5?=
 =?utf-8?B?VFZ1OGJDVWoxNjkwZkhOYTdGdnVNcHpmaVJMQUxNV2ZjM0g4a0dMYlkvZGlz?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 059287b5-2fac-4e93-a115-08dc493eae95
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 00:34:34.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FmHW31ohvZW8lzrrP3owR3t8TogRg2rJMBx1wXyYCMK6l2viJUJa4PkKIpyBwedaR2nYKLTIRM0p23IT0IpIU5hDfVYRty+Ff84q8ArE5Vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8563
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710981286; x=1742517286;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3/k4fysAXgZd9kiIwyEhnTnuBL7UEFK+I+MqlrbuRQI=;
 b=DLoCjTt/PE9hTLqNCf3qJFNZh7Fx25XJ5SE7hojRdOCNdDGjTB/fp12Z
 /yZ2/XlXyciPcQEFIZbgbddIFviXB83j380xhWXARREqQJhAJR2dildFx
 k+STotAk0Fu9kqcOQt+GeKmO519UVdpwpI9Puf1JUqLYSIeGTQmi0okAD
 gabfrydtsncrkxSfxv5dFZzFFDN+i5ldR9tAi/H88sl5soaydi6Cq1zjI
 nfcFAohkh7eK6sTsaSQp70xdNA7VYaAu3qx+dKeF9pJW9S8TRWP3bBxsd
 AZtrOhXnR6Dxy3OJuIIF5gMpDe0qpuNE5jZ6DdtwQJeiOOaIP5pX4dKt6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DLoCjTt/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix package download
 algorithm
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/18/2024 10:44 AM, Paul Menzel wrote:
> Dear Paul, dear Dan,
> 
> 
> Thank you for the patch.
> 
> Am 18.03.24 um 17:29 schrieb Paul Greenwalt:
>> From: Dan Nowlin <dan.nowlin@intel.com>
>>
>> Previously, the code would assume that only "Modular Signature Segment"
>> existed. Given a package with both a "Reference Signature Segment" and a
>> "Modular Signature Segment" the download would not have been successful
>> because an incorrect sequence of buffers would be sent to the firmware.
>>
>> Update download flow to detect a "Reference Signature Segment" and to
>> only download the buffers in the signature segment in this case, and to
>> skip downloading any buffers from the configuration segment.
> 
> Could you please document the test setup (with firmware version) so
> people can reproduce the error and fix?
> 

The package isn't available yet, so there is no reproducing the error or
validating the fix.

>> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_ddp.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> index 8b7504a9df31..90b9e28ddba9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -1424,14 +1424,14 @@ ice_dwnld_sign_and_cfg_segs(struct ice_hw *hw,
>> struct ice_pkg_hdr *pkg_hdr,
>>           goto exit;
>>       }
>>   -    conf_idx = le32_to_cpu(seg->signed_seg_idx);
>> -    start = le32_to_cpu(seg->signed_buf_start);
>>       count = le32_to_cpu(seg->signed_buf_count);
>> -
>>       state = ice_download_pkg_sig_seg(hw, seg);
>> -    if (state)
>> +    if (state || !count)
>>           goto exit;
>>   +    conf_idx = le32_to_cpu(seg->signed_seg_idx);
>> +    start = le32_to_cpu(seg->signed_buf_start);
>> +
>>       state = ice_download_pkg_config_seg(hw, pkg_hdr, conf_idx, start,
>>                           count);
> 
> Sorry, just reading the diff, it’s not clear to me why skipping is
> correct. Isn’t now nothing read, if the Modular and Reference Signature
> Segment exist? Maybe comments would be nice.
>

The driver can skip the downloading process for this segment since there
are no buffers to download  (seg->signed_buf_count == 0) . The package
will contain one or more additional segments with the actual buffers
(seg->signed_buf_count > 0) to be downloaded.

I will redo the commit message to try and make this clearer.

Thanks,
Paul

> 
> Kind regards,
> 
> Paul
