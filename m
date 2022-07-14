Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC92B5756A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 22:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27305425F3;
	Thu, 14 Jul 2022 20:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27305425F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657832006;
	bh=8f2wSWSxbe5CvzREwqWOOo0dqEeIlIgGG+Sj2TOtt+c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZZQ3qKOcAB0FwRc93NdibgUSI7zoCUgDjwJsZ9ooQCE2bXKzBIUEWVNwwPtg3J9hq
	 Jm9Q1FcEbHq9eZnutNGqEAePKW3R/qRyI2PzB32vML/frLXBR6mkf6S7w0aHlk5BKf
	 MD+i8uBlzN3yxUUZkzGfx0qhHJN/hfLVDD1zgkStHspkNUrTf4+9ckZMMeC6xQzY+J
	 ++ghQgAE6CMT7pbPKTVLVrtnyjiNbvLqrSS+Not2UTMcPtDlfmQAa7CNndOp0cJeti
	 zbXipYlRaM3+nrwMnwsi8sO/ZFXYq+letv/bU27IMDmPj/G+UyFdpog2yqlChp2gqm
	 S0IGHH0vr81MQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JfUgYZjlB_mv; Thu, 14 Jul 2022 20:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6B27425B5;
	Thu, 14 Jul 2022 20:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6B27425B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AB8A1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1228C60BD0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1228C60BD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhxJi9u_JzMi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 20:53:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CEA660BB0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CEA660BB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:53:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="285650450"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="285650450"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 13:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="623577149"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2022 13:53:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 13:53:16 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 13:53:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 13:53:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 13:53:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uuvr4S4AfA9l9gmizPmTeUmhaeY8XXU8LNY/neOjar2jec+DEDiHj8wjQiUVfir5Hgz/7muHcJZz9E72711GzWg0BDoJ9W8iYHEuAGVkXVZle3AXO5TsGDLlJhKK7fNiQfpAQae7A8SWEVg0gAhJ7jIa3h2fKtSc6yweNshBqB7hvrotQBuQMQ9Ek35/iyHdiQRuR436rrf2qBMWUQVsAhgwHRfDqEMnwJsFrvp5PvB/e6VAJvzjicIHYhKT+QeQzWoknSYiYeeOHp1z/kHgsgfSSUOlOgQBUn3ZY1bivcucU28PoevKv7iLzGf4RnIC8whh8NJWof9DKl270Bmadw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/TC7bH1yBKfaefexlti9rXy8oMhTVasVHRy2F+UOEg=;
 b=d68hUpyw7VJesoUD3C9DVfNkY/Tg/jC5dtWbBuQ09ZQ1E/AUkzNlRLcLUk08NL/U8o/lHv35cjrQenm3olYVWHvi/ktMPunbdudmUbl2LbEH6P4/JBsaI6r7pGiIlgLPNykZWn23vSN38oJleDF7pzLoFDjvoTbYwmIu/h2xiDLgydRn7ul/2jkNU/4MImljK/5u3gQlMgJS8KrtUeZk8uvu2yCZBYVgEaYsUZmxaFhWuGb9gQpNI0XzOMIsHDGsTGa7R/RbfJp1y8xKsyylXZecQjQh9a28gn7DMwfoCLGQh/gJrHnXRD/XLDYqxN/B8+zQyH3STwJQhLbtiMrD2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR11MB0038.namprd11.prod.outlook.com (2603:10b6:910:79::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Thu, 14 Jul
 2022 20:53:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 20:53:01 +0000
Message-ID: <0d08e910-2a3e-ae6f-1566-79ac4bd8e1d2@intel.com>
Date: Thu, 14 Jul 2022 13:52:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220713134120.2745317-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220713134120.2745317-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34520f82-4318-46e2-e404-08da65dad72e
X-MS-TrafficTypeDiagnostic: CY4PR11MB0038:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MH+5mQhuoql5M49J9G03R4vkwUmUNXiij3qu07NNq8bvzI89KWDtFv7EGlfm5AvvjcMCaEqiIQz+si/X+XNcGa5ssiGL7HbdwBcPoHpLI0fmimxrNmD2mHVTWRt6Gq6oYBHz3PvT31ePoIkDhEYkY/LVe6/ikbKmQ1Wu+llqfj3S8avcPgWJyCqIoEp1vndAVi8/JcJKkLyBbWG6PSYdoXOVcldoV6ZnPlVCHsB2lp52JdpKffTTXrl0N+RM5LoQA7xuRackwLH4Ka6Esdzx6FVobR5GM//eZrnUSNxh2AgVPKwiOyWTLNQK0qU4eWBmSoWR8hQ2n0S2P5TEZo2KSej+k3YvX1UOSGIkqZ44qw/s+sEfb6+xsYuXgz3AapBSjnFDCGz+eUmn4nlsn2U+R1k2r2d45k3BPO6mmOV3a2mHS48aXgzR46UBmOOKA6pqN61xz8F7cJEN8b5SrcWYFPj0WukXOPnv3yoN45n/TBSuaS48+XAEXHTNjtjDRJPlXndK159E/A46hldUFACEwQWDiauIriM9biW+oX/jfoMfOky0vitYVc2zXGjEh5feGoczb2uAjMgRGg3Tbs+WT8QsCS5pNqpczPwyESfQ9WBC8jR5fBHBu4R3/4HURImPJ/Bgt8z4iMQNBU2EdxhoLvwZpsJVQ8l7tx0AI6TGp+TPZlwEog7AHoj4pAfmK3n15oUoxvYO/StaXaXJdcJOQiQMM+YITrhOuLSyeHaIL/v4XjjNQ+uncJM0/OVrmebm8yg2qoJW/lCWVPn0sqq3XjzYwG8QvTZFloJneO1lqjQnyn5XR6753QPEmo2piBB+llW5Uj0nQ7KpLR+cKu11zKzxtUCYE4e991bAFd4x8r0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(136003)(39860400002)(366004)(83380400001)(6512007)(66946007)(82960400001)(186003)(6486002)(8676002)(6506007)(86362001)(53546011)(478600001)(31686004)(36756003)(2616005)(31696002)(66476007)(38100700002)(66556008)(316002)(26005)(5660300002)(4744005)(2906002)(41300700001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEhYTTE3YXRickl0K01jL2FjQkR5cWQwcUk4emd6bVdkQzVzb3YvVlhnYUE2?=
 =?utf-8?B?clAzSVM3dS80d2ZmOXJhMkZsRitNRFpBOVMzUm05NFhFYVkzYTgyZTZjTzQ1?=
 =?utf-8?B?TVY4YVZHR1B4aTQvd1d2TVNQUTB5Y25OblRtNjhwb1ZKTkp1a09kbzhZMzJG?=
 =?utf-8?B?azVFNTdSRUNjVDE3eGY0dE1LejMrQnN0RjN6LzRRUy95NjBLOGIveGJDbUlN?=
 =?utf-8?B?U3UwV2VIelJ6ZmFadWNrSDcxNVV6VEhkNDV3aDNHVWh4WU9taWpPTC9FZE04?=
 =?utf-8?B?eDQzQjJWWFVJWmlyRG50NjhjWmxJMVY2RmoxVDE4akdRTVdMQUMycGk3WmMv?=
 =?utf-8?B?d2pwZFdMWFNJalRtRVhwK3pOdDNGeExWanJJeDQvNStDbXpkNmFWL2ROTE1q?=
 =?utf-8?B?dlA1UEZTbnB1S01NbFpUZXk1SlZLTnBadmNub2xFVU5uSmNFR1pDU3paT0Rs?=
 =?utf-8?B?QVIzNEdQOEVENkJCVVI5ZFl5ZGpBdzFNTUJuOVJWU0IybjFVZ0hoVVEwRXBn?=
 =?utf-8?B?aStGNDlacGtPVmFWOE5pVFNjdlV1VnNycFViNHR3WjZaZkFrWWoreHFVL2Jp?=
 =?utf-8?B?NTRSQllSZ3BSWVlBTmNzNzBjbnVtbWlQNUFaNWF2VkhEZDZXYTlFQng5M0J2?=
 =?utf-8?B?a2l6czdIQ1dNZWZ1UTBZc2IzQkc2ZEJkTldUcFBMeWdiay9NMTYwek12NENi?=
 =?utf-8?B?K25UeU1lY3FFSm11U29Tb0trVWl6RWNoWWw1UWY0bWZXZXM5bXNmV1BhV0Nn?=
 =?utf-8?B?ZmxVSnlld1NHanZET2JGVHYrTTdZNmlhSjRweFE2czJtL3VGUFZwNXhXNmlZ?=
 =?utf-8?B?NTJLcjZ3ZGZpU0ZMa2pyQ0FNcjNyRk0vbk5VZ3dtSEFxTTVYNkNVd3BIL0Zl?=
 =?utf-8?B?RnVTSkk5bTNxY3ZjWUVsb1ZUeGtrV0I4N01ZdEpCd0RWVSttVmJQZnpPZHVo?=
 =?utf-8?B?SThZSkV1RTRpQUhycTdQbXh6b2U4OFdLUFpzLzhwVElvYjRQZHZqRFlmSnI0?=
 =?utf-8?B?azE2UmdFbm4rL3paRW1FNmplZmpOQWJRMGVvZ0tkaGNnMXV2YkRhTUxoZ0Mr?=
 =?utf-8?B?aTBLV3BUdlFETWNXdVlMelVoVXlmNXI0bVpNaGJoQTN6YWN6eWlMM2xJVWZ5?=
 =?utf-8?B?VjQxSlVVdk1CelVjUUhucXcwME1ocHFTUEZYTC9salZpQ1FTd3paWFcySjdC?=
 =?utf-8?B?bXlBZjExazVJWmhYTkVKMEhmdVRoNWJEcWU4UTNQSU5BQnhrcjJzMjFhRG5E?=
 =?utf-8?B?UDBlRlFkVUtQY2ViS3NmVXBqOGkwMFZlZXVMcVZvUnYrYVhlQ2NTWU96K09n?=
 =?utf-8?B?WG11QUd2NVBZRGgrNlR6WU1PSHdhVzRPakVhcTZmUFA3SEVwZDk0U2ZJV1hz?=
 =?utf-8?B?dXduWE03dE1nL0ZmcHprM1A2NWVRK0RqY0tha0JHb3pON0NsQVY0ZnpHYWZW?=
 =?utf-8?B?dmxYU05kYWNRTy9iM29BNjgvNHB2bTh3WVNrdmlSVmpyUXJ1R0xiL1VsV3d0?=
 =?utf-8?B?aFA0ZXgwMndEb20rRkdUWjJya1I1M3VONjJWd1NFbytPU2tMNSs4YjdaYTYx?=
 =?utf-8?B?dlh3QzRuUi9tWkswQlM1Zlc2dDRDcDVqMkxRazNUWTM4N3RyMDZpWXNjcWwv?=
 =?utf-8?B?M2tndFRsR3RZcURHSWw1dlVFOUR4TTduejhENFJsMm1kdXVBNDBwZkdjVlBG?=
 =?utf-8?B?ckZmejJseDUrbnJNQ0lJakV6SElrUFdWakRUMTVzdUtEVlJhTUwzUC80Q0k2?=
 =?utf-8?B?VGdYeGlrWWx5UTBPZitNRkE3SEtkWFpRd2dqcUtvdzJkSVpDV1FtWFc3RnJx?=
 =?utf-8?B?M1YrL1FWRVcyUnhwY1YxUlN4RmFqYW45Y0EvajVOSkVRb3hGZ05SRXQ5ekIy?=
 =?utf-8?B?c2VNL25HTjVFMXVkblFrbkpvMHdVT2xoV20zK0k4RjZBMHB1OXZYSDJjTVJL?=
 =?utf-8?B?U1Q5cFc1bURnTm5meEo1Y3l2ZUc5TnpKUVF5ZjczR093T05WRlU0K3krOXM5?=
 =?utf-8?B?Z01xMVNrcW8xYythOHRnSlczNzFzN015UTQ5TjlQVzR2TzNiRHcrdFFlUDdD?=
 =?utf-8?B?dUY0dDlyMk01ZXQyNUFsWjJ6dDJFdEZMeXhlWWk3eVFIMmxRc0lCU2JUZmJS?=
 =?utf-8?B?VGdyQWI4VUQzRlBsYytoUzc3NGVxR2NaMXkwUk96ejMvUjlYZlJoc29xSFpy?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34520f82-4318-46e2-e404-08da65dad72e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 20:53:01.6921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DzGgOGj5yRDmgTg+G25NFK1XV7EURV3hNhAhZIBqi0wQu+AbD3ZvL/QKmuWHXA8MgwklHWn/C1G+rFhEHq93HZxUvCNt77bnX7XGsYkQTzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657831998; x=1689367998;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g2WOu/MVvWMctVFRUABNAa8ifdmY5efMFMgpIHhve5w=;
 b=g8znDTeQMXS9cBwDNSiGj6T9D6d7Pwz7WzenFCjon2y/jasjSzEdVjnR
 GDiBHdo60Q3y32PhWkKUVZ9CmVJWMRwnQWGRGXZjwWdQ9ZpEPLCd841m/
 +3u4+1/Nu8+q0dBc/ap2yJBrYd9jzF48U160P2q+HLvx5gDSromsM64Xu
 /+dDtQ5m4zjm5cNZXxIKO3ChgEESjR7EGo3y7jxtjB9hCwdaL+qQjSi5i
 8+ibwtF0C9j/3zCv9QcwQhKFJ5d79AialPT8hGC/oKgj8FvweRCe1CQqy
 hhZtFZOdH5ED2ot+Jjz9en/RC068zPFV4/5HQRPPvkWO/RzuzobY7PDZX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g8znDTeQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix to stop tx_timeout
 recovery if GLOBR fails
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



On 7/13/2022 6:41 AM, Mateusz Palczewski wrote:
> When a tx_timeout fires, the PF attempts to recover by incrementally
> resetting.  First we try a PFR, then CORER and finally a GLOBR.  If the
> GLOBR fails, then we keep hitting the tx_timeout and incrementing the
> recovery level and issuing dmesgs, which is both annoying to the user
> and accomplishes nothing.
> 
> If the GLOBR fails, then we're pretty much totally hosed, and there's
> not much else we can do to recover, so this makes it such that we just
> kill the VSI and stop hitting the tx_timeout in such a case.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

By ordering, I believe Alan is the author? Please either correct 
ordering or the author.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
