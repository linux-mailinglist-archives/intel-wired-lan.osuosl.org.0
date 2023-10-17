Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF8E7CCFE3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 00:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C913F8221E;
	Tue, 17 Oct 2023 22:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C913F8221E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697580759;
	bh=e/IdDWFOv4bSAL//ZL2WdYZUsmzyVL8mqv/k//W42PQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l3fExrxq3m0iB0ei5r3YGBdJaA53uxIF9tFEpbQ1FpLedyJm2o7bydd8oHmEsyi/Y
	 hCi2pheAPlw8g2qnKtCFcdM8QYp5CgOJqXAM5Dr5Bd/L8zpg3BFsWUVnaCNg6qhGm+
	 +MzFu5v1vz1zcZp75qnTPaTL0xkgiK9LGFJjc9eK/2vuNj9xFGAJd4UuAVSD4cicx8
	 xWLa1MSZ5N8PqdTuEW83i8R4QBcRtfmsyQBjbzXpgv2Sm0+ltER+JFSny8Ix1RLj+h
	 oMomV9+vcSRbplge0zF7a4scztBixQf+gGgtH43I5vHG/XiId9sM2f1zPYZBE5voag
	 J4cmUGldKhrZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ArZdYfS8nt6; Tue, 17 Oct 2023 22:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7914C82097;
	Tue, 17 Oct 2023 22:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7914C82097
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 654BD1BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 22:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31D3141E4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 22:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31D3141E4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pxwd6k6ZOTr6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 22:12:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FBB641E4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 22:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FBB641E4A
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="370952842"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="370952842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 15:12:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="756316018"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="756316018"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 15:12:25 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 15:12:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 15:12:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 15:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=le1OB91QEzQSA8/n5y4cxC7RwzUbf+aD/TThDEJWW4u65jrO/xK+8wSFeZYXAqpM0VjEHDGOjC48Tcf9l7lmzGtJAO4N4/lK3UFkc7RRj4cJlqj/sbV0PLZr7n2yNkwh+0StViCQGq83DydPaGTSdNmy5uxC4YnD/5Ne2PDgLetqLP4jGdN1fniOfrsN31VLLN/OAoPOdNFcDUuJgIK1BKg2MuzW46PvmhOoGB0IskBtAM6gTDXshHfTw/YnB4eOr+5/SUyLJPfEpuEXeXz0QIJikcM/9eAwqD0K5rw1FDTOV3EAUVqqxIMDsF1i/pA1QTZPw0sWdu7Wm/X5xFlQBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McB66+KYgUdosNciaTkFrzTi9ZeSfGvuqymTTRjyOAM=;
 b=BHgxJouFpthwEJeKz473iQp4E+1MmyH245SLmSAPAx84frNctIjdur0+qjOmMr8FH4U3y0kD2O0lojnIDgs9E6kxa24G/dYeDomqPRIpeiTco/RLd4KnYgQDGNh0gb0HHbrIDpc29bldkZPobjnobKhYyNGAs4CEdFtM6RariijbNCQwaETH0gKFTuUU4rbqpcu/1pLldVoCagav9L/w3GGy3u9ZPoKbrbBJqdgR/ywVaSukebpT481bIEa6eK4CkfJoPGU/y130MVXyLJXeW9cfjXm/Wg3pOM5DGzugxIrH1jjWBAU+7kCH2Mw121vuwdgUKAXJKsu+DQ7p9iw2kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM8PR11MB5672.namprd11.prod.outlook.com (2603:10b6:8:26::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Tue, 17 Oct
 2023 22:12:23 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 22:12:23 +0000
Message-ID: <ef588877-0ec9-43fd-a532-e3605139593b@intel.com>
Date: Tue, 17 Oct 2023 16:12:11 -0600
User-Agent: Mozilla Thunderbird
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
X-ClientProxiedBy: LO4P123CA0600.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:295::20) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM8PR11MB5672:EE_
X-MS-Office365-Filtering-Correlation-Id: ade7e1cd-6fd0-4b68-e66e-08dbcf5e22ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E3wIkahEnGL0Vr6MOH1k0+uSulc+EfZDZVfAIv2abYxCgyEI+2DO66XwReGQC42P1/xYcYrCquT++NI/2HSh+ZT1NMoBgJFCyDG8rxUjqK9jLUGRYWHCrdKoxZZTWZVE7/ETXNk0HoHYyUrZXYNL69LgEXO3uP54MqwVKjzgnAKm+2cvw1+utGpsYpJqAi1HLhatHC46vKyghD7YHjoXYvf6cE/2Qd9srhNbzoWyosBm/Wsf3a241Q7jyufnwTNGUCAgXD1s2sQelL/pfpokUaI8F+D8KGJf+/9f9Oe3beVg5vbFHg5wyo/t/uuNlEs/XPVioq8tn6Q3jia2M9i8qjpShRwgZkQ8ha/TkiDUTlZruVoMOJzTWAM6MJ1cjkFOAlqhmvhLndYk5DMEA8TFsUhkAuhkLzncoBStz6bMWJXTXax2Vhl2zsxRaYB2jDSXFBNyYQIbEEFyWuJeLuHc60DlCjVu/EXBTC3i1dqc7lrct0t6OsIlMpB9jhdy7kngCdFGvNllTQNvTR9tS4YU7ptz4A1OSl/IN/Qndsfs0vKsVewjocIiEf01jvh/FiMihNltsTyQpGHXCbGd4y0+SlTH9u4swHLcAcz3KGxq5619l25QahIUoz1PiOUi1ZyvaZZ2fPHoxESJgxfwHM1DYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39860400002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(31696002)(38100700002)(86362001)(83380400001)(31686004)(478600001)(82960400001)(66946007)(966005)(316002)(110136005)(6512007)(66476007)(6666004)(2616005)(6486002)(36756003)(5660300002)(41300700001)(7416002)(44832011)(2906002)(4001150100001)(53546011)(4326008)(8936002)(8676002)(6506007)(66556008)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDhsM0ZRVUFtaDAvOWhzdUNGRVNGOGQzOHdSOFh4SXcrWm5leHFFOFp1MWdr?=
 =?utf-8?B?bnFBRzl2b09oa0Z6Ty9lem5vRThjMCtZdkNkYTlKVU9iV1d0eTFJSnR4clJY?=
 =?utf-8?B?QnRucUZya2p3Y2dRUlpEVDhkTlhxKy85V3p2YjkxNEllRG5wOHdaOEdVMkJk?=
 =?utf-8?B?NGFPUk93dkp4R0J3MW5HazduQmVzZDgyVGh5aFBCTFVqeUdBZGo4alA5akdo?=
 =?utf-8?B?b1FPSDBZZVlSY21pNHVPZENDeTBrancrYlZRYjRWY3VnSko4N3RwdzNqUGJj?=
 =?utf-8?B?Ukk4M0E3NzBOWXVnQ3MzaUMyL2xTSmRteTN1cUlGR0xDSTl0cUlSY2RMM3Q5?=
 =?utf-8?B?RjllbjV3YjhlRXRDMDJlN0JXb0FDTk03M3h0WkNrV2pnVGMraXpNVGZPUTR1?=
 =?utf-8?B?K2JKSzFUK3RmVGJnRk5vRXg4cGFRK2FtclZNV3VJa3JqN2txNFBCZnh3Rnox?=
 =?utf-8?B?eC9KOHdUZ0RLUTZIbzdvS1ZOb0t3VEJxK094czc2d001TTJhY2FmaEVCZmRz?=
 =?utf-8?B?ZndkVHB0dFgvQjJZZG5UZG1KK3dMM0VCOHhxQWlIOFhZeWtkdFg0U3JxcmVI?=
 =?utf-8?B?MjVKaUUwemRLcWo1eHZockgvSThSeDlzU1BJY1RrMVloNm5JRUthcDE2V1Fy?=
 =?utf-8?B?MVFSU1NKdVd2MTlzMU4xWEU3dHFrNGdVNFhhUnpEUmNWWEVJVmNaV0tHSXFo?=
 =?utf-8?B?ZWM4U2RJV3pxdEVQbVVtZWd3S1Myc25JaTZDNXVXYkRzMmNVcG9FZ2x1L3M1?=
 =?utf-8?B?Rm45Zk41WkJobjlEaURYZUhsQ2h1cVcyOXd2dENVdUdYS3B2RXVkVSsvZEU5?=
 =?utf-8?B?bDMvR3lSbUYzeDQwNGtzY1lDdGN3VnlGWEtqMlhJZVlleXFwYnlvK0pBY3cw?=
 =?utf-8?B?L01zRXpPb2o1WHNoNDRRVVUzNUVRUkxkY2dUQUo3NmpjVW51eExLM0xzRHgz?=
 =?utf-8?B?TUlxR09NcHl3MkY3NCtZN2oxelgrR283NmtDaGJFd0U3OUxtSU1qeU0vSGNF?=
 =?utf-8?B?VS9teXFtVWVTZER2ekY4UWx6ODBXVVZBdFZzTUdPL3Q4SWhIS3VjN2lzb2lx?=
 =?utf-8?B?b0tYb2hsMEtkdnFQbzdxb1JheUtHYU1LdDdYMndGVGlzQzZkOG90TFZpVkRC?=
 =?utf-8?B?aXM4SHhFYzZPWUdGanQzQTBLejZ2eWZaU2V3KzlKZnk3Nk9udktzUG9IUFox?=
 =?utf-8?B?dC8xSTBFemxiNkFZNDFvQ3ZKWERoYjB4S2VERWdSNzhNZzZ6ME54VmtLRFVS?=
 =?utf-8?B?OFVoeW95MnhjamhaaGlrT1ZwUDA5MkQxYllaeUNaVlZUa2ZIdzNBMHBFZWI3?=
 =?utf-8?B?U1QrdktaWjBMeEZwYmh6SDVxWHRhSFBRNWFPbUNxRG9GUUM3OStkQnFJMStK?=
 =?utf-8?B?azZBY0pXTVpCT2RhU0daUGJTVnBtZmptMkR0ZFMrc0FiMVEvMGhid0NSYmU1?=
 =?utf-8?B?Ri9EbDQydEFrUzNNZ216b2VwUi8rTGFOTWhpN1VkMGtKRUNHSlJtRVNiTlBM?=
 =?utf-8?B?eUlQM3VFcll4bVBnQkhJYVVBWEJmNDJXcVpiRlJkaHZPUTloUUduYTJidkNJ?=
 =?utf-8?B?amNuajJWNU9DTGV6UmhlNkdlZGJ4V1NXajhBS1ZUbmRDUUVOTTJvbFZUYThl?=
 =?utf-8?B?Y0N6YWd6VWFSQmtnZmM4SFNGYm5IWk9Eb08wSndIdlV4d2NQY0FsLzM1ZWMz?=
 =?utf-8?B?eWFhNmJPemQzK0JBdzVYTExoTmozTTFUWHg5aDBUZWpkenRLdm93Lzh2NGk4?=
 =?utf-8?B?YXl1ZmVTRDNQcHV3MXQrSFR6Uzc0azZQRWt2OTk4S3RqamwwczVEUGNNV2Uy?=
 =?utf-8?B?SGR4YzJtMFBXMUZnSWVSaFdJVTRkaGQzVXdIUGR2b1FXZ3FiOGQxRmhqbDlO?=
 =?utf-8?B?UHNOU3VBVXRBV3F0dEhEcmZrdUZVSERYSjVsQ2FWYzU4VUtlWjViZVpocC9J?=
 =?utf-8?B?SVlBRStJVS94ZzlGbGpMaGVwYm9pbE1IZmNkSStENDYvcnJwY2JRc1ZYeFYy?=
 =?utf-8?B?ZlZ6cTZpL1JHUUZFeC8yTjBhVXM0UmVnampzUGFBbFZSdkNHMWc2aGpINWhM?=
 =?utf-8?B?SWxLdVhiTElaWENsRGhoNXpZN2s4MHVuU05MczRMbXR3VGhXM0VFdmF0dHk5?=
 =?utf-8?Q?8je0iyK/metIsZUhuI8GBW8FT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ade7e1cd-6fd0-4b68-e66e-08dbcf5e22ec
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 22:12:22.5323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2EiQ3G/Dv7t41hX7MnkJVaPjFG41M9DWG3UJAmoJ+3MPVDorT6lWoruZq6/oSh6GLopxhzw+nxZy7rS3k4GLdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5672
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697580751; x=1729116751;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l43wPKHJjFkM3t6IoQ1P2Nw8I5zM9NMmf1NqWvOfr2g=;
 b=MR0o6s478khlvfE4PPZw/P2w1YrUnhH1Ua/qOygOdkttpQEXGn9hyEzp
 mhddoGeaEnSHm8txYUQ3+laWyUGITFiuDFWmSoqXsJSWrVphU1seI7GUA
 MPTHukswvJQxoP+Z1X0Wc2ag8q+jLzjS+AORN8+jzfnElzEhsk64dadJm
 Uj8LHAdMCov8oqS9ZHQ1vMl5ix+9AQAv3J6uQ9cdMbjyekZw7JmsBmgDu
 MfsWVhDTvdL4JVWnHGunB4JwtpFxFww7a/scsH9CwHBWDtxEgEyzpNdSS
 rAKBXL4S/5fc1E23oiwGgKv0w3KlgRTdVHwlfpQCJlwW2+OwRFyOZYhIs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MR0o6s47
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIzLTEwLTE3IDE0OjQxLCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gT24gVHVlLCBP
Y3QgMTcsIDIwMjMgYXQgMToxN+KAr1BNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
IHdyb3RlOgo+Pgo+PiBPbiBUdWUsIDE3IE9jdCAyMDIzIDExOjM3OjUyIC0wNzAwIEFsZXhhbmRl
ciBEdXljayB3cm90ZToKPj4+PiBBbGdvIGlzIGFsc28gYSBiaXQgY29uZnVzaW5nLCBpdCdzIG1v
cmUgbGlrZSBrZXkgcHJlLXByb2Nlc3Npbmc/Cj4+Pj4gVGhlcmUncyBub3RoaW5nIHRvZXBsaXR6
IGFib3V0IHhvcmluZyBpbnB1dCBmaWVsZHMuIFdvcmtzIGFzIHdlbGwKPj4+PiBmb3IgQ1JDMzIu
LiBvciBYT1IuCj4+Pgo+Pj4gSSBhZ3JlZSB0aGF0IHRoZSBjaGFuZ2UgdG8gdGhlIGFsZ29yaXRo
bSBkb2Vzbid0IG5lY2Vzc2FyaWx5IGhhdmUKPj4+IGFueXRoaW5nIHRvIGRvIHdpdGggdG9lcGxp
dHosIGhvd2V2ZXIgaXQgaXMgc3RpbGwgYSBjaGFuZ2UgdG8gdGhlCj4+PiBhbGdvcml0aG0gYnkg
cGVyZm9ybWluZyB0aGUgZXh0cmEgWE9SIG9uIHRoZSBpbnB1dHMgcHJpb3IgdG8KPj4+IHByb2Nl
c3NpbmcuIFRoYXQgaXMgd2h5IEkgZmlndXJlZCBpdCBtaWdodCBtYWtlIHNlbnNlIHRvIGp1c3Qg
YWRkIGEKPj4+IG5ldyBoZnVuYyB2YWx1ZSB0aGF0IHdvdWxkIG1lYW4gdG9lcGxpdHogdy8gc3lt
bWV0cmljIFhPUi4KPj4KPj4gWE9SIGlzIGp1c3Qgb25lIGZvcm0gb2YgYWNoaWV2aW5nIHN5bW1l
dHJpYyBoYXNoaW5nLCBzb3J0aW5nIGlzIGFub3RoZXIuCj4gCj4gUmlnaHQsIGJ1dCB0aGVyZSBh
cmUgaHVnZSBhbGdvcml0aG1pYyBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSB0d28uCj4gV2l0aCBz
b3J0aW5nIHlvdSBkb24ndCBsb3NlIGFueSBlbnRyb3B5LCB3aGVyZWFzIHdpdGggWE9SIHlvdSBk
by4gRm9yCj4gZXhhbXBsZSBvbmUgc2lkZSBlZmZlY3Qgb2YgWE9SIGlzIHRoYXQgZm9yIGV2ZXJ5
IHR3byBob3N0cyBvbiB0aGUgc2FtZQo+IElQIHN1Ym5ldCB0aGUgSVAgc3VibmV0cyB3aWxsIGNh
bmNlbCBvdXQuIEFzIHN1Y2ggd2l0aCB0aGUgc2FtZSBrZXkKPiAxOTIuMTY4LjAuMS0+MTkyLjE2
OC4wLjIgd2lsbCBoYXNoIG91dCBlc3NlbnRpYWxseSB0aGUgc2FtZSBhcwo+IGZjOjoxLT5mYzo6
Mi4KCkkgYWdyZWUgb2YgY291cnNlIHRoYXQgd2UgbG9zZSBlbnRyb3B5IGJ5IFhPUmluZywgYnV0
IGRvbid0IHdlIGFsc28gbG9zZSAKZW50cm9weSwgZm9yIGV4YW1wbGUsIGlmIHdlIGhhc2ggb25s
eSB0aGUgTDQgZHN0X3BvcnQgdnMgKGlwX3NyYywgCmlwX2RzdCwgbDRfc3JjLCBsNF9kc3QsLi5l
dGMpPyB3ZSBzdGlsbCBzYXkgd2UgYXJlIHVzaW5nIHRoZSBzYW1lIGFsZy4KCgo+Pj4+IFdlIGNh
biB1c2Ugb25lIG9mIHRoZSByZXNlcnZlZCBmaWVsZHMgb2Ygc3RydWN0IGV0aHRvb2xfcnhmaCB0
byBjYXJyeQo+Pj4+IHRoaXMgZXh0ZW5zaW9uLiBJIHRoaW5rIEkgYXNrZWQgZm9yIHRoaXMgYXQg
c29tZSBwb2ludCwgYnV0IHRoZXJlJ3MKPj4+PiBvbmx5IHNvIG11Y2ggcmVwZWF0ZWQgZmVlZGJh
Y2sgb25lIGNhbiBzZW5kIGluIGEgZGF5IDooCj4+Pgo+Pj4gV2h5IGFkZCBhbiBleHRyYSByZXNl
cnZlZCBmaWVsZCB3aGVuIHRoaXMgaXMganVzdCBhIHZhcmlhbnQgb24gYSBoYXNoCj4+PiBmdW5j
dGlvbj8gSSB2aWV3IGl0IGFzIG5vdCBiZWluZyBkaXNzaW1pbGFyIHRvIGhvdyB3ZSBoYW5kbGUg
VFNPIG9yCj4+PiB0eC1jaGVja3N1bW1pbmcuIEl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gbWUgdG8g
anVzdCBzZXQgc29tZXRoaW5nIGxpa2UKPj4+IHRvZXBsaXR6LXN5bW1ldHJpYy14b3IgdG8gb24g
aW4gb3JkZXIgdG8gdHVybiB0aGlzIG9uLgo+Pgo+PiBJdCdzIGVudGlyZWx5IG9ydGhvZ29uYWwu
IHtzeW0tWE9SLCBzeW0tc29ydH0geCB7dG9lcCwgY3JjLCB4b3J9IC0KPj4gYWxsIGNvbWJpbmF0
aW9ucyBjYW4gd29yay4KPj4KPj4gRm9yZ2V0IHRoZSAiaXMgaXQgYWxnbyBvciBub3QgYWxnbyIg
cXVlc3Rpb24sIGp1c3QgcHVyZWx5IGZyb20gZGF0YQo+PiBub3JtYWxpemF0aW9uIHBlcnNwZWN0
aXZlLCBpbiB0ZXJtcyBvZiB0aGUgQVBJLCBpZiBjb21iaW5hdGlvbnMgbWFrZQo+PiBzZW5zZSB0
aGV5IHNob3VsZCBiZSBjb250cm9sbGFibGUgaW5kZXBlbmRlbnRseS4KPj4KPj4gaHR0cHM6Ly9l
bi53aWtpcGVkaWEub3JnL3dpa2kvRmlyc3Rfbm9ybWFsX2Zvcm0KPiAKPiBJIGFtIHRoaW5raW5n
IG9mIHRoaXMgZnJvbSBhIHNvZnR3YXJlIGVuZ2luZWVyaW5nIHBlcnNwZWN0aXZlLiBUaGlzCj4g
c3ltbWV0cmljLXhvciBha2Egc2ltcGxpZmllZC10b2VwbGl0eiBpcyBhY3R1YWxseSBtdWNoIGNo
ZWFwZXIgdG8KPiBpbXBsZW1lbnQgaW4gc29mdHdhcmUgdGhhbiB0aGUgb3JpZ2luYWwuIEFzIHN1
Y2ggSSB3b3VsZCB3YW50IGl0IHRvIGJlCj4gY29uc2lkZXJlZCBhIHNlcGFyYXRlIGFsZ29yaXRo
bSBhcyBJIGNvdWxkIG1ha2UgdXNlIG9mIHNvbWV0aGluZyBsaWtlCj4gdGhhdCB3aGVuIGhhdmlu
ZyB0byBpbXBsZW1lbnQgUlNTIGluIFFFTVUgZm9yIGluc3RhbmNlLiBCYXNlZCBvbgo+IGVhcmxp
ZXIgY29tbWVudHMgaXQgZG9lc24ndCBjaGFuZ2UgdGhlIGlucHV0cywgaXQganVzdCBjaGFuZ2Vz
IGhvdyBJCj4gaGF2ZSB0byBoYW5kbGUgdGhlIGRhdGEgYW5kIHRoZSBrZXkuIEl0IHN0YXJ0cyBy
ZWR1Y2luZyB0aGluZ3MgZG93biB0bwo+IHNvbWV0aGluZyBsaWtlIHRoZSBJbnRlbCBpbXBsZW1l
bnRhdGlvbiBvZiBGbG93IERpcmVjdG9yIGluIHRlcm1zIG9mCj4gaG93IHRoZSBrZXkgZ2V0cyBn
ZW5lcmF0ZWQgYW5kIGhhc2hlZC4KClRoZSBrZXkgaXMgaW5kZXBlbmRlbnQgb2YgYWxsIG9mIHRo
aXMgZGlzY3Vzc2lvbi4gSXQgaXMgc2V0IGJ5IHRoZSB1c2VyIAphbmQgd2hhdGV2ZXIgdGhhdCBr
ZXkgaXMsIHRoZSBoYXJkd2FyZSAoYWZ0ZXIgcHJvcGVybHkgY29uZmlndXJpbmcgd2hhdCAKZmll
bGRzIGFyZSBYT1InZCkgd2lsbCBnZW5lcmF0ZSB0aGUgc3ltbWV0cmljIGhhc2ggZnJvbSB0aGUg
aW5wdXQgZGF0YS4gClRoZSAiYWxnIiBkb2VzIG5vdCBoYW5kbGUgb3IgbWFuaXB1bGF0ZSB0aGUg
a2V5LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
