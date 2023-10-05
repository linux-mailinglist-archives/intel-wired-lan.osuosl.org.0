Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD27D7BA7F0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 19:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CED242ED4;
	Thu,  5 Oct 2023 17:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CED242ED4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696526774;
	bh=qkMxsR77kjgxsmC6c+DJfXx0xLFuv1lU1cs7r/p6CsE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dz5I/ofodZIDHQjphQ1ZHckY52zSae15MfMvxmtb18sjETgCN849HhGlFpSWttJB2
	 +O+rjvfmW7vQS48GgurKhQimHJpD6S9HFolbuAXwidOdqm1vF1AygF5EGEf60jWIXa
	 Mz34GXulmarR8zhAZ1irOmmmftkhx60zCFfUUyUo+ylQf3EjbUapGr6Ydjbod3POjL
	 DtHp1Wg2rhbCXMRQX+MnYf2RYnN8u57mHuJe6K3xSe0H2OBQ6uoz1evAs2hAanY84h
	 nO8Ls4tNEzN/zPUGpm0yh+zFBdjvdetQoUUR8U583IXC/5sUKaTVBAA8/AdYHyrjta
	 lce4ZxFwnteRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lv8R8gehcBpC; Thu,  5 Oct 2023 17:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7C9242ECF;
	Thu,  5 Oct 2023 17:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C9242ECF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6481BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 17:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68B4F82513
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 17:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68B4F82513
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ryv4TDZ6Hf7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 17:26:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF37483192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 17:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF37483192
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="450058778"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="450058778"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 10:25:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895521429"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895521429"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 10:24:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 10:25:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 10:25:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 10:25:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C5/We8cRucJ3nWSlxG3d8whqnDSjYMeeaO9yo/Tr6Gy4CQHWYkzn+RB9D29fTRM5tXUirUAaN8WTiP3sXTNfz7+BVt9/zY6jxx/J0nZwT8Xyw2C0uKdqFHZ5FbPzaMHpBJKgbXQgk+g5qsbFceaE1cFG2pin3kgWeb0KfK72n5lfZb0q1E65EXBoPW/bMZ0Yc1Pr733FJJG1AwLQU087AuJ1gJgmqKTk4t4C5OWJhY7UJKFYKHWBtRyB0A45dDiq5miIF3L8k+F1c3GhypyvbqSbA6HAD6bqyg0l41hdXQjNPvFUNmzyEAuX1iavbY2XE9+E9EVq0k0OHAWJmFsHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUj0zqLpJHXKmTvFawvmYv2+pLxrl5abvIqqRnU/bI0=;
 b=dDCDKcgcAJXBlmvEkd9BCBJpK4FA/na8tHQl1gb2kyfvUx9s7AIl01xcMGZGameaOEIuOBLNVNDFBewVlFUAcTx3DYiIhBNoU/6rHogITum9nOsNhG9CD+yOMEOp2OITN+X7T1vwCoZEEGsDP0Hh1f+yMJzv92dMZxiMDWSy7E8rJz+TF4P78MhI7sELv1kW4BHUZZvuPO6ZtZuznPobkZByj+JkzFrP8kCGCz3o6LQoFLuoGJOGu9hZUfGeIAVqAs7TjdRsN0Is7Yx6q/UKlPzAOCiYPbGWA8oggQEKQGDcQyr+87WGEhxZ7HsdBA3O4ipGcfDZm20D37/STaloLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 17:25:53 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf%6]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 17:25:53 +0000
