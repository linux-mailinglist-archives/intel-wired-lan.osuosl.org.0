Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DF1794075
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 17:33:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93D9541B7F;
	Wed,  6 Sep 2023 15:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93D9541B7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694014436;
	bh=2vE1KSpfPuAFAnuniHsTNxHtu0ZMrNmPb+3l7KesrlI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C1jchHuMDuqGFPXf7HjXc4RJgmPCtVM/GxYAA4WFIks4opyERlt1rYYQcA4MkRlPq
	 Ecsf2BtaZvMckIQ0fzUlKgE0oHpqhVChsFTQ2oZ1jwIM3KeCMyURjq+FCbCUFFD7xo
	 fIxLCQ1RKVZXrXXDG0V1nrzoFoSbAjTC+fChqry6LvCaHtGgcATqYqR0XYqQpl6gGg
	 Cqe0qsthulAcjlYfH4N041df9zXCW1rVMqwfp0/0TkFiQmHNQ2py4jyyxmboc+pez5
	 3dsTlNA8N0R+0m8WT00F7aNmK0f4zDpBjf7xscv9n5ADn9ltelHBVx7tCTytI0VcGc
	 vLEjUpRHoTThA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVLsZNgiELVC; Wed,  6 Sep 2023 15:33:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 480AA417A3;
	Wed,  6 Sep 2023 15:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 480AA417A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 824231BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 15:33:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6280060AA4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 15:33:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6280060AA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHWQAirfOeZN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 15:33:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FFD760A47
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 15:33:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FFD760A47
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="379809140"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="379809140"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 08:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="831717646"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="831717646"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 08:33:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 08:33:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 6 Sep 2023 08:33:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 08:33:36 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 08:33:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gyassz8zBDz4jm6I0hnhrqslw6xDkCllaJbm/e9UdtwfwMq1nOpoYvW5QZhSF489p0Qu0GMPPjXscFo3ag3H33NT30F28wu71lREpaBEkkWJOHVpbj0kxti/AQk5uLtEjZ6GgtiPNfO3LwJm1F1THC0J91SrHhkvHgK7k76eiL2mTqRWPbKzk0JFp6P4tA31wURkTnOf9ukiMnJZ9NUrTuQvXPcBgvTm+LES5k3eHL1002/le+jMTHsza595SWGQvr3u4rgI9wEl/NvJHgbCk5X72dcgO1akPFcrm58TTlNaY4mPPn1Y1jHxJ0iri49rlztk3GHRgtXo6+xKeXxprg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GHuYHecnzbzpZRWu7k6L8a/576k8EzJHefron8HZQog=;
 b=CYDjAw5jTNRiG07fZgz9oebhGGzGIRy9cLajIUvJ6542b9CrqfzqK9d0jevJKs43XMzpq1r0BIRr0x6zEglXvIsJigHaZ3WSVm9uh9f8VZZM2bK0xB4UQgRGR95XNStYwWsZyv+tEF2qxJbDwfagq1kehz+fzwlJPA1hMme4HtmBlYMCyZzQkgJNpm9DRlRfcdwCAq7Imy2NcVBUipqKWyA0j6D5SqkZTupnOdKY6kuMz8dSY/H6UKAHwfIWHI3MmTRIu17giIjIqPIQXVLW5/Cc9MxzVS5iRAGVt1RF/GwsBPgzSDYUI7wXn+ZskdjvVnWHlWxQIdzcagVl9dthzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM4PR11MB5374.namprd11.prod.outlook.com (2603:10b6:5:395::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 15:33:34 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 15:33:34 +0000
Message-ID: <b894c33a-2fc7-7049-4d7b-2a6ca06439d1@intel.com>
Date: Wed, 6 Sep 2023 09:33:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20230906141411.121142-1-poros@redhat.com>
 <20230906141411.121142-2-poros@redhat.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20230906141411.121142-2-poros@redhat.com>
X-ClientProxiedBy: FR3P281CA0194.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::10) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM4PR11MB5374:EE_
X-MS-Office365-Filtering-Correlation-Id: c6ad66bb-537d-4ee1-b876-08dbaeeea19d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z8CDuU2FLC0whZv6bTUvVVpI3r1VX3VUBsEWDsDlSCkQBuWlbap+opf/Ex3Opf2dUu6rih2N0aCu6Pvp5QIOlgqMFPRmCxfe1rroKQKxOFI3T9hrNZzs9BeepE01s+6A83Izpz9IHsr5EO9tHIQyt0azm3bAVodU/TLAP30JZRMohJvv/YzYsH+YYGTa8DWfuXEUmX+erDA1bbee3yya8KM0UKH5eL7ZIEiZ1KDEciCdSCtnZzPzLArWNIU5mjqtJNVu6o7Ryz2qdDF9kk5Y1xijvcPRFalYRqTGFf2YYycNaiaRqetrjW831gx6xTKpxhOjcgfm8wSdBx5bquRw6/NI/ZcWaUorhsREg01mRPb8TVy2tku0KGA+vGml3q3qaOsNCbFafxM09dwWlEJn9gd3CK2SGwuqACzQ7ftGiUhvFVfFFkIgeuxiOn/hUu2+YZ4zHqdXxiCMhbGPQjbLmjG9KhLENISXd1BuDRtIfyGw3fvTVdSVwmKf1X9SMFYMwREOQFWnIPqZCyKWwKzgf+nvx3iv1DPcqtexJGy/8WsRGCGpQQda7QoJrgzfBz6A5OjRufYcpsiKehToz5OjhUDjmp0v55vGnEtVSw4fka0arA7r8cAQlKy54wS8JrJzkPwugajdTxOWgu9q9PE6u3kon3BfiqKZZaoOAgC1op0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199024)(1800799009)(186009)(8936002)(8676002)(478600001)(4326008)(66476007)(66556008)(66946007)(44832011)(5660300002)(83380400001)(31686004)(2906002)(41300700001)(14773004)(31696002)(316002)(86362001)(6666004)(6506007)(53546011)(6486002)(6512007)(82960400001)(2616005)(26005)(38100700002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVQ3TGovZlhLRHhBWEJDTXdjRm5sREd5VGdnZER0eHZVazlRVTRLbXZneXpt?=
 =?utf-8?B?dkFkZlJnM2JOaVpGQXcwVFcxTHZiZHZzM3JOVEFrd0U0ekc2Ym41dHV0VzFT?=
 =?utf-8?B?bUdYR0dodXRsTVZuT1Njb2wyNGV2b2o5TGlORVRNU1FDTzhubTJzQndUWGZL?=
 =?utf-8?B?dTlnQ3ExbGQ5Q1lJL05hME12RVRlWnVPMTVicGFKWHlFTWdrZjMwekZBUlZE?=
 =?utf-8?B?SGF0cTVKQXhLV1VNTGZSRlo3cnJsWU4zOURTL01CTkZlUTlyYndHcTlDdzZE?=
 =?utf-8?B?NTRwalFPYlljV3B0c0E3clBEYUpSeFQ5bXVoM0hkVk1IbDZqT2libXRPK3JT?=
 =?utf-8?B?UG9iSjZyR25nd3FnanZTdlVIbmY4ajRSNUxtaU9MQWtrcFJUcm8weStaYlJM?=
 =?utf-8?B?TXB0OEd3ZXgvcUkwR0VEZkVsa2gxclFsTDVTYVdZSGlJdGRvSXg3VmcxQlNW?=
 =?utf-8?B?OXJUbVdycnQrcHNLL1lJSEVIbi8vb3dsWC9iNTcveXVhRzVURmNkZ2RwdXJF?=
 =?utf-8?B?c2V6VXhsNmhxS3dhc0ZVNEtEZmxHblhBM0x2RTZ5eVNvOVRaNlVBWmlXay9q?=
 =?utf-8?B?TnNOZmtFUkxkUzF0VExIc2lkS0s4TFRtc1Ryb0JuQWZGcUF1R2REZG5sQW5E?=
 =?utf-8?B?T1U2UnBzTWxRWVVaSW1uUXE4MHdiaExrcEVKOHNKN3YrOVdpVVJQdUdURkpP?=
 =?utf-8?B?RmJ4UWR4YXZjVS80YjlJR3hVNUtsaGlwdlBKSVhHaEpHam1VVi9ydlBKbXpu?=
 =?utf-8?B?Wjg5M0owUjZRcTZZdGFjaVluYWJ1VGJkVjlHQnNCamtlVkJxZ05oNEJOZmlW?=
 =?utf-8?B?OGNGUTI5MStPSUlua3M4am9HYktTZTR3YXh5SmJRb0JLbjZRaDZCQzcwNVRs?=
 =?utf-8?B?d0Fiemh1bHlYbG9lVEFsdDlkaTFab3Vqa1VDQnRsb2NGTXJ6V0laMHBPbk5a?=
 =?utf-8?B?TTRXb2FYRUYxTzN4Y05kcnhXTU1IV3c1dU5NejYrZGhKT090aGFSN2JSTnI1?=
 =?utf-8?B?UWNleER1cmtJV3ZkdHVSWi9RSWdTd3FTU1c1VkM4eXNrVUlKODNZd1ZHSm51?=
 =?utf-8?B?Um4zSkl6ODFybGVQUUI5eEF0UndLbEplMjNFYm9ISlRvNThoRDhoM2l5M3N0?=
 =?utf-8?B?K1ZhbS9FWmZCMHRTT3o4SUswZjNzc2tIV1lRV1dSck5xenFkUDVSQTg0MmZh?=
 =?utf-8?B?ZTFlZGZhNElFTTFMZjlVVlU3NmJxRnoreDF5WUo0L2N0NXJ3M2h2SktJeitO?=
 =?utf-8?B?cE5HUVM3ZmNteWlrU24vYjl3OVlYWkUxV0FpR3R0QmNCUXNqaG5PdXZ3OEdE?=
 =?utf-8?B?R09jVmZnWWhQOG5abjN2NXhXczkxN0lEc0pTakd2SStpUGdxelltakhueklJ?=
 =?utf-8?B?K012VURMSFh1a1VBSytjLzlLeU1mV1Viak9TKzRqNGVjdjdKcTlHSVlvdmpi?=
 =?utf-8?B?WElBRTUzVFlyaCtyeU9RUU1FMS9qS3BySTQ0Yi9aWXcrL1NZUmlDc2NUVFg5?=
 =?utf-8?B?blA0dW5jRCtCUkZWS0EvOEExMGl4MTdUeHREa0FPSVA1aTFzdGxrbUNtZUtH?=
 =?utf-8?B?SWxVYWxMWlV0cHRRUld4TStHYlB2clV6dVI1OE85K1FWTlNJeUpSKzQ4Wm1X?=
 =?utf-8?B?clBMYStvQkVnRG1FbjhjVlVsZVdVcjRXek52RFVHRTM4dmFTRWdKdTFOUW5w?=
 =?utf-8?B?YzAzeHQ0MXZkaTJNYTNZc2JwZE44cGFYQlBZUWg5djZ4S0s0dGIvVG9UdEZG?=
 =?utf-8?B?WTlBcGFGQ1BkanA5RE5uVjJ2eVg0S21IUTB3aFgwRXFTNjBaaU9sOXZ1RXN1?=
 =?utf-8?B?NGxCdmtMaGpJWlBMbVgvNEJYQkFEeUNPNFhaNVg2Q1Z1NVhPbmxERW9vZEN1?=
 =?utf-8?B?bERhVVlMZEFiOGFMdG5PWWFSZFM5K1V2RG94ellGWm84Qm41QjFkM0c4di82?=
 =?utf-8?B?RjFIT2ZKamR5dE55SkpsSExmZlZuYlY0NkFyUWlVNmZRWFEvak9VSFlja2FH?=
 =?utf-8?B?LzUwL3hGazhldWZKaWpOdjRQUXhXS2dxemk3MU5tVzlLN0kzbWdlS2NETXZV?=
 =?utf-8?B?VUsycGh3c2I4ZGc2LzkxZWVTTG5RZmE1am9aalNRNmF2TGVKbFhmdnhVeUl5?=
 =?utf-8?B?bnlmR0FwY0pXUVhQanByYzQ5RkpjVkpsSmdTTUNhUEY5bVVGd2szb0FSSFAw?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6ad66bb-537d-4ee1-b876-08dbaeeea19d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 15:33:34.1934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +jDZvwFRfGblhhZ/iAhe03KkPmlf8TYxWuYyz4I7B7WU5ygldQaomfgO2l7uEXY5PhBCDdimYCrZ3xVmPYHCsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5374
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694014427; x=1725550427;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V3w+CnoBBIRmudJQP898+3iMzmle08prv49ykmbhNtU=;
 b=cq/KJ+NhAubW4P7ZwHwPupPzJlBXx6j3fmrTKSdRVoUyV8Z2bY/h+CD8
 ZKguOXMCr45jaN6lwQZYabpmIP2YjbSvXjm/ncUWW27r9ldnoFkpoypo6
 GLq6+jhxCIXd3m8Kf6O6BrleLslMdhBYtMG2cRjwThN1R9fCfERgVN1aK
 w3AZ16fRoa8rbQ+0vqEV+x/ZYhSQm6+g6Gw0bh8vDtBQ2F1+EfDIrJqMI
 UykigjTeEzfoqtqxhx0u4No8Qp4iFPI/19aOnADDDe2g4mFQx99nJTE/g
 6E6Mdpf6eqkz7t/r2qP7ruX3OMrZq4VaOBw7T+d8ep9bLBjbf3ltK9Nz+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cq/KJ+Nh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] iavf: schedule a request
 immediately after add/delete vlan
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
Cc: ivecera@redhat.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2023-09-06 08:14, Petr Oros wrote:
> When the iavf driver wants to reconfigure the VLAN filters
> (iavf_add_vlan, iavf_del_vlan), it sets a flag in
> aq_required:
>    adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> or:
>    adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
>
> This is later processed by the watchdog_task, but it runs periodically
> every 2 seconds, so it can be a long time before it processes the request.
>
> In the worst case, the interface is unable to receive traffic for more
> than 2 seconds for no objective reason.
>
> Signed-off-by: Petr Oros <poros@redhat.com>
> Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 86d472dfdbc10c..d9f8ac1d57fd62 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -821,7 +821,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
>   		list_add_tail(&f->list, &adapter->vlan_filter_list);
>   		f->state = IAVF_VLAN_ADD;
>   		adapter->num_vlan_filters++;
> -		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
>   	}
>   
>   clearout:
> @@ -843,7 +843,7 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
>   	f = iavf_find_vlan(adapter, vlan);
>   	if (f) {
>   		f->state = IAVF_VLAN_REMOVE;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_VLAN_FILTER);
>   	}
>   
>   	spin_unlock_bh(&adapter->mac_vlan_list_lock);

Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>

Thanks.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
