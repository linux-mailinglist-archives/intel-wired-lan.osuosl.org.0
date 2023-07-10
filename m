Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A57374D730
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 15:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4089281350;
	Mon, 10 Jul 2023 13:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4089281350
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688994936;
	bh=jbg2gcjNLl6nAua+YhHZ3MJVEzzOAaWGZ++O0iqaEvE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C9F0LoS8w5XS61m/jZIT3kowzuY0Q+8gnblT7NCR+e+vAZMwKf2NmMY7ptAE+KAX8
	 dumNnVQ0jgE5mUY6phr8Edhgy3UklVXTglB8MqE9YqMcFEba09jw869qpGWsEV54RB
	 5BpBL0cQ1Pxj4Qa96rKy9ENBzpRJ1pjSiZ6QjVxAYukeXjtYx9edUGG2x18noq4GRB
	 BIH0VD6gh6XV0RFY6WxM7yAf/GX0BhGtLKNyrCN4ziL6cZTquBNYF5OyxcwO/tDpGx
	 M+iQa+DIT19mjvwX3LgPDCH9uGDmD2tZvvmSHLyNQ7B8XLToJwhf6a7Tay6iF4mZsC
	 XfF4mdZoGb7yQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCTB3Z7oZDtv; Mon, 10 Jul 2023 13:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E02A98133F;
	Mon, 10 Jul 2023 13:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E02A98133F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1B2B1BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B615260ECD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B615260ECD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3tWXtqmuIIK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 13:15:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E6DA6061B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E6DA6061B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 13:15:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="349142511"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="349142511"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051356235"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="1051356235"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2023 06:15:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:15:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:15:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 06:15:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 06:15:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aEmZqdEjj9ZinjEQnGdTJt/XZLaZaamLV5jswNNkXbfAmUNqoWF3IwgvdJ+oD5MzAfBMKH4PRnBMRfWqTD4xF7KalHfPIjxVI2gUXVsuT1TmxBJL6MxCLmv2Tm45Zne6qWcym0l0Bo4ySsfQk6I3BXTUHdwlIZM6a3YFm8JD3jqq75JujRRDZNaKplJuot8lnYbt2j+JSDKNtxvnIyOYlzVbCRoaaNn6Yt47UUsFsdDHOH7ynOAnCFy9IzpfU53JuTDRa07cnrg26hvq/tTpnYPcbRi45ZYGobqBk80JaThrlMd/ZocdXB5ZSOrrZK6GkypilYMWwhsHSXHLulwSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7u7R7WL0MYdkTkRrvx1BpHTi+eol7YlCQV0CNB+RRk=;
 b=dLGZ/izO4uWLbO5EDja3Dib1+TtEqowlb/S19d94bmrElrbtYreIe0TD+XRPTNuRNrBQZ5Rq+aLihvLTPTQi5NOTdodtxO+7FJ8HXVGrJDiROcrlkraJbOZ/6tUCi9vhtjwDyhgSOd8AdKKBeYg3+rY6egdmhRgPjtsftPCjIOmOiStiPn++dM09EebrIN6nslKvIqGk/ErBrfDq1BuDZfe96ma24ZwpmiFQpjit2cSM86wEfBltwXVe/47Kng4IU1otfWWjycnchIspnxKYLFu2FGMnYO08SaP+6eYXT21F2588bkl9AyF/sZO5Ipf050DYsc6T8uFWyLdNIGzzow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SN7PR11MB6701.namprd11.prod.outlook.com (2603:10b6:806:26b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Mon, 10 Jul
 2023 13:15:24 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::1ecd:561c:902a:7130%4]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 13:15:24 +0000