Message-ID: <cb0fc0a9-8065-1ece-33c4-b3e80d152df7@intel.com>
Date: Thu, 5 Oct 2023 10:25:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231004220610.41979-1-pavan.kumar.linga@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231004220610.41979-1-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: MW4P221CA0024.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::29) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7262:EE_
X-MS-Office365-Filtering-Correlation-Id: b71bfca8-c222-4eb6-af23-08dbc5c82076
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F/0zRmntFUou4CHyU9FG8Y/YNjiHm1oYahNpjh2a2a3Gp72ZDI0KmTjZQkHxUUVbnMSBUUIemOmf6B4zKiuq3Lax/9xP1OnkqrYJgXbLkZedYgPvkWowTax0VHxaNDH2fm2uCwAo7vUcfd7BFDZnDHwwH0/LmYgWVP2+wo2cfiXhW9zAbyDcthdKVIhcHre3S8jECd3RWHYMMxiKfDgHS6TOoR4GouAUDNN4YOodeAtZKdoWmsT0+g3E7tgOpYwmk66V+H0HdDY4Vjd+Qp35B+Vyit2JLZmMTF+wiCtg+cejbV94VX0770tAxzflKfmkhXg5iXlLsWkvO9F8MgCbwEQNU0k2rwrGBlSS3y1Bqrf0L2nTZeDRIYE6k/2q6ddgS2bgarTmfSmYdus6uXf6nZwJLCfdaS+BsHNZAnExUcmtPAJVqQ7wQhdgftWXFyLUtxBZ4LFtkXGV/6MQRPDNntEE1KjjPsFovXsHGs9NTdeueUfvgKEXwbxyZ1n30EgReE5DQ5smqrUw9OwAl79QLGwD9M/2LatbRIijkfI+ErT+3ct1Mhi6+Xj7mg+YXsx155zvye7i0KadprKlw250nqSIr05Hx3kOKH66uqAI11StIc7PAHKqaKK2WUy1O5FiW4Ks8MR4wrC+0UAp5CcFkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(39860400002)(376002)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(2616005)(66556008)(66476007)(66946007)(316002)(41300700001)(107886003)(6512007)(26005)(6506007)(6666004)(36756003)(478600001)(6486002)(38100700002)(82960400001)(31696002)(86362001)(83380400001)(31686004)(15650500001)(2906002)(4326008)(8936002)(8676002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDFVWUdPQUUxSm8xVUhBN09MVVVoTlhMRDJZRGFJeXFpOWlvV2hRODZXQVZC?=
 =?utf-8?B?WWEzajZZdXU2U2xjSVdSMzBvQnAxSjZlV2t3eXh5MG4zK1VOK1RBeFpMQndD?=
 =?utf-8?B?T3k2WXdjUkJjU0hNWDNHQndMd2U5K2swZVpxRW5BQ05kZ0krQWZnVEtqVG8v?=
 =?utf-8?B?YURtYkNYekk3RStXb3JDNkoybWUrT1I2aHVycXF1eWdhOWgrTU05YzZOZEVI?=
 =?utf-8?B?MmErZHRaRStjbkRIQ3RRdkNubU1rZ0xWZ01VTDI1dngwT0RMSzRqbFJRU3hn?=
 =?utf-8?B?ZzJxQkJHM3krRWx0b3ZzN0pBNnFNUFFBbUdxTkdLanhkOFd3YkdQV3VFaUdW?=
 =?utf-8?B?RndQUEJqemlGR1pkVVNBM3FXVDdrYzJpM3ZsTWIrUzdLSExHRDhVRnU0cU42?=
 =?utf-8?B?S1phSU5KbWVjT0RXVXFLbnNhcjdlNHVDWVVPalBFN1dzc2FMcEN1R1QxbXJY?=
 =?utf-8?B?WXE5bk5IeHZlbllNRXV2Zkt5T0ZTTERZZ3ZISXV5Y21ieWdMNktiVlFBb3dE?=
 =?utf-8?B?RGFMRmhXYzFOQ1pSUkhWWktLL0FOV09GVERLN1JDbWNSZnJ4UTNVRldoN0Ji?=
 =?utf-8?B?cGxydDJ3WnFiV052Ujd0VGZ5aXlNYjFtNHVPWkcxME5IRkUwVk01K1pyc3kr?=
 =?utf-8?B?eit0b2hmZlVDTUNxUXZsMWpiUUpHYnFib092ZDQ4VDJTckdIR25yM2pMTkpu?=
 =?utf-8?B?S3pDOWdua05hOFVVbmZzUU40Vkp3bDYvbkkyTFg4WXI5VE0wZ2pYVHhLV0Y2?=
 =?utf-8?B?cFBFZGx5dHN6WkxvTWhVcmRCZDNYOG5sMjY5UmhmVW92aEVBSk1VNWNVZlFr?=
 =?utf-8?B?bXMvYThYT2tMZGtjVXZqOEgxNDYrcU1Nc1NLZEt6WXNLZmlmSWR5RGJpZS9r?=
 =?utf-8?B?aTk4cUFzZ2RqRHVwaFNPZUd1QWhoMXV4aU1VV0Jrd2QrUUFEMFA0dXdIMDlE?=
 =?utf-8?B?ZGlUMVUwek1nTjdpUHFlZUpBajN1S3B1WEpFZ0RadzZYaDdqMlFQOC82Nmpy?=
 =?utf-8?B?dlBXTjFWQ283WnBCY1JNbko5SUxveEU1cldqZkRxWjVOT2NxQjZFMFhFVEZV?=
 =?utf-8?B?VmI4QWl3Ty9QTEdxR0tuTGZvK3d1U2tSM1lXVlZOZnd2TW5LRzZMWGZyTDFD?=
 =?utf-8?B?eSt6dHUvKzFEd3prWkNaSE56dHJyQjJVQ3hSZlZOWmtwcm1mTE55eXorOEZa?=
 =?utf-8?B?cERCYlNmcVplWVNIaUt1V0dNTWU4MlNZa0ZISzNIby9zczhRdWRmckRxNUlH?=
 =?utf-8?B?dHdzdG04QTkxaEJKRzQxWnJ6ZCtuVjVWRVN6MzJzTERYV2RwaDlJclB3VTJh?=
 =?utf-8?B?blFWZzMrUHYvdEhyKzV1dFgwVFY3bzQyeUFtWFhSdC9haU5xSXFFTUxGNm9Z?=
 =?utf-8?B?Z2JRVFFUVVJzZU5XQjIxV015MzhpeGVTRFRuQi9BM2d5b0ZpOHZjNmRqaXZr?=
 =?utf-8?B?UTQzWXM2QlM1ZFB5dkI2dmkvUmtzS3hydE9YcWZJVkYyWXRDQlBYZlhlT3Nx?=
 =?utf-8?B?VlBMalkrQWxpeXJFRlIxVjVBUnI3YVVQWExCZy96TkNqUU1IUkdxcG9EZlJH?=
 =?utf-8?B?MUhhei9odkZGZDcxVXhzRUhOcm1rb1hxcEJuRW1ZYmVoQ3V5QVVXQ2lab2hy?=
 =?utf-8?B?cytJVGxNTW9sblJhd0JQVmN6VzAwcVdUbDZmUi8wWXhlUU00QW9CL1R5d1FV?=
 =?utf-8?B?N3ArdTZ3dDNVSXR0YnozRmVET2RaTWxIWXNNVlN5R0RSdi9ZMzJENmpQWWVX?=
 =?utf-8?B?WDhENjdsL1FJbktjK2gzbXNUZ0t1RXVPMDBLUVhNUkljbDlPTHRtV0dNWGc5?=
 =?utf-8?B?WWwydHh2MFVlWlNQTmZWT1BxNFlKNzdiend3K2lzZlJaWW9GNktBTld3T3lj?=
 =?utf-8?B?aHd6ZXE1THBhZDlDV2Urbzc0R056U201YUZTbUpIOHJwL2R6SmxCSkNMMVpI?=
 =?utf-8?B?L01CcnVFZTJ2MDdKNG5yOS9MSzFaRFYxOHZnMzNmTW1aUk9FazNMMUxTNW1I?=
 =?utf-8?B?ZDVQU1pmWWxHRlpRY2IxbVRmUWNMUGVOK3dZbmtRanF3VkhmSFNzQ0tlZlNK?=
 =?utf-8?B?NVl6VmlVYTJqaW52eXJIUlhta3lobUd5bU14RC83TXFrcExvTlRoeVFYYVFr?=
 =?utf-8?B?WGF5RjI5TGNFUkJVY1B6eTBmTUYyQk9oajJMTUpUN0RQQnN5aXdSM3FhdW80?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b71bfca8-c222-4eb6-af23-08dbc5c82076
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 17:25:53.3718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PCp44GFVGsxoTm97x9Fj9J3SPm8BbLXhLuChTF6mu3hwbWFWhHSDwb9BZQY6/al035nIM0iwckWAZYuJT/qGsdCFLcBvTkPyJz/AeytPEEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696526765; x=1728062765;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=++kGjY/FOol2mmWQFO9o039olhWWRpiaPGIw2+4NSxY=;
 b=UqXsaj+maqTsU7cj+Qb6rMUFW+IwJYyyZdoSdbJ4LapYW602ZVDD4q3E
 h7U/bNgC0B0VUsXoDiMZElN1R5JYtlVqwJFPRF0LfRbQU1u3h3YYXoBPC
 qx+RT8x60LcM2Vtn8ln+1QfGX9/mNra/0qFS02zviZiBlLjtq5HsfoWKF
 +HL8MrOMRtEkeT1f2RRpBEjXPqT9kAhc+9zKp+vYFKeJfJks9mxntKwm3
 Wzb3HnMURy9R19rGWFu19ueKI2C46X7emq1nM1VRfjoSOhdtzjpY0Vxbd
 pnW+tyjvkZ8Lk6rEW2mG0Z6xXNmH2yRgL/BvpBA8tlB7FfRDuqjRw/UxB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UqXsaj+m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: cancel mailbox work
 in error path
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
Cc: wojciech.drewek@intel.com, emil.s.tantilov@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/4/2023 3:06 PM, Pavan Kumar Linga wrote:
> In idpf_vc_core_init, the mailbox work is queued
> on a mailbox workqueue but it is not cancelled on error.
> This results in a call trace when idpf_mbx_task tries
> to access the freed mailbox queue pointer. Fix it by
> cancelling the mailbox work in the error path.

Seems like this is a bug fix; it should still have a Fixes: even if it's 
going to -next.

> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 9bc85b2f1709..cbb3f104f899 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3140,6 +3140,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
>   
>   err_intr_req:
>   	cancel_delayed_work_sync(&adapter->serv_task);
> +	cancel_delayed_work_sync(&adapter->mbx_task);
>   	idpf_vport_params_buf_rel(adapter);
>   err_netdev_alloc:
>   	kfree(adapter->vports);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
