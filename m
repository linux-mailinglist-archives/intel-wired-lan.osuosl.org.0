Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BFC850F64
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 10:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D28D83E1A;
	Mon, 12 Feb 2024 09:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLgpibmfMTp3; Mon, 12 Feb 2024 09:11:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D39E83E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707729062;
	bh=1Mkw/4E+DUBO0GiCyq1pKwTuBuWZHwVkQXmIsjzuFw0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N3fAplxff+hwnuC5yNgW+rn8GK/CUfHA9bTjK66mKVBk2Bo3PshPstpNmmwhz22Nj
	 Iqi2ZZvOwnDtie2sGoEJeHPzEACbPmKmuvpwbQ+AVdMTe4SLU+Bc28gTG6tQPG7EtD
	 /u+xfI+SrhsNeKDO7LniGrT5oJ/UrGo0yUg9ekzgNCOGLdSgjuySn0O0huMvJZz5Tb
	 W84Mz6r3I2vaFFJ78fJO0luEnLSHXFe6gAGdwYd+yHtVJktaLggfDDd1w/i7cTth4n
	 w6WIZNr+soXdrxS2w3EinhhUi+coaiNcluRpQYYv4sIu+4PE4mMI/pOigNA3Kz6BM7
	 I20yA4oOkU4DQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D39E83E24;
	Mon, 12 Feb 2024 09:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1961BF292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3837360B94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LIwY8v9WgMfK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 09:10:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 85FE060B5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85FE060B5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85FE060B5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 09:10:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="19109308"
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; d="scan'208";a="19109308"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 01:10:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="911430632"
X-IronPort-AV: E=Sophos;i="6.05,262,1701158400"; d="scan'208";a="911430632"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 01:10:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 01:10:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 01:10:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 01:10:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WV0sWtPTTpek1oAuJwB/CInyEMUPaiLA3cb1n+PAWvc6qsDM9WODLriBzDyUBQVMt5Tz/J8Gy55jogz+6nKMnRn7LvZUTeczayW4Ws2224wiGrWUZAWlD7I0zwjE0+idzjo+9wyAKM3N5evAQ3tnQZtrki/uzZo/QEE7H774mW/RSKrOBkCYzbUR8VnWSgPiTZ1HfOzNo7ZkCRnpyNSa3jaUsmQNxclY5lxxKSWpx9N+Z8FbazfC7rHDmvN5oFfwvqyNK/wdMBgab72/xh23CeRiodQ4xk8S4vdGMKn7/pfHniiXgj7kigxSSKMUvf149sA1XnyM0a7sjq5Fs1A3Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Mkw/4E+DUBO0GiCyq1pKwTuBuWZHwVkQXmIsjzuFw0=;
 b=DNNdegrdWhHo+jBWWuaX355T2TBkLB/jWUgBoylaTAG54vm9IjO0tjD8CgoKK0bzO4eVZh0/oLquFcEAVuMaqXwFRwYVHy8bRvH4KtQW8lh/pm8BhjYvoWFd021XIcOFAsbd5DG1cletOkJvtK8oalDcNByovNozM9o4y64/qQx4kjWaPmoOo73h+vV24xP2LpJN7TOoG8raFIplInkrZiYBTiz53OQYrzqV5F79F4b3PqcyiqaN1hJUcOoO9SlPnMzfogMozHgvkfeMk5VgQOHrvU3GK/nnO1wxE16M63K5h7PbEaZ3QAtHSfzwBkGpehrRKTMP5H4m1Ck7ji8j+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by LV3PR11MB8676.namprd11.prod.outlook.com (2603:10b6:408:20f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Mon, 12 Feb
 2024 09:10:55 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::9e80:a6c6:5f1:d19b%4]) with mapi id 15.20.7270.036; Mon, 12 Feb 2024
 09:10:55 +0000
Message-ID: <1e82a3f5-f457-42a9-9382-7fdd2d129536@intel.com>
Date: Mon, 12 Feb 2024 10:10:51 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240209101823.27922-1-lukasz.plachno@intel.com>
 <20240209101823.27922-3-lukasz.plachno@intel.com>
 <20240209170026.GB1533412@kernel.org>
