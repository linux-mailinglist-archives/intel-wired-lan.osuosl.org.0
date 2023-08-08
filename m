Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C61DD774381
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 20:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CDE18200F;
	Tue,  8 Aug 2023 18:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CDE18200F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691518013;
	bh=ZAWzxDvHAVHJjUIDcJQWyzNikR1eKXcfDoTyjIPMl4c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i6ZGEBXU0Sd73pSs0imapVbkulYAblK4YVatQl3olNtvGHZnLXNkTwwc4pvHn34ur
	 yQjNclQYyX7FpYwyagjgLnHVO3LgyJZx30+xL0FUFjbbcxtSQZ2EmrdmJFd8BRQ/Sb
	 nhu7tde78cYt3nOK9vz+LmwMobfl023jO2zpQ5smZnp4bXw53Wkxtrhu94NPXRI041
	 Xd8w5U3JndKJeNXTqMmaPhojBCS9+1VO+KvLy7cZmvWOdJBVS7W8T8fe1FYw9k9GY5
	 wRqTnySsTfSg/drGMQJIZI5eQ12+P0GUnD0x3dqI1S9+LRXUR74XrDMTbwh1LzNpXy
	 EyVJNw1asxwcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vbKvgrHbH82; Tue,  8 Aug 2023 18:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4878982089;
	Tue,  8 Aug 2023 18:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4878982089
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF5431BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B40E382089
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B40E382089
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dvze3xcGYn6o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 18:06:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BEA481FE2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 18:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BEA481FE2
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="401872849"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="401872849"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 11:06:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874874319"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2023 11:06:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 11:06:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 11:06:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 11:06:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 11:06:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkJOClhiwFi/Hbpcg1ogiyUz3efzbJKpG8HOW+kfKhO2vTTYnD89ldfve3Hxkfm77dfPabr1npmq9gpJtVtNlSJrDVQjjRj6nDu1TJzQ0tWMNs/m1Lit18NVM+C6eif0qTwKI6OLx2cZ8gF4yNyNZEwSDCvMFmpSINqTb3RsaRw+0m896jOpU8NmWdkGWiU+qDsfUWojCKwe/BlUXOct1j1knqiMe5BJovbpv1eeUiFsM2WSCDmlWC1FJzlHCyEl7oze6QR/oISd2zAj2E9cfR/uZrF7FPSfDqRV+t4IROUHkk7S1f0aIO/3wdL3Auub0cEfIwT1yX9ciDhBNWHqBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N/kAb/MTQAsMa2JrN9GlohArD1NvH56BZup6HTKLzEs=;
 b=kKyKyrncLRShJDNfwyVGCLFhy0j7p6YLvt/D+URO2ZKKGb2FOQiK2XKqd/FaMpgRmbR9hLwHqZLErQ33gOkuNkHn/Pe8YAS3H6NeFZ8iKEIEwXuDmvE4q0WjMn2fT7KOq8YpNRQ9KG7IGi0S6zIZaHJD5w6vEtCfUoSHPcKEuy3LHPIO4WmreWKVxoc4zGgqf+uMKoPgqi7wFYSkJT3rSaWbxjly65XKkpMzZtaftrJAuz3mcr6ujDFB2WWs6kUOwvGFkG4v1Fhfk7mAjYk6K5tTREhifUJ0AakIsynsQyRlb3d+SQfDCvwoK8/NVH/vMcjoGvtrf0b3h5FxPXOK4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 18:06:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 18:06:41 +0000
Message-ID: <9dc74634-9c06-de5a-b1d8-537943c29e86@intel.com>
Date: Tue, 8 Aug 2023 11:06:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
 <20230807155848.90907-2-przemyslaw.kitszel@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230807155848.90907-2-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: MW4PR04CA0246.namprd04.prod.outlook.com
 (2603:10b6:303:88::11) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6442:EE_
