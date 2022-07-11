Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEA9570E3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 01:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DA494011D;
	Mon, 11 Jul 2022 23:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DA494011D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657581950;
	bh=6yJ3ahEZREzcD2BJ0jPalrYcnzmEclbCsKsrhhFr+KQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ket4kyOmAa2mZQpmRK864gz2Qye2+IMdFOjEAQGjhL3PYhW7PDfcqj82PXdDy77iV
	 uG/oLUVA59GMwEtE1Ijoy/teCD93kh5fQDggJE6o9fBnfs1G3rBCkfPpXQNxplhOA0
	 reEDAup9+jaU0K0C9ml30h6msmVr1jLUMttmN9cxkH3lGxOFonuBoNGBW39cfReLED
	 /sBGgjSgrCq8Ioc+vr/e9LwRKNhoz3J2wIM5AZ94Zib0/EnIzBhu2I6k/G0tsydbpi
	 hYqMw1kiK/xWMdanZhly2ZsjIiw1OZLJsPEzF/eYhnNCgsUMuM64s360Y34O81E8ak
	 KUSOvSU+kdPuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6jaVe-SlQsxo; Mon, 11 Jul 2022 23:25:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77078403B7;
	Mon, 11 Jul 2022 23:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77078403B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CA171BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62593403B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62593403B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXcmIOpUtNqf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 23:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4705F4011D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4705F4011D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 23:25:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="348772332"
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="348772332"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 16:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,264,1650956400"; d="scan'208";a="569966786"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2022 16:25:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 16:25:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 16:25:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 16:25:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJ8pcgFTw0PuAetMQKBgVoi1jTVcvOxRqEvwH2/TWTeXQdlnK+xFomnGCifwRsO1OIocnp6AIC+YAt10Bdre0H/FVp1E80hEGCtMAlzUi8T+Oyx0s0tjUbMV4tK5YXLmIzvWLDcmiFvYvFlXcClHf9Bp5nuXeiCqCoKZjErIMaWpq8T9q48bUwwFYGoYnQQClpL+/Lx71pLlbZBYwgQQfRyU7RMkCRLY5QqGxJg7hb/Mbw3sK9w1tN9++qRo5C+rtadQVvLtqZ5zN/rBoRwstVlHBIDmr3YeBEi1qihgjkRP/BUIVn4pHqTniOjO3vEQRYkfDwHe9wouNGzbCFiMtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EP9uHPbHTFdUVV/525iofzU4LHRC1geA3yCUBkpNXtQ=;
 b=nzJousjMatHJb99p4ZLfbkJoJ5WlnD2PXPllic+vpW8NEa/tA/Xi9waLhru/hy3rwzRhVigtd9lCwTLY/w+VbkA1XvvgTt3H6QpK4E+z97fLAaPFSp3qlQYEGIS3ajSs98yqE/6tS8zu+H1o4POOshRT1ikFLs1H0YzlJ4WQbDBTOdds2eJe1klEzRZbHAptvFLWxIBfMwLFRg5G/7cZcBE55xo8vaj36K3frVubA6GqGN0yLb8vc2gGN60Sb5C//fXqeb8MZh3Gw+JGJj005Fs6dn/Y6GreU5mKYh8dnNkvInclPVYmy0uwvEO3rNdlCJ9nYl29/tme7iTHGcpfiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL0PR11MB3379.namprd11.prod.outlook.com (2603:10b6:208:6c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Mon, 11 Jul
 2022 23:25:39 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 23:25:39 +0000
