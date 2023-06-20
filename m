Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54673688B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:00:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2957418BD;
	Tue, 20 Jun 2023 10:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2957418BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255200;
	bh=ODSv8YTzMAjw/wnrkVL13J1O+7/EilYWAIUZLbOiHMs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1prl/pmz9ENWzjm43b8ammDfBF+qYTzdJK8guIr7uAnXixlCoIbAhKE/19Kpt6gLl
	 CnbCg8aw8/de5Xtm8mA0O70PzPK1n8H9Nk5c4YElgs8upj2oQxfbdx69J7nX/TSmV5
	 QfTLWpKvyDpI6HrG1jQeOWZ2XiBXxUcgUFCnb3IEOFFc7yWHp6Q8iBJq6A3rt927Kv
	 hU1JugQ2zwhGWuClxQiHEOLKtNR8Kcz+QGRHhycJu49pFxyD74euwuVhp7kDVtSbt3
	 JNTgiLAoI8nbs5GLAxAAbWt1hcECxFM8iM0y1Nik+qHd/D3Wzekb/o1i3uTPCO2lSX
	 9+1ffUJpRkWGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMl-dylpr-rA; Tue, 20 Jun 2023 09:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 284E0410A6;
	Tue, 20 Jun 2023 09:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 284E0410A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED6F01BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 09:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE68060BE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 09:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE68060BE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NK0Nu3vuvLWV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 09:59:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11C7760BBB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11C7760BBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 09:59:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="349550191"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="349550191"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 02:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="826918441"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="826918441"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2023 02:58:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 02:58:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 02:58:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 02:58:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdVyKUc+OQmiwH6lum/l9alz1RGojF8KmtxodXvikvw8vZrj4Lnq15Z9PChINFZhH6X5AxYrE/Z2biTE0/p++ez5wWJ7iUfQz4qWJ0Qx5D3iNIZm2HBRrYP4T/Df6A+KPrbfwOMUfyQLXYF8oByF/+jNJEzPLSlhOcEN4olA1RcpVd+SDOyCkUFcjYTP85bdNPDVkfVlvzkGxMj4KqpPKfU3wviNzX79qr194d6HYUfNXgbXtVqXXLoIM6hGz68ysdXL44Pf1eXEu6HJtxHsx+a4FgsyFiC8b2+4XtmQiDXSjkhmAM1hpZVkj2XfqtGvOnOjugHtdjjRa5aCs2Z3BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=60IBEvhLLeKw+fi20VN2zLf4vQH7uyU2GyfNhJ8c4EE=;
 b=StO7eOAqsgRq0hLtgydf1/EyvOlBRhuKgzaoP+lW3sx1/aQ4hjtOvjlFQ0L1hMkMk72UONou8HypbsVJhVtfP4hVm+Y2I9M5O/ibcgPhbcc57V9vWXYQm5kG5aQeN0/kYV2Ioofk1DZ/4s4VFE2jLoWo5YIblAH/TXdFZxgWtgpD6s1I5ffP7xxTzQK0GmCSpkRBNucoBCn0t4Mms/Ytfuoi9kvr0ETGGOpOIOIfld4TjpmNPDvoMhkg8r0BzH+lMLT06uSTUBNXOZ35beYLrHrmEvNzdhz+uaM3JqdREiM2lfL0ZzZ+uKoYWSIq7lOhWCL53Jt/w8r/YAFCU+j1Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA0PR11MB7936.namprd11.prod.outlook.com (2603:10b6:208:3dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 09:58:31 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6521.020; Tue, 20 Jun 2023
 09:58:29 +0000
Message-ID: <411e5807-39b6-db3e-f260-98d0c34dc0f0@intel.com>
Date: Tue, 20 Jun 2023 11:58:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: FR0P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::16) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA0PR11MB7936:EE_
X-MS-Office365-Filtering-Correlation-Id: 575b2f4e-0000-49a7-c7b3-08db7174e5c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MTeh3Hol2LsKF/gfsIEokNVyfdCSoMxNPITTFqpcrprvp7gv2Z9J9ygdsrYOSNgCd97HeH2pch0f1YjyGecF7wbUri7PhJiXpB/IacnnZDNlwsuIEqv/bli2ONyMBdZzH9+0zLDMcJXJ3AVsJIgKkHipCmHFDE0TOH+Vz9AUJiaKosM33Y33e9ZIdGybOcavYVabCSTX8TMalHMmq1BPIUsHJ8FAZUJLqn6voDeMx+Fro3rmVFhIjn/ope+RHRGcB/FYFN1gmbGbjuA6mewiupTV/VV/D1GPhjkvShcCAGWlhOr9pnSSWm5TXfum+v7zTv4NVcWeTVcVV9IR3mUvjpwe4wnbqFN0JbLaxu70AgOyDKJCopdiHP6VzD1YQ0Iyj2oTYe3LcFxxxw8AYq2P/6+duEwp6aCDHVklTi8hocTN+l631qVnUHhH4Hn6/h1H/fxnDw2sS/NzBylFXT2iaz8tPt6l+EVTOZe1Jk3lr/efw0mm7mfXGPN7N9efwUgd58HJSlK1ArbQONaG2GpL4Pp7xHmOpkHxMwF4rTXvroHtoHOVvPTQ6+TPQxt5ZG3d2Pj3qfxDsKMGM2WaqIc53TrwcjVsNlazDO7hJlOcI/6Yg82xX2e2lb2T/AN8CqaVHJvWdyrCYWwZeXnL/JbL2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(6666004)(6486002)(478600001)(186003)(53546011)(6512007)(6506007)(26005)(83380400001)(36756003)(2616005)(86362001)(31696002)(38100700002)(82960400001)(107886003)(4326008)(66556008)(66946007)(66476007)(316002)(31686004)(8936002)(8676002)(5660300002)(41300700001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1VJWUJNdmtHQkdpNi9QMnFVTmNjZEo3c3gvUGxVVWpZWXJyZS9RNHJDK1hG?=
 =?utf-8?B?RjVzckdPUFlDbkE3VmFBRXJkMmp1c1VsSm9Ib3d6Ymd3YlpIcnlGNzRFcmNK?=
 =?utf-8?B?eUhwa1BBRkhaSy9nb0lUUmtqMzNBN3ZiNFc5dXdmVmRRZERjM1lFV0wvRXlF?=
 =?utf-8?B?VzFodmN0bEc1T0o0Z3ZzQUpETzE0VlpoeTBmQjFDRXJGTDF6WjRON2JyMFly?=
 =?utf-8?B?LzdENEs0QzBkVFFSak5IN2tOYzNXSVY1N1RYdkE2cDVZSm1nenB5Wm44K1Fw?=
 =?utf-8?B?aHkrR3NpbEU5V0g0UWdRZytobmZqc2tnN25TeWNGaGtJV01qT1dhK3VhOHFp?=
 =?utf-8?B?M3FtMlFsNUp6UjE2NWVscE9NakZ1SzM5NGZMUDFpKzZiQWlLRzdqaEEzeTFX?=
 =?utf-8?B?V212azFwa0FhY1cvZXp1dlIvRzlvQ0RMc015Z1N0cytiRVJENHY4Ynk3ZnZo?=
 =?utf-8?B?NDdqMkZha1VuYUM1RlhOcXBHeElYSjBSSGxiRTNXSHlCZG1DYlp1MzhxWGtZ?=
 =?utf-8?B?Sk5Fc21TZDd3cURqRUtPS0RtOUgrM2NjbUZ4VkxoZVFTcERQOUpabGVSZEx4?=
 =?utf-8?B?Qzl0VldaT0ZsTFRVQ2xjVGdDdDNUZHhBL1Fsbyt2MkJQL3loRUdQSjk3T2l2?=
 =?utf-8?B?bk1keXRyUnl5QllzREdVU0o4YWVENXZIeW16aWNyTE5GcUFZRnFEcUxrdyt2?=
 =?utf-8?B?Y1ZHa2ZEM3IvVmxPVHRjS2plSzVuNjBmenVUT1c2TnhBRVdDK1Iyamh0dS91?=
 =?utf-8?B?L0lPTXdHeFlHemJ1cmdxMjRneUdIYmU1U3lpVStwZ3pRWHpFU3pramhpMWl5?=
 =?utf-8?B?WmFEVHNqcEJDTWJnZ1VCajE3Y2xwdzF5SXZDMnRuczdDYWVXTi9Jc0p3cFhQ?=
 =?utf-8?B?QmVNWUdKbmU3dm1NNUFjaEJ0MmdXVlN3dHlUNSsvSmVOaklSRFNETVMrcWdM?=
 =?utf-8?B?ZXlPeVNUWG5GSWMvNTFTUG8xQjBLYXBYVjNXK2w5bTRFbm9wVld6UWI5UUZG?=
 =?utf-8?B?a3NLZ24vcXdVYytvUnhuelpSdnJ2YWk0bitYL0pzSmNPT3g2OEpBNkhJWEVZ?=
 =?utf-8?B?WW1rRzc0UVdBS2lhRDVWejh5anBrcUpidVMza0JhWlVHNlMxTjlxV0ZzZHlZ?=
 =?utf-8?B?N2pITW5yK0tMaWs2QnNzRUxjeVc5N3NhaGtVQWVxL0V0UHMxMHg2dFdtQXls?=
 =?utf-8?B?MjQvamMrL1BJTjNVVlJUaTRyMzFPZlVyLzJBdUp2bFZiOTQxL3FNYmdYeWEv?=
 =?utf-8?B?Tm8yTjVXclVBMGZOWVdnZ1pxRk5sR0dzRVVOWHJnRlVMWElNSUNLT00yYkt2?=
 =?utf-8?B?Tkp4UXJaZ2RDUFlwMWRwN3FUUTBoOXFOckVGUko1T0twNHdjdjNycStiVTQv?=
 =?utf-8?B?MG9nVDdmenNzNFRqYlliN0svNGFnekRDMlppVWl4UTJGTTlBNExVRjN1RnB2?=
 =?utf-8?B?a256M1ZYZmwvdkZEWU1qSzVSQjhpaWw2OS9Ic0REaUNPYjBpaW94bUt6YlBm?=
 =?utf-8?B?dEVBeDAwSVFTaU5qc1ptSWpoUGR0UisydjJxQXZ3UzZvV21BV2x0Nk9EdXIx?=
 =?utf-8?B?QUtQM2U4SnZtOElCK2oyeEJjd1E1TjZYMnNtcmVwN2xXN2kvNGRlZjRBa3pw?=
 =?utf-8?B?S2dHL3VnMENNcnl1Wmw3TEk1TEMwc1dCMVNHWlJBK2tEaDJZMFovSUFOKzM5?=
 =?utf-8?B?Lzk0VTRhZVFpUUFxdzlmOXpiSFJzdzNhOFhnSi9TM2hqMStBR1lLQiszejlE?=
 =?utf-8?B?ZFpaalE3Tk12aEd0ZHdpNThYbzJMS3JsV2VBSUhLVThzRWJiTitubXVEdUhG?=
 =?utf-8?B?Ykh1cHZZQ2ZKZ1R6ZUsvZ054UzVsaGtxRFhaZHBiaS84RUJQbVA2elBrbXNL?=
 =?utf-8?B?aHlaYTJHODZmMG5ybkdkVjdDbGUyeC9HdGlyakZuMWlFVXVjTDhaYytsTlJF?=
 =?utf-8?B?MEtYS0J4RTZndVMrM3VhK2FERW9BRG5OZkR3TCt4TVNHRDJZRjkzeE5PSVd3?=
 =?utf-8?B?R0h4N0lCQllUMWMwenFRVEI3aXE5Sk1YMXJXYUpwRHM3aldOOW9OUGdjRFY3?=
 =?utf-8?B?VVUwWlFQdUJzaG95NTlDQjY3bHVWd3A2bDV2UnBsR1dQM2VwcFltOFR1dkVy?=
 =?utf-8?B?dnBGdjhweGNxdVVyYlVJeUpFMUxuSTYwbEU4a1FqZ0NkUWlLRVlCTDhFbjNp?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 575b2f4e-0000-49a7-c7b3-08db7174e5c6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 09:58:29.1749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xTlg4afuFxjV4I0VTkeF+YYJG1aScrKwuz0OCmPI59zUOr0uB/Mpxx6lCoVU0ETIJ/aU9VPd4doZOTjrtOx73iprhjwcZmFhYCzPXgsdM7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7936
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255192; x=1718791192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qrYV3FD/x+tQJ+NADOb7dIiMGSErp1uaLQP/PanVhps=;
 b=iM8vO6NFWKR5VKiLXhizp7GNEH5sJXfudkMxbh0TkleyeNjLHG5iLC0K
 I9128oxAlYLJnYp3ijoZ+8irpAlKJMvKUSbpTrn0UdCcsjw30MsOFeOwa
 Ik7RWhSm3GfLqmmX8tlPMIAweORgkxJ1ImLYFvyajw5GY33fZ6y790vyU
 6sqdIri93KrdpMSq0BoDvhV/Z5hr2V+PljpEt/iPtvUb60h9kgqBKogRY
 WOQfUlukFtGE6IqP5IX4I49ZFiNdC3IPJf5Lon06hZvLMPgzcSsQrhgSv
 Qe4z1PEI+pQMng9hqlc3zELmmxMf8MjSzJ6Iith76rmJoz8Xh8qTcGonU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iM8vO6NF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing napi deletion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, michal.swiatkowski@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/20/23 10:24, Maciej Fijalkowski wrote:
> Error path from ice_probe() is missing ice_napi_del() calls, add it to
> ice_deinit_eth() as ice_init_eth() was the one to add napi instances. It
> is also a good habit to delete napis when removing driver and this also
> addresses that. FWIW ice_napi_del() had no callsites.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index cd562856f23a..f6b041490154 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4485,6 +4485,7 @@ static void ice_deinit_eth(struct ice_pf *pf)
>   	if (!vsi)
>   		return;
>   
> +	ice_napi_del(vsi);
>   	ice_vsi_close(vsi);
>   	ice_unregister_netdev(vsi);
>   	ice_devlink_destroy_pf_port(pf);

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
