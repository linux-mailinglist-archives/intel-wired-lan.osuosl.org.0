Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B7576B585
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 15:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEDE361150;
	Tue,  1 Aug 2023 13:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEDE361150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690895443;
	bh=CM/hwuuEuj97L7uIgAvQ3Q3RMfkYHCTHK6ihjdnsqeE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kR00fqu13Z371G7qISxqK6l4SKHfv/hN8k/dSO78uY2ls7ebKIZp8iILNf7OLodnz
	 dRqvUVRWMd53Y/LdX2xgm0HuysvrIHszq86SlLPBa4F7ErK3AOzxSnK1BL4ICRX7QH
	 teZE6W5CzcNUU7IVx9LDG5TC8tDhiggNKkz7G39wdqdzbhE8hWTaoJTiB+9fbnNsvP
	 L8CoRDyA/IVCPVeivLU5sWhQpNCQswgwK7c7DywUWLv2j1QsGU6a9qmstuAGWJMktF
	 1NEV6RF0R98NP+i2KMoRlLaC0lkqzQIL3rsc1poTe7R6ht3mAMsaHfbzqjVjaj+dv8
	 bVh3cVRJi4D6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id okuMegEs7zKk; Tue,  1 Aug 2023 13:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5D1E610B1;
	Tue,  1 Aug 2023 13:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5D1E610B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47D921BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0643E61152
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:10:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0643E61152
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id saa6ICGVzgXE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 13:10:09 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C7366114D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:10:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C7366114D
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435617933"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435617933"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:10:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="758331768"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="758331768"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 01 Aug 2023 06:10:07 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 06:10:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 06:10:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 06:10:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjhGU0f/NMJnba3O2eovuyHZxCNUAv1+BEhSsDwEHt46Y5t0zKYWYBX3w02DEOWiLBJllG5UtVxbvx8bvXPhNeOTIAHX+bpHuv03NvgyofP0KOdVyR3gRWsUg0+Dx+dMLDblki1yIZkBAwaP7w70d1QXiRm/z0GGHolkXZrOlR8MzuYSw0CumhroFdNYBGIDq5a9NrSY4T12n9A7cCRIhd/5bchbTPnj/kENw97/uhYZ9Gq1nvYkUbBmnNjqDVPVkJwxV6zXG3SCIhsTO/vRfwbMFBQeEEEPoU4UFR1FNY+MGzTs9rpd/15/2Zk2xxCLNCsnO39+fvjLE+5vn0t6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDIDPVEhVHrJxtDs7rokQ2y+q2en5EEex92mJEhszYQ=;
 b=iLe4DvRNG+2C9S02nasNYfIv4LHqH1LTaGiiwCZ5cIm8mZWNZ/pxeuUWFOA7GVDlxjdemGIbYiJ1zoTHcawP5inrNMHXIchfF0GY5yP7+16IHl6aQPZHIbzTlKJVs02Tj3GtJh4uQKopq77XeC35lFsHfgPUMJIu2jd8f5ytnkKM8TrYOz+CjoZL8ZYlkS/HRcVge0DHSR5DDqBIxDsUR47+zkfNM5pWzuSliaPWAfMszKZbheChlRgk4sFO2Z8BrnU1jZf+a3usRI6Uf7TcAWmq4AWuLnQQCsLBTM92rswpf2Ki/j7veFRMxVmmFByujdZE0MBqirG7vwmoy9mzzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS7PR11MB6063.namprd11.prod.outlook.com (2603:10b6:8:76::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 13:10:04 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 13:10:04 +0000
Message-ID: <b63a8f5b-0bc3-3a27-416e-d0943cb0d147@intel.com>
Date: Tue, 1 Aug 2023 15:08:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Kees Cook <keescook@chromium.org>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-2-aleksander.lobakin@intel.com>
 <202307281537.AC1ED9CA@keescook>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <202307281537.AC1ED9CA@keescook>
X-ClientProxiedBy: BE0P281CA0008.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:a::18) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS7PR11MB6063:EE_
X-MS-Office365-Filtering-Correlation-Id: df43824c-838e-4a5a-1458-08db92909eed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vRDQAoc/muY8oyV6jHdutziycwglsl/tDBsWJMusbPrx4WpG48rSJ1gg5QbNdtV78SJl3PgTIQEFJf+UY9kpHtsehpV4f/6GPCZ+HRnwda7R63+b+FbQeE3Ll3SZxCIG3EzmfTW2uNkXsEyBpdHUZufDtoQYi0Iei0pSoHpy6DBquRNaShDyw88k/pksH9Hg5wAQpwAM/CBJN+2iRNZ/PpOIiJRHvTtvFTLiNyVvorvAY9rjzn9GBNeLl55K3gwn3aBTg5A2PqiJ+Avwt0pHQxggOAHl/i/vKb6Do95hHLR1ZknaYMSZu/J2m6m47edqjx2tYxEC4YN5PLZrRUIkAIUuHZks+emPQlDWon5DBUhajSpy5JauyXd1ggUGKrEXF/+Ggrn/hgbzojsGxec/bTz0g4g3X45x2ADQf4nazrrwQ6ixsvWu4+QL1lQ4AyxoPY3gpmnRS+KqIV6jDTAkSHxbp9f9Fukh7oBy7mpm5SNvWa//meezL15+QcUQ00FWNyeuJ/GHiqyZ6BG1daH3keDDMxqOrl+VSsmvSX05Bq5pcgJfhoaw+i47U9fKBuzuBYcM6Bimb18pfOhCJaPfuX1O2g+Kvezo0Lyb3b1DVHWX88ga/Bm2nt/iNRH9y/m2xaEa91VpO1ei6+2Vdw+zl4gRDH51jBDVB7tOvo41B1M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(346002)(396003)(39860400002)(136003)(451199021)(83380400001)(36756003)(2906002)(86362001)(2616005)(31696002)(38100700002)(82960400001)(41300700001)(6512007)(4326008)(6916009)(316002)(26005)(8676002)(8936002)(31686004)(54906003)(6666004)(6486002)(66946007)(7416002)(478600001)(66556008)(66476007)(186003)(5660300002)(6506007)(81973001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWZabVJLSHowMVRsQjVKMEUzK0s4L3JMdEJtQit3M24xUWl0dXIwalBUTGpn?=
 =?utf-8?B?bkxRL3R3Y3lKMFZjWC80bnhDcS9DeWVpbGJoZlozQXF2MXdvRmVTR3lpclpQ?=
 =?utf-8?B?aU91VkVFNEhia0JVYXhFQW0zL1JvS0dZcTVqMUVNRk8vU01CZUNxY2s2dk40?=
 =?utf-8?B?M1ovUkpmYWJlQjdkaDV4L3p3dmZSQVJLNnRMMGdOd2h2K24yeHZPbTZWRjFZ?=
 =?utf-8?B?aXhNVEhwSDhJTlA0ZkROYk8yVElFSC9vcklLWU5Fc1dWQWRINEdzNnNjV3Bi?=
 =?utf-8?B?VkpORi9CeWtDTU9nZEFxdnd6NkdpRDhQL1ZJWEdBaTkraE0rNHJxYktOUUVQ?=
 =?utf-8?B?cGkwNEV3QmNmWmtod1JYQ1VlUnhpdjJLRzliNnNwVk5PckphTXZIR2JMUGFz?=
 =?utf-8?B?TlBYaUJPcFMyVU9KcForYnFLTFlkZkdkUmdaOFUxb1I2TEhOaG05OUdWT0Zk?=
 =?utf-8?B?RGVPc01oRStHb0NWU2Z3WVg2SlhQMk1xQmpNTjV0QXRwZERReHN1d0RaMnM0?=
 =?utf-8?B?ajhxY09CZEwyWGJDWjN5cy9RL3kxR3VyTDdVRWViUW9tRTA1QUJaQ3VJK0ll?=
 =?utf-8?B?ZGkyNGpPVERSTTQvRXZSUkIxQVUyUnBEMXVCcEg2amswUkdEakZZeWQwSFFR?=
 =?utf-8?B?MXkyRWRHb2ZkbVp1TFg2eDZQckZOYVM3WDN5QkhSUmQ3NnRxRmdxbExrcEtx?=
 =?utf-8?B?Uyt0aFUvclRRL1I5STExYUN5MGpnRWV6SjBHNzBaMjI1d3h1STdJQ3hGZWsv?=
 =?utf-8?B?UkoybVB0VXdRM3pOWFVMbEh5cnE3TGs5YnhwREFJQUd0YTFNbWV3UU9lZCtL?=
 =?utf-8?B?WmJjK04vZzliWGtvYjNveDg4NitISzhjMlFYM00wR0x5T1hnVjJCV3BKOTdW?=
 =?utf-8?B?TlZld0V2ZEJrN1k3a0NUM3hvclZ2MDlvTHJHVUZGdU5odTdNVTRBaERyRmlU?=
 =?utf-8?B?UnBCRjFZejZmTnlKMzVleUNjclFiQmxjOC9lNjFXd3NMTEdYRnFidzdGM1ls?=
 =?utf-8?B?WTJ0cVBDbnV5NS9PRnRDbEExZDVFbmRZTXZvZDhtcUYzaXgrczVMNFA0WHJR?=
 =?utf-8?B?ZnpsRWg1YmdFRXJ4TE1LRnJPb0pVZTRLa3lMUkltSFllRXp4ZUZ1SklkZ21L?=
 =?utf-8?B?M1JvNXVwaXpEb3JIblJvSFhYRnZ4SGorcGI1WE0vTXhsbmsycEEzNllwQmhJ?=
 =?utf-8?B?OFEyblliNWZlaWVCZjBZUEwyS3pPQVFVTkF3d01mVDFBRWpUNzJyWlB6MFNM?=
 =?utf-8?B?Q05ROVNkREdsVklQbkZqM0orWEFQc3prOC9UaFd6Yk5meHNOcFlGbHd1Ryts?=
 =?utf-8?B?Ui9ERGtkZHRwKzZTRlNaK0VZQzA5TzY5MTcvV3ZacGtxOTd2NzZjdXJGelFH?=
 =?utf-8?B?Mkhka0tVRUIwQzZEaXEwMFR0TCtQNXZ3cU55L0FsMWZCL09ibnFkdWlrRG4z?=
 =?utf-8?B?Y3lGZXkzaFhGNmp0d3FjM0doMDFzYU51QUxXeTBudEgzZ3NudEl5Tlk5NkQw?=
 =?utf-8?B?eXE5Yldld0M3eU1QNGVlS2RzNFBaZDN6aG1UYWl2VDhETkt4enhZM0RDLzdU?=
 =?utf-8?B?QU1JSXpLS0ZiOEJQcStaRDRwUmNOSzZ5VEVEZnkzbHdYTmhyNGlqNE9uMmdl?=
 =?utf-8?B?Ym83VXZmMk1sWmdQZDN4amZPRnpNVjkyRnpXQ0tXU3BzUGFtRTdoYUdBS0tx?=
 =?utf-8?B?NWJucXhEYUxMNVF3SlhVWlByS2IzTTVMdDNNR2J2OXNSNTk0WjJrRWRMczMw?=
 =?utf-8?B?ekN0bkpCeDd3bFFMN2Z1OGtFVkJhM3N6eEVxYnJsMnVhTWVCZktHOXQ3ZXlQ?=
 =?utf-8?B?ZXRHeFd3Ry81ckFtcnprZjNxRU1ZSTB6ZXdod2xFVVpFcERPWXJQYU5IRk1y?=
 =?utf-8?B?NVZhUzBzQ0MyY1RudjBWaXlEd2ZtSTY5OWVOeFVrZUFWbEFEZlVHTEkyL25k?=
 =?utf-8?B?aEpzbWJxQ3YwR1EzWFdkSWpaUEJVOFIySEk2cThaZ3Z2RmtsRUdaRU1jeE1J?=
 =?utf-8?B?Q3Y1MnJaWWhUaDZXajRwODVNaHlUVXhsR1dHL2xzdTdROUVNVWZudzJVWGhr?=
 =?utf-8?B?STlXOXdpOG9YbUxvZ1RnSUo5UVZpeDlDUmdxN2lsRkJmemYyTjFDaW5JM1JN?=
 =?utf-8?B?M29zeUwrVnNvVm8yNXJ0em1jbkxOMW9iQ2gxU0FKalRnWTlHRFdjWExRbDF4?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df43824c-838e-4a5a-1458-08db92909eed
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 13:10:04.4522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fgf19QnWjSkDYNeWhCtCkHFe91D4Stkin04sSiXjrteyz5CDERcpy4T/WLp4I96QQnRExUWKVJ5CsDzxtT5KkeRzTVT+8GcR1h91ySv4rfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690895409; x=1722431409;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xSBvbhDo5xLhCh8yBMhqTtyumNWk1osoSK883uav+w4=;
 b=a3pAyZpuS5aOUFl0/RE6eywbD5JTpaYiAOHvrdV2qAIeqUywBFTN3lfg
 E2Dy3VVkoSqvm8vqhT4dVEfpGg78KARzNoNBoOyNFqhU4W7ms5Bm8azFN
 EpLXyqwopENae7x7/y90Z8up/ef19QoEpsXMWt42Cp1lPy5aRe8YoXJc/
 Pt3IRse4lwjQTxJpHN4uXGAT7FgvsEfDdWmALXsdGfJ9LDL8zNzZz0WFB
 mrT0XE/xK7TvDYGdH7dmiFa+WQRgZivwAdxEObWD/08pOySDQ2p7UF2XK
 +kvvel/RGj7B0gA1E4j4oFtLdDNMo33MCKatX/3pCBcTWEh0z0zNylzot
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a3pAyZpu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] virtchnl: fix fake
 1-elem arrays in structs allocated as `nents + 1` - 1
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>
Date: Fri, 28 Jul 2023 15:43:26 -0700

