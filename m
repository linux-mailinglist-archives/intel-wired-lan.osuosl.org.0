Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319B187D652
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 22:40:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32F2740289;
	Fri, 15 Mar 2024 21:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Szjle91Y4sq; Fri, 15 Mar 2024 21:40:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E284402E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710538802;
	bh=qCt5hxWZKWGkXM3sRjq8jeMBiv9ZP1WRCREsVd9yXpc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZBajmuNSdChyW3g1I7AcdxJoBHVKJAZYZAshhFtcuecAjKNgRjAxch7PEGmBJEI+7
	 wmwbx+QBAe+KQGZQfJSHeG3Meoi5dcuJ8aNPlszFRpjDF2wryeDJkdL71WZC9YkVh6
	 3HniuI117FdAPlb8SmhDjMOTr6/ClE3M1gjcaJOrX0MkrvRu+kPh7xdwh2l3YNUFZs
	 2GhStiDsAF1Sj6svGxLTRdsW8yo1XT2Rbzo93ITrdzwjoi918YRi4Zz6VeLQt/M6TH
	 +UFVzR85ohB4pPcwqInoUMcHivVWUlQ9O7mgERg0hm1YaCK59U4p9dy11KsVuM7o9O
	 Bm9t0bFGEOh3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E284402E4;
	Fri, 15 Mar 2024 21:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D05191BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C89AB417B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59SHqnhC_VrC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 21:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76F60408F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76F60408F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76F60408F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 21:39:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11014"; a="5618220"