Message-ID: <038ce77b-153c-4122-021d-992f8e318be9@intel.com>
Date: Mon, 11 Jul 2022 16:25:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704074405.1221585-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220704074405.1221585-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BYAPR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::40) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 074b7431-df03-48e3-3a4c-08da6394aa77
X-MS-TrafficTypeDiagnostic: BL0PR11MB3379:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +JkEjXUDdX8yUWo4zLmtZUZgkxVlT17MwmxC3vdVhLw98TYQ1lYJNjmrQAVrWG1cxq4uv2dTjnd761nheEgGCmaIAW0zLgdDRL1xOiNUtvoHaCN7S8slkLXZS0R1ceXK7+mY1ENLTtbudY12sSrFQpBZEgoFVdDhXa+MFplCDh5VuJ0wx5jsIBCpyv3KL5LUjKgEc2wWvJhWjCC5T3I4EA6bhwAzwxfH+4DDULYYgV3HufhMTVbY/CSAV4x8oMNGtqLYOmbJfeJ9vOerYkMJDrFXtNIky7fFtvbU2wgxMtWzQ975OPGCY+/Ni8j6g67+RYPdC7HjAIkPkKCcJCyZ+uzPgiLe6aGUzmq3KzGV2gmRMDjVxxudyIYtsW02X6GsVGx0O7M25R5hNvN/5DGMg/n4N+PwVFdRtntJ060h7HP4/ZowfKp6zGnPrK00ZjGT0Hm2TkAn5yZBv6OkTM4CG3f80IaV+PzbjiqISnt5H7pkCWlXoOk5xtJL+r7sAgAGnptpSliNJOn3/Lrc1o0pHcc1+rHgeTnmOltt/1+/VF12dFZCxnhv3twcwyMNv/HZ+rVidV+8oRRAPfqNlrhBOUuUDDfe0vyT9cv85aFLyXFDEMwLYd+74hNH4bR2MxeOb1S2Q9S36JnZWZbK6v2PO7A9xqV0hkj7D5Vk8mZzIZ4eNDVIckyIMhiAuWkgDxkUp+YSQA/7EeL976cZEA5RtHquZX6dQSmgT36Cp4YSJ1igHzDONmjBMWtn1Y6TpGOPVvUCdDXY1GQZSl1AxfdKypyuZ1fKgHKq4m9wl3CVkTsGr8AIagDe0aQ9rpRw09PBSNpvnlfEWsGi135lb6sjRzCGQ1yRqBjFz7ZaOZf6Jxc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(366004)(376002)(396003)(39860400002)(186003)(107886003)(316002)(53546011)(82960400001)(478600001)(54906003)(2906002)(2616005)(41300700001)(6666004)(4326008)(66946007)(66556008)(8676002)(66476007)(8936002)(6506007)(31686004)(86362001)(6512007)(36756003)(38100700002)(26005)(6486002)(31696002)(83380400001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFpBRXVMYjNCK1IyZGtWM1dZeGpXMHdoSSs4QStDUFMyenRPS3ZpYVgzRHRn?=
 =?utf-8?B?TWxISmtHbkg0d1duRGpUTWxGTDJBdlNoS0VKTk9tM2pRdk94Z0NlcFl4Rk54?=
 =?utf-8?B?RUZINHY2OGVkNndzemtDaTRZYzVkN1Z3S1dLcU1UNmlDa0Y3L3kyMzdmb3dv?=
 =?utf-8?B?NlZBeW92em5wTkVvYU1MdGxyUmx4WGRaOUU1aDNzbW5GMjBGRW05Q0IzdFpC?=
 =?utf-8?B?L0UrWUFFTjNRNlpFR2l4cUpoaW04aHB3dnF6cHhPMlVHd29xalZ5RkNVcGh3?=
 =?utf-8?B?UkZRcFJCelEwZEpHR0JQY2VEV2xNK1hZUXBBMWdLYzY3MmNkSVFNclYzSENY?=
 =?utf-8?B?SXVMaWQ1WHBtU0NmR3hsQnE3UkpLYVV4dmhsNWpIbkhObFhYWUEybE9INDh1?=
 =?utf-8?B?NSsrTGxpRTROSkgrWVlkT1FiMDlWNDNYaUVGbXhzSDNXcmsrNWN3MGVpMkdx?=
 =?utf-8?B?STU3NTRkY2VRa2kwdHlaSXZuVzM3Z29Xd3UzU2hCb3lxdkN5MGwyUy9RaVMz?=
 =?utf-8?B?QzlwbWFmam1URThIZmF4L2tpRUpPS2IyODI3VGp5a1c1VU5DNmNhanJNZ09r?=
 =?utf-8?B?NC90bDYycVVwbnFQRWtpdU5wSmxXUUlJYTd5NWVBOHEycTlPRzZjN2NFZlNt?=
 =?utf-8?B?aENyQ1dhSlJxRFNZb21jMlF1RnpJOCtWRHI1NmdnMFhNYnc4eDNTc3BWMytB?=
 =?utf-8?B?SDlXTjA4RDdsN1ZqNUZYcjJaZWl1Z1JEZy9aVVVNSW5uVlpuTy96V0tOQ0g3?=
 =?utf-8?B?SkpXWmhFemI1WlRuVzBnSlBoODNzMEx6UzhZVFZJV2ZYVnNMMHV4TlR6eWZU?=
 =?utf-8?B?ak0zTWlsRHFvcCtuWlpXK05hKzZOMDZtQ2I1TzRZbExnRzlxTWhMM1FoQ0hX?=
 =?utf-8?B?OHFQY2lJWWEvQzJ3WmJLdlpNaFpoQ3Z0VzVzWG1WdEhtOGVQSTVsR3lqWHBT?=
 =?utf-8?B?YUJDcm96TGgzeDg1SWJ2WXgzOEkwMVVTaWpmWURQVTJBeTBZTXBQN09WWkgr?=
 =?utf-8?B?ZWpibERSVGNhZHBxNmhtWExXT3pWaFVNWVZJTzEzWnFQZmpERkYrelE0S29v?=
 =?utf-8?B?NndsczRhRGRKVTJUN05TLzlwZHlJUnVhdUFMQkwxcFQ0dWhtQis4NnRiRDdi?=
 =?utf-8?B?eUZVOHdRS1dRNzUwSU1TaXN6Vm5IUGtJS0p4Wk8rYVp0SHovQkNoUGNjdUg2?=
 =?utf-8?B?L3FVVEJNVys1ZUNjeE9wb0plR25GcXJXNkNGNnBoMUVRanNiSk40TmlVY0Nz?=
 =?utf-8?B?ZEZYUng1MDdZUU9GNFJOMW91cE1VaXVvSkF1WmdMb3hPZUhlWnRiMzlkcnVi?=
 =?utf-8?B?NGNRUXRxK2JtUllDOWk4YU1NOEhDMEpGRlhHcDkrV1cxdXh1UjM0VHVURFQ1?=
 =?utf-8?B?NnVyQmxqeGpGZGhuMUJlMm9SUUNxNnpBbHUwK3ZZKzlBaGErTXhFWWp0K3o0?=
 =?utf-8?B?MTU2STBUU283MjhiNXhsTHVxaVRXQUN5YjcxMEVLQklKblU3WXlqN0MvNkkx?=
 =?utf-8?B?aE5VWEpmQjIraGVFV3poRlJNU0l1VUJ0YlpBMGhSN0RsQUpJWXQyTlY4WlhO?=
 =?utf-8?B?aWttSElOemUxeklCTm9VZ01NQ0NVZTVOcy9uSXpYK2FTT2lYR0Q2N1NkeXVN?=
 =?utf-8?B?eExSTm1Ea21XZ2NMMitSYzJRQVdrQVlPU0dmc2VFSnpCNUt4SW9Yd1AzMDJW?=
 =?utf-8?B?WHVnazAxaktSUExlbERYdlFOWHJZTm5qQjdraHZTYm56bXp4dWd0RmIyRlJQ?=
 =?utf-8?B?emdGN0NMREJSbEtCZXhpc2pVTis4N3hPQ1l6VHhnU3dnWUwxbUZzSVM4ZFhK?=
 =?utf-8?B?L3J4bDE5bTkzMit6a1hxQUNYcW1xV1FBSVJXbTdOai9JUDhkV1piWHZ2S05P?=
 =?utf-8?B?YWU3UGlRb05zR09pZFBIeTdNVEFXcGhqb2NkakI2azhxdDZDL0xCcU5FQTFR?=
 =?utf-8?B?MWduZGorZHBZSll3V1BkU0FzVjVrTnowMFJwdlIzU2ZQUVZSMC94SStDMW1C?=
 =?utf-8?B?bkFod1lJYVhxeW9sR1ROdDdSVU5uUzJiZXFGQ1g4QWljdXhFeURvbGo1eFBP?=
 =?utf-8?B?YXFlSlp4bndBK0pzS2VvNVE2dnpsK3BzaCt2M1pzYzY4YmZWNUIxYU8vYWJh?=
 =?utf-8?B?aFN5WGtCYW5GMWZKQ2xXOHdwN0hydWFma1NxWCtnTUtvR1VocDVqLzNic0s4?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 074b7431-df03-48e3-3a4c-08da6394aa77
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 23:25:39.4002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hxA32Sey9Sszlo/+wO8UYAD4Pb/DHu5kVZrbVsWNRc+pFVb/TNyswJ14G9hulPeQVGvH2FXKmHzCtvLNuo+UGhXAE89KPUVOWL1Bz6QN8h8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3379
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657581942; x=1689117942;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5y4ceRVOO4cZ3ZvixCVVXyJ0Y5FLhpwIYmafiUhS40A=;
 b=KSdCI6EhtWzS2uep8UDp6FF8EIB4K0BC0XLqlLIxwtT1ERJjj9y1NwPg
 st2gXXwdF7Gsj9OG3K3U3AjOnjLdhnC9LJIespbaBB7DbJM9hgB19Uyp9
 XRKDG2DBoxopYVDN/pvst/7bSF4VDpiR2UUEUB/qX9Z8umnTuqEFKeSF6
 gumvq2P02X9/2k17jaz7mvRZxtMRdhAI3PLi7nttOBT6KP+t9SORWj83O
 +/A9sSch3pc0lrihdSJvnv82jcDK+6g74AVWmQnctDX6AaR9aGli1bwaq
 Yf9qNO4XagkNG9KiSg+nh00c54w0Jyjx7F1rZO4IiXIyzb9G26LWaRrRh
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KSdCI6Eh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/2] i40e: Refactor
 i40e_set_rss_hash_opt
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Slawomir Laba <slawomirx.laba@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/4/2022 12:44 AM, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Refactor bitwise operations for rx-flow-hash for improved readability.

Refactor patches should not be sent to net.

> Fixes: eb0dd6e4a3b3 (i40e: Allow RSS Hash set with less than four parameters)

Why is there a Fixes? If it's a refactor, it shouldn't be 
changing/fixing anything.

> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    | 75 +++++++++++--------
>   1 file changed, 42 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 114c68598e41..19d415d6462e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -3528,9 +3528,12 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
>   	struct i40e_hw *hw = &pf->hw;
>   	u64 hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
>   		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
> -	u8 flow_pctype = 0;
> +#define FLOW_PCTYPES_SIZE 64

defines should be outside of the function.

> +	DECLARE_BITMAP(flow_pctypes, FLOW_PCTYPES_SIZE);
>   	u64 i_set, i_setc;
>   
> +	bitmap_zero(flow_pctypes, FLOW_PCTYPES_SIZE);
> +
>   	if (pf->flags & I40E_FLAG_MFP_ENABLED) {
>   		dev_err(&pf->pdev->dev,
>   			"Change of RSS hash input set is not supported when MFP mode is enabled\n");
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
