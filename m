Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D67017185D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 17:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7833613A0;
	Wed, 31 May 2023 15:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7833613A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685546086;
	bh=Lu4J8xM6W8Z0+xJlVBEm9lHRG9diU4OE4bhI/LVBYgw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pol7MuzQGJvcrl4/xOEDS7UnAhcOLh+ZzpC6H95KbI2EgaZOUXXgtpkpY9LbBlOyD
	 YR0cZoa2/rwEQ6hA8c6rgTa6ctc4rD5uwci77yVIUlbPDQLfONHfXZEPL7Ge3YppjJ
	 kpQNOmh+vImSeqc46JhxFtQwfUGDN+fgdGbBVowxGfUWvVnPRVR2ucrN+je8dsxoh5
	 +YaidypL6JpoNgZaBAK2U1+wDQTw01a5gLQBYsL51rWyvae9jzGV5Glt8EssBYfEib
	 PD04n1F6C3l2rPTIIm5xwOcoytZqvsEssCAZ7SnOAieDqdBqI9DBqAeUC57vnu8CXh
	 R3JST7txKQQ8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhV44qrVHAxz; Wed, 31 May 2023 15:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48F5D6139B;
	Wed, 31 May 2023 15:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48F5D6139B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7957E1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 500326139B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:14:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 500326139B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rr7-oKK9fogz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 15:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D9DD61399
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D9DD61399
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:14:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="344781188"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="344781188"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 08:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="710116083"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="710116083"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2023 08:14:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 08:14:28 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 08:14:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 08:14:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 08:14:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XPZkizxHCHuKGgNPmeGuLCy1LvlAK+visZ84ee3Uj593Lz9MxiZ+8vBdSlnE0qV1XheHocM8RyLQcpMUek5tX/amiAwcwzPqouPPFlhkoAfnKKa/GsQ5skrpCELSY8hXcmrdSGxYk89WL1hfJeZht995HbyOe8T6z2oezKLXGL8kFUdXYDMac55vxJvok6q7Hf3yZMKfjW0Tn6Xqa0zG5bLrywmr9sIN1QiZMWhtAY/NefvQuKA3wQoEVgKYA7Mhx4BvbwedHoTJGy3nLjmxEoIZGPewXM/F4L/LlsvCilcqndx0dqDuSTKynQm8QhtWqhpmfjbDDZP53lXYiYQOJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KlOuf9lfU+3/QH+W6Ggbo7CE2LFlBwImvvps4X8kMLE=;
 b=b8eUatPLrOotdMbHoDfQr+V/pDzGteLkniIvpUs/dmAsR5KM4EfyxOpUMr/YjevjL5amfObObne6C7vwOFc4OXRgu5CHnVLjy5Sd+Hp0++It2TNeIoE16C/H7bDZnWaifem4RlDUt55MW0j/hO+5Vd/+g03ABiKE4LSVt1BLEzu3ISllfe0bOlksf3b4qV3wFBKs9/CuRrhMcdh61DCZl6CtfJSSeR0fME76YohZXXAhBHdniZpOpQu2IljWIvsw/hBoYAgmqMNwXvgFWgZDU0BHYaUmXU1zoz8lCwKHg9a4FSjVN1ZOrUtA5hZxaSfck2tvgqBMdAzkiCH/rcsrXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Wed, 31 May
 2023 15:14:25 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 15:14:25 +0000
