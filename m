Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091726AA580
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 00:22:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1C6D40160;
	Fri,  3 Mar 2023 23:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1C6D40160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677885723;
	bh=Qzv3mBEGZ7SRyTOSCtxnHJY6QFYhS24H+hge1hP7Ht0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2+gt9eb2K0KpMkCfVPHEg8h24y58AyMby2CE5S6HF2RnFnraaC3CAEV1d9r07p6iR
	 32uNuPy7WWABhzOMoupDi5Ga92FXwXLoR/mjfA+Ztt/d7JoHe2hj4t9rHCy4tPoA0W
	 WwQP0liZOHtBuCljxrH+YxeqvGulSlRn0NTYXmqRAwff3o0LUsRp8t8zy5eeeUk5kI
	 /G9IW9C6Cqbwn5FyOphi5n/3XValmxP2Wun6DmpEh5zgf93t6xAcvW+Jt20q8EDpfS
	 wY1zW10h05nHdDG89qQOWMQ72Fg2yTpTKfrxvewxIuG+k4UxNMSfa2zH63P9HTtTMj
	 GTNeM6VgdKN4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3xSAzCuXJwS; Fri,  3 Mar 2023 23:22:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C5C34012E;
	Fri,  3 Mar 2023 23:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C5C34012E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7D41BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 657B66178E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 657B66178E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMnYRX10aKyh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 23:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EA6C60A7A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EA6C60A7A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 23:21:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="336701947"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="336701947"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 15:21:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="675536479"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="675536479"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 03 Mar 2023 15:21:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 15:21:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 15:21:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 15:21:55 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 15:21:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EuOWuq3Fcv4P5Ir0Jm0AgMRi2DEMV0lpO41yQUSJJiSwemRoGU7JpsuhS0mQg6BW56HXySefm1iWRamXEzcFwSS1igK5VIZ/MEx/7rsrNHFPOliD+eEo+1xzUEtZ5vy5WysfcmOIFJcCC+Qhk0vV4cHtvG6w0DZ0f144YaTYFPOypjrQ529dI7Y36p9ubt137Jzdcujlwa27+A+jG9uaCSeJrssAdl0N3CdwZuW0Rs/ItmQfnS8IfZSi6eJkqudwt96EssLKvEkpumfhnAvSDWG8VP5TnyTbNPil9m+SbUQYzSbwyOsEX4WT8ovVhnWkORiNl08pJqKuMJz5v3tfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGRYUCLTxISfK9jLTsFsmyhh4L/ycMO36NN4in2ihMc=;
 b=U7JfhdSpDkjWI15M7pePL6jAJ62qChbggmdlwpRUOOJrM9+DnP+5SltF6Rhi3hKfG21ziIxGUpbU1ABUOeYQeTiPl5LUcOsummjt1628zZ/CIyQNWgKyIrrh3bgU/zj8JVz/mMTL+8oofplbQ85oHnBu75c6kEELGV3C3LWlWiFWlhI7eKiSziNemkRl5NuNTU2ABDdc0CETwDYSfbvLRYpjVHmYl53bgXFEgMtnyCKZCQnkptB8sFuUlPO1fdjlZcLcH2okhVNr6ne/xMuQznrY3VeRdxUOlFW/zzRWFecximO8q2ktgwXVideNeg6l/6MXycBpLwRNiul1H1/ntw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Fri, 3 Mar
 2023 23:21:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6134.029; Fri, 3 Mar 2023
 23:21:52 +0000