X-MS-Office365-Filtering-Correlation-Id: d3039b51-7b1c-4911-c2b7-08db983a376f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OSxv9rm+4Jzc2dfnqLbrLVVlyq/JYG/iF0UWfOz+oflxfOAoZjSST9SNMUUKlP0ijekzaGDCiFf9RaNmL087Z8+r8G6f0tgLeFg/2X1oMIby6HT+d1+3P1j6lPAaadcjwYbJ+iAVyls7hd8wI/9fQ87Hg+glmXEqKPVfpcp0UaPRNkF1Ie1nuLKacMTNs0sHQ6PlTn2edRRvSyTV+UXHNKDWAwLNyYxcGtk2Ux6qR6f75o67nldgjoXuyzoWzHJVxVHztioQHnmbyy+1UYg0w/GUy8BWcspsVyudIdR5bz529kc0w2wAsgaBc5x7WJSXSHQiyt6PNWlNiXHeHyBv1biZeCS9JxPpTitGspR9Q9/7P4wkNFEjfwghNXWa2OBCM81V84d2GLnkC4STPftby8/idMFq3WlbLGxxAiZMHwWwHKzEwzekXU/VHgvu2gZN9ek2CyHAM4CbfkMqF+vfMFvJ5S+NTfhy2oQdK50BMYkjiv5kO+WyjNyt+yReg4DI0UxHTz/JB6P2XYHIs2jZ3n5v9WjnapfkwmG/OMAM/gRjvakgrV+Evt2ztW44C6tv81KSOFkgjR3UtFT0FMVO6RcptrU4HibJ55lURpqJc8jGPQ1kHM+7Og4S3qbluhg6ENgGFJ1qcEc0C7hZ+7qQRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(39860400002)(376002)(136003)(186006)(1800799003)(451199021)(83380400001)(31686004)(2616005)(2906002)(54906003)(4326008)(316002)(8936002)(5660300002)(8676002)(38100700002)(66476007)(66556008)(66946007)(6512007)(478600001)(82960400001)(31696002)(6666004)(6486002)(41300700001)(86362001)(26005)(36756003)(53546011)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXNiZUJjNnhJUHF5U3g2WVRmc3NtSmxDMVFGSW1SS2FJczdZZmZEU0JsNWJL?=
 =?utf-8?B?MCtHcklGVXh3OVRmUFEwMHJMWXdRVHBGQmx4YWJGTDNhOTJBTUVzeU9XcklK?=
 =?utf-8?B?bS95eDFmRnFqYTY3cWp5M3FzU1FaQnpwQXdGd0ZBVUtGQUVqODArT1Rqc3o3?=
 =?utf-8?B?YVF6UEVXaXVRci93RFlsdm1QOGZYWkRJVUk4a3Y4OWZlRG1JaEh5NGtjTkEz?=
 =?utf-8?B?cDhTT2xVNmROYStIenYwMEpWNmthMVhKZS9FRjZXYXY5ZU9uSi8vTm9IVmpn?=
 =?utf-8?B?ejdFNVNVTzlGMkwzdFFhS1l3YkwwSkR6cktheDVxSTRUeFUwZGk3S2hsNC8z?=
 =?utf-8?B?ZktyVzNOQnoxYythaWxHeGxDWXNJRGFJWTVIT1Z5YUsyV3RmdThXZlhkd1pp?=
 =?utf-8?B?ZzFsZXRXajQrS2FJVWV6ekY4ZW9TdVNieUF1Y0xjN2hWV1FZZG05VStqeDNK?=
 =?utf-8?B?WHNjWHA4WkU4cE5aTUNXTDJxbFRxRlRDNXhsb3ZjYTBkVjRaVnk4SWk2a1JI?=
 =?utf-8?B?Vm12YTVRVVJlVnFyRmRlcmtMdm5aQXJETXJ3eWU3a3J0K2hEUjJheG9VbW1s?=
 =?utf-8?B?NUk2M2hOYzNBRXVYSVZGZjgvMDNOU255Y2RSL3ZqaVU5VXFwTWU2K3R5UVBy?=
 =?utf-8?B?YUhDTDZjR2lITDR1eVBoaGgyUXZTZGsrQTFzUVViOUE5dGJqSmJOaWs4ZDJH?=
 =?utf-8?B?Y1FKVi9sQitZOVJ5aThVSVBQK2xuRDBaSVRTbXpES3U4L0dvdXFocmRUUGtS?=
 =?utf-8?B?MFJyVzEwOFFDSzQ4ZjNkbVN3UjFYU3ZRYzVBWHU4Qmp0RDJrY1RhdEVMcVVJ?=
 =?utf-8?B?VWZBdDM3bHQ5RVczcjd3OUpoVVN6NitrSk1DYTd3a0VKUDhVZU9RbkdKVXQw?=
 =?utf-8?B?ZGd2MTl5VHg3NGRTNzVLMDhmVnVNQVQ2V0crNU4zbnBvN1FxK0Z3SDdLd0Z0?=
 =?utf-8?B?Vkt5WFhUT0tHbFlqQ1NmTkEvZUFURXcxRTdhVU1lUFhydmlOK0M5MktPTTNY?=
 =?utf-8?B?TlBQa3dsRkpCOVVCQ2VRVHU1VVpOT01rOHhtcGlOQjRRSjVXZFdCS1oxNHhN?=
 =?utf-8?B?UjBXQ3lEcUFKN3hjdjRNdGZtRFgzWjNqNEFOL0NRTnAycXBLNmVpak8wNTFt?=
 =?utf-8?B?UC82b0pWRmRDQmJkZVNKTXJHd0tpR2RQTEpQTUdidnY5WEFwQTU0YkEvWmw3?=
 =?utf-8?B?Qmt1bE0wWW15QU5MNkhhZmd3bmRkYnNwWXNiWjJ0Qmx6cFlwZVpYek15K0tS?=
 =?utf-8?B?c1BRMWZmNGp5dWdaNVExc2pNNEdsY1ZoWHR6Rk1YK3luZTZ4aTZ5Zy9IV3Bn?=
 =?utf-8?B?ZlpGRHFNcHcxSUtWall3bWQ0N0pPc2xOVU1TU29Wc0xmOGVSQnBQRENqTWph?=
 =?utf-8?B?WldKNEUvNEpReEVnZ3FsK0dBU3hFQmFYZnhtMWV5d2RYcjBsWmU1T0x0TFZz?=
 =?utf-8?B?WVNRVlc5dk94bEh6MDFNNDNZejdGbk5uK0dITGRKMERXTE04Sm91Z1lpSHJJ?=
 =?utf-8?B?c0lkdmJBQXNocC8zSHljbGp4enl2TC9WUnFybnU4ZUFTWGpmNVJXM1BRNTF2?=
 =?utf-8?B?bTJ3Q3Z5VThHeGl6NXFxRU5DNEphbG90RHlKWENvNnNQOXY3MjZGekg4Y0Jv?=
 =?utf-8?B?VWZEaWd5K1djcmFPd1Z1c3E4blN3NnlELzcyOHpxSnhlVElSUHBybGxJNVVE?=
 =?utf-8?B?WGg2RVJUVGVJSFNSZVE2Nm1OdHk4dzhVcy96VkJsZ01rUGxxeiswS0xOd3hY?=
 =?utf-8?B?clVCZktOSmRVY3JXcmd6RkpwZk1ZbDE3YjFpNEEvS1VhN0RVcElBRnY3b2Rr?=
 =?utf-8?B?RjZ5Tit0UlpmOU13TU5sOWRIY0lPQkpJMEJZemlMQXZPLzIwd2x4WWpQVmV2?=
 =?utf-8?B?b1dvZzBXYkwzRkpyM2lSK2tuYTd0UitQcWRGZ3pwamxvU0JaNGRBVmt2bktQ?=
 =?utf-8?B?UDkyQ1VHTlhRMGg3bVFQTm5KUlJ1MmdaZGxkQTNLUEtwU1RFelFvWGlUaGJu?=
 =?utf-8?B?V0dZNkRzbkhncWtNdno2Tjc5aDVPdlZKd3dOYWpLdlVxYjUxQlBoZkVCYS9O?=
 =?utf-8?B?SUtqZTRkYmdSQi8rNnNzL3NIRmJoelJkNDh6dHlkemgvMFdSYVNwZ3hMZGts?=
 =?utf-8?B?WlVHdjRYSkJVaFVpeVhXWHNRK01aajRXdVFtbzM4d0dwa1EvaTdyaDBXUytH?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3039b51-7b1c-4911-c2b7-08db983a376f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 18:06:41.0237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PV4t92gG1fwUe0IrFN+o94zfnNwc9zBEWNngJQMgm8A0FI4tsJK0ya61klI+BjGb1pkDx4yQTmwgwKILZuBrL5/niFmf2ijexa/HIN6zIM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691518005; x=1723054005;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3KTFfApKpw4/I7UBmfaAq3RN/a2lqfTDLdK2tB2YNbw=;
 b=L2xsyxmEKN0VfgSW64QOOnUGPT5iArs9cvBvtUcFcyEYUk9KUokOyCtW
 9jqVf1W/c60q9Wf2413L7Ghr4U9dojRnaBqVy7fOLr93y4Jpcl014kXrm
 O6YjYyh0shVTihK1p+FHf+Sa1kNdhHMcEjqZ/swhtv1pXzVtReQ3PhSW8
 6CZssObNPWXwD8zOFJkfoRWh/+iM4zzSpWsIpafWUHqaFYEyuX9vGm1J+
 SOa5Kq6N1aj1zQLygyYojsRuI3X6zz/CVft8GQkbn5bB8usId45svI+Nj
 er1oFRO0anK5e7/XvLOcBaN2/gQK8g+hE1cJra3WaqGgoCzJWpPpZNg0+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L2xsyxmE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice:
 ice_aq_check_events: fix off-by-one check when filling buffer
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
Cc: netdev@vger.kernel.org, Simon
 Horman <horms@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/7/2023 8:58 AM, Przemek Kitszel wrote:
