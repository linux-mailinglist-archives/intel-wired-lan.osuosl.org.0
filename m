Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7DA724433
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 15:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE2A6611DB;
	Tue,  6 Jun 2023 13:19:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE2A6611DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686057590;
	bh=J9aOksyw5LIXAR5JXcTVkdGk2FuE6QtHsRs/5qbfdb4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oXw7ttiOiBg+bWZNRDNTvdU0RJ+4ieFx8cU0amSn7STlDnWJL8eyq0LyvkKE8sOrH
	 INGbHZC9srGSP7W3ptRCHa0vmWm5QXT8TRRAKRIGQQshH3sQXCMNd40uEGNfR3fg7z
	 /msS3ag+QyUpNhJaEw11WW+mEgZruuFBnB7K2mBUUyH1Q3rl/+knawFxMiC63NZH5O
	 FKWBaGQRatMJxIrNhJLZN0tDlWzlSpOSv6zQuMBv0NWEs4YOJg66iDBP4+GDxfDxV5
	 YHgkwW12jKTdh15pTwbDp5xF+4OLPjtSG3ZmGyajWd2z61zn916bei5XLUQV5dmx1H
	 rhWgAtmS4Vezg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ro_z-DdQT_gc; Tue,  6 Jun 2023 13:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B60A360FC7;
	Tue,  6 Jun 2023 13:19:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B60A360FC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08B831BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E145D61091
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E145D61091
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcJSvv4qIFM4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 13:19:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67A5D60FC7
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67A5D60FC7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 13:19:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355521805"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="355521805"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 06:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="712208355"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="712208355"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2023 06:19:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 06:19:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 06:19:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 06:19:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTPbU6Cb9jh9iN5iSDUBxVRjCeFs/h22hHCG1gZ5lvicnIMJ4AcqVNmeiJk9CvkTLTjrAIJHfCemp5hAp/fPY1ZTj4iUqwFzJ5ZmwJwOLKP8L0cugJ86Zveu0cE8g1EbQVu2W4TIyeMDE039BzjUR2s36a3CzINqpeDyj9gC4Od970NxBCgxNN+wdypwW1uXnYXykzBj2NryGW3MFwDzvbDa/QzufkI4oIAKOYMQ4ex4fJYnItVUJvUS8p0ICaBPJdjBYj7JVFosr/LyCftCkrxPYiEkrw0BkrWoRl25h0zH9537F9bJ1RT6HmBZioeusJPqOYLtdjqEXxJPOvqxhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7QpmqTQSoFi/YU0o2FWyyefkAoUKTssSL7Do6UMakM=;
 b=WKB+tGSjsmtWpf4J5m9W81Xm9DbL3X9a7XJWUZOjwYIVIMRPUmkOue7WsieP3SvXK4os5HfVBGtR9Nip67f0gbwddrQslazbXA+5V9y1oM7gEvTA97NoAeoFaYfhv/D+4paf6jKUs0rpPgK/F3+/ynJHVa3gkmtJjdDGYN/GegvryC1PiXqU82WdihAShGjDh9UOZFCCpv2ubxXaHii7BaB4fou4Xdk6QZSfylELTRt/dp7yjjxe0++mlet0ra64nkINzhPfUbchH3kR6ccuuvH03BdRWvO3R9LJ2fTWoXHiXWxz4DrcHeFIkcUTOrZF8bzw2cYBJm4g9aodLNuu5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DM4PR11MB5342.namprd11.prod.outlook.com (2603:10b6:5:391::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19; Tue, 6 Jun
 2023 13:19:37 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 13:19:37 +0000
Message-ID: <63ccadd7-316d-cb1f-b1d6-4f2911120959@intel.com>
Date: Tue, 6 Jun 2023 15:17:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-3-marcin.szycik@linux.intel.com>
 <ZH2plrPDtUdmjL7w@corigine.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZH2plrPDtUdmjL7w@corigine.com>
X-ClientProxiedBy: FR0P281CA0159.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::15) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DM4PR11MB5342:EE_
X-MS-Office365-Filtering-Correlation-Id: 3428f252-3348-4092-84ba-08db6690ad12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VH302P8kNiTn5GKvASyhKY779BmWw9HEAUN6XV3FQOmOUEleTvRqqcVVzt3GfvVLXPUxuFVU4o0a+wzzBqG4XKmNTh49RSejfcbqFZ83E6hPmsf5F0nWbbvuSF4WGIiOLWu0zunFgAuMRewHwduUsspBkCMsS6t2zyFjU08pPQ7a/tYPpeJjBz3LWIYbP9bHdkSeIb6wNZBLy7EamTIBbzQtDaCAxzaontXa2Gl7gBxZ1dOgq5I0iAhlimOHhcZwQCu39I/Xc9XOQgqG0H0pM5y5ZxlWqkRDhI1s1hsjxW1NlbJTrYD0EsqN8tS4Yxa122E9kM30k1R5K2QHt8aVLb2RxD2NOHiNxrjU9UMsVWnthq9ROGBC1hFKhFjXPNlMIQMJ6SZjz3UqzBl3W3hL2QMOy0pOhi+jp2rnhNR7jGCdnwLZEaaThic4Mnb073IgRaiR/UO6WjFOOg5g6XVW71CnmeuwrVFF1+lnWQxMbb74ftiCr3/PP0YN9n9xSzK7/G5NKpy7jBxx1/EjqRxpRNIiQmO9DbdN7FFkDl1AJaMygzV7GGk3CuO2W5wgLvvIaKQW85n7YjwPov2nDp7gc/RXzGrxYbDP2PGTuEG389Fh2sc1Iner+W6/zrziBv7RmqkjMdlBgRObYMgAiAAifQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(376002)(396003)(366004)(451199021)(36756003)(478600001)(5660300002)(6666004)(8936002)(8676002)(316002)(6916009)(4326008)(66946007)(66556008)(66476007)(41300700001)(38100700002)(2906002)(31686004)(7416002)(82960400001)(26005)(6506007)(6512007)(31696002)(86362001)(186003)(2616005)(83380400001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2U5U1ZUdVpudWdYK3dxalZEdUlDUUkvakkyU0FyenI0VkJSTGVzaFdKbjdV?=
 =?utf-8?B?UmhzTzVSN2lrdkNaVDUwNis1VWdMUk1mTVpDZzc3V0o0UFROcjFLSGhSWEN4?=
 =?utf-8?B?cElraFhYWkdhbjVieEIzMUtXUm1sdG9LZy8rOUxhaEVKaWhoOC81RWZVYjVs?=
 =?utf-8?B?KzVjWGdGNmtOaForS1VRenlnMG92OXN0T1NzdWdGc1FENThOc2l6bWRMcisv?=
 =?utf-8?B?UTRlcXVLQnJOdC80N2JIemU3WTVTQ21SWEZaUTdWcmtoRTBHQzcyOHRQUGZL?=
 =?utf-8?B?WEQ5Rm5YdDc5TUtkQzN3VVVOaXJoZUFrczA0azRvbTBlMzhETTBNTUpFclhI?=
 =?utf-8?B?c3JKWU9aM3ZvbXpHQXBRU1FxRmNUOFdjaDkwcmtmZVlGZlZVUXViS2JXTGNX?=
 =?utf-8?B?dWZGM2EzdXBwR0xBQ3dkRlMxQXB1UnM0TlpNZk9tdFY2RFB4RDFDNlpBeEh2?=
 =?utf-8?B?enM0ZFV1L0NSWWovMGYrdVdzckdRbExBeFZ2WjV6T2dDVWhnUUhaMll3aHhx?=
 =?utf-8?B?TkMxTk1hYnFiKytxdmtEU2lnYU5RN05Uckpjc3IrcTlnM3J0RUxibFFlR0NK?=
 =?utf-8?B?TlRyWmovTi9xd0pUSjZHaUNDYlJsNkNIelFmYmlvbVhQWnBoUkw1VDBkSW8z?=
 =?utf-8?B?dEsxQ2tzVlJzNU8wVCtBS05IaVA1YWZEdzFvVmJSdzZZQ1g4NVI4b1JXNW44?=
 =?utf-8?B?UkpVNzhhVFc5Ynk0MUFkMDgxWmdxeWdhZFdsTHVrMnhQak43ZjBpaE02aHpw?=
 =?utf-8?B?TGl1c0pxbFJabVV0YVR6YjZJUWFSWGNmemVWSUNLY0QvME9PQnk2UE1paGNx?=
 =?utf-8?B?TUl3NDVJYTdvcGYyQTYrS3RZQXZ4S1Q5c3RRTWo1dEdOdWlKVEEvaHVhbmxt?=
 =?utf-8?B?cDVPL3E5cUxKNU5CenR4VVFDV2ZjRmJ4SzFJR1ZnM2ErbW5qb3hqSXpsRits?=
 =?utf-8?B?NFh2ZFZDb3lDb1FTZS9BN3RtOWVwNkovRVlRcVUyWjZ0T1ppNFdxZUJoV2hp?=
 =?utf-8?B?aU9admJxUU1MLzUrMEhwRndJQm5Cek5CRFhGNitjK1VHVE92Z1BVSFVaeFhO?=
 =?utf-8?B?dy9vZzNnQndhWVNjWVVTd1dnZEJ3dmVLL3ZiZ1d2TSsrMHN4djQ1YUZuZVpJ?=
 =?utf-8?B?YWJhbkpjTzdNclRocmx5dWtna2pDcGFHS3pGRFF4VHpldWVOREJ1eE9nRU9C?=
 =?utf-8?B?eUhBRlhtREFUNUJ3eEljcXlEaFdNTEZ3M3NJYlJsOGI5b01aQXkzM203d2VQ?=
 =?utf-8?B?N2VxRHJKTWI4cjNjeGkwaTJ0bGRhdXJ1aEFZQnYxL0hRb3VNTit4V2s0dXZX?=
 =?utf-8?B?NVVHaDFBNTBmUnBOdFhrbkd6bmhFQ0I1Smt5TGkxNlR2NU5mWUpoM2pIbVho?=
 =?utf-8?B?UUVEcEVRUUQwU0p1R0hhb21KYngzdlJwc2RGcjlVUXBIU2dBbGl1cU4ycVE0?=
 =?utf-8?B?S0dHY05NQktxRFJMODZ2VTAwTG5nV3B5UTczbFcrRHU2V21zMmwrbm8vNm12?=
 =?utf-8?B?cnRUanU0QWtQYis1UHhVaXMzM0ZrM0RYVlAyU1FEQ0ZKNEg4YmsyU09jdEdV?=
 =?utf-8?B?NEdQN2FZTGkrZVUxaGp6a2twQ2psT0ZzMnQyZXVVOTVyWUFyMkFvendhWE5i?=
 =?utf-8?B?U0JPMnUybzhmK3ZCeTJ4eFg4V1RhWi83UkpaTlQ4cGRYK0YrL0p3M2JQN0ZK?=
 =?utf-8?B?YW5OdkxqZm9USWpEdWlWdDJ6cFRsMDZQS01STWtKVElVR01BZm1NRmtUNmdj?=
 =?utf-8?B?S1l2QUFKQis1U1AxZWwzUVU1bEsyWFBnOEw3VjMwK2c0U2RESzUrT3Y5SVFn?=
 =?utf-8?B?VFlmZ1hId3liQVhLaWhRYkl6Ylg0NkpGWWExZHIydmNyUTdJNyt4OVFrdWNy?=
 =?utf-8?B?NHM1a0VGbm5UTUpvS1hEMFVZR2s3KzBRUHJBRGRZN25DUHpscHNKTnRBb0hi?=
 =?utf-8?B?WkNRSDVCeVJEQmlIV0dyMHp2M3lSU2VSYVNxczB6L3ZnRDNtS3Z0dExYNUVY?=
 =?utf-8?B?aC84VEJwRmI2bUhFN25SWVBGVUtjUXc2TGUrSUZyRjFCYWtVT2J3cXc5L096?=
 =?utf-8?B?bDQ5NXFPRXYxdWpKLzMvaW43WmdLQWwzNDZyd05SdWR3b0o4M0xVWjU3b1Mw?=
 =?utf-8?B?dDRWZCtOeEwvbklBQVRMTkpFOExqQTlnNDVWeUdmSGtyZ3JhUzg2N2VlbzFT?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3428f252-3348-4092-84ba-08db6690ad12
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 13:19:37.0309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eUdu02YDnlDsJ7FBucmVwpkLlSptrX7fGwio7WPLmPhP/YOrEk+alNLHKmswggETqVjfHIFTE2nKQRH0MAlcqwZ4P+BYmjOjFOUsS9j+RLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5342
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686057582; x=1717593582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GzbqxNpx0bIV1wPTKa4cqB6NvZQqBKmZ8GAKWnQLTbg=;
 b=gRwbDXTncKDahZ8Yo8TLOlV/7tpUHzDzsqogO2rvZmg1Qec425GEEV1v
 BISC9qcwW8AoQVzT4iTUUC6406DYdaOLODdRwM+6hkYtIEJ/XcSS9Lcvd
 090BqzS/qhW80HRSSspiH6vG6Ltcn56aFiOXDDsFdSaiR1exk0a8Zj/CH
 l10FENDsVrufJr4E5sdd4xNNpXjQu7feYovEs/wre0zxhq6yzLtILmWKU
 CHbGcgdCEfWeuYvWK7Yd3kXwsFEw/gbna8lWPw2kJgNZJ0KUeiJJag+pF
 K8ckFYvSoIfSJD7fdcFu1pjAk3gIaLMSm/42ywAuoG8hfFpqfuo/Xm9Zg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gRwbDXTn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogU2ltb24gSG9ybWFuIDxzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29tPgpEYXRlOiBNb24s
IDUgSnVuIDIwMjMgMTE6MjM6MzQgKzAyMDAKCj4gT24gVGh1LCBKdW4gMDEsIDIwMjMgYXQgMDM6
MTk6MjVQTSArMDIwMCwgTWFyY2luIFN6eWNpayB3cm90ZToKPj4gRnJvbTogQWxleGFuZGVyIExv
YmFraW4gPGFsZXhhbmRyLmxvYmFraW5AaW50ZWwuY29tPgoKWy4uLl0KCj4+ICBuZXQvaXB2NC9m
b3VfYnBmLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPj4gIG5ldC9pcHY0
L2dyZV9kZW11eC5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+PiAgbmV0L2lw
djQvaXBfZ3JlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTMxICsrKysrKysrKysr
LS0tLS0tLQo+PiAgbmV0L2lwdjQvaXBfdHVubmVsLmMgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDUxICsrKystLS0KPj4gIG5ldC9pcHY0L2lwX3R1bm5lbF9jb3JlLmMgICAgICAgICAgICAg
ICAgICAgICB8ICA4MSArKysrKysrLS0tLQo+PiAgbmV0L2lwdjQvaXBfdnRpLmMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDMxICsrKy0tCj4+ICBuZXQvaXB2NC9pcGlwLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjEgKystCj4+ICBuZXQvaXB2NC91ZHBfdHVubmVs
X2NvcmUuYyAgICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KPj4gIG5ldC9pcHY2L2lwNl9ncmUu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4NyArKysrKysrLS0tLS0KPj4gIG5ldC9p
cHY2L2lwNl90dW5uZWwuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxNCArLQo+PiAgbmV0
L2lwdjYvc2l0LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICstCj4+ICBu
ZXQvbmV0ZmlsdGVyL2lwdnMvaXBfdnNfY29yZS5jICAgICAgICAgICAgICAgfCAgIDYgKy0KPj4g
IG5ldC9uZXRmaWx0ZXIvaXB2cy9pcF92c194bWl0LmMgICAgICAgICAgICAgICB8ICAyMCArLS0K
Pj4gIG5ldC9uZXRmaWx0ZXIvbmZ0X3R1bm5lbC5jICAgICAgICAgICAgICAgICAgICB8ICA0NSAr
KystLS0KPj4gIG5ldC9vcGVudnN3aXRjaC9mbG93X25ldGxpbmsuYyAgICAgICAgICAgICAgICB8
ICA1NSArKysrLS0tLQo+PiAgbmV0L3BzYW1wbGUvcHNhbXBsZS5jICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDI2ICsrLS0KPj4gIG5ldC9zY2hlZC9hY3RfdHVubmVsX2tleS5jICAgICAgICAg
ICAgICAgICAgICB8ICAzOSArKystLS0KPj4gIG5ldC9zY2hlZC9jbHNfZmxvd2VyLmMgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAyNyArKy0tCj4+ICA0MCBmaWxlcyBjaGFuZ2VkLCA2OTUgaW5z
ZXJ0aW9ucygrKSwgMzkyIGRlbGV0aW9ucygtKQo+IAo+IG5pdDogdGhpcyBpcyBhIHJhdGhlciBs
b25nIHBhdGNoCkkga25vdywgYnV0IHlvdSBjYW4ndCBkbyBhbnl0aGluZyB3aXRoIGl0LiBJJ20g
Y2hhbmdpbmcgdGhlIHR5cGUgb2YgdGhlCmZpZWxkcyBmcm9tIGBfX2JlMTZgIHRvIGB1bnNpZ25l
ZCBsb25nICpgIGFuZCB0aGV5J3JlIGFjY2Vzc2VkIGluIGEgZ29vZAp0b24gb2YgcGxhY2VzIGFy
b3VuZCB0aGUga2VybmVsLiBUaGlzIHBhdGNoIGlzIGF0b21pYyBkZXNwaXRlIGJlaW5nCmh1Z2Us
IGFueSBzZXBhcmF0aW9uIHdvdWxkIGJyZWFrIGNvbXBpbGF0aW9uIMKvXF8o44OEKV8vwq8KClRo
YW5rcywKT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
