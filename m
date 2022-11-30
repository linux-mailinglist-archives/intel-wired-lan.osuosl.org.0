Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113DC63E106
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 20:50:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28633405AF;
	Wed, 30 Nov 2022 19:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28633405AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669837855;
	bh=seFeV2rmrip6LY54jOze7f8n6PTsSR65Wqap6eXthVQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lfBtPPysO6mKi4wzRhde58rDNZSWjejH/Ql3ZYT05VwAe3t/lz79OrnViDBBWKB+k
	 0YTP88YXMT4HBOmVyqy/ewMCbw0NUVsqtK8yoRiPHuNV3cvJNaqOEIhHlIdmwbcCOI
	 yD5QczjiBa6zksGeXSTl8TlFu+FXeKdsG8+vrKrETMLDfjTTUixDbqIfdOlbBOSGPx
	 a4sJyDvdkGc0y8+cd3oE1/hZOBaMWpKv6tTW3YwZSekqydf5suKHRD/Wg+tU+6y6E9
	 PatCueYVKchI8kUhug46BajVG89qbIFNXsLbYp0vaOdgSdVJY5FW7U70hkgpLsesU4
	 xYXXT0KyzosJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40Awzy111gmg; Wed, 30 Nov 2022 19:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BC6340C4D;
	Wed, 30 Nov 2022 19:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BC6340C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEF3B1BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93945416F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93945416F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrBNuWqUtjh2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 19:50:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EBED410B2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EBED410B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:50:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317350082"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="317350082"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 11:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="768954204"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="768954204"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 30 Nov 2022 11:50:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 11:50:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 11:50:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 11:50:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 11:50:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyFjPlmj9voJ+YkowNCFxmuz+za0lXZHgfpVwd3iAA0QJ+5IcNV2DpxdlvMQaQUmvzBMBu6DjOFkhlD1WYLuOgSWnu7U8abt0yrxPJ71zdcVCMZJzGuB3ABuFHywjcAt0x3DJk27KtMUiSfqMxjK5wxNgtN11VfbE9N8iTeZCIgK+QzCszrPmNq5y3Z/8ppgEhMXrRHz6oOtVZJ9ftP3Du6rp6ZhOO/jS5f7VKJsjhKQI/rPNP5JdjnnqfQ6grCcPLV3d7oLi7vAXASuhWcWrcTRxwQ53E4dVmkIJd0aUd8s/B3xYi8M1Q5Rb+tSCnv6w6nE1+1nYj89KEIuiI0T0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TsfBFuEZRsd6qj+thnenNDlpb1kDclssjMuNDIXsf1Y=;
 b=Bf3P7uW4hegg7bn7lZo3+zVzoAkA6q0uhaLyncQevAtLRJAUROl0YGa699aGbMKmrr9k+mO5x5K64TeO6lQES7suwJEOWEs66gBuworZm3/IunC65lSMrr/a3Hr7P40zuhOEk6BRugLbVqYka2Q7lBd2ZlrAyGBYuzmXnHhho4HKF7pcZs5I+Vv5uvONMV/Xa4NZdA7Rq4vmjtJMjBTvJ78393MQp169g0KL27+iuCN59gqVaWN5HtCoI+LTQYmxfT0Ep/ZqkIfw+3+Zhk6iX1PLfyT8tgD/GKUifzDQFwitoZWzvi3PtszW3QKf0TGGCfwNjYKIfiiebtP/SMa7Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6240.namprd11.prod.outlook.com (2603:10b6:8:a6::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Wed, 30 Nov 2022 19:50:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 19:50:41 +0000
Message-ID: <e1a372de-05e7-118a-dc92-1083bb8df883@intel.com>
Date: Wed, 30 Nov 2022 11:50:38 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Anirudh Venkataramanan
 <anirudh.venkataramanan@intel.com>
References: <20221130123414.892879-1-marcin.szycik@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221130123414.892879-1-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: BYAPR06CA0070.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::47) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB6240:EE_
X-MS-Office365-Filtering-Correlation-Id: 57f0a1cf-68ae-4997-1f5f-08dad30c290c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MnF+GSQTfWAO1hlK/5IQVs1E+PDZV6TtPduRAh0SqE8BGjJj1PnsUUXqgwcqkjI+9Fap0VHSO7JVDjifu1nBFkZ8cD/9Hepjw3ZWl/rpIIMijV/JGoZ+dVwr/vuJNyDN2/wMslhKzynkuk+1bNIELqyG2vPh0jnr6CAJYOQLI2ztNyKhsk6OLSmaGlk4D0Vymky++v7pWG8U7wr2LsPJspS0yTWauMs4J0V+AdISkGGaAqXxTMGvqKUBulgnsVmSJwQWG/3swEsw+rUlCVyDYxNRZ1W8gND8y0G8zYp/EkYli0q/2dkYDiOxeW5j33YlW0I++1EqphaQiimLSNtTLpi+t4kVfX7XRc1OwtrgBTgo/983DpzzO/wDQELl7A2wsSkoqJo5CBAphzV8tlpVLt8whKzwI8hQ4Ebr3kCQ/HUsnCrXwRkJJv95rJzRzQ5RaCWi4KfYCvYb0c+kSLEIZseATrhFbVmJER/My4A6iU480qY6EjlbhjhD+8+gWctJkBx2GW9pgKSg/wOhPrCC+T90V4y1JOski51PmfPUCWuKb0vdzRTNDh57Pb97MlImnjENKS/JJg8EZZMn0njTGOqW52HzFwvWUpJDtHZEnc2oIaKNgC1C1jXMC2R1rnf1mj254wnvtSIYXfdZNucACdrhhAQC53mqoWPTYZY6XqC1yLADi1uCy/gGJ0FTifT+op7kbTTBaINAmG4lFMbVAdN10onOF8vBOPpzXdd2PZ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199015)(31696002)(6506007)(6636002)(86362001)(2616005)(66946007)(8936002)(53546011)(8676002)(26005)(6486002)(66476007)(6666004)(478600001)(4326008)(316002)(82960400001)(110136005)(38100700002)(83380400001)(2906002)(6512007)(31686004)(5660300002)(186003)(66556008)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M01FT0tNNVY4dTJBaEpGRTRpSjMzWTl2SzFwMWN2OFlmNnhvekR4UEFPNnkw?=
 =?utf-8?B?Z0kzWEtlY2dtcTlUODJ4ZitwN2JHVzRVb3FNYjR4SFZOV3Z2R0ZNdkpiSCtD?=
 =?utf-8?B?WVBrRStpRjhGSkZlSEVsQVNHaWtrckRGY1AvNzFPK3BkTGZXdit5bkdPZkJK?=
 =?utf-8?B?Zm5JS3N4SktGakh5dmh6ZkI3bit6dkpreXpqZFBiSnlkcEd0eS8yV2pnTnBx?=
 =?utf-8?B?cnBkeGlhOFRuTk5ubU92aDBsdlQyQlp5SllMZzMxQUh6SW1yVWsyd1ZLRUx6?=
 =?utf-8?B?UUdJRE5lZUllRCtScGt2ZnpTcWZaUGN3Q0xBWlQzTzFDaExnWUptampFVFI5?=
 =?utf-8?B?UnZmdVZoRjRTS2hvQnkvZnFpWVhpdEVZMFlYVzFLbkt3LzAxOUR5KzNZZnc1?=
 =?utf-8?B?UEtMWU5zNUk0ZlpkMkZab2xvYWwySWJzb3VjY0xlMXJZYmtRdXRwTEdwM29w?=
 =?utf-8?B?aWR6YnlIYTlwOG1HSHlEaGkrYW9IYzF6MHd1MDJ5WUhIeXBCc0lxaXdkbHVR?=
 =?utf-8?B?ZzhaemhrUU1ZeHVEZHNaYTdxd1pEdkUyUTVQYTI0TnBVS3dZK3BadVJRWDZ5?=
 =?utf-8?B?OWdlZTR4Smk4MnovNFA5WWNHeXJMREovREE4MnhOVStJNnNsTTJ1Ri9EMUkr?=
 =?utf-8?B?SVlRWGd0MVN6ckVWUFN3eGs2Q1lwT0xoZGxjVjJsYWk2K0FMazVoaEVpMmNo?=
 =?utf-8?B?emhTdUQ2cSs0eVh2U1E0bWNMZ0RGUE8xbTFQSUNXYXZzOFFPWEM0a1Z5V0xK?=
 =?utf-8?B?QXVuMmVadk45ZkcxVGV5SDJUR292ZWRUbVRUcGpSR3B4dXptUzBodDQ1Tzd2?=
 =?utf-8?B?c041RmI5M0JOeFJqZ2Vtdk1QQmtsZlg0N0tEU1lOMDQyT2VlZ2tYZG5UcWwz?=
 =?utf-8?B?bFFNWUdEeWltNW5JL3kyUy9aelROTVBFK2YxS05tellZZmxkWm9VbkJSdGlo?=
 =?utf-8?B?QnhrTTh2K0plWUZmNFVOU1Q3YlVtd1lLNzlFSVRwbXNoVVJCaXNEYTZDU1FR?=
 =?utf-8?B?UjU1ZEh0Y3RhTUVZeTJQN05aN0FOOUd0empDbUZ6YmRqZEgwY2VXZnQ5YmxY?=
 =?utf-8?B?MzFHYk92VDJFTnB0dHVSWWRzbEpROEJxTlM1dDhwRndQV1VURC9NNURXb1J4?=
 =?utf-8?B?S1FMRmliZHk5VmNsSWEvaXFDZDFEOExPdFhISFhOVDNOT0xjWHcraENRdWRU?=
 =?utf-8?B?Z1V5SzlBb3V0c1ZUOUJWSkpNZkxnNzBDM0JZUXM2TjFsRDdnNitPRmN2MFJZ?=
 =?utf-8?B?M2ZMdGgzLzVHU0cwaEhnWElBRW1UZlowd3M1cUhSUU9zYXV0U2RueHoycXBx?=
 =?utf-8?B?MWJjVENXbTJoL0N6djEwUExKQjQrSXMwbkg2V1pzbWo2RUdqM3kzRkJ4WjhH?=
 =?utf-8?B?Vnp3V1ArbzNOK2tSQy9IUFVTS3JLVkI3T3ZsKzRqZ1ZOcGRqMEZXSjhNV0ZG?=
 =?utf-8?B?bk45UkZKaytWVk1rNnJxNWlSVXdaWmYzUDYxTDZESFpKM05iQWdJbmMvNlRN?=
 =?utf-8?B?Yy9pYkNZaFdwWjRmVWVJRWRkSU1QTkthVjZwekZaSFllMmxCYnFiTkE5dzdu?=
 =?utf-8?B?SlBFTmUvZms3YlRmUVUvUVJBWkxCYUJtSlhoR1VXY1MyNlBPc1lNRUJQUzhu?=
 =?utf-8?B?aXM1TG90cEUvbnZxVjlUVTR6Tk4yVFl5MkM5T1BiSnBkdTE0YUJITnQyRXYy?=
 =?utf-8?B?amNOaWY4aFRKWjhScGk1Z0MrRXAwTGUxYnJaelU1RUhRVHlDT0JXVVBwbXND?=
 =?utf-8?B?MVc4YTV2TjJ4RU5TRmp2U25ianl5V0dRbHpNaWlqTHVCNWN3UzcxaER0RkJa?=
 =?utf-8?B?U3lMK0MzMDc5cDVzaXRLUlcrT29Obi9zZHI5aC9SS2VlemhJZER6L0UvREhw?=
 =?utf-8?B?c1RqeEFkUS9sS254a1Y4WFlSdlJXVTBxZFl5VGF5Q0JCSVpyc0VLMnJhRGtD?=
 =?utf-8?B?WGs3TXg1M1pseGY2U25LTHJ5YXUyWXhOZVB2Rjc3UGFXd2N3QWlpZHhkNDV3?=
 =?utf-8?B?K3c5bWNzNlZPMDdRdFArUW9wVkp6aSs4dmVHeVVuYytVU0djaFZ5RmcrcE9V?=
 =?utf-8?B?aGd2blJVOUE4RTF2NFVoaDkrV1h0QllLRFBmK3FORnNiUlZhcW14aGNVcEZ3?=
 =?utf-8?B?Z003V2Uzc3YwNmZmUnp5Nml0SXJXYW41YlNod2tQYnlmMnA4cS9mbno2dWla?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f0a1cf-68ae-4997-1f5f-08dad30c290c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 19:50:41.0418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SU5ZapBTzwSYbfhu1lxgJkKvqJp/5pwPhzElsE4k6GjLPd7JLOI3XU6C0WdO5Vz35rXbpGnD2arsc9FciuMTaUuV24gY76QZ6q3Po41XD44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6240
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669837845; x=1701373845;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GdpU1JdOI/yHrnxHHj7UszSp08+fvV6GQwKcJlyEAZM=;
 b=G9IPopjMFEZwou/1CKyLQ/oH7xvkN7sVDNX6KUSbwEXhpCcmAdzfeuOG
 LiuQkDhkmB9X9lcsOXabpKUQdHXq18NQpmTiCO1oVevfDarGHAEDD0n/R
 yTLqPFAPmr98plrfqs7yNm026zz4ZzczVI0YPeGQZ7XxjPt/r0ZDnKsMU
 yIHJj5dMOOTvw7we2nJJdSkO7cFL3j4cWrEBwho7lHgRebi7XXC7E2t6H
 ypa46CO9bfgFpQe+r0hgWuYnyWTdTBERWQqWXzAftwMAlCiOIcD0nLVZa
 OG1uVFjVtE8U6/5SShAwKypQkDzxYkI32NLX4AZeVi97a+T9rA/IqcCoO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G9IPopjM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Cc: mustafa.ismail@intel.com, shiraz.saleem@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/30/2022 4:34 AM, Marcin Szycik wrote:

I believe Ani is the author for this? I don't see him as the author though.

i.e.
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

> When both ice and the irdma driver are loaded, a warning
> in check_flush_dependency is being triggered. This seems
> to be because of the ice driver workqueue is allocated with
> the WQ_MEM_RECLAIM flag, and the irdma one is not.
> 
> Looking at the kernel documentation, it doesn't seem like
> the ice driver needs to use WQ_MEM_RECLAIM. Remove it.
> 
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 69984fea7fce..d01d1073ffec 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5617,7 +5617,7 @@ static int __init ice_module_init(void)
>   	pr_info("%s\n", ice_driver_string);
>   	pr_info("%s\n", ice_copyright);
>   
> -	ice_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
> +	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
>   	if (!ice_wq) {
>   		pr_err("Failed to create workqueue\n");
>   		return -ENOMEM;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
