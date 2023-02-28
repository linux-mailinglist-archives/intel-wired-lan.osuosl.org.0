Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9A06A5D03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 17:23:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12F9382008;
	Tue, 28 Feb 2023 16:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12F9382008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677601399;
	bh=aSuvJ7ZSLmaNVJY0i8KndoeA1VIOfC7DNPEeWhgomiY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eQbB+HWtbIslUULiAZKYip+zmJVRXKTqR7s6tb9WBbx+3euV7zeCEZ34xt8s64SB9
	 kdAQ+kXcVk0a8QLiXxytwD6wJcfjORoQhvy0rjcXK7by9Yx0nIacZF0jn2ilqCvUSq
	 0DcQkJtDaymk5uVC3bENRW4GkNRXGwDLhJjEmHDBsNo30SSX9beVqxqzGTBWPsjuzc
	 WBteepQjX87XN4qkkcY0GhTmEVqK1LR09DY7FToEEa02vu5EVtZmYV6l3SIQ8o9zPn
	 pxOyEqWS/dgv46lQAqvf/Q/rOurVHxdxf287UfZzNC45fqOVTqyDj/NBlnmZADaZ1O
	 9LWWUHkvUUtkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQttCFXJR-GD; Tue, 28 Feb 2023 16:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE03181AEF;
	Tue, 28 Feb 2023 16:23:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE03181AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDC5C1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3F3C40233
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3F3C40233
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3Z6IdEM2TNP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 16:23:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA57401F1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BA57401F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:23:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="317980221"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="317980221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 08:23:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="706617619"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="706617619"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 28 Feb 2023 08:23:09 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 08:23:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 08:23:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 28 Feb 2023 08:23:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 08:23:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YiuQ4LW8cBtG0zO4ikfvmFGCI2CufYXCPQjQJe7B8YK89JcZc1XNT7o0XvY33QamkngJxgmXMcqIAldMl+WdajcCtCvRIalZurpBa914+7i+6GjhwpRQKe+PS4Q5LUUDOMkfUMP2y9LtQvTMJI0cnT256u5DAzdkiUmrjkJL+wfB57biDadH0Ks+2kRywDwQxo33yL1CsktmCYGMnV9MJiCq/PC84QSIGT/Z44p3ez4Ghb9xG7fc0oHmUldLXXgcWoZ/3i6CbZiC0EsOSqtIwvhUdT+2aHBxhnrYlabTFqkfbvvDADqYE/b/QfBRoBQvoQSkBRcEzwRws3E5vVRkzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDIrmVQMFaDCnQV52TBflXvO5m9ODyvzsGB4bdAw4QA=;
 b=k/BmdRlJ5S7rhmzR9GVLL/iUP0EUnuXQ9U+js0eqCTEotgHANp8vebpOjdX5WrXWhZ4f4dCVUrMtUOIeM2Ht195iagX/Xajj/kTn3nnSp6L1yVwAsysOAc6Oj6nOjiBNnhUdDmvaNvzUN5UroS0Hv3BZaH1MQNBRPdG3yU4aOGu45Nzo/3H/f67R0qsk9zkjsoHaRSYK1jqKaYtFQ1a4DwdlEpTecF0HWgYCC/rGfoaN2nQTs16M5gJv6iJQCgY+G6Fx2t2Ay7JIhevCoGMS8jZ9zO/Td/A3I8mUTN/G21dACS9wFpHHV/Xtny2gfHH1wTcJqcO4CZmQsw1vCSAxPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY5PR11MB6318.namprd11.prod.outlook.com (2603:10b6:930:3e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Tue, 28 Feb
 2023 16:23:03 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 16:23:02 +0000
Message-ID: <5bb7fdd9-8fb5-63d3-3c8f-9fd04b88ab5b@intel.com>
Date: Tue, 28 Feb 2023 17:21:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230228084915.2866564-1-kalyan.kodamagula@intel.com>
 <7d2b1ae3-2bec-1456-3df9-7fb04105c681@molgen.mpg.de>
 <afebb832-6216-6410-3974-5388c3fe7201@intel.com>
 <ae212a2d-1ed3-d0d6-7d3d-92f5353b52cd@molgen.mpg.de>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ae212a2d-1ed3-d0d6-7d3d-92f5353b52cd@molgen.mpg.de>
X-ClientProxiedBy: DB9PR05CA0027.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::32) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY5PR11MB6318:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dc1f000-cd12-4ff5-fdb3-08db19a81092
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: COfY+MMEJg7jlDICaiuB+OsvbP9o+hQzwxAseCi13CtIEtJNUQ16JmnlQrez5GCWBtGKfEkoz3C+2cihfj7k7DFPoGIWwlH8pbb03MnGplz6g/S5WG6bt3FtMuaa+VCpTmS9kZZlOBFZWaf57pJqbY2vUF2bW1Pye2T1Jsjwuxto8oVQGr/utlnJkh55DZ0ri1a6P9EPYb3+9O0jRVNnf3SZVA8Q18SAYF9FIZuW8oDIIHoz2u9oA9rozj7BElpohF1nfuJ0NnhXN+9RgCFJbdtclgS3iv3uuOdtRN77qs3dwEh0Zr9eJdPlZfYLSY6uO9ieXloTZgyPC5dx79QtSiRGV0jbLIlwYBy+SW6wwS29u5w4jXZ7Hqvc8lNGDUXbHrbcbZ0SPXP7GJAc+TJEPVjjd8VR7wTCwHHPQmMj4iayf4dTJ9p/oFxZXVeE4txmaioH7mDdBgjLZSxQzrc7lcGSuPBPfQkNf0QkxQw9wxxQb9xft2Aw2vpD0GojlH3N/l3ZNw5nuAeuTC3236EckPF1b5//NLjoui+CdZllIHcpPwuUQq8itvrU5CZx8yR+An/QHxFKsDCHvxn0ao4NxtFM5OcRvhhzaGbMacJ4s0Oi6rM1GWN3uE4OaaWQdQ2FDdrki/taW4N2seVpdejNmXXOcaXjxi6il8I4Vgyf8tiWYrWKdzk20xSk9WxyOmFQI8Qsczz6nC3+avLxqvbfpyCUpVNqA/cGtkDccCxuae4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199018)(26005)(478600001)(6506007)(6666004)(6512007)(186003)(2616005)(4326008)(316002)(6916009)(66556008)(107886003)(38100700002)(31696002)(6486002)(86362001)(66476007)(82960400001)(66946007)(8676002)(83380400001)(36756003)(41300700001)(5660300002)(8936002)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWI4dVNKUFZSVFZvMVBqWlI2ek9paFZOTVJFc2ZvYlBIRjN3dnlQMzhPRkw1?=
 =?utf-8?B?UHIrOXFsSTNzWWxoTFFURElUMlppajVJbXlEME5ZTGlzaTlPcndCd3FSeUJM?=
 =?utf-8?B?aERzUmlldmVVUE13RHdPUVNzMmlEWGxTV2orOGkraS9MZFFJUzZDbzU2VXJL?=
 =?utf-8?B?NWNjSGpGdGQvUW4weEdmTWR5VEY3NEY0TnFjRHFncWxaYjd6VjhRN2xObnhL?=
 =?utf-8?B?NHpxbTZpR0VFRjl1SXllQVRiNzdpYkxvMUdHZG1qdGFZRUV6d0I0d2JmSXVB?=
 =?utf-8?B?VDFTUzRYN2tzc2VjSTdUSDFtSlBhemVhRFY1VnhCbGV2UGpaeGM5RVVMeDZZ?=
 =?utf-8?B?V3FvYnpSaCtTWXdSaGJhZXVSTm9KRllZa1NBRkRGUnFHdGs1N09aNUpnYXps?=
 =?utf-8?B?dlNPNkM0b1duSmFwNHdDOTJrUThGSUNCRFNFS1MwaXRyOXBjT1ZWWmp4aThX?=
 =?utf-8?B?Yjg0VWJnNXlqQTdDN0VwR0VNMjgrdnVmS05uczFXcUFOeVZ5UzljSTR1SmpL?=
 =?utf-8?B?UW1KdnpjakJ2NTUyZjJzbVR3R2s2YU9mSzlMY2NZd28xcmdVQnM5RGdRU1V6?=
 =?utf-8?B?SFREekovZ2ZRdDVTODYvbkxIVGtFOTcxeUNhcHZxOVJBKzAya2V4ZnJZd1pt?=
 =?utf-8?B?N0VtZHdxNHhNUzVXTWNwOG9maWJocWgvaFN3M3h1L0JKWjdLdFE2L1prWjhB?=
 =?utf-8?B?eU1uK2RielFtNEZNamJQUi85V1lKbHF0SjcraTBscGg2N2t6ZVI5czUwMUk0?=
 =?utf-8?B?TFNRbEZnRkZoN0lRMFVVeTZmVjRKc2FielY1ZUgxTW8wQ1Y0K1BZdHN5a25U?=
 =?utf-8?B?VHhSRnN1NW1vWFlCRk8xOGlUaWNIS3JCWXVZa1crRzU1UlMxWktKR3hUR3k2?=
 =?utf-8?B?MjZmaWF2NHlqNGFqbkE2ZDJDM2ZCOVYzWkY1TTFXUnJwRloyU3o4VHNuV1Yw?=
 =?utf-8?B?ZmRVS2ZNcDAvdHdUSmcvTENnbnpJbi9FMk1zZWgzaEFyQ1QzaFVjM3hpQkhO?=
 =?utf-8?B?VS82c1ZCMUVVR0QvRWwzbmwzeW80c1hKUmVveDBCY1RpOFNieDJUL01LQU5i?=
 =?utf-8?B?WUR1VksxbGE2cE5hQ1JLbXlwRG1WZXY2b1pEWDl3NTRrUStMVUx3VzI5UFdk?=
 =?utf-8?B?cVhmdWZJWGl1c0RUNmJ3WnZ4QXJEY1BBNzIvTXl5N3pkS2VySkNJY2svS2U4?=
 =?utf-8?B?MHl2dW1zTXdxT3c1eWZmYWhDbkxTeDJqSjBpd25RV05Vc2FWMS9SK3FpWEJU?=
 =?utf-8?B?TnlxU2l0dXdtRzZFaU1Rd0xzRW9xeEtJb0ZSbWRRVHFxQlV4VTIrWU4yMzdK?=
 =?utf-8?B?TkViTFJnMUR5VlZKSUNWMlVWKzREZlF1eWxvVFZQR2RZTE1UMVlzcmlTWmUr?=
 =?utf-8?B?OWRWT2lXV21oejVZeUloNnFNcVNvRWwzVGRSOEFVT0h5cWlMTTF4UUNNbG9w?=
 =?utf-8?B?KzRrV29wcXBtbmxseGcrQ000ZmZ5L2JtRG9NeXZGNllSRXJJaXNEaTBoemRz?=
 =?utf-8?B?L2w0WTVBbkR3QXhkdlh2anFNbllkRFRNZ1J4QnNJakllcUFLRUpiNzBvblNk?=
 =?utf-8?B?MnBpbjVsSUFyYXljbkV2dmdsQzNHZnFKSzVicmFYeUozdi84d3F0OXJQQXFI?=
 =?utf-8?B?QWZCZHM5d091TkYra1JWbDBUbjNoY3ByUms4M3NwYUtPckdvSllBYUpCaTJx?=
 =?utf-8?B?SHJ5TTdvNmJHMkRsSjdXaFVrbXQzMys2VTg5dnc4VVNuMm53MldmaXpCcUFh?=
 =?utf-8?B?TkZmSWxQSW84TzNTUFVDbDIvLzNoU0UxZ0dBZUUzdlk2bHFIaHJ6MmlzYmdW?=
 =?utf-8?B?L0o1VEoxMDBZL3JBcVJnSm9mNlQvc3dXNHRENlVoTzFVNSsrSnRJVmprWWln?=
 =?utf-8?B?Rk9HYmlmSHFOU1VTUzdlemcyaFN2U1ZlVVZySWdvbjZFYitaMnlTNlIzWmY0?=
 =?utf-8?B?dVJ5VWZRZGh0M3psWGh4a2xYZ1U1SFg0T2ozQmZmQk1vOG9xNStqc1NHb2ZG?=
 =?utf-8?B?TG5nTVFtcHNDSkxwSzdXZDBEM1prMVZnNkE2MzhTVXpJOFZXNEphTnBBN29v?=
 =?utf-8?B?RVZBZTdTb29lNndXdjIxYXkzTFdKTC80VXY0SmpsdWFXb21ZNG9Ca1RrMVll?=
 =?utf-8?B?RGRNNFZobG1KVGVYNlBpby9NZXpSc0NiTU8ybkdHZ2ZhVVlERFJGL2ZOTmJo?=
 =?utf-8?Q?k0Zpg9TimCEhFK9xP2E8lOY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc1f000-cd12-4ff5-fdb3-08db19a81092
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 16:23:02.8982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mmnpzJPxqc2ktJ8S4W6Zj6KCazLE/4vnfRLblKcMcMVYnEriHf3g23fFhQH2caEEpAHM1spE4gB/KQXF4p8b7zztREvckNMp/AX2fkRB5o8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677601391; x=1709137391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B8fkBCTJFxUaHtf40YHfpiraJ3Hp3hZz6uuzwqbsvaQ=;
 b=U0J6Ddru3Y+Pqfc8ock2CUJTEEx0+zde0iskoG/J/vvF8sP5ImOADK0H
 T1hY/JedIxdnnpI2bWckN2YDZ9fsfpVejGyOSGAhahrLNzup1R+p1XNJz
 XKDzNPm7B3SrioOF5R3WpuptOYnmt7UdobgPRS+fOJC+0HC7PI92hwxPO
 cmWaFPXMDpKGLvkNqNYJ2eh/MhXwKfj3SD3P2I+5fAbxhsNXKocsKKMDE
 Y05F1BsV5vpmoA5+9cH8bnJ/PQ0Ma4pGWmQOTtjOa8/T+vDDIDXlMKdyN
 buiZPXO5Q9x1Xhk5cInjZLNu25iZQsIGxc2tb2917ozD0JMAP1Oju26AO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U0J6Ddru
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix implicit cast u32
 to u16
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
Cc: intel-wired-lan@lists.osuosl.org, Marcin Szycik <marcin.szycik@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KRGF0ZTogVHVlLCAyOCBG
ZWIgMjAyMyAxNjo0NDoxNyArMDEwMAoKPiBEZWFyIEFsZXhhbmRlciwKPiAKPiAKPiBBbSAyOC4w
Mi4yMyB1bSAxNjoyMSBzY2hyaWViIEFsZXhhbmRlciBMb2Jha2luOgo+PiBGcm9tOiBQYXVsIE1l
bnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+PiBEYXRlOiBUdWUsIDI4IEZlYiAyMDIzIDEx
OjAxOjAwICswMTAwCj4gCj4+PiBBbSAyOC4wMi4yMyB1bSAwOTo0OSBzY2hyaWViIEthbHlhbiBL
b2RhbWFndWxhOgo+Pj4+IEZyb206IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAaW50ZWwu
Y29tPgo+Pj4+Cj4+Pj4gRml4IGltcGxpY2l0IGNhc3QgYnkgY2hhbmdpbmcgYXJndW1lbnQgdHlw
ZXMgb2YgdHdvIGZ1bmN0aW9ucyB0bwo+Pj4+IGNvcnJlY3QKPj4+PiB0eXBlcy4KPj4+Pgo+Pj4+
IFNpZ25lZC1vZmYtYnk6IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAaW50ZWwuY29tPgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IEthbHlhbiBLb2RhbWFndWxhIDxrYWx5YW4ua29kYW1hZ3VsYUBp
bnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2RkcC5jIHwgNCArKy0tCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGRwLmMKPj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZGRwLmMKPj4+PiBpbmRleCBkNzFlZDIxMGY5YzQuLjgzMGZhNTNiNWUw
YSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Rk
cC5jCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuYwo+
Pj4+IEBAIC03MDEsMTQgKzcwMSwxNCBAQCBzdHJ1Y3QgaWNlX2J1Zl9idWlsZCAqaWNlX3BrZ19i
dWZfYWxsb2Moc3RydWN0Cj4+Pj4gaWNlX2h3ICpodykKPj4+PiDCoMKgwqDCoMKgwqAgcmV0dXJu
IGJsZDsKPj4+PiDCoMKgIH0KPj4+PiDCoMKgIC1zdGF0aWMgYm9vbCBpY2VfaXNfZ3RwX3VfcHJv
ZmlsZSh1MTYgcHJvZl9pZHgpCj4+Pj4gK3N0YXRpYyBib29sIGljZV9pc19ndHBfdV9wcm9maWxl
KHUzMiBwcm9mX2lkeCkKPj4+PiDCoMKgIHsKPj4+PiDCoMKgwqDCoMKgwqAgcmV0dXJuIChwcm9m
X2lkeCA+PSBJQ0VfUFJPRklEX0lQVjZfR1RQVV9URUlEICYmCj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcHJvZl9pZHggPD0gSUNFX1BST0ZJRF9JUFY2X0dUUFVfSVBWNl9UQ1BfSU5ORVIpIHx8
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvZl9pZHggPT0gSUNFX1BST0ZJRF9J
UFY0X0dUUFVfVEVJRDsKPj4+PiDCoMKgIH0KPj4+PiDCoMKgIC1zdGF0aWMgYm9vbCBpY2VfaXNf
Z3RwX2NfcHJvZmlsZSh1MTYgcHJvZl9pZHgpCj4+Pj4gK3N0YXRpYyBib29sIGljZV9pc19ndHBf
Y19wcm9maWxlKHUzMiBwcm9mX2lkeCkKPj4+PiDCoMKgIHsKPj4+PiDCoMKgwqDCoMKgwqAgc3dp
dGNoIChwcm9mX2lkeCkgewo+Pj4+IMKgwqDCoMKgwqDCoCBjYXNlIElDRV9QUk9GSURfSVBWNF9H
VFBDX1RFSUQ6Cj4+Pgo+Pj4gSXMgdGhlcmUgYSByZWFzb24gdG8gbGltaXQgdGhlIGxlbmd0aCBv
ciBjb3VsZCBgdW5zaWduZWQgaW50YCBiZSB1c2VkPwo+Pgo+PiBZb3UgbWVhbiB0aGUgc3RyaW5n
IGxlbmd0aD8gQnV0IHdoYXQncyB0aGUgcG9pbnQgb2YgdXNpbmcgYHVuc2lnbmVkIGludGAKPj4g
aWYgd2UgaGF2ZSBzaG9ydGVyIGFuZCBtb3JlIGVsZWdhbnQgYHUzMmAsIHdoaWNoIGF0IHRoZSBz
YW1lIHRpbWUKPj4gZXhwbGljaXRseSBzdGF0ZXMgaXRzIHdpZHRoPyA6KQo+PiBJJ3ZlIGJlZW4g
ZW5jb3VyYWdpbmcgbG90cyBvJyBmb2xrcyB0byBwcmVmZXIgdGhlICJzaG9ydGllcyIgd2hlcmUK
Pj4gcG9zc2libGUgKEkgYmFzaWNhbGx5IG9ubHkgdXNlIHssdW5zaWduZWR9IGxvbmcgZnJvbSB0
aGUgImJhc2ljIiB0eXBlcykKPj4gYW5kIG5vdyB0aGlzIDpwIEknbSBub3Qgc2F5aW5nIGFueSBv
cGluaW9uIGlzIGNvcnJlY3Qgb3IgaW5jb3JyZWN0IGhlcmUsCj4+IHNpbmNlIGl0J3MgYSBtYXR0
ZXIgb2YgdGFzdGUgbW9zdGx5IEkgYmVsaWV2ZSwganVzdCBjdXJpb3VzLgo+IAo+IElmIGluIGZ1
dHVyZSBhcmNoaXRlY3R1cmVzLCB0aGUgc21hbGxlc3QgbmF0aXZlIHNpemUgaXMgNjQgYml0LCB0
aGFuCj4gdW5uZWNlc3NhcmlseSB0cnVuY2F0aW5nIHRoZSBsZW5ndGgsIHdvdWxkIGNyZWF0ZSBu
b3Qgb3B0aW1hbCBjb2RlLgoKU28gb25lIGRheSB1MzIgd2lsbCBzdGFydCBmb3JjaW5nIENQVSB0
byBtYXNrIHRoZSByZXN1bHRzIG9mIG9wZXJhdGlvbnM/Ck9fX19fX19fX19PCkkgdGhvdWdodCBI
VyB3aWxsIGFsd2F5cyBiZSBsaWtlICIzMiBiaXQgaXMgZmluZSIgOnMKQnV0IHdhaXQsIGRvZXMg
aXQgbWVhbiBgdW5zaWduZWQgaW50YCB3aWxsIGJlY29tZSA4IGJ5dGUgdGhlcmU/IFRoaXMKd291
bGQgYnJlYWsgYSBsb3Qgb2Ygc3R1ZmYgaW4gdGhlIGtlcm5lbCBJIGJlbGlldmUuLi4KCj4gSnVk
Z2luZyBmcm9tIHRoZSBkZWZpbmVkIG1hY3JvcywgYHByb2ZfaWR4YCBhbHNvIGRvZXMgbm90IG5l
ZWQgdG8gYmUgMzIKPiBiaXQgd2lkZS4gKEJ1dCBpdOKAmXMgYWxsIG1pY3Jvb3B0aW1pemF0aW9u
LikKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApUaGFua3MsCk9sZWsKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
