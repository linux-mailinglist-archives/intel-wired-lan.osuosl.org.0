Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A6F7FA212
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 15:13:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94D2240597;
	Mon, 27 Nov 2023 14:13:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94D2240597
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701094388;
	bh=GGxo8uprH9P/nB5JLyXjh8NZheiAUpK48HQixukI2II=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=amH+0cNGnv7Gk9WOiMearoKd1npqdPpU53X/pogeKGrLI5USvkZDUtqNfgGibLVYl
	 c3nPa9+KmU7U67jfrP8vwCh1oxKBpOawmuXuwWxyJCHXjZs/rzeaXzpLu89Ig7835i
	 vig5b3eOUgVwig8pJm3wvsLXcNVMnP0p/De0FmBtYT2/Kfk7YMV7SjNW/6o47VND7l
	 y+JEwDGFYqxSuf9CQkOL/Y8UQyPjgoUotqYjGtWiDqFa5Wp8LmDwVIbFXbHs/vT/fc
	 pYGlJruI6GkxP1UaMGZM0FummE7cjtrz2FrIOdqKVWe7tjWsF7p1mrjCQFRW4kWE/r
	 NX2XNSPetq1gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGqjsLI9bjc2; Mon, 27 Nov 2023 14:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05825405AF;
	Mon, 27 Nov 2023 14:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05825405AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D79A51BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFC18605BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFC18605BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cDnGozjOAQyk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 14:13:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 104D460592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 14:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 104D460592
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="391588565"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="391588565"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:13:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="859072290"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="859072290"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 06:12:59 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:12:58 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 06:12:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 06:12:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 06:12:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDIWcn4TUZ/mOrUwxeX5ZQgDMmzUZJM2a68hY42u7xaq/+AlLOXnOJkqW+NNh0CmiQ2iCdlJACVysON326Ol43K++ne9vm2CWslASjLov4DTx/Qa3sLj3l17QUFN9PPM/Pl5QU/Oe1fzJT6jZFp4iVzZ9kJEMA7sZQwraIJDGV8W0VvWD4tbHrtyJhpkL3SrqHFwyD3Oh8LrW5K0Xs9GmGpdp9VU3cnDkVIQopbLGu5m9DSyVhEpmH0/DCan0SmFJgjk/ofRnTDi1o+4NTG2C1pV6Nn2L94PvW7Uyr1RiaBBRK+IA9ZruJKXntM9g5/1tGvpXOasBv82NKoRfPGkYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I293wiYRpRZEUH0gbyQUACOJ/oKHkdsmPfl2jQPem7k=;
 b=AF6Q8eYCNOG6He/B5TJs2bEaqaomwVWJuMuHY2J7yIv+H9UmFvmJhuDraIVkcGqvQY914A0At6SlOvtsomNVBmOzCiRdcxmiWQlJCO+PAMCzILI5yo1dpbzeNDLmjfDt0uXKt+jmHIpqyqfcYW62jTzMvyBm+bQX7/V/bo8/QnDD1LdVO/c8aK4cuC+xEM8+PR8sC5lFuMuolyi3uG+bzIjTmUzkW/fbIxaOh+t+OlrJOtgCTMyAl3N3BolMYJRdjY+KOjLghsqP5I8NnvcC/+UNMaZ9RNGJo7bsdOfP4CUkeJgLN9BJKJyXnblk5gx/Yo2hVg8zeSCUXi4L/WTZGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 14:12:56 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 14:12:56 +0000
Message-ID: <b7e0e0f6-90e6-4fcf-9fe5-957d6a0864ca@intel.com>
Date: Mon, 27 Nov 2023 15:12:29 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-2-aleksander.lobakin@intel.com>
 <20231126145457.400726e4@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231126145457.400726e4@kernel.org>
