Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B929195A66B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 23:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CEE24072F;
	Wed, 21 Aug 2024 21:20:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NOuV5m3U7UI6; Wed, 21 Aug 2024 21:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1BD840728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724275252;
	bh=GBjRMrF4kze6xDxjQ3c0girr9se4gan1QuWQU+gbMjQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oel8uitC/0CAdBK9cedrF8H5NG2CL6jRU8ldcm+u88QGR4Rq2Y+NXEeaV0noZYfNW
	 jkYBNAFXpdyZkAWgu0SqwEj/8UgVC8VVqtJiOLiRA6rX3P/xM0sS8GN13f2iF8zGL4
	 +XoIFrhZE+z3HRZkVLuTh3sFqXDQ8vtoqIOPG1TQ6Wp6TPPiS0PmmJrp/yGm6eiDhr
	 CBDKPy0/2sOcUvci+hljl8WuudS8CO5nT58jH7d40MMRydTWsJ0ITuPXF37g4g54ae
	 IctkVI84FH3n0sx+YFH/gKwtEaf+pkW6pgijz98SwFoP1Pk0bBQw2u0V6UaIWDZsv1
	 3Hyds8zR9jh9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1BD840728;
	Wed, 21 Aug 2024 21:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 809091BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BB874058B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8lv7NhDopEN8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 21:20:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 147B340547
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 147B340547
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 147B340547
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:20:47 +0000 (UTC)
X-CSE-ConnectionGUID: pTISMyZzTSqCa3kZnEKIpg==
X-CSE-MsgGUID: TQKw0xQ0Q2CJp7G3ES+IdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33231130"
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="33231130"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 14:20:47 -0700
X-CSE-ConnectionGUID: zVmmqm1cQhyg9nfU6eFqoQ==
X-CSE-MsgGUID: QQiHmp6SQnKWQbtHRsuEdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="61750261"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 14:20:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 14:20:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 14:20:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 14:20:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJdU2yUsIhIZhlT+uLjrd6XvEC2IIhQSPHOwqU2RySaJOC5JZcwGyenxFv2GDOVtEfD1hDONFHjI+8KSBcUx9J7rU47aMjpMwiDMzk6ss7M3TSFVk5XxbLTUU+C9Ny/skj104a0WaEGuaax8DgsbrC9qwh6lVByjar4cFW70Mqv+1KHciZLw9wtz4tdD/73OVVwLgisD50ChIf8z+lONe7/5GQcsBIc1iub/pHIdWX2yILknCGcoo6LzVlkMynnagEJK9hHEboVmsmqqCibRoc/L6j5rNV69jaHHdj24zp0fEd3jR/0YFm4hoJuTKp8BegmdJieJYGuPxJ+ze14g3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBjRMrF4kze6xDxjQ3c0girr9se4gan1QuWQU+gbMjQ=;
 b=rch6YLBbdfowQfVuT/7SHboC2M/GJQx6P6T8sEMh+I+3Ng21EdPvudTeV81meY2bByW5ncsCRJQh0PkBX4nb8AyMvCvO/0mxlWkbfmkb0rBMdLZYVooBO9I/JmP7/yexErZLetEBhAu0ltLz3JJVydXPUo7RV/7PDCgy8d5ClrXdEnXPfJVXRy+oYl/o8oGq6E04SNCr22IK7fRviiGIbnG2hvDEiFFEOHqL4d8vaFiGKfChGt9xTLvW4MKibUkFeH4/wjr4gGBmjrSQ7YHzydKgeUwzogcx/+K1dmTsVNdgfg7yCspRJlSIugVd8jRevPnPYXyloQA0sMpZKe2DiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5079.namprd11.prod.outlook.com (2603:10b6:510:3d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.18; Wed, 21 Aug
 2024 21:20:43 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.023; Wed, 21 Aug 2024
 21:20:39 +0000
Message-ID: <599caa46-3723-1a54-8122-90474bfccfe1@intel.com>
Date: Wed, 21 Aug 2024 14:20:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Larysa Zaremba
 <larysa.zaremba@intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-2-larysa.zaremba@intel.com> <ZsSMt3O4a+Jq0e65@boxer>
 <ZsSQY14RCWlG/Bxd@lzaremba-mobl.ger.corp.intel.com> <ZsSZnLt9k7zn8G6T@boxer>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ZsSZnLt9k7zn8G6T@boxer>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR16CA0028.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::41) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5079:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d3cd41a-548f-484c-806f-08dcc2271b2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OXRvNzhidkVnVW9TSmNsVkRxaG5UR3lleEtieFRsakhZZ1Zwdit2S3RvNU03?=
 =?utf-8?B?dXM5eVl5N2h3WWh2V2lIaUdVNmhhVTVzbU1vT25Hcm1sV1dhejRVenh3VThY?=
 =?utf-8?B?M0ZZUkYxRXM5R3ZrOGlxeVJteVczMGdrS0JWa2pHTk92ZGhZZUJnMEpMeC9o?=
 =?utf-8?B?YUpXLzlnQ3BRRkJvRE0xTVR6eURHaVEyRnpZU2lWT1B2VGk5c2VwZHlRMzg0?=
 =?utf-8?B?cTE0bXNHQW9oQWNIWnd6YjdXbjhhOS9jb01Qd2VrcUtCeW9FQWF6eUlpRzJv?=
 =?utf-8?B?Mjl5WnNwTWJONTVDL0ZUZDNPVk5XejliL25uWDMwYVdCSFY2QXhKZ2lJcG9r?=
 =?utf-8?B?SlYyeDRlcjNaSUo3OUhPNHlRaEF4cXJiajI1RGV5YVNESWoxTStUNEZRVHcw?=
 =?utf-8?B?Qk5ZNXA0WFRRNHJtMVhkYVVYbWJOemJ0ODRtNm1adEN1RjJJSmhkcUpVNzE2?=
 =?utf-8?B?M1Ztd2s5WGdQYkRpd0EzaWNiTEs1cHlPQ0IraDZVekRtN2d5TElTZHdaMEVW?=
 =?utf-8?B?WWxSU1YrOWp4UkNWZFg1bmdhdW00NHMxaWgva3d6RW15a1d6UkIyYmV0NjYz?=
 =?utf-8?B?VXY0QTNGbDZVMHowdCtwZm5Zc3lIeUZRMWhHQ2xiQWppZ0Z4ZCsySTJTV1NI?=
 =?utf-8?B?dDJNWDJDSVZESUdLN3BnRWNpaGdROTEwZXVuZFBSL0oweGpBZEgxYVk4d1cw?=
 =?utf-8?B?c1NHSUJTc0V5RWhsMnVtMytqUWc0Si9SVFp6dVdqOC9UcEkwdXFBY0lSTnkv?=
 =?utf-8?B?cEFMR1U0LzJkdisyV3Q1anh2QngxS3V6NTFFSGgrTFZIUFpwaVRnd0cwTnkx?=
 =?utf-8?B?RjhHM0Y3NFhvWlNaU1ZtWnZKRTB6c3g4azZmb2paUGdKMkFBSW5Ia1U2T3Z3?=
 =?utf-8?B?MzJsZjVjaHNKQ0RvYUJyMVdvR2dFdko1SlUzWnU0NkdKdjZRYnY1YXFrL2ZF?=
 =?utf-8?B?WWNRZURJMTZSQmN2bkJ2V3ZmeERYNXR0ZXBIV3JubDI4d01LQlkxOUNvSEZZ?=
 =?utf-8?B?dVpZb3c1N3RKYXIraWdqSEJ2TzBtbUwraEU2SDZDL3lhY0tRWGd0UVkxT3FQ?=
 =?utf-8?B?ZUxlMUgwbHEyendSY0lsQi9JNit1VkorYVFMSGJBOFQ3QVJFeEJrTEpvY0NJ?=
 =?utf-8?B?QlNlRFgzVXQ0aEFrdzNqcnFsWGg3R1pZSFY4a0R6bFBaWmZVL2NjSkVtWHQz?=
 =?utf-8?B?TnVJNDcwS3FwK3FQWTJDajBuRHMrUjVOcU5BVlhzb1k1M1N4cThZRWFqbGtY?=
 =?utf-8?B?V09yR2VwNGZFa29RN2RTUlU4aVBwd1hrWHQ4L3EyTVJMalZXd29UeDF6QlNR?=
 =?utf-8?B?TW11bmk1Z0RZa3JVejZwNFFCMVJMdVBuejRoZXV6ZXQ4U0g0VUlteHZlQnNX?=
 =?utf-8?B?eW9WZDJXZFpnU3lSdTYrTnJQV1FqSk42YUV6OEdGOU92blBUTlBFUjU5dmdC?=
 =?utf-8?B?Nm05NE5MMHNqbFh0a1pCRm5BMGZ6Y294YWYrZHNaV2xDRjIzR1BsbVZiOXBY?=
 =?utf-8?B?ekJmME1jU2dMS21mS0o2WkxsWU9ZejJKSDBBT0Z5N2t4RkJWZWdlYjNmekZs?=
 =?utf-8?B?SnluaU5hUkZiM2lBdnhpanJGN3U4eEdCa05Yak5pb2FaaC9RZmovYThmcEd1?=
 =?utf-8?B?N0tvejQ2dGoxV1VNTlV6dlI2ZndjdHFhbnJZdCt3V2o0dFd5NWdvWEhubGI5?=
 =?utf-8?B?NGVzQ3JQSlNpZnM1djR0eTZmdW5iSW55enh1YUp0NDRKUTlaRGZFYkM0cnB2?=
 =?utf-8?B?eitOL0FXS2laYUN6SkNZM1ByV0lOMklHSjMzVnU2MGpEYldTaWRRcTllOHht?=
 =?utf-8?B?aGJLc2hIZnB3L08vQVlPZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFFNNWlrZk5ncll5ZzFGczFBdGZ1MUxBWitKMy82Q1YwV21qTG5ReUU1SGZu?=
 =?utf-8?B?aHVVbStJNDd3c25LTHR3b1VnakNjdEQ3SDF2aDdDQktSbU9XZllVcExpWFU1?=
 =?utf-8?B?MG9zOTY0SktrRTY2MGwvK01FTTVXRHIwc3dpYml1STBTcVhXV2xFbWY4YUk1?=
 =?utf-8?B?SkwvY2x2Y0J6bVlGV0E1LzE3eUE3TTNXMEZmYnE5cVpLMGRweWRZNW05STBD?=
 =?utf-8?B?ZTJ0NkZZTnhXTTRidzlFM3ZFbTBuZzVIcnRDdzZTSEladU9UZHNncTZNK1VS?=
 =?utf-8?B?eXRSYU8xT3BLeldnVndtSmFURU85N1pTZU5TcmRCWnhTQ3hZWmdVZWEwVXJP?=
 =?utf-8?B?aGE3NzVzbDF4SlhjZG1wYXRVem1ZZWRKVDE5eXM4MjRFQVFKN2JnWmJ3dmhL?=
 =?utf-8?B?NGtSZ2Q1a3JRaGRlYWJOQ2VNejdCOGFBYWNKVUpaUDRyMi8rbkEvMHBDbjVq?=
 =?utf-8?B?SnVMdWF2bnVMRkFaWGk2WU83TUwxR1FxYzVWb09xazhSOUpSYzlBVCszVFhI?=
 =?utf-8?B?QmJ1Z3puUlF6V0JjdnB3MVFqMk4zbXJEMjJyY3ZUSnZkb0o0VWMydWNUS1ZY?=
 =?utf-8?B?VmkzV0h2UU00U01teGtKaGNTdnh1YVhldW5YV3JMVmNFaW5GbDZwMzh2R3dU?=
 =?utf-8?B?M29zS2VxUS9FaDJkSEV4N1hjSk5JdGxWUmFhV3FUWS9hemthSEd0MFRDdTM3?=
 =?utf-8?B?TXJxTzFYQ1hEdHpXd0N1c1ZOWFU5d01Vb3JkRmltQTJUcnBEd0haMjI3QkRo?=
 =?utf-8?B?QkVsazlDSzlMU1F4TWlXVktNNm9NcjZtSFBTTkM1a3JNWUUwekVlcWYxWjVO?=
 =?utf-8?B?TzRkaUxFOEtJQ3ZDSkVXRzRyekxYN0pXU3dLL0NENldFN2s3WmdHd2tzQ2Jt?=
 =?utf-8?B?eEVNU29ZSHJ0bGs2cnRPZ3NQSllGZU1oN011T2VHWkhIMkxNQ1ViWXY0cjl0?=
 =?utf-8?B?YjcxVXhET3dOckoxNkV3OTg3TkNKUnZ1eENYUWd5bzJkenJEck9kc0gzMVF4?=
 =?utf-8?B?VVVZazJMcEg2ZVB6SDBLUHBlL0FTeUNWZUtBZHpyMXJZVWpXeURZNld2ckg1?=
 =?utf-8?B?TUd3elN4VHhwZTc0RGNNenp0SGJ4cGhERmJNQy80TGlPNkJwajJrUnVXYXA0?=
 =?utf-8?B?N1o0Tm5yaENZbzVkYmdqQTVUSytMZmpZdU9BbENQMjJXSDBTLzRqNjMrNnJh?=
 =?utf-8?B?a3N4THYxZmtlaTlhM2dpNUhZQXZqTE14dDlFMDhBSzJraXJOSFdsQlNxV1VZ?=
 =?utf-8?B?aE9PTlo1anhoU1NNWW9OKzJyOG1jTWVJOGNQZjFmd3VRVnMvazRMMnE3NExi?=
 =?utf-8?B?MiszcTRvNEtiTVRuanoyT3lJekZkOVFic0ZoVlIwOU5IY2ZkbldHWC9yckRy?=
 =?utf-8?B?a0thS1VUVUt6M0l4UlJTcjFpVm5wVmk0NXAwN3lUdmFqRitzbW1Held1MFBB?=
 =?utf-8?B?ajFaRUxNdzdDbVdUUWNuUlEvVlFjOXE5SzgwNllONTBiNFRQMlBKaHpkVmh5?=
 =?utf-8?B?TVczcXBLUG5QTUNmTGhFbGN4TlVmanVqZHhPZ2p4YzQ4OUtHMWwxbnVxWkNX?=
 =?utf-8?B?cHV5c1pma3VlRXgvU2VsZjJ6MWVMcjBDR052VEdEcW9YUHk3VDVjazJ6a2dk?=
 =?utf-8?B?YW5Vbkh3aitIMmlXWkNXR3dXbWJCQjlQVStEL2cybG8ramZDQWptZ1BtTnR0?=
 =?utf-8?B?bU5DYm5TRmtiRzNZaU0wN01qczFMK2MySnpQTHdYOW4zcTA2MUpiSVZPaVRm?=
 =?utf-8?B?RlVROFNLdUY4VVJYb1V5NU50R0ZOeFNjQ0hRUGZwd0NQRmx4YnhQMVJNNUdw?=
 =?utf-8?B?YlgrcUNyV1NncVdrcmhaZElCSktqK0JORTBHVzZFK1NHZ2Z4eVRiYXUyU2R3?=
 =?utf-8?B?MjVzZXVzS2dUMXM0S0JiZnVIQjRma1krb3RYMmhLWjd5dCtGMEh4Wkd6RHAw?=
 =?utf-8?B?c3lDU1VDZUVrYkxwcTY3d3FXQ3VIc2tDTmNuZndwYkNkbVM2S0kyY3E5ejRt?=
 =?utf-8?B?QjBTU0E2VnR2c04veFpTdmN3OHp5Z2pNOXpHNXZYZHpEaFdWL2w3ak1hZVAx?=
 =?utf-8?B?VWlRNk00RTQzcnlCOE5FVTZqMGpyellhSzhyVFIxSlB1L3hrT3g2Z25FNkdG?=
 =?utf-8?B?Slh3WnZOK1UxN2JLZHhGNnZzMm1RMUtRdUozV0I4bUNNZGxoZzg2aUdSMExm?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d3cd41a-548f-484c-806f-08dcc2271b2c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 21:20:39.7156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2wgp43MdykxWniE9HAXsxEoBn+wq2p8dw0OntNuA5ObmbscN0e9QAjSJgzx9Cb4aclvLWnG8aq9uyJQQW/IIcJb5qONwQ2aLs139YOjoNsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724275249; x=1755811249;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7JjkjdfnT18z2/air/zc4YocHDx61ZhtRzJMfIm69OY=;
 b=Nbuar9Yazqk1tpBVFqfUYKZPmgPj49M8mA5CWDpEcFEldw7d3kn1vN/l
 khQXc2E/CJslgVxnMplrKtSHi6tfZxL8wNs1YVB9voa77yZb9WGBKNTxN
 eTM08E8MzsHTMVIxWEtn4TDorZ+eZjGPPkX4Ruril3sTSj45q+/WtvZmP
 WL15ImNIYxTnxL1DbXw62pI1yXPxvfSeUe1KoWAdSTfJYhVb2OWbeBabu
 dSfnR9rwV4v6XjYPMoIqXxkfNjA6N3ZiPcXdNM9kx363Jprr7+T38wpWw
 R+8PfJ5JbEv3eActQdwFF0yTKNe4tccMuBqlrfaUO1sHMPKBmhnsfxg40
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nbuar9Ya
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/6] ice: move
 netif_queue_set_napi to rtnl-protected sections
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org, John
 Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/20/2024 6:26 AM, Maciej Fijalkowski wrote:

...

>>>> Fixes: 080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain scenarios")
>>>
>>> Shouldn't you include:
>>> Fixes: 91fdbce7e8d6 ("ice: Add support in the driver for associating queue with napi")
>>>
>>> as we were iterating over XDP rings that were attached to q_vectors from
>>> the very beginning?
>>>
>>
>> I probably should have done this.
> 
> Maybe this could be included while applying or sending the pull request by
> Tony. I'll go through the rest of set today to see if I have any comments,
> if there won't be anything outstanding then it won't make sense to send
> next revision just to fix the fixes tags.

Yes, I can add that in.

Thanks,
Tony