Message-ID: <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
Date: Wed, 31 May 2023 17:13:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander H Duyck <alexander.duyck@gmail.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
X-ClientProxiedBy: FR3P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::16) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MN6PR11MB8172:EE_
X-MS-Office365-Filtering-Correlation-Id: 025d6b2b-e5d0-4715-48a6-08db61e9b775
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ICmSYjzbC7ysqgaEGzNWstJxWfxncjHsjKRTtiRGe8PpSuKq0kPyT1b0UL4kfVHWWrLCKylTyihcAQWvtsvKfUuto2SwNwZX5ZnF/htxLTtz9uNuneZg8ATTnJBkOYFNAnrsVAHBfMszyMVldHQyvcO+JWKDxTbcbqfhE1G1m8EuXawIhl+7K0cXw7WsWLpWThlckugrlSCG8sXDPxqV1JfTRCgTUwGRSsSWyfhs4eG3PiWmjwSJ5oSPHBnQzYv1mzLLqg5VxLM9Wd/4TAqwsYI3i8d2IV+/cRk30UYxhY1ANgwpez9PsTHou8WSza9KgxiITLBtHrETc1yw98/8nGAbwOcGyNgmoOlpSpx1K8A6uSu7RewtdVc1Q5nUvqJSU6rg0pX+Vv7MZ3yIUZIe7247BumrnCMwjYRYHEYGywMSCPfrAvt2Sg3DjdbqEBcP+i3y8LZm5kuTlqax1zHhcsP6SQTXORborXCYx+IELwyT6qiE/L37DBqTdsKUA5yBeoa7SjHN4+Es5UQQen3xTHwSvASY/oNNkLTmOZNR/VIzuiNPxpqr09GasWWpuHDXNgH2VWD+qNHlbtE8IvoximiRudaobF4tygbsC2Mbnc2nk8GGP7Ot5iTTTZYr/kuQaOwWE55y+NemEORwgLKEFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199021)(6512007)(6506007)(31686004)(186003)(2906002)(2616005)(54906003)(66899021)(478600001)(26005)(83380400001)(86362001)(8676002)(8936002)(66946007)(6486002)(38100700002)(82960400001)(41300700001)(6666004)(66476007)(316002)(5660300002)(66556008)(36756003)(107886003)(7416002)(6916009)(31696002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGdQZkhYaWh4RVpWTEY4VXo4NDVOTDRkR1o1akxpZUVoVktWK21sNSs4cVhh?=
 =?utf-8?B?WUNKdmpZSW9ONDE3RS9Ib1VUTlJ2KzlIMktGb2wvOGtFOG95ZnhjbHdqOVZJ?=
 =?utf-8?B?SzhFSit6V0EyTjdFWXZESEo1M0llaEtzWHVJc3ZqR29Lc0tsZ3RWdGFZTjhh?=
 =?utf-8?B?VytaYUMrRThscG1TL3BaaEh1T2FwWHJLMmJXdERHdjVEaWZ6WnQzaGFZQVZG?=
 =?utf-8?B?RHliWmZLRy81R3pNcmV0TndwRHhCYmZXUWdIRnJxUU9OQzJ5bW45TEQ2L0dh?=
 =?utf-8?B?WVU5ejlPaktjN3plSXVjWGhLalhDQmJTV255TXRKclBFcUxva3JDSGU4L3BL?=
 =?utf-8?B?VlVieDN6YzFybnVuWHFkN0FUSmRBWW9lUjQ3UWh6a05YRjVoS0pWOEFVRnVy?=
 =?utf-8?B?ZUxZbEdraG9UUkRER3o2SzNDbkE3OXZBSWUyN2hwdkdmb3NraXN2SFhKR2hG?=
 =?utf-8?B?dXhuYTBHVHJCb1BaRENCK2IrZEhMZC8yZGxTYUxuVUJFemxwSnZhYzBUMW5C?=
 =?utf-8?B?QS9PNXV3Q0huMWZ5NUhibS9BVUMxdlB6QWhENEtTZjBRcmZaZXJ1akJCczdU?=
 =?utf-8?B?NkMyMWZCQTdpVE1OcFFrNmJBN2pFRExHemhuY2Y2MkQ1VE1sdjZRa1lQcHRK?=
 =?utf-8?B?UEx0eFpDK0x3VWZKR2JTbHNoRGRZeVh3VWtUL0VMU3hENDJzN0NndXduaXdZ?=
 =?utf-8?B?a3RJRzUyVkJUWWthY1hMSnBDbmZRaFRnL3pyeCtIQmw3QmhPOUdUME56cmFz?=
 =?utf-8?B?bFRIYXU2dnhraEk5dzNDU3BpSUZkMlk5bnFNTngraTBGUmV4SGxEdnZIMEsx?=
 =?utf-8?B?dU1YdXFvcUdvZURrM0hGcnhZZ3B2ZWJ3RFlRK2hIOXZYcVJRWCtLTi8xRDQv?=
 =?utf-8?B?RGpEVnhkY1k5WUdEWXAyU3E0QUNzbXRreXVtN002Q2JlcXJKSzlMS1JsTnJq?=
 =?utf-8?B?eEF4cjVSR2FOdEhKQ1ZlV0xpdFY1aEVPZ0xGM2RSZktuUkRoaW45UDhCdCt4?=
 =?utf-8?B?TjNCdVh3ZGNZdjZadXVQbEJjV0tPQU8zc0RKWFFPY20zU3JIUENLTUw3dVVR?=
 =?utf-8?B?Zm96cjV5ZVpnZHhmQWJ3NTM3aFZReWRoSFFUeWZRY1E3MEdYeUhuVDJBNFhQ?=
 =?utf-8?B?RzVJczRqNVZVZWtHaytYWXZUbFpiaEpqQ0t1SWU1emMrakZGNytKTlRIa0dZ?=
 =?utf-8?B?bHQxWDVSUm5OVTlmbThFeWdBbVlZK3ZLK2pCeFpCeW54WkpoZnE1eFhaZnp6?=
 =?utf-8?B?MDFyTzY3eFlYcDR5bVJBRG5QS3ZjTlVFb0JXZ09TbHFtQkFjRXlSVkJiZjJs?=
 =?utf-8?B?SFN6UE1XbUNWVHBtbE1VanBGampqL2hJd0xJcXhhcTUwMjZMc1Z4UVJTUGhh?=
 =?utf-8?B?bjZRVXpmTlM1Mk9WdkFzRHhlS2o1TDJQby8zV3ltMVdlSVVZREVucnp3d2Ez?=
 =?utf-8?B?NjZUTlFCZzhxN3U0cEhOZ1VtWUJtenQrTVBWVVR2bWZpYjBGbnh3VEU3N0w2?=
 =?utf-8?B?QS82UXVWbW10enoyc2ZkQlR4VXZOZVhzVWtvZjl2QWRhcnViSUFpeEdPUE9p?=
 =?utf-8?B?R3JsaHR0OU5mVGMzTEV0UXFBY0pwbHRmV2hKNHlsNFVWam5NMzVQZEwxQkYr?=
 =?utf-8?B?R043ZWNRUGEvVUl0d3FkK0xCcXVlNlZ6blcxRkZGcmhnSGFUVW51b1NDNFVD?=
 =?utf-8?B?SER5bEQrV3dmWUJZMlNXNGYyNkhHcGprU2doRzRnMmR5SmRLOWZzODAxcUdS?=
 =?utf-8?B?K0JsRHRlRndlSDN3VFJjSk5SNEhzTC9Nd2x1VUcyc0ZlZ0lVWGx3dkUrM24z?=
 =?utf-8?B?MnVJL0dRUW9HMldhc1RjQUYzQ3lVNjNZWnp1V3creGdGVXRnZ1piZXZlaDlK?=
 =?utf-8?B?bDdzNWludmJ3LytmZkFpcHdjdlUrZVNLVXNrV3pWcXFpNUo4eHhBeGFDcm15?=
 =?utf-8?B?QnYxVFZ6TDZnVzZmRC9yK2g4MEUyU2UxNy9nV09JWUE4TDZLK0hEWjZHWmJN?=
 =?utf-8?B?Rlhvamp3ZjNrMlVhSnFxYTZKVmFLWm9BMjNSSjh2KzFQZHhlaDBqUmZtZjNW?=
 =?utf-8?B?eWtqbFNucmtlL2hGbmI3emN2OXV4REZCaDBHdGRGQkF1OEc4L1licE1FaTJ4?=
 =?utf-8?B?UEIxOFJTMTN3ekVNRlJ5c1pkb0ZjQnFQU3JGZ3lmeU8vN0NuZmV0Y0daRXB1?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 025d6b2b-e5d0-4715-48a6-08db61e9b775
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 15:14:25.7112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EjGBEZr5CyPjOLbA5Z2FHw2U2akvh/x+lhI388YIJbKaF8I50YbicG0KEarIBt+Va3dqH15FYGEOPMR1z1bW9LYEriGy0HM5YGVJyZ5Nb5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8172
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685546079; x=1717082079;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=40w13x0XwUpjFZqc01Htg5dEFrCwAqF8ve0cde1aw5o=;
 b=Z8DNL7dJ5woGdQNNNpdNq0Zr7511Hb2hsYDZsj9ue5TAcxpLe0MYfk4j
 E8Sxwthtp9rvW0ap1MEDtajGndEuzV8JM7uhQDU/RWrpZLxfnM2u2p18W
 b4KToWT/zoBh4jYDXvWEDkNVZt1jBHE/1p7NnvZfxYwBHy0Tpj2szv+2v
 k9LSIM6QSBl/zvIRvN3+GPIernBWdG9nj++8saMvy3rTe+d4GIO9Suq99
 nXWP1lj2u7/7DsB3C66ta3y32/PBtyKCM6mSAqoAPN0gmsfRO6U1BJBc/
 D/uT1MLJGOnbSIxBF3hD72fyrYVVp5VB/NMP7v58veR7Ql/1pKVx7N1B7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z8DNL7dJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander H Duyck <alexander.duyck@gmail.com>
Date: Tue, 30 May 2023 09:18:40 -0700

> On Thu, 2023-05-25 at 14:57 +0200, Alexander Lobakin wrote:
>> The Rx hotpath code of IAVF is not well-optimized TBH. Before doing any
>> further buffer model changes, shake it up a bit. Notably:
>>
>> 1. Cache more variables on the stack.
>>    DMA device, Rx page size, NTC -- these are the most common things
>>    used all throughout the hotpath, often in loops on each iteration.
>>    Instead of fetching (or even calculating, as with the page size) them
>>    from the ring all the time, cache them on the stack at the beginning
>>    of the NAPI polling callback. NTC will be written back at the end,
>>    the rest are used read-only, so no sync needed.
> 
> The advantage of this is going to vary based on the attribute. One of
> the reasons why I left most of this on the ring is because the section
> of the ring most of these variables were meant to be read-mostly and
> shouldn't have resulted in any additional overhead versus accessing
> them from the stack.

But not all of these variables are read-only. E.g. NTC is often
modified. Page size was calculated per descriptor, but could be once a
poll cycle starts, and so on.

> 
>> 2. Don't move the recycled buffers around the ring.
>>    The idea of passing the page of the right-now-recycled-buffer to a
>>    different buffer, in this case, the first one that needs to be
>>    allocated, moreover, on each new frame, is fundamentally wrong. It
>>    involves a few o' fetches, branches and then writes (and one Rx
>>    buffer struct is at least 32 bytes) where they're completely unneeded,
>>    but gives no good -- the result is the same as if we'd recycle it
>>    inplace, at the same position where it was used. So drop this and let
>>    the main refilling function take care of all the buffers, which were
>>    processed and now need to be recycled/refilled.
> 
> The next_to_alloc logic was put in place to deal with systems that are
> experiencing memory issues. Specifically what can end up happening is
> that the ring can stall due to failing memory allocations and the
> memory can get stuck on the ring. For that reason we were essentially
> defragmenting the buffers when we started suffering memory pressure so
> that they could be reusued and/or freed following immediate use.
> 
> Basically what you are trading off is some exception handling for
> performance by removing it.

