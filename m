Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DBD7CAD75
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 17:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B1F2417EA;
	Mon, 16 Oct 2023 15:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B1F2417EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697470047;
	bh=ijIm20MmBv5pYmnOpNrUabc8RnNXAdz0gLkx+f6wUBA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gTT8VeOZIUWN5fEgS4kqxfCTitbQhU+InCsiAWNS8njbw3LfgkFDnBCTl5ZV7Zy3M
	 0c3JLk1H2jsjkOiwJ2N4aG7jdr6uqKyQU13JP49MjsTXCdC2WsEhosCphca45HEHSg
	 tqTgez3lR5BKl6aLyvh1NGiqCQOWpdw5xRnx8s4zWwOCAdCcit3oUhOdpqAraMlVqf
	 e0XjHzLSL5oEy9Lk9ElV0GtgVnUmlyyv2PBG+7ApF4SxNgbfKtVSqmH//QMJKOgOOU
	 TUzBxTRBgkd3nXpwGtMxu0L7ccthBCiYZMsTWN2QjfZeBoOcnK8ZdN7LnSsxdbOQwV
	 31rdIWJwm7Lqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYZT3dqByCkq; Mon, 16 Oct 2023 15:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EECE1417B2;
	Mon, 16 Oct 2023 15:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EECE1417B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 760691BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CFB661161
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CFB661161
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRImd1rIZ4fo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 15:27:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D435610D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D435610D3
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="471779307"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="471779307"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:27:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; 
   d="scan'208";a="3567800"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 08:26:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 08:27:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 08:27:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 08:27:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 08:27:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vl+1rTu0dS31yaWw7f0iDBKqdeHvDijMY0BKXFDSHkoOG37WnAvASwgwKQejX49nNIGPCsvOSrKazusm4W7f8gswmAbUK3kjyqTZKXS5T89ATQqsfsCFbwd9kAvzASGIc2iIOZNS3stTTWEdseC36JQFYAlneI/aMEizlSQFgrQ7l010/V7lqKurAXgWjQnddkZN/bbkfaNDnoUTmVJA6uufzhqy0MHEybyZ2CoxchZ/AkPYI4a36Oc+xovdhH520iZkQBW8zfyyP382iUC9pTQvKPu+CdPB9YD9EdQX8z5+O4Acrd3na6ahWk0QqaACAoJ5wpB0iJqfOm6pi7AO8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTHxhiGonipPlYDPSoHJ9zdJJ3om1+0H+SP/7OdpmmU=;
 b=YSmgfgPb8/wKQyL7Yc8PJPmtWjJ2EBpDJPaTje+4dZ4bxXQa+EE0Z1Zp7wJLGOKQqRUoIhPBgh8l6L8HqylPr4i1kODC1892ncvH2qI5j9tP+UkXSMMBRI+fa40405NdIX+LzBeg/dzwxCDDSHYWmvhWHWRVMLHdvGtNNBQNamkW8oU+M2nN/d7nB2YqbHLa8ZftumnpKjGQbwgivhj6IcrC6nFcq84lr+OdGNioxRfprEMUmduvf0RVL3b+M4EgDoYmi8i67sg7nAABDMAh/kZLK/1Ly/ZsK+omP0RN9F0I8SeB7+7R1vnHFP+ubMuSLpVFbc3md3Q1O6zKicXMug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA3PR11MB7612.namprd11.prod.outlook.com (2603:10b6:806:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.47; Mon, 16 Oct
 2023 15:27:14 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::2329:7c5f:350:9f8%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 15:27:14 +0000
Message-ID: <bd582b91-141e-48ba-9fa9-01186c02b075@intel.com>
Date: Mon, 16 Oct 2023 09:27:07 -0600
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
 <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
 <CAF=yD-J=6atRuyhx+a9dvYkr3_Ydzqwwp0Pd1HkFsgNzzk01DQ@mail.gmail.com>
 <cf6c824a-be09-4b6c-b2a2-fb870e9f0c37@intel.com>
 <20231016080202.0d755ef3@kernel.org>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20231016080202.0d755ef3@kernel.org>
X-ClientProxiedBy: DUZPR01CA0210.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::24) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA3PR11MB7612:EE_
X-MS-Office365-Filtering-Correlation-Id: 370249bb-4930-4efe-a6d2-08dbce5c6004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qsn0HTMDxWjt1ww9cJQy5kTskxGVvQACQagSBBAoE+9o0auA+XvhWyoql+7wTt5w1fFvSYgBPCkN5gne7vUQbJq2uLkP5uJkAEJMI+RXMrYMQ0j8MgRI+LGXlUDdpfQoc6HnOnd3lp2ix0LlVjQQt19A5EKk/bbzaKuz0O5bH1Ru+0b1YDuYm6vY0pYFKybKi8XVFYG67JvEAWBcknlcXMx4Hwjs/yfx0oeC8ithr2lRnv3khysjqN6cXkygQM5auezOlEh0cCk3t67noUGkS7NRFCFdCf8kkoXSnvBWOBdm70FARI9fotmpDrWFIdMs20K4tPxCfNWDdSaQM8gS83km027NDBq0CHnIHs7jVJpZzm9IbKskvFkA1uzPuJM1y/CRi7oIbiAH8Pr/nVPeEWC6Lv2ZTDFbrzlefLVrO2kfnQIZ7SVB2I8mcq7Sf5hR8V5S6fbotRxobFYjSWwrBjhZw96vhfaOL1MaEgvXZYAGwtAg7VAkH9IKBGADRA+P18WheHmeLdAzTFbY+DpBl5NLSaVeN0rf233OnMumC7zj91MuHazR9UekPuPiZyJqOMPiTu0bK8nmPbIb4AVa1dPjs5yCUmCn2d1a37a5td3EVHUGyXEMCHk3mQi3nQiNfyQQBCKC7u/7/0HHGfqmjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(376002)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6486002)(66946007)(66556008)(478600001)(6666004)(6916009)(66476007)(26005)(53546011)(316002)(2616005)(6512007)(6506007)(5660300002)(2906002)(4326008)(8936002)(36756003)(8676002)(44832011)(41300700001)(4001150100001)(4744005)(38100700002)(7416002)(86362001)(82960400001)(54906003)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFByNi8zVTd4WFRKVlpYZ09jZ2hJM0dDdlhGRHNIUXcrYU9ibDNNMzF4eHR6?=
 =?utf-8?B?V2QvMGtiQlpvc3FJVWpHSXd2d2VTd1E0Z1owUWJpQ1RIeWVCOEo5cGtxNWFM?=
 =?utf-8?B?Q2gxQmEwS3VNenJrVVNRbDNpdS9ZeU92Vnp5K3lYU1N3SVNFZ3ljVDFSVkxD?=
 =?utf-8?B?UmdRaUtoamdIektDMjFXcThEa2FUM0s2WkY0ODE2MGpJTDZsaGV5VVMvNUhD?=
 =?utf-8?B?K3NLdTQzalE0VlhYem5FLzFKMnlWdkx4VGR3SnR5Vmc4TXJPa3k5d2lOSEVl?=
 =?utf-8?B?RlUxUko5dU9aajNsL3RPa002YjFtSER1akxESmkvZnpEYXl1TFN6Y2xMek9D?=
 =?utf-8?B?QlN3c3hNcnpxaEdQbjlDNUNSNTc4RVcyY1MxYkNNUTFnR0w5SWZ2UXJrUGtQ?=
 =?utf-8?B?dHRSSlNRKzdsaXd3Y3NTbWZCbkpvQWQxV2NqdzgySmJ6aWUwWCtBSjh4OGpF?=
 =?utf-8?B?Y1ltZEF6Rkl5VFV0OW5Db2tGYlNiUjk3akZiSndKdFRoZWJGbVY2MnEzOEFV?=
 =?utf-8?B?cGpIUGd4L3Ryc1FnR2JMeCtxdEVrSldzSnhsQmhJSlUvUDRielFGS0VyTHVZ?=
 =?utf-8?B?UXlpTVFxcWppSXZtZXVrV0VNOUZJeUtWWjRXYjBmWWNXYXZJSzM3TWx2blMz?=
 =?utf-8?B?cDVJNVlaN3VJbXVUeE9LUDlGQkRMUk4yK3hmKzdleFZZUDFkdEQ5RVNLV29R?=
 =?utf-8?B?SE1MU2tBUGJ5M2JxTUtxYnB0MW9RM1RUazBVQVhjSmpTZVd4LzN3R0NQR2Nv?=
 =?utf-8?B?WjhBK2FOenozdkUwbjJmUHRzZnd6RTV3MFdkWnArekh4b1lMTlJPREE0M2lC?=
 =?utf-8?B?aEYrZysxeFRjZ09uczRnZGIyRHJ0R1hwcXRKblNlaFh5NllzZEFrVWVhcnFN?=
 =?utf-8?B?ZXZrU2JvK0RGdzBtSVlTdnNBTC9IWWpTbElCYUkxVUY2cGhDbzR5ZFVXVHQy?=
 =?utf-8?B?cWthcVROSVJTQTdCajdHT1NMZmVMb1pjMk5vbXBiSTBManJIQVhwNTFZa01y?=
 =?utf-8?B?NmxBQmFRbzBQOUx5aDV3L0JIZml3TlB4d1ZUeVlYR2NuUDR6RGdXb1dpdVc2?=
 =?utf-8?B?a0VLcU83RE5zc09PbnRnZnJtRlEyd1hrMExRMTBCaFFRUUNJWi9hS2NQbWk5?=
 =?utf-8?B?OW1keEx3cXppRmt6Rm5hTDZraE4xWk1YOFNsemJXSW96Z010cWdHcllBQVVx?=
 =?utf-8?B?blBDS25Dd0ExdlRGRDM5ZjNTYmNEM2hzS0JvSWxVaHdFS0FSMU0vSVlCZS80?=
 =?utf-8?B?N0pZRkFjTW40R3hpZ0tqNVA5N1BtOHdlYm5BdndUc0J5cWthditTRk9BdjFk?=
 =?utf-8?B?Mlk5cGZiZk81YUlJQ3duNEc2VFJyZDBLTEZhMXI0VHZrSzFwdTRJckJaUUtv?=
 =?utf-8?B?YkttcHpkU3ZoRzdDQ1J4QzlYeHQ5YjE1K2ZSendxQW1WeEdJTkNqTTYvczNo?=
 =?utf-8?B?MWZQbzQ5aVVqemwwYUYzTUZSYVVzODB4QnZ1NldsamNJclA2SDFHcEU4RDJH?=
 =?utf-8?B?enJZbDJDR25TdVhLY3Q4VzRoVHdnaXNBVVp0czRqVHdqaDRPOXNUeUg2c0Jq?=
 =?utf-8?B?ZlZFYzRvOGluZzlwbng1S0dQZ1RhWDR5d29FUS9HVWxFOWpUbnhHdGZlbWxZ?=
 =?utf-8?B?T1VmMTBCQ3R4aS94WkFkdmtKTEZ1UjJSS0Q0NnhaczZCNHBVdS94LzJoVEV1?=
 =?utf-8?B?anduMjZ1b2RwNk9rVDR0MG5SSWQ0aWlmb0diMTlEWGdzZ3RzUGFlZ0xucENU?=
 =?utf-8?B?UzBoeUIySTkzQnpLdi9aa0hJMXhJMTFHdzdQck5vemNMWEx2ZzY2NjFSSXow?=
 =?utf-8?B?eXVSMWNpQm00Q1BWMUc4by95NTRvc1hzRjdOQndMUEZYZ3FzenFtNTFBcEll?=
 =?utf-8?B?Qi9kTGZJTDdGTnFqUytKdi9xeXZINEhXcVhtZTIxcU5IRjYzci8xQjdYUzRE?=
 =?utf-8?B?S1ptNTRsWE5WOU5JVzF0NW44NFoxQVpUblppNW82VVFQUzdYMGppUGRuWDN0?=
 =?utf-8?B?ZDhhVW5ESE1vUW85K01zc3pWMXoraFBjTms2NVA5Qktja1BHN2s1MEVid2Y0?=
 =?utf-8?B?SEo5aG9kYVRLZm5YZkJwbzI0THVzZHJjalBySko2dWVHeDRuRnROeEhpcDBq?=
 =?utf-8?Q?B8jKkbMPFf6iROI4yUrDoTNC6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 370249bb-4930-4efe-a6d2-08dbce5c6004
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 15:27:14.8419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ENKl2K89aS87iRBHgVQkZqsxF844zU+toRyRMPrY1eE9hn/uzM0pA2C/j2U/8De3+TYehxWZSptr2wnKVQYSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697470040; x=1729006040;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gi+E6KoK/WtzA4fdWUVVUUFFu4tP8TTcKBzxffK0Gdc=;
 b=COq6nx1tQsRtO95oCFakX/PBpcGJ525c0RUwnyvN7AFLXarKrFksNFg3
 TL3sT54LRd9yIqNNAeZek5VLTMSgG3+9GmvaUSBiuOjMut7yNbiqW3Tde
 0mv/Yy5m+FtTr3xN0abfDyFcJxlq8+FX2tWV2XCpIjy8YtK5R8s/x9qbA
 KZiheaAvwqNyTGmFpW339QyFVYeDR9H4WP46oogZhCT28uIX6m878hCx3
 ff4iVl4xXZUkY3ZYP6DvDnPirClkQMPW69Pgh4UeNc6OtlQVYJEcHI9H3
 38zDbbPakl7zfKrBrjfesLLVIPmH/BvYnOzm07wl7wti7Tq4key23MxIN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=COq6nx1t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023-10-16 09:02, Jakub Kicinski wrote:
> On Sat, 14 Oct 2023 06:19:54 -0600 Ahmed Zaki wrote:
>>>> +#define        RXH_SYMMETRIC_XOR       (1 << 30)
>>>> +#define        RXH_DISCARD             (1 << 31)
>>>>
>>>> Are these indentation changes intentional?
>>>>
>>>>
>>>> Yes, for alignment ("RXH_SYMMETRIC_XOR" is too long).
>>>
>>> I think it's preferable to not touch other lines. Among others, that
>>> messes up git blame. But it's subjective. Follow your preference if no
>>> one else chimes in.
>>
>> Jakub,
>>
>> Sorry for late reply, I was off for few days.
>>
>> I'd like to keep this version, I don't see any other comments that needs
>> to be addressed. Can you accept this or need a v4/rebase ?
> 
> I think you should add a comment above the define explaining what
> "symmetric-xor" is. Is this correct?
> 
> /* XOR corresponding source and destination fields, both copies
>   * of the XOR'ed fields are fed into the RSS and RXHASH calculation.
>   */

Sounds good. I will send a new version shortly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
