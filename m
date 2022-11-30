Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDB763E066
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 20:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83DF181FCB;
	Wed, 30 Nov 2022 19:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83DF181FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669834985;
	bh=3u6JHGcYw9uFhNJTXCQTpbE3wZ2ULR83bZhF0v9klZo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L1pR6CchGYWxY7OO6RfFrfpO8WFvd7dbC2VCtrWD2cUKpI3jSE0KIsJZz852sxFPI
	 px1R19x8F/3CvXb3mzporf/NSDZHf90msBJb1s0MyZoUQ9DcKuZSwLpjqMdh1n5qeq
	 4tMOQ40U5dxtQjySrf1f3vdRLD4T3P+hXcvrCgmHm4C1tDOATIHJAplnM8PAo+Irs8
	 znbfAHCf9HAbn3gLMv9AFgFfhmOffFS55lJt8AGM78z+NIOLkfGKtuuCN+tKVF75wY
	 1jT9o3V4rAT7TxJeHly/NHq1k4UeSg5CE+YwIod5KFWkS5x/SrwHI7KbUQfVHLErMP
	 M8L5zIihuMd9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUPRKw441FYZ; Wed, 30 Nov 2022 19:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A0EE81FCA;
	Wed, 30 Nov 2022 19:03:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A0EE81FCA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB8381BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A522481FCA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A522481FCA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WU8BQ1U4DUJh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 19:02:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE94181FC8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE94181FC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 19:02:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313113204"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313113204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 11:02:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="750468655"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="750468655"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2022 11:02:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 11:02:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 11:02:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 11:02:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C2i4SnnvYt7LIrZiNBi4Y3O314U56pfKsUAxXd+yRGiwO5QaWOU4tbH10bRezGZnn6RYlJqRr/4ph9ewe2dSyN6x1jvsBOFARPTHDDvMyFuN5Do2hibRpYFNIuK6MOQ1tYSZLrAdV1iMj2fJGxF681xTLL0IYwfAkur4Ni4xxnNiRfaOgIDgI47jRr17FYttd3RVaeoDV0fMezrsDJLXzlSuYelp9pX0ELJMHThzNfZb5+XmU+wlKQbaLReEAj+O4D3lmAoXyE1+3uezH1Cn2ouT5nW356HktOOtWBFps+yKMl3lnOJWRznoIbEh12KkiyqguCVovccix/pV+EjOuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fIpJUzqWnNI3nEpMn7Pu563cXr+XbcwyE30Uz9f9f+w=;
 b=LFiLlFSppQQovOpUNk0TkQ/h2rpAWSWOaPEpJMAeR42StL/ZGBXZKH59rXuHgIR4C2Ljgwuf70R/LA+Rm/dxN/98/1FDWb1iiRWLFhmww9OGT2ljXJEPEFbYSzyz4AqWnfkky/32SkUVr7LpPmWFd50ooG57IzBMqOdM/DJg4hXb7gmqFS4muYt2wN3fHAvL82rKyuKGQCFk+ZHfIvRF0hsXyvDugs5LDQppjvZKB8XaaR2aYT7wd2smvrXiZSlk6kp3xbCBvIBLmR2jns01FB9Ipqy4aPLvmdjIabnidANnqrT6pspO2X4g4uVrNTVm/ZKZ6+6jV1H96AHGor83pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 19:02:55 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 19:02:55 +0000