I'm not sure this helps a lot, but OTOH this really slows down things,
esp. given that this code is run all the time, not only when a memory
allocation fail happens.

> 
>> 3. Don't allocate with %GPF_ATOMIC on ifup.
>>    This involved introducing the @gfp parameter to a couple functions.
>>    Doesn't change anything for Rx -> softirq.
> 
> Any specific reason for this? Just wondering if this is meant to
> address some sort of memory pressure issue since it basically just
> means the allocation can go out and try to free other memory.

Yes, I'm no MM expert, but I've seen plenty of times messages from the
MM folks that ATOMIC shouldn't be used in non-atomic contexts. Atomic
allocation is able to grab memory from some sort of critical reservs and
all that, and the less we touch them, the better. Outside of atomic
contexts they should not be touched.

> 
>> 4. 1 budget unit == 1 descriptor, not skb.
>>    There could be underflow when receiving a lot of fragmented frames.
>>    If each of them would consist of 2 frags, it means that we'd process
>>    64 descriptors at the point where we pass the 32th skb to the stack.
>>    But the driver would count that only as a half, which could make NAPI
>>    re-enable interrupts prematurely and create unnecessary CPU load.
> 
> Not sure I agree with this. The problem is the overhead for an skb
> going up the stack versus a fragment are pretty signficant. Keep in
> mind that most of the overhead for a single buffer occurs w/
> napi_gro_receive and is not actually at the driver itself. The whole
> point of the budget is to meter out units of work, not to keep you in
> the busy loop. This starts looking like the old code where the Intel
> drivers were returning either budget or 0 instead of supporting the
> middle ground.

