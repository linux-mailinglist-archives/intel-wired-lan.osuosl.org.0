Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B0D575696
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 22:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8191160B8D;
	Thu, 14 Jul 2022 20:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8191160B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657831814;
	bh=d/N3AAq1DvQDxOGF9D0zUPUUuJLWn+RwfgikZmq7AYs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vsYprjVbkTjE9AOxzKCvzGfjBd7WL2VmkW6hTI2LJE86S6r6DjbOUm3K+/T7PRlf+
	 2yXCJiINKKNvbUIEEAlaF61+FuTl/gWCiXMlYRt5sQucJUuFZ00PmUndRW8hvyVso+
	 Huz1f4JQNLUyWOSzPbRcL2xSY5rgKFB0J64cg8lPCMBuTApudTgPjEGH9B+4hKvL70
	 kf70TcUBaLyKzXUOiTBna1bWudvAUFeY//ld03b1Mk8vTM9MruxWHtVM4rA9A1p9e1
	 Y31+O3tiezKEEmzUeQIHyWR8ulsmKwCBEDYLcmXnxadUdswUarSFGyxs/MHEyV6Mj7
	 TcZsPaUrMYe2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GxMrcL-udhP4; Thu, 14 Jul 2022 20:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67E6760B4C;
	Thu, 14 Jul 2022 20:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67E6760B4C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2A091BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9901C60B4C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9901C60B4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e_zMeuyNJZXc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 20:50:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C91B60B49
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C91B60B49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:50:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="347304485"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="347304485"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 13:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="842279957"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jul 2022 13:50:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 13:50:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 13:50:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 13:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJ4dA4IxTOZqjmyP3U11vZ4vT+HNtkxF7RHnamE9MWy56ZNRbxhhx+HeSuLdaZV/GkrYfdu/MUXuAVJSSVYfLYmJFo8t/UNMHW/Luz2P3Ef9bE0FLT+l04BZF9p59Y9hy1Bga7fo1iHsxZvGc9szPbfpIlEm9OH5Vk9BTEsm8qaEqUpTeiyOGrDXNs2SxxXWvkwmitIcqm6z6qM33V5YUO9ZoT2E1SiJnO/9CMO8ZQ1V4Ml5ZpU63uyuj3psOuSDi2Z+bud3BScRryuuo44YOUivlv1apBBfJ0wRDEM9stv8nvMBVywm5HMNGgJbNNt2Z1imFgU9dToRosBvciCHQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgXWJNoW5viOThZVBskm1vUDWU4j5adusa2CRueN6GY=;
 b=nbJNSBtifqbytzhAtssqJ9tnKQCMvwif1rtNOoQqAA5r2nubnrV8TOBeOrgUdU7Upxblu8Y9Fxa68AlYR8PECWrud3LzGzCyrHJvO8V8AjXGBVh11WkzsH01aIeFhr5XuE3LkXOrCkM0FBiL31gwGay1OZAoy1AyLqTuSwBJwq9rmp2OuMIj6ngBdFdxEz551mtJ37nXl/z5LsjUlz5t/nvTPkQxfT3N+ppTJLnssRav9gqMpEN5wnhqPY2kcRhx0jHvepgmjS9loZh/vKej0lzSvnoWRjqVCc/m1qYuqpHX1bn/h+ZJgOY1joNuNchVUhICi2C/nyjgMhCPKUPCXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4492.namprd11.prod.outlook.com (2603:10b6:5:201::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Thu, 14 Jul
 2022 20:50:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 20:50:04 +0000
Message-ID: <da53acfb-b259-757f-4e4f-ff0744bfc2fc@intel.com>
Date: Thu, 14 Jul 2022 13:50:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220712151422.50489-1-benjamin.mikailenko@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220712151422.50489-1-benjamin.mikailenko@intel.com>
X-ClientProxiedBy: BY5PR17CA0071.namprd17.prod.outlook.com
 (2603:10b6:a03:167::48) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad093b0b-5f5c-4bd2-42b1-08da65da6d58
X-MS-TrafficTypeDiagnostic: DM6PR11MB4492:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 78NS5HC+Xyu+ZlQRrRErbWRM8yAdXKKLAHAnvoPsRK2Cd9bS4T4x06+cSceWfToXtaUvm2cbwZ5dPWGfBLgcNC4xKy+T0U+AHU3mdOIhItNMaAAbbUqOovlNvtQhK2BnH6BMguTGzfFETKMz5NOpMFkIJO8DlzEKQ+JkVXMBijui2LnJE63Zr5+7fg29q+1E5q77AXsq2VCQgHGbCscFIpryYc5c6yiaWlME+jo3DpFVlMZBUq1NihMEYzQBeZIEOtrtMfk7wM/CAIoAVyCekH0WbBPwtmHerJw3xJ0Cry25I6QiX2P7IUWQmMkvdeYl8qVQmPjnLPMxie676dU5LB4sHLYDnG5VVZeMSmi4v1YQbmk6Z69RGkXNk6HG6aPKBqP4uWDVoGtAyXO6fogDfOOhCzUwJDb7cGss4qwckUZ92BIMLBK0CEJk8I/lAZY2JoNHbUFyMEx9kdqayZ6zk6a527FZr2ALTFQa3NznYVJaokZBzrMp4e+bR0QiV5MxyePYoOCbkBAYqQslhrEH/kcc7fNR46GTWYVx6jUdhABcWsTHiJHth45Nt3ce4Grw1WB01l8nTZ0kfVCyU1x/sXbCABELgngVzj54+dECDNtVatCN+HkmBjcuhy+uMZiOx1G3+uA1vzJOwPeweZu6J0/CTX1zAbnwLkaIUfDB0nmFdgMXv0fi0P0EkZ84GdlmMTTomUri7LVgTWpRxAdkK1z/kmtrOZvbNLWGIVjAxDOGosp+HwVqO+VH2YTZ9qdUQeDtDAD28ce+dreNjZ0nyG5jZTHBUe9fny0cwj0PEhAgXB8daKcQcY/aDtpDh9Gb2+SV65tH8FYJRvRj9A8ZJM+yKYGYgWk1YrBig07njsQbXQvoPQxFT7vbEgzwsx8o
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(346002)(396003)(136003)(366004)(186003)(66946007)(66476007)(316002)(26005)(2906002)(66556008)(8676002)(82960400001)(31696002)(2616005)(86362001)(478600001)(5660300002)(53546011)(6512007)(6506007)(6486002)(36756003)(31686004)(4744005)(8936002)(966005)(41300700001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzloMW9TL0hRVkg4ZXhSUHdnUTRId3JmT3owTERpb1k0ZHgzNE43RzB5YXlv?=
 =?utf-8?B?UjRtT1RvcWhUckRzVEJNdnNDZERSUlVyWkRNN3dMMHd1MkxYa0dnQkxLaHdw?=
 =?utf-8?B?d2pwVXNpVmlaMlI4bEVGV011UEdSNTNLNTQ4d1I0aVg4R2tIM3oyM05VUGlN?=
 =?utf-8?B?T2lxdFZkeFFLL3kxUzJOS1g3SjRVak50cVZFNks2VStkS1BrY3lxeWdyQnZN?=
 =?utf-8?B?L1FWVDhwOThDR0tCU2VWRGp3OGVPelhLckp2NGFuWnJTTlFnQzRkMFk4bG5J?=
 =?utf-8?B?NVh3MVQvb2JCbFhGZTJMd2toVVhXUThNSHVWS29tWG5hVisxeHByTUtHdHQx?=
 =?utf-8?B?a0t1QlB0SDk1VFNXdTZlQ0ZlUCtmTllOSUN0N2JyVFl6dHNkVnRycjlNdERV?=
 =?utf-8?B?cnowTWRqekFCeTg0ZzRVMUs5Sy9sY1B1Z0FzdHNyaUVIQTdOY0xDNFRTZlU3?=
 =?utf-8?B?Z1ExZ2U1RnFxNXhJVGpHaVJhN1RTSVFFZnNEdDdpcVcxVEFFQmc0cDUyVGEy?=
 =?utf-8?B?bTNuUjVvenJwWDM3clRkQkdYQWg1dUxUc1VGQWhhTGpsZWxROCs1U0VIVWhX?=
 =?utf-8?B?ZTA4ZXFndmR4czBua2l6R2JwbmF3V2laTFRlOHBWN24zemttWHdoNEZoNWF5?=
 =?utf-8?B?a3E4bmdYSDk1aE1aN1NzRWcySU9Ucml2aWhBK0tiVzl6WnVMcm42ckRmbkk4?=
 =?utf-8?B?Z2ZZcWxTVGJhUUwxZ09JL1pZaUlESkZheW03TGFhNXYxM1N3MVo2T2xtcStN?=
 =?utf-8?B?dGpSRHhHclpxV2gvSUtTWXVqcUdlZnhieUJ2MHpvbVVYWnZaakN6WFF6QnJ5?=
 =?utf-8?B?ZlZrcHQvQ2o3MUFVaHNYREFoOUxxcUtZamFZNnp0YzhjMkVaTFl3MVVaN2Fi?=
 =?utf-8?B?Z2tudnZsREVGSlpERytTSm5JMnQ4d1l0MHRKTnZ1MFBtclBYVU8vSThSSXE2?=
 =?utf-8?B?MmdmMW5yVG5lUmNyeE9ZaWYvTWpDZFpIeExIRFEwdC9hRWZhcWZkbjluaVJB?=
 =?utf-8?B?MEZYM1k3UkFVaFNYSkRJV3VBV0tMWGZCWFNRUlUxRDd2N0NnN0hVZ25nMmVY?=
 =?utf-8?B?NGJ3KzVNdkN2Rld4cmVpblkvc2I4ZENBNDBqOHB5cWl5OU5NL2p3MGNDWHBJ?=
 =?utf-8?B?QUtzVzhGQUtJWTg0WUNtYUYxd3NjMXJsRWdpRTFkNWdiOHVUWm5QTnRkZUZQ?=
 =?utf-8?B?ZVdXZ1htS0NqWWJpVlJpZTEwZUhIN3BpWG9iQVFTdHZ2RW40VkFuaVZCZW50?=
 =?utf-8?B?THlSMVJuZGRMV0NFdEZ1ZHdCQStXaGtBZlI4TTVsN1BnTnk3bW1rK0tDYjQv?=
 =?utf-8?B?NE9UK3U0S3lQdXplUWs5T3hSUWVKQWxwZ1o4WDZoQVNmTnp1ZVo4UDR1MFhy?=
 =?utf-8?B?WUJqaklPd0RwUE9BcWhWbC9ZQW1kRHBxMnhzeldhd21CbGE2R1BPdk5jVnpl?=
 =?utf-8?B?YTBZQVdTYTE2YTRrLzdscjlGeEw0Q1h2SjZoa01jNWtyZTNlY05JSVliR2tF?=
 =?utf-8?B?UVdVck45bndZOTh0TVZuaWhFZzZva2NOWDdkMHVPR1pXNXJTeUlkbXdDYUl4?=
 =?utf-8?B?SmhLUGFqRFdFNEl4WFV3c25qSTlDZk9aQjR2NGdxN2pmT29mRjlVaFQ1d05k?=
 =?utf-8?B?MVhCTTBGNVBiYlRIZUhKenBiWFJ3dGJrU3lWYkFnaW5kU2s5Q0ZaWi9NVFpQ?=
 =?utf-8?B?bEQyRDV2WWhtMitUUENrcWNJOVJNby9HVmNsOHdiL1hOUWdmU2dDOEU3R1Nj?=
 =?utf-8?B?Y3JZa3JKRlRaVWlvOC96bFU0Uy82R0JDS21HU09lT3NJZVBVck5GUGxsdkhu?=
 =?utf-8?B?SjJnK29pZU90anpPQ01xRytqRXgvRmdHR1NYSDlyM3ZMbU03YUtVU3lGcG1O?=
 =?utf-8?B?bGQyalRDdzVVYTdWN1VFWW5BZE9wRTJaOWJRZHRZc2VoeUhSY1l1Vm1sY2xI?=
 =?utf-8?B?WU9wL2tDQ3hnVmQ1Y3ZEcEM3WnVRVndqVm14WDNYakpNZkNkOWxZbzFIQ3ZM?=
 =?utf-8?B?T1BseS91RnlsdHNYVUhZU25ZS2VoWGZ6d1I1dkMxbGlSV3JOZFRQU2NhRWdj?=
 =?utf-8?B?SUxOTkFqQ2pxclh0WG82QmNvYllHT280cUdzcFhNNFZ1VjAyeGhGZmkrZzVj?=
 =?utf-8?B?S0MySTE3N3Btck0wQ21kdXJEK1VEenE4YlFDT2xCNGdkUUdCWVlHdWcvSTdr?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad093b0b-5f5c-4bd2-42b1-08da65da6d58
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 20:50:04.2966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FlUxkabo3GhPGeo0Wgg1DB+Xf3aqGwrpz516EAeTj0FIYJHXjFBUQLN0Y8joT7XGth+dzLWJpdEnMjus1P82mwCUDQfBdueDzWT7V5lMPvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657831807; x=1689367807;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vI8jad20Of4xtqGn3Ta1BbkbqD3gk7R/nLKv/dPSJwI=;
 b=GOLnIwE6d7ZyHNTpb2FQS9J8gH0y9yp12/dOsAuT4RA3Yvk96pvyE7H3
 2fWejXksP9f0kZSpRMKqtwZsau8YSoSbTUbo2Fg+semfd2KySD+pbsXB7
 If8J5wUDBPpkYUcEo6jvUXx5+lFITqNkpkLLelsf3+ZqouVrA2xwq2pab
 UDeoAMZo0uA1p3PesvKa8+6yMcP8r63XHyTNZQaJs2LlKtCeA9yKLifcp
 xSXBZ2jMyV+iVegnX4NIitH//uCSJxQPXSsqqYd4egn1+dtfkRQO5Xxyr
 Pajhz0GehFOlJwe5iS5vYwqOR2FiEKiTdYy7tXI8K98+2X5FhPKANz2oH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GOLnIwE6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Fix VSI configuration for
 non-PF network devices
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/12/2022 8:14 AM, Benjamin Mikailenko wrote:
> This fixes an issue for a failing loopback test
> "ethtool -t offline ethx". Do not set Rx mode
> and VSI VLAN for non-PF network devices.

This sounds very much like this patch/issue [1]. Can you test that and 
see if it fixes this issue.

> Fixes: c7f2c42b80ed ("ice: Fix a few null pointer dereference issues")
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>

[1] 
https://lore.kernel.org/intel-wired-lan/20220707102044.48775-3-maciej.fijalkowski@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