Message-ID: <6b404027-83e3-571c-eab5-33b66e1b82b8@intel.com>
Date: Wed, 30 Nov 2022 11:02:52 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Kalyan Kodamagula <kalyan.kodamagula@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221130080826.1147409-1-kalyan.kodamagula@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221130080826.1147409-1-kalyan.kodamagula@intel.com>
X-ClientProxiedBy: BY3PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: ca21d43d-568a-4fcf-86a0-08dad3057d0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cekxmMvtRt0s4781SuELtLq1hqjnhOqZxZWBUq9E1q59yzRjCP37SbuPOB3UP+FJqCc2fvppEnnPAF1B1oqcMp4t31CnFVh7zVGszqVln0UCB/yNUXLIlp14pPhowB47HWxqyxxAprjOGqjmuanoW+Zn/NK1JcXA9TzpHGEtrv7u7d8QZUXQvKWhLxIBMUVFa9tjrO1C6StCMIGaUwfIgjREsnRTrL8HXVzjm6OJAfYril6Xt9NWyod9+WzJquNJ30S62rw0ma/33ILy6NgRTe2O5jvc6BrG9s02zMonpfLwwxzse+nl7yzEqwUBh9YlATSXApFBG3ma86tg90bg3whCTQIgC+mzQHiPWGVpWwCU1Q7dHFS2jfCxMyZ6IpOLBD6LDqi/27i4W46Km0/ESXMRWmBOeXu/xvroFrgbo0YPC+EnKtJ8KR3TLIBwzy4yqahiBrIEEf0e6zsTTUnFRbSFxKYeKemSnbnMmSyphDZxwNWFLeLykeioBjZW26HfEEWsW8dclUYZhBHo3qyLE+RYHIPm3nST2yqYX4O3ZQDFOe7qv3js1EV3VaFX6GKR9jDRhFhotHFVXn2iQ1eBdMta55Bc6WSShyel5EvNwHC5nRL+8+DGP3d53U4xpVLN4gow+5kWcOaK0VFudZ8dg0mkl/qJDhfgX40GRuQFyoOnPeNGXEtUJBgl48aBDlv3865VIr/Rk3ei2g/WaBEBYFVqSKhRpT9Q0crRDzHPiGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199015)(31686004)(6666004)(86362001)(107886003)(478600001)(6486002)(31696002)(36756003)(2906002)(2616005)(186003)(82960400001)(6512007)(38100700002)(53546011)(83380400001)(66946007)(41300700001)(316002)(26005)(66556008)(8936002)(6506007)(4326008)(8676002)(66476007)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2RZOTl6dTBaQnhpWURMRldNNnZzTDdVNDdGUEt3TWRwcUJLMDBKa09XTkx0?=
 =?utf-8?B?MjN5eThETGltSmVCWmpaQkhCemc3dTdQVDRiRTAwZ2wyMHZqaVlXK3Fjbmd5?=
 =?utf-8?B?TTkrRDltNjg4QmsvdFIwUkZ6YXpIaXBGWHFxMjllckZVR2Q0RVpTcEZrMEdF?=
 =?utf-8?B?MFhrZjA2dVFsR3FWV2hXcDdjdCs3Wk5rak9SNGRWcUdvNGdsWm1NRVZXbTAv?=
 =?utf-8?B?ejhwcGowd29rNzQzTjREbDVSc1ROT1AwVXRXbGVEV1dpOTM4dEx4THpWam9j?=
 =?utf-8?B?UjB5YUU0UlowczNDNnhkNkJzTmJCMitVcVUwOFhnd2s2SzkxVjBXZTlETzg5?=
 =?utf-8?B?V2VPUkxvejFIV1U3ZTJNQ204dThHY2ZzSmgxT0g2OUpPVTNuR1M3disyYXY2?=
 =?utf-8?B?NG83eWlkNnVobXAwL2ZaeFl0Z1VYZnp6NE43dy9ORDZybjRsVThER0ttUzZv?=
 =?utf-8?B?VGhUTkhHbW4vRVNDQlErOGlML3FQMU4xaEprZHVrWXkwSkdpQ3NBTXhPdnpY?=
 =?utf-8?B?YjdWZUhxOGF0R2x1M0I4QjkyS2JxVks0eXJsVGVOMXZ6QkhoaFJ1cVhVd3FE?=
 =?utf-8?B?OFFWV0MvMmYrTzdoYWFNZjNpckdwMlB6cTVSeXExYjB4T0VWMU13ckRJbnha?=
 =?utf-8?B?VXlCZDZ6d096SW51ajlIVEJUaHhMZFZHV3dGOWhWam15OFVuZ1N4VmlmcVds?=
 =?utf-8?B?RHAveE8rZnNtWHdPckNzeEQ2Y3Rlc3ZiZWtPdjEzNWw0N1JxdUloYktSYUJo?=
 =?utf-8?B?ZTBINnRyQnZRczA1RGdLM2gvS3NlNzRWTmxNTk5BYU1NOGxwU2U1VjRLenVx?=
 =?utf-8?B?dy8xam45MGFub0RScUd3cGw5L282WjI2aUlJa0YwcWRVL0N1WUtqWGdFMHUy?=
 =?utf-8?B?dFpzTnhMS2FraXdvOFV1NFF5cWVIM2VCb1FxSWxwQ1VDRUllalN6eVFvYTdu?=
 =?utf-8?B?aWxIYkZyZUtaWmpWTlF4SlBCVzUzK0JhaThJSGtEUzZKdkFNdkNPcFowT1Jr?=
 =?utf-8?B?Ui92aHhHRmZlM1FsWkgyV1VQbE9NTjlYQTZUbTkzK3JFai9qQXpDZjB3TWht?=
 =?utf-8?B?N1QyTlZ3Qm9GVEtJWVpqbTF2R3hBZkRxME5oUndWQVRwOVNNRXF3UVJxZmNT?=
 =?utf-8?B?M2dzTXdPa1pHZ0srSW1hVWl4WE5kSHF0NStwQ0ZPeWNKZHFSM0F3N2Jtd2c4?=
 =?utf-8?B?ZEtoYkJYck94NmNlZDNhZkwwZnNZTU9IcG5vVWFoTzR5SFBNcEpETU9vMjRM?=
 =?utf-8?B?Zkd0Umo0Z2pYYjN1cFZUZTB1MUtuTENpWS96TWIyb0orUkZvUDhVRXNiSHVv?=
 =?utf-8?B?T2hoVExmRkVUWlMrL0lmNStuaGZPMG5iWlZ4VENKektKWGk4eTVsRG9sYXVX?=
 =?utf-8?B?anVWdHcyU3g2Uy9DYjZSRXZHcG9sL2YxL1luSEwxM2EwUnVmYTF0NCtoWUhh?=
 =?utf-8?B?MDNTQmI2UzBRTXBYR21XNWs2b01lVEp1Z1RKblNKSXA4ZG5xTGczd0hDcHJo?=
 =?utf-8?B?YThySkhiT0V6bDhZZmxtenRPZmI1UmhUNVhydVJPY09WUmxzOTMyaHdMa3BL?=
 =?utf-8?B?UTZrUHAyOXN6QUtieSttYTdPMks2eml2aUdBaFl3WmFvNUFBYjM1SmNUd0xJ?=
 =?utf-8?B?WUxoYVN4YWxiV2NiWWYvVjVyTFY2a2MxdmtXek4rQ3l0WlF2WU14a3hYK2Jt?=
 =?utf-8?B?OENFalhnZGN5aTNua0pBdVdYRGVnMW9FejlaQkFQNEplV01yN09jeTlwSnNn?=
 =?utf-8?B?S1RlUkVQL2ZzV29Pb29QbU9TSmRJakRlajhtd3BJUHc4cXhmK21vSUh3bFBt?=
 =?utf-8?B?ajZQQnEvYjU1QWprY1VpdUVoV3BLNTFEdUN0UEdKSWdLY2pqdFJJaGVQYlMz?=
 =?utf-8?B?SytoNUUyZHB0NVlITEZLaGxEWm1iV0lBQWZiN01iSndSYVlYR1RVNmdSUTlS?=
 =?utf-8?B?YVJpOW96Z2c2aExkb3JTSXRyVlA2Z25iLzZ3MEF2Tnkwc3F0UE52VERVaUNS?=
 =?utf-8?B?b0NZcGRMQU5kMTY4QktTbDNxK0tQcHVzMzJ4dm9Od05WTFNiY2Uyb2o0SVZ6?=
 =?utf-8?B?WS9QaEUrenV0Lzk5QVd1aFlSclR3RTcwOEpreWdWdHNMMHZldVpKV1hYU0x5?=
 =?utf-8?B?RVE2dmZHVGIzNlNBRFI5Z0VYbmlLNUs1cWRmVFdPWDU5NjFCb0p0VmJaTlVY?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca21d43d-568a-4fcf-86a0-08dad3057d0a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 19:02:55.4047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F6w0m22Abyit15zNhe53SZikkvGKBdq1bjF7L0OU+Q8NAGark4oOlr3HvBPktaK9A1QpWylTAPjVKOVHzn2u974I20Wt1bRG0gE9eyjbIC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669834978; x=1701370978;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V96fZJX4I0ZZfBu8gSbchNTtGJ2iif/Y4jOgcqxTFlE=;
 b=UEPE3i5wcHBpaeGrtqZycUV1NZJWVJ1q7GxYCBz2wcp1Rqh9GUdtMp7F
 Xdbx45IhcTm5yVoW8ZQoAWFfgNk1wpEPguHGx1bkWV81t+zSUmIt98Mkn
 CsQnWIqYU2E0wGBV3lvhVHFUqqS6DhtmyCYaI1Seq5BkJZHGxPMa8JTbU
 qJExoBScRYubRIjoFt1oHSkmYhhSqs2fZyXux+pbuNPgBP9vuLlFzX+46
 vEWwqkDEWoiFVfXnJdq9nIPs92WkOsM9FHJdaWF5Up0AQxc55ilEa6b1W
 sYcfPota0GtuFbAg7O8RuB/p9NRAgJe+hlvoiMnvnr3pRUsw2iS+Iv82A
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UEPE3i5w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add more usage of
 existing function ice_get_vf_vsi(vf)
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/30/2022 12:08 AM, Kalyan Kodamagula wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Extend the usage of function ice_get_vf_vsi(vf)
> in multiple places instead of VF's VSI by using a long string
> of dereferences (i.e. vf->pf->vsi[vf->lan_vsi_idx]).
> 
> Fixes: c5afbe99b778c ("ice: Add helper function to get the VF's VSIq")

WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")' - ie: 'Fixes: c5afbe99b778 ("ice: Add helper function 
to get the VF's VSI")'

However, what's the bug that this is fixing? Seems like a refactor and 
not a bug fix.

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> ---

Please include changelogs

>   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index c6a58343d81d..e6ef6b303222 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -113,7 +113,7 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
>   	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
>   		return -EINVAL;
>   
> -	if (!pf->vsi[vf->lan_vsi_idx])
> +	if (!ice_get_vf_vsi(vf))
>   		return -EINVAL;
>   
>   	return 0;
> @@ -494,7 +494,7 @@ ice_vc_fdir_rem_prof(struct ice_vf *vf, enum ice_fltr_ptype flow, int tun)
>   
>   	vf_prof = fdir->fdir_prof[flow];
>   
> -	vf_vsi = pf->vsi[vf->lan_vsi_idx];
> +	vf_vsi = ice_get_vf_vsi(vf);
>   	if (!vf_vsi) {
>   		dev_dbg(dev, "NULL vf %d vsi pointer\n", vf->vf_id);
>   		return;
> @@ -572,7 +572,7 @@ ice_vc_fdir_write_flow_prof(struct ice_vf *vf, enum ice_fltr_ptype flow,
>   	pf = vf->pf;
>   	dev = ice_pf_to_dev(pf);
>   	hw = &pf->hw;
> -	vf_vsi = pf->vsi[vf->lan_vsi_idx];
> +	vf_vsi = ice_get_vf_vsi(vf);
>   	if (!vf_vsi)
>   		return -EINVAL;
>   
> @@ -1205,7 +1205,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
>   	pf = vf->pf;
>   	dev = ice_pf_to_dev(pf);
>   	hw = &pf->hw;
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>   	if (!vsi) {
>   		dev_dbg(dev, "Invalid vsi for VF %d\n", vf->vf_id);
>   		return -EINVAL;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
