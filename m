Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC8E770B03
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:32:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC25441ED2;
	Fri,  4 Aug 2023 21:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC25441ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691184771;
	bh=Z+EKWLuARPslfbZKxaoXSntAkk96n2dml5aCTcB65/U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uIsA5Zs05Y5kYiDGx4swUn2JshMuKZWaiIdqHs52tat9QN3O+JDlJorImUGFrcIpN
	 9eqW0H6gwQx4T2nkgfzDpDLHsz8RM5bdFNnxkZ+wqMUBVGnhxFj/MLFW19qLtLxCTd
	 6W1CtNkZhQDkLOAzLRbmt5bQa4RPRvy/M3rue8Sw4TrJ6m3Q9NdVsjJUKn/twaX37Q
	 2Gz6rYhWwUPbTRla+GQeeLVpyUfiDwvq/NiN3dZMpbrTBYtt9xzwnBTeUs0pYzhhFg
	 feybBqvPLlL9lKDSstCNW7gOhLOaLVCV9ymAp8ZYlo0Ok3KATbwoZJoI3iJ/Zf+gFC
	 SM3Vbdun+kd/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9N5GJ_oDhlo; Fri,  4 Aug 2023 21:32:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEB9641E94;
	Fri,  4 Aug 2023 21:32:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEB9641E94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDA351BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A7CC83827
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A7CC83827
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpLuR53RIIBO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:32:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BA758408F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BA758408F
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="434095730"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="434095730"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:32:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="873543216"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2023 14:32:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:32:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:32:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:32:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S70TEcUQOzQhr76rBCH3Shyiw57/SRuJEBo+sR9BXjujiGLO+LqLYFKzo06LVTZv+5DnCHsEASmDXvOhhKCQOMT4nKO5jnRNfn/S72bSsBmfKYLc+gCjLFTRL/oD4+i+GkYn19JQHJLN/gFZ+LTYrah80nOuTY2MiUEQaHJXVN/rmaNoJzBQVTnjMX+DG6q5i5ZSEsSG5UIlg50Fz+g6zwlSoRShD6/OiGSXv2ggcFMcz6LlZzW5rKmtwbWtLB12bw77zYNRzHKJbDs0Ie+Pd3mYyfSX74vDkc7bY8vPnUGNexMHwz7eAX7hOxDfqhGI5RyeRw005RUAjBn1/y9wAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYBBbkzqiVsxUQDfiymTWYbBYT0/t4NtEVhV0M6m8aI=;
 b=oaZ0ureuemyIu7df2pKHdwZ/uF5gNIenZMaLzHMZCONCoqnRAtgCQYLRd0Rh4CyIhV7Hynx52EH4MvgQF84HY/E9QQt/DJQQrZz7NTSXf+vCIMKxP/7bqjXnjdArJqvh6KODwE1A5zoz9X5x6Ro5pY89hidCrjKC06mLUxxyBbqI1wtXeizZlYRcwMNvJsJ6+LuJNXWnkH5O+m8clK+ScLvKnCJw8WtvVDiLyqJBJa65JvKco/juWpaEbbUDhWzsxv4sWi71izE8ML5cslwVQePgx/aAI61kKQZMiGoZZ5FnzVgJe5ZdpAZg3bQIxJPZKyVQXLDXytDXQAAeOtLIww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:32:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:32:16 +0000