Message-ID: <015f0231-35b5-a7e4-513e-513e9d0c407b@intel.com>
Date: Fri, 3 Mar 2023 15:21:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
 <20230302215109.124-4-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230302215109.124-4-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR03CA0237.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: 403a4677-3a27-4dad-200c-08db1c3e120b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NaK6JUEtWipJNZ+P+kMcnzvJVgP8de0kB1nsiHnpX08x/cXK+Ea5GAgi72SF8Z29/E2qHtRYCpwlBOZvEpm/e9sLaGE8g7L9n+lM9v/0jBKYPFhL/5YDnTKkTpK7BvMEiujulRgviSfSRWNH0wqOZ5pC0T1kEnQTB2LZBGKt8D5bc38vcg7PT/LP/0sxf7YUm/0B9cJhl3at0q4sggybQaA4e/65m8BZylRRaQyq/PF0ZEug84rgWESlvi+zznbxVNAaMZ1+cMiVi1VEiCWxb3FSKK6NQEU3z8UoD88SqT2zU1hF/tAxD/0dFyafDj3K5tCEMogKnGEfR58FEwd2Q9b1SrMgdHHF8hSLrc/moNlK10gJMBzDu/sZ39ys0iOVGjwzslSmlg/8JsrOAE8vOpK++TGBqMDzC9QYg0qM2rIm7YywwzTFxJMgjEvSPa7wrWdIGDvplsZaS4wnSBND3CUstbxYvCbkSxfm9jkjb7i2VnwOHRh0lIt+2i4Yxub0rDYfYKBdkkTaA0e8mdXArsgTVJzowsHXloUDt2Bnb/lxwJQeNlGkGP4SUOxJHiQbPFK8d8gbVwtbhzPOL23wDn4jT09w2dtVMyBDVo3S91QBtwtQyvQnrdwlKZM8GcE4H4yRFVZEafcW3AhX5ZmmoK4KTwLik8ECOrUNNTNsAApsWiPsO2z/osG2glPq/oUTYRhp7GCR7IbE5gX2ov3ZOavCaB79r0eOGULk17FPrkA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199018)(6666004)(2616005)(6512007)(478600001)(31686004)(107886003)(86362001)(36756003)(2906002)(31696002)(4326008)(8676002)(66476007)(66946007)(66556008)(83380400001)(316002)(6506007)(6486002)(186003)(53546011)(41300700001)(8936002)(5660300002)(82960400001)(26005)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVlmdjl5OHZQakx6VTYrcUV6bm5BV3c5bW5NV3M3RGFXL25mQ0RuNmNFcSs4?=
 =?utf-8?B?TnZNc0hINldMUFo3Q2Q4b0VGaDV6TWxMNmRBNXpuU3FINjM2M3ZDRFp4eFND?=
 =?utf-8?B?NS8wTE92Zkl5SFdVQnAvT09xeG4wYmM1S2kvV3RxZFY1ajZqQVJRQkxvRU1p?=
 =?utf-8?B?TmQvQWRkd09BV0RHUGZyS1hpcWtGR3VrYU5nMVpZYzhzNnRaR0ZycERHL0lC?=
 =?utf-8?B?c0V6SExSY0RsZnBSeWcyclVESVN5SnZPNC9SVUpLMUhtRllpTTdnVlFwZVJN?=
 =?utf-8?B?Zkd3eTlIU21jYXVNQXZtbFdrSWl5MDUwRm5YaGUxZE1TM0RTTldJcXZ2N1Zm?=
 =?utf-8?B?eU5JM0VRd2FDcFk4VkZQM1B1aWN5MFMvb3Y1SU14Y1BPL1FEZmJqa2U1aThu?=
 =?utf-8?B?K1lZeU9OTi9EUlZWOUtFUnBzaW1WeTdvZWV4V2lLTGFkdlh3VHA2ek1sTTAv?=
 =?utf-8?B?MU9BSDBnajdLbTJ0bmV3Wk55UzJZMXQ1eHJrUXRuUkd6SnNJK0hPRm9DV1Zp?=
 =?utf-8?B?akpPNkd6YjNBVkg3eUlJQVY1Ly9LVGZuM2NnQmZuM3Z2MWNjWVEvcWl6NUdZ?=
 =?utf-8?B?K2d5THhOeFg2V2s1czFGUzVrT3ZhYmlQWlVQd1NrdFNRM0FZekYrVFZFQmtU?=
 =?utf-8?B?TGE4QWhDSEtUdm45WXVXbzUvMGkwc2FLbjhxaThMdVVBTU43a1ZjVHJEdkdY?=
 =?utf-8?B?MTBWMGwrQ2pkeENSdXM2bVJjdm5tdHBLcVQ3dFQzY3puNVBVS1IwSDk1SE1T?=
 =?utf-8?B?N2dtbTNSZ0ZnOVhlTmtxby9sSUprR2E0aGQxVWxoRW1idGlqRHl4WGpJZnJj?=
 =?utf-8?B?MGhLS3NVUFJBOStXOWFSVEZReUFCSkdTV1FjbXd6SEdQb1ltdkN6UHgrRG1S?=
 =?utf-8?B?VElxSDR1Yk9uRUpiUHRNUnVaYkR6aTREeFJ3TWsrU1dpbnZIV0p6ZlVqd0tq?=
 =?utf-8?B?RjgvTVpEUnR2akE5NWxyVzlJUkdiTmpJUzdhaXZYWnhUQUtLdkJMWG0xQ3Yy?=
 =?utf-8?B?Q2U0Y0pRQ1FtYW8zczFRbUUxSUpGZ3RrV0tVZktxdW9NTHZGbmROTUhXRHBC?=
 =?utf-8?B?NHVxNXNyZnZZcDVXUDFrdGJRSkpKek82ei9VWi9tZTBWdVZRMjBpQmR5Qyt1?=
 =?utf-8?B?Z1BRMzREUVlFVUdxT3RlM0xybUJ6RG5hdy93cDJOK01Oc016cWFydGlTc3pu?=
 =?utf-8?B?SnRuNlBNdXhMV2VvbDE5OXZ2Z0NJcjdNU3E5VEtzL2t4WStOeU1iWXFDam1o?=
 =?utf-8?B?U2plZGdVNC9HNHUxV0VEV0Y5Z0Nid21hOVMzOG04YlVBWjhaQTN6eU1EZURE?=
 =?utf-8?B?OWlOd3k0L1VIVXpzZWNHc2pNTW84djJsaDlhYW9HZDBVdTJjdzA0MFdyTk1q?=
 =?utf-8?B?UGhWeWJUR1N1V1pzM0ZQaG1EK3JuZHNkSHhRbGZlNU5wRXpZQmRkYXhEdk9r?=
 =?utf-8?B?emNxa0ZObWlUNEcraFpWUkhPOGZReHhFcGF4QnRnYURaME5NTGNrZlhqbTNs?=
 =?utf-8?B?ejA0c0wzdlREWWJTdnJMelVoQ2wwTUY0TE1nYkRZNW1ha2pMNXh4SUR4K2hC?=
 =?utf-8?B?b05xY3YyZ0k5WlFqeFMza0JDYVZlYjJXd2JKWjhSRE91SERzYkZ6NjQxYjhy?=
 =?utf-8?B?QmI3THJxdGVvN0xTVUIvT0lUd0VqK0lkU3dGMG1oVVdnNVFNWGZETjFkYXlT?=
 =?utf-8?B?b1h5cHRNR0o0MWxQR2tIbWZYUHdZVGlhVjRkRmtPa2drMStqNktrWUZZbFhp?=
 =?utf-8?B?SCtCZS84ZFFYVEdnYjVLZWs2eU45OGpkUmREWlVuUE0xZHF2WlRDNEFMMTBx?=
 =?utf-8?B?TjdoQ2dXSk5PNEppRW44cS9YaFhyNm5TVFNlZ3BkVlFaTVNwUlhiZ0dqVkNM?=
 =?utf-8?B?SHhaaGQwZ0h1UjZrSVJ4YjNSRERGcVdEMFU3bFRWakl1eTBtSTBhV0I3bHMv?=
 =?utf-8?B?TG5JdmEvdDZqdzFjTHh4ay95RkpTM1c4RnZOY002THhiZ0d4OEVOeGtQNmx2?=
 =?utf-8?B?alZIRzJWU3AvSElyOWd4azFaVW16WHVVVXVJaE02THBka0NGSUhHZWRyZzZk?=
 =?utf-8?B?allyVWp6SzlwMVRTZWNraGpwQ2s2NzBsQVpmY3JFcWt6c2tORFpBc2d4ZmdH?=
 =?utf-8?B?U014QjBRZEd5RWdYMjA5TUVaRlEyVUJUWFdReExpeEFLVzZEMzYyUlRSb0I2?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 403a4677-3a27-4dad-200c-08db1c3e120b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2023 23:21:52.1513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U7FjAsUQ+m9AzfRw801zgEcDhUaJmc5kviZ6X/s7Dmj4eN5MKSxKPCc6fuloJqupF/vg5hTZ7HOHx/Y3IeYcviPYvpk1m4e4vIKYpAdeJg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677885716; x=1709421716;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iIDszo7OH2jqzLh9OWM931nFpw3pV0/5I7xTfTMg6QQ=;
 b=LAsJ6tdOaGRe4to4aNb/9FXSWsmF6WcgAKy4rUrmIB5MBUpeTDP4qDbe
 aVTd0Et8kBAFP4Ex0an5hjkD7o09AeZcvh7ZwYtqHjkkpa/k49Xhh50aW
 CkBfqiTUXQx+XDV90+yoxY2/X9uiDzobItqZKsU2nTizOvcAVDkWU+TCA
 qFYZiobMPSjaSzgAE3a8DXajUId5ds4wBLwghNDvImcP+P/T+ad7rO4GU
 o252dzL68GW1Y0C5dwaL3Xu9bu7CC6qy0eJXIIxIX8RC7x7MmuZ23oDMv
 YE0oSSotQ5oM6+uw+ofE5n+8ZwckQcjgzlItny0SHGD5IN+kAPBIF8XUq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LAsJ6tdO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/5] ice: add ability to
 set FW log configuration
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

