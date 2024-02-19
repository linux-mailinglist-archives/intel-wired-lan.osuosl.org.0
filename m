Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C02085A0C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 11:16:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8E02408E8;
	Mon, 19 Feb 2024 10:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PE8E6iQy8P4v; Mon, 19 Feb 2024 10:16:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1305B40912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708337816;
	bh=Fx691YlFf1dEz0OOp/gbgn4h1qUfFeGV3Gd1ksAx1gM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JCnoO/Mu/e6LLbzaPF0Z0TrrOjKJR0ysQEjYx81u5sKRKmfea/urv35npe09udBjk
	 l3LvnzCDurxZhlgu2xtVp8Qx6Tmxx+27SJTgg5ZlW/yq/DLwX33lGRTIlj8OyuAFVb
	 SvOkgTNx5FAeP6EueQiyYQauKjyh2tf0HLBK4dN0UtcP054Qt8G/ebZ4m72Rbt4/Ma
	 +S63zAYiIVIUtaW4CcV3VppqW4Mfrt3mCDEjQVi6GfIeDMYwgz4bdujcuNqTUNt4+k
	 yQW9rcGeEysjK4FiaFB5hfJXvOHsMAneGIRl09Sj8KrgGFi5P9HjDF6Zdip3Um2+vn
	 Z7WzZo/XrBBOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1305B40912;
	Mon, 19 Feb 2024 10:16:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B99921BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4A12408AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PyGOnXgGcqJR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 10:16:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7440405F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7440405F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7440405F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 10:16:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="6221974"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="6221974"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 02:16:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9052562"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2024 02:16:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 19 Feb 2024 02:16:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 19 Feb 2024 02:16:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 19 Feb 2024 02:16:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5g7PMJCPO3PMb7FBHLnJjj9y1vO21v7YsOC+7Sh1u6ezm7Xw+LopqfjWdph9otcctOI9Df0xhijiGQT1bGYxkITdOiunbhqXgb6BO/3jW6cEaklfMu7Nzm4x0NvBgqWF5wLWFmOayZ3fki5ApnLm/U7C06r12sVdigpeUr4OAs8d3EOsrpDJdbAYj7x93QY+yEvWgSeKehVa6YorKj+hSVY4EVS9mAkgxZRBlo3F+RuRZ3f8C1/zBLWxkEZP2cRGoFghQDHqburheSVQP4aL1JhX/2Zraixxed4xVxyprGOEw2mB17Rl7C8/jClKgA4FpbadUt35RKBS0lq7RYJGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fx691YlFf1dEz0OOp/gbgn4h1qUfFeGV3Gd1ksAx1gM=;
 b=hwCyC2sUx2Zt29Od77KBrtTYZf6qR/a+eaGNXa8JyxfhDwKdqmHV7C6oFz+8auetf5KvWZ4mKvkVcdECCFEoWXqz0QIMP1+Fz4rS6tFHZBAcxhNvXHb8gqmaBWn8MecfWWLCuijL0x4CrwElKjVteVRpJgih2yxoikVQVIQfCszx3EzDZxK7R0hab7asf2pMuvIZsRw63OrTHGC7Oq9zuvq+UQLb4HegvJzLM66HBFo9+7OoBQfI6gzrmEpovKtl9Dz3KdCZdIubf0vValsp4fGUD7QCI7d+qJ7OW9BC1V6/LhgB844f9M9NxVk9G39RNBjHbt5nk1MtU+jsby8aJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Mon, 19 Feb
 2024 10:16:46 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::4710:fe84:5d93:26a9]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::4710:fe84:5d93:26a9%4]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 10:16:46 +0000