Message-ID: <e25072ed-5c55-41c8-3a29-cc1cc8e64693@intel.com>
Date: Fri, 4 Aug 2023 14:32:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230802074854.3650629-1-andrii.staikov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230802074854.3650629-1-andrii.staikov@intel.com>
X-ClientProxiedBy: MW4P223CA0003.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB7446:EE_
X-MS-Office365-Filtering-Correlation-Id: faa29eda-3342-461a-17ce-08db9532461d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GtHfF7zTBEQILcddToi3X/6r9n81oaqXdJcklBgY6+irBk/goSBJJ8YEDk9jwo0MvSqbc5M2pc4CW9cFFfH/FWjuSQg2Il0oe2Tog58/rqQSyyNlgPUitvPe7A0QdCMRwuNt2a+oMAVpztbmt6tgxupPeLKF5VKIDA+KMsBl8S0+JCT3WoFCeKqRHenYFBh4VKXvuTKNOw7n52kNJnCJCz97DNQNQYg6pNPHLgPQDlkPH8Yb5MbVeD0LANjmCiR81dQbdexysogCxiYExf2ECliZ8j3uQSIXUAuUtcJLS1qjq04ojthY954PaG9yW7nC85ujKXOMkQG49dGt8J/FVUEXRj8u3w9FY2xfiafoBLU95sl5790sJnmbK+siaNCSZA2E4YPFnAbfEUDzKFlQO4PIIazzox/qraIYkQuXLPS3rpIs1Lmj9tyt1dKcktAzLQWb+EeOD3pjumZPsAq8oJEO/LKLdluI3uwyuUJeA6A5wXLMpa8Slmxiu/g07MaowWPizN6J0FpAx53IJWCqayVxS0UAGRBmETOWFWLdT9GFku9DCfWyHwsS13ZN8qizFrXSA8a6amsndBFWfQs3MqgP46RXKhK6KG/Vr8WwJ7H5gh4DMebNqOKsyMu+lbsuTVb5CeyhukfTJBsTQylVjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(136003)(366004)(346002)(396003)(186006)(451199021)(1800799003)(66946007)(66476007)(66556008)(4326008)(2906002)(38100700002)(2616005)(53546011)(82960400001)(6506007)(83380400001)(86362001)(6512007)(966005)(31696002)(26005)(478600001)(107886003)(36756003)(6486002)(6666004)(8936002)(8676002)(5660300002)(41300700001)(316002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0J4SVVrb292NFRHLzA4bjcvT3dNUXZKU1ZxUUhOR0MzNW9TSFJSazRrSVJQ?=
 =?utf-8?B?c3VIZXNVWGRubEVFWFcvLzZEcHdBWDFzelZ5d3pXZXhReUZQV01kUG1wRHNs?=
 =?utf-8?B?S285TWJqZXJVbXljNi80OCtPVkZqWmJweTBVcTJsRUtwYUdqeCtxWmV1allK?=
 =?utf-8?B?b1czWWV6RmoxOHgvemVjdWpDMkNXcVZVODhWSitSWTRrRTNwSk5sZTIzNWE4?=
 =?utf-8?B?WDQ3MnpNaTNiVDZRRUxFTHpJdXExVHllSE04US9Gb1dPL055MWMyTEVKUW5i?=
 =?utf-8?B?OFRXK1dUR3Y3cFJuMWV6NzVYTFQ1UnR3bW9SV09ZQUJWMXVFN09uNEpSRXpX?=
 =?utf-8?B?VmQvYUpOLzAzZU9MeHpwaTVnSmluN280UFd3ME9OcWhWaTNaL3pBU2FCanli?=
 =?utf-8?B?SkNsVEE5bzBzQmxtZ1F3dXlHbEJFZVZmMWpFT1QyK1JJNWRIZHlub3hUL1dD?=
 =?utf-8?B?YjdJNHd1Q0J5VVpNV01mWGNjNVIxYktsMzV6MUR5YmF2Y0lHbHJlN08wcDBX?=
 =?utf-8?B?OGxwMVphU3p1bUFEc2lCWkhEdHJMRDVrSjJYY2RuRy9YSzBoQTJXL2UvckZT?=
 =?utf-8?B?SkxmZXdLS2hGYUhmcWRrUE5FalBOS1ZxK2NrK0FXekU3ZDlTUG5JU0wwTThn?=
 =?utf-8?B?ZVhmZC94eEVnbWkvd1RRNk5jU2Y5QkM1WHFVWkkrWm43dng2RFU2QVBOMk1D?=
 =?utf-8?B?cDNpWUV3NmdHS21oalg3UjlNQUNRV3lySUNnWjU3QjVrM1F6ZEllc0RVVTJL?=
 =?utf-8?B?YkxrTEF3bG5zcWhsMU40QXVuWGpOWmN2RlhSaVpHMGxOYjhSUGdMWE14T2gr?=
 =?utf-8?B?VVlFTzQ0UUljaEVhRGR1NHBXMGtZVEtmSitPYlRJYWdFUUZMbGE2TmwzNHhU?=
 =?utf-8?B?bklsV0oxVXJCRUpka2N3eEpoemx2a3FMczdYeWphTVZINHBGVDE1dDU4OGd1?=
 =?utf-8?B?b3lsdTNORkFsalBpbjRDWkFoWDk5N2w2d3MrU280V1h3RkhuRlNsSkpUYzNq?=
 =?utf-8?B?R2tmYjRVeklNK0owVEpGMFhTNnZGYk5XOFFnRXdUSVErRmMzdUkvOEZJZXV1?=
 =?utf-8?B?UW5kNGFEOTlJWkNNUDlNTEU3bDd5UlhKbzdvc2k5czkxTWsrMzVvL09OTUFp?=
 =?utf-8?B?cWhxbllyeU5YZEpUblpUTmtrR2U4NUJRYlcvTFEzRzY3b1RDbmdUUXR0eGJN?=
 =?utf-8?B?WGVsTTYvdlpqSlZFV3hJeEEwbmUrS1BwQXhmQ3VQMndjS3B0L0R6Ukt0VU9o?=
 =?utf-8?B?bmxNQnllMzJjTDVwa0N3TGlrNFlFRjJIZGVXVjd6cG9RVkwyN05sdDhtWmZJ?=
 =?utf-8?B?bHhQdmdvQzhmeU0xQjRDcTVIRWMrMTRTaHRXWmN0Vnd3bzFibjg2eDg2NUZr?=
 =?utf-8?B?Q2dZbEJxWGE1VG43S3hmQ2ZMSWNQRVVnaVJ0S2E0eExjQUNvaElIaDR6ZUxH?=
 =?utf-8?B?aEZaWXh3VVYrc3BSNTJpSEU4Rlp3ejZpS1RCQ0JWOE9XVTZna20rM2lHZjFR?=
 =?utf-8?B?b1VlYVoxVjhhVWFJM1A1TjVxc042Y1RzMXl2V1d1VzQycjBNMFJjYXM1cTFn?=
 =?utf-8?B?NkdRbkZMNHVMVFA1MFoxMTFHYU9TQTJacFZ3UFV5SVZpK2cwK1ZYRUJES2l6?=
 =?utf-8?B?Y29NVnRVclZxNmd1dmplUDNTUGZvQkhrYnVvYUxMTFlmMDF0ajV2eWxlQ3ZH?=
 =?utf-8?B?Y0xDaklSUXBieEN3d1hTVEtMdzZ6QUtHUmdXc1VmQ3RYakY3emREUlRoZXI4?=
 =?utf-8?B?VzF3TFJpNjhMOGNTRnkxSG9INW12Y3hrVTAvZHloanFJZmdjZERKaDZWUHhl?=
 =?utf-8?B?K3hhS1pIcHUyZnJHS09aMVJEZHk2OEh4K2Jxekhoc0xweVA3WGN2aS9mUWFP?=
 =?utf-8?B?eVY5YjhPM1ZnMG5kTzNzcUJZbTVqNkF1MkgxQ013VnBmaTM5bGg2WHNwa2s2?=
 =?utf-8?B?Wlc0RStYMEh2REtuejAyNnkralI2cHp0bVcrTEl0NFJxRDd0RHR3TklJWFNJ?=
 =?utf-8?B?MndzYkZBaGxFRXhhVDY3clQ5ZW85SVdydlkrZHBXbWJ4N2pIMU8zQzNhbjlh?=
 =?utf-8?B?ZFdQeWhGemRnZzVNWVg0ZHdodWFLaS9nRHJVMDI3UzFRZElTQVNrNmNibnBQ?=
 =?utf-8?B?WElWZzN3MzRxb2xRYjVtdXQyZ1dTMjVlYys4akYyYnpTWGt0UUhuTHpHRmNu?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: faa29eda-3342-461a-17ce-08db9532461d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:32:16.2061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cw+cJcodjK3t918Gpi74gM5bsa3Uv1hZ42z2Eb/OWAQ0O9b04REM99n9YokEIpkZnY+C1DjMlIwEfDwbk9kOVflolI6OIUqGH5bMwvsecqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691184747; x=1722720747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eWv/3EJq7ZbqKgR19kIe0XAGGA14b9G+Dia3j/BzST0=;
 b=PQn1c2XE1vklCmo7gU1r3dcgzUoCCnP7vgfagYZ6SVB0w1s+W5c+u7on
 zXhFyaW+KTos5J3q1+6iWXShQRITfwL+C3Bd9hKmrE61fDZFHLGeJSxVk
 UuvL+Un6gdynAnrWKZkpkkUGwLDut3zhbU8zTOPpaptd9UFhtU7ZO+9im
 CXTtUZhnXS1rjZdt3TjositOqoIYr9Gx4mtiXJvMMCIwv8ALgG9nCU2xg
 UC3LM4YRxaPFIg9AxzOVOTx8pdJX5nTDpZvPrb6W/Tkj7W7siQ8HI3B6d
 bKYPLhuoccIu2qYRXm9BKIs6HVs29Q11K8deVvtTSmYCbxh1L4urcPWcE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PQn1c2XE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix potential memory
 leaks in i40e_remove()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/2023 12:48 AM, Andrii Staikov wrote:
> Add defencive loop for all vsi-s and force resources cleanup.

Please provide more details; this doesn't provide much information.

Please look into:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

Also, s/defencive/defensive

> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..1c892b14a337 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16326,8 +16326,14 @@ static void i40e_remove(struct pci_dev *pdev)
>   	/* Now we can shutdown the PF's VSI, just before we kill
>   	 * adminq and hmc.
>   	 */
> -	if (pf->vsi[pf->lan_vsi])
> -		i40e_vsi_release(pf->vsi[pf->lan_vsi]);
> +	for (i = pf->num_alloc_vsi; i--;)
> +		if (pf->vsi[i]) {
> +			i40e_vsi_close(pf->vsi[i]);
> +			i40e_vsi_free_q_vectors(pf->vsi[i]);
> +			i40e_vsi_release(pf->vsi[i]);
> +			kfree(pf->vsi[i]);
> +			pf->vsi[i] = NULL;
> +		}
>   
>   	i40e_cloud_filter_exit(pf);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
