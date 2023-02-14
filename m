Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A9469721C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 00:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16A6040B6E;
	Tue, 14 Feb 2023 23:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16A6040B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676418687;
	bh=2yTjZ+MlMEGanRZbcYZgSQuJcSICivip2Vki9gRhFHE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hDAvti/RFCgny47IHt6P7jxyF5s8nAw6n5T/rZYfdAZWN79ey1Uu5Bw+BmMlHcjZG
	 Uk8mAj00Lxy7YT4oIQzcbREd6YzyKTJMz1i+MWzMMl3PmxLyoL6RBulraW10pp+HoW
	 o/Z8tWezNwnb4CatKxjggMIbPk3aAHkmgvMi6l9lFUN6fJS6CNX4DhyPGHCJk5JWwc
	 VRtmWvys3LG1y0LLIGfq+Ks0Yx/79tctTsl407wOP0VEk+DPbJFAsZGzg6FnRQ81hK
	 5daxmxE/KYLD8GVZ+KtvRXPUTzejhfUS4N9igLXNo9lggsI4/KHwT5DiVV6/Llgep2
	 zZWwBwqcqM3qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2WB1RsuhhcP; Tue, 14 Feb 2023 23:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D61DC40B4D;
	Tue, 14 Feb 2023 23:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D61DC40B4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68BA81BF232
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 23:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C8B060C23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 23:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C8B060C23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sz0KwpQXTS07 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 23:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1628B60DFF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1628B60DFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 23:51:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="333439562"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="333439562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 15:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="699739394"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="699739394"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 14 Feb 2023 15:51:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 15:51:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 15:51:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 15:51:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 15:51:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvOtZ6jCIgPKAcDseA+ZV6QYvX82NUmGtuYhyRtNZsdAOF1vWhQ7xubghhJ80m0skvTiE8Rjw5J7R73gEKA1qtQ3BYWAL/DvZYFN+pAG48bNmZ+GAxtIfGVU4sPZTzlZe937vWFduGfZUAsVsskQpwGNIGrFPOuXdElkFk2d/KWqCdoCy8IqZJvT0bD9RwCOxhWVUYjNz75cxv6p4XBeoIE/6+VBsMDw+U/8s29Gvrx4e7xdntIGQEYNTeIZPVbARJ+Q5C+mV7pSQTjbdB39ZKuXEPaf2Cfy4ZYoXQN6xX4Kcm9dJzPdX6zs5ieFSfzEBFCpHuqWY2qW4vbZmV1boA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4A65mjfQ80M0KJhdjHXfumvaZ3TVTHaQ0uo/tphxzA=;
 b=DlgpiFs69O6qmlXDeRU3jyKBHjrkh1Vt/DKmaUGxW+9+kch+njgZx+22P4/CDWN8Gq0sM/eIKgbkDk5IK1rm6Jh5oAdMfiyM/1z1LC8WHSMzuIpXoZ1wexbBNCcWQz1r229T/4fEf0a5wVp2917LAcpeYwybh0zd4P4UdlUmQlQiuaLd3rxQbp/KiQsPbdw8Z4p8i1JyCzbucNEwa6ldH1Lc6x6cIG5aztqJ9rnOM88OPEPICRuw3+9H0yU4rvqSK8oCpshUwjd4qSi9JNI6NbBqrpmoAJpKOERHvSDGmU3rGRgNehsAwpRxGT9Xnv8cKCr7W3b14EAwEIj7arnjFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5388.namprd11.prod.outlook.com (2603:10b6:408:11d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Tue, 14 Feb
 2023 23:51:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.032; Tue, 14 Feb 2023
 23:51:10 +0000
Message-ID: <fb6f0241-0ea4-bd66-64d6-b8d650890ec8@intel.com>
Date: Tue, 14 Feb 2023 15:51:07 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230210150130.1353489-1-jan.sokolowski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230210150130.1353489-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0112.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::27) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5388:EE_
X-MS-Office365-Filtering-Correlation-Id: 45a76192-625d-42f3-cdf4-08db0ee65942
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /NaHrUKrKw/GOYxTJ9k3WVpMRlPqDKXfuTckHwpxRbS0Twcs1hn0qgB08MnQ0ds30hNGIbrg1lFksEUvhRyIC65+FHur/skTT/8p8lFFQgFg7U5EtvKm7XzUH8+S/5dqEag9Lv9yBMUKKhhzDCXFSBQJcfkdNrbGNE/ojsLkA/EpYMJpNalDRi5dk7FMuc4nOyr/4Lf5rWETN8B2tPte16wgqANvtLBXuR/aYO6APIuFP3W/MGThqqw4VX+5Jx5ngF8DEPhQKtXdtEZib7CIcjjtWyN9S4sKA1xPSuY/bP5pjhmVU6FMev7rT/ChSSy39SE42dyDagt9XVNVshxFsbvKuGk0+2Us65iaaW3XJq19ru/AMY6KOP3VwmwxuAW9VSkdzyARBhvvQ/Td4Ssigv5Fhj70UXubV7M8JNHL0pbe1nhIvZr6u+xdu6a3WNBFoB8MrIctWCvVc6KXWfJ79SVR68ef5LxKcY9eahmvn1kd/OjCb4xH6ExPJyT/yUVDMqLkcITYjro7ewQx/I/IjF0UD/Oj8RPgtiqYQXwPjlGI71rluQZ3bwJqU+MEV3wENX9LtC0xLHGxitY5qPmzhe+GEuROwcW7vMrKqAspNxjHALtL+mc1sGjZ77Juz8+SG/mrOSc1z6Vlx7uz+9H77n/qIov8EdY/Y078hAbyt5FfscH/yRpIDnPp2sy591w/5INssEyYjmKGcOGz4sGoZxuMPSu4FE8MRymmgIgG3mg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199018)(478600001)(6666004)(31686004)(2906002)(53546011)(6512007)(26005)(6506007)(107886003)(186003)(82960400001)(2616005)(38100700002)(6486002)(36756003)(86362001)(31696002)(8936002)(54906003)(316002)(83380400001)(66476007)(5660300002)(66556008)(41300700001)(66946007)(4326008)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFBXaDc5NjQ3K1hFZlBxRXhQVFhWS0k0Y2hpVjhUTjZva21xLzBiWk9xWUZp?=
 =?utf-8?B?a1U2RXh3bkZLSlhnTENmS2pudWVIZ2pmcGkrMHhOaTUvVVFRNi95OGpYV0Zy?=
 =?utf-8?B?OHVqd0pqQ1Y2aFpGL2RiTjB2U1hBN2x3dGFsU2V0NVdEUUltTUxkbk52MlN0?=
 =?utf-8?B?WUNRdnpMM0tkNlpmOGZQRWpZSXBPRHczeUl4cWlUY3NJaFVLQW1Oa0dNYStR?=
 =?utf-8?B?OTdRclJaTEY3Q3NCSjVxb0tOTXhuNUhPVFZyYldrTkFNZTlJNXFGbVJUNjkz?=
 =?utf-8?B?WVBRdkNuT3d3QzZxSm9YZTVFS2p1c2NWeE90NUFubTd0ZVZHc0VDM21uMkU2?=
 =?utf-8?B?VTlVQVh4NWhUSFBOT0RvTDFTUHRFc1BIRUs2SUZRNEdaakJIQ0swNWkvSStp?=
 =?utf-8?B?UEJUVGd5OERIbU5BQVB0RHVXaTJZRU9oUmozV2JjT0tWQ1ZCRVh1MEhoT3U3?=
 =?utf-8?B?bkl0bXlrbjlFR2srcUFJUmlxZlJyUU5KcUtRTHYrUERCcVJhaUovOHUxTWcz?=
 =?utf-8?B?Q3lsYmd4azNQOEJJeWJkbmtyc1VFUWx0Mnk5U1ZybVVMOCtBRm1hR2J0RGNj?=
 =?utf-8?B?d05aTGFnOFBzSDBOK2ozYjNueTZCTE01RUVCQU5mdFREaHg5ZEN5WmJ1SVlz?=
 =?utf-8?B?RVFuZm1mbmpYdDVyQ0hXbXI0K3VUNllqYloyVUFrZlJIUVRaRlpOdm5lQll6?=
 =?utf-8?B?ZmNOdnc1bUFuTE5GR0xNeVhhcWZsMkx0TFJFbngwcVJ5RWJ1YTZTQUhWRUxJ?=
 =?utf-8?B?U3BSQzVvNHAzTi9KRmNYYkM1UEhNNGpjSjhhejRsUksyYlNzNkMwMzRnTzRk?=
 =?utf-8?B?UGFKekJkQWpRM0dabHk1Mjk1WGx4NVF6eG5acHNORnpDRFpCamJ3bk9vTzN5?=
 =?utf-8?B?d2ZWdnRzK0U4d08yU3pwL1EzQ0w2bkRGZDc0amw2R1VJQmlDMDFRcjVwN2F0?=
 =?utf-8?B?bDI3aHRnQ1VOZWVIQ05pSkZRTVF1NWtvZUxQNG9iWTJKaFlzMFNvS1RPam0y?=
 =?utf-8?B?SVViL25KWWMzK1VmTU05aWw4TEQxRFJXZnkvakl1N3lOTm5zKzNVLy80MGhn?=
 =?utf-8?B?STcxUXNEZ3FZdHBhUlhsY1NaVnJTbzJMTlVYVWwyZEQzcWRma01vVU8rOG5K?=
 =?utf-8?B?TkM3SnNoQ0NmNlNMdTUzWlJzd0pVcEtMUHJQMXlyVGhtVUNyUjZ1R1BhelRz?=
 =?utf-8?B?bTVKN1dqY2NrM2hkNWJDdmtJMkxENkdEWXl6bDFzM0o2eFhIemt3aUZhZTNH?=
 =?utf-8?B?RW1YcVA5bkRiQ0Jzci9ucUxmaDh0TkVFY05VNlM5Qm9XN094bGkzdER4NE5z?=
 =?utf-8?B?YS9ldCtNWWZQczFCeVdxdTQ1dmw4R0F0Z0o5aGF6VTBJa0NMWERJM2RvejRQ?=
 =?utf-8?B?cTVrSXJUNXREM0dndk5oK2JWL1RLZGxna2I4L0pkOWZLd2x3aTZkblV4MVZN?=
 =?utf-8?B?aW1uRlR4NzlVeERQdkNMVytMalZhMTJUV3hRbUpwaVVCc0JwRE8rUEFnS3M1?=
 =?utf-8?B?MmNWZmdkTUp6R1Uwd0tQRXV2bzE1WVc0WnRYcDNySjhicXYxWmVCTFRRT0RX?=
 =?utf-8?B?VkVsMFFWcjdYM3lCa0NoNEhrSmFWQ2VqSkZpYXk1cWk4SnR1R2ZUQ2JNSUZC?=
 =?utf-8?B?NTdDcEN3V2NsY29QaUZKREhHWDlxMmQ1bHNGTXVtMVpwWUNMQmhpOXJPb1V6?=
 =?utf-8?B?eTFFQmFSVnkwV2pTbHpLMDlTNWw4bDFpVC9PYjd2WDdoL3lLd1hzOUkxNmsv?=
 =?utf-8?B?aWxyaytzOWdqanl2dkNmTk10YUs3OUFuZFdpQnBad25JczZGNjI5Z3NaVVZp?=
 =?utf-8?B?T1BJR0ExNnU5NlhDN3dicTBrd1ZBRkpSeXR0NTNybzdwTlpHbGFWcnl4R216?=
 =?utf-8?B?Q3dsaDQzcnFZYzF2dVRpYTlGUjNiL01SdHBJdWNadmdMeGpCaWhoTEw4RE1I?=
 =?utf-8?B?em9GN25aNm4xQmFzRUZ5dklDQTVMMVVlY2ZYQ1MvZnBkMWFVTDJhMG1Cemha?=
 =?utf-8?B?SkVsNXhmek5kRlAxZGZZOHF6akc1U1VSZUoxRDFocGVvTkF4VmhXUzFvdnEz?=
 =?utf-8?B?eFBLYnVhOTRPS1hNUE9RdFc3UHNYczBsbUVZSURwWXlBVkdSRU4zTTlkTmVo?=
 =?utf-8?B?SHNPNTVXT285UWs3SG1abkRvT0NTNHo4M05BVlBVMFBLMGZ3eDFtZ2RDMk5Z?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45a76192-625d-42f3-cdf4-08db0ee65942
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 23:51:10.7905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o1aH5tm3Hc/MCaKG2mosXLzAgp6ku2bnfNPKGdMrNcbsg4S1+lcNSjuiSqb0ZfO0RTzrikKbIIU8yj2zXfR1QFPlCtGGKc9yBNSHbsOesf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5388
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676418680; x=1707954680;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jtqysn35gc88+i9UKpM+teHMZv6MnRxMCdE09Lf/4HM=;
 b=MU6TSoIpx5d3xsFbI+jXGmxAen3bj48i3I0v2PY3b+36r5+uXsrj1Yuu
 Vszt0ZquPss3V+ojY0Y6NSgZyt+C2uC9FcQZqB/1L7xMXDiNRATVCTPh5
 7xOJWydfiH9yO8XcRzFJlXmmWa56ishYuQCIzTiOwwh0R9vfTiymEoHJc
 p9rE9NY2cN9m/mASegqOMFBdrotT/rYSEs2zmtL6UPvX+Ljs5kuhtWV6m
 BRziFA/vsFiOOdBHqAq2h6eR4vXa5KDfnHdMYnALmDQFnu75bzG/kKOOG
 gDn+GKj9VZHd4UsZvp/fUar0TEe4USH50L+rw4N4nwhJKQc/5I3Cbdo6K
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MU6TSoIp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5] i40e: Add ability to
 change VFs default MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/10/2023 7:01 AM, Jan Sokolowski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Currently there is no way for a VF driver to specify if it wants to
