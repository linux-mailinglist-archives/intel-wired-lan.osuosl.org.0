Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E846E4F40
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 19:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97C05416CC;
	Mon, 17 Apr 2023 17:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97C05416CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681752803;
	bh=ZfrlL6Q6dOBIaLPQTdCjgDKbVoKTospZNmcZ6CUgfVc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HfBUbeaw5r8RwxH+66PO7DoJ60I6ycLO5xHlYmg8N2sXRldDaD6DdsW4/sDZdDg7+
	 rjGKBjIyWAmHkh7g8Kkwz7MU5XWrihk4rnBP49c+WF5Pehzqzf9NN1Nw9HCMQCJnbR
	 zR+rL9VIAOUnQdDWWVRS8eyAKiO703FdRZjPg80IIKuYKiGz5SHKP7t/bR0Cx2gGj0
	 VlIeTQQXtfigbKZ/VpSteHzWHehwCi3wcNVhbaop5L7/8GD/YuPyeBB0pyJpuCEoHz
	 Fw+m4vjvHOv7FRQCAFXr9y7Hx5gRQZ/9u72tcLwDSXcazyadXuJCUnT0/A6+LBajb+
	 BA/J10C7kkUew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTTT9bQ_XVGa; Mon, 17 Apr 2023 17:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 420704163E;
	Mon, 17 Apr 2023 17:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 420704163E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB90D1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFBC983BA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFBC983BA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id el5gebPpKBJt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 17:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC4AC83BA3
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC4AC83BA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:33:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="407850315"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="407850315"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 10:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="693298628"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="693298628"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2023 10:33:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 10:33:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 10:33:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 10:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JvsLPBG1HDvEAOzCHHOBY8bIHNjSJj2/nuItnhYDc4+plY4JXzhg7KCPE4SsvXg0mvm7RZp6XuQsJSNRMiBpj1ZxBzrZuYOmFJcF6Tuhpw5WBI8KD9D9/w07Yua1/EBkex/r7mVKWwR/m0eq3TMJmMQNQBlTcBxRSMNR6IqGOAvdS8lHmKu+HyAY7X6Mcx4oRLHx/6/aCzn4X7dz8TYgpIm66Uvx7GEqSXo25AEkvWi76BCDa2lK++gA3BvuSdqc+JPu+G65xCcjuom/mUzgM91CDR5vifN4yJF6QX/EeBJeyOTnLzK5tTusrpomJNgJb6BOKhAZ+gbWRHudwA2mvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/+eJFMTTpYMD5xOmNIpunc0b8y6njuY8W/iDY2hAOE=;
 b=Bn3VWISf+1h7PI5qHbURMNhNqhApxDT05f31LfKb8oOXDH/pBW+Hv+sYlAiULKgYMLa6X3WKTosoMhemWv8pXwW6JGCfIWR3ldU4ittCE2YsRJHbdswGmmqDXQeZNmy5E9ZnKilz4lT8RP76mKDcE2J+Qppf66M6Bi0D96Owy7niL8CzRZMq3jZ6as4e6P4nexID6CwlQuqMyLQmrBJ1EcBWwnQXa6kgipgRpVHHN74VCPm1LnfE5a2nTruHx2tWckmLgoHJpbSYTve/efpm8hUAT7w5mFPWIRf8v23RxckPYAiJvpHhByS4dKI/VfllABWr3G5KHVoHuQZHbBgm8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5338.namprd11.prod.outlook.com (2603:10b6:408:137::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 17:33:12 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 17:33:12 +0000
Message-ID: <29d4616a-0752-e7e2-2320-711cd9257d50@intel.com>
Date: Mon, 17 Apr 2023 10:33:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230413153221.2848407-1-ahmed.zaki@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230413153221.2848407-1-ahmed.zaki@intel.com>
X-ClientProxiedBy: SJ0PR03CA0298.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5338:EE_
X-MS-Office365-Filtering-Correlation-Id: a4cc7d77-abf7-46ec-7c66-08db3f69d108
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RSRDukyGJqUi/+1k00KrbFtjowtSoquxejbB4Q0o2NdFlTvf/w5+S41PTdN12lWSFyM6lD3Kcg3JbFREYLa/V56uitxB3tZQVSBpaoXWRAWn/hZu/P0CDp809q3hf2sTmKT+5tJR0CZbYixxammPd2fx8ZSqH3K+WQIza421v1pDCX3rTH7ScgjqGH3MoQoyRr8X1DIOkK5jJN3b4bIoI2p6ZNlJKNet0TXSKEIDuxXlBcDwS56+G1ePDzLbSIY/vqb95XQLN0i58/QI99Hd6fmCUccy/cUrxuVpd8PV3aeJLIF/3TRi4cELpBYwS56+HFlMXYbvR0oLD8TkDHPDQCxvvHXPjqsEQoHZfObrYNyKylUjJJlh0qHbQYO4lYlc+CqtY5YX6q+1i2W11Qg2HlNvwPK7r8bp3tIYg2Iz6+WntPVJEJHIofLYE+wIo+dAHylUqQQW/0XexeqnHW18ws7tb2Hp0LagthDrb73IWm2LBHDHRq3JY9eyNPmuvsnrN2KOKII721Dj+NT4/tdoZ6hX1N+a0Z9Pwh2AZ4h+dxCGKcVHti4Ca939DZhv8OrG7sKzi0qWj09CcUSb0u02Vzh7+WaGDcrISM4AD7WggcmzgYIxVmUEpsj7z7Lb6H1Qi27m4LrCx6tkyrmIJOlhVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(39860400002)(396003)(136003)(451199021)(2616005)(53546011)(6512007)(26005)(6506007)(31686004)(478600001)(66946007)(66476007)(66556008)(83380400001)(316002)(82960400001)(6486002)(186003)(6666004)(8936002)(8676002)(41300700001)(5660300002)(2906002)(36756003)(31696002)(38100700002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXRGd3B5QTVPaERsNTNFUDdwN2s4LzJRT1Q4bnAvVjMyZmVJejF2WUdnM0lo?=
 =?utf-8?B?WCszNlRUVHVPTWptYitQRWEydjRXenVFaXZKdk9MUWZEdnQ4b0dFNlhNN3BU?=
 =?utf-8?B?Z3BhY3NobDQ0MDIreitOYTBvRmd6L3F5YzhNbEZ2eEVkek05Q2ZQbFlOSHZT?=
 =?utf-8?B?SzlJN1ZQNUxDY3luUXpYaEpSQTE0VEN1QVlTNk5MN1hMRXE5NGdYZW1WN3BC?=
 =?utf-8?B?TnJONE9kQUVyVW9uZGtYMm9EU093Uy9CaE4yckliK043eW5oeFpRSkErS1dN?=
 =?utf-8?B?L0twZFlMSWN2R3J6QkJqWWpKYldHYzFqem55TmU1Y3hVRExSRUdtVmQ2Z1Nu?=
 =?utf-8?B?cDJmUzMrSmgvRG9VMzRxbzNxWlBBemFtN21aYVRHenJ0bVlWWXBzVjVXUHhY?=
 =?utf-8?B?TXdFb05ibldyOUVhSDY1TU03Nmk4MXdNelZ5RDY3dy9HWUVEZnVYaUZxTk9K?=
 =?utf-8?B?MjUvOGhHMlBqblVxY2JXelNKMVArZXV0Rm5wU3Q1OWZmZTQ1SkNKUVAxR1lP?=
 =?utf-8?B?NUVGOVRNb2FSMlFqclRXQmZEM24xSk5zODUvZmpjYWdIOUFuYUE4eDg1QndW?=
 =?utf-8?B?dFVxUzJxd2IvMmxLc0ZIdzAzbGhIcjRRdG1ZTktBcHBDVjEvK1ZVQ2RwcjM0?=
 =?utf-8?B?MkdvNkVma0l3V3A0ekF5Q3R4Zkp5L1Fmdmlya3lEdzhXb3ZESkhOekpDNDU5?=
 =?utf-8?B?cGE3OWYyWWJxdE11ejIwRzdKNWJVTVNoRGxabERsNmdtc2wwcjBjN0ovdjNl?=
 =?utf-8?B?UWpmQ2IyU3U5eXlKbDArUHI5dThlUXRwS0ZybDFFMy9HMGpTVHh1UjBJOEw2?=
 =?utf-8?B?WHhKbmI2TW5MeXFiK0h1KzYxc3U0K1Y2azdRSnI1Ym80RnlWd3Q5Y1VlcFBx?=
 =?utf-8?B?S3Yvd3RqUUpnSWtDNXZvRFVtMWs5T1l3c2VjdWlSQnBzYUFTWEwxSTcrVWJv?=
 =?utf-8?B?S0I1SmF6TEdtTE9QRkpobzZOZHRWalJuRTN3Sy81ZzZpQlNUMUdiS0krYUhO?=
 =?utf-8?B?UW1BblI4aWxwc3dLK2hmaXIvUDFwU3dpUTFoTUdmTThJTElMKzV2aHZkT28r?=
 =?utf-8?B?d082VW8wRDNMQzlHSmdPL2ZMK2w5Y2hVNHdicXdwcnQ5VzZVWlZ6ZmtzSFRW?=
 =?utf-8?B?M3VrcytOK2orTTlOOXkvaXhtbEkrcEtNdTl6VW1VRzFSMUdVRU5Udm0zcG9y?=
 =?utf-8?B?QWV4T0l0RnptRzQ3NXZEWTdVQ0t1YjBoejZnNEJDbzhWR2c0QURoZkN1eFhB?=
 =?utf-8?B?TnpESlpiMUZoR2JWVFk3Q1UzakNMUVpWV1FrWHdSdzFqNm81Z1VPd293MGRI?=
 =?utf-8?B?Vi9LY3dOand2MUVvKy9yK01MK1BHT0dSQkw2aEsrdldiLzdxSmlsbStsc3BI?=
 =?utf-8?B?NmtXQXhnUXQ2ZHVVU3E0cUdIWTU5YlpnZDVDNlpzQ0NnRDQvcUtRM0x6Wnk4?=
 =?utf-8?B?c3oxZ2IyWjY0OVFEYjh4WW9jVDJFTkJsT0xhenZzS1hIaGdSSFgyd216L2Y3?=
 =?utf-8?B?M0JlV2dCVTJjUUhhMHQ1cnEwRUQ3VW1pZDBISmZXakZYTVdVZUZodko5TjlZ?=
 =?utf-8?B?d3poOVpxOXFMemI4MEJmT2NNWHM4dVVmMjl6UXdYdFI1b3ZodW1GUVdLQVQw?=
 =?utf-8?B?TGkyUkFRSXduNEFoQmY5TFBnVmQxUnZ2bHU4R2VUWnpBUEl5WUJCMjZMTjd4?=
 =?utf-8?B?b1pBeWpyZ0thbkZYdTZBQXpzY2RZRUJjdU9rZmFEOG92Wmt6MDhaR2hwZHNp?=
 =?utf-8?B?OEFFK0QrcmM0bDFodCtpdHNUMUpJdi9vWkV0NWVFend5bUp5RUcrMkxtR290?=
 =?utf-8?B?MXNDVWIxdnZWMFVvQ1l5UENwRFVaZVhmckNxUHVkZTRKSjVubTdOemM5dVBY?=
 =?utf-8?B?VjNJb1lPcm0rU09xWkpjVkkxU0pDeTJxanZPd2VnSXlhcUFDZGtJTEZhSDdZ?=
 =?utf-8?B?Nmc1RjE4dFR4WDdwUzBxQTlTYWhWV0ZUNjM3UXoxSDE1eHg1LzJlM29seXBa?=
 =?utf-8?B?bzA5ZHprT0U5SUhNK09TMUx4cUk0UHFIdzRQK29Ecm5LQXNYVlJGZ0VGcDlr?=
 =?utf-8?B?bDFoaFgzZXNhU01tY2V1WTBNWm9Lek1oclgxVDJBa29jR3NmNlV4T0Jqc2dV?=
 =?utf-8?B?OHdtVGxRbnVhL0gybDlhMHpyMVh5dG5FZ1ZmM0ZaeXd5VElFNGptVWR2YXkx?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4cc7d77-abf7-46ec-7c66-08db3f69d108
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 17:33:11.7002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8keKbpQ6u7jqVnkAEOqdO2gcZzufdWTOuevBXrvol4PEYaO2QASmIs82sLB7Zto3pDrTZ5rdgvpn7n3EzJ6uqd/5rteMysWmj3+33gF04tM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5338
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681752795; x=1713288795;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KUWRyR+eHAWrn1hYiDoSr1wgF3P7jp/+FoCWVEK9/Wc=;
 b=gytDdojTvyjp2HexSvdSnMjR8c2uXyWR6A6byWHxHxVQ3URbq+dlwFeX
 jP2/IMjz1H8lTIy5AWstB9hBKpTrZzkHXi1DjoQ1utIvx5c1naU1daU/P
 fGpRacpQxwRVRx6VWRU6V3e6hfuGODwLRYBmS7Ph2Bx2AD64T9XstQOnh
 IVHVgU/C0NlK55EiZ9tAjank0BREZ+bl0dj7XG+cis/l0u2v+C6TB46G9
 QGFeRWOKBBW0/MDizF8p2ZlfnWyQcXL5jc3iaGcqCk8QCIM7KaC8gy4Ac
 pw9NfyEzN+BPgvcrrb5NVGFVzgHNIbMvHV2gfmiL2eYqSTQY7GvLAuIxl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gytDdojT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: send VLAN offloading caps
 once after VFR
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



On 4/13/2023 8:32 AM, Ahmed Zaki wrote:
> When the user disables rxvlan offloading and then changes the number of
> channels, all VLAN ports are unable to receive traffic.
> 
> Changing the number of channels triggers a VFR reset. During re-init, when
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS is received, we do:
> 1 - set the IAVF_FLAG_SETUP_NETDEV_FEATURES flag
> 2 - call
>      iavf_set_vlan_offload_features(adapter, 0, netdev->features);
> 
> The second step sends to the PF the __default__ features, in this case
> aq_required |= IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING
> 
> While the first step forces the watchdog task to call
> netdev_update_features() ->  iavf_set_features() ->
> iavf_set_vlan_offload_features(adapter, netdev->features, features).
> Since the user disabled the "rxvlan", this sets:
> aq_required |= IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING
> 
> When we start processing the AQ commands, both flags are enabled. Since we
> process DISABLE_XTAG first then ENABLE_XTAG, this results in the PF
> enabling the rxvlan offload. This breaks all communications on the VLAN
> net devices.
> 
> Fix by removing the call to iavf_set_vlan_offload_features() (second
> step). Calling netdev_update_features() from watchdog task is enough for
> both init and reset paths.


This needs a Fixes: tag

> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9afbbdac3590..7c0578b5457b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2238,11 +2238,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>   		iavf_process_config(adapter);
>   		adapter->flags |= IAVF_FLAG_SETUP_NETDEV_FEATURES;
>   
> -		/* Request VLAN offload settings */
> -		if (VLAN_V2_ALLOWED(adapter))
> -			iavf_set_vlan_offload_features(adapter, 0,
> -						       netdev->features);
> -
>   		iavf_set_queue_vlan_tag_loc(adapter);
>   
>   		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
