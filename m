Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9055F755001
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jul 2023 19:05:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFA15405CF;
	Sun, 16 Jul 2023 17:05:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFA15405CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689527149;
	bh=Qnzv8cGIRMcrXM79xqPkyajEyxvTyU3a3HdBiv8cKl8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jvJu33FLu+eskNtEukFBjWv5fnqzbtB919nBgr+iXI8OacrOqreBD6XLa5r902jzj
	 Pplr/CT+jnCDZQaY/uPCJMi6qVPwaRBBZPnUwrMQ5NJd2nRbl5w5Xtou8WcVmJC96C
	 3TgV/fUGXPrT0NcErgTtjY8aDDrk+/Xjeyl8VpDGTlOfUTv3Cy7FQs9ENLt3ZW8t+u
	 5EvC6DQWc9LXrw1RDwZG+0h/X2Q9Wor+nIOCZ4F16yDDswu+xFAXcxg8A3gH1YY0/I
	 vP29+q0XNuzhM/y0HduaLFHJwE8rRT5R1WiFsJAAB0wA5VVPwAepxu20PzMa9Cmc6y
	 /5El4VHYzXWUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4VtxUtptbZhp; Sun, 16 Jul 2023 17:05:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7D7C4036E;
	Sun, 16 Jul 2023 17:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7D7C4036E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 220201BF391
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 17:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9BAF4092F
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 17:05:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9BAF4092F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSEiS4ATHRVX for <intel-wired-lan@osuosl.org>;
 Sun, 16 Jul 2023 17:05:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 307634092D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 307634092D
 for <intel-wired-lan@osuosl.org>; Sun, 16 Jul 2023 17:05:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="431949193"
X-IronPort-AV: E=Sophos;i="6.01,210,1684825200"; d="scan'208";a="431949193"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2023 10:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="896958687"
X-IronPort-AV: E=Sophos;i="6.01,210,1684825200"; d="scan'208";a="896958687"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2023 10:05:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 10:05:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 16 Jul 2023 10:05:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 16 Jul 2023 10:05:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 16 Jul 2023 10:05:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddoCXZN6oVY8xVMxjmoj/gF/ihn/6D8vZ9xQeOwT4SRHQizzm/bMVRFf3PGHo+TFj1lZAhziHeRkJNYd024p7fakommGhYNHNypP892CLLt0HIfGre8FuCUzLypm59XMOYyTDecGcdt+zBpmZ7NPn9BJ6UK/ZoPy5xoIaDwhyLxMvzcX3KYKIl/ehrJdIyJJp8hHI947f3eI02HnnLYYhRbzSsqjepPusCZKxNyvzmR84bq9F3mO1bnRGuBNcdKIyMBTmxqSHtiCc3IPYdfB7GKAP5/QyMTMzDW1/wJvhCemrfZ6GXV9YZkgui8WsKaJjmhVMeOTijNGyjqVL0zzbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TFd8ynbh5cvCmLLnSTpBeZula+LljZqWBu/foC3XyWU=;
 b=PPmsPeHlNKlih+rCg+AL8Q1GiHMsRmW9eOkIGWbigG4vLXJu//4ACMcxWgeG3JveBdOYZfNwj8isjcBzQisoungE1Dvd91eDNGFb+LMaBMNKYlAJIYhtWEJpIbXlNcyua2JHOOIOFHZTF2uzS/LSnu6keusCsE3tFxlhg7SHMJ1jcTRaJADFBvKElyyDPayEBh3+XiYu8pP/UFYMhEvBPXXxbyr+/2gTgDVdZ9zEzZCbck8qUyoH7xUrD5C0BfuO2HuY0dp7T1W5y563bo7SrHNz0I7poSwCWY6Aof+adzyJBKDwiBrqtlkVP43rL5Swt484pERYG/gzGQ4Us0T4sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CH3PR11MB8659.namprd11.prod.outlook.com (2603:10b6:610:1cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Sun, 16 Jul
 2023 17:05:36 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3c1a:ec09:e57:a3ed]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3c1a:ec09:e57:a3ed%6]) with mapi id 15.20.6565.028; Sun, 16 Jul 2023
 17:05:36 +0000