Message-ID: <f73daa0e-c201-5fba-8232-2107bc8e24de@intel.com>
Date: Mon, 10 Jul 2023 15:13:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230705155551.1317583-1-aleksander.lobakin@intel.com>
 <20230705155551.1317583-4-aleksander.lobakin@intel.com>
 <CAKgT0Ue+VvnzNUuKiO1XFW6w3Ka9=SSfGBP_KpkbvR6uzqvg5A@mail.gmail.com>
 <6310c483-8c6e-8d34-763a-487157f6ff0c@intel.com>
 <CAKgT0UfLBmzhshM5ZsvLaBwGtv2AvXA3n+kbn9FtBWTCocsiDw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0UfLBmzhshM5ZsvLaBwGtv2AvXA3n+kbn9FtBWTCocsiDw@mail.gmail.com>
X-ClientProxiedBy: DUZPR01CA0115.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::27) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SN7PR11MB6701:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d9c8e87-bdfa-4744-e0f4-08db8147b853
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qozcSrCTZpIzXExY/WRS8BH6+ElGS+YH6YL1gAH6LEMWd8LY4XB0Scs4KdV4kjj6mRTOjBzYQfYNqO3EuwFw07Qd0Qr72yxgHVERh1wRsYQsoIo+4NQCPGMjDMTXIbP3gDe0CNgXbA8eXjyGcDQVbuDOc7o7lw5a33PPD1SJbEvRi3W+GE+38yW5cnefq0EJGb8GhLcl6XOKeBjhddY2zwEPMb4AC9FBjPK0viHk5lqJfX/gZrGi/NTpoxsJyGKwOdqDr/mdc/51mqkXGGCUDw2UhKwUKWeHry/4rNeGHi9iQmBh9D3jKd10gKNeUdSON32hn2PBaZ9L5EGmezG4ohULLnrwmg6yGTA7drlOnfdKoYkaFLOkSzZQCZGvWjUwuekNTcyrRiCWhxla+wkrukW1Xz3kQNRS7LBL6l04hYWw+7H7IUdApSLnEknG+ETsMO3Gn5hdA1JQVjn0fj4t9aDS3Ap8IPTmMgNZz7m1NHAemTJ0usXZBBg134gefZ9fifOPxwlEnfT/N6BJzvh3B7yvLIX8ruzQ1OPKHKOQUbKgrgGAAzW1XaljoALp+t1WkTPABLc2v9zylOzf/sqL/cdoL3OCyvp6gSYH+/8QmSyyaCtWBOWx2VFGTednZQmSqm82OwKEkXiYl7Wwc6UN3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(39850400004)(136003)(396003)(366004)(451199021)(6512007)(82960400001)(38100700002)(26005)(6506007)(53546011)(83380400001)(186003)(2616005)(7416002)(2906002)(5660300002)(8676002)(8936002)(36756003)(6486002)(478600001)(4326008)(6916009)(66476007)(66556008)(66946007)(41300700001)(316002)(54906003)(31696002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkdTaFJFdVY3YnNCTVo0SFljcGpZcTdEVW1HTFl2cXg4NG4yMnpqQUxtNWR6?=
 =?utf-8?B?SmFRYnZtem41UjRKUmplTnRhTTJLaWhWWmR1Znd4WnBwSGdjNDRoRmtSTll2?=
 =?utf-8?B?ZWF4c0xMS0xKSDNOa3QwdmxJZGR3dVFUM3BJa25iQ3BTeFhHM25aR1FSU2ZY?=
 =?utf-8?B?NjZwemJQVFhSS2p1Nzh0NDNpL0hZUFFDWEJ3c2t0SlJJUUpKV004YXQrdHFr?=
 =?utf-8?B?a2ZlL0k1aHRYUkplVEZrUXN5WkpXREdzdVlCdnBnMnJXYjdSbFlyMWErcGl2?=
 =?utf-8?B?TmNNbjZwUUlrZFhuSkRDdnRGTnBKN2xKdGtabm9CWWo2ajFTSXlLVHA5elpH?=
 =?utf-8?B?cHVuZisxUWRzT1hPREZMYUlFeGJlM29Wdld4cDJJTVd0RW0wQkpCK0VFUmpP?=
 =?utf-8?B?SGJveVZDQVhTTXJoWUNMMnlnbTJYZno3b2lVcFJwSytTR1ZEU2IwOXZ3M0NK?=
 =?utf-8?B?Yk9kaTZ5VWRPSU5IZjJjcm1FMkdvTC9DS0lOZ0tyUDhoYnY5aVVXRlNWT2oz?=
 =?utf-8?B?amN1L3BibStTL0s1ZkpCWVJFKzUvbnVaVWtpdjRTbGE5M1B0dVJFcFhkQjRy?=
 =?utf-8?B?WCtFNTBpOE1UZWcra040czdveGNaV1dqOVl0SGdZWGJCbWhwTXA5eitvTEFH?=
 =?utf-8?B?Q2p5VFpYQ0hJcFMyVi9RTlZKd1g0ZkNnM0FkVzRkcUdLV01Nb0gxYkxENW5P?=
 =?utf-8?B?QUlzT1hnMmRQZisrci9Qd2g3ZVZoQXlWSUttM0hzT2NwaUVFRzJZWDUyUE9H?=
 =?utf-8?B?RGpZOXBTRi9QWFN2N05aTU5ybGFzb0I4OGtIRkhhSWNkVnBBbHdVVkFUMmJv?=
 =?utf-8?B?U1ZqaVhyTlFTNjhCc3ZJRzcyeDUyMi93L1lacnFlMXBGSFFMTjNSaGtXelNt?=
 =?utf-8?B?ZGU0QXA4NFF2aytTdjFMOWUvaTFIMjFMZjFxNXpzMFFzbkdoZUphWk0xaUV3?=
 =?utf-8?B?SzhZMitKWis3QStYb0pkdDM4a3h5QzN2bitsWkdQU0RHRUxnaFZSYzFadTU0?=
 =?utf-8?B?WitSdWVOOGgxRTVFVkF2WGpaN0dJdkdRaU5ncnNlbmFVTTRBSHU3aEg2UnA1?=
 =?utf-8?B?Mm15S1M4SFVWMkZDcEhOZ1h1R0hjZWxidXFVek1LTnlzb3BLcitkYzlkd1pX?=
 =?utf-8?B?N2dxQW40NVVaWFk2K01EY3JKaXJoU0xrTG1sWGpLeDdSY2Fjc041aU9nWUJn?=
 =?utf-8?B?U3lNa1FsRDNtQzkySG9ad0lVSzFITGMxa3N0VDA2ZWQ2UUNMTWhPRVZqM1hp?=
 =?utf-8?B?NVM2WDJ2Vzl0QlpIUkJWV1FIK055b2JOTDM3bEYvd3NOMUNiNm56Y2RtUHlr?=
 =?utf-8?B?MXZTU3dCUWkwN2lUMk8yV1FLYnVNbGNRc1VYL09oczJBaEhQN1B3UmdlRXhJ?=
 =?utf-8?B?MnhpMG9iSGsxUlluQTk4Tm5EelpHd0hqL29wV3YySkJ1YVRUUDRaNkRxNEZ0?=
 =?utf-8?B?NTJsNTdwT0d0Y3Jad3ZSNTgyOTNoOUxXVUNjbGZleXRCWDhkUWJHd1BWZkUy?=
 =?utf-8?B?Ly9Tbk9QaTdFVFlOKzBoNDZrajMyejZMUndyeVNLZC9nNkp6VWt6aU83ZUpR?=
 =?utf-8?B?czdUZTNmMHRDbzZGaDMwWmF4RkZESTk5ekdaRlZUeXg3V2R4Y3JnenUyMjJ1?=
 =?utf-8?B?UlFqcnZWSmZJNHIzK0Y2SmRlVVRVVXBoUmdiM0VoSVVmbU5kRlM3M1pUM2JE?=
 =?utf-8?B?ZzgwSzcxTU1CNkFIZ1c5N1ZYRmNTRDFVQ0tZaExwL0Y0RklGNG1hZGhqVjl2?=
 =?utf-8?B?dC9Ub0VpSkpkaTFOcDBxU1dIRkJmOVZIbjliWlRzV3NmWUs2TzJHSjBSVkFk?=
 =?utf-8?B?aVlQbVFpZmhjZTFLdjBqN3pDTUREaS81QjhOcFFuM3YvcXVLMTg5SWQrMWgr?=
 =?utf-8?B?T3ZQbklrQktwT3pRQmlRdXFuSFlwTkc3emhqNnlzbUk4b3g4dEF0TW5oQy85?=
 =?utf-8?B?Y1VaOStGVGlvVUpFQ1FFTUlYR2RNVlBIZTAyczRsWHVteEprejc0dEdCVDNW?=
 =?utf-8?B?TlhWbVdiV0NjSDBnaitZYUpKUkdQQ0lReG9SSnNxYzA4amE0VHJzTDczR1RB?=
 =?utf-8?B?cFBCVk56OHd6WURyZ2ZQdVBvWm45ZnpmVy8zbHJKYTVjQjFWQW5HWDBPeTMz?=
 =?utf-8?B?OUIzeXk2allrWDg0bVNoM3NEN0tFM0loRkl4czJtTlp3U29IVzY1WWw3MzNO?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d9c8e87-bdfa-4744-e0f4-08db8147b853
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 13:15:24.0776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l2MGT5aJuGPh2kcl1icQ7LADhaqWgHRVkm1FFwH20mmpx0IMlHGeGHD+gB4/l1Obl45GTwrLznC5oSiYqSklb4ja759vaIleHC3+lKlF3us=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688994928; x=1720530928;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H2U3xYAoYBbLGAPbjaBzZyUoZJdahvQV91ICjtgQJjs=;
 b=muBmTMxTiFnEhvN/wrGTQ47q0Tbnj2AtXhzRSA5ENku1EyPaV3ICTMbL
 wioWXUzIdEW2FXB+revK05MnUMI5NfOeCpz3nIchWc3W1wPVFf+hI3cDZ
 JcKeHiKKrAjqQb4kR6lMuU03IzXgUy7Ji9oZtyUnp2A0MYPGj629NY6Vc
 csRMTkH+00950+LJtbDHpa3eikxI+h/GQ71B8cRoFfB0adAGG4huJ6x7w
 dMUreP1UUynhZ53Qzi+N7W75vHAW/+pslulGfcsN2RWFw6LC4tqy33Tj0
 vg164MhvgHBSUT2/MM42IHR7vsNXknukB7vB0yQYXY/nLgp1Kz+rKcokP
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=muBmTMxT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v4 3/9] iavf: drop page
 splitting and recycling
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Yunsheng Lin <linyunsheng@huawei.com>,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBU
aHUsIDYgSnVsIDIwMjMgMTA6MDY6MjkgLTA3MDAKCj4gT24gVGh1LCBKdWwgNiwgMjAyMyBhdCA5
OjQ24oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6Cj4+Cj4+IEZyb206IEFsZXhhbmRlciBEdXljayA8YWxleGFuZGVyLmR1eWNrQGdt
YWlsLmNvbT4KPj4gRGF0ZTogVGh1LCA2IEp1bCAyMDIzIDA3OjQ3OjAzIC0wNzAwCj4+Cj4+PiBP
biBXZWQsIEp1bCA1LCAyMDIzIGF0IDg6NTfigK9BTSBBbGV4YW5kZXIgTG9iYWtpbgo+Pj4gPGFs
ZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+IHdyb3RlOgo+IAo+IFsuLi5dCj4gCj4+Pj4gQEAg
LTE0MzEsMTUgKzEzMDMsMTggQEAgc3RhdGljIGludCBpYXZmX2NsZWFuX3J4X2lycShzdHJ1Y3Qg
aWF2Zl9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQo+Pj4+ICAgICAgICAgICAgICAgICBlbHNl
Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgc2tiID0gaWF2Zl9idWlsZF9za2Iocnhfcmlu
ZywgcnhfYnVmZmVyLCBzaXplKTsKPj4+Pgo+Pj4+ICsgICAgICAgICAgICAgICBpYXZmX3B1dF9y
eF9idWZmZXIocnhfcmluZywgcnhfYnVmZmVyKTsKPj4+PiArCj4+Pgo+Pj4gVGhpcyBzaG91bGQg
c3RheSBiZWxvdyB3aGVyZSBpdCB3YXMuCj4+Cj4+IFdhaXQtd2FpdC13YWl0Lgo+Pgo+PiBpZiAo
IXNrYikgYnJlYWsgYnJlYWtzIHRoZSBsb29wLiBwdXRfcnhfYnVmZmVyKCkgdW5tYXBzIHRoZSBw
YWdlLgo+PiBTbyBpbiBvcmRlciB0byBkbyB0aGUgZmlyc3QsIHlvdSBuZWVkIHRvIGRvIHRoZSBz
ZWNvbmQgdG8gYXZvaWQgbGVha3MuCj4+IE9yIHlvdSBtZWFudCAid2h5IHVubWFwcGluZyBhbmQg
ZnJlZWluZyBpZiB3ZSBmYWlsLCBqdXN0IGxlYXZlIGl0IGluCj4+IHBsYWNlIj8gVG8gbWFrZSBp
dCBlYXNpZXIgdG8gc3dpdGNoIHRvIFBhZ2UgUG9vbC4KPiAKPiBTcGVjaWZpY2FsbHkgeW91IGRv
bid0IHdhbnQgdG8gYmUgdW5tYXBwaW5nIGFuZCBmcmVlaW5nIHRoaXMgcGFnZQo+IHVudGlsIGFm
dGVyIHRoZSAhc2tiIGNoZWNrLiBUaGUgcHJvYmxlbSBpcyBpZiBza2IgaXMgTlVMTCB0aGUgc2ti
Cj4gYWxsb2NhdGlvbiBmYWlsZWQgYW5kIHNvIHByb2Nlc3Npbmcgb2YgUnggaXMgbWVhbnQgdG8g
c3RvcCBpbiBwbGFjZQo+IHdpdGhvdXQgcmVtb3ZpbmcgdGhlIHBhZ2UuIEl0IGlzIHdoZXJlIHdl
IHdpbGwgcmVzdW1lIG9uIHRoZSBuZXh0IHBhc3MKPiBhc3N1bWluZyBtZW1vcnkgaGFzIGJlZW4g
ZnJlZWQgdGhhdCBjYW4gdGhlbiBiZSB1c2VkLiBUaGUgcHJvYmxlbSBpcwo+IHRoZSBza2IgYWxs
b2NhdGlvbiwgbm90IHRoZSBwYWdlLiBXZSB1c2VkIHRvIGRvIHRoZSBza2IgYWxsb2NhdGlvbgo+
IGJlZm9yZSB3ZSB3b3VsZCBhY3F1aXJlIHRoZSBidWZmZXIsIGJ1dCB3aXRoIFhEUCB0aGVyZSBh
cmUgY2FzZXMgd2hlcmUKPiB3ZSBhcmVuJ3Qgc3VwcG9zZWQgdG8gYWxsb2NhdGUgaXQgc28gaXQg
Z290IG1vdmVkIHRvIGFmdGVyIHdoaWNoCj4gY2F1c2VzIHRoaXMgY29uZnVzaW9uLgo+IAo+Pj4K
Pj4+PiAgICAgICAgICAgICAgICAgLyogZXhpdCBpZiB3ZSBmYWlsZWQgdG8gcmV0cmlldmUgYSBi
dWZmZXIgKi8KPj4+PiAgICAgICAgICAgICAgICAgaWYgKCFza2IpIHsKPj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICByeF9yaW5nLT5yeF9zdGF0cy5hbGxvY19idWZmX2ZhaWxlZCsrOwo+Pj4+
IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChyeF9idWZmZXIgJiYgc2l6ZSkKPj4+PiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJ4X2J1ZmZlci0+cGFnZWNudF9iaWFzKys7Cj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgX19mcmVlX3BhZ2VzKHJ4X2J1ZmZlci0+cGFnZSwK
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWF2Zl9yeF9wZ19vcmRl
cihyeF9yaW5nKSk7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcnhfYnVmZmVyLT5wYWdl
ID0gTlVMTDsKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4+PiAgICAgICAg
ICAgICAgICAgfQo+Pj4KPj4+IFRoaXMgY29kZSB3YXMgdW5kb2luZyB0aGUgaWF2Zl9nZXRfcnhf
YnVmZmVyIGRlY3JlbWVudCBvZiBwYWdlY250X2JpYXMKPj4+IGFuZCB0aGVuIGJhaWxpbmcgc2lu
Y2Ugd2UgaGF2ZSBoYWx0ZWQgZm9yd2FyZCBwcm9ncmVzcyBkdWUgdG8gYW4gc2tiCj4+PiBhbGxv
Y2F0aW9uIGZhaWx1cmUuIEFzIHN1Y2ggd2Ugc2hvdWxkIGp1c3QgYmUgcmVtb3ZpbmcgdGhlIGlm
Cj4+PiBzdGF0ZW1lbnQgYW5kIHRoZSBpbmNyZW1lbnQgb2YgcGFnZWNudF9iaWFzLgo+IAo+IFRo
ZSBrZXkgYml0IGhlcmUgaXMgdGhlIGFsbG9jYXRpb24gZmFpbHVyZSBpcyB0aGUgcmVhc29uIHdo
eSB3ZSBoYWx0ZWQKPiBwcm9jZXNzaW5nLiBTbyB0aGUgcGFnZSBjb250YWlucyB2YWxpZCBkYXRh
IGFuZCBzaG91bGQgbm90IGJlIGZyZWVkLgo+IFdlIGp1c3QgbmVlZCB0byBsZWF2ZSBpdCBpbiBw
bGFjZSBhbmQgd2FpdCBmb3IgYW4gYWxsb2NhdGlvbiB0bwo+IHN1Y2NlZWQgYW5kIHRoZW4gd2Ug
Y2FuIHJlc3VtZSBwcm9jZXNzaW5nLgoKQWFhaCwgb2theSwgeW91IHdhbnQgdG8gdHJ5IG9uY2Ug
YWdhaW4gd2l0aCB0aGUgc2FtZSBidWZmZXIgbmV4dCB0aW1lLgpJIHNlZS4gTWFrZXMgc2Vuc2Uh
Cgo+IAo+Pj4KPj4+Pgo+Pj4+IC0gICAgICAgICAgICAgICBpYXZmX3B1dF9yeF9idWZmZXIocnhf
cmluZywgcnhfYnVmZmVyKTsKPj4+PiArICAgICAgICAgICAgICAgcnhfYnVmZmVyLT5wYWdlID0g
TlVMTDsKPj4+PiAgICAgICAgICAgICAgICAgY2xlYW5lZF9jb3VudCsrOwo+Pj4+Cj4+Pj4gICAg
ICAgICAgICAgICAgIGlmIChpYXZmX2lzX25vbl9lb3AocnhfcmluZywgcnhfZGVzYywgc2tiKSkK
Pj4+Cj4+PiBJZiBpYXZmX3B1dF9yeF9idWZmZXIganVzdCBkb2VzIHRoZSB1bm1hcCBhbmQgYXNz
aWdubWVudCBvZiBOVUxMIHRoZW4KPj4+IGl0IGNvdWxkIGp1c3QgYmUgbGVmdCBoZXJlIGFzIGlz
Lgo+Pgo+PiBJIGd1ZXNzIHRob3NlIHR3byBhcmUgdGllZCB3aXRoIHRoZSBvbmUgYWJvdmUuCj4g
Cj4gWWVhaCwgdGhlIGlhdmZfcHV0X3J4X2J1ZmZlciBzaG91bGQgYmUgbGVmdCAgZG93biBoZXJl
LgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
