Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AF5774CB5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 23:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 695D041776;
	Tue,  8 Aug 2023 21:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 695D041776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691529288;
	bh=b63xwTQXEHC0SAPvQ/yMtvQMpvOrhlQrnDZZEw6/zjg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tf7H0cwtr2QhMsJdTDajjU6GHb4LlTP7Ur7TkcIz7bUbnIKpzv7y184HQ3yVrMtE5
	 leMpiOdA6WSp1b+cw4ufKFUzFpP5FrR17lnS5+zmGf6GG6LGX0Z4xBfkNdE3mnrS79
	 4V9pVWFj1ed52sjsgdPxfdBoFdSkicDL3qj4Pv0hlCTE30ep6kmIfCLL8zwoS2Eu4T
	 EDelqNyGwCp6E24L7AZi6dCFHuvwDTdcuWb5JdjnXjcY42UBBJJXtSrH+GhO5PniFG
	 aBYxeJm/OZL06XkBQ52vyQ4jMMZyul+zS/pRY8Y95g7pHeqvIdsFRC/fmruP9lk1eN
	 sSH2ypL+uqBQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gXbiAIQWsJP8; Tue,  8 Aug 2023 21:14:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8CB6408D0;
	Tue,  8 Aug 2023 21:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8CB6408D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1638E1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E08C060BDF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E08C060BDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ir2vCKx2nLCL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 21:14:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5364960BA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:14:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5364960BA2
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="369858728"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="369858728"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:14:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725106854"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="725106854"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 08 Aug 2023 14:14:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:14:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:14:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 14:14:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 14:14:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjFDwldIO70UMyWeJn9BxoJfFEM+2Ble5blyJUPISmsKj3rTFUsaowUTwc+CeNgISveeFLyJVEylwC0m2jP68+tkn3zCY7MjBmTL4T1G72m6sF2vVNLB94NQvhWoWuOX3N4ezdtOx0y6XNOH3J21t6btwGzDFEUpQJmbyBI8ZWBLyowJBHdAhl2yGO1GRhLor/pbecQXRcMMusoAFN3YInZulF75Zxfp2EWgmuUqaczAzRByBJ5rD/I88EhX/enHJ0KC4HSggii6bjiWHI2O4JTn7VA4+QQYL1vJLQr8pEgB/fvDMtceQTC39E5BX/5J1wszVsnXDcJc8Gcxdv6xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ynDwyRvhFP2MRtjSXbwz2ew48VmYORjZqVFH0qdYego=;
 b=WWqeUbewYjWfsZGesz5VG2dkfZ4hwGXgMOqOAMlEcX9m80hnRSQbCg+06OVAearQcUjWf7b4BKP9F0bY74VgMSQaX1iP0tx5ZRBrhh2Zl+zHR5yzSPo8mhbHUij+8Um1nEZJruzr1QPskBRdG/dokznUwkqhbn5NoRWnsabjT2eZfM0qHH205X60jyZwQVX+wiOe/JJeoXWQx5PKXOZaleXH8rG6URUE/uR5sG7AOKXyCqfdMCFf0wtyFFBSGOdpVaiY13WQhxi61lV6SiaD4cwRYN+Ck++fXPBwOsz2tn8ybDQLCvCYJoJFv6lgIRqDsoACeRN0OT2BZ+NxsfQyFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 21:14:21 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::cc0d:5933:ecba:1df3]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::cc0d:5933:ecba:1df3%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 21:14:21 +0000
Message-ID: <bfb11244-79a1-c305-9a8e-8f25a242e0e7@intel.com>
Date: Tue, 8 Aug 2023 23:14:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
 <20230807155848.90907-2-przemyslaw.kitszel@intel.com>
 <9dc74634-9c06-de5a-b1d8-537943c29e86@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <9dc74634-9c06-de5a-b1d8-537943c29e86@intel.com>
