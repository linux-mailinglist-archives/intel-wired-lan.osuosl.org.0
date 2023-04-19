Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E76E7CFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 16:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F373861698;
	Wed, 19 Apr 2023 14:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F373861698
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681915190;
	bh=vk8nZSiCBy8LHjIbDkzj5egDzOO+172kfBFP2nxC5dg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bIbcQQx2Db7JU7PWqWLfnJA9kz5/YrCr7VehtDxOBgy9YTWsanQtxMvS2GN9P18Yd
	 7NoZIXJ1L0ylMXM9X0rHA/+IiV717KP+Fq6mGrmFioh+qAQL6Ee90sv3YPsPkKXU1N
	 2cToPf+NGr2+er7l9eJ6VYv69BVXWb0XsBDaM7++mKh2HkT1ebG0Lt3I+oIkY4kqd2
	 vDyYYdnuQ/qL7S7VCwJ+OYhTqrz+q6gHHrUyhh5gT4+DMy2QV3hKOXnegkSLljicb7
	 0gK8QVhsQUcbkoSiotvjbVwy13fSogmsUmHKhB2nWl1oSFGUCDn+DtvUR7CEP6mx4A
	 ErF+G/6C2gtbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GYd6zDbL2Fc; Wed, 19 Apr 2023 14:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7BEF61672;
	Wed, 19 Apr 2023 14:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7BEF61672
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A15131BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 14:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 799A684047
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 14:39:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 799A684047
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNJWh9-NK1JX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 14:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F73B8203B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F73B8203B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 14:39:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="373347173"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="373347173"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 07:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="780878172"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="780878172"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Apr 2023 07:39:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 07:39:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 07:39:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 07:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NuFmC+QWoi9YuARSCtA4WSjja7rgDKPQsrkHUcLjRfrBJgk/4LhjRwSErL+Fte535e9vFXO3HmeU7No29I0F6FSUpY89fG4YEBV5dRiGnvHjg7hrwUPjMfUUp+NYTZX7jaEzwlK8nw0YU0RKhKOJhQCVpRgckB0rtWAtRhlxdVTclzkmjxGaJb4FZm+TXO9YF1YL4YHOlcOv0yxT5RJ1OV+q+jPejCVBM8F9DgxBKwksRNoVUnyIclU+6Oc+HTY+B2IHSN+L4KFgWrMlkyHiCbWpX6VcaT1eIZ+W+WxTmNrTluOKCnL+kroCFucsds4g2kbXHdgToO8/wUD+/7Fajw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UOV1Cr/1xD/7wuE1Zt2cECqCv6mfLFyCAAOKRo9vd8=;
 b=axnFa6qZoFKngOQwpl7a4L35URhmuMedg2wLTOJS5RMo4yfaYZ0vk4+FTPba/trNKF52T/D/+M3JyXe6NgShW57N71ojpwDz/Zz5/NdHTNfdJfL1vqevwi/sOo05JGep6/vyShZKS4kvgbHYJofke3gpVUgqvfKsXiQFg8tb85IUmOJJesGJWvzwJIuJYKuZcgk6ZfW6N1j5jDqetm/bHyLMbE4iShle6VJd3R9xM1M8bTjrrseykT4GUBV/AtrXjlNFk9v8t5r+H77p+0CVh9TgOkWg8sYNmcljitb5cggp4VTdV/oVpBWGuclvGK0IgiaWD4hV9tQcx74tpvUkGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Wed, 19 Apr
 2023 14:39:40 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.020; Wed, 19 Apr 2023
 14:39:40 +0000
