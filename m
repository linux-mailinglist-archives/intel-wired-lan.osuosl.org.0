Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2957A92D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 10:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E0AD408BA;
	Thu, 21 Sep 2023 08:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E0AD408BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695286408;
	bh=ytq/4llUl5bdufMKtsKBdY9RUTyce8rmPT3C+Q3vS6A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nmx7ybhafx5Tsbb6cLQWyJfgEHPmJvmHz5qNM4r8gE+l5QWv6mq0WMVUHHWsUgA4m
	 /f8Avf1eZBgBogKsMwF0vqxSAd/qI1YbvnPllr/I/ALejdsF1WnXdzMG2vl5Uu0Kxb
	 +FHaCx5LhA2MYc8i1krubzc1quvW/bmawLukhDo3MqMWCHFiUg/16lS/BRySSQ9jTa
	 GAqTo6pw8xOEqKSFEbhqRY248nblfcWAYgVW0IKnXctKGAz8RdTMDFp0AJmKlPoRwn
	 1Z6A7wHrGTu4kinFsoLjhNxxDjjgofCcRIfRysipuGqL80Ojrqf0PxNkBILarFC5wO
	 sRp221RzEt4HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djdotQecPWt5; Thu, 21 Sep 2023 08:53:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFF8640232;
	Thu, 21 Sep 2023 08:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFF8640232
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF2C31BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 08:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5B5B40221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 08:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5B5B40221
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQLEG2YOzNN4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 08:53:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8425F4011E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 08:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8425F4011E
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="446930785"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="446930785"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:53:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="920654796"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="920654796"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Sep 2023 01:53:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 21 Sep 2023 01:53:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 21 Sep 2023 01:53:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 21 Sep 2023 01:53:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0RZX2gvM686hsfDKL1bs/3HOzpHO7x6RoL+Cd60yil0iMaf+WWAbRsIbXQF4Yy2z3ziizBUbD7/3X0OhQ7wewKWIWCYPuiJwFThn7nYN44Bw6kALm2y5q6zQJ3Zg+5pKKhpNphuLZ5AOKWpa1R9uUos8iThi9WVFKQLtmWuy2mwJB8S+XDmnMniPowSB8Bd5lT5bbMZxBSoqaEn9IMLkWVG78zszFqUmqrxt9YpYJvqnWoYKoq4CTsd3uT+tav1LHKIts2U6U+KWRsDROXJIi7cNoOUAEg55MJkt0BHMe1obxYrRV+2R58T+KUg9Vv9gwNN5FtEBGuvknUqmurm6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KgOfobflQ5EXtQJdDWKWQykq81wKAE/z4dCV04sP2Xw=;
 b=F3YMDE8LXQmG560CGYzIBxaWHwlBwJL2DGMrPpE8/MfvJykgKusI6dorVx5LbEnS5IHl1zIQ5mefz7tEtnnv6A0RAw2y+sIiED5WU1o7J/4xGmXRYbAW6zP9KYCJd9X2ynL59X3beZyrGPH5FvNs6Q06GyfugGq7fktfMzR+K2Tu1ijFJwR1oQCDxkyAmbDC/gtr8rSN+R3WRxtEZq/0/jpAAC4wt43LTE17ow6wJTUxwz+YHrS1eyCChIHyUqd4zHOMVwnUGzGVCk2PdaWQbPPF7MeUJP6COPTXNsdIeVqyTz+mZ/6GJ/0KWW/b6vv9D6j7tkd/UR8yLBy7k0P/oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by LV3PR11MB8696.namprd11.prod.outlook.com (2603:10b6:408:216::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Thu, 21 Sep
 2023 08:53:00 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.017; Thu, 21 Sep 2023
 08:52:59 +0000
Message-ID: <13c19c01-65ee-44ae-e11a-d3b108c5a97c@intel.com>
Date: Thu, 21 Sep 2023 10:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
X-ClientProxiedBy: FR4P281CA0024.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::15) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|LV3PR11MB8696:EE_
X-MS-Office365-Filtering-Correlation-Id: 8695cbdb-f9ab-404c-dfcb-08dbba8027a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: abJsl+cOdmPwg8wTH+4lGbqHqAw8GUFlviv39MBXyvZ/FYKQ5+oo2UFdKtp1G5sIzv0V7+OnCB64kkSOwGRJlZp8npYgmIiN+/u3hFy7iNUrmm2kLXIqsXzisFzUOKaKxQ+QR3OkLK8wcvaBpekx5iS4XctMZjdaxiMGf7p0HygvGHepauUdE///+Q+kYyGikGxXtVtp8O9xFmoEIsVeNn4dHiQBtff7Ru9HlFT88u5jMgmge4LQzwRIt8SOJwjGmXOIg2A6XFIf20dhDu8KffNTHeXo1SdTe2z/mf/vaWzJpc7jiCOi1AON7linLWtxVHU+jq93hkN2BJQRKAetlPIpvzjSUw+cuKLkthhxoGhe9QC0/3wAfM6uqlqLQIGJY5clZ+Psp4Nxe9b3Y6JQ5v5sf0rgayz6RZA7HivpVgk3L4lpf+O34LJZIfP00xx1MOWgv53bjY5yW7fVjKZHylMnUoI3YNIB/6D5pvCUYA/a0IHggNrPb6Nfui/i6cUa1E4QhH902aDGsvwDRYoRs8cAE364/K7YtivNJoUQAZ1ayGJLanDPIQ/2AShydLeOXlJrvx5VOYbESRCB4gX6xlBk8gOqzR4ALyhRmdxYgtGKK03F7zYxx96EQG8qybE0qRahCevlqWEgAKEZV1jet/iAtMy2vGqSS1uGfan9l9c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(396003)(376002)(451199024)(1800799009)(186009)(31686004)(36756003)(83380400001)(41300700001)(5660300002)(86362001)(6666004)(53546011)(8936002)(31696002)(6486002)(8676002)(4326008)(6506007)(26005)(107886003)(2616005)(6512007)(82960400001)(66946007)(2906002)(478600001)(66476007)(66556008)(38100700002)(110136005)(54906003)(316002)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFk1MlBLWUNubThCRWlhaFlzNStZUWdIQXlLeks4OWw5ejR6N2tIc29aMHlv?=
 =?utf-8?B?RjVoY01KdkFXOHFvMk9XM0ZQUG1pbndTaGkrS2lobGRRUEZXbExzZXlHMTZX?=
 =?utf-8?B?WjN2cUZDbTRXQW9nOUNDUm9iQjlER0JTR3B1Z2UvQThqUlZBMlFuMnlLaE1I?=
 =?utf-8?B?SGZXcDF4czNTNjNPQmVxcHRxVzBwR0lkTXdUUHY3VEtHWFpXSkFISC9EdHp4?=
 =?utf-8?B?Z3Z4V21IdmcvbzI3VWlmSERjOTVURVZKem5VUUJzcUFwTmUzYy9IVlBQOHNH?=
 =?utf-8?B?V0xmemw1NHhodEg0MjhCcnJQMExsWmhuVklxdHBjdzZDaEQvc3dJc3NGMDBP?=
 =?utf-8?B?SU9OZzgvc3RXN05ZWk15VEdrTDVHUStNdE9sK3NVM0pVMEVmRjNWZ1FWcjJD?=
 =?utf-8?B?cTNDVEQyUnZDSjBSUVdVTjdhQU9WY0VrVHg2dzFGZ1VaWGk5SGt1SXI4ZVpH?=
 =?utf-8?B?WENmQi9nQXJYWDZLd2FNL1JTZHlWU2RzNmwxM1I3Vkp1TVNrejU1cXVaRlU1?=
 =?utf-8?B?Zkp6V0s3d3F4VEJoU2pHdEtmOXRNZ3phcGwxVU5MaXpENVhSaHhlTzN0blpU?=
 =?utf-8?B?U1Y4U0pCeTdqVndSdUdHVXdESlA5clNQU3VjMCtJN2JodDgydWZSb2lPNFIz?=
 =?utf-8?B?d3lxTDhYTk8vL1NobHlqL2twQUVpK2lRTkFKSVg0anhHSElQUi9QV1F6UlQ5?=
 =?utf-8?B?RnB1UVNyTEVlWkJIaHNYdkNNakZ4Z0VrNUNiMHE2Nkw3aXRXbENPOHRMYm4z?=
 =?utf-8?B?eDAyV0NQejFrQkF4WTNUeFVsb1lkY0RGVHhyNkFIZUZUM3BzMnVIbjg4YmRX?=
 =?utf-8?B?aFpxdnBYNUc4R1AvOERSeEVmVG9uSFhnODhrK3BMSkZTSWtsRWpyREpXS0VF?=
 =?utf-8?B?RGJmdUlrejRMNzlzSEY1TVFQc3gwSjl5Y1U4L25yT05iLy9jRnJYLzZPaGhj?=
 =?utf-8?B?cEQ3U0hFM1Zib04zTURJRDA5a1F6ZVNBekpuSDdBeTFaM3RReUc4cC9VdWMz?=
 =?utf-8?B?N29LcFZSMG5kRk1WQUl6Z3ZzcWFCaDdGRm9kNmp4LzhTR25RdlVPRFpPcldO?=
 =?utf-8?B?YVM2dGlRVERNWitQSVdKbzc0bkM4cGJ3WXdLcGROcHlXT1lzRjgxV2JwODNm?=
 =?utf-8?B?ZkFGdllyaUx3QzlaRzg5YXV2SFhTa0I5cWFBWU9VaFQ0czhxOExiZDFDa21p?=
 =?utf-8?B?K29UaHpYalZFOG5GaFVBSlNjY3ZnZThIVDRuZmRjSW15N0pUUEtOUnFaUm81?=
 =?utf-8?B?a2VSL1VTVEtBb3RJS3g2cmo0TDhYWlVOM3Y3MW5XYXFpWHdUVTN6SnEwc3VR?=
 =?utf-8?B?bEgvUGtadDlyNUN6R1FaS0IzbUhhOEh4YWVBTEpEb0hYYlhTTk40cVdxWjJQ?=
 =?utf-8?B?Tm4yUVRmRnJySzVWRUhTMkdhRVdPWWlCSjRiR3gvbDJaNVRrOUpGcDZhQzY3?=
 =?utf-8?B?MlpMZk5kOGZhWHNCS2RWTGZwL0t0Vzk2YncvaE1jbWwyb1g3Ylg2ZEkvU1dw?=
 =?utf-8?B?VjJUd2tUbkYyKy83WHl2eXc2bkZFZUdDb2lwVkxESDBUTEgzRDJiTi9SNTUw?=
 =?utf-8?B?UEtmbEFYRzZpM1g0OEJEbnlPc1BlTnpWNTdVTTk3RUQ0RUVBTjg5cXpYa3dZ?=
 =?utf-8?B?elZ4R2I0RjN3a3Irbzl1bTZVOEg0VFlLS1F5NlduYmJEYzNwZDh1UzN0NGVC?=
 =?utf-8?B?dEpJbDYxWHBILzhGeWdHeEVZNGVvTk40YTc2UVdRTFFWRWY0VHQxNGNGSzBD?=
 =?utf-8?B?WGlWd1lqOVZuUDZjSk1ZMERWRmptSm13R3JCcEJEUTJvc0p0TXJZYzMzQko4?=
 =?utf-8?B?Qmw3cnBCdWpGRnduNWJMS2ZweC9WckNjQ1NHRjlyc0kvQzVtVUR4dk1kZkU5?=
 =?utf-8?B?Kzg4andkNGlUWHVkQUtNeThMWVQyNFdCM3VUVTlURlpvUjVid3VNOXBNNTQw?=
 =?utf-8?B?WHQ4bzJoaFl1OS9kNGpCdVM3cW4yMnpqbHFrWVpPb3dlZ0ZHWFgxNU50eGZK?=
 =?utf-8?B?MXJ4WnpWN3ljMUNIaFlmZ014aFo0bk1MVkJ2eDBkbVJlazFKYUJsRkoxSjBu?=
 =?utf-8?B?OHpuRklua0Zic1JjOHVvQnlqUitacHpsWUwzejVTYkduRnk4N3l5WGJESlNR?=
 =?utf-8?B?aWZZOHkxbGJDVlhHSXhhWVZ6K1F1MDdENU5Pd09hTzZPQVNFcFk1K0YrVHJV?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8695cbdb-f9ab-404c-dfcb-08dbba8027a3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2023 08:52:59.3361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iS7mHUKTxSujl+354q5MxItwOiwPp+jBCxPKDXJ2mVnD5TwLn547lUYgJSnp+BJqlSuZ2ZmWQPGlFbJHJMapKJnp/iBVb+wvklGHykPovrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695286399; x=1726822399;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CMwyTj6Ws8q6lFUeH+2k468x8yu0SkyOfpCW9qWYWY4=;
 b=G6B2TdEZOC7Ns9liCEQp7Cd+PCYAn9yZoDNRTmpK55Lit2jKQ25qqVVi
 OAno9eJCVh2bnpjm/h4YDZiR6YBUO2xfaePmCcyVYu9NrpWxrqJm6fpJ7
 RI2yRlkqeIcxRx70s5xu49zrN6WmROniQiExv1mmvvPjZljwMKJe6rUir
 s6Oixx8H92DeRSWh0/VRKc7E1J2LDyiKEWzjQUW/fOsEyl4dQXjrXTEmN
 UxXzM8gOYBWB7Pful3fLYH0dgKfZYn/4t57+IaMyK1N0yyKgBjNcqk2nj
 c4pZE79oLqfD+G8wsn3XjpvSbK3lAyWU18T7J70XAW2FbyEXLFTFARN3/
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G6B2TdEZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] net/intel: fix link-time
 undefined reference errors
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/20/23 20:07, Alexander Lobakin wrote:
> Recently, several link-time issues were spotted in the ethernet/intel/
> folder thanks to Kbuild bots and linux-next.
> The fixes are pretty straightforward, just some stubs and CONFIG_*
> guards, so resolve all of them in one shot and unbreak randconfig
> builds.
> 
> Alexander Lobakin (3):
>    ice: fix undefined references to ice_is_*() when
>      !CONFIG_PTP_1588_CLOCK
>    ice: fix undefined references from DPLL code when
>      !CONFIG_PTP_1588_CLOCK
>    idpf: fix undefined reference to tcp_gro_complete() when !CONFIG_INET
> 
>   drivers/net/ethernet/intel/ice/Makefile     |  5 ++---
>   drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c |  3 +++
>   4 files changed, 34 insertions(+), 7 deletions(-)
> 
> ---
> Directly to netdev/net-next, build bots are not happy and the next
> linux-next is approaching :s

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

I like the `if (IS_ENABLED(xxx))` approach more than stubs :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