Message-ID: <d5ccaa1e-459e-4ac4-8c70-cfec02d62d11@intel.com>
Date: Mon, 19 Feb 2024 11:16:42 +0100
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@lists.osuosl.org>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-2-mateusz.polchlopek@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240219100555.7220-2-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0041.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::27) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MW4PR11MB6864:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f075f22-b48e-49b1-4f52-08dc3133e083
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rIpmEpela0FZTWlBpEeV5kDgG3lm0Le7MozDFFOzn7bUmyPX29YstEkmItlwUFARVYOKROP2JGiSFgfl9E7pSlzAbpdEYBg7z5sIbEYFPsmmcpIRehZ5Agewn5vTCnwXM7tZ9IT5NoQjYogAzj1CO+Z0XP4WyIgRJUxj3zlfqzIAdnOmW1lCllub+4wswGQqBI2O/wpzwYn612tSmMAwlHY/2+P5PgU0ijSBTZKcc/J2n5PP+PX7M1eNsC2peeuLVfMPudBOfmD2fAZmX3tNoTe15JvqUSF+UTSobra4R3Hf8mRnRvbAuXgpHFw/V6LCxbOEZ7BkGtcp8ocIKxVdwVP1eeZw8St/+jk64sysR4MLhvrBj6JsbILFdKdnnNA9hw2XouRk4Y5ays1AouK40fZrqL/VH+WRfxrssu2gQIb3MjHQxxCd7dMT21ncMLHWg2bo6qhwySDaNr7zwQA9nTNOnBn/v/2hHs72GAkY2iCGJUe4Ve9yusbHVB/NQxbylT4BpKqKz0k1S9P4WjOnyrMzqLt3JYuwgGeffrvr1YMXYN9JmLNTjtrw7YMJB/7S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(136003)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(5660300002)(30864003)(44832011)(2906002)(6512007)(107886003)(26005)(2616005)(36756003)(36916002)(478600001)(6506007)(6486002)(53546011)(38100700002)(82960400001)(83380400001)(6916009)(31696002)(86362001)(4326008)(8936002)(8676002)(66556008)(66476007)(66946007)(41300700001)(54906003)(6666004)(316002)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NCtkck1IR04xNUlnZlF5TmR6dUZGWmEyRnZjMVk2dTg2emN0bmF1Ky9hMlJh?=
 =?utf-8?B?MzVMYkxyYUpXVlUrclhaMlNOYWp4ZTBmQjVWeWVIZkFzVkJKbnBrSEZVY1Zx?=
 =?utf-8?B?Rm9sWkFPSXIzZy9yZ3JsSWhDeUxMd3hhcS92c001YWwyV1JqSnVJdVFuaEJ2?=
 =?utf-8?B?d1ZJL2tJK2V5Z3JVRmJPOHNBU3AyNmhUSExxMVM4VnJyQVd1Nmt4RTJjVHB3?=
 =?utf-8?B?NXdzOHNOR0pNU0VmY2UzZm12TnE4Y3lDMVduK3Y2ZGdFT0VpWXhneEFFVEtk?=
 =?utf-8?B?MHUycVh6WnRueWZKZkxBTmdLYVdUVGU2T0h5L0RiejBuZWxQTjE4WTU0dTFv?=
 =?utf-8?B?STBTK2lyRmoxdjYyMVd0c3krbTRiRk9EZGZMbFZ0RVllQm1zamxJdWhuQzc3?=
 =?utf-8?B?R3o5d3BjNlVWRGdnSE8vOXZ2VTNkNjBXSUNwSVNiU1h5TEp6cHNsTVFHSkE1?=
 =?utf-8?B?WFlRSzJPcjdST2IwUkkwTW9yZzZZRnRDMVp5L1JEWGRNdExLUVlnTmZaVEYw?=
 =?utf-8?B?R05GZi9GMS9QV3FZZDZQaml2alVMa00xYmQ4Ulk0YzllNXhZdzhGcXVWYUN4?=
 =?utf-8?B?TXFvU2FXKytxcUY2RjF0RzJVQ1owWHpOSTNJckg4b2FLd2xCRmIrNDRVUWZs?=
 =?utf-8?B?UnNYVkVSUmtSMHR3WlRjb3g1and0RjFOZklSeVRETDdDMHFGbDlYRitaZGNm?=
 =?utf-8?B?Sy9YaVBaN1l1NERZcFVHb2txY2Y2Wld0NG5WZi9aVnhHYS9qQmhjQk1IZUdT?=
 =?utf-8?B?YzBaSTNaUmVaSDVCdEVETnR0alI0N3ZDbEppeTZ6UGZrd1NhUExTNkJaNDY5?=
 =?utf-8?B?STNVRFNlZXMxT1MwNnRremFyTEFSOEhZRStyb1EyT1lXZ0pOME5DbVlZY2hM?=
 =?utf-8?B?WXRKa1hZTDMrYitabVNYYUJOdW5VMExadDhXREsxV3NKZzM5eEkvTUsvb2pD?=
 =?utf-8?B?dis1WHIweis0Y2FxVjg4WVErdjl6NnRlZ09SWnRsZ1pXQlJtTXZkWHFWV2Fh?=
 =?utf-8?B?a3h5ZlJRcjVxQ2pKdEV4c2s2VlBUSlI1blk3QWVpUTBOQ0pSSTAvaktweTZ6?=
 =?utf-8?B?MVdSQXBNcnBBVE5xQVNWYnJYYTU0dGlBdUk0TVBRZmlITjV6WVlyOGNiRFNi?=
 =?utf-8?B?cDJJRCtuYU1RWXQ0c040aTdkL21KbUUvUlBjbTBXMEtzNUw1L1lrTGZtYjY5?=
 =?utf-8?B?clF4OHhmU1R5MGZDRXZEd1J6UUZLbCtHeGRQbjRMeDNLNzFVYUY4UFArREQv?=
 =?utf-8?B?YkdhVU55VEtoK2EyeGZLbXFPYXFNK0tVVzdUM2RWWU0yS2JaVk9jTEZlcG1U?=
 =?utf-8?B?Mk9Dek5LQjRqSGhsR1IyZHMwcldnVm5KRjBucVNmOFNSVWJ6Y2l3bms4VGFC?=
 =?utf-8?B?ZDc3bVZySWJtMjhwV0tHQUQ0OHlJRTJqYnh5YllpTEg2WUh3cEpuOGg3VDlZ?=
 =?utf-8?B?MFgyYXpiWVRUclAxMkVkaDBpWTM1NDkvaU5YampmamdWSkVrMnZ3WVdPREJu?=
 =?utf-8?B?SW9HVmhkV3dhdUtKYUY1TE53SzBMdmduZjFJODZ6S0NHYmxZL3lKMmhMMXlV?=
 =?utf-8?B?MFhKZ0NiOHNqbkptSWRxbkp6Nlp3V2JzWHRNVFBvVjc3eHNJQ0o2eG0zdVp4?=
 =?utf-8?B?RmFPOUFIM0NoS0ozV1UwVHQ1cDdlRlhlMm0vaE5QWFliTlAxYk5xV2QvYVJ5?=
 =?utf-8?B?NzBHRmszSGsvWDZoWW1SNTlraGdHT21xR2M0TjBkcWR3aXFzRVl5aTFxSHlq?=
 =?utf-8?B?VFVXVzhJR1RMTEdvRHZoQjRNdDZqcC9IQnprbk9UeUNMaWJ2RG5FT1Q0ZEo0?=
 =?utf-8?B?M0hZeExYa3MrVEhqN2FUS2tSdnRydXhuQlkxUDd2QUs1NVg2bzlRUTFyRE9U?=
 =?utf-8?B?VGZVaWZUR1RSRWRqQTFPeVlJTFp4ZlhlWkpFa2U1ZUhDaUFlR2tmWWpHRGhs?=
 =?utf-8?B?NVVQd2F1WHloV0NaMVVoOHFULzMxV2pwOFA0ZlJKRTJaQzF2L25PdmIzT0RG?=
 =?utf-8?B?eHF4V3BWVUFJeGJ1dUJESDNNdVdSTmFuOGgzK1pmNndUeGZTN0hTN1NRZkls?=
 =?utf-8?B?c3NQQ25FVHpSZ2UvOXZici9XNDRLT1N1YkZGYlNmeEE3RFJRQWZpdG1pZE83?=
 =?utf-8?B?Y29OK0xEREM2U1E0YnlNZFNGdnNUdkw4b2lIYUo5NWY0RlNPNVd5T2h1dG83?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f075f22-b48e-49b1-4f52-08dc3133e083
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 10:16:46.1330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sFkLoxx6YywZh+HvH63MxN67pdx+4wBIGqujlUQnZEhG8AzYYwHnuvHLGu3jseuCudYIymfM4hgPUXTL69fIGB3Bn9ND33l/NHS4hYvdNNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6864
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708337812; x=1739873812;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sBmr0YEu3f2P0YwA+ClGCqrc6beOy7hj8WP4XsJ4nII=;
 b=kRH+S3kIcwyG01Vp+rlyMtvp1A/fprjZJSFwJBVDNYtb7eJK6FLGcTW5
 1kLe1VWf3NRqYDY55jUgsC0AZkVcLCWTZ8cO90LrS1zY9lAIX/XlbIj+m
 zcjJ1XTl2/UziNR3NhGp2m4ZjYcnBHSi9Bi06kaY9Wn2HGO89Hl+lNb8N
 MFOEAYILdULUasEo83aHFgVvA33q0kptOYJHsMsqdA3J4hUs2LsLiZxff
 VeEbwup7k8+UXxF5uKYajm+DnE/BI35qhJ1pxUJa9N4w9FrWS8wIgp0Pw
 mo2XFKPVl5CMhrMBy2wnEF2wqzb9TOdBtg6b7ztxbZp0YRcImRZ82ER/x
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kRH+S3kI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] ice: Support 5 layer
 topology
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
Cc: netdev@vger.kernel.org, Michal
 Wilczynski <michal.wilczynski@intel.com>, Raj Victor <victor.raj@intel.com>,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/19/2024 11:05 AM, Mateusz Polchlopek wrote:
