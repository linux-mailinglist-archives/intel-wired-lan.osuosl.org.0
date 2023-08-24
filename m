Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C54F787486
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 17:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB7574150A;
	Thu, 24 Aug 2023 15:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB7574150A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692892043;
	bh=J33i4jwcNiM8cq844glGlw91ew7N05yodlaam86Llb8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XhxHp4V2OSOe51u1JQtMa0A/7r90grha5ixuJpPlXFiGGcjNh6jO7xVHuRIMfLesT
	 H8t+wWJox5KX/XKeCHVm88Dh99zZeFHy1mJsB56of/MMYDt7ktgX8CQkh0xx4xAhEm
	 ykUAfjEVMFjbZX+5638cF6oq/i/qnWP05bq8JOWHcK4NaYSWlDD4jAkllX83aMfpcl
	 SB6JqsNf/z7hVIktr8qGC9W4EFq0ww5/T4Y7vgT4UiZzkdtLNnhEwqXLqMl+/8Eku2
	 BPmmWSu9T7CaNAWqBBXWvmTlReciLANIlw7p+0qeeAzgVxH5kCTc3zXKHtyfBSr51A
	 Q1yoLuWNYimyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vyn5CKyuI1WT; Thu, 24 Aug 2023 15:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 394F24059C;
	Thu, 24 Aug 2023 15:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 394F24059C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0492D1BF98D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:47:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD3DA4059C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD3DA4059C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_-R-R4wg-zE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 15:47:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09FA3403F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 15:47:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09FA3403F9
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405477694"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405477694"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:46:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="983762071"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="983762071"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2023 08:46:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:46:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:46:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:46:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:46:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NdR6PyRTCHGHxYLWfO3kIgu9EH/Ma9dVm1j5YkgZWpZQEVQkMhZ56QXAdmlqm9yfeSPD6fz8un18F1JsLcFE7PnApu26xHvPv8ctxkEAzM5KzjuaivJExSvMtYX/RN4XDry1/madRrciefnxgRhR8F2xFEPp1HkpyRwQZdtMwWbn/xxu1fsk0TL2AM2faLigpbNEfMItj0ukkOzeFL1HVLLspqWC7g8aTuIkcBGZMPEB9bzUI9eRwNTxZvHDkIX6Y3q2xkSDOkqqAVotvVYlWbtnMc19n8eZ2wQbUX0XNaTA3yZqVBQoOB/wJJseSimYAFrzp88jr2nkriLxml9HsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7byMN/Z3dnyRp8bGJwEd3n+wXeLrGVwivp86+E2PkY=;
 b=cHLbyAZ7CPf4bTg/jsG0/NMldcx5j9i57/uYo3zZtL2Pg/quPWZU3rPI+aHM4+gpdFmJQPJi5ROgau6HAwZzzb4psUf8VMgUHGXlsmMIhiSiNYatKbtyqRTypPddI1dA9UQSwyoG7lZQxr//xM9Jtah3RKzV0gosk3a92bjKHHkqC7nNbMt7FjPiav9+XZSilFeIUqdnH9KKH+a5nzoVgDdj7UDRaJ++iLyxqEJJW+iO3iJ0t7YRrQ5Ukq/zjvw2k9ig9VtO3HRbMbo52WbKnUGZZ5+cBnIwq6Cjjl5aaAllNC0QhqWa7vOhOLJRPiVNZAI43LNyKiH+yQz8sHvC5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SJ0PR11MB6696.namprd11.prod.outlook.com (2603:10b6:a03:44f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:46:53 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:46:52 +0000