> Allow task's event buffer to be filled also in the case that it's size
> is exactly the size of the message.
> 
> Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++------
>   1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a73895483e6c..f2ad2153589a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1357,7 +1357,9 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
>   static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
>   				struct ice_rq_event_info *event)
>   {
> +	struct ice_rq_event_info *task_ev;
>   	struct ice_aq_task *task;
> +

Accidental newline?

>   	bool found = false;
>   
>   	spin_lock_bh(&pf->aq_wait_lock);
> @@ -1365,15 +1367,15 @@ static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
>   		if (task->state || task->opcode != opcode)
>   			continue;
>   
> -		memcpy(&task->event->desc, &event->desc, sizeof(event->desc));
> -		task->event->msg_len = event->msg_len;
> +		task_ev = task->event;
> +		memcpy(&task_ev->desc, &event->desc, sizeof(event->desc));
> +		task_ev->msg_len = event->msg_len;
>   
>   		/* Only copy the data buffer if a destination was set */
> -		if (task->event->msg_buf &&
> -		    task->event->buf_len > event->buf_len) {
> -			memcpy(task->event->msg_buf, event->msg_buf,
> +		if (task_ev->msg_buf && task_ev->buf_len >= event->buf_len) {
> +			memcpy(task_ev->msg_buf, event->msg_buf,
>   			       event->buf_len);
> -			task->event->buf_len = event->buf_len;
> +			task_ev->buf_len = event->buf_len;
>   		}
>   
>   		task->state = ICE_AQ_TASK_COMPLETE;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
