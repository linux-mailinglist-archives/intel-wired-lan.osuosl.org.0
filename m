Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A52D70D6B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 May 2023 10:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A004402E5;
	Tue, 23 May 2023 08:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A004402E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684829294;
	bh=1k/Qbxb3tprL4fJZtIHl66V9rU8+X+g+izXeSCaWYHk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MHS/C0RJGnrQqI1JZMCHRSp239i0sbX1z9avdJlirY7Yd0NRmPEXvfHWR5nwMHcsc
	 sf79RmoSw5wSWNnZcxxyRo6RuhIq3EjKaUnhVzu9pkXil8D0YyECKapuBOuys4D19n
	 ZXugAsItQQou1okhPRFIdioAnG5nAJpTDX+LDOPkm7R82w4UYCd4vJ8WKL3635EL+0
	 DQcALvVrRoSsGXAa/C3EA64VXAYvUQMq2JU2HUe7+dxaQCFjwOeYsgkkD2koTjKAIS
	 tDpFDiNNK9+E4cODE2CXBvACi1OT06nXluIYfT7iBYOMI3mW9P1oJOXGTHtkgOSZdv
	 WfxZ4vMKJsTIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TAcUDvdzBHrQ; Tue, 23 May 2023 08:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA784022A;
	Tue, 23 May 2023 08:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA784022A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C4E81BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA3C741E28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA3C741E28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hh-jsw-jqKKq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 May 2023 08:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66E844002E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66E844002E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 08:08:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350678197"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="350678197"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 01:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="768904448"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="768904448"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2023 01:05:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 01:05:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 01:05:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 01:05:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 01:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQ9SYgymG/MPKX5U/gLeAg1eD6EQTdk5/YBK+oDFWc1/3NNff4xqkpFqyzSFl0HbwDjinZYMjnRTnRLoFuKQ7OT7OKvFQz7bkZJlad2K7EF4OGMr6S0ub7lVqeLiPv62Ix1eOANX+/gue8Q4giyCZ2fNIsvRPQZnrajdzHwMhA503OXZAsQ1V88tC0UGbOWtplp1j+6FMdjqIypyRjZVjrXTJkNa5F1VL9s2NDzX6QzjrH7k681n8iPJgxP2/3urya9U66vQEozU+p67K/WBGpeZ6aDZU1MWyJNR5tqIt9R76OrYDiY4LqgN8Zr4NtWEFDByvjXWA337tHpvBpcY/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hy1tV7RxNPWzYBQ2V73oIwEQYOY9hkQY8DoyqX45+c8=;
 b=ILVbyzE/nqpk6MqZdc1+WJAfAKLmIdgFCI2My/JyFQoZqA87x4Q8qb8nfPsI1bQjaS3LFNq3AEVjgaSeMtCkG0TbEHyCyYfGzNe4IBEeVrRi8VdSkMFnOI5/ztyQiiHWwToiNnmr1syzEs3JuCNRIZcQC4n7vEsYtHQ9SjJyA5nNqSZpfyx/+Ila5gxYFgIppHG02bRxpXBJLsqwk7XPP9Km3/JdsjndXeMhFFmZ3F+/0yTI3MAE2FyDU7lqvKKIoOB3q6UpxACU+oIoEuzfAdnoqDXRlkkEjaksxdKKgffD5a0jwr+s8oE8cNvxnKlQgAAdt83u0814sOXxzFrlVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5471.namprd11.prod.outlook.com (2603:10b6:5:39d::10)
 by MW4PR11MB6812.namprd11.prod.outlook.com (2603:10b6:303:207::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 08:05:36 +0000
Received: from DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913]) by DM4PR11MB5471.namprd11.prod.outlook.com
 ([fe80::907c:ffaa:352a:8913%7]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 08:05:36 +0000
Date: Tue, 23 May 2023 10:02:42 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZGxzIqbkgzSBWSIX@lincoln>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-6-larysa.zaremba@intel.com>
 <7a1716ca-365f-c869-3a57-94413234fb32@intel.com>
Content-Disposition: inline
In-Reply-To: <7a1716ca-365f-c869-3a57-94413234fb32@intel.com>
X-ClientProxiedBy: FR0P281CA0090.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::15) To DM4PR11MB5471.namprd11.prod.outlook.com
 (2603:10b6:5:39d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5471:EE_|MW4PR11MB6812:EE_
X-MS-Office365-Filtering-Correlation-Id: b2d84a10-e3ed-4a24-2004-08db5b647d41
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WS5BxjSYvrRskXYJpLDHt1DQTacq6QF9SaWoYnsWWOEnyIgmV/6HAMRy33OGdzjPar3HC1TjqrBvjeDEc2erOZwOjtCL/4vV2DJfpIFVvmtrccuZMfIcYof47eGNO2hd4QJsTzALWgwtbzvd8XV4+SvMkidqMd4ACUo0wcYXWz/XNaYXEjKTjSAa6bip2Zu3dOr4cB3IolHH8OTgfKNLnXN8TtS7gTBQoIAiOodcbu98GqtHxzFaAY7Le01vz9LmHf1FGn+w+fznxmkxutZfQ4WGO7XrbWLSekBuTvJ1eku6gGUchanIbsWwbtKMpJLW2ke0KKggJ8YYe0GFWmmDf7AnpIiBobdw6PM9RGJ6rN8K3UDV8tQiy7T9YJSlY1ntLuHL/d3p03H+/f9JGcd3EgwYVHjTzdPL3CLw5Baa+rkBQCeiy2FMEbqCJ7Qqu2c5dpvmBywZklmiH8gXbiSbNV1eo4/3a74jD93M4S1KPcs9dTsNYE+by9phjGuT8B5RmnajBXvvRedngfDZeEqheG+cFDSohDTFWDKqjsQQ24kQA1QHwYCL/IqZ6s9mcVzy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199021)(6862004)(8936002)(8676002)(5660300002)(44832011)(7416002)(33716001)(186003)(83380400001)(6512007)(6506007)(9686003)(26005)(86362001)(38100700002)(82960400001)(41300700001)(6666004)(6486002)(66946007)(66476007)(66556008)(316002)(6636002)(4326008)(478600001)(54906003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FlOdnT03fZjvRHmKkPQEbtUUhzxFNX+7PqG+RrxoqjvZ/v5IrGMXXqCLyLPp?=
 =?us-ascii?Q?nDQVtz5oD+2+K8ftiRFtKAtFocEgNQkBIAETqQEcSR1nvIJ6LsjUrg67Uopj?=
 =?us-ascii?Q?GxkvyZ7CQnwL8w4Qj6oz3zonsO585W8HRUZtLPY3COVb/cWjAnA9dqzAWDiJ?=
 =?us-ascii?Q?xfvB/h4jzgLpnxhBWXLX+73meqSbWd8yihS+hSzHqKauBIkA0txhrq15T5YT?=
 =?us-ascii?Q?V0WyZDGXZL6JcY+xeobCJO7teW7vqJTV5IsYpnoJfAQDsA9iv1vTpxfWqvM/?=
 =?us-ascii?Q?0+f29qHBDzRo4UDTdVsCou14UymcQ6+qfTQ3JV1zZk2gjjiaMrl+rvECDilh?=
 =?us-ascii?Q?XSOAGhOm8JHpQkeCj2iRp7xmZa7lmz1vQjUUlzxjjSBprPStIGSguPcS/6hb?=
 =?us-ascii?Q?sbAbQyFB2PIYTtzp0fi8s7sBcos2g9cYCooVhH2utW/X+vYBlLLd5RU0J0Q+?=
 =?us-ascii?Q?TeeURtwq8QEBljXjBtvIAQBBN161JVlc0U34i4K16tbjLAdLaWfYpFnB4bzk?=
 =?us-ascii?Q?NoPcN2NVKH1JxMEpmAXSaAof/nhPVtR8hAyNT8zhLDIWt4cBb0N5Yqm4Kcc3?=
 =?us-ascii?Q?K4j05YCajaefRLe23e7w3VWmJx4z2HCJcTn7hWQcUcncT2tz4FOkkaau4QML?=
 =?us-ascii?Q?tSzWGA8vMRhnwQpWOUEAp8KVPnU11+RKcZiGVZWRqddQmoCzQZ99/HzmWgib?=
 =?us-ascii?Q?y7OuStvqJVyOj83HPQt7qbJPKQ51J4f3jCYvMtikVwauMtq25vW5FG//sBpW?=
 =?us-ascii?Q?LgIiK68bJA5FLSxYHp24ph8rJ0WYk9gvbRhPqbyVBOHLQ1j54ZKfB/RK7IG4?=
 =?us-ascii?Q?RIx9tBczfHpTiDtJR5VxH/+pc8rISL3SPHSz5zKITVAVVuBvs8/UJXN/n+ju?=
 =?us-ascii?Q?ZnM32s9+qchmP8aNNsvNxDxlEb2SjKF5MYGsRf1OMN0ofwet4VfpEu9EhMDk?=
 =?us-ascii?Q?24aDz1bW5sag63DITbMzFIpv9Ij4zT6HbqG8Uk7lRdqAP6NL2pjQekDgOO6i?=
 =?us-ascii?Q?s/cykrhETJimPJdISldcVDS+zR2/Jua8PwnfcY7uzrBwe9du5vjTdzZpWsr5?=
 =?us-ascii?Q?pzcUCjP7osdg2jmkMhfIcXOCnGSvtSscSEMrqmcFkMpWIONto7KYjCzrfy1V?=
 =?us-ascii?Q?oYycBNpGKDHZXHk4JgoUObvD8qXVYyhWtadvwRr5JkT7AD/9YHvJRpR0ZxdX?=
 =?us-ascii?Q?tnOYA0CmCbQg4GBE9orpe5zfXFuaPXrduAyOXgjeGx7gWL032XnlqgAfcJ32?=
 =?us-ascii?Q?rX8pgPCiR/gJBSUl6oK061PiA4fUsUHd6hbXvo9lpvceoYHWaV4su00qCli9?=
 =?us-ascii?Q?Ibo7XWdrD1GFYyNqNlVlGbD6VHKUfQeX7f3urNt00yPXqW12LXSOig3LpJHW?=
 =?us-ascii?Q?19ErzAQGs9q5WAwBeahmHeU3KhcRM9gfLCE5uz6lepoXpWUoNh8vxQuDf4Hw?=
 =?us-ascii?Q?ncPPZ6z5lMVL5l/HGg5/t8SmxkRziyLdZ8B1JpFscovyAu1O6TGKfOMk0oYI?=
 =?us-ascii?Q?MHY5h8Ezg1KaSgOpWn42qiKqfsICh3XnwW3cvthZ/gjzHgU1Xx+x6s2ue/SZ?=
 =?us-ascii?Q?Riw242zCp0v+DeJ/LQllX5m7mAknx486sMYaqvgleNersgRnCsNcj5dhGvwr?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2d84a10-e3ed-4a24-2004-08db5b647d41
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 08:05:36.2880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9X5JzENqK0ANcE+UE/LabAET8Fnj2A5NkASHFdIKb2UD/yMULYRQ2ttCzxX/tTRVLjRhsEiRZaSwDgJrwr9bJQaY+uglVufuyGpJ4mUMUig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684829281; x=1716365281;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5TOMDN4fok71tycgPZVphIXYPVKoGE699Qc3mpnM5Gw=;
 b=RPvmEd2VdhKIrxKKtWoJfg4w8vwYSlGGnCM4H44chYSPhNLnEP/LQFnZ
 x3omZvRvvt/meUpN9rdT7wqYDP7OkJ1upSK/ei//ApuK8EqzMrrydjLw/
 uC041yNCL+N1Tv7wsmGm3F7s1X7iVWP3Akf0Z7MGeCQrLpjSXojg2iMFt
 DLo6xuX5DoDsP8h3NBsWdtKiTRYGglxGoJ15jY6DysQ74DhHiPzKNxcIZ
 D1VpvGvSdluXSi6rC+YsPLMTGuahqlIcHJxY1i9NGmnkz2RBwG6Blfmgb
 IS9jXOB/1a94FdtKXPPpE+SWEMCRrfasXfaKte3c8Q5i41x6Cm0HUu5KY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RPvmEd2V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 05/15] ice: Introduce
 ice_xdp_buff
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 22, 2023 at 06:46:40PM +0200, Alexander Lobakin wrote:
> From: Larysa Zaremba <larysa.zaremba@intel.com>
> Date: Fri, 12 May 2023 17:25:57 +0200
> 
> > In order to use XDP hints via kfuncs we need to put
> > RX descriptor and ring pointers just next to xdp_buff.
> > Same as in hints implementations in other drivers, we archieve
> > this through putting xdp_buff into a child structure.
> > 
> > Currently, xdp_buff is stored in the ring structure,
> > so replace it with union that includes child structure.
> > This way enough memory is available while existing XDP code
> > remains isolated from hints.
> > 
> > Size of the new child structure (ice_xdp_buff) is 72 bytes,
> > therefore it does not fit into a single cache line.
> > To at least place union at the start of cache line, move 'next'
> > field from CL3 to CL1, as it isn't used often.
> > 
> > Placing union at the start of cache line makes at least xdp_buff
> > and descriptor fit into a single CL,
> > ring pointer is used less often, so it can spill into the next CL.
> 
> Spill or span?

