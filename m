Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F19377C35D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 00:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9726B40A41;
	Mon, 14 Aug 2023 22:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9726B40A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692051691;
	bh=LyNcPRPc7ZDH1fXrvbkKyH8l0mh47m79MVc0Kug6SOk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YPkB30BeB98rCeAhFjK5nkcUfotfPXeDCtSZcnoYMR6lnl+YP3yKpv4SDGFZFdspB
	 TMNqTGXL7zTTYMznDdPvc7OZ/xMW+646ZTK8IdgC3D197DF0J2sMOEk1uwn5RSczr4
	 GZumhUDwc7KbniQ5OWQ7Y78dQEwlf5VFyrIhtlg6T7T0Wk1vkvFJeQ1AB5LEbjjAB4
	 VkhGyhujV43rV3K9SKciwNd+HDLnmXguFgKfI+qut5zy4VUeHHhJKxHdckllxILlN+
	 00N028S3/rXkjQnInCKUctalLma5lE3AO+q16SoJSdXasjRz2PZJAuEl/ik/MJYFRL
	 b5YK+59ZUkAhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4ocXgqeaFc3; Mon, 14 Aug 2023 22:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 469D8405CF;
	Mon, 14 Aug 2023 22:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 469D8405CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 689351BF36C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D9154093C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D9154093C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSn2_uhPnRZy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 22:21:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F37BA40905
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F37BA40905
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="352477390"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="352477390"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 15:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="803601586"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="803601586"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Aug 2023 15:21:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 15:21:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 15:21:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 15:21:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+VApePJvk0yyP6x4JgsRhLbn9HcoxH3Zgf/zNZOaTfnLrc1G1yFFOWaD1b2MS4deW13pFbnFlMFSK7h++bhFK/1w8d+81tpu6kTummD7jFrFzHwOFMPEZ/GpAWN0VIPD4Q5IBInsKJypcPkKGJUz6KLCTPKe7OKEUjVA2jaFKftFpto2kpCmxRk18jax7u1bJZWM2nGqYTSzZchq1fTCL59OtdVfL+Xl/F6l7m7pBJ4N1byuCDCBsjdwGcfIno3jKXXr/4iGo8ja9siT56yxzECZqbCmxoaPrsLI1mroEKtQiwiOJuNY8fh00SOAn3JEgoImpy/SD3OayF64YvpLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cPTI8WOrIO4hoUraL27T2UU0ivvwuTXUosvDqYByjM=;
 b=k2Y7Nv4W73erWhydiHi3VNx+iD5owaTzJxbAxin2D3RQ4AUsjy7ctW7vFfyqn/DEMRG16/Sfbff6CtsMXVvOZ26n8q3ISfYccgLtBrofqh6NljzOn6HQSGZJQlSuRFD8tBfMUhTwbcJC+Uum7JK71zyCbWI3Xzroa3l0jQ/bZQomIIiYbvaLgHapxhLll144LnRn1GMeAnBIImC8zJcfkZPuxWjsQ6e9tA9S37L8VvWReS1VIJD9krUDblxLchpq3pHz2iMievBA4JnaBZDALGqX4bDbuiMB3PhmbxY9bLx8C4x2AjbkAHIe9lx4EaDIWlch/79xWMBn7ZO+uyIKLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB6688.namprd11.prod.outlook.com (2603:10b6:806:25b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 22:21:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 22:21:14 +0000
Message-ID: <5aac1c23-06bf-9b46-6202-594eeeeb5829@intel.com>
Date: Mon, 14 Aug 2023 15:21:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230811100712.1777167-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230811100712.1777167-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4PR03CA0109.namprd03.prod.outlook.com
 (2603:10b6:303:b7::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB6688:EE_
X-MS-Office365-Filtering-Correlation-Id: e66a58ab-8e05-4ce7-a93a-08db9d14c5c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e5YUjWK8iJnXc9lmfnxgdXuRVz3cdNSoxhSNkWLVImClIJPFfyjL19qSmhAiq2BWaz1vKnJdTUuzhsyl4rQIxvizLrmeH3KN+8K1gYQnP5Xy84NO/rZhduy6vkUBq1BUct910XqFrMzkhJRP0ZURNOuKC53vKu1TLpEGzwykn+eu6zCA6yubD8GaUlV16oZAq8MVPay27rzd88GVxqkXpQ4HwNW5v+5n86hxvH0RnBdVxJRF4rtPtDPe7vUVoiJASDlFAOQXH9qquHNJ+N/xtYilmD4COE28+w+t98EV1ZcAkoAZUXicXacCnEB+4tGjH30qMYZj39qPwlBEo11V7D3E5U6BoMN6c7pq0ICK02V+52E7iu68/6uS5HxHc7A2FnQiRJyPOIjrInHvIDpSoimf+vc9yVe3CpschpffjECsa9HxoeQV+UVSuAwm2mY9vG3NND7FLVpuPBdkrMZV6H+wxlJ3vlNckP7em2x+Su9g6kkpSWBZqUrphsp2aj9nMyl2X/UqlHWi5hp0aPdYzNIoPm9GekS9WEi6/W/pZ+I3L0LZzdBb9ryLQGHMy+oUOB3rAqxSdXKeJvNMPQ7n7oKTPS4M9GY6fjo4Xh38xqgIWmop+iVRCUVzn2Qud9LKEbn/UOR6zbcjUVExRP0b3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(136003)(396003)(1800799006)(186006)(451199021)(6506007)(53546011)(26005)(41300700001)(8936002)(66476007)(66556008)(66946007)(8676002)(316002)(6512007)(966005)(2616005)(83380400001)(31686004)(6666004)(6486002)(478600001)(38100700002)(36756003)(86362001)(31696002)(82960400001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGtsT3ZPRHoxRXBOMlczbm1reEpMSldUaWp2MVRmWmRmaDhMMDJ6dFhUZTIz?=
 =?utf-8?B?blVnOU1lVnVobjU4bzRLUGk2M3RMRkNVbTdYUVErb3Fpc0NYWmVoNWJsemtn?=
 =?utf-8?B?STdnRmh4MTlDeko2V0xmcFBvZ0VsaHU4Y09qVytnK3c2d1o4Y01VTUhJMnd1?=
 =?utf-8?B?RS8yazgyZVlXMnNLZTJVQ29BWXJnSG5LZzNVNnFDWHFHMXpGWkpkbUJsRitT?=
 =?utf-8?B?T3FWclEvYitqQURLVExkY0ExaWhGSC9rVVE4Um5yaWs1Z0dhQnRKYTY5R2Zu?=
 =?utf-8?B?ME9CUnJUWmRmdUs4ck9pNnpYZVRJM0Y0eDNXck95MlhiVm5QUCsvNlRVTW1t?=
 =?utf-8?B?cm5Rek5YZ3lzRzJJbkxoZ2JmdHI0Z2JhL3lab243MCswajFNQ1RHVHAvNzJu?=
 =?utf-8?B?cWF4elhCMDgrT1JjbW8yK3VzV3M1ejRlUnM5VW13UmhzYkNsaGRBWmV4dDdj?=
 =?utf-8?B?dFRFVVNsNGZ3SUVQblNuM2Jta2FZRTRMeWNNMkFobHhnZmVaQUdlNGJpVy9r?=
 =?utf-8?B?dDhEOStxZU9lazNrazJNME9xa2UrYlFzRUtVWTJaajBzZ3kvUHBsS3g1WnNj?=
 =?utf-8?B?MjJldTMzaWtVMGlHR1dxT2xlV2pTamxFZVMxS2lDV1BLWkdvNU5QNTlZcDJN?=
 =?utf-8?B?OHVxU1l0eGt5UzRNS2tlRVVHa3hvOUc3REc3UEEydURyd0hPWHBVWDBVZWdr?=
 =?utf-8?B?MVlnaDZlZmZRb1hzRUFGbzZKWUlBVGtXY2RTVHhFbmlDR01VSS9IY3lSVXBB?=
 =?utf-8?B?TUZJSTJLS0ZpOHhqWkZ5cUs0SzI4TmxVNTFUUml4YWtSUi84b2FJbEpmOEQr?=
 =?utf-8?B?bldRQkhxcVFybENtMFluZWpWLzJlRXkxUG5HdTFBbU8yd1ZhcldvbWc5MDBp?=
 =?utf-8?B?ZUlYRkFXR3p3cUFQclVzbFBCSjlQTHVwUzNJaFBZdEc0YUJKMXFCaW9aeG9j?=
 =?utf-8?B?KzdlQWRyTUZxbHdkS1QzUDJzN09DR1ZJRmZsdzhYTjJxUytwLzhodThtSG5q?=
 =?utf-8?B?ajZ0WnpVd2xGOTNadmFGYlc2cVpFYklubVFuMm9ZekRSRk1vYzZpVzU3NDUx?=
 =?utf-8?B?bTQwNGV5NGExQUcweTN3TkVmMkVycWJZRVN5WmowQWlrQWswU2tGSXBnL1pJ?=
 =?utf-8?B?WlQ4YlVuOTMycGxPQUVpTU1uYTlZWjI2T0NLY1k4QlJwRm5hSUQ3dWJnVGZa?=
 =?utf-8?B?SUlrRnI3eE5VRllQWit5enBOUllJU21KandyV3hxTGZzK2RQdi9ZRFhZbXE0?=
 =?utf-8?B?dGo5aDFUZGJFbnJ4c3lxL0V5QUJBRVI4NkRyVDhQUXFUK2ZXVW5lcVhkTzN3?=
 =?utf-8?B?RmZsUjVucTdoWCtoSXFTSndWS0hEYTBZTHB1NFI0Tlc4SlQvSmt0d05PbEZE?=
 =?utf-8?B?YzExV3R6UHNVNjR6NkdtN1c1QzhaU3A2UW50cTZSbkI4dnFnUm5mT2JGeERt?=
 =?utf-8?B?QkdhNlRQeVIwbXdFblRmNmYvc1NsVGtDb1cvaDZXNDFGN1dJWDV5UU1jZEQ3?=
 =?utf-8?B?Y0FnbGFxN2l6ZDN3Uk9NZTc3ajdjeWpMTEFZODhkd2E2TFl4SGdES3FTNW8w?=
 =?utf-8?B?UXhKTE1HUjhWdkg4M0xVUDdrMjlmcnN3Z3h4N3pHTERFOEtMdytLdmZ1Tk8y?=
 =?utf-8?B?SGRpUUJ6STRxS1RpOVZmbVhhOEVBRGNzdU5ZMFNSZnl0NlFwSCt4NmhqOGww?=
 =?utf-8?B?OXBXYk9pVkd5OVdXay9mM2tGR1hXMFdMSEVRTEs3cDlJQnV0aENFY1doNnVF?=
 =?utf-8?B?dklYYUVUVEtubjhERmhqcys2c0hLUGZqMW10RXQ2MTJrbGx1am51OCsyZXV3?=
 =?utf-8?B?bWhJQnUvOTF5Y3NMeWJXbWNhOHlIRjE5dmZ5Q1NsbTVtMEpxYUMrOE5VOU16?=
 =?utf-8?B?NHlCOVJDWjE1T2VBazZSNnpGZ0k5Z3c2MVBBRktNWmphTE5oQXVwSEVBRmFV?=
 =?utf-8?B?YkFmZ3QxZ005VzBxYlZLWHBCTnZCY0hxZEE4dmU3ekNQaGVTTU9wQlZrNFVV?=
 =?utf-8?B?Mlp3UG1DczFtUStrM0hETkgwTlBvdXpLUDdVUFZPb2QwdEdZT0F1U3FVTVhr?=
 =?utf-8?B?cTM1TnFWUm9JWHJaaFZ4VzhpMXpJQ1h4TmdFUE4zY1hPeHVGNExmNEVzemZN?=
 =?utf-8?B?OElsWVZYYjhOZ3ZnT0IvTTVZa3VXcUNETEQ0MTNlQlh2MFlDOEp4eWNiNkhy?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e66a58ab-8e05-4ce7-a93a-08db9d14c5c7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 22:21:14.8886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1eiVAaufmj/Va/iQEq+8ncHycJf9CkdZt9EVJaHCnLm3Rfq3OtU/J5gr47aieDIpvc/UhBgN1AAQhE059mrXNcBm2E5Gej+lXhShTAob3Yw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6688
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692051683; x=1723587683;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U8h+nuAruh/3eBskPu9XZew0db/flzVQ05B8vqdEWW8=;
 b=Aa8UpBn5WKZ1m31Z3awch03WW0gm8aoLtvyUwOTTlgQXQMyCttaLG3Dj
 o0XjZBVUPFVwP6Lohcd/z0CjeOCBf3liDTC8+eMTxEa2WPn3RoaYkXF77
 I6Hlaowp1hO7J2t6jFDqKfw/GC1JHi+EO5qMqJPiTTYb1xk07geycRadP
 zHAN/8qKD2hF3meBPw73UUi+77+sgkMR2FGNEPTMdwb3zs/DApyu2wgqq
 5+sOGQDqfG/wJs0v1Jg3QQm/LcuF8bYnRLSEgShD6VkHMfJIQRgLI1cjv
 PiIc+0H31DOgjoOFMgy494c3Z67dmSal8qpPollnlqQXM4AA7rOEVl7O1
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Aa8UpBn5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix 32bit FW gtime
 wrapping issue
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

On 8/11/2023 3:07 AM, Aleksandr Loktionov wrote:
> Before the i40e_nvm code didn't take into account that 32bit FW gtime
> wraps ~70minutes, timeout was calculated as 64bit gtime + NVM_TIMEOUT
> , so when gtime was ~70minutes, then gtime could not become greater
> than 64bit timeout value and the semaphore to be considered as expired.
> 
> Decrease hw_semaphore_timeout size down to 32bits, because FW
> I40E_GLVFGEN_TIMER register is 32bits only anyway, but having
> both variables same u32 size simplifies code.
> Fix FW write semaphore expiration condition, taking into account
> that I40E_GLVFGEN_TIMER wraps, by checking the sign of subtraction
> of two 32 bit vaues.

Can you address and/or respond to all the comments on v1?
https://lore.kernel.org/intel-wired-lan/93daba1f-10e1-9d69-ea76-b52aa7eb13aa@intel.com/

Thanks,
Tony

> Fixes: 56a62fc86895 ("i40e: init code and hardware support")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 in commit message: add 'Fixes' tag, fix a typo
> ---
> ---
>   drivers/net/ethernet/intel/i40e/i40e_nvm.c  | 8 ++++----
>   drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> index 9da0c87..0fe8fc3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> @@ -55,7 +55,7 @@ int i40e_init_nvm(struct i40e_hw *hw)
>   int i40e_acquire_nvm(struct i40e_hw *hw,
>   		     enum i40e_aq_resource_access_type access)
>   {
> -	u64 gtime, timeout;
> +	u32 gtime, timeout;
>   	u64 time_left = 0;
>   	int ret_code = 0;
>   
> @@ -78,7 +78,7 @@ int i40e_acquire_nvm(struct i40e_hw *hw,
>   	if (ret_code && time_left) {
>   		/* Poll until the current NVM owner timeouts */
>   		timeout = I40E_MS_TO_GTIME(I40E_MAX_NVM_TIMEOUT) + gtime;
> -		while ((gtime < timeout) && time_left) {
> +		while ((s32)(gtime - timeout) < 0 && time_left) {
>   			usleep_range(10000, 20000);
>   			gtime = rd32(hw, I40E_GLVFGEN_TIMER);
>   			ret_code = i40e_aq_request_resource(hw,
> @@ -1192,9 +1192,9 @@ static int i40e_nvmupd_state_writing(struct i40e_hw *hw,
>   		u32 gtime;
>   
>   		gtime = rd32(hw, I40E_GLVFGEN_TIMER);
> -		if (gtime >= hw->nvm.hw_semaphore_timeout) {
> +		if ((s32)(gtime - hw->nvm.hw_semaphore_timeout) >= 0) {
>   			i40e_debug(hw, I40E_DEBUG_ALL,
> -				   "NVMUPD: write semaphore expired (%d >= %lld), retrying\n",
> +				   "NVMUPD: write semaphore expired (%d >= %d), retrying\n",
>   				   gtime, hw->nvm.hw_semaphore_timeout);
>   			i40e_release_nvm(hw);
>   			status = i40e_acquire_nvm(hw, I40E_RESOURCE_WRITE);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index 388c3d3..efffe27 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -328,7 +328,7 @@ enum i40e_aq_resource_access_type {
>   };
>   
>   struct i40e_nvm_info {
> -	u64 hw_semaphore_timeout; /* usec global time (GTIME resolution) */
> +	u32 hw_semaphore_timeout; /* usec global time (GTIME resolution) */
>   	u32 timeout;              /* [ms] */
>   	u16 sr_size;              /* Shadow RAM size in words */
>   	bool blank_nvm_mode;      /* is NVM empty (no FW present)*/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