Message-ID: <c5c4501c-5719-6a62-5012-91e34b5d7dcc@intel.com>
Date: Sun, 16 Jul 2023 20:05:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, "Edri, Michael" <michael.edri@intel.com>
References: <20230707021419.22936-1-muhammad.husaini.zulkifli@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230707021419.22936-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR3P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::7) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CH3PR11MB8659:EE_
X-MS-Office365-Filtering-Correlation-Id: f7d80959-2bb7-4628-59f7-08db861edf97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b+ig6ANsUlszdCR3QlyJuU6AznTqslhNQf75/M1m+DzRTtq7xdDQuHPEntsuQUzmnG/uhNKiiIUlTLFXt8+h5yuznPbdu5o7w+NJG+hnos6nJ2TPqRlPuXUnq1WgZtSfPLbtE6RFf73nfQ5cea5XkcqDQPt0uEHK9z2K1DniC4IvwDRpKmYta/cmgdywcVcwqZjNMAp1wYe9SDOF2pETTwy9HCLcXPeWfVmijWGTlJMa+3O1R0l8lsc55zuC0oTVP5qVJ0hWxPTaQC8s8FpgJ9UmUzsO2s60rQyxfjKp/89a79jnnxWlGb5U+QgOil9b6bybzhGr9Aj4eHfrfTMyZhzNLC2iNB2lCUxIAHUWzJ/zbYkSXefY5DVf4QigAPhqvWXaRSxmX6v9bAkf/PjqxlRTYv1MPUStr4ynRhPV7zQBIC4Y+9eqTq3cV/yVuJrB4wEWFhObS/5ydRgM4/xNIAM3Kr+MCMd7vAHzbsOiPXHPditnnN/v/VK4M6X1x5RB8TtS5wdtFvIwtT/6CHSjiKyxSHKFx97DsET33VIaduWPwTED1y/8mW3s1LKymJelD05oSbCrXcDRfvArDJCyQwgIg0PDBD4donLeiBoe/yDZ3VDmTVQdxmYFUepbSWPxTw6WsUBqkKkdYiRx9DpJpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(31686004)(86362001)(31696002)(2906002)(558084003)(36756003)(6512007)(186003)(53546011)(26005)(6506007)(38100700002)(82960400001)(6486002)(6666004)(54906003)(110136005)(6636002)(4326008)(316002)(66946007)(66476007)(2616005)(66556008)(8936002)(478600001)(5660300002)(8676002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXZtN0dzK3EyRTNvVEh5VlZnR3JKT1lJWmhHYVhwWjhjOUxaQ3Nmb0l0ekps?=
 =?utf-8?B?UmZWZDlFTDBKd3hDRWxaNmhZbU1QR0N2MFh0dFo0cVByendUT21HYk1LKzdL?=
 =?utf-8?B?QmNTelFQZzdobWM3a2M2L2RoNTZhSFVGWTFmV0hQUEFGTHFZckF1aFFFTUpa?=
 =?utf-8?B?KzYrdVpEWEpiaEdXQnltdFlnMC9XTG5zMWo5OE1GRkQzR21VNkMycXNkZVJ3?=
 =?utf-8?B?N1NjZkJxcXROS3RuelFveXlpcXlEV2U2c3NpNFNyZWFDdmkvUnBOamZmUGxa?=
 =?utf-8?B?V1FLd2JoR3JScTNhOUxrVitRTjllVVVreTBycCtpOFRjQUJ4V0ViMTZ4bURy?=
 =?utf-8?B?UXFldG84a3hBemE4SGVrYStqZnI2Q01UNTJ1Z1czZ3FYTDRpd0ZpbDRHMUMy?=
 =?utf-8?B?WXZNZGpkUG9XSmFZQTE5TUhySGU4SE5vcE93RkI5UHhjbVlwMDNrVXp1L3ZB?=
 =?utf-8?B?MzdIM0srRkRzZXFRNFpaWTVLZ1BCdU9DSERQaitpUDB6T3R4a1RmNUV2cU1Q?=
 =?utf-8?B?cFdaM3MxUjkvR1JjYjJLMzRoNnV1Sm1NSHB1Mjk4Y1orcE5vZThBNEtDM1J3?=
 =?utf-8?B?STltYTZxb2VVRXVCTElwM08xZUwrWG1hSEw0TzBiMEgxQ2dYWVlIcVMzNWsz?=
 =?utf-8?B?RE03MU9WTmNQN3M5MG05c2lOVWRxZ2doZnpzMlpIalJXYVlxb2UvMTZFaHpw?=
 =?utf-8?B?S1FvNjByc1gxYkxIeTRLU0F5ZVdQbUNZREkyVVdlNjJ0TFZrOGowMmRJUGJL?=
 =?utf-8?B?bGdDU3NtUDVRYk5vb2lPanhacHBYQUdzVXlKcUVrcStwREVjRnZpdXU3ZTAr?=
 =?utf-8?B?RDh3TUFIb1AxMS9XcWc2VlZ0TU5vbXFlNHlERXU5NFdlR1pDTHFoOVBLK29U?=
 =?utf-8?B?VDRORUdodUMzNDJDeFlKay9WRDdPQVhkUVRzYm1OT1ZUaFBONDdFbnlkblEw?=
 =?utf-8?B?c20xVkxpVGVPeGt2YzU5WlV2eDd6THYrS0ZDaWN1Wk5LM2c1eHJNQTB4M1VJ?=
 =?utf-8?B?ZEF2amZGclMrY0NvWXpyUElnSUFHRzhLTDRQZmUrR0NlK2NsMCtjUVBwTldO?=
 =?utf-8?B?R01kNTF6aDc5Tkh4ZUNoTzNpWkhBMVllSyswQVNvMXhGcDJlcXZpbU5iNGdo?=
 =?utf-8?B?blA5dDRwSlVvU0FUWmtHV3VpVlMxYkQyV0dIRThrdlVVVnU2STFqZXRzdm9x?=
 =?utf-8?B?ZUtNanBFV2JEUnczckdlQVY5eU9rWGJ4N2d4VG4reDVrSnlCV3gvNmdRUWpo?=
 =?utf-8?B?R0FTMHAwODlFNS9ZNnJoeTBJT3lQNDBjQjVlMW1OVUt0Vm5pWUx5ajgyZ1F4?=
 =?utf-8?B?WnJ6dVpCYlpmeGhuR0diOC8yYTdQTGFIUXBRb2FQTFpreXF6N0lxdDFmMCtr?=
 =?utf-8?B?ek83VlVQMEhkMEVrYVVNeDhaVzVZOE5VbzM5WkJYa1dPN0JPdlZTallGeTJR?=
 =?utf-8?B?YmxaT3NYMGc0U01lMUVMSjM0UWp5eWpzTEh6YmZqaWl6ZHF1UnlxZlhDYTFB?=
 =?utf-8?B?aHpsVWRCdm9oQlRLRUVkeEJ4RUJueEsxYm9ESlhoTVdTcFVyTkh6WmRMblhs?=
 =?utf-8?B?dDA4L1NHSFN6SnFEUUJVc29sa3FrWnZ5d0xaN3dZdzJUL0VVbzlWM0sxamRh?=
 =?utf-8?B?NXZabTN4V3ZlRSthRHMyRG56S0tIZU50ZVNBOWNmNGlva2IwdUltcVBDTjkr?=
 =?utf-8?B?em1JeDdCWnpWcGIwRythTHJVUTJzNU9JOE81YVhJaVNpOEFJUjJyb2pWVi9n?=
 =?utf-8?B?L2FWVDBGS1ZDNjUxRzlyOVdTVStzTlJmZjdhckF1RXFnZHg4eW84ZmpHK0NB?=
 =?utf-8?B?SWM3L05WUE1xOFZST2xwTWtGdDR3cTdCQ3NVRnhheWViamUraERwSkx3WTZx?=
 =?utf-8?B?UUJwWlFDSXBRZ3d3aGQrWkhOR2s4V2ZxS1U4VXordFREakk5UG9kNVVxN1BC?=
 =?utf-8?B?ZVFEb1lWRTcwYkxnRnBPSHR2WGh3WitVM3U0Qk13aVFMRFhnaUllRVE0RGVL?=
 =?utf-8?B?SU5meTJiZk0xRkNETXkyZnV4T1RHZ0ZlVTY3ODFRczljL2trT01aWFlSZC9q?=
 =?utf-8?B?MTJxNi95OGpmaHY2NGlJWlhsK2RuSFBIZlloclJIRHNocHB1OWZaVlpRWC9O?=
 =?utf-8?Q?vRnhbaN/KlgtHVKF1cTY3xO+9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d80959-2bb7-4628-59f7-08db861edf97
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2023 17:05:36.4483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F+fuRXDVQ1CmMhjgIstiBRDPH2ZISZrq0U/tQaj/Mvq7evuyiwrJEKZGGB8eCLLHxCmTDFytmxiFSepMdzFWZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8659
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689527140; x=1721063140;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TFd8ynbh5cvCmLLnSTpBeZula+LljZqWBu/foC3XyWU=;
 b=O+tYBlTe59kZJ8jaYLECcPCjMwv1/oPC/qcTFWPMpxEJfog/LusRkTsV
 58PdxkYdBTzMGCYxp0+ROKkxqphDX+PsGp3DnO26Cb6lqMjGFqkwuK/6f
 Srjx9zMEsJoGOyaWwtYNORzzFC3UjNmODb757hBbQlFc8XPrkEImHPzz/
 RUaiQUOm8k08IxIQgUbE3BJjuPtnEq0aKZEpmrn5oEmcri/EJk9aVrwCF
 213Lf/NJRlkQHUT+YgdJ6iELCvaHQWpz3lQ97ksVg8PP8aW18IZrtzwM9
 4aZoJJw7A6FaYDO0hGF77AArlH55dUm1SKvVtMzWIaC9ZV2xa5x+ljUFX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O+tYBlTe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igc: Fix Kernel Panic
 during ndo_tx_timeout callback
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/7/2023 05:14, Muhammad Husaini Zulkifli wrote:
> Signed-off-by: Muhammad Husaini Zulkifli<muhammad.husaini.zulkifli@intel.com>
Acked-by: Sasha Neftin <sasha.neftin@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