> change it's hardware address. Although new bits were added to virtchnl.h
> in struct virtchnl_ether_addr to allow the VF to correctly
> communicate this information, legacy VF drivers that don't
> support the new virtchnl.h bits still need to be supported.
> This patch makes a best effort attempt at saving the VF's
> primary/device address in the legacy case and depends on the
> VIRTCHNL_ETHER_ADDR_PRIMARY type for the new case.
> 
> Legacy case - If a unicast MAC is being added and the
> default_lan_addr.addr is empty, then populate it, otherwise save and
> timestamp itin case it is followed by a delete request.
> This assumes that the address is the VF's hardware address.
> If unicast MAC is being deleted, then mark the time it happened,
> if the legacy umac was not expired, and copy as last MAC addr
> on the filter list, and if it matches default_lan_addr.addr,
> mark that as deleted unimac addr.
> 
> This is done because we cannot guarantee the order of
> VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.
> 
> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr. If a unicast MAC is being deleted and it's type
> is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
> hw_lan_addr.addr.
> 
> Untrusted VFs - Only allow above legacy/new changes to their
> hardware address if the PF has not set it administratively via
> iproute2.
> 
> Trusted VFs - Always allow above legacy/new changes to their
> hardware address even if the PF has administratively set it via
> iproute2.
> 
> In case of VF reset/reload, only MACs assigned from host
> must be preserved.
> 
> Add a vm MAC list to filter MAC addresses to be restored after reset.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>

This no longer applies, please rebase and resend.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