On 3/2/2023 1:51 PM, Paul M Stillwell Jr wrote:

[...]

> +/**
> + * ice_pf_fwlog_update_modules - update 1 or more modules via debugfs
> + * @pf: pointer to the PF struct
> + * @log_level: log_level to use for the @events
> + * @events: events to update
> + */
> +int ice_pf_fwlog_update_modules(struct ice_pf *pf, u8 log_level,
> +				unsigned long events)
> +{
> +	struct ice_fwlog_module_entry *entries;
> +	u16 module_id, max_bits;
> +	struct ice_hw *hw = &pf->hw;

In addition to what lkp reported. RCT

> +
> +	if (log_level >= ICE_FWLOG_LEVEL_INVALID) {
> +		dev_err(ice_pf_to_dev(pf), "Invalid FW log level %u, all level(s) >= %u are invalid\n",
> +			log_level, ICE_FWLOG_LEVEL_INVALID);
> +		return -EINVAL;
> +	}
> +
> +	if (events >= BIT(ICE_AQC_FW_LOG_ID_MAX)) {
> +		dev_err(ice_pf_to_dev(pf), "Invalid FW log events 0x%lx, all FW log event bits >= 0x%lx are invalid\n",
> +			events, BIT(ICE_AQC_FW_LOG_ID_MAX));
> +		return -EINVAL;
> +	}
> +
> +	entries = (struct ice_fwlog_module_entry *)hw->fwlog_cfg.module_entries;
> +
> +	max_bits = min_t(u16, BITS_PER_TYPE(unsigned long),
> +			 ICE_AQC_FW_LOG_ID_MAX);
> +
> +	for_each_set_bit(module_id, &events, max_bits) {
> +		entries[module_id].log_level = log_level;
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_register_netdev - register netdev
>    * @vsi: pointer to the VSI struct
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
