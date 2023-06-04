Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29FD72154F
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 09:20:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 142EA40B60;
	Sun,  4 Jun 2023 07:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 142EA40B60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685863216;
	bh=Jxhukdiul4aGmDrN0u+3CqUNx3w0Zdl9HDe/MUoHMxk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AXMwDtI+CWvo2sTxwTrZQl7bjMHAvMPCPNtSGQtZXINIofkn2c7P3WZZmLDSdwMl3
	 cvdfUSPYNpPJNIm5NZKrQzsO/auWmM5LvTMSO8dVSZL7CojYSGHvV2OE7AXUXPOBDC
	 pvF97VLWzaq0c0Fsk2UdphAY+q+RWNvDyNt62tKaVf50r97MGTMF+XViGXvjsOHySf
	 rz36hhvj7LUyQfivXXvlNDAjBlvoaH5xCdaF7yXpyJoA7MVUTz1dUy5+EiqlNxAMhL
	 nUDxt1+OkqvIr2E36pNHArh+xsx7mbt0xn7eEjitQQh8Ui0THgpB6NdPcGDUPSNm8r
	 DrJ9wWXNbYKCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NemknMNtuSUT; Sun,  4 Jun 2023 07:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5A9E4037C;
	Sun,  4 Jun 2023 07:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5A9E4037C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD0B71BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 07:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9063041E2D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 07:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9063041E2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PSt26oJAwFn3 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 07:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3A9241E2B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3A9241E2B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 07:20:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10730"; a="421984796"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="421984796"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 00:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10730"; a="798061614"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="798061614"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2023 00:20:06 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 4 Jun 2023 00:20:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 4 Jun 2023 00:20:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 4 Jun 2023 00:20:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGwTX4cRpFFBkJtaM4O8cNG7kKD1OuxGXHKwtEGCg3gkx/jpP4N+jN6dBMPMEs0mtLva7TFhmIAWOHihaLEKPzmpW4ybLrMtfapb4QjWUWxFsXY8AvY/c0Creh3N9P37J2UatfEC9l0aaxdcIgN45XMwHXMrFOyV7Hwixlv/EcFOpbiLYhZi50MUr6XJIl7/rjkbcztelldtf7PcNCvWURZlKmxz0+E/sXXMWxXj8wCElx1VVbfBde5TT0DWXjZ76wR8y/mhIK+n3ELoUnJGMa+yNwwehTQ5f3a+sWFMSm+9zkmRRifJ2/NkIZErh1VKsAlS1GONmVFINm6DpQEbCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFjFuV/uUxyqJ977uKV19zlmuNzuB67QnQs9H+dEMFc=;
 b=WceR7E+ACmP0OPzmIlRz01xftVxpeZn14Dgq8MMB2jTkTJu3vIDCp13BqZR1z8BHUQE5xlpMxErZ4awOCaU1WXVjRr+4OwdWJcTosR7JghgiuG8EOSXw3xKVXO9fnawNIGvrE/EMVuj/UmcKCm/KLm3s9Qi9wEu1e8exIdBLHgeni8ERIjlL1Q+JxrGpN0x+0t11QtzuMfRW2XQY4Pai16FDPHb6lQa/T590/OS+gOppjyQuWhOvIRyzELxouDyR2hmPECAHw2YMzcKq+dTQCPOKw/91ksUydDCp8XMjYjcWBgF+ZTV6tgKVLJJ0jToHJ6wEJI15GJhBmiNARYfxKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM4PR11MB5503.namprd11.prod.outlook.com (2603:10b6:5:39f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.31; Sun, 4 Jun
 2023 07:20:03 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%6]) with mapi id 15.20.6455.028; Sun, 4 Jun 2023
 07:20:02 +0000
Message-ID: <61ead333-c9b1-1580-78e8-132337408e25@intel.com>
Date: Sun, 4 Jun 2023 10:19:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <20230601185353.17012-1-prasad@arista.com>
 <cbb5bf34-5082-13ec-45b8-590268279bae@intel.com>
 <CAKh1g57arCC3a0iv+pc+xKJk+8HgzqvK6SjJt83uVQedw2Hm9w@mail.gmail.com>
 <CAKh1g548roQKgHu6aS+SAB2Ux+HkJHWgpfEFvvqqnHu56F1sDQ@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CAKh1g548roQKgHu6aS+SAB2Ux+HkJHWgpfEFvvqqnHu56F1sDQ@mail.gmail.com>