I guess 'span' is the better word.

> 
> > 
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c     |  7 ++++--
> >  drivers/net/ethernet/intel/ice/ice_txrx.h     | 23 ++++++++++++++++---
> >  drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 11 +++++++++
> >  3 files changed, 36 insertions(+), 5 deletions(-)
> 
> [...]
> 
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> > @@ -260,6 +260,15 @@ enum ice_rx_dtype {
> >  	ICE_RX_DTYPE_SPLIT_ALWAYS	= 2,
> >  };
> >  
> > +struct ice_xdp_buff {
> > +	struct xdp_buff xdp_buff;
> > +	union ice_32b_rx_flex_desc *eop_desc;	/* Required for all metadata */
> 
> Probably can be const here as well after changing all the places
> appropriately -- I don't think you write to it anywhere.

Correct.

> 
> > +	/* End of the 1st cache line */
> > +	struct ice_rx_ring *rx_ring;
> 
> Can't we get rid of ring dependency? Maybe there's only a couple fields
> that could be copied here instead of referencing the ring? I just find
> it weird that our drivers often look for something in the ring structure
> to parse a descriptor ._.
> If not, can't it be const?

You're right, I could put just rx_ring->cached_phctime into this structure.
But I recall you saying that if we access ring for timestamps only this is not a 
problem :)