No, certainly not this :D

The point of budget is to limit the amount of time drivers can spend on
cleaning their rings. Making skb the unit makes the unit very logical
and flexible, but I'd say it should always be solid. Imagine you get a
frame which got spanned across 5 buffers. You spend x5 time (roughly) to
build an skb and pass it up the stack vs when you get a linear frame in
one buffer, but according to your logics both of these cases count as 1
unit, while the amount of time spent differs significantly. I can't say
that's fair enough.

> 
>> 5. Shortcut !size case.
>>    It's super rare, but possible -- for example, if the last buffer of
>>    the fragmented frame contained only FCS, which was then stripped by
>>    the HW. Instead of checking for size several times when processing,
>>    quickly reuse the buffer and jump to the skb fields part.
>> 6. Refill the ring after finishing the polling loop.
>>    Previously, the loop wasn't starting a new iteration after the 64th
>>    desc, meaning that we were always leaving 16 buffers non-refilled
>>    until the next NAPI poll. It's better to refill them while they're
>>    still hot, so do that right after exiting the loop as well.
>>    For a full cycle of 64 descs, there will be 4 refills of 16 descs
>>    from now on.
>>
>> Function: add/remove: 4/2 grow/shrink: 0/5 up/down: 473/-647 (-174)
>>
>> + up to 2% performance.
>>
> 
> What is the test you saw the 2% performance improvement in? Is it
> something XDP related or a full stack test?