X-ClientProxiedBy: ZR2P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::20) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM4PR11MB5503:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a487f07-e13d-4200-7496-08db64cc1cbf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7MJYPF7BA8cVF6aFa5McdOAzTd4yqZC4tr11jZLA76wTW5w1AXziaRMu1iveJ//j/EM/Z990d4m3ifxm+LUvnUbyF0bOXpvh9Aw+2WMtJ9OotdI/PT07XGTG24RG6D+1+DWQnm+0tqAPRDJPVhN9BNJ8NNpXABAWkhiX8qglURfnSk4RLwosHCiYLbKyi2i2oI5iFeVTfAPLuVHFEdJXKVIR+fC9hWlwAXzGsQjHrO1lY1X7425Uc+UJDLUYkQmOIEECPGOIuHtcKwbxzMXR5AtRqfC9lUsm/MkSkvliTcJEw1gdruOv9bIJorEU60LQ5bfdnyxLVUJYwoJd9hhVoBKwde6LhA1eWcGLOYbOncdJojuKrfHFGRsCl5pgdDQ0kbV2oTbrA3WaCAVe4cGecX4L/nUgG4SAbxmdGtcDpF+vAnjazce1hUrrVwuQ1diXvB89w2yMHCkOkQvdTzi6DM2ZQ/hu3EvT0R/Ua5fp+oMkA36nI5pyQqY3YyCCICcLSHOt79udUCqIN9vBp5NeW7GVWV+B+/ZdO5XuIX0czOkaA+1secLciu9QCrkbCcdapj99FyQ9qc4cOteZM1Y5vsDDG/uRo9WCWt5nJ5amWpX14WFMSj6zWANA43ZElieJrrV3rzv+2KXO3qbpqNwzeA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199021)(26005)(38100700002)(2616005)(41300700001)(6506007)(6666004)(6512007)(186003)(31686004)(53546011)(6486002)(478600001)(110136005)(54906003)(4326008)(66476007)(66556008)(82960400001)(316002)(66946007)(8936002)(8676002)(5660300002)(2906002)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW10RGRxMEJFUTlTdWx2WE9FVU5rdkhrV0hSYWlnQndvaDRueVB3eWVmNWJz?=
 =?utf-8?B?QXZ4cVdaeUJWNzkrUDJ0dkRHVS9jSHQ0WlIzVmhyRkRkSkVXcklQbm5KbVJX?=
 =?utf-8?B?NlByK083dDFFMVNvYlpJbTVpc1J1R21hdkpnalBwUEhxb1l3YjRRNHJDWmw2?=
 =?utf-8?B?dlF4TVRsVGJFWGNaM2N5MHJyZzRkR21TL2ZXRWZUOEJFVXVabDZLdU82YnJT?=
 =?utf-8?B?Y1l1aityK0t0bGVoSDM3NkpiTWJ6N3JSajQ2ZGxWcWhsekZaRUdjS2NYOXc4?=
 =?utf-8?B?NDBGSU5KSE12M05rOVN6WVZ3ZkZzY2ZoMUliVEErS3l2Tm9LQ2g4NlhuQkpF?=
 =?utf-8?B?cTFNdDcxK3l4TEZ1cFJNTG5LbzJRSG9aK3h4bUliV09WenROa3pUWlBhUks1?=
 =?utf-8?B?ZjNaMFVVNWVDaU9nNXlXY0F4ZFc0bCtQOWNKYlpGQ0tjeHZTWFVtUkMyb1RX?=
 =?utf-8?B?cXV5Q3VJdnpINmRGNUxsbXBMUjFod05lOUZkVzFISzhldEl2eEZFcWRrcDFK?=
 =?utf-8?B?Vk4yb0UyMnB2Z0RCcUxzQkRYSjlLWFJmcHFZU0UyQ0k1ME1YRDUwaDFBTU1x?=
 =?utf-8?B?VkVuL0xhR1JNU1RsZ0NaSk9JMlcxOHVZempqWnJkKzZQNGd1aUlvekNpMVZI?=
 =?utf-8?B?Zko0RE5sQVljZDBrUjNlNitweFcvQzVnYmpPdGdad25NazY0dlZhdXEwZFpK?=
 =?utf-8?B?L05teXhGTVVlQVlaeTJuTUtadFQrekJ4bW9VMWxLVUhNOCs5TXl2b3NNWXd1?=
 =?utf-8?B?WGptcTd2ZHhZckxZdFdTcjBPR0FxK3pQeE1jRVJCbUxEUmc3Y1JIcW5BNkVq?=
 =?utf-8?B?R0tReEV6WkhDakd5dFhyNS8vWWFIcDdpZjE2ZUVMN1ZtdVpWbmRyUGZGUDJ1?=
 =?utf-8?B?RnNHZHhGbDgvTUhhVHY2ZktsbzRvMEk3cmZLc0t4UkpTenltMG51OHFna25a?=
 =?utf-8?B?R3ArQlcxekVFcURiaW9pUm1CR0lZSUtuTU9ueS9hOVp2ZjhvemtNTjJvM2JJ?=
 =?utf-8?B?Z3o3UmtoUS93T0VYU3pFd3VHeVU1SEVKa280SnBVZmVhVngwMEsyNUxBL1Nv?=
 =?utf-8?B?b3VZYVBPL2RYNktmOXE2MVVMRUFkSGtObDkrNFBOdE9EampuUi9SdUJzVS9l?=
 =?utf-8?B?eUM5NHh1NlI2RUxlckkrVHFYY0FrRXlwbTVDSXgvTlo2M0xRdFRpaldXa2FP?=
 =?utf-8?B?ZTQxR09VSEtTckpaT1FuRW16WldYUzZld2lRbjBnckR1WEVUb0dJU1plL3M1?=
 =?utf-8?B?VlJGNmM2ekFBYjhaaXMvUnA0K2pwVjhsTmlVbmFxaUNRVmpzNWx2aGhBemt4?=
 =?utf-8?B?N0xlZFZQNm1jcmhvdlpLWHpPK2l0ZzlmYkJ6U2wxb0U0Q3N3V1NOQmlNMjNX?=
 =?utf-8?B?SjYzN0ZWVmYweHI4c05aN1JLeEp2aXVES001WEM5Yk1iQ2NvWWdEaGxxMEhk?=
 =?utf-8?B?NTlnN1pkYTFxQVRsRFA4M0FoVXk3VVBNSUYvY1ZDQjVrcWFSR0RsM08zTVJX?=
 =?utf-8?B?KzJxcUJQMGExUjNNUFFKaE53SXdHNStXNGdGNEVBaGg0UjR2V3RNbVhOOWhJ?=
 =?utf-8?B?c09TdDZYR1lwOU5lR3pUdVV4NlE3bE5QNWxsRTUwNEs5VEx2cXpIeGNDZEhv?=
 =?utf-8?B?b25RZXdKSnFVVTVzT2VBT3MzeFFCdVhjT0w3bFBReWZHM3VzczlZY01PT09E?=
 =?utf-8?B?TjFUcGhHS3JkeVVYbENmVGtHZkZIODJBYVBmYTkrQkx2UVNYaHN0aUdUcnor?=
 =?utf-8?B?bGsxVitiNS9tWWNaM3ZSUGI4VnpzUEtiK096WGcrZkE5aktKUGI3SU0xTWhY?=
 =?utf-8?B?L1dGc21jTzFBWDBqdDVGaGQ2OVhyWEQyRUt2M2pvL29xeVJPalB2c1ppWnh3?=
 =?utf-8?B?ZzFqNnRjTEYrK2c2WnVsWHNUU0w0a1E2RUhNTE8xRmU3N2tydURIZU90cFpy?=
 =?utf-8?B?M0tKTHpKNWFkZlowd0xqSUxUYlFsMWtPSU1MVFlZNU82UXlGbFhqYVRqN3E4?=
 =?utf-8?B?Wm1BZFU5NENzY0VHOVhzUU9ZejBacUZIL0ZnZjU1ZmVWcEhIUkhFeS9pakVP?=
 =?utf-8?B?VmI4bzN2R1lKdHRxelVrTU52YkxqU2NUK0JLVmRYYnZ6TlNyRE1IN05XTXZV?=
 =?utf-8?Q?JmNCWRwl66ovfkNJU8XqzeiDV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a487f07-e13d-4200-7496-08db64cc1cbf
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 07:20:02.5600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmjW577X91cjE5j98PbVoa4ZTg0FSvqURrLz8kdvmXFSyChQi2lOBm8+W3/FVP5b7bLDKyVth/51gfY7t8cF7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5503
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685863207; x=1717399207;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zWx6Qf0fWd4r9IeeDinX7OyIlmgwHTTrBe56gd/d/5w=;
 b=apxvjutD6PM10RNWvhZGMAxPy4QzKiHT4iNE9W4+JRigy8VG3ZEl5mJG
 o+2z6e0o/xbrLJwckEHQiR1w2iwzvjY32Cia03vUoZLoH0YtuiBeCKp1+
 AhhOCpuMh4X+xnuKA8jQ8TYWg5mjUPL9c5s69Pr94X/O91OsieXKueV6D
 OVFYQNAVwJjXyN6B9AEtDI3HD8TTu5Crm2biqlLN77A307C9jh6dD8yi+
 OppGLinFo1jr8CTcxgFsouxo/oQ5Nk7+cxY7zJ0OqrbonNMNINsKjU+zt
 c123wjrUtyX2Mj7Y6TGvq7NlU8/6H/f6tv33qNkRFoJB/QJvFCXQ0QJZ8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=apxvjutD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] intel-wired-lan: igc: set TP bit in
 ethtool_link_ksettings.supported field
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 Salam Noureddine <noureddine@arista.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, gilligan@arista.com,
 intel-wired-lan@lists.osuosl.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8zLzIwMjMgMDk6MDUsIFByYXNhZCBLb3lhIHdyb3RlOgo+IEhpIFNhc2hhCj4gCj4gSW4g
