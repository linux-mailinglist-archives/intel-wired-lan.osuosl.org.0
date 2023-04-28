Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E79D76F1CCF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 18:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F5C46FEF2;
	Fri, 28 Apr 2023 16:42:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F5C46FEF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682700132;
	bh=s1VS3hAN2uk09EUEisnNuBJxsfGNVX4Yneaw2rs68QA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BdwQd0Q1F8p+VIzrn+UubtotxQMlnWwB9nWE7UMic52uoton6T+hwHL58xezbK9J2
	 pWUBM8FMYR5PdjUC8O6vFCn0mgxvkoV75yW1Z1UAMzbe8QGTHA/qekqoKcra4XI0x+
	 X9ouUDKPmnCJD/Xy5ZogdYNBNKmn9IcCUpBsICfqVvGwJd/pM7zArF0B73XznjMHhl
	 uWCqlLcNAb4e5ts2HORYcJHznMDIIQ8OiOIRCeZma+T4RAlg13PINkkjqoLKaryK0q
	 7Nd3esXKkApQHhXJ9hVlb+twCBxWx6JSc4F/QeCau2uaMGcfuZeXVoSIJj2fUh7LJa
	 8gQYA81dikHQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-zZsDi8TtfN; Fri, 28 Apr 2023 16:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 401A16FEEA;
	Fri, 28 Apr 2023 16:42:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 401A16FEEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8ACE31BF488
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 16:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5EDF86FEEA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 16:42:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EDF86FEEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRd3RTAIsImh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 16:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 392686FEE5
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 392686FEE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 16:42:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="327415281"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="327415281"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 09:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="819070132"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="819070132"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 28 Apr 2023 09:41:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 09:41:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 09:41:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 09:41:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FijLrwiQ1gTEw3gTMJLlaMR9pP4rYIo/ENCS5sp7VupRhfecG5KUO6DGewiBiYZpFbocmdRx8vK8JYBe3BHrf2W8WCwMwzYwLFWhL8LJi6DuKsPvfMzSPs7GV2XLQWX1L+Y9+clPMJPIpeloC9D9m6WVA9WaK9dQ0uBtOT6LS5KasZvm9Ih+40FipoBAaUzx3AQuqQJzVSDopFtYXYcmHEW87LjpIW9WGg1INl5AB71nrLLAT2VWMd5lBnQYi/H5y6NzqB4Bci7zVzzTU/Kwq4msZ9uw35Y3cxIZDgrcSPA8OBvK0Dy+D4tIdE7LPkFfYSVtN905U5JTeI7991+YAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTc9IEDiW1m5hYhMFaHI3NHH1xhI36WzCzFJbSMImZ4=;
 b=XLkykGdBnclegf2vHOeT/AbS9MReQtKVHxFUDXwZB9zHbnRWBpd9JQaOmyTazyt17Nk4H73E+qh8/A62CVA6PjQAKn1Zu4MDizPkx0+nptpiaAkoye7DyNsh07fqXeUGhYaLKetxvQtzjVaJ7K2BEQTj4lW9nXLyDDeuKF9JhPByle3nRXMVn7yAMi+cF90o+1Ah2jZhd00DEPB0tzu2WRNwZa9fSHLvgd1SNXsxXgm3sCFf7wxPWc/6Kazsvx+vryDKpbp6Fuk6nkg1wQVw/Ugx3RJw53G5mXoBPbq/rht08us0YFkqzS3AlikhZIQINSIJO1lOCo1HPDbFMTu8Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB6673.namprd11.prod.outlook.com (2603:10b6:510:1ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Fri, 28 Apr
 2023 16:41:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%6]) with mapi id 15.20.6319.034; Fri, 28 Apr 2023
 16:41:46 +0000
Message-ID: <c7d70574-b03f-3d88-878b-ab21422ed214@intel.com>
Date: Fri, 28 Apr 2023 09:41:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ding Hui <dinghui@sangfor.com.cn>, Michal Kubiak <michal.kubiak@intel.com>
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
 <20230419150709.24810-2-dinghui@sangfor.com.cn>
 <ZElExd5bAL2FCpIB@localhost.localdomain>
 <650acda0-9ec9-7634-3e01-e4870c8890b7@sangfor.com.cn>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <650acda0-9ec9-7634-3e01-e4870c8890b7@sangfor.com.cn>
X-ClientProxiedBy: SJ0PR05CA0206.namprd05.prod.outlook.com
 (2603:10b6:a03:330::31) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB6673:EE_
