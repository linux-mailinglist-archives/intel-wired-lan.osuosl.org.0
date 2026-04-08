Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOuMCMPD1mlDIAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:08:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A323C3F91
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB97741064;
	Wed,  8 Apr 2026 21:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPv7U5PpN7P1; Wed,  8 Apr 2026 21:08:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7763941066
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775682495;
	bh=nXaiR3ZQ6TXxy3ffHzHRjKXChLtakjrRJCJx1mVvzVI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BDYw24KYxe6kq9z3m8f2oX4+Yywpog3avR7SfaRKMOQ6LpdVAPP7Vq5Qw5XlOkxfD
	 5QrP4cB9lG/ezn5UN8A3ooLvkyX428G6+HmRK4w+FjZHt3rt+wXaGCHYp+/5buH+lg
	 16pdhf6QgyvJtTZl1cIpa0vqXwalQQF8Ee1ZGfcIqw4iA8DMBrUuJ7LNe+27qN+/nA
	 q2uaBpRa6VTgvwshmB8b54wF5oAZ1GsUK/wCrVDk6ncl9Xv9PasyMusec3MR/7SGku
	 50AgdzquTebY2vN9quK6sUQKIcHl2xsViqCdArqSohyQxEHoxwOtZU4RNGV1gS4axk
	 ZoXy8mi1cJf0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7763941066;
	Wed,  8 Apr 2026 21:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B2CE6237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A46E2401A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wSVaNQFlFDr7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 21:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6CC0B400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CC0B400D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CC0B400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:08:11 +0000 (UTC)