Content-Language: en-US
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <20240209170026.GB1533412@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::12) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|LV3PR11MB8676:EE_
X-MS-Office365-Filtering-Correlation-Id: a4d74a14-2776-4af3-3a83-08dc2baa849a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rfaolqLWxM1fBXTq/4McjhUOzxCU/m4ALtOW+YKHMDJN4Y5LgEtGN12oVUB70hGKx5gBN8UCBVCZ1Y21O6jneLEBDnfNmZGtVF+vmR1SssZpnJMqGAVg8dYoxbMmEnlsTO59G1O9oCTANbF1fSTyoJnuFIZeWvCZk3BrHywf07Thp84qzVmSJYAx4WDzUdU+nPNYOxFZ45x4gTNdv2p8H/vzi3Qh/oEIxKzv4TzAO4X6Kj95TZY5DREjgWbYJfq+zlq+Ybe5II+LDhLXY/z/Iyk6L6FGWNH13DvJnbrx3YGHBv7d/oysfrwR0pPvfonc/dt0Sx4oBFAEs0H2pHFKslQblaRZ56pc8xBJlNn2SVAgaV/3VaoP90o/7+6sykh8hQ8OlsRak2FQuNzECA4bDJTzmz6AuIiyopDJicq8pypgBcYfdzGVtpgnBS+kphw/Fd/Cak/iSCcy1d18Chkyosy5PW6bQVJRsgd5a5QIuutFtfwI6udqHYj+a4mEEQnmufjgYY2o29epFVpetj8/Ax5DfW7gqE8EI7Ntt2tFT5gWxM1j/++Fw2aEbEy3Ph6o
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(6512007)(478600001)(6486002)(31686004)(41300700001)(2906002)(4744005)(5660300002)(8936002)(8676002)(4326008)(82960400001)(316002)(66946007)(6506007)(6916009)(53546011)(6666004)(31696002)(54906003)(66556008)(66476007)(2616005)(86362001)(107886003)(26005)(36756003)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG5jdUo1S1h0VExwZEU0bEc2WkV2U1czSzZ4bFY3TW04aFZLbkpHYmt0c3hV?=
 =?utf-8?B?NnI0Qno1SEZxTlFrQktHb09hd0RhcGN6dUE0K1BhNTZwNSsrMFNaYUtZbWtO?=
 =?utf-8?B?WTl5eU90NFNSMVRsUHRqTllkOElHOFI1UXN5MStrRzVmclB6QUxMUHpUekYw?=
 =?utf-8?B?cHdPMjhxRDJnVGt3QVRkMGllOURmMGpjS2l4LytobHJ6eDdLUGFiMENpcHl5?=
 =?utf-8?B?cm5CQ2pOMitnZlNpSi9FOVUrd1NOcGtKdy9ScGEyQ2FDT0xFZ0tTc1l6Szln?=
 =?utf-8?B?QVZxSnI0YjlLWU5tTXNMU3VTNmFzaFlqYUF1NFI4WG56QkZPdHdGZjdoY1NV?=
 =?utf-8?B?ZWRyQ05zcXZuVE1WUnBuejdNaGJ0YUw4L0tUdlNQemNaSkxGTjBMNS9ldFNY?=
 =?utf-8?B?aitkRTRtRDVYZWQyZ0VVbFF6b3M4dVM5MGpjY3NjQlpCU05kMzlSVzB2YjI1?=
 =?utf-8?B?Tm4wcWlOUlc2N1BtcVFHZnJPK2RPTTh3K2treXpxNENGZnpBYSt4UEV1a0JK?=
 =?utf-8?B?UzNmQmIyTGZVVDUzMTJoandGekVkQmJlSnhpQzFsSnBYTmJCa05EZFJjallq?=
 =?utf-8?B?OVhTdjVSVmhPYjBjRDRZWUxFQ1RLRHJwSm5ZNERrVSsyUzRBNktBbGxYem91?=
 =?utf-8?B?WmFVT25MWTNVMWp3dUlwUEhYYnhQUHIyZVRxVkpwMlQ5cVh1ZmUxd2hKMm1y?=
 =?utf-8?B?RzR5elFabmhwdnhaNURWRGtNMTA4QUVzZEttNUpEaVcreURWZHR0UDNQVXRa?=
 =?utf-8?B?RGlVWTBKR2dPdmg3d1JtTkRMMUpWQlhHRXRGa1RuaVppZTZPTUk3U2Y4RWR0?=
 =?utf-8?B?bmZSZWdjN3RadmhEYlkwTWxMNjd6L2MvQ0xFUThpdU1uL3djL2swSkpkbGxO?=
 =?utf-8?B?VnVoQmlBbWdXbTF6cGVramJEUGd0YVA0V0M3UDVTZDNwRXhwTDYvbUllSU5Q?=
 =?utf-8?B?TWZaakRDaGpEdDZpR3FtalYyYngrUXdhMmY4MjJtQ0lTMVRiMnRoYWFlUzQx?=
 =?utf-8?B?RGJoSXRNa054UStRbDUyNTh1NGRpMTlBL3BEWGxobkhJbmJ6RG5lY2ZPS1pG?=
 =?utf-8?B?OVVhTG4rZ01FUFV0V0N0Qk5RdlAxemU3Z1V1UGF3ck1oTnNPUHpmMHoyYjNK?=
 =?utf-8?B?SndoNnM5bk5sakUyek03RmFFK3I1NnpnYmV1ZTE5NVdWK1FtM0xsVUJOMkFi?=
 =?utf-8?B?SFhQc0FpeWVCd3UyV2pxS0pkamdEYzlCM0U5YkdVNlFNUFN4MHhRTStTYU1E?=
 =?utf-8?B?dVhZd2lPSXlrN1o4aUF5NXRTVkMrZUtJQU4vSE5lV2NGdEVUSHFISml6N0F0?=
 =?utf-8?B?MTVKUktUS0FxaHZlUnJncHdlTUFnazlSUUlycTM1KzJpM3FmOCthVmkwc3V1?=
 =?utf-8?B?aXc1SitXbHh4am9tSlU1TmM1cTBxbGM3bU4xVW1jTE4waGQxS25KZGsvd1J0?=
 =?utf-8?B?TmtxNHV2UFpiVXVCVmVBS1QvT1RTMGNPQThCQnVJSUZOVDBTejNXUWo0Z25s?=
 =?utf-8?B?K3RxMDJaL056RXB2WlU3WmJ6L0p1dFJLTmpYNXhrMjQrbjE3OGR4OTlYOHFr?=
 =?utf-8?B?TmM3OVV0RjAzWE1lL0c3MDZ1YlBVNzVOR2NyTTZnMHA3SVUwUmJvT1p3RUtE?=
 =?utf-8?B?MWhZV0w3bStFQlc2cmk2U1NOdUd3K1pqUlpsOVZxb01aREVPNzg3dG1hWEZT?=
 =?utf-8?B?UVZmZHdheUVlTEZscnhRRjN6MnpVUHlOVUFFVnZrUFI2dWl5VTQ2T0c2R3Ar?=
 =?utf-8?B?dmdtYVk4NENZSWFkRkNaU3dlSUdsTGQrWjNJTWxyTkVucVlIT3R4RDlQTXVV?=
 =?utf-8?B?VjltVTNUY1JLY2RpOTZhOGwzQ05NekhQbDNRNjZqZ0hCQlAwUzhIZlo5ZjZZ?=
 =?utf-8?B?a25zdk5VYklneEJDVEprMnB0M3pqeG5EZm4yL0ZNazRyZkJqNk9QSnVoSmQ3?=
 =?utf-8?B?TWJPN3JvbWJxRUhnK0hHYzhKaHNPRzhHb0hXMVNHN1NUM1Z0ZFVybjJrVHEw?=
 =?utf-8?B?MlNtSTN5dVh3YnZMUGdYc2lhUkJkTUZlUnFuRmhKUUJPdDZnUGxPWnA3eHYx?=
 =?utf-8?B?OXV1ZWZJQVlCeVZqd0JrNjVhOXB1YnROYlRlMFc3YThYTVU1UTdYQzFPTU9S?=
 =?utf-8?B?elFMSUlTaW5SVzVWLzZyRU1qN0dVd3hwTHhEelBJZmo1ekFjRCtaQmo5djR3?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d74a14-2776-4af3-3a83-08dc2baa849a
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 09:10:55.0503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q0GghgJNcubjo7Ik9hLbm147ylUZ46GqGIXQ4QEe0JwuV+n4AG7IsKk4Ai4rbLES7G8lW90VqlklALQ5VxKNlgZWwn8uCcJfpGWf13be+wc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707729059; x=1739265059;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Sp14ew2tjOJJLHwVRgWUvoOdvhisQHGwXc3lJjFEnQ=;
 b=U4UtyrBnnmiN1ze+gH0FRkv/lVWEuDPg0MIi2yQNM2qIgJbyT1/P2Dlx
 xHkT85YAOIMVmatS/FUTU0h4l0uTnb8RCXrQJSunvWm5WyD8MB6KlQawj
 5ZkMimPKuA2a+aNUvMRugWwtfhRd1iPrbxTXLtYIzzSY3ECAMCJdmDtfJ
 oJtq39L2TwcUF8RSsf0OAFkww3Bl7voGWXMrGMKnL17qjkeYE3xWgIRWI
 WxPme1cKmwjddOPIjcBejviBldu4ZD5yqzmZFauVaptxdBQFDEb2rfASN
 ZAGAQSHDVZgDgOAtpdz49BMKZ612612mcmNxBu581Obt3i8kLf0LB3Vgj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U4UtyrBn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/9/2024 6:00 PM, Simon Horman wrote:
> On Fri, Feb 09, 2024 at 11:18:23AM +0100, Lukasz Plachno wrote:
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> index 1f7b26f38818..ec8a84b80a73 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
>> @@ -4,6 +4,8 @@
>>   #include "ice_common.h"
>>   
>>   /* These are training packet headers used to program flow director filters. */
>> +static const u8 ice_fdir_eth_pkt[22] = {0};
>> +
> 
> I think it was agreed to drop the "{0}" in the review of v5 as it is
> unnecessary.
> 

Yes, I haven't included it by my error. Will send V8 with "= {0}" 
properly removed.

Thanks,
Łukasz
