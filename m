Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4114F7BF222
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 07:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F774414E5;
	Tue, 10 Oct 2023 05:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F774414E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696915228;
	bh=NM/alG0SWcjPhKPwzxR8KT0gJPEiXAU7W/fMMxVB5FA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ol7uoC9VbWwJ/r48W8XDLts6XVOHuVLNkKknwUOx8MjtwdT0Kib0vnB95b9YAMrUI
	 XpLDWsMarilZKnRAXVQbQYvT7wJs7OP8zoqFkiO4xMHtwItYk+Wnf3pJfZCrtZYis3
	 B6pj4A57HJpmQDYC1puaNwARPIWf3YbKm2mXVf6UTV6hbxlMTMTzuKVW+YdHIqNN9O
	 QapTzc512HzvpUVF+dDeZ1AMrl5OqAxOQIShsJ7/EZe4wUOM+u2fEFgGmS/Cx2dx3O
	 ScFyCzpJiHighzccLpktQBvcZyhpGyxCI6LhrpnYidug6klagzwO07irCmqtfsCQWg
	 M6ohO9rMIl1Ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDZaVZUEr2Uh; Tue, 10 Oct 2023 05:20:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7565641498;
	Tue, 10 Oct 2023 05:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7565641498
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CEC71BF345
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 05:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 140C460BD4
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 05:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 140C460BD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zx2_2KryB4Ro for <intel-wired-lan@osuosl.org>;
 Tue, 10 Oct 2023 05:20:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BB18B60B13
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 05:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB18B60B13
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388181944"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="388181944"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 22:20:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="927002035"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="927002035"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 22:20:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 22:20:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 22:20:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 22:20:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 22:20:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HVVraZIOAxBavnKXZSpmewG+6Mtv+nA6vbMzgtWRBfa4/7Ql9e/3jpB5Akz60vRraJ3qxpBrwNyslX1DPllmTuoRiBQwz/ojq4/6/O5j7UAN8j44Ed6OQOpOz8I5bMyWIC0d86l4gWz+g9q8a9ndIs4E5eA60pzJZij9Rn52KK5aHcrfJsn7sltJ3lAXCTnegppo/ZfggHCCZQ5PZF2OAkJtdkfbiNfks8drpp56iyA+xHkKUMNMnCvEiTQiIWRjbTBnPQJbxJAefX4894qhhZki6tIXH8LzqDj883T3LU1SGFUva/ZGw0IpV3VUq1CRNyCoBF/lTTTdDG+/fGEg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxZ6apwdpPRwvBQ9hGwUJ/dy89Ftt8j2vZSpGgXWYx8=;
 b=j8r614KH3gck4Zf/pPUXGaMKl2bfXJSiyalnJB/TsBoHsyQDaQhaAPY9gKoziFrgB708dNneIWLH+ppvIvC2PL68hM7TJlg7U/78XpwJkMVy3sW+amm8bmcg57fr0KcitmdPRxvdItBkfcyw8LY4An0HmTGzpGWqyADDMsaE8FW30XVVYwXPOWnaCLo1Mgsgk1bBAeDamMjvsMNnB6OnP9NfAl89xQrfouRbd/tja7mAJLFn+d090me9X7BlCvmpae3IYPfEbdMr0yVW1fjZuEn8kwXLaBPsTZptZ2zj/WfQ9zuQeEIzBC/n1HOKu88a3Qb3WFPOWNoNaHlmdJXd3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 05:20:13 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3ff6:608:33a:27ce]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3ff6:608:33a:27ce%7]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 05:20:12 +0000
Message-ID: <3736b168-b736-4355-bed3-6bc4ff99aca3@intel.com>
Date: Tue, 10 Oct 2023 08:20:05 +0300
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, <intel-wired-lan@osuosl.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Efrati, Nir"
 <nir.efrati@intel.com>, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
References: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
 <36fec88d-3083-a2df-b0f5-7e2262157a68@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <36fec88d-3083-a2df-b0f5-7e2262157a68@intel.com>