Message-ID: <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
Date: Thu, 24 Aug 2023 09:46:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
X-ClientProxiedBy: FR3P281CA0186.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::13) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SJ0PR11MB6696:EE_
X-MS-Office365-Filtering-Correlation-Id: cd2ab924-f0bc-4516-fa39-08dba4b95632
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZkLJmgdZXHCAehCCXWjei3IUU9oDIPAShJNhKTKZPGGNBvmV5CsznNcwyNcsI99q7QmafW5fjMkjRWlynY7d/XNMXOvN/quqsduo8Kuzp0YL+/J6iTzS6co8olaD4hz02WgGBFal7HbK1U0u3ClQ0cK6i8Lqy6PRZ2o3Tkqsiv6U1teKUmK83ClTcJh416XflYpf8b3741skele4xiN4zSFusWwJeqCiVezMQDXKg0F2uN4Rdlh9UEXUq7QUSvlsKi+wmPOSFnVzkumKmXKZMSQtpho80eiK34OoTRi3aZJUlaVm8T2238rzvS81ZzoEk2opj0pGuZgB4FH1LCQDt1anRbx70Dn1pd+qewvo7DycRzOWZ0TdLBGlCBkJFGegwJq1bScfwJYx8RS+Vo/4tDvhC7upId5X9oZKTMVK8l95RytIrGgBdgtmF/uSuJTDCkeEtkvLGTmlGWx/Ss7zZ4Gkdg1rz1nR89akGzdXlDTrcyP5mWs0oHpSpIMhi2mgLy6J6mXbTbe3dQqQLgyuKKPZKx6fwpX8L2NGAHJ1r7eKhTcOBD9up1efHJ7aP+XyeykTDDAdeFSHSwhZJJxZI6iTcLLf6C9Jk5u0nBdqxE6ri+3KrteyABnUHzY29fM9l3bMGGOflSznKcHgm9gDmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(186009)(1800799009)(451199024)(66946007)(26005)(83380400001)(6512007)(53546011)(2616005)(41300700001)(66556008)(66476007)(37006003)(6636002)(2906002)(316002)(5660300002)(44832011)(8936002)(4326008)(6862004)(8676002)(478600001)(6486002)(6506007)(6666004)(82960400001)(86362001)(31696002)(38100700002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czczYjFWQXJVcHpjd3laRmh6RE9CMGhGdjRxNVI3ZGVqMVhOQzZkNFRKbVBj?=
 =?utf-8?B?TEw1anpzdkZid2NmdGZzUVNIczBXR2k2c0RZdVlnVHpNM1VMa2R3UWI5NDhR?=
 =?utf-8?B?WkNqYVhmMkRXQlFhaGd0YmF1eXpjNUl3bDlvOTFEMDAzR2p1di9iL3JzN2xa?=
 =?utf-8?B?Z1VlUW1jR1ZzWCtma0I4cWZTbjVOOWhKUnVmV0hVWDYrVDV1UUQrcW9OUkpI?=
 =?utf-8?B?NEt5TUpscDJwUlF3SmRTY1RTbGg5Mkk2SmFuNnNpVi9DeWQyNkpIbnBYQkNn?=
 =?utf-8?B?Ri9xNkh6NHhtSHozQVFvS2FiNXpPdFpCS3had0d5Tmc1b2pRT09idFZ4a2J3?=
 =?utf-8?B?Zm93Q3N2ZWFUZjUxaEJSeEhCNzRGMEMxQTJ4ME1ieEdrWDgvdlpBNVFGSFIv?=
 =?utf-8?B?L2VWUCtLeGRTT3JDL3VBNkxlSE9acHJ5eTNUc0F5cGZOd2FOdkFiNGVBYU1j?=
 =?utf-8?B?SElkbDRHenFhVHpLeFpublFaMUFJTFZtSzM0cjhsZjNKUXlkemIrSWFVWU94?=
 =?utf-8?B?Sjd3a29PSlpiTTJhZU0xUW5YdHcvSHo1clZmeXJROEM0eDdMUFVwcnlFVXho?=
 =?utf-8?B?UmlhRTNOcHBrODNwSlc3MFo3RmlsVFBjMWw2WlAxTzJQUS95cGR2YUZLSnhv?=
 =?utf-8?B?SE5hN1VRSWF2V3RDVWd3em5aWGdYS0tCNWRwaSs4NVFFVXIzMDhJamZxK2h4?=
 =?utf-8?B?SjA1NnFrZmg1NzhVbnc4Wk5uOVlyQVR4blYvWnZVa3pURlhtUTBWVC9pckV4?=
 =?utf-8?B?NGN0Y0cwZjZvdG1hOWR2TUxpOEZhazZDVERuRnpSbGJVcWNqMzRVWmtUdWI5?=
 =?utf-8?B?UUY3TXZ6T0U5TDJUS0JXWTduaWlUcjNjeHByd1lMRzBscjhDd3FUdWc1T1d6?=
 =?utf-8?B?UmFyaCtPQmF4TitlYWJZdE1qUGtoMEtxMGV1QVE2Q0V5d3B1bXl0elN0ZXBD?=
 =?utf-8?B?aGJIaWNFTXVJZHU1cXBZRnRSTFNPL3Y5U1N1MVVkWVE5bWZMbTRCUzJPOERM?=
 =?utf-8?B?bFVXVnNmUkpXZHZIUytwWnBEdjd0T1YrUGVrRWxBSGJ1dEdqSHB0cW1ZdXJC?=
 =?utf-8?B?WWY0S1NFR1ZtRm1BYUZuWlpVMmZVZUdOdnBNcnBYWWlmVXczVEgweVl0Z2cr?=
 =?utf-8?B?dHRLU0ZGTDBaMDNpazJlS21RaGVLSWxmcVJSeTV0ME96MlJUTXUzK3E3WFRZ?=
 =?utf-8?B?TEpjbk1UOW9OYzNxU1BTRUFaNkdLaE45OFc2V0dqQUNQb1lXOXppSVQ0MG40?=
 =?utf-8?B?dWx5amU0clpLckpSOCtEUU9lQjhzdS9pUElCTUtOU2czaWFYMVhraDJMSlBV?=
 =?utf-8?B?QUdsei9MM2xIQXQxZkpmNlFRYlNXZytlZGl3MEJhS0pNcGtlRnJTamxMMGdp?=
 =?utf-8?B?alZNeE43WmxIeDcrSXBlQ3FQcXhHK1BIc3Jacm54S01wamh1c3drZ2RmMm0x?=
 =?utf-8?B?Q25DSGV3azFWVG1kTHNUWENJQnJRcmg5UHZrMDRHeGNGWXphbHlUckVGRzJG?=
 =?utf-8?B?UG9sRlFuem1UbHhrZ05mYW1lOHVkZHgzN05nQmJnRmlhNlkwUUM2UWZ5a2RC?=
 =?utf-8?B?Lyt3cTNxYzV1S3g1ZnZNdFBMN09qaFhXZm5TZFpwRS9rUjhTZSsyUjZNcE9U?=
 =?utf-8?B?azFxTzFHUk1oQkNxV2c1a04wTHV6Qm0vNjZKemJOblpKc1dDd3ZDWi91Rzl3?=
 =?utf-8?B?cVVCeDNScEtHekV1ZFI2aWxyM2JicWk3eW9GNllMOU91UTNJam5qWFlFVzcx?=
 =?utf-8?B?VEs5NkhubFNROEZOcnhQSk9FNCtiOFN0enJ5V1ZRam54MGRrM2ZxMndFUExH?=
 =?utf-8?B?ZmxCVUE4SDVpaEtHNE5jbTV0Q1ZFSng3NUhZcXgrZFdVQTNjNXh3N1ZkeUNO?=
 =?utf-8?B?R05ZRHZnOS9MS0YwZGlURVYvRVJmVUxZTWc3V0ZzWWhsWENwazFHVUkzZTFP?=
 =?utf-8?B?N0JCRlZ1SlUyRFJ2K2F2UnRtSXl6cTlEc25Ua2JGOGF1a2ltdExLczNsSXM5?=
 =?utf-8?B?MWFtZXloRFhUalc2VWpyeGhCNUNNTmhtZi9JUktkNlJDdURUbmRVRUR4Nzdx?=
 =?utf-8?B?TkxaWldpbmxWdHRvTytqdWZNK21hcW5odWFrcWxxM0pINTY5MkRqbWRsdTUv?=
 =?utf-8?B?L1d0ZWp4RHpnK25GSC84WjdHY1pCTFM3YW5HSGh6bzcrMExoQlFiNVZKYUMy?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2ab924-f0bc-4516-fa39-08dba4b95632
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:46:52.7284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qgtwYeAXqHiAV+SmXdgiWmkqDdKjbmqaDGZHd6h5RRUqJKVbNijqL+Fi/cirrLA+GltbjF3nGUO459Z4QfEIjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892037; x=1724428037;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YQcvl0fg0nRO2D88KBw3w/D4HXiXRMYGRl3a0u6aB8E=;
 b=C4hhBashgiH8ZT3SXrA8l55bVYLPCJvfCymYCsp13I5kH/i65ZMScp8x
 RMMasTsOgrX5YSfrmW1dK6Iey7/2L7AztxgjCeOV+SRakThswoZG1hILA
 DwOM8Vq5DWNsrFNW8eQCCUz4kE+t73S8h0JaPkyPB+l/uDarnx6HQyCm9
 D4mRPLosgLRkjRhREapAuLFlfWHdG2qSzZdjbOQQmcarcUAgx2rvwhxqw
 ozz9lTKGUK8m0SpVyb+NHD5QIst4L7WxmilP6se1TIKAyfYC0ZyFYI5f+
 wad414OTJ2UFOZKi/a8bK+u8fASuuIr9M4Qj6Tx9dKpHUYeNBae1xvhq5
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C4hhBash
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDgtMjQgMDg6NDksIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+IEZyb206IEFo
bWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29tPgo+IERhdGU6IFRodSwgMjQgQXVnIDIwMjMg
MDY6MjM6MzcgLTA2MDAKPgo+PiBGcm9tOiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT4KPj4KPj4gVGhlIGlBVkYgdHhyeCBob3RwYXRoIGNvZGUgaGFzIHNldmVyYWwgZnVu
Y3Rpb25zIHRoYXQgYXJlIG1hcmtlZCBhcwo+PiAic3RhdGljIGlubGluZSIgaW4gdGhlIGlhdmZf
dHhyeC5jIGZpbGUuIFRoaXMgdXNlIG9mIGlubGluZSBpcyBmcm93bmVkCj4+IHVwb24gaW4gdGhl
IG5ldGRldiBjb21tdW5pdHkgYW5kIGV4cGxpY2l0bHkgbWFya2VkIGFzIHNvbWV0aGluZyB0byBh
dm9pZAo+PiBpbiB0aGUgTGludXggY29kaW5nLXN0eWxlIGRvY3VtZW50IChzZWN0aW9uIDE1KS4K
Pj4KPj4gRXZlbiB0aG91Z2ggdGhlc2UgZnVuY3Rpb25zIGFyZSBvbmx5IHVzZWQgb25jZSwgaXQg
aXMgZXhwZWN0ZWQgdGhhdCBHQ0MKPj4gaXMgc21hcnQgZW5vdWdoIHRvIGRlY2lkZSB3aGVuIHRv
IHBlcmZvcm0gZnVuY3Rpb24gaW5saW5pbmcgd2hlcmUKPj4gYXBwcm9wcmlhdGUgd2l0aG91dCB0
aGUgImhpbnQiLgo+IFRoZSBjb21waWxlcnMgc29tZXRpbWVzIGRvIHVuZXhwZWN0ZWQgdGhpbmdz
LiBJIHdvdWxkbid0IGJsaW5kbHkgaG9wZS4KPiBUaGlzIG1lYW5zLCBJJ2QgbGlrZSB0byBoYXZl
IHNvbWUgb2JqZGlmZiBvciBhdCBsZWFzdCBibG9hdC1vLW1ldGVyCj4gb3V0cHV0IGhlcmUgdG8g
cHJvdmUgdGhpcyBjb21taXQgZG9lc24ndCBodXJ0Lgo+IElmIHRoZXJlIGFyZSBjaGFuZ2VzIGlu
IHRoZSBvYmplY3QgY29kZSAtLSB0aGVuIHNvbWUgcGVyZiB0ZXN0cyBhcyB3ZWxsLgoKT0ssIEkg
d2lsbCBhZGQgYSBibG9hdC1vLW1ldGVyIGluIHYyCgoKPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYWNv
YiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQWht
ZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMgfCA0MyArKysrKysrKysrLS0tLS0tLS0tLS0K
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdHhy
eC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYwo+PiBpbmRl
eCA4YzVmNjA5NmIwMDIuLjU2MmRhZmI4OWYxZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfdHhyeC5jCj4+IEBAIC03LDggKzcsNyBAQAo+PiAgICNpbmNs
dWRlICJpYXZmX3RyYWNlLmgiCj4+ICAgI2luY2x1ZGUgImlhdmZfcHJvdG90eXBlLmgiCj4+ICAg
Cj4+IC1zdGF0aWMgaW5saW5lIF9fbGU2NCBidWlsZF9jdG9iKHUzMiB0ZF9jbWQsIHUzMiB0ZF9v
ZmZzZXQsIHVuc2lnbmVkIGludCBzaXplLAo+PiAtCQkJCXUzMiB0ZF90YWcpCj4+ICtzdGF0aWMg
X19sZTY0IGJ1aWxkX2N0b2IodTMyIHRkX2NtZCwgdTMyIHRkX29mZnNldCwgdW5zaWduZWQgaW50
IHNpemUsIHUzMiB0ZF90YWcpCj4+ICAgewo+PiAgIAlyZXR1cm4gY3B1X3RvX2xlNjQoSUFWRl9U
WF9ERVNDX0RUWVBFX0RBVEEgfAo+PiAgIAkJCSAgICgodTY0KXRkX2NtZCAgPDwgSUFWRl9UWERf
UVcxX0NNRF9TSElGVCkgfAo+PiBAQCAtMzcwLDggKzM2OSw3IEBAIHN0YXRpYyB2b2lkIGlhdmZf
ZW5hYmxlX3diX29uX2l0cihzdHJ1Y3QgaWF2Zl92c2kgKnZzaSwKPj4gICAJcV92ZWN0b3ItPmFy
bV93Yl9zdGF0ZSA9IHRydWU7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIGlubGluZSBib29sIGlh
dmZfY29udGFpbmVyX2lzX3J4KHN0cnVjdCBpYXZmX3FfdmVjdG9yICpxX3ZlY3RvciwKPj4gLQkJ
CQkJc3RydWN0IGlhdmZfcmluZ19jb250YWluZXIgKnJjKQo+PiArc3RhdGljIGJvb2wgaWF2Zl9j
b250YWluZXJfaXNfcngoc3RydWN0IGlhdmZfcV92ZWN0b3IgKnFfdmVjdG9yLCBzdHJ1Y3QgaWF2
Zl9yaW5nX2NvbnRhaW5lciAqcmMpCj4gT3ZlciA4MCBjaGFycywgYXMgd2VsbCBhcyBpbiBhIGNv
dXBsZSBvZiBvdGhlciBwbGFjZXMgYmVsb3csIHBsZWFzZQo+IHJlY2hlY2sgdGhlIHBhdGNoICh5
b3UncmUgdHJ5aW5nIHRvIGZpeCBjaGVja3BhdGNoIGlzc3VlcyBhbmQgYXQgdGhlCj4gc2FtZSB0
aW1lIGludHJvZHVjaW5nIG5ldz8gOkQpLgoKIMKgLi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwgLS1z
dHJpY3Qgbm90IHNob3dpbmcgYW55IGVycm9ycy4gTm8gaWRlYSB3aHkuIApJIHdpbGwgYnJlYWsg
dGhpcyBhbmQgcmVzZW5kLgoKPgo+PiAgIHsKPj4gICAJcmV0dXJuICZxX3ZlY3Rvci0+cnggPT0g
cmM7Cj4+ICAgfQo+IFsuLi5dCj4KPiBUaGFua3MsCj4gT2xlawpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
