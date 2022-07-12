Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 115E7572966
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jul 2022 00:37:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B56360FAF;
	Tue, 12 Jul 2022 22:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B56360FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657665470;
	bh=2vQMRCIMdD8h2ZPSpGN/Cq5kwP7LNRy2a50uggGhxvg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bd5MdqgJixRBbHMYfJtEO20VX+CWfErgC+efyrwnbpxwJ/Q9a/8JEqRcfcbZTXzrb
	 6Cq6glpYGf7A1eenwSJUmRfamI9TRf58I392seNQRDoUpB71UNKMZQK8ImXkKS1giP
	 oVc55gVJBAj6hLcm0m9vuJIuxaCeqxZ++rLXknGAXkynHO3lvZCbHQRgc8Gqb7iIj0
	 /K+rYAcb0VpckexbAQUQcv1pb1VNAMJIVCvKPdmMDwH8g5uMd5J0NDmjN8ykqSAJAq
	 LLiRDlSc7t9s99TA4fZJrz9G+VHwB64HcEe8TueIqrxk3guFfy/6GZ6xt5b+aaX8wC
	 ip5Yg4RKQQpug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FIY4cpYc6WVX; Tue, 12 Jul 2022 22:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1967A60FFF;
	Tue, 12 Jul 2022 22:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1967A60FFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6147D1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35D5B83FC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35D5B83FC8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDRB2Z_PSLGA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 22:37:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EA6183FC7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5EA6183FC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:37:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="310685124"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="310685124"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 15:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="737649303"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2022 15:37:41 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 15:37:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 15:37:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 15:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLgWL5dBaLJy6RUHCGT/Gg9fp+Nr5iOiOksOhDw5pswAKuX0Jpn6doMGqoWr6CrAT1tZnwW6hu+h6bkZ8sT33DdS+eoN2cqK5e405ctu7meMomhcCb2TTS0d0TH1wLDdh264YAsVjzix8wIxOlTGsQe7udpvW84gUE8py5a56lQn2OM7sE38k6Ma4rTo10epzyrWvYGBmrKrwEmaaz3/ewInGepO/mlbGC+ZdL2UkKN0NsLSCijaVLqk+Fh5SByX626YMuqHi9RdPl4vwXj9tSL1tZh4ZHffbCJUjqOo88jQjQptHmKStnhh9ItUZsqEjQQj5XmO7frsd/kkLWCFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f6zXVWP+t2HfqeXRSokG9301r0JImUILS/1nbKBVtWo=;
 b=CHXYRoRRot6Pq5tuA318UUJXbIIODKh8VTkXTt8JeD/zor04/uJLqi5ohAhtizrkeZDfuygWq0LhpmKGwkxP6nCzt2Kvw7bvW9kg2vqh7pCQggmMWFg/bDWRmDWl9gXhgPpE7mUmQfwPBOkR4FOF8joNAKn3FXUueZL4rh6svpnAMDekVLvyjhHc/tppsbvvnARM7/4yhgEZvGGD7pIE97piSc0L3g23ww9SkSiKOwQnObok4FUSnlCrv3i4nwinJg37XKGbajt586kvW31lFmRgZn39OyjfQslucCL46W9ACzUdoatHnjjLZJg2nXCYO2pxy4EEV2s4YKbT25ACYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR1101MB2202.namprd11.prod.outlook.com (2603:10b6:4:50::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.24; Tue, 12 Jul
 2022 22:37:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 22:37:40 +0000
Message-ID: <841bf24b-51dc-2ef1-895b-14466a4724b2@intel.com>
Date: Tue, 12 Jul 2022 15:37:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220712141653.2590868-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220712141653.2590868-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BY5PR20CA0032.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::45) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c24a0be1-f6cb-4088-c69d-08da64572090
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2202:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0/4RwhtTjadpYxEf5tYXhKcaQiRS59fLbjbFYUG1OF9+kN1029XqKVeni+vm94Jxs121zjuWH+0f7N40vo/pzCaP+SvGpyzT8c2u29RVanlaCY3IyFVVOzdwEaP2o6/+wtkt8nLTn3s5zaAgkeos7zLDbyFrd4dkYhDk4ooTypndznOIWPiPey7cBEDKtdCLr4ChLVhn6w0oYxjaLHFUGJ2+pc/ZOsS5vp3vwDO+MVvc7ujh8xsvUZajsRxBXYgEvJHw9jOJM849gtoitiJ87zDWvhSLd3AVbEsrnsSjCxQIu1qejZY29r5iWvl1twdPYBRpTDcWqOmrb3ry+xyRR6dzpuTjKHncjEmkLBKWxsR4j+lDJ54CHPjP0WcqagT2RykI1YUoB9QSJR1pvsCl3Rl85BtYeYJqGR0yHzoOQPeugQ1hdjXhXjpACnW3QhAj3RWL5deNAOpKla2UTLeMCU+BtG1Gnpf5Od59MaIfjKcflXC1mr+LhssASu5XT+RpuZio6HjYAHxKEgNQ4EeCdKaTc8g5xbFS8AU7REd5vXeOwRPDRCwUuHaASADq6Z6mXzNFfLacznBQfPIbJGmAV8hqNuKUDwVBA1evSgRVqCHwEBdFCLCGxmUe7gvMdYlPff/ORHl8Su5CQhxnsVzjYoQRzlyqSrEb/blBkWURdG0ZBre0aE8Fkgy5S3APn0FVXFVA4SGHC6csEhXMdygEowNdI2bQkHSfC3lIakOfbkRpXbGyOVDJqUf5aW8+7Vey4MjaD9GaH6du7q4YyE9VuthY6JHBNhPYtzWdmdBIRjrRLiwSYqVuhGtAXtufze914Yu7eubUn7KiaVg6KFhA2Zc//wMhlBCmZ0OfnNK5hB4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(136003)(346002)(366004)(396003)(86362001)(478600001)(6512007)(26005)(6666004)(6486002)(6506007)(53546011)(2906002)(36756003)(41300700001)(8936002)(107886003)(31696002)(5660300002)(38100700002)(2616005)(186003)(31686004)(83380400001)(66946007)(316002)(4326008)(8676002)(66476007)(66556008)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmxBbnB1TElSQUdqdlM4Z3Z4ZzZhc1M0S29QeDloRzhkNlB5VUkwUDZJMnE5?=
 =?utf-8?B?YnY4QVdVdTZ0UW9oV1FBQVk4SnBrWWlsL0ZPb2cvUDcrWGRqMGF0d1ZlaXBK?=
 =?utf-8?B?RWN2UkJMNkF6bzhCcUE5bnJtanVpRU55ZEtpSWpUQms5ekNzUVZta0hvLzdj?=
 =?utf-8?B?dWxId0Z0ZjlsUFdqeEZFN0FaRHBnS3JHeTQwMnRacit6azZkSVdadzNja1B6?=
 =?utf-8?B?c0JPajlFYmRybzdLV0I1NDg5Z0ZBbEN3TnBJakVoYldRcnhQWGVOcEQ4OVBI?=
 =?utf-8?B?b0huK0JuQlJpWnF3RlExbzNWeFZtSU5JSDhzNHN4QjRTbmJ5ZENRT2NObStL?=
 =?utf-8?B?bnBQQS9FMWxFT05Oc2MvUEZPVnh2M2JoK1liRTNoNDZQOTJaWTNRREZlS3Bj?=
 =?utf-8?B?eldLQ1c2ZGt0eXhHdnFldVYvTnFFQjNmd0hYWmRxekdla0xkVWUxQjZEdUc2?=
 =?utf-8?B?ZExWakNkQkdwYzV6ejY2TnZOVDF2Vjg3aVU4UUJNVnZsNUhrV1VFRDlZU1l1?=
 =?utf-8?B?ZWtYQVdxOXRaMGJmZ2UvVWNiZmxiL2o0eEJLdXZVeFpoMVhUMjBKcTkyVWMr?=
 =?utf-8?B?eGhvSnl2Y2xZU2hkQVJrbm1HVjd2VzZkOGhWQ3o2bC9obzdtOWhLazFiL1Rw?=
 =?utf-8?B?TDBSNUNSU0hhaW1HcStUdHM3QlVCRWtpOTZocjFKWVlac2NYQWxKOFpTTU9F?=
 =?utf-8?B?eUhtNWxQWkxKenRCM1o2dVA1OHY1cHBsQ2QvdnR1Y1ZvcS94ZmhncnhoSTA0?=
 =?utf-8?B?SmI4V2FxVzdGNm45bFV3OW9ITmtxa3kzaVdpY1JEdVdBU004SjlmMEMrbzNj?=
 =?utf-8?B?UjFYZTNza3BMazRWaUQ2YmFsMEZObHNrM2lkM29zNEFNK25wNkxYM1YwSkxo?=
 =?utf-8?B?a0xidWJZWmtRazN6alRmQ1RsOE5rWTUzVS83NEd6ZTRaMDVZUnNxbS8zTHRO?=
 =?utf-8?B?c3ZPa0Z5Wi9vVnZMcUhGMVZHQmtmVFl1UmJQaXFnZlVVUldFd0YwbklOQlM1?=
 =?utf-8?B?SWRXd01ITFVRMGV3azk3L2FDM3pBZ1N0MWw4OElEd1ZoRStxdXhaTm42NTNm?=
 =?utf-8?B?TTNyOWwrTTVGQUg1dFc3K2lSMmp1TlRFSHI3SWRpZlpVZW9lbWcvTVhRbVZh?=
 =?utf-8?B?ajgxajFCVFN5cmNlWW1scXBSZ1ZDT1c0R2pEb1NTTmNsVmV0VXN2Q1prY1lU?=
 =?utf-8?B?YjF0T1liU0V2VVNjTlB6ZnF0QXpXWENWOTNCVDJMdUIxZG1kYThqaVI1am1r?=
 =?utf-8?B?c2VKMTJrbzBOQlNnSkNLWkRUS0trekxKTGxURTFhblB4Ym9aM2U3UzhTdlNW?=
 =?utf-8?B?L0FhalZ2dUJ6VzYzVTVLcnI4ZjVhYmMwY2NKcFg5OUhNVTlUeHEvVWlQdkt2?=
 =?utf-8?B?bTNtOHNDaDNFRVRYNlV5UWk2TlRhWEh2bXo5SFFxSG9wbVhHek51WVJudi8z?=
 =?utf-8?B?dGJFWlpDU25sUDZOM21HWFZDMnYyY3B4bnUzcVRwRzZ6dXZCSkxPdmdpOHA5?=
 =?utf-8?B?anE5SGNEWmJPUVU4SU5mdllyOUVrWTl2dFlKcURqbmhLKzVxNHZXdzA1NW5N?=
 =?utf-8?B?eUxYdWw2OUpxclQ0dkdkK0Q2bDFNU2VyS2tvMWxhK0JaUm1QWUtEV01PL2lX?=
 =?utf-8?B?YnF6TmhXaXZTSHAxSklzdE15UlFiVGZEc2liOEFsWUpReXNCSEpCYXBycjhC?=
 =?utf-8?B?U3VEZXRxcnNhMHNqYm1oK2UrZnFLU1BEYmM3YmN3WVYyd0E5VFhtZ1RJQTZn?=
 =?utf-8?B?Nmk0NXpSTXFXSlU3Z1RJL0hYM1UrMWRxbzBzUHNTTFM2ZzkvczQybXZOeXdp?=
 =?utf-8?B?L2NVYnpLUlNyU2d1ZmhkdXkyRlBsb3JiYmhSYzIrZmRIT3BLRm5FZXNTdCtZ?=
 =?utf-8?B?UTNZRjJSUlJFOTE3WmxLQlVlc1JoR3RaN2NFZ0hoSHBXdDd5NUp6MVpYNEpl?=
 =?utf-8?B?bHZzKy9QYTdwdVlOeVNMVFJYYkNlZFZrQ0xMbjFhRktkQVMxN1Bsc0t0SGhN?=
 =?utf-8?B?ZlkySXBaQ29LZGk1MlI3RTVJZ0FaVFR0Ti84dTdWNFdUM3JnM2RFd1RGMWZZ?=
 =?utf-8?B?a2pGQlNIbW9HMVJudVpVZFZ6LzgxbEJ3WmlsaGw1Vm9VUlBOeHE3N3Q4eEpX?=
 =?utf-8?B?MFlQeWk1aDFESHRBcmcwcldBQ0IzdGYvbldNdW5yVEhjUmRJdWZyQ3Nud0NF?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c24a0be1-f6cb-4088-c69d-08da64572090
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 22:37:39.9043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNUvQmTaNtjYvSJopKk80voZ1BgU5BBLsHZ1R3yhsPBDSWdcCdz3gp+AFq8orSmjnDpK38RTQhXF5RaVCKp4Yy4t+bZuWfz3eaCDkedH8II=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657665462; x=1689201462;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AVOvlZbSP+Iz8WLtheRARJydziUxHppOSOF3ImPEDTc=;
 b=S3ZtDZODgTfGYAgU4UTix+OPuxIcRxs56uVINl4nJAVx1XXAxqpF1XKd
 x32ZP+Pc5HYGMY0xiEGqWAo77Dg2Aa5rsKfg4E6/uEhL9pPuUd9oKekZB
 Bqy4540DKphP/uW95qcd9IKgoNqeY/6ATGXummEvFMiBYaPQB8ZF4vAkP
 3FAH/kLePnkSxvmsnxsfQknIJlhRl+Xiat9haxyMUleLFku2YtbQX8yKq
 BMfMhrlLGdMpOKCvg1yHfTpZgUR7QY8ZNsrPYlNMZZaGHUc61TSeBx8op
 l2tC1obGwAqDrv/epZSGpW09+6W2uNLpmBqXR01GfHNlUDjycYLL45sMa
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S3ZtDZOD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/2] i40e: Fix ethtool
 rx-flow-hash setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/12/2022 7:16 AM, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> When enabling flow type for RSS hash via ethtool:
> 
>    ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d
> 
> the driver would fail to setup this setting on X722
> device since it was using the mask on the register
> dedicated for X710 devices.
> 
> Implement a bitmap to collect the flow pc types that
> shall be applied on the inset and hena registers.
> Apply a different mask on the register when setting the
> RSS hash for the X722 device.

This should be split. Patch one should go to net and patch two to -next 
as one is a bug fix and one is a refactor.

Also, both patches have the same issues:

ERROR: Unrecognized email address: 'Slawomir Laba slawomirx.laba@intel.com'

Based on sign-off ordering, I would expect Slawomir to be the author, 
however, it's currently listed as Michal. Please either fix ordering to 
have Michal first if he is the author or change the author to be Slawomir.

> Michal Jaron (2):
>    i40e: Fix ethtool rx-flow-hash setting for X722
>    i40e: Refactor i40e_set_rss_hash_opt
> 
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    | 105 +++++++++++-------
>   drivers/net/ethernet/intel/i40e/i40e_type.h   |   4 +
>   2 files changed, 69 insertions(+), 40 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