X-ClientProxiedBy: FR2P281CA0054.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::8) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CO1PR11MB5057:EE_
X-MS-Office365-Filtering-Correlation-Id: e5a5d157-25af-4dda-b5ec-08dbc9509443
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8/EmGKYc3LY8+4dOLACH6/Uq6Gcxyjh5cLvYar/+9j48WZG7ihPhiF+DPVtPAarncs9LP5jJ1yfAelvz1e2f126PGSZ3HulZd5iXsAy6jISOJu7OLe/SiNX5jk9Ccu2xejDFlyuh1WaiGiU3itEK91rZKUUw6y/vcweJ9RHJ5JYxQPvv436gWZPUvjMiwkb2GH1/OB3sNQN0K74vr+Lyxau3tmPrteUZDWenJA2UPHwT6/g34nw+a9fu/YMT0741Xnsi94FztmwVr8AiQjnSRSy49cQA5O+pFVX5dQZoDbgpAiqXGhlXAnFWfvfk+jHK3iondat80gxrPJWla+gnbxn1OI7eglkKmqAYXw0YgJKIvmNl/3t53TnM7JCfTGEO0FFmO6/pb8IMS+i+tEpy46mGvqn+DRuw3ffb1cyQ9Olu63GLA/dc4YbkQOmvMY7XO3eukTCBbbw+Hg07KugwtFJAoZQ78Qtl8dFrp72LGnCi+AmqCa7ZtoFmr6TuFbazRYyieF9Q3ebDMA4jjvEpjHDPg+5lhSO4MAe8ecLd8poLA7ofp4EM5c9Lqece050kFDwDzT+55/Pzl82vGAR/Pq6sLudPSXu9+ntQtY7KeqtfVUWFxEZ+22VcvBr1i6xDqgOA1QfS00ou6p8D/K9YSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(396003)(366004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(6512007)(53546011)(107886003)(6506007)(2616005)(478600001)(966005)(6486002)(6666004)(26005)(83380400001)(2906002)(5660300002)(110136005)(66556008)(66946007)(66476007)(6636002)(4326008)(8676002)(8936002)(316002)(41300700001)(82960400001)(36756003)(38100700002)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTN2eFFFQXJqcVRCUVozRHVvVEdBbHk5bHJreW4waCt3aUU4RUxvUEkrU0FB?=
 =?utf-8?B?R0JSK05EQkh4MDRaVjZySUNXak13anh4Z1Y4QjVZYkVreHFTUkFvYmlxV3ZY?=
 =?utf-8?B?c29IaE9wcTYwb25wYlNFQW52dmExVVJJcWV2WmxmYzNkZFJhdkUxb0YxSlZ4?=
 =?utf-8?B?TU9NUTI0a2hVbTA2TVZaNTZZQUdpRHJQYWF4MHdLTng0V2FEbkN3NzgrTXBE?=
 =?utf-8?B?c2dUU0I0cFZaL01JaW9aSTlOaTZWMU16YlFIWmlJK0o2bDFBenFNMjkwVkpZ?=
 =?utf-8?B?K1Fza1p0UHRuTXh2blRwcEhpNTlkbUJVclF2MW5BblFMS0syR3N3TVBiZFlG?=
 =?utf-8?B?VVdpMmZPc0wxSnhRR25MblBlTHMrSWxjd0RzQjYzY3pmL0hJY1BjOTFZLzl3?=
 =?utf-8?B?SEdFdlArcjFaTktNWHVOVWZtbEJEdXpUQjhMMnFCQ1FUdXR0eFZTUTVkUzFs?=
 =?utf-8?B?aUdYdlJKa1A4eFRqeVpERUs3WStYM2tCcHFmNFJHVVN6Rzk5cjFEY3hLTXZw?=
 =?utf-8?B?RGR1YUNhVTJ3ZFQ5MlpCZnRiRG8xM25QK1FCeHpqZDV5QVVabFZCdkJIcUlr?=
 =?utf-8?B?VXFyTW9ZUFF1d0l6MytQMDcxeGZjOFRXVG9RUXJzNzFCTFpYTm5TMWpUaGFu?=
 =?utf-8?B?N3QwZEJ4aWhEYkF1V3JkME1lZkNTbzFLcndncDZEdFR0cndub3JHblk5eW8w?=
 =?utf-8?B?d1RqaElwYmE5cmJpVHFYQjd5cmdDN1d1SENnc3ZMS2poc3BLZGtNZ3NORVI0?=
 =?utf-8?B?K0I2N1FobzR3SlJqVnFNL0NiN1A2WUpxbVZzbGJTK24wN1FvbVozVjI2S1ZH?=
 =?utf-8?B?WlppOWE0STg0REw0SDJvSEgyT3ZUQUF6ZGNCb1FMZGpjcG0vNUNRNGE4czZx?=
 =?utf-8?B?Q05DNHFMWWkxdkZ5eTNUVXM4WFcvemMwRGlIQXZrNEFHZTFSUHJHZ29qTWh2?=
 =?utf-8?B?cWxGeUdYMzc5RFd2bnlqeXZ4bHZHeTgrZkxnSE0ya0wwc3pteVhBaXY3c3ZS?=
 =?utf-8?B?R3psNjhwR1VoM05EOXdnYkJlc3J3eGVqUjJ5MVZRZHNvaDYzVkNLcjV2OHpE?=
 =?utf-8?B?VEljVDBGeVpQVlFEc0kxa1VPMHNMUzlzaGZmSGx2NFppRlUxVnZTQmZiRmI4?=
 =?utf-8?B?bnRGME1DYTk1Vm91YmR5MWZ3Um1PV21GVTZBaTJkNmt4RGxIRUZYMGxQYVYw?=
 =?utf-8?B?anhNMFRtSVhzWlBkN0hrekpxVm1nT1poTld0WldiRFN6ZzRDeGFwTUs1aElm?=
 =?utf-8?B?OTF4QlB3cnhRdk1KVnRpT3dUQ3ZwOUFvMDF2T3hxZnd3MGcvVzg2VUxqS1Ns?=
 =?utf-8?B?VGJVdmFNTHVwK2NJU0xHYk1qS0FIRmNIY2ZJV0dOME1pdTQwSllxYVcyeGVx?=
 =?utf-8?B?VkpsVVBUcHNiTVZkcWxBcjRDOEFrL012V016UHNFSVd6TXorbkI4RURFUklR?=
 =?utf-8?B?aFlVRXMrN3laL1FtNVA1R3I3WDk1TGd0L1ZDMDV3R0hiOVUwQ3Nic3QvcHRr?=
 =?utf-8?B?cmt4VCtBakVFWEhtK3VoSHRMQTBVUGxxSmlJTnIzUi9LTm5uKys5akhFL1JT?=
 =?utf-8?B?ZmE1RU00Vy90RE8waDJtVEJlMWZFakpkSmQzUU4yR2RGN2M2L0ZRUlRrR2tV?=
 =?utf-8?B?akZwbzI5RndiWG51N2NQTXo5RytGaGxNVkdoWDJoWU5odnVZQitWSk1UK0ds?=
 =?utf-8?B?NzNsM3MvSkR6dDIzT2NGbkVUM2xMNk9LUWdmV1cyVVdZQjRYeUZNcWxCVWJt?=
 =?utf-8?B?UEcyRHAvMlJDcW10TzJ6RjRjRWZET29aUHRvSFZHVTlQTXZwMVpFWmNsNVN1?=
 =?utf-8?B?clYzclN2bnhMeFZFTXVVa3B4ZXQzTWNhNVBHYk94U3dTU2NubFlMUmRWQWEw?=
 =?utf-8?B?QWlpRU1Kc3VzUE9QT3RBKyt0OGs5MktCR3N3bzV6dVdRWWN2RGVPdTlpcjBH?=
 =?utf-8?B?M2hIeE1TakxmMXdub1VieEZlU2VIbTB0MksxT25tbFIxNXFmOVYydE9aUmM3?=
 =?utf-8?B?cHlNUXJwVVpDZnZxN1hxcHpqYVMwUkY4L3k4YzJaL2hHVXdkTTJDQU1FTWdx?=
 =?utf-8?B?bSt4eENLSjhJOVJmQUs3MTJVK21tUlEzWXpINWRGZ1RYMDljbERCQmNya3Bn?=
 =?utf-8?B?ZlVGamJvc0NKV09YQzhjakpRRHREb3BSSWhnZ2JFaGIvYUtJOWxPclNDMDRE?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5a5d157-25af-4dda-b5ec-08dbc9509443
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 05:20:12.8108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cYLcy7xOd+rwAtMV+4eIicoHuuvNlflTbAXJcsvSzQvsGkWSzIr3cUAu3sQvTjRvchr9xqBfi9hjIpKS408rwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696915218; x=1728451218;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xfEgzjUHBusdyaePW/sX/Bwle+fMQTilQhy6UKuRtPg=;
 b=D+i0Pwf2y2q2g1TQ4vAd7J6O+hcJHqvlHEQgyWVOC27yKfZVUeLM3AXc
 ge4dXLsRXLDRivMG3VODfeIlrPth1G2f2i1eBtvJZMQLbdgM6AzFXX6ka
 dph9m2zLpm9DYQv5touQCjKXZmypkhef82cypNNPYFP2RzB+EivEbSDA8
 SLjUsHLn17x2Da8T2eVq1DQ8k4cbLBO5XVqav1/5zsPuJu3Vde78OX7NM
 eQtT5zZb52UeWxiqv1Q7Vk7je1EAD4byUufLgrvGNRjA7myDmlWNGAXe3
 jEVo+Hho0SaujJol1hTk8Q9OpkdF45RlWc+gPPL+OUacSSCnjjKwjeWg2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+i0Pwf2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/10/2023 0:28, Jacob Keller wrote:
> 
> 
> On 10/4/2023 10:44 PM, Vitaly Lifshits wrote:
>> On some Meteor Lake systems accessing the PHY via the MDIO interface may
>> result in an MDI error. This issue happens sporadically and in most cases
>> a second access to the PHY via the MDIO interface results in success.
>>
>> As a workaround, introduce a retry counter which is set to 3 on Meteor
>> Lake systems. The driver will only return an error if 3 consecutive PHY
>> access attempts fail. The retry mechanism is disabled in specific flows,
>> where MDI errors are expected.
>>
> 
> A bit ugly. I assume we don't have any idea of the root cause of MDI issues?

Agree.
We haven't a root cause yet. This problem is under debugging. We prefer 
to keep it in the net-queue for widespread testing meanwhile.

> 
> Especially having cases where we disable re-try which is a bit awkward.
> I don't have any alternative suggestion tho...
> 
> Thanks,
> Jake
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