> On Fri, Jul 28, 2023 at 05:52:05PM +0200, Alexander Lobakin wrote:
>> The two most problematic virtchnl structures are virtchnl_rss_key and
>> virtchnl_rss_lut. Their "flex" arrays have the type of u8, thus, when
>> allocating / checking, the actual size is calculated as `sizeof +
>> nents - 1 byte`. But their sizeof() is not 1 byte larger than the size
>> of such structure with proper flex array, it's two bytes larger due to
>> the padding. That said, their size is always 1 byte larger unless
>> there are no tail elements -- then it's +2 bytes.
>> Add virtchnl_struct_size() macro which will handle this case (and later
>> other cases as well). Make its calling conv the same as we call
>> struct_size() to allow it to be drop-in, even though it's unlikely to
>> become possible to switch to generic API. The macro will calculate a
>> proper size of a structure with a flex array at the end, so that it
>> becomes transparent for the compilers, but add the difference from the
>> old values, so that the real size of sorta-ABI-messages doesn't change.
>> Use it on the allocation side in IAVF and the receiving side (defined
>> as static inline in virtchnl.h) for the mentioned two structures.
> 
> This all looks workable, but it's a unique solution in the kernel. That
> is fine, of course, but would it be easier to maintain/test if it went
> with the union style solutions?
> 
> struct foo {
> 	...
> 	union {
> 		type legacy_padding;
> 		DECLARE_FLEX_ARRAY(type, member);
> 	};
> };
> 
> Then the size doesn't change and "member" can still be used. (i.e. no
> collateral changes needed.)

This wouldn't work unfortunately. I mean, you'd still need weird
calculations.
Speaking of e.g. virtchnl_rss_lut, it's always
`struct_size(nents + 1) - 1`, you can't just use the pattern above and
then struct_size(). Not only legacy padding is needed, but also
calculation adjustments.
Or did you mean define the structures as above and leave the
calculations as they are? It makes me feel we can miss something that
way. With the series, all the broken structures are processed in one
place and I thought _this_ would be actually easier to maintain...

> 
> -Kees
> 

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