X-CSE-ConnectionGUID: Oy+bf27vQNmEz67JlCL2ww==
X-CSE-MsgGUID: 45IcxtlKTrGbWA19T9m2iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76582604"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76582604"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:08:11 -0700
X-CSE-ConnectionGUID: DeIrZWxqShaIwRJfgKQaTQ==
X-CSE-MsgGUID: Cc/SIpVKQPu1C8DsHF5wvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="232959868"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:08:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:08:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 14:08:10 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:08:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YofVTDFpuryfOXHXfmXeO9dYUXkmZgvHnOO5AW7bmEwSVJBkodB0mjTY+pB06HGCfBYaRvUH7yPUpTPGhxEnuZR4q+RdiJhLHdTpC+g6WuLTCWaNkN1wiTla6/TzDP7X+7iw3qr4nM/Hp+76MfUz4X1OLXfjkzhDLxYXL6NJMkbGkyWaUTlIOlk+mTR8zFECxcWiatYUkAiURXo1O4tKa4SG8BXsvIZFAX/Z+qgYHxAPzshkisIKflq/Frh0dWUL15yvoT538eSbaX5gm5SE8lpxHnZuAq4V2AMk92C8AtPRTh66kjuT64wrvoVV5ZiSOTW6C40wwZd54w2cJYkf2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nXaiR3ZQ6TXxy3ffHzHRjKXChLtakjrRJCJx1mVvzVI=;
 b=Nv/COetTtvxg5eAx0D9SY2b7xdccK4o13H65RLhMinqhvxYb/x8dnm6qvGsF9+j64Kj8AXeiIHfKmw5kgs/bgrTqJ7wbhd2TJ1XMkeuI+Bt3xWHtvsCPwW+sVkpI/kM0Tdb+QNPeKHESiHu1QcMhBqwIeb/B51YKPZfJO3cW/qj8+ITodeyzv2yPScTZGNUFhglqUCxb9vDcxiLTH7qLVTFOTC04FFfDp9/bJ3mvqRjrQG2n3qm5VJmsO9WErAj4wJeXfC/3HLgjhlHAaAhBmq6oF9nDUZUvKBtP2Q6kDERKRBn+uuNBNR3K6zQH5LKeKK7/flJW8CLOMnBvOk+QDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by IA1PR11MB7920.namprd11.prod.outlook.com (2603:10b6:208:3fc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.14; Wed, 8 Apr
 2026 21:08:08 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 21:08:08 +0000
Message-ID: <5974961a-f4bb-4bc1-859f-8eca3b29acf2@intel.com>
Date: Wed, 8 Apr 2026 14:08:06 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Dave Ertman <david.m.ertman@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-8-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260327072332.130320-8-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0087.namprd03.prod.outlook.com
 (2603:10b6:303:b6::32) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|IA1PR11MB7920:EE_
X-MS-Office365-Filtering-Correlation-Id: db1805fb-65a3-4b3b-085b-08de95b2eef3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: gU+Lafw/PGEk9/h/dkuOABeLvGXTlc8rlNM83ow/ITWGMY7yqTHE5QMqd5Y8kHu3E6DLt4o3FUs2xo65bE6lZAn+/xAf4/YVNO+F8CIelKSsmo1pJC+PrNfQ7QUtOB7GXoFyWDpHospuJySoDE3g950Ex9WJcH6veA9V0sIPdJoKjUVqA8WbveFSKAffccl8+rMGu2//qX6qD2HeLibU/NUhaJbGpBS0fGhuxg8oOsaLIG7LjcUgHxYZhx2xZ3+aplPwjKqtD/8NJ9A8OWZ6U9r96mSkLxGE1/Rcp9+jO7hBpf4CaBO/m/8XMI4xDcs2tgD1kHdHnD7h46a1p3ZndNVcuIaJc/fPC2xsnmT4NQocEnaLuFS5+3VJeBX3A1nWxX9eQyLxtqJSFktndPZoNEWSmbTUaUZGZBJ96RZVIFjh3UNStbqpjW7rKGPLNBhcUEx7vxSVqPRdSEqYi5DH6/56lOOwupoF+XoPaKGGJpD2ZZNfbTf4Orc6/ECgWd+sVtnimE2RvioQE8UpWC5fETZ5nEacTbEaZxvgRdwpJU5A3B3NlxgIaZkdQp6tyLIzb7HMgNLVKO07tb1RZrRKl8WY/Z50Sba+P6SNXccBRykVk0kSQLR5UwK6K1YwCXgoZdvkzYQyzSPXPbrpWjqN3kTaq+JJfvNrEktXLgi0Bzx1549rlgdPLPUmk4XX4JXAXuqN9DX1KJ9VaOpQTBSR6XxjYxn4GsdeNcn3jqRFKYJQn5b8DOqb9hQiez2D5HKk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elV3cDJDbGNNMXZaK281TXFVTEhMdVduQ1RBMk5vNmkxM1hyYUpCTmhRSjBs?=
 =?utf-8?B?TGxMQWVXRG8rOUJEdHlpMmVVSEk3OHh4ZEN4OWVwY2RGZWNCWHN3UzJYOE5w?=
 =?utf-8?B?Z01uUHkvVElWRi9PclFFeFJqUXdGWFFwRlZxdThqa3JYMDhJdmw1RmV1Zk5Z?=
 =?utf-8?B?VUsxcG1rYjRaR1NxK3hkTklSaStLcWFlcDNUc0lJTFVnYnpqdDNVallFcURn?=
 =?utf-8?B?M1VRREx0RmpqcHRlQ1dnTjJVVTgvY20yd096c0lER1R0R3F2SnJPaVVZSkFs?=
 =?utf-8?B?RjR6RlJ4M0NMN2hRQlRCMktrU0R0MkFBWFV1Q1pWdDIxbVJiRDhnSklGU2NX?=
 =?utf-8?B?NGoxMGNxL3dYc2RjMlBuV2hKMVNITGtiL1VKR2dkQTNsekNkVE50cDV5R3Zw?=
 =?utf-8?B?MGFGYU1IclR5cE5OdjBCZFZaelVFRm1mZjIwZTVORUo4eVZEQmVlczhIL081?=
 =?utf-8?B?UDNLSVVycVNIYjNyc1ZpL01ad1lVdWFBNVVTQzJrbVQvd08ya2FRanpSamY4?=
 =?utf-8?B?eVRCeXAxanUrNzN6dkcrMm9KODg4bHdzK1FUS0ptbUZ5NjZ0VitWTDBiZ0FM?=
 =?utf-8?B?WFdpMlFpT3ZLUkFkd1F3dG9ieXpweXRhMnd0anFWQ0VxOE1tRmVNZFBoVll5?=
 =?utf-8?B?aG5ETTVHUlhVb0xGS2dCZW5NUkdBdFJnTTAwZjAydTBvZkFBQnROUVRmVlhW?=
 =?utf-8?B?Mk9zRDB4MStCSndrbmk4dnorUDdwejU4TVlPdHFpc2xmUHo1bzhxTmFGOVJw?=
 =?utf-8?B?ZG0wNXRZWEppN0ljMUlFbXdOSTZDN0RkcHpObGhzWEpBc1ZXdm9ydmY1YTEw?=
 =?utf-8?B?UmM4cGh1T3U5aTFjY0NkVkl2V2pTTUtkc3NPdDRUQjQxOWJMajZwdWpTWENW?=
 =?utf-8?B?Nm5OUzdLNkpjU2lnM24reDJYc3dEUWVJaGxBWkwrUGR1VXpYOWRTK2QxNnlh?=
 =?utf-8?B?SkRGbHNPZWk2Sk1aYm82RVdEL0lDMVlYd3JGUHdTcHBaWnVIWFpTK1pJaFpy?=
 =?utf-8?B?d0VEU28xalFRZjRzNFZxNlZtNjg5WS9KTDV2UUtGQnd3cDFaTW5qYWpNK21p?=
 =?utf-8?B?Unl3LzdWQkQ5Q1hFQjlYY1VtSE94azgreXNTNHdZZUN3Y2krckM3bXZGT1ha?=
 =?utf-8?B?LytCWjNjOFRKalZTNUNwa2VrMkxYZ095YTNjdnZLRVFPVFh2V3l6d3MzQURo?=
 =?utf-8?B?NXRnZkdpc2N0azE3dlBzUlA3Y09VL1B4VERXVUVLMGdsUlRZT1Y0blVEUFRv?=
 =?utf-8?B?d28vMzcrNko1YWtKNy85R08xVUFML0pVMm9GS2xzWnlFME1jTTJYa3gzbVZI?=
 =?utf-8?B?bmwvQlY4aFZTdUtQR2lENXhnWmZxQVF1QTZuQlNoMmt2Mm5oNGpsbkowd1Ru?=
 =?utf-8?B?OHlkVVZvaUtEdTdQblVBazJMMC8yUHhWcFRUWWRlRjFTdkRWbzI5ZzU5Zmdh?=
 =?utf-8?B?RGRtMjY4SE9ESkozcUxNL2pDeG9oMXBrVm9jUS9IcFdQS0t6TWYyOXl3THdO?=
 =?utf-8?B?YTUzdFhKUEdJak11RHBLZVIxWVZHSnFncHJqcUgwbmU1bG52a2JzeU85dW43?=
 =?utf-8?B?b0swWXVmMlpKMzJ6bWJYdHNJdm5YRXJ6YmF0YktBNnpZYVNxelB3Tk5GSXhj?=
 =?utf-8?B?ZGhNajZ4WmZBUGV6QWxFZTlLbnR3NVFKb2FHVFN2OURDM2J6cFM4NVpzUmdv?=
 =?utf-8?B?ZTlMQ0lWQXI4cVZUTGYwc2ZUdjlWbHhBK3dRNGd4U1RBNjVaejg0cEdsaDBC?=
 =?utf-8?B?dWkyNzhJMXFPaGwrL2VPV01VSlpOVGd2anJJSEkveDNxYVpxRG16YWtIc1Zo?=
 =?utf-8?B?K1l0UDNtKzNkaEV0MVpjMExrcGpBSXJ5eUVvSTd4c21nZjlyQUJydDJGMGt1?=
 =?utf-8?B?MUxuUWFTU0lyLyszRENURUNmdXhUd2NmeFQrZHhGZ0pJRW5wYTZNZW9XS2V1?=
 =?utf-8?B?SmhraHlQM0NDZGkrSThEQm1DUHVOWmlVZkVlY050cDJQTElqTzlqVms5WjJG?=
 =?utf-8?B?QlVZeFczL2todERZcVkwaVVYeFpJNEpocjVIN0pUeHpPUEE3TDhSaFIxMHhP?=
 =?utf-8?B?NVN4ZmRPVmV5R2drTHhxcGlmcHdsNk9BZHhGNHU3K0V6WUdpZ0dLd3hHV2tI?=
 =?utf-8?B?bDZmaFhXRmJ4Z0VqQlVUM1BsL0tvb3Z2WWJLR1RBNkF3NnUyWWR1YUdaWXNJ?=
 =?utf-8?B?MGY5czB2YVJrN0JKejZZcWtnQVQ1UHF4a2piRGtNTGZ4Q0NzbFhzUlRpczZu?=
 =?utf-8?B?REtBbXRRT3pMWGE3YjZZOEdJNEpoUXltVkxrN1RFTURBbUM4aFhwN0tTM0l6?=
 =?utf-8?B?aFBvM25xQVR3UFJ3R0Rrbmcxb2h6K3JBVTNONUV1akZpeUM2UHNpOTVmQWo4?=
 =?utf-8?Q?JueijjWnmTA3gJzE=3D?=
X-Exchange-RoutingPolicyChecked: TkL2pSbtqQu/7W3dLIt337pqlW2jXsLamKlDxryId9Oc8S3ZMOd7rkC79uQCR9p0v5pnTv+4AXFryCFKaa35udz5jzX+mFIld5X+uP8v0xKB4/eqy+HCI63E0hL2DcT9/ZGSmaVaJ81408GgtnO2sXSgkItD5rmPk0bHAkJgvHJEIpECBk7rDanc5U5o+mQlYYXwbc9mAfy93OeWhLkcXoQJCDwy2KlleDFjTTNTL2j4WzOOSpW/J/noqeFY4gq8OkUqqvIBg+yN8SpvAkqTHqzWgB9Kbv0J8v0iMl7W/h7PFbvE7cGLqxgKuLs84iASVqJuF9zHBe46R9wd9Gn/rQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: db1805fb-65a3-4b3b-085b-08de95b2eef3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 21:08:08.0093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WaT73cY/ZwC2mHgTS4VZUuQ5igJoyRur/jUGDL9yxWfTS6sI7av8H2YuTFKBCwzEJlGYXxz2M7hz1bBOpJ5vCGD2TbI46KYltx7l6D2/3Gs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775682492; x=1807218492;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gEnsb+Dz2nsI7X7/95v3Da5LnDQ7pZxsLKv3FwwcgpM=;
 b=H7WONvII8ReJAXnoMHXTEbSkh0+e7OP18ANSDHqFwyNJiS6TzLPkaugj
 K/1KWjxxBlNVDX0qTHfiUfqqKdGUww1wG2fV8OWyqkaK20jlYR7OKR/bp
 BSZkP3XMTh9OtGEVCCkDF8dV1BZmxJQrr/56NDEpJBBwHa4LH1+6IUtGV
 GOFRpyFMEIMTc8It9u1ZRtX49KPjFxDe5/CO0pfGML78A5O+7PHVz4KoP
 f+lqXe1i6+Plqw3copbjdYhJycNQq9tY1aZiFN53DEsbboNoV/Bj4TNJ4
 zkZAcDfaHroIPFzTQKXT1vQ92N+vGJNxYMdsnAWRzLn6IPih3L3PxzviB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H7WONvII
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: stop DCBNL requests during
 driver unload
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:david.m.ertman@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 28A323C3F91
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/27/2026 12:23 AM, Aleksandr Loktionov wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> With a chatty lldpad, DCB configuration requests can arrive through
> the DCBNL API while the driver is tearing down PF resources, leading
> to use-after-free and NULL dereference crashes.
> 
> Set ICE_SHUTTING_DOWN in pf->state at the start of ice_remove() and
> check this bit at the beginning of every DCBNL callback that accesses
> resources freed during the remove path.
> 
> Fixes: b94b013eb626 ("ice: Implement DCBNL support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 
>   drivers/net/ethernet/intel/ice/ice.h        |  1 +
>   drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 46 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_main.c   |  1 +
>   3 files changed, 48 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 2b2b22a..052c310 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -283,6 +283,7 @@ enum ice_pf_state {
>   	ICE_EMPR_RECV,		/* set by OICR handler */
>   	ICE_SUSPENDED,		/* set on module remove path */
>   	ICE_RESET_FAILED,		/* set by reset/rebuild */
> +	ICE_SHUTTING_DOWN,		/* set on module remove path, before releasing resources */

...

> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5424,6 +5424,7 @@ static void ice_remove(struct pci_dev *pdev)
>   	struct ice_pf *pf = pci_get_drvdata(pdev);
>   	int i;
>   
> +	set_bit(ICE_SHUTTING_DOWN, pf->state);

Nit but can you name this ICE_REMOVING? Since this is in ice_remove() 
rather than ice_shutdown(), it seems more appropriate. Also it aligns 
with the naming used in ixgbe[vf].

This will need updating as well:
https://lore.kernel.org/intel-wired-lan/20260403054029.3789616-4-aleksandr.loktionov@intel.com/

Also, if you have dependencies on other patches, like the latter one, 
please wait until it's applied, otherwise, it will not go through the CI 
properly.

Thanks,
Tony


>   	for (i = 0; i < ICE_MAX_RESET_WAIT; i++) {
>   		if (!ice_is_reset_in_progress(pf->state))
>   			break;