X-ClientProxiedBy: FR3P281CA0062.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::11) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH7PR11MB7027:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d5bc0c1-0371-4b53-0b75-08db98546f20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TcbRncLGtFf9wrkmj30MjqK/wsnbbkciat9gk5b0Ek0tEt1cYkoGw37bFR54E1UJTtyq83Ye2S9j4lsWdyOW+gCZF860L+5lds57Xh3MRG6QXFKOyAWEn0FMiYjUcqFOaRkrO7mkq8wlBENnD1FuyP/3vPMhQds+nHprj35OQDD63aYxG9rgR+V6PItuBrq9GARsNMvC++Bx1cnYkWGozsuIj66AGjmDZ3RS1UVSpMtsMhgACZCFHwInZJkA1bj1PXETVXgsAszsQjslgJuWGA9erLJDN6bofzLHVtVzfoucdmiIviOsEcqlOtJdY11K7VuHyb+XOuG75Uji7+jDe7D6t7JfN5NmFuN+JUJXRZJU+ySwlZoadmZhBJWMktBsuoNxKQlmqmIm4fcu2nCILohPwhIwslbBPquXMxWlscDnglaHNz9LtjZ2HiwIzUE8wyTk2TK7EqNzjUskXvpAHtEm8ouiXo+jzbeD6auP2kQcXi2TubbQkdOpaHOCtkqLItmkbemEsKo0Vmm7vlgKz6sIu9/kDHkT8EXsYAMNjEgisbg2COBQAkLjOaPhcc9YFZbbp3RWgYK5Abr31cRtV0DZmjAfudMrZTkDomHDKrTeId9Z2prAWcQujqvq1Qn81SFFRyNzbWYVKEg5KvlNbA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(396003)(346002)(366004)(1800799003)(186006)(451199021)(2616005)(26005)(6486002)(36756003)(6506007)(53546011)(6512007)(6666004)(82960400001)(478600001)(38100700002)(54906003)(31686004)(66556008)(66476007)(66946007)(4326008)(41300700001)(316002)(8936002)(8676002)(5660300002)(2906002)(83380400001)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1IraXc5MXZ3cmttaWZFbUhwdlZJWFREL24ybEJiV0pzYnkwMlBpRnRBdmQ3?=
 =?utf-8?B?MWZxS2taR1VuUWZPVmtGcjZldUJPdzZXV2lBUWJ3Qmc1eEl1OEEyTEx5YzJ1?=
 =?utf-8?B?VFA5NWRPWDYxcG1sOWpuaGd4T0tTblp6cjMxMVJIZlkvRFdkVFNTTGx4UkJ4?=
 =?utf-8?B?S1hnWDE3R3NvdGs0S1ZXcE14bWVFNVk4aE4zSWVyQm56L1QxTEMyUXB1R1ds?=
 =?utf-8?B?NW40U0tDV0JLOGRSbk1ObVlLc2hJeFNqSFN2d25rUmNNaWNEZ1BEaGVUaXh6?=
 =?utf-8?B?RDNYR3ptdkNHUWRHSTlaaDFDdmpteXc0SENqVnZFNHJVL3hndzhIUHJYR2l0?=
 =?utf-8?B?eFpYSVRvS2RjcGc3bnpsK1drTlk3RmhmcXBLNFo3VzRRUE55RGUwRlh6cEdu?=
 =?utf-8?B?bnI2WFB1M3VacXExL2lTejc4M0FkeTdwbkQwelgrM1pPOW56eFFNU2ZWYTdO?=
 =?utf-8?B?V1VzT0JORmtSY0psWHJTOG9NUWl0bW1Va3IwS2V6bjNlL2daVFRvVkNCakRK?=
 =?utf-8?B?bm40dEhxWkwySWZWZFEyMGNSODA2YkFPZlcyMHhkZStJdmRoRC9UWUFVYTlw?=
 =?utf-8?B?eWdrKzBaclpCM1U5QjluUUVjODkwVkRFUEEzdWpBYTIrWS8rZS8yTC9HMmpk?=
 =?utf-8?B?RzI0UlZwSnlHU3NaVjNOVTFzd2h5ZVFyNzJXMmpwRHpISmZTOE5FVHRaK3dP?=
 =?utf-8?B?WWRHWTl3K2c4Y29UUTh0Rm5qMGFyK0tlZ1BqSHIxb2JvdmJIQkZRWnNNNjNU?=
 =?utf-8?B?OWRjMmFySHRhSmM0UWNpRUVxYllveGpkMm9nTFk4bHNpM2Q2Tzd0MFVnU2NB?=
 =?utf-8?B?dnByRldWaUo2TFVxell3Umczd2Q0bUFvb0RNSWhkS3h0RHhBYVRoeVM2L1Qr?=
 =?utf-8?B?L2tMdXJ5TDIyTDRMaTErN2FQVS9HVFdBRmN2MExLajVCdzhEcTRVVXR0dlQr?=
 =?utf-8?B?Nm84SlloR1NtSUZMYk9WdlVYTWtFcmdwYnBMOUxnUkpielZwV2hqVnBIVytj?=
 =?utf-8?B?bldFbTFleWlBTkZQNUp6elczV0JDVW9pY0x4SXdBd2RSSUVQTlNvTE5wemFL?=
 =?utf-8?B?SU8wb0pJUWZPN0tpaFdTa0JTc3dzVitzcnJ5VnJSME8vbEo5Z1dBTjhUUkNj?=
 =?utf-8?B?TXc3YURjY2RFRzE4aENqTkROMlByUjgyRDlNZWZiaXpvOVQrem9yUWhSK29y?=
 =?utf-8?B?RkdqNWE4ek5lSUY2Unc2NWp4Y2NiZkNrTXFTSlZTU2tTQlFlb2hpWmN1dGlu?=
 =?utf-8?B?R1MwOFlJZ1BZYllYWDY5TTZQUFBVSUlJZTNONzVmT3FHVXc4L0RjR3JWby9u?=
 =?utf-8?B?cTNSaXp4TGp2d25yblZOMzl1Q29qMTEveUFaQ2NjdEJyRStXaVZOTHQ2Nnlj?=
 =?utf-8?B?TEFuRXdTRTdnWjRoL1lFZm1kVVBlTnVqVFdXRktmT1NGbk1uTmFMTWlYZ2Fi?=
 =?utf-8?B?cklkZkZOWlhlSmxOeFVhcitmZE1mR04vWHNSRzlUTGIyRVA5dEQvYTRwMG5C?=
 =?utf-8?B?Nnp2VUtwWmlPNkdCaUxVVTlEOTRYejdMcjRUVjBnWlZVK0w5eHdZLzBsaHpC?=
 =?utf-8?B?TWhCT3NuM1UxS3F4di9jV0VQMW01d3c3a2lRZlhjNjR1YmRZcjRINXd2THZz?=
 =?utf-8?B?azZVajQrczRJcTlzVURZa1JXQ3RERi9WTWI3VS95RjhqWkthT3VVWHFidUla?=
 =?utf-8?B?OXdaRFZ4UlQvLzBwTjlrdlJlVlJKR2d1N0RYZkhwRmpvcnlxd2JaMEMzcDZh?=
 =?utf-8?B?UGJKbDhLeHM2My9sYm5Ub05yUTBFOVdPNW1qMEhFU1c3MVlrVWF3QjcwZ3po?=
 =?utf-8?B?dno2WExIODRZQzBUT2Npc21vMm9kSTB6NkJraGJINGhkR3JVby9nOUxnUUxD?=
 =?utf-8?B?Y2JpM2RlcEZIVS9hSW1QVzM5K1J6dy90R3o4b01sS005bFR5RzdjSFV3SHhw?=
 =?utf-8?B?M2RidHU0bjViVVgwNzc5bEFPNWxndXNoSG52UE9sVHlSWis5amN3cFhtOVRt?=
 =?utf-8?B?VGJhZXd2VENLZ1ZITW5yVkdWY0Vhd1RZYTNYR0hrZXI3T1JrVGpCWUVpMita?=
 =?utf-8?B?WmFqSitUNkNzSExsKzIzckVPeHY3aER1eldFK1N1WEFmS2xrVHdjUFlleTE5?=
 =?utf-8?B?WUdGbDBidHRLTy84K1hwenhDNFhwRnZCZ2o5NUUzdy9WOHI1RHg5cUFrSmJQ?=
 =?utf-8?Q?KfFjrJjDCejlRGG6fDTpj1Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d5bc0c1-0371-4b53-0b75-08db98546f20
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 21:14:21.4527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q1AWzhOJpaJCiwWTep4x2fhx2JU+CeRG7JXniDogyAeE0xafG3ficaXeWQuJ+wOTSd83MODov53crLwQ21rCDYXfMsHbo4yWYUdXWuxHzec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691529267; x=1723065267;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dsd2r9GTn/nIdIbXBcHD0iVKJaae9BawkwQzCiMG2/8=;
 b=OUOFThGNp8z2D/0T08IHoEvr9+SnxqEZe9Hmd1b5BRXTU9htIbNDbbA3
 po9q5RUfjwY6Y/6wH6Eda/8agUVUNrfMr/VTHYHFhyg1PYde2egLNtJoK
 8XUEhsWA31cd5X43/D9dqOWi5QnAbEhKg5L431+2z6pTq7si9EDrXczZV
 Z4IUg4apLKLyn7W8DPmeRPD4yZKqUVUbaXlljGWiOH4v91SA7W/W9lW7S
 IgsRDPi5A47gUxZjsNzmHilJJNczupoDmI+Urn6p9blvrF2yzFdFokbK0
 khlRtcnaQLrI0gD8ZqjB0HxOzaVQld1FZFXKHD2lIW2GXIVz+gfB+RyXZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OUOFThGN
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC84LzIzIDIwOjA2LCBUb255IE5ndXllbiB3cm90ZToKPiAKPiAKPiBPbiA4LzcvMjAyMyA4
OjU4IEFNLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6Cj4+IEFsbG93IHRhc2sncyBldmVudCBidWZm
ZXIgdG8gYmUgZmlsbGVkIGFsc28gaW4gdGhlIGNhc2UgdGhhdCBpdCdzIHNpemUKPj4gaXMgZXhh
Y3RseSB0aGUgc2l6ZSBvZiB0aGUgbWVzc2FnZS4KPj4KPj4gRml4ZXM6IGQ2OWVhNDE0YzliNCAo
ImljZTogaW1wbGVtZW50IGRldmljZSBmbGFzaCB1cGRhdGUgdmlhIGRldmxpbmsiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8
IDE0ICsrKysrKysrLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYyAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYwo+PiBpbmRleCBhNzM4OTU0ODNlNmMuLmYyYWQyMTUzNTg5YSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4gQEAgLTEzNTcsNyAr
MTM1Nyw5IEBAIGludCBpY2VfYXFfd2FpdF9mb3JfZXZlbnQoc3RydWN0IGljZV9wZiAqcGYsIHUx
NiAKPj4gb3Bjb2RlLCB1bnNpZ25lZCBsb25nIHRpbWVvdXQsCj4+IMKgIHN0YXRpYyB2b2lkIGlj
ZV9hcV9jaGVja19ldmVudHMoc3RydWN0IGljZV9wZiAqcGYsIHUxNiBvcGNvZGUsCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGljZV9ycV9ldmVudF9pbmZvICpl
dmVudCkKPj4gwqAgewo+PiArwqDCoMKgIHN0cnVjdCBpY2VfcnFfZXZlbnRfaW5mbyAqdGFza19l
djsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaWNlX2FxX3Rhc2sgKnRhc2s7Cj4+ICsKPiAKPiBBY2Np
ZGVudGFsIG5ld2xpbmU/CgpPdWNoLCBzb3JyeSA6KCBhbmQgdGhhbmsgZm9yIGNhdGNoaW5nIGl0
IQoKPiAKPj4gwqDCoMKgwqDCoCBib29sIGZvdW5kID0gZmFsc2U7Cj4+IMKgwqDCoMKgwqAgc3Bp
bl9sb2NrX2JoKCZwZi0+YXFfd2FpdF9sb2NrKTsKPj4gQEAgLTEzNjUsMTUgKzEzNjcsMTUgQEAg
c3RhdGljIHZvaWQgaWNlX2FxX2NoZWNrX2V2ZW50cyhzdHJ1Y3QgaWNlX3BmIAo+PiAqcGYsIHUx
NiBvcGNvZGUsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodGFzay0+c3RhdGUgfHwgdGFzay0+
b3Bjb2RlICE9IG9wY29kZSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7
Cj4+IC3CoMKgwqDCoMKgwqDCoCBtZW1jcHkoJnRhc2stPmV2ZW50LT5kZXNjLCAmZXZlbnQtPmRl
c2MsIHNpemVvZihldmVudC0+ZGVzYykpOwo+PiAtwqDCoMKgwqDCoMKgwqAgdGFzay0+ZXZlbnQt
Pm1zZ19sZW4gPSBldmVudC0+bXNnX2xlbjsKPj4gK8KgwqDCoMKgwqDCoMKgIHRhc2tfZXYgPSB0
YXNrLT5ldmVudDsKPj4gK8KgwqDCoMKgwqDCoMKgIG1lbWNweSgmdGFza19ldi0+ZGVzYywgJmV2
ZW50LT5kZXNjLCBzaXplb2YoZXZlbnQtPmRlc2MpKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHRhc2tf
ZXYtPm1zZ19sZW4gPSBldmVudC0+bXNnX2xlbjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE9u
bHkgY29weSB0aGUgZGF0YSBidWZmZXIgaWYgYSBkZXN0aW5hdGlvbiB3YXMgc2V0ICovCj4+IC3C
oMKgwqDCoMKgwqDCoCBpZiAodGFzay0+ZXZlbnQtPm1zZ19idWYgJiYKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdGFzay0+ZXZlbnQtPmJ1Zl9sZW4gPiBldmVudC0+YnVmX2xlbikgewo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtZW1jcHkodGFzay0+ZXZlbnQtPm1zZ19idWYsIGV2ZW50
LT5tc2dfYnVmLAo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHRhc2tfZXYtPm1zZ19idWYgJiYgdGFz
a19ldi0+YnVmX2xlbiA+PSBldmVudC0+YnVmX2xlbikgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBtZW1jcHkodGFza19ldi0+bXNnX2J1ZiwgZXZlbnQtPm1zZ19idWYsCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXZlbnQtPmJ1Zl9sZW4pOwo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB0YXNrLT5ldmVudC0+YnVmX2xlbiA9IGV2ZW50LT5idWZfbGVu
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0YXNrX2V2LT5idWZfbGVuID0gZXZlbnQtPmJ1
Zl9sZW47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB0YXNr
LT5zdGF0ZSA9IElDRV9BUV9UQVNLX0NPTVBMRVRFOwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