Message-ID: <f40f823f-c9d2-331d-71ee-d9f28f7d6177@intel.com>
Date: Wed, 19 Apr 2023 16:38:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-3-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230417093412.12161-3-wojciech.drewek@intel.com>
X-ClientProxiedBy: DUZPR01CA0062.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MN6PR11MB8170:EE_
X-MS-Office365-Filtering-Correlation-Id: 842c89ff-1799-4701-45ff-08db40e3e7c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qCTSGb1assVARGzU+HQ3RqHpDC5mKHf5Kb1xR3GzEvsxDqIG+AWbhCM1hu6rjc2Jo866PyKu7QTsQVe+5Egjc2JQMlS34kwZmBGpuEjvLmrHxZqfGXfpgaVTU8GdhDiDn3/2rHplOlPwqNfqSH7ZD19Uo8eVJXZrjrUAkjrNh7sEiBF+B3RGoMNQOuFZdmhJBMDh9m3MZ1/qo861onI+bAGJ0BLl03P8owVdM1kcn8pYcU/QFQqgIIH3OtAwTGc/+0NUrhMeFYfgaS7Ya7DwQi+apLe/pybrxTov2gNBe4WXbDR1VxCTa04MApWaBppC586BGZCgCOmyVD1V6YNBUYqqP3K9RE1ZYOI0bK3lKpXQ+8coCS+qhEd6sCV9k/+5PLeiPXJxjGC/y/fdqr/dN5ZaELPF8H6NAJ8AnMkCulaMu//5A9q443vI5FHCQm7acn/KiuY4w0dylrW/Dl4+qgxiFZb/dW73dRmScjbI77cAcDkkd3dzt/Uo3/hYMHAQyzZex6EDSEiU5vQFIdRexSHc3xJXbnXxwq97sOVx/ucLpUkvVXDEFb5QNmUdjjgqRK30aFkqAW40ZDHvItVkUyiAUCXoNy4PuIisZRSgZ039l8U+/wQWdiaaFZ2CqvPrZvTdywE8YFndU4gCWM4XFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199021)(6666004)(6486002)(478600001)(31696002)(86362001)(36756003)(2616005)(83380400001)(6512007)(186003)(6506007)(82960400001)(26005)(38100700002)(316002)(66946007)(66476007)(66556008)(2906002)(8676002)(5660300002)(8936002)(6862004)(31686004)(41300700001)(4326008)(37006003)(6636002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Yk1ic1E3RllsVVBQU2VYakIzL2dvN1hQUWk3NjJETDFrdk0zN2dxUkxKRWMx?=
 =?utf-8?B?TkNHcFJVd0V1bm96VnVMaW9tVXVPOXNGL2pqUGtYeFNySVoxaEZkNXRZd1hk?=
 =?utf-8?B?MmRqanh3Wmgxdzh2OG1QaU5VQ09xREllenk4TjFtVFduT05JTjhuUGEvWGFV?=
 =?utf-8?B?MStGQmFXeDh4VXdKNUNsdzZPOWJqdlhhR29tWG9hQy9qNStpdndNL2ZXY1hu?=
 =?utf-8?B?ZitvQ1dlVGlyQ0VUTlp5cS92TTJ6ZXdHTnd5cVFGWGNLSFZrQytIbFJveXEy?=
 =?utf-8?B?ejVWSkdoWSthK3o4eERxcThhN2s2QkxOM1QxdHF0UG93d255TGZGUGhZTitJ?=
 =?utf-8?B?eTNYL0M3a2pGeE1wbG5xellWelZnSE9JNjVpL0dZWFRielNnWEJGL1R1OEhM?=
 =?utf-8?B?VHl4QWMxaCsvVWVUVDFmS0ZQb1d1dEdOZEYrNWJVSzU0RjB0TzBydnJ1U0dW?=
 =?utf-8?B?emhwSHo0M2JYeFdqNUlPNWRNTUIwaTUzbGJ4TmcxSmdGMk0xdzJVMEJ3UmdE?=
 =?utf-8?B?OUFCbWkzenZNMTNPTTBMdmVxSCtmN1ZXc3EwSk9PdWJBQzB1dndvVTZzYXNL?=
 =?utf-8?B?bmhVVDFTUERPM3FIMEV1WkU1U1lpOFQwd1ZSaWlTeS9XME5NdFNDZUNweUJ5?=
 =?utf-8?B?OWtGQUNGbFNOcFN1WTNOVEJKREVqRDVVNDlhcTNrL2dnSXVETU5scTE2RU9L?=
 =?utf-8?B?UEdqMUd5Smg5bExiQlFUTTdYZHVPVG50SHlmRk1RNkxFTXRYOC9QbE0xdHcz?=
 =?utf-8?B?bUZ1cEVSZHJDRjRCM085SXl6VUVlWUNRTkdCdXJCeUdYSW01UjV6cTJtMFQy?=
 =?utf-8?B?b0lPdjhjWFFCVCtqaEpHTkNEaEh3U0pIbTRCZU83VWt5UGtLYkQ2enl5VkEv?=
 =?utf-8?B?S2Y3MzBBRVJTUGR3cE9iejZiclVhaklwTmFkdFAxZ0F3WGlDSm5CdWNGZlpW?=
 =?utf-8?B?eCtOWjU3TUlHRTNVL3Y4cStPNCtXN3pzWlBvbEtDN3dESE1pSSsxVU9QNk9D?=
 =?utf-8?B?Z1IrYUg5ejNFS3k1RUJFU0tZdU9iRGRlbVFrU3hrY1pOaUMraHVOd1R4d2Fh?=
 =?utf-8?B?c0Zla0cxemdSbVN1WFBKWGZHNlpzNndSQXJUdFlaek5raE1NZkVnNkxQVnAw?=
 =?utf-8?B?c3RvQ2pjekdodTBxd1gxMHJGajJpU1U1STJLUm1IWEJjQUpEc2gyeW1kemhM?=
 =?utf-8?B?c05WY3gvRmExckFwYkptSUZYNEtudDdHcFl1VVppZ3IyWTZLdDQ1NjhhSzlm?=
 =?utf-8?B?MUNlUmVMN2lHd1QxTGxaQ2tyQUtlWUlTZHNoNnY1dVZOMlhIQ1V1NHFvakl4?=
 =?utf-8?B?bmxhUm9WM0JuaEtGUjhrOERKMko1SEgwWHdoVytLcjlHWHp3UndpenZ1emhD?=
 =?utf-8?B?YnhhSDU0ZG1ZenBzRERqV2hNN2pEM1FaSGFiWjZZaXgrZ3p5Ty9oQXYycmdW?=
 =?utf-8?B?NFYwQjl5M1VvVWJyMXZmS1RSNGxoYXVDZjFpTlBVMDY1cWZZUlFBRUhtR3J0?=
 =?utf-8?B?L0JqUDBuWVF0SVh4RVNkSDNOT1M1a0UwRlpCcHg0YUFiaTlNaEZWS25lWkdD?=
 =?utf-8?B?ZGVBWFFqT2pSLzdUby9xRzFFSDRxb3V4aVcwaGhaUTl3NXhzYjRYNHVsZ2RW?=
 =?utf-8?B?U0NUbkpNejZDdTZuTEFQNDNnN2FpUEtEaUFndDNZSndsdldiWFJkV1l4SmRW?=
 =?utf-8?B?Tms2MjRxZW5vZnVYMVk1NDd1akVpeThrcWFvazlONG82TDFNMFJjaTBvaHdH?=
 =?utf-8?B?elNuaW8zb3B3eHR4bXVzdXVaQmZFRUNGK2w3cytXUDgyUlcyWUtSU05WdmRL?=
 =?utf-8?B?WE1YUHduaVAzSVFmS0VDblZTY25HUlc4NzJGcE5vOHphaWRHeGkxY3ZETVNM?=
 =?utf-8?B?VmNheHdVdjljVWI0ZXplaGtSeVVnQUdPSUw5VXFyUkJVaUtMQ2c1aXpCL0NV?=
 =?utf-8?B?VkphN2wwU2Z5S1ZSUFo5K1BjVmluS0JWa2xvWDBXTHNId2dmaGthTVFCUXNH?=
 =?utf-8?B?WnhPU0xobS8wbVJRRjE1RjQvYUFxWmhWWG9udjVKRUlZVFhVNytwd0xBNW9E?=
 =?utf-8?B?aWphK1ZDcXpHVDNac1JmUy9jSkhadm5XRlg5TlNic0tSaU50eWZGODg3Tkd3?=
 =?utf-8?B?RzgyUEVNT2F6RHQzVmNOQXcwajdDN21nODhjRHhROXEzZUYxMVB5eFlHMzEw?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 842c89ff-1799-4701-45ff-08db40e3e7c9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 14:39:39.6157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SGUEgoKgC+um0/YGwnd2m8rAd561L/Q/hjRR+rhZ38eWj0dCCU9CWanOSGb1NIMvYpZGtxeSVWK09SlRNE85RSKipIGUlV+3qKCLikrcqEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681915183; x=1713451183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7FvrDE9ofpDjBMlg8hvgLq5oumX9PcB4jMqxqg2V//s=;
 b=eRTPA1DnhF8F1DuW9nxgo0XkCEIqSDX8oO4RoqHzL0WqlsGFnozgLaPZ
 oOojeg0+0l/iqxNE95li7sS9U+EG8M3zu4ypmqoZh5VNsRmw9o32aF6Ke
 y5BKtF/AyHbprVLepnVu+bm1kmpEG5323sfBBigDTiQg71d1KvZvKNpXU
 0kep2vo9ZV9fk5joZA3yCGIRUxNAMpmwW4mYZ0HP7feSoIdXD0FQ/P4Jr
 UphJIL3/oJtBHCAivS1C1lIaIXK7LqWj2JdllgoG6ixaMCq8H+YflIUB7
 sUzDZNM9gXxQFl83F3Bofl8CtsOnoYPOpx8dwe1awpJCb2FudGlqhwq3e
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eRTPA1Dn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/12] ice: Remove exclusion
 code for RDMA+SRIOV
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Mon, 17 Apr 2023 11:34:02 +0200

> From: Dave Ertman <david.m.ertman@intel.com>
> 
> There was a change previously to stop SR-IOV and LAG from existing on the
> same interface.  This was to prevent the violation of LACP (Link
> Aggregation Control Protocol).  The method to achieve this was to add a
> no-op Rx handler onto the netdev when SR-IOV VFs were present, thus
> blocking bonding, bridging, etc from claiming the interface by adding
> its own Rx handler.  Also, when an interface was added into a aggregate,
> then the SR-IOV capability was set to false.

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
> index 51b5cf467ce2..0bd6b96d7e01 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.h
> @@ -29,59 +29,9 @@ struct ice_lag {
>  	/* each thing blocking bonding will increment this value by one.
>  	 * If this value is zero, then bonding is allowed.
>  	 */

^ this comment block actually belongs to @dis_lag, so it also needs to
be removed.

> -	u16 dis_lag;
>  	u8 role;
>  };
>  
>  int ice_init_lag(struct ice_pf *pf);
>  void ice_deinit_lag(struct ice_pf *pf);
> -rx_handler_result_t ice_lag_nop_handler(struct sk_buff **pskb);
[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
