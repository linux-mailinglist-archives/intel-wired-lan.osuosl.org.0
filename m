Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB9772D1E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 19:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C4C660585;
	Mon,  7 Aug 2023 17:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C4C660585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691429783;
	bh=uNpvXTPdUhk3S1xmwmS3WSDGulOk6+72nq8cUCb6T40=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O6yy+bsmQ407TsUo5Lzxt9BjA7GyFjB4stpHFisf+rxF5+h/DSCJHZtfY2pWzd7Ph
	 +7QfO3SgI+mErTA/FIM3znzLl1bhE/y5fTvF7++8sBRdz+Nq3d/V1/4Qe/0xCekOuT
	 6ZpfrRdNCKswlYz3aCXEzyflzdtKUBOK4mvtFdAmknkgaVzKm7Ze0Z1mYEgRebNLKl
	 biH0Sai2yrcPHQ66CLKfMq6Onfc56SCo7H3A1eKHlABzQJ3K5shdlUdMAlPZS2TZeP
	 OwNsNke72c+AyiQoy+ph7fE+Qt8YuLQacYUTSVxocf00Fmg85DRMkHFHSC45LvNpPC
	 vDkywJbBm6CKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JhDAdz0B_NIr; Mon,  7 Aug 2023 17:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B66160C24;
	Mon,  7 Aug 2023 17:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B66160C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52E1E1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 17:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37B0440A81
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 17:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37B0440A81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5SE23-PEvvR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 17:35:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E73B40AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 17:35:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E73B40AA2
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="456994325"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="456994325"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 10:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="845119396"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="845119396"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2023 10:35:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 10:35:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 10:35:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 10:35:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 10:35:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/huxF6e3cBWz8j6raM2FAPiaSwmiIg1dJP0TjmREknlmkIruWYeqQDkTZhicTD8ftIv/+ho1wlpHPY8TivNLl+5qanGpljutO667GrCiJSksWP6YVaD+b0gmjwC2bZeN3g0smAjHbgzWm2kO5Iq0c9nF6gdGBNtf0Q2M1j8nNF/AN0dVXIQgNzaLPiIk1C0XX+15kh+HOlOGvYmg/LN3tNGTfqLS0xb/MOT9HajUMigrvZRD1OmN06J9uJqeQDpepc2QUUUiQ81jvyjBkAL9b0xQ7/T4S1LiPO2fPHxXlIK8eijfQnpHEQnKBnL+ohs7xb4RWDxGUg/4WvXC4MeIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h51L1Sxk+pj3bu7e1JfyAXzE1gVmayAocJY7CZeLvAA=;
 b=X+xjbXhFR8H5WzwrN5JeBmBlLbgmseiVPETDS0MnEBr7OQOYEibwgCxRlAJpe525Okf3fpUoCKflqVoboWe8HuJQY9QRLCnC65cLdkylMhp5DJ7C10LLj8cc/yVUMS+y5nrmeMV6eIBhNr2oq0PYCSvtvLwU5K4TkUk0s+qMoBUrZE3Ek3qKfyTcpyDk8TbbiO+FUB9TpRlQhCwKH9ouTdf+Av/lvDMYbsX+T4+WZBC1PCp1dezO0pR2N3uuRt3dsJTCNGXMmdupX5mz+W44/64Tn9f1xiH6eTfIruy0FeiCDVkN9Vi9PuHGsMMLHXcwEljaO+/gVqYI853sd8YmVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB6816.namprd11.prod.outlook.com (2603:10b6:a03:485::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Mon, 7 Aug
 2023 17:35:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 17:35:00 +0000
Message-ID: <e3985341-a0fa-0748-613d-d49b828e65c5@intel.com>
Date: Mon, 7 Aug 2023 10:34:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ruan Jinjie <ruanjinjie@huawei.com>, Ping-Ke Shih <pkshih@realtek.com>,
 "sgoutham@marvell.com" <sgoutham@marvell.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "s.shtylyov@omp.ru"
 <s.shtylyov@omp.ru>, "aspriel@gmail.com" <aspriel@gmail.com>,
 "franky.lin@broadcom.com" <franky.lin@broadcom.com>,
 "hante.meuleman@broadcom.com" <hante.meuleman@broadcom.com>,
 "kvalo@kernel.org" <kvalo@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "yoshihiro.shimoda.uh@renesas.com"
 <yoshihiro.shimoda.uh@renesas.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>, "mkl@pengutronix.de" <mkl@pengutronix.de>,
 "lee@kernel.org" <lee@kernel.org>, "set_pte_at@outlook.com"
 <set_pte_at@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
 <linux-renesas-soc@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>, "SHA-cyfmac-dev-list@infineon.com"
 <SHA-cyfmac-dev-list@infineon.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
 <20230804035346.2879318-2-ruanjinjie@huawei.com>
 <15759f98483947999393a25b857bc4fe@realtek.com>
 <815f4639-7a21-4438-b9dc-0b36f9b08b17@huawei.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <815f4639-7a21-4438-b9dc-0b36f9b08b17@huawei.com>
X-ClientProxiedBy: MW4P222CA0029.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB6816:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e6beab0-632d-4293-7d38-08db976c9ff0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lQ4xkXZDDMxiHB2sBRj2XPDy3263K2ZjgC+J02KAzjc9ErnV57BTaJ8VZY6aUe75hzBVossXgwBJvqM7gLl9tVKkG0oSyMm6I4rt1QOvSMXBYFynXqHS0er75GL67+Lp8JQo2MYpImYicMOIdFmVjU+rR0a4OCa8d1U5BVyqdeHS3BmmpSb/iDORrJOmWY6rpBJXe2mGcCa68LPQ5U9E3uywGgRx2lKO3XNY2/uPE2+0jL+EqGPyAviFb/b0BrWo8no6R3wKw86qT2LYD4IQotGUPhPZvKJHt3mSzNB1g0fQrsoGjX4VOBav4hqOorjfckznOC833z+VwfpgQX0No7V5JFZ6g/+jvFq3am5UY7jD3Pespn5cV7XMrnCRnoJi1OO0f7QaMbBGYwaPOGClSK9OXzUlI91EDzmIDLMqoAxee1LKxnvinQJ5gSfo/Z1a03WAMLhoVwZKeN85OWqkTw37iLpoq5xBpXdtKb1LBkgzPlswkgsGuvcwylnKMLpD65WpgqfVXAl4IQ+w5v2TkYzc5Zj7ihc/zsWoA6CpplyUJGf3DB1kEHJBsUJ2i1tZk/GYIkHtxx0waEEClptb0a3/fNlnz+dJmctpfs7teU/EAfjSkxWKrd7u9r3yMllVwCj5RXelq50GepBOpuATJvlvAvEbGNCtgtGuwMnKJZg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(346002)(376002)(186006)(451199021)(1800799003)(6512007)(6666004)(6486002)(31696002)(86362001)(6506007)(26005)(36756003)(2616005)(83380400001)(53546011)(38100700002)(921005)(5660300002)(41300700001)(31686004)(66556008)(8936002)(8676002)(2906002)(66476007)(66946007)(82960400001)(7416002)(45080400002)(316002)(478600001)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFJCSjhib2hxR0FoNXJHNGpKbktDQkRXS2oyWHM5a2w0dlBNTlJOcGo4Kys0?=
 =?utf-8?B?ZmxnZm9ON0s4dHplWmx4S1RzVmp0YkVVSmErNDh3TVE0d1paL2NLQ2dac1RB?=
 =?utf-8?B?aCtOeTBqLzA2S01wM05adGxHMmlMQzYwbWV6aE1NWmMzdVNKODNlOEpNYlE2?=
 =?utf-8?B?UThIVTJrc2VGei80N05vNlZGUnpLQjNxOXYwUzdZbzQ5Rkt4MW5KVUFZV1F2?=
 =?utf-8?B?bGhabW5OUklWOHVUcEc3a2tUMlQ2S3lEZmp2dHNRYTlJbzM5TnVTYWNXb21k?=
 =?utf-8?B?UmVCNUx4SGdSQWZlTGs0UGNqKzRpTXZ6Zks4SFRDMFBWZW5vZTkwZWlvRG9F?=
 =?utf-8?B?cmxiRGFQOVdLMlRySnhzaWZudWg5U1FKVEVFSysyMlBQUEJ0VDNHUGtRU2Jq?=
 =?utf-8?B?VElnMFVBN2l2NWw1d0Q1Y0p3My9EQlFXV1R3VWlmZ09UNzk3R3F0VXV4aFVQ?=
 =?utf-8?B?TzE3K203dUZSZGVZVmJZaUN5OXRuWHlQRDVMVnU2ZkdjemFwY3VqN0E3TFpm?=
 =?utf-8?B?MmlEclVNQWxadGZYRnhlZDFhQ0ZGS3FKTzNJQ1hVd3VqSitTU2RlWWRZdDYv?=
 =?utf-8?B?Q0VCc1VhZXhjUERGdFZXQ2NsdjdjbmkwNldNUzNPN2w4TXlkVDNzRTkyUVJ0?=
 =?utf-8?B?TFloT1ByaVV1OWFlc0pqQ2NrcUpTNmhSRitsZWdxcHhHVGwwTHk2MUYzMURv?=
 =?utf-8?B?VUxGK2JoWnIxajJQMDVMV0hDaWV3Rld5czBtUXFVcnl5NStWcGJGMlI5bG9J?=
 =?utf-8?B?aklKSU5tZWRWQU9xNmlYSTJabXh0dnZnaGhtSGt2OC9UNnh1OFNXcEl1TFU1?=
 =?utf-8?B?c2RKT0JERzk2K1MzQXl2Q2JZWWFWTFJ1dUJQcFpJUmZSN3FSK2liaEpmR2N5?=
 =?utf-8?B?LzBjcnB1cXpCMkFpMkNManBqbkFqbWlOaENiNktZS0krR3JkMnB4RnRxMEN4?=
 =?utf-8?B?ajhnb2FRK3JSS1lreHFncmt6YkVUZVlJQVFHaVJ5UzNzWS9qWDAwQnZqVWlV?=
 =?utf-8?B?REViWGhhMGt1WlUrMytsV05FbWJTV2RlbDNJaDNWb3F6TUwyMEt2aTRYcTNC?=
 =?utf-8?B?ckhwSHJQRERHZkxZTlpQRzVvN0NJWWhrOU5JNi9WRzRnWEEwQ0prVU40MkhU?=
 =?utf-8?B?aTRlVkdPWnUwZGtJZnlBaWI1MzJRbEdPNHJka1RjaDhQS3h4NCtEaXozRXZ0?=
 =?utf-8?B?SEQxMVU5RlVBdzJqTDUwRlBaN0RYOWhyZmtwdENuSWpTUVpsNlZlK0gzeDhQ?=
 =?utf-8?B?ZlNpcG1KMzBEa3pCTUVnaXpFaTFnQ1JmamVveU9zR0hDcTdDRm5qZDNCVGFm?=
 =?utf-8?B?ajBPekRDSjNQenZBNFRBS1RFa2pHa1MzWFRPd2VsT0JEQXE4c0dYV0hZQnJu?=
 =?utf-8?B?WnRSa013NUU1cERLbitkY1A0WkR0UzYwaWxYOFFldmpnMHlHQm95ZnJZdkRw?=
 =?utf-8?B?OXYwanVhZzdJaDJncWk2UU5GcmhTbEUwa2VFVHlaTmxiaXRqUG81Q1VzZzBC?=
 =?utf-8?B?VlZMblc4OUx3Z1EwVkRENE1meVRURmh4SXlNRlhSbkw1WTJwWGh0Z0R2VTB4?=
 =?utf-8?B?WXJIZmU3ZmVKUDFoelVObnd0Y0VTRGl6SVhyelc5bTdYTld5TEk4R2NrQW4v?=
 =?utf-8?B?bTJ3VjRsV0JDUzBrM3Y1dlN6bEc3Snp1eEVaOENFMzRpZm05RFQ2VWh1alJx?=
 =?utf-8?B?UkJGd1NQTlpFSHBOT3VPQnVEWEs0ZFFLaHFIZW5zaVFJS2NvQjlaK1dLTVRu?=
 =?utf-8?B?Ry9yN3d6NndpU2FFYmJLclJGSmFEVFhFZDlabUtSZFpkZmxwSHFDM2lXVHdC?=
 =?utf-8?B?cHRzdGpZTmVYbjJrVnQ5VFF3QU5jMHBML2dIakxhLzBYTGZDa0hWekNYT2Qx?=
 =?utf-8?B?ci84WjhCUGgyUUpBempWRFE1YnZ3emVFNHczcXQ5RkRvUE9yWWdVWFN5b3Jx?=
 =?utf-8?B?dDlKNXV0RDhnNElOUDRSQmp4dWFLVXJTbk1xVkI1ZEl0SzNaNGxVN1kvVXh4?=
 =?utf-8?B?SVNBdWhLaDcwSFNHTzdYaFNDbGtWOG9zU3ZCQlNlM1BGZ2FUNDQ4aTk5Qzlm?=
 =?utf-8?B?a0IrL3pBbnFwYS90VXovMU94U2pEbG55a0tCSHhJMWw4YkY3L09PWlpzT0pa?=
 =?utf-8?B?QW9uUlFtc0kxTmxpNUJ4S0h2MUlOY2F1aURmZmc4VVgyRTU1WFNYeU1KN0xU?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6beab0-632d-4293-7d38-08db976c9ff0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 17:35:00.1968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EMLI2My+ba1QOyyPhN+NtqjQ6LzH5E5SV8KfLiwmVrTCauXfb5I8wJSFQjVAwW4psJEVa388NkaEckHcTEuajynA/bnxIjqP4KhM+yrBr70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691429705; x=1722965705;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tLTgwqMgj1AlSzDKN2jQXk+6GVO5laKn9+bpjznwInk=;
 b=cS5pmFEWv/H7v0MNyxhPz6WrE8ezPg71SQ45uysstoiHUPrpKCo2WlNR
 e9kzEJWjp8njuozWkRQBUQnl2iC9mi2XqQLMPDbsansDtCd8UxPs+fvih
 ABEzmqPyy2d1IfKvWVRiGREVcJtl327OvE0FjGkD/8kSy1ddSTTniRyHI
 m4PvFYqOx0gLrzg1AdyJsUiAvCMz4jahVSqqdinjnlNAnBzzsviHfNVeY
 6ck6bqKm7WuAenYgt0rQlIL+Tc7ysNA1f6qxCwrdWh+4P3nGGBTOgvzzf
 AlcCTBmoDrUi6/KdEix3rhFTjamLg6G5wOflWZSM/JFUx+mDh8TOURzsO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cS5pmFEW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH -next 1/6] net: thunderx: Remove
 unnecessary ternary operators
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/6/2023 9:59 PM, Ruan Jinjie wrote:
> 
> 
> On 2023/8/7 9:39, Ping-Ke Shih wrote:
>>
>>
>>> -----Original Message-----
>>> From: Ruan Jinjie <ruanjinjie@huawei.com>
>>> Sent: Friday, August 4, 2023 11:54 AM
>>> To: sgoutham@marvell.com; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>>> jesse.brandeburg@intel.com; anthony.l.nguyen@intel.com; tariqt@nvidia.com; s.shtylyov@omp.ru;
>>> aspriel@gmail.com; franky.lin@broadcom.com; hante.meuleman@broadcom.com; kvalo@kernel.org;
>>> richardcochran@gmail.com; yoshihiro.shimoda.uh@renesas.com; ruanjinjie@huawei.com;
>>> u.kleine-koenig@pengutronix.de; mkl@pengutronix.de; lee@kernel.org; set_pte_at@outlook.com;
>>> linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
>>> linux-rdma@vger.kernel.org; linux-renesas-soc@vger.kernel.org; linux-wireless@vger.kernel.org;
>>> brcm80211-dev-list.pdl@broadcom.com; SHA-cyfmac-dev-list@infineon.com
>>> Subject: [PATCH -next 1/6] net: thunderx: Remove unnecessary ternary operators
>>>
>>> Ther are a little ternary operators, the true or false judgement
>>> of which is unnecessary in C language semantics.
>>>
>>> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
>>> ---
>>>  drivers/net/ethernet/cavium/thunder/nic_main.c    | 2 +-
>>>  drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
>>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/cavium/thunder/nic_main.c
>>> b/drivers/net/ethernet/cavium/thunder/nic_main.c
>>> index 0ec65ec634df..b7cf4ba89b7c 100644
>>> --- a/drivers/net/ethernet/cavium/thunder/nic_main.c
>>> +++ b/drivers/net/ethernet/cavium/thunder/nic_main.c
>>> @@ -174,7 +174,7 @@ static void nic_mbx_send_ready(struct nicpf *nic, int vf)
>>>                 if (mac)
>>>                         ether_addr_copy((u8 *)&mbx.nic_cfg.mac_addr, mac);
>>>         }
>>> -       mbx.nic_cfg.sqs_mode = (vf >= nic->num_vf_en) ? true : false;
>>> +       mbx.nic_cfg.sqs_mode = vf >= nic->num_vf_en;
>>>         mbx.nic_cfg.node_id = nic->node;
>>>
>>>         mbx.nic_cfg.loopback_supported = vf < nic->num_vf_en;
>>> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>>> b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>>> index a317feb8decb..9e467cecc33a 100644
>>> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>>> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>>> @@ -957,7 +957,7 @@ static void bgx_poll_for_sgmii_link(struct lmac *lmac)
>>>                 goto next_poll;
>>>         }
>>>
>>> -       lmac->link_up = ((pcs_link & PCS_MRX_STATUS_LINK) != 0) ? true : false;
>>> +       lmac->link_up = (pcs_link & PCS_MRX_STATUS_LINK) != 0;
>>
>> lmac->link_up = !!(pcs_link & PCS_MRX_STATUS_LINK);
> 
> Thank you! I'll improve it sooner.
> 

I personally find "!= 0" a bit more readable than '!!' but I suppose
thats personal taste and !! is pretty common in the kernel.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