> From: Raj Victor <victor.raj@intel.com>
> 
> There is a performance issue when the number of VSIs are not multiple
> of 8. This is caused due to the max children limitation per node(8) in
> 9 layer topology. The BW credits are shared evenly among the children
> by default. Assume one node has 8 children and the other has 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
> 
> Example:
> 
> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
> 
> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
> 
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
> 
> So on average queue 8 statistics show that 3.7 times more packets were
> send there than to the other queues.
> 
> The FW starting with version 3.20, has increased the max number of
> children per node by reducing the number of layers from 9 to 5. Reflect
> this on driver side.
> 
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
>   drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
>   drivers/net/ethernet/intel/ice/ice_ddp.c      | 199 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
>   drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   6 files changed, 233 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index b315c734455a..02102e937b30 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -121,6 +121,7 @@ struct ice_aqc_list_caps_elem {
>   #define ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE		0x0076
>   #define ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT		0x0077
>   #define ICE_AQC_CAPS_NVM_MGMT				0x0080
> +#define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
>   #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
>   #define ICE_AQC_BIT_ROCEV2_LAG				0x01
>   #define ICE_AQC_BIT_SRIOV_LAG				0x02
> @@ -819,6 +820,23 @@ struct ice_aqc_get_topo {
>   	__le32 addr_low;
>   };
>   
> +/* Get/Set Tx Topology (indirect 0x0418/0x0417) */
> +struct ice_aqc_get_set_tx_topo {
> +	u8 set_flags;
> +#define ICE_AQC_TX_TOPO_FLAGS_CORRER		BIT(0)
> +#define ICE_AQC_TX_TOPO_FLAGS_SRC_RAM		BIT(1)
> +#define ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW		BIT(4)
> +#define ICE_AQC_TX_TOPO_FLAGS_ISSUED		BIT(5)
> +
> +	u8 get_flags;
> +#define ICE_AQC_TX_TOPO_GET_RAM		2
> +
> +	__le16 reserved1;
> +	__le32 reserved2;
> +	__le32 addr_high;
> +	__le32 addr_low;
> +};
> +
>   /* Update TSE (indirect 0x0403)
>    * Get TSE (indirect 0x0404)
>    * Add TSE (indirect 0x0401)
> @@ -2547,6 +2565,7 @@ struct ice_aq_desc {
>   		struct ice_aqc_get_link_topo get_link_topo;
>   		struct ice_aqc_i2c read_write_i2c;
>   		struct ice_aqc_read_i2c_resp read_i2c_resp;
> +		struct ice_aqc_get_set_tx_topo get_set_tx_topo;
>   	} params;
>   };
>   
> @@ -2653,6 +2672,10 @@ enum ice_adminq_opc {
>   	ice_aqc_opc_query_sched_res			= 0x0412,
>   	ice_aqc_opc_remove_rl_profiles			= 0x0415,
>   
> +	/* tx topology commands */
> +	ice_aqc_opc_set_tx_topo				= 0x0417,
> +	ice_aqc_opc_get_tx_topo				= 0x0418,
> +
>   	/* PHY commands */
>   	ice_aqc_opc_get_phy_caps			= 0x0600,
>   	ice_aqc_opc_set_phy_cfg				= 0x0601,
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 090a2b8b5ff2..175091011251 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1622,6 +1622,8 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
>   	case ice_aqc_opc_set_port_params:
>   	case ice_aqc_opc_get_vlan_mode_parameters:
>   	case ice_aqc_opc_set_vlan_mode_parameters:
> +	case ice_aqc_opc_set_tx_topo:
> +	case ice_aqc_opc_get_tx_topo:
>   	case ice_aqc_opc_add_recipe:
>   	case ice_aqc_opc_recipe_to_profile:
>   	case ice_aqc_opc_get_recipe:
> @@ -2178,6 +2180,9 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
>   		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag = %u\n",
>   			  prefix, caps->sriov_lag);
>   		break;
> +	case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
> +		caps->tx_sched_topo_comp_mode_en = (number == 1);
> +		break;
>   	default:
>   		/* Not one of the recognized common capabilities */
>   		found = false;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index 7532d11ad7f3..766437944774 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -4,6 +4,7 @@
>   #include "ice_common.h"
>   #include "ice.h"
>   #include "ice_ddp.h"
> +#include "ice_sched.h"
>   
>   /* For supporting double VLAN mode, it is necessary to enable or disable certain
>    * boost tcam entries. The metadata labels names that match the following
> @@ -2263,3 +2264,201 @@ enum ice_ddp_state ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf,
>   
>   	return state;
>   }
> +
> +/**
> + * ice_get_set_tx_topo - get or set Tx topology
> + * @hw: pointer to the HW struct
> + * @buf: pointer to Tx topology buffer
> + * @buf_size: buffer size
> + * @cd: pointer to command details structure or NULL
> + * @flags: pointer to descriptor flags
> + * @set: 0-get, 1-set topology
> + *
> + * The function will get or set Tx topology
> + */
> +static int
> +ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
> +		    struct ice_sq_cd *cd, u8 *flags, bool set)
> +{
> +	struct ice_aqc_get_set_tx_topo *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +
> +	cmd = &desc.params.get_set_tx_topo;
> +	if (set) {
> +		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_tx_topo);
> +		cmd->set_flags = ICE_AQC_TX_TOPO_FLAGS_ISSUED;
> +		/* requested to update a new topology, not a default topology */
> +		if (buf)
> +			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
> +					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
> +	} else {
> +		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
> +		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
> +	}
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
> +	if (status)
> +		return status;
> +	/* read the return flag values (first byte) for get operation */
> +	if (!set && flags)
> +		*flags = desc.params.get_set_tx_topo.set_flags;
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_cfg_tx_topo - Initialize new Tx topology if available
> + * @hw: pointer to the HW struct
> + * @buf: pointer to Tx topology buffer
> + * @len: buffer size
> + *
> + * The function will apply the new Tx topology from the package buffer
> + * if available.
> + */
> +int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len)
> +{
> +	u8 *current_topo, *new_topo = NULL;
> +	struct ice_run_time_cfg_seg *seg;
> +	struct ice_buf_hdr *section;
> +	struct ice_pkg_hdr *pkg_hdr;
> +	enum ice_ddp_state state;
> +	u16 offset, size = 0;
> +	u32 reg = 0;
> +	int status;
> +	u8 flags;
> +
> +	if (!buf || !len)
> +		return -EINVAL;
> +
> +	/* Does FW support new Tx topology mode ? */
> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
> +		ice_debug(hw, ICE_DBG_INIT, "FW doesn't support compatibility mode\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	current_topo = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
> +	if (!current_topo)
> +		return -ENOMEM;
> +
> +	/* Get the current Tx topology */
> +	status = ice_get_set_tx_topo(hw, current_topo, ICE_AQ_MAX_BUF_LEN, NULL,
> +				     &flags, false);
> +
> +	kfree(current_topo);
> +
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
> +		return status;
> +	}
> +
> +	/* Is default topology already applied ? */
> +	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_9_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "Default topology already applied\n");
> +		return -EEXIST;
> +	}
> +
> +	/* Is new topology already applied ? */
> +	if ((flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "New topology already applied\n");
> +		return -EEXIST;
> +	}
> +
> +	/* Setting topology already issued? */
> +	if (flags & ICE_AQC_TX_TOPO_FLAGS_ISSUED) {
> +		ice_debug(hw, ICE_DBG_INIT, "Update Tx topology was done by another PF\n");
> +		/* Add a small delay before exiting */
> +		msleep(2000);
> +		return -EEXIST;
> +	}
> +
> +	/* Change the topology from new to default (5 to 9) */
> +	if (!(flags & ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW) &&
> +	    hw->num_tx_sched_layers == ICE_SCHED_5_LAYERS) {
> +		ice_debug(hw, ICE_DBG_INIT, "Change topology from 5 to 9 layers\n");
> +		goto update_topo;
> +	}
> +
> +	pkg_hdr = (struct ice_pkg_hdr *)buf;
> +	state = ice_verify_pkg(pkg_hdr, len);
> +	if (state) {
> +		ice_debug(hw, ICE_DBG_INIT, "Failed to verify pkg (err: %d)\n",
> +			  state);
> +		return -EIO;
> +	}
> +
> +	/* Find runtime configuration segment */
> +	seg = (struct ice_run_time_cfg_seg *)
> +	      ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE_RUN_TIME_CFG, pkg_hdr);
> +	if (!seg) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment is missing\n");
> +		return -EIO;
> +	}
> +
> +	if (le32_to_cpu(seg->buf_table.buf_count) < ICE_MIN_S_COUNT) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology segment count(%d) is wrong\n",
> +			  seg->buf_table.buf_count);
> +		return -EIO;
> +	}
> +
> +	section = ice_pkg_val_buf(seg->buf_table.buf_array);
> +	if (!section || le32_to_cpu(section->section_entry[0].type) !=
> +		ICE_SID_TX_5_LAYER_TOPO) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section type is wrong\n");
> +		return -EIO;
> +	}
> +
> +	size = le16_to_cpu(section->section_entry[0].size);
> +	offset = le16_to_cpu(section->section_entry[0].offset);
> +	if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology section size is wrong\n");
> +		return -EIO;
> +	}
> +
> +	/* Make sure the section fits in the buffer */
> +	if (offset + size > ICE_PKG_BUF_SIZE) {
> +		ice_debug(hw, ICE_DBG_INIT, "5 layer topology buffer > 4K\n");
> +		return -EIO;
> +	}
> +
> +	/* Get the new topology buffer */
> +	new_topo = ((u8 *)section) + offset;
> +
> +update_topo:
> +	/* Acquire global lock to make sure that set topology issued
> +	 * by one PF.
> +	 */
> +	status = ice_acquire_res(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, ICE_RES_WRITE,
> +				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
> +		return status;
> +	}
> +
> +	/* Check if reset was triggered already. */
> +	reg = rd32(hw, GLGEN_RSTAT);
> +	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
> +		/* Reset is in progress, re-init the HW again */
> +		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. Layer topology might be applied already\n");
> +		ice_check_reset(hw);
> +		return 0;
> +	}
> +
> +	/* Set new topology */
> +	status = ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true);
> +	if (status) {
> +		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
> +		return status;
> +	}
> +
> +	/* New topology is updated, delay 1 second before issuing the CORER */
> +	msleep(1000);
> +	ice_reset(hw, ICE_RESET_CORER);
> +	/* CORER will clear the global lock, so no explicit call
> +	 * required for release.
> +	 */
> +
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
> index ff66c2ffb1a2..622543f08b43 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
> @@ -454,4 +454,6 @@ u16 ice_pkg_buf_get_active_sections(struct ice_buf_build *bld);
>   void *ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
>   			   u32 sect_type);
>   
> +int ice_cfg_tx_topo(struct ice_hw *hw, u8 *buf, u32 len);
> +
>   #endif
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
> index 1aef05ea5a57..9baff6a857d8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.h
> @@ -6,6 +6,9 @@
>   
>   #include "ice_common.h"
>   
> +#define ICE_SCHED_5_LAYERS	5
> +#define ICE_SCHED_9_LAYERS	9
> +
>   #define SCHED_NODE_NAME_MAX_LEN 32
>   
>   #define ICE_QGRP_LAYER_OFFSET	2
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 657f97e2105f..f964f26664d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -296,6 +296,7 @@ struct ice_hw_common_caps {
>   	bool pcie_reset_avoidance;
>   	/* Post update reset restriction */
>   	bool reset_restrict_support;
> +	bool tx_sched_topo_comp_mode_en;
>   };
>   
>   /* IEEE 1588 TIME_SYNC specific info */

This is of course v4, not v1, sorry for the mistake in tag
Mateusz