> 
> > +};
> > +
> > +static_assert(offsetof(struct ice_xdp_buff, xdp_buff) == 0);
> > +
> >  /* indices into GLINT_ITR registers */
> >  #define ICE_RX_ITR	ICE_IDX_ITR0
> >  #define ICE_TX_ITR	ICE_IDX_ITR1
> > @@ -301,7 +310,6 @@ enum ice_dynamic_itr {
> >  /* descriptor ring, associated with a VSI */
> >  struct ice_rx_ring {
> >  	/* CL1 - 1st cacheline starts here */
> > -	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
> >  	void *desc;			/* Descriptor ring memory */
> >  	struct device *dev;		/* Used for DMA mapping */
> >  	struct net_device *netdev;	/* netdev ring maps to */
> > @@ -313,12 +321,19 @@ struct ice_rx_ring {
> >  	u16 count;			/* Number of descriptors */
> >  	u16 reg_idx;			/* HW register index of the ring */
> >  	u16 next_to_alloc;
> > -	/* CL2 - 2nd cacheline starts here */
> > +
> >  	union {
> >  		struct ice_rx_buf *rx_buf;
> >  		struct xdp_buff **xdp_buf;
> >  	};
> > -	struct xdp_buff xdp;
> > +	/* CL2 - 2nd cacheline starts here
> > +	 * Size of ice_xdp_buff is 72 bytes,
> > +	 * so it spills into CL3
> > +	 */
> > +	union {
> > +		struct ice_xdp_buff xdp_ext;
> > +		struct xdp_buff xdp;
> > +	};
> 
> ...or you can leave just one xdp_ext (naming it just "xdp") -- for now,
> this union does literally nothing, as xdp_ext contains xdp at its very
> beginning.

I would like to leave non-meta-related-code rather unaware of existance of 
ice_xdp_buff. Why access '&ring->xdp.xdp_buff' or '(struct xdp_buff *)xdp', when 
we can do just 'ring->xdp'?

> 
> >  	/* CL3 - 3rd cacheline starts here */
> >  	struct bpf_prog *xdp_prog;
> >  	u16 rx_offset;
> > @@ -328,6 +343,8 @@ struct ice_rx_ring {
> >  	u16 next_to_clean;
> >  	u16 first_desc;
> >  
> > +	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
> 
> It can be placed even farther, somewhere near rcu_head -- IIRC it's not
> used anywhere on hotpath. Even ::ring_stats below is hotter.

Ok, I'll try to but it further from the start.

> 
> > +
> >  	/* stats structs */
> >  	struct ice_ring_stats *ring_stats;
> >  
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> > index e1d49e1235b3..2835a8348237 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> > @@ -151,4 +151,15 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
> >  		       struct sk_buff *skb);
> >  void
> >  ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
> > +
> > +static inline void
> > +ice_xdp_set_meta_srcs(struct xdp_buff *xdp,
> 
> Not sure about the naming... But can't propose anything :clownface:
> ice_xdp_init_buff()? Like xdp_init_buff(), but ice_xdp_buff :D

ice_xdp_init_buff() sound exactly like a custom wrapper for xdp_init_buff(), but 
usage of those functions would be quite different. I've contemplated the naming 
of this one for some time and think it's good enough as it is, at least it 
communicates that function has sth to do with 'xdp' and 'meta' and doesn't sound 
like it fills in metadata.
> 
> > +		      union ice_32b_rx_flex_desc *eop_desc,
> > +		      struct ice_rx_ring *rx_ring)
> > +{
> > +	struct ice_xdp_buff *xdp_ext = (struct ice_xdp_buff *)xdp;
> 
> I'd use container_of(), even though it will do the same thing here.
> BTW, is having &xdp_buff at offset 0 still a requirement?

I've actually forgot about why it is a requirement, but have found my older 
github answer to you.

"AF_XDP implementation also assumes xdp_buff is at the start".

What I meant by that is xdp_buffs from xsk_pool have only tailroom.

Maybe I should add a comment about this next to static assert.
Will change to container_of, I guess it's more future-proof.

> 
> > +
> > +	xdp_ext->eop_desc = eop_desc;
> > +	xdp_ext->rx_ring = rx_ring;
> > +}
> >  #endif /* !_ICE_TXRX_LIB_H_ */
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