Not XDP, it's not present in this driver at this point :D
Stack test, but without usercopy overhead. Trafgen bombs the NIC, the
driver builds skbs and passes it up the stack, the stack does GRO etc,
and then the frames get dropped on IP input because there's no socket.

> 
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Also one thing I am not a huge fan of is a patch that is really a
> patchset onto itself. With all 6 items called out here I would have
> preferred to see this as 6 patches as it would have been easier to
> review.

Agree BTW, I'm not a fan of this patch either. I wasn't sure what to do
with it, as splitting it into 6 explodes the series into a monster, but
proceeding without it increases diffstat and complicates things later
on. I'll try the latter, but will see. 17 patches is not the End of Days
after all.

> 
>> ---
>>  drivers/net/ethernet/intel/iavf/iavf_main.c |   2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 259 +++++++++-----------
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.h |   3 +-
>>  3 files changed, 114 insertions(+), 150 deletions(-)

[...]

>> @@ -943,23 +945,17 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>>  
>>  		/* clear the status bits for the next_to_use descriptor */
>>  		rx_desc->wb.qword1.status_error_len = 0;
>> -
>> -		cleaned_count--;
>> -	} while (cleaned_count);
>> +	} while (--to_refill);
> 
> Just a nit. You might want to break this up into two statements like I
> had before. I know some people within Intel weren't a huge fan of when
> I used to do that kind of thing all the time in loops where I would do
> the decrement and test in one line.. :)

Should I please them or do it as I want to? :D I realize from the
compiler's PoV it's most likely the same, but dunno, why not.

> 
>>  
>>  	if (rx_ring->next_to_use != ntu)
>>  		iavf_release_rx_desc(rx_ring, ntu);
>>  
>> -	return false;

[...]

>>  	/* if we are the last buffer then there is nothing else to do */
>>  #define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
>>  	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
> 
> You may want to see if you can get rid of this function entirely,
> perhaps you do in a later patch. This function was added for ixgbe back
> in the day to allow us to place the skb back in the ring for the RSC
> based workloads where we had to deal with interleaved frames in the Rx
> path.
> 
> For example, one question here would be why are we passing skb? It
> isn't used as far as I can tell.

Yes, I'm optimizing all this out later in the series. I was surprised
just as much as you when I saw skb getting passed to do nothing ._.

[...]

Thanks for the detailed reviews, stuff that Intel often lacks :s :D

Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