b3VyIGludGVybmFsIHJldmlldywgd2UgZm91bmQgdGhhdCBpZ2IgYW5kIG90aGVyIHZlbmRvcnMn
IGRyaXZlcnMgc2V0IAo+IHRoZSBUUCAob3Igb3RoZXIgbWVkaWEpIGJpdCBpbiB0aGUgJ2FkdmVy
dGlzaW5nJyBmaWVsZCBhcyB3ZWxsLiBTbyBJIAo+IG1hZGUgdGhlIGFuZCB0ZXN0ZWQgdGhlIGNo
YW5nZSBpbiA2LjEuMzEga2VybmVsLiBXaWxsIHNlbmQgdGhhdCBwYXRjaCAKPiBmb3IgcmV2aWV3
Lgo+IAo+IFRoYW5rIHlvdS4KPiAKPiBPbiBGcmksIEp1biAyLCAyMDIzIGF0IDEyOjQ54oCvQU0g
UHJhc2FkIEtveWEgPHByYXNhZEBhcmlzdGEuY29tIAo+IDxtYWlsdG86cHJhc2FkQGFyaXN0YS5j
b20+PiB3cm90ZToKPiAKPiAgICAgVGhhbmtzIGZvciB0aGUgcXVpY2sgcmV2aWV3Lgo+IAo+ICAg
ICBZZXMsIHdlIHVzZSBFVEhUT09MX0dMSU5LU0VUVElOR1MgaW9jdGwgdG8gcmV0cmlldmUgaW50
ZXJmYWNlCj4gICAgIHNldHRpbmdzIGFuZCBleHBlY3QgdG8gc2VlIG9uZSBvZiBUUCBvciBNSUkg
c2V0IGluIHRoZSAnc3VwcG9ydGVkJwo+ICAgICBiaXRtYXNrLgo+IAo+ICAgICBJJ2xsIHNlbmQg
b3V0IGEgbmV3IHBhdGNoIHJlbW92aW5nIHRoZSBpZigpLiBXb3VsZCB5b3UgYWNjZXB0IHRoZQo+
ICAgICBwYXRjaCBpbnRvIHlvdXIgc3RhZ2luZyB0cmVlIGFuZCBsYXRlciBwdXNoIGl0IHRvIHRo
ZSBzdGFibGUga2VybmVsCj4gICAgIGJyYW5jaD8gVGhpcyBpcyBteSBmaXJzdCB0aW1lIHNlbmRp
bmcgdG8gaW50ZWwtd2lyZWQtbGFuLiBOb3Qgc3VyZQo+ICAgICBob3cgaXQgd29ya3MuCgoxLiB5
ZXMsIGRlZmluaXRlbHkgd2Ugd2lsbCBhY2NlcHQuCjIuIHBsZWFzZSwgdXNlIHRoZSBbaXdsLW5l
dF0gcHJlZml4LCBmb3IgZXhhbXBsZToKW2l3bC1uZXQsIHYyXSBpZ2M6IHNldCBUUCBiaXQgaW4g
ZXRodG9vbF9saW5rX2tzZXR0aW5ncy5zdXBwb3J0ZWQgZmllbGQKMy4geW91IG1pZ2h0IGFkZCB0
aGUgZml4ZXMgdGFnLiBFeGFtcGxlOgpGaXhlczogOGM1YWQwZGFlOTNjOSAoImlnYzogQWRkIGV0
aHRvb2wgc3VwcG9ydCIpClRoYW5rcywKU2FzaGEKCj4gCj4gICAgIFRoYW5rIHlvdS4KPiAKPiAg
ICAgT24gRnJpLCBKdW4gMiwgMjAyMyBhdCAxMjozNOKAr0FNIE5lZnRpbiwgU2FzaGEKPiAgICAg
PHNhc2hhLm5lZnRpbkBpbnRlbC5jb20gPG1haWx0bzpzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPj4g
d3JvdGU6Cj4gCj4gICAgICAgICBPbiA2LzEvMjAyMyAyMTo1MywgcHJhc2FkQGFyaXN0YS5jb20g
PG1haWx0bzpwcmFzYWRAYXJpc3RhLmNvbT4KPiAgICAgICAgIHdyb3RlOgo+ICAgICAgICAgID4g
RnJvbTogUHJhc2FkIEtveWEgPHByYXNhZEBhcmlzdGEuY29tIDxtYWlsdG86cHJhc2FkQGFyaXN0
YS5jb20+Pgo+ICAgICAgICAgID4KPiAgICAgICAgICA+IGlmIHRoZSBwaHlzaWNhbCBtZWRpYSBp
cyB0d2lzdGVkIHBhaXIgY29wcGVyLCBzZXQgdGhlIFRQIGJpdAo+ICAgICAgICAgaW4gdGhlCj4g
ICAgICAgICAgPiAnc3VwcG9ydGVkJyBmaWVsZAo+ICAgICAgICAgID4KPiAgICAgICAgICA+IFNp
Z25lZC1vZmYtYnk6IFByYXNhZCBLb3lhIDxwcmFzYWRAYXJpc3RhLmNvbQo+ICAgICAgICAgPG1h
aWx0bzpwcmFzYWRAYXJpc3RhLmNvbT4+Cj4gICAgICAgICAgPiAtLS0KPiAgICAgICAgICA+wqAg
wqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYyB8IDIgKysKPiAg
ICAgICAgICA+wqAgwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gICAgICAgICAg
Pgo+ICAgICAgICAgID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfZXRodG9vbC5jCj4gICAgICAgICBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfZXRodG9vbC5jCj4gICAgICAgICAgPiBpbmRleCA4Y2MwNzdiNzEyYWQuLjdkMTk3ZmE4
MGQ1ZCAxMDA2NDQKPiAgICAgICAgICA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfZXRodG9vbC5jCj4gICAgICAgICAgPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX2V0aHRvb2wuYwo+ICAgICAgICAgID4gQEAgLTE3MDcsNiArMTcwNyw4
IEBAIHN0YXRpYyBpbnQKPiAgICAgICAgIGlnY19ldGh0b29sX2dldF9saW5rX2tzZXR0aW5ncyhz
dHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAo+ICAgICAgICAgID7CoCDCoCDCoCDCoC8qIHR3aXN0
ZWQgcGFpciAqLwo+ICAgICAgICAgID7CoCDCoCDCoCDCoGNtZC0+YmFzZS5wb3J0ID0gUE9SVF9U
UDsKPiAgICAgICAgICA+wqAgwqAgwqAgwqBjbWQtPmJhc2UucGh5X2FkZHJlc3MgPSBody0+cGh5
LmFkZHI7Cj4gICAgICAgICAgPiArwqAgwqAgwqBpZiAoaHctPnBoeS5tZWRpYV90eXBlID09IGln
Y19tZWRpYV90eXBlX2NvcHBlcikKPiAgICAgICAgIFRoYW5rIHlvdSBQcmFzYWQuIGkyMjUvNiBw
YXJ0cyBzdXBwb3J0ZWQgb25seSBjb3BwZXIgbWVkaWEgdHlwZS4KPiAgICAgICAgIFdlIGNhbgo+
ICAgICAgICAgZHJvcCB0aGUgImlmIiBjb25kaXRpb24uCj4gICAgICAgICAgPiArwqAgwqAgwqAg
wqAgwqAgwqAgwqBldGh0b29sX2xpbmtfa3NldHRpbmdzX2FkZF9saW5rX21vZGUoY21kLAo+ICAg
ICAgICAgc3VwcG9ydGVkLCBUUCk7Cj4gICAgICAgICBEbyB5b3Ugd2FudCB0byBzZWU6ICJTdXBw
b3J0ZWQgcG9ydHM6IFsgVFAgXSI/IFRoYXQncyByaWdodC4KPiAgICAgICAgICA+Cj4gICAgICAg
ICAgPsKgIMKgIMKgIMKgLyogYWR2ZXJ0aXNpbmcgbGluayBtb2RlcyAqLwo+ICAgICAgICAgID7C
oCDCoCDCoCDCoGlmIChody0+cGh5LmF1dG9uZWdfYWR2ZXJ0aXNlZCAmIEFEVkVSVElTRV8xMF9I
QUxGKQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