X-ClientProxiedBy: FR3P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SA1PR11MB8543:EE_
X-MS-Office365-Filtering-Correlation-Id: ea3358fb-59cc-42d3-d8d3-08dbef52f3be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JtPs2l2hSQLECLIGY+FOgs1Ax5SbGssD1qJnDSbWKNrwaWrWiQ7EFYlxb/KxYSe266nMHnt3g9NIR5aNL1cO6PZ7yUaauCs6CQo5H4P7xG57TBtThQvMy96/zXAhwX0ZLG6sOHrBIVSK13fLqN2YCH3u2PgFmmfYo4P5dOfIvPeVHUk3qLIIhmX5VNIYEdo4hRnKbndEKSoUcfKFF4TYInaLkEVb4MORtD9GPCg8gd4iBimWJ+dqU6VH6Q5Rj8MsVkIfZp5Gu7rfjvKN6GbEGje9AUqikdY24YmU+3neZXXqWkKqBKbRWJocCYVLegLEYuadyKEeIBP8+NNI0F8XpT/WEWMnpvpKXTXhR3Luaa7WXW/TEe0Ncii9Ln+8OdGL1wgfYsbT0ap5j6aJwdxuafBs/xXd4HZHTvqJpyq4l7FsTnmwJSzhoT6edb/xRA19APEDsCvvQF8ifou+PeKU4//NUtC/GTFqtLEizndwnLQ9uUclps7js1cdjR3W7UiA1q8T/e1NuVC2OgJEzJSHGoGIKg1N62F4LdKPuix7n9/N73tfuTwvDYgqEkqMA93/qGViEyMyiXDXUiZZp3v3bkXkN6WUIvD0nvbs8ZjokOTzAOP4ftAE4NTO0a7HpPWtaHa4VS++h8Ap2zin4LZvRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(39860400002)(136003)(366004)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(6506007)(31696002)(6666004)(86362001)(31686004)(82960400001)(41300700001)(36756003)(4744005)(6486002)(478600001)(6512007)(2616005)(7416002)(26005)(5660300002)(54906003)(316002)(6916009)(66946007)(66556008)(66476007)(83380400001)(38100700002)(2906002)(4326008)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0pqbVJuNzRSQm5KdThaSDNzQ1p2akVUZzhQY00rQ2J4Q2NZcUVVRXJ5OGs3?=
 =?utf-8?B?MUtNKzVDZnNGQlMrVFFzd2Nndk93V3BpTTJGSTFtVHRiMUlsQ2x5SEZMamNv?=
 =?utf-8?B?bjhJNG8zY3pvYllqR011Mm9TRDBZU0N0QlJ1M2hoRUdLVlFiUXk0WVJDdGU0?=
 =?utf-8?B?RlY5MjdsTTFIYWRyRCtZeXVLS0VVU0NpdlY0RW5wYjdEVHBqYkpEYnFKTlpY?=
 =?utf-8?B?cTAweGkxbC9HTWVtbmVyWHRsRnBBN2R3RjE0MTQ5cURWNHRFK0VyRHVkSUtx?=
 =?utf-8?B?TjFuY3JaVXN5SncrUVZwNTVaYmhDT2xOQUZPYjdEWHNIV1RJaDZjUmdBN2w2?=
 =?utf-8?B?QXlqT0dmcTJkWFNXZ2MxZGIzQjhISldZTzBXVlRzWHNrY2dlalJCWUJWOGFo?=
 =?utf-8?B?eEVSODlpVXVvM3V6QjRQREw1eWJSSGdxWm15WW9EREJzVHF0V1l2V3Yzc0Z5?=
 =?utf-8?B?UUJsUURVYU1NeEtNSlljeUVYdjFpaGQvY1pHeVpqbnNVS0J2bFkrcmtXZ2hI?=
 =?utf-8?B?Rzk3SWhUWEUzYmhXcmQrRkJaL0RRL3JOQ00xVmNtYi9IbzIyUVd2RnJTd3Y0?=
 =?utf-8?B?ZlBoaWF1MmRQaXdpOXpWZlUvbG1wM2FyRUJWbkNFcHdRY3lOZzN4ZmJneHZq?=
 =?utf-8?B?R0JiQXo0NUJmeEJOcERTeTZuaTN2ZFR6Q2IyMGRTb3h4SHZDVkpRQmRVSllk?=
 =?utf-8?B?STBSTjZOaTZhdkN2SmtjcEVBamU4Rk9mWnFhRyt1Z0ZHNFpzU2duVlE3VWhY?=
 =?utf-8?B?Q01hS3pHNU9kdUxXNUM1akFkd0x5bWJtZHdCTXYyMXpORG52RG9nbk96SW1q?=
 =?utf-8?B?eEVCemFmSE9Jd3VCOEk5c2xnMlg5aTZ0L0Y1Vm50MGdld2tQcnJkdGE0c2hR?=
 =?utf-8?B?OUQ1VERtdXQxUkFBNVZmSDdDSUtDTkxXVWM2Zm5HMnBEbXJrdkZyK29PWjU4?=
 =?utf-8?B?YjhuS1p1MFdQQkp6UkJXdkJjUUhpcnIvNTU1T3R1cWdqUGE0UGp6UWh4N3k5?=
 =?utf-8?B?OVc3bDUxMEwzTWhIU0trQ2lreXNBNHRzYXpoM2I4ZEVmS1F1cFRPYWlISXA4?=
 =?utf-8?B?bXIyS2k0c25RbHFVNEcvYTlwTUZreWtEWUduNXBEbm1MMzA4T2ZQeXJKMmhm?=
 =?utf-8?B?b0s2cUdvMmxJeVJla0tic0t1K2lDVXNMbFJPK0N2ME5ZSDZYRTRDeFNlY3pV?=
 =?utf-8?B?WjVCQUlKQTgxeEtlTk5vSkhkMGtqelpuMFd3MklKcFZvbFAzVXNnVE53MFdT?=
 =?utf-8?B?SHk5TDFOYUtsNUJhZFZzWUU0bERNcmpaVGxwWDA5UzJYNnhkSjFzcHlOMURq?=
 =?utf-8?B?MkMwb0JaaDNMbjNoZEVtaG9oY3R4RlVoMUNnZlVlcm1MWC90cThXMDNoNFBT?=
 =?utf-8?B?UFMwNlpGdU5xQUhvcmFXQy9ZcUQ2bzhQbnVreWUzK0pySUZVekcrOGRMUWhX?=
 =?utf-8?B?NHcyb3VkdnVCUTdLRVBRNWJnaHd2UWs5RlVBNjhjazFqWEdJb2VlMThtZjhO?=
 =?utf-8?B?TUZSNi9uVGNyVEs2clFWODdvWlpnUGpOdkN6UmdxNDFnd1ZTK3FsUWNGa2Z5?=
 =?utf-8?B?Y2F5cmhVTVhiL28zMEtSeXN0V3pOSzk0QkRNQUxUM0dhSEJjcndmVmREZm13?=
 =?utf-8?B?UlBPMDM5TW1wWloyeHZJclFnNWlSVUN2V1BtTi94Z2s3Ym1heDBLcHZxcnI4?=
 =?utf-8?B?L3VNQWRsemxnMlNPclIxQ3hHdFpDRXBUbHAzVE1vZTNwTTZuYU9tb3pTSlJ4?=
 =?utf-8?B?bmlWdzBZdXY2YnZCL25Nc2Z5c3Eya0wwR1ZwVHZQN0xON0YzRmZkZTU0TWtZ?=
 =?utf-8?B?Y1ZTbW5YeEZFTklGZmdwQ2pZYnFqUkJ3ajZHMHJQNUp4WXdMSEdQdElHYjFO?=
 =?utf-8?B?NHEzTUhQeTJGMnBGdHJXNi8zUzdiNitQV0ZKVnlPTkhlTCsxU09EeC9aWnhs?=
 =?utf-8?B?ZzJveElJTGVrSlovdUFkSWY4TDJjeUJGS2Roelk1LzdDRXdzUkNXTi96ayt2?=
 =?utf-8?B?V3hzSFFhMnFLcTRLamZXMktIWlBSMTNJY2hVSzVoWEVwcDJvN2R3RmoxUkVJ?=
 =?utf-8?B?N3NNWUhFV2lkcXFleHZWeGdhL1dqZjBRSGo2Vm1Ub1BZeWVwVE52REt2eS9s?=
 =?utf-8?B?Qm42RUxEWG4xc1VZeE42SmhRQlJlbldGSXFMS2FJcHpYM0JzZ2NzY29SNTFR?=
 =?utf-8?B?R1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3358fb-59cc-42d3-d8d3-08dbef52f3be
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 14:12:56.1414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wzi6joK9sQqyQMvIAui1g6++kA+Dkyf3GZLdpIFV8Dev+X7RhbhABhTTgMuqmZuH0XhFyZukPnkZx+qNWPpU0pvbypcH3xWlui9cX7oKu74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701094381; x=1732630381;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ssukdTVHQh0JSOxhgVFwvvgv9YWnyjGd2/bUsbahrTI=;
 b=ARVwdikt7JXKF80Kf9o3P/f7ZpGZlr6HWALTND00F61nE40Dk8Acj3zq
 dFkal/Qmmp0cFyNkq04Tul6CiV4wH7Tg/mLupspI+hezlHY3mJUwOBWlI
 exc7Ip3DvVfK4i6nudkFIPTE7GSjTQbC8ycybPeZcdrU2eEr0B7xJAPBF
 DVUiCw7STvi0U/dbZd19HvD10K41rn8J2aI3ELAL5IQasnR6XsNVXbTj0
 cinvjgYQPCfexTuXpCOqvJC/izO7CMo0ngahJBMC/Vn46nqL7XLvu+a3o
 jEY7qLEvEvE0y1yEHxw6MZmvOOlOEkDLke9TSGcHO+JFnzmmiKxhZsJ67
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ARVwdikt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 01/14] page_pool: make
 sure frag API fields don't span between cachelines
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
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Sun, 26 Nov 2023 14:54:57 -0800

> On Fri, 24 Nov 2023 16:47:19 +0100 Alexander Lobakin wrote:
>> -	long frag_users;
>> +	long frag_users __aligned(4 * sizeof(long));
> 
> A comment for the somewhat unusual alignment size would be good.

Roger that. Will paste a couple words from the commit message.

FYI, I had an idea of doing something like

__aligned(roundup_pow_of_2(2 * sizeof(long) + 2 * sizeof(int)))

but that looks horrible, so I stopped on the current :D There are no
functional changes between them either way.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