X-MS-Office365-Filtering-Correlation-Id: ed5b16f7-6432-4ece-ce87-08db48077457
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 67Nqj9K23AvtXsphrTQnk74YDe4ZL0yWj6Ow7PnmPEWlQL08ercEynhDDR2VLgbN2mxEJZ0dYvtK3kvXKmrCOF7vhVgrN0Qok7bLtRVSfJwAeMlvr7dGju7oG9yHGNJwrzeCPz4cCV0alzOY6jGm50vsAKwMwPpLl+AE1qoAqlTZa6k8OkPLhEu5e4+8RV9VVTzwNLdSmTOa+PN/C3n+XbMKvO95Ec9K0zA/t07PSb/y8v3OacWOv00zPpWpxX4KMP3oH8eXfLNJwd1DnIde2K/KHPb9KSY7QRN/0aS+jPf4287CkCwb8ajk6V7Ro/sGhderDv2Y9uWIYNJ5Eievo6utsuDGK/3qp78C82DKDqr6VPIyswYoPnbuasDNhTIkkjFzTFjYk2rNuVBcQ/SKc456NxITN5CYvKim8wzQCpiySIo/iSmsyR8eexnb9VwVFcHB4n4+Ao0xhVzgs2sfavK9b06iDEBbNcVN4KAU73dUNx+AmNHnsUCabB17A0gCzWojO3+YzHR/Yn/NDC+okxUv/0V2G/REGv9R54v7QLPa/b1RlZTKktf5wina/c8y9PKEoSEOsnWpshl8/rjkUtq1UJ7OgMpkjAPnRafn8o170SoYukoGywLSAwcZZCAL40EVQ6pwFbah4V/7Xgxl/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(31686004)(6506007)(6636002)(110136005)(26005)(186003)(478600001)(66946007)(2616005)(31696002)(86362001)(558084003)(83380400001)(6666004)(316002)(36756003)(6486002)(53546011)(2906002)(41300700001)(38100700002)(4326008)(8676002)(66476007)(5660300002)(66556008)(8936002)(82960400001)(6512007)(7416002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG9saXlGR3E4WmVqVEhOTnV1bUhoaXJyRGdtdzhIYmU4SGN0RGhqVFhCbUww?=
 =?utf-8?B?SnAyZ2Mxay9HM3VlQmpEYnNkVE5rSG1JdWZNdWhnTTNvVmt3R1RUcEdHbWIy?=
 =?utf-8?B?TWJvSlM2R1JRRnpLdjhPUjhVVy9LTmpHWXd3cVd3WG5lektiZ2F0dmsyeWtx?=
 =?utf-8?B?ZXYvaUVjT1hoNDJKcmNzOWk3TUgrNUVJUXdhNG9zbTIyL0hXckc4QTJGVlFq?=
 =?utf-8?B?ektuY2E3YThBbzJvTTFycW5UTVdSU1NmN0laSFAxVlRsck8ydlhHcnJnbkNv?=
 =?utf-8?B?cm9TVHoyMXNoazJBRlNUL3JzdUxjOXFlTVExTnBUMGlmNXJLZmNWTEF2c1Jx?=
 =?utf-8?B?dFpnM0JicjlwbGNWQUd5UjdEQ24vRFJzVEtWQ1FMMnpMSEIzR1VaM2hFRmJ3?=
 =?utf-8?B?WFBlWStqSFJudmdkZkRsQVJiNDRFUWE5ZytVeW1jVG02YklaWmdDaERwY2xi?=
 =?utf-8?B?UTdJTHZCMXcveWpjZEMraWJ2TVNiVjhRMU1OSVMwVys5K2xnOVcrSnVaV1Nv?=
 =?utf-8?B?MHo5OHU0bi9wY0FPRis2ZVRMbEM3V3FSQTNjS3QzSm5Oc09rTHN2aFQycUFq?=
 =?utf-8?B?RGhVd2tqeWgvWHFtUGR5eXJidkxNZmkyNkdQVmNOREdvbE51TU9xVGtRLyty?=
 =?utf-8?B?a3JQNXh4cktnb3lnRUZmczlYN2JEVUlIaG1SQzZEMkpuK3l6UGZKRDIzZmpV?=
 =?utf-8?B?cEFJVmdveTJ0QlFSRzdSQlJFUlNpQWlLUlJoa3BVRi9uckRPYkNwV1ZTV0hW?=
 =?utf-8?B?bjFldzVualBScmVOeTVaK1Brd1dRMENZK1VoNjhvWDhWNHNUeUYzdXUzSzVE?=
 =?utf-8?B?OVFUbXA2aTZMT1daZ1ExT1l4aGo5bFF4eTlScWVxejNJYzBDcHNhZnVLbS9j?=
 =?utf-8?B?UkVSQitJUXliczI0cXQ0SEJab1UxQ3ZrMUJlcUtmU2pWcXVENlozS3ZZSWJN?=
 =?utf-8?B?c0NpdHpBdUZIUlJsd3dWSTN4aWpNVWVGN1AvenBwU2xleGJ5WDZpbjRBWkFw?=
 =?utf-8?B?S0Z5SWtUZGM0aU94R2lRNmF0b293cExLQ002dHpSM0ZMS1h6T0tzWGsrRUds?=
 =?utf-8?B?TkFaMkpmUEVQcDVCVFd3OVlSdmw4KzRJVXlONCsxZ3Y3eEVwL0lVZCtJOFFp?=
 =?utf-8?B?cU52UnB2SmFrYmhIUit6OVVIZzBtb0ZhMHhPQ2h6RjNQZGpzM3YrM0VjUm5z?=
 =?utf-8?B?aVQ5QlpEUUh6L2hNVEFxaWgvMlhqQ1Q1MWpzaEJoTDBXTE9RN3FYME5Yc0JH?=
 =?utf-8?B?V0h5a3NaVzlEaXA0UHVzRDBVV0ZHNTZucUg2SGt1Z2puTUFRNDg2Qmhsb3VL?=
 =?utf-8?B?bDlqb2NnUWM4d0czekJORGcrcjh1WXRoSjB3cGFDcTVGS1JEUzB2blphNWVZ?=
 =?utf-8?B?OHgyVDFMVDExU3kyQmJWcU5rY0pPTE1YVFJ6QjJRZVNQVmJiR2lBYjR2Tm1t?=
 =?utf-8?B?c3R0Z0h5RkFYV1hwakpTdDR3VWVFZHpUTnUydU1xdzdPRVZIdytYSlJuenBo?=
 =?utf-8?B?SGt4RFNDQmN5OXBydUsvMnhtVlZnT1JvU3hURlFCMkQwSXYrQjNSNDIralVy?=
 =?utf-8?B?d2NmUlYrMGdkUmszRys4YTY2OGZFWndDNkxydFBsUFd2bmZqMmV5S1psdnBG?=
 =?utf-8?B?UVIxTTVjanFXYVhHZm4xb1FkamxQelZHeGMxSDNEcmhUbTVGMjFUeEtBNVdB?=
 =?utf-8?B?emZDRWZqNXRGSkdhV3J0OExzR0E0MDd3Y3VtYzg0UFZzN0h5VUFBeFM3RHhr?=
 =?utf-8?B?L2krTUpHZHpIMkZ1NzZLU2FMQUVRTVpRTlF6ZHdWTUZDWTFpN3VaQjlFUGtE?=
 =?utf-8?B?NWRPRVFXNStzV01TeU5RTmpiM3FQRTlmUEhMQTNuT3B6SDRvbldLd1VYVWVp?=
 =?utf-8?B?bmRoTEs2ZWdadzZRY0czNGtRK1BSY29aZStNVFFabnVUMEpSbWVxYi9uSU9G?=
 =?utf-8?B?b1I1U05JWjhPZ2FjbUFQbHdmMUhmVlVZUE04TjNFUGY3YkE2ekVsRWFQbVdX?=
 =?utf-8?B?QlVUcjdUSHUwWkNSbVY2bUhzc0xZTWJPRjZrL0ZLYklOMXAvRkNIR0VhZ2dK?=
 =?utf-8?B?d0N5ZWQzOFdBYVV6dHBVVmVxYTVFdXFCdEdvUEIveFV5UW9iaEN2K2ZucVcv?=
 =?utf-8?B?QXJJY2pBNStJM0pzd200Sm9rZEFjMFIxZmROSXZqSDJqMzBhaGlobXJFQm91?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed5b16f7-6432-4ece-ce87-08db48077457
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2023 16:41:45.9204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xq85QMzqty4kDK/OS20Ka4vqom03Br+3rNwThcGo21OWVYL4BqkaUdX/+3vJ26exYF6lPktrdQmPN7i+fNYS1pcPLnx8RKaPoK8yUZvCv7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6673
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682700122; x=1714236122;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kTc9IEDiW1m5hYhMFaHI3NHH1xhI36WzCzFJbSMImZ4=;
 b=M0On/DE/AlsV3NIHxjHTehIWQ48lZglaJTmdJ4i+bVPWrMqEQPcfgr0j
 wj1ETaTx7vj9klNiGb2dmLqhBdSep+UQdYZ87Bj/NVuQ8HZK9JR4sDFio
 sG/M8KZfIcG/vFBU39E5keMJlrPz6MO/So85wU5gN9MGjWhz6LCx4MMQR
 5WmVdJ+F2i7U4MAFt+dpF/f6l+SL7dM23dP/Vn8lPLmh0NsK3+XcC6gml
 dNo9V9g+bh0StVFfED1Lc4d1FgDjKqBynrgb8W+fe/X04OHFUp80XlhsE
 Ts9bjQzp7KpjH40AJ9mAHMCBP3GJQBwTwnXxP0AwjHZIu7Al9BDwH58Mt
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M0On/DE/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix use-after-free
 in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org,
 grzegorzx.szczurek@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, gregory.v.rose@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/26/2023 6:14 PM, Ding Hui wrote:
> Hi Tony Nguyen,
> the patches is already applied to your dev-queue branch, should I send
> v3 or you can fix it in your git?

An updated v3 would be great.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