X-IronPort-AV: E=Sophos;i="6.07,129,1708416000"; 
   d="scan'208";a="5618220"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 14:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,129,1708416000"; d="scan'208";a="12729905"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Mar 2024 14:39:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Mar 2024 14:39:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Mar 2024 14:39:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Mar 2024 14:39:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctID1kafdOgAEPnVfx4jz5HgqEnw4u/H9IN/GTcdgkBy63I3ufcLyaufH20T20sKEYufzqPM5Q2nD7RTnUeEFpOibDxQoC+AfeotivOYsfv2+jKCE038gAMHRZU/bTtoKuUaOZdO1hlAHNyj5cVdLK+2QVk4NIpvI7Gvrz6ppxGeejbGXDqDL71JjTje1zlIuYwnvPhB+mX8eZCu81DT3CoL2EFltgHeVDt1wFelEYvcuYnu0uO9v/dGF2NiKLqWMOGHlCpD7zbD2U8nXBWlMg7jVc+pYQZ72sD0iFUpKYyfajBeAVT93g+PT5rufR7YWD69CKCLy5haeSGaLaOsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCt5hxWZKWGkXM3sRjq8jeMBiv9ZP1WRCREsVd9yXpc=;
 b=fMdZ+kAD4YSShGaPC5PHNMG/Gseoqo8Wc6GQByVFWzsifSZNE4Pkjdr3ctGKynz9JKcsyB87SayiKGHhh76LdvrjXUdHQUMoa+8nGB2YkGxC5YPVRNGfxST6iHuIgBQoLfbuWAEq4mjEkDA5mZOgggYXbf2HQp3bG8K1FIMWvpyxC0OL3YNx6lW/ED4/9d6Vi5iewA+AK8bvk3qJWomPJsH6t61yetDJfp3F0+CaeqLdDNZSD3DReLyZPckrkrkbZIauMGXVRVtLnZ4Ry9pLT/6kOqKX7cHAddw+O2bUhYUpQFRkck7j3SqmMehi/ikz4FngIIAhU4gUsbmOWPgLjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB8113.namprd11.prod.outlook.com (2603:10b6:8:127::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Fri, 15 Mar
 2024 21:39:52 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Fri, 15 Mar 2024
 21:39:52 +0000
Message-ID: <0f9e719a-04bc-0dbf-637b-ff5914de0875@intel.com>
Date: Fri, 15 Mar 2024 14:39:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ulrich Weber <ulrich.weber@gmail.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240314091513.25984-1-ulrich.weber@gmail.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240314091513.25984-1-ulrich.weber@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0223.namprd03.prod.outlook.com
 (2603:10b6:303:b9::18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB8113:EE_
X-MS-Office365-Filtering-Correlation-Id: d0c986d4-b83c-4123-9c98-08dc4538726e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NjQs6WQA2370stLWTgS4VLA2y6486JUnutpC5mtdpcAKPEaK5vt1Mvo7/kkEXP/hM9rmcEcb+ZJ4sltPiY06M5tTiN5AH9TcteuJ+z2vhZgcDWZwZZXs9va0FO5TvYwpzh3owgDOY/qugNLF2H5S/Iw2FpC9kjnPM2hNiV0FNy1RE69rfU279muoxY48slGZ4vhbnLOasr8DQLdxL55D0T6Yn4sKheAaOfbT4fH5g/aZFMeYacEv42zao+cjuyBEf1LzOhkHsBo0LjVoK9sjoczOPiYwYzzrDqQIEbw16+D3BOOPgq/oJhMM8/EDettEtZttXMNCMzet88FozgtSMEtH8wWuZaQetRrq8/Rm4eSCJEAnRzo6YhXoykOOqiSH14fQr3qzoFBGnIH0tp4ZF9Yp7hfpjW3lFf6g4mscpnuTu5USefMvI4zWnC1vBLC54CXVGk2TdByJVyMN7saXJxK5BRuYRgTR7Q2W59QICyFPucwChrk82wIIjXks/YSxCbbUTUM+5oko3dfszkdB3IxA+8OjqH/jhqVES4T4KuXt5F7sSzQjAihGEZ/P/N2zDPRtZDQBfP9gauMS4klRxzG7FUBEVVRuT2CSrhZzvE3lekTTCBDRUu/K6YFWsH7V0tnJ0SNj7lahTfHzsCEfINzqTss/3VhJ4tvYuaCAjVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWM5aG1XQ2VRb01naFFLYjZWVU1pTUdiUFZZN2JpSHpNZkdhem9FV21KcjFq?=
 =?utf-8?B?aUp1VXVVRTV0WXdlMmtJaWsybzBqZlpwTjM4alRxL0ZIMHVUZWZWNTlYMWFw?=
 =?utf-8?B?N0FkYXYrbXVHUzE4Nyt4NExkQWM1bE9SMVAxcDRWUVRhdXNRNjJNT0U4MXl2?=
 =?utf-8?B?aTJ4OU9ZaTJjb2tPUVQyK1RLRW1yenlOMTdFTkszMHREdFVHMW9waVRKcXM0?=
 =?utf-8?B?Z0NuMXJvYlBCNTc0WVkwL3ZzK1dHZGxZM01IMlNSTmN0MWJvQlZUMFd6NGxL?=
 =?utf-8?B?YVdvbjBDVGVnT1FabWNuYXdYK29Kek11d0N0Q3B1Y2tRTnZRakFzYk55OUdV?=
 =?utf-8?B?OGYrY0dLREpuK2RSeTlQM0RQYWhud3hsdm5scjdPVXVxNlRJaGEzRnVGU3Mw?=
 =?utf-8?B?bmlySFhiR1VvRlY0K1htQzluRmtmNUVTR3d3Zzk4cXh3eVlEQzRDb2ZQelc0?=
 =?utf-8?B?WjRaVS9GdWRlUjNLQVZDS0M0RGtYMk55c2E2VEJVUlZVMlUyVFFhTmhUMHBK?=
 =?utf-8?B?Q204YWlFcVY0QnoyNC9FN1dacHY2UjdSZ0VxdndxejJEdUJNTUxPVzUyZUd1?=
 =?utf-8?B?cFU3TmphQlU5RTlUbFgzNjRjcnhqaXVLSCsraE96TnhjaGVzQjV0Z2x3K2p3?=
 =?utf-8?B?am0xa3lZcVpqbHlWL1pKbE9qS1VibDB1QWRiVnBlRDNGdUxZS3N6MXV5VEdB?=
 =?utf-8?B?OW9CT3BXbTJRRklBbEkxRlFEYU83eWZPODljd3kwSW1ZQjV5MHdkZXhhWUNv?=
 =?utf-8?B?YU1LQ083MWtsTFlRTHV0aGROTGhndXNoSnVuTGcvbDlPaHQvTFpSNU1tVnp6?=
 =?utf-8?B?b0h4ZmZTWElFRFp5OFJsdWpIYkN3NnVBYUxxWjdUQnh2SXkrb0REMmZTWUg5?=
 =?utf-8?B?bEtQamJNQlY4VkNiakZ5RkpwMXRxbkRCWmdwZmhpYjEyZi9IN0ozSW1pbDBl?=
 =?utf-8?B?aHoxb1A2ZldPMHZVcGR2SWpRMzBVSXo0dk5pY2lIOWpLMERHSWdZSFU1Zmc4?=
 =?utf-8?B?NC9GT2xHbUJtS2FiL2dYYWRzM3k2TEROZGdsSmdhL2dPYk9rQmI0VW5Hbld2?=
 =?utf-8?B?M0Z4aGVWbk5wT0V1TUtqSFg4akpTaGtqSTFmdUx4M3JQZkFYSUJCV2VQcHRR?=
 =?utf-8?B?NlFVeFRVSFJOdGNUck9SRWFZQUxaUWNKa2xuNUtRaVJpZStPdlpZSC85UHA4?=
 =?utf-8?B?eGh2SG50dkZVeFdXZnVOamRuUEMrUk1yQkJkd01mNEZHSHRRMDBva2FsQmQ1?=
 =?utf-8?B?MEZybDBFcEJNQk5XYjNzODg2TWFkNmYxYVJEMTM3NWtRUEhOUGx5MjAyNm5U?=
 =?utf-8?B?dlBJdmZXSDM4cmtUOEVoNmlVVUhLanZ2akJhcHBZOWEzMkZZNVdBb1RJWXIy?=
 =?utf-8?B?TVhBbDZPWjdBbjFJVTJxREZ4RTlMMW9Md1JDVC9DdGU2QmFFZ0pSMDdjclRy?=
 =?utf-8?B?TnMrUnBZSm5sN00wKzJLL3BxYVZuWXlKb1laZnU4am9xM2tQM29aMGxzTlJO?=
 =?utf-8?B?M2xhNzZsMHJ6QnpEWFlBN2h5T2JES3Vsc1FkUWlIdm1DVTJUOXZhVitWeVdk?=
 =?utf-8?B?ZmNkQzMrc2RzSHZMUXVldmRQTkQ1eWtvbXdHV0FsamVYMHpVN1ZUa1BCSTRH?=
 =?utf-8?B?OVZRZHhLWEJWeG1MWWF0Z2ptMG01dGd0cGU0YWVOSllzR2dxU1NGS3JVeE1s?=
 =?utf-8?B?V0cvcUY0N1UzNlF2WFZ1RGh0ZzhkSWVXYVpYaDcxYjdlNEUwdEJ5eU9GeTUr?=
 =?utf-8?B?MzFsMG1NdFY0c0Zjd3hFVU9sakVxZUFhVGtpZDZ5RnJseEtwVlF5VFU3QTlj?=
 =?utf-8?B?T1RCUDR0TUtJYWk0dEZmYzZ2WC9DRmtzVkxidSs0cmxhWU5RU1M5YVZqSGJi?=
 =?utf-8?B?U2ZVWE0vS3VMRzk3Rkptbzh3a01RWU53VFUwcE5RZm4wNC9CRTg1eWdkaHhs?=
 =?utf-8?B?Y1RUYnEvaUZESm52YnRRTFU5akNWcmpYeHQwbkgzU3Qxb0lzQzZEUVo1K25E?=
 =?utf-8?B?d3lNc0Qwa3NoQ08xc2xjYUw1WlZYMGpmVVJWa2JGTWloRHJ0NnZCcG5nSWVM?=
 =?utf-8?B?cytMcDRSRXJpMVpGbzJpc3hvRnFhMXg4QzhoL2c4d3hqZ0s4Vkd4cGRXTEJq?=
 =?utf-8?B?TW9CblRlQ1dGeGFxeDNOT083ME1VaXQrWnVFSXozaUJLZ0gwSE9vR210cFZi?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0c986d4-b83c-4123-9c98-08dc4538726e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 21:39:52.1491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jQEZeDSypRo+9eFcB/eukzKg/Go19G0VDfXSO4HkmwJIBKlZKkXUytc2M7RR2MPm8mx9pec8llvNP8Hu3qYV2Pp5xEzC7G/t71nw7l+T0Js=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8113
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710538795; x=1742074795;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FvQtNbUx4kPtgMT1EA6USD/5Nfz13gBiRgfzyzWLcc4=;
 b=P0Ot/1dGVvVovmbYvsSTM/St6xoge78HoVwhnFOPjafQNTB73pIq6KZH
 8QY4jABmQk9brSfAl3qfkWOYAJ4TdDrcI+XONHR6TmT3Wn/aUmgps3T21
 Uf9kzmvg583wAKPiTENEgYCPtg0XLGTJEECv8TWCZ9eFRX53/iCnyC8A1
 UxVLfAmPLJnK0ByxMNvH0JTn+OSg+ai8CSSbY2SGz152KhR/943ekiXTc
 Rr7LO5fhxFuA2h5VBU2wYwOA65haDNVOK2LLsNnC7ODrkboCA7idncMku
 q/G67eKce43D5FTd7GSY2GtpBMWYPXOp+bebAX3U9Dzw5Z2QL8RJTgrio
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P0Ot/1dG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: set ethtool autoneg based on
 active cfg
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/14/2024 2:15 AM, Ulrich Weber wrote:
> Current logic uses ICE_AQ_AN_COMPLETED information to
> flag if autonegotiation is enabled or disabled.
> 
> Since new ethtool netlink interface checks if there is
> a configuration change or not and ignores the call, if
> there is no change, this makes is impossible to disable
> autonegotiation on links without established autoneg.
> 
> This will change the logic to check the active phy
> configuration if autoneg is enabled or not.
> 

Sounds like a bug fix, so you should target this to 'iwl-net' and also 
add a Fixes:

> Signed-off-by: Ulrich Weber <ulrich.weber@gmail.com>
> ---
>   src/ice_ethtool.c | 10 +++++-----

What tree are you using? This is not a kernel path.

>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/src/ice_ethtool.c b/src/ice_ethtool.c
> index e1eeb16babb3..8fe475944f2c 100644
> --- a/src/ice_ethtool.c
> +++ b/src/ice_ethtool.c
> @@ -2857,10 +2857,6 @@ ice_get_link_ksettings(struct net_device *netdev,
>   	else
>   		ice_get_settings_link_down(ks, netdev);
>   
> -	/* set autoneg settings */
> -	ks->base.autoneg = (hw_link_info->an_info & ICE_AQ_AN_COMPLETED) ?
> -		AUTONEG_ENABLE : AUTONEG_DISABLE;
> -
>   	/* set media type settings */
>   
>   	switch (vsi->port_info->phy.media_type) {
> @@ -2912,6 +2908,10 @@ ice_get_link_ksettings(struct net_device *netdev,
>   	if (err)
>   		goto done;
>   
> +	/* set autoneg settings based on active configuration */
> +	ks->base.autoneg = ice_is_phy_caps_an_enabled(caps) ?
> +		AUTONEG_ENABLE : AUTONEG_DISABLE;

Since this needs to move to after the PHY capabilities call anyways, 
it'd be nicer to put this with the rest of the autoneg code. You could 
probably utilize the existing ice_is_phy_caps_an_enabled check and not 
add a second call as well.

Thanks,
Tony

> +
>   	/* Set the advertised flow control based on the PHY capability */
>   	if ((caps->caps & ICE_AQC_PHY_EN_TX_LINK_PAUSE) &&
>   	    (caps->caps & ICE_AQC_PHY_EN_RX_LINK_PAUSE)) {
> @@ -2960,7 +2960,7 @@ ice_get_link_ksettings(struct net_device *netdev,
>   		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
>   #endif /* ETHTOOL_GFECPARAM */
>   
> -	/* Set supported and advertised autoneg */
> +	/* Set supported and advertised autoneg based on media */
>   	if (ice_is_phy_caps_an_enabled(caps)) {
>   		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
>   		ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
