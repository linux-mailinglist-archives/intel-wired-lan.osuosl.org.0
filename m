Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF99581BC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 23:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE9244027D;
	Tue, 26 Jul 2022 21:42:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE9244027D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658871751;
	bh=8UDcexpu908hH4wy5BYk8mrTxVK9QqgC4Zg+YNWinyY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RNvwsebEVaKEki+nxvhVnAhKl6zK1Rq3vdLj0Tkc9NWHk9X1RukJ4DzDE7d15kDaL
	 wLztX9rIiWAZiZ4O1unCAABnR4NYDGp2CXp3waes9HdnbgQeKL6osnsUbWk57i8HtQ
	 X88NZrJgnJdVNB3LWaxGOToQ6Qg5zMUFkYTb6Fb/fTRnCJMAuQY5JhdFMYVybNCCdM
	 mVcuR5kH7tFdwKg9H1MyN9JSdkjlXk7vSv3bqn9ryZI0zNAolaQvr+0rxMEVX8pkTU
	 Fj0E0PNSowdKiDhOridp1scKr34HIr02K6HRf4fSGdplxm8CFfEnQASC6MJIwh8O4l
	 A8M4FH3cfXpcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3uURLm5ouYy; Tue, 26 Jul 2022 21:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 336A0402B5;
	Tue, 26 Jul 2022 21:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 336A0402B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 392B81BF59F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C204402B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C204402B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7jSKERWzsX9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 21:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 038C54027D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 038C54027D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 21:42:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="289262179"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="289262179"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 14:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="703051654"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2022 14:40:29 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 14:40:29 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 14:40:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 14:40:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 14:40:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwL3gtqGatDH/m7AHS96Z1+6+ShThQcFNI3MYm/Kxz8qKNKdRwYsoowbH2LMdhi0IAqt2OmTqcpZVIiys8UtIJJh/Wgdg7ewo/2u/b2B2PjT9Pxl8WvUaBPjtodfSNMq7p8LTE9t/Uw7HDlMGFmZhbKxJjFo7g6768fFvQrqIjWWuQ9Xhz8nRa9s+zILDNqUpCnCgsv5eeseH2WKPtqdhir5if6LtWxto11k415udtH3vl2VZeoPdtZUU7Pe3QwgmtcCezGx117cDUUdAu8CCpAbigwlZRnUvv+tHx/4uaadEoZlNk8YESPBherK9YWq32d3w4LU/sU053yTUiD92Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dO7wFNokDQWCSSZ+Oa1I4cdJguC3rM6G8caXf354qn4=;
 b=Zmxyp4oiA33rP313vDXsDC8mJIyanqS/YP2y2VCPVisi+nvwyGA3O5IxJ33TaXDmEB544Y1mdSnHTjAUsxkXcCbVgdKEAMcimazaNmxQ8gZyTCfIoFJesG/4WnNvhBalXTWiIjLBh8WR7ghyyfzshkk2JEnxyttSMSfZ5JG8wuO2l7YQGTd2F9jwJxZE8TwrGfPxvRWA5pnodw0Gw+DvVF4Ckh4ELk23yaAtfgeFX3r6OMtTx7igat7dajXd9XU+9/cRphu3zcVHeIO9rS51/31a3x094VuIqJoaMwBM/14csLwEuATXxF+29VF6uubpWgcUM9SiIUHk03oqHHnLgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 21:40:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 21:40:25 +0000
Message-ID: <9b99fe2a-c4e8-6e4d-cf9c-4d28796ed9bf@intel.com>
Date: Tue, 26 Jul 2022 14:40:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
 <20220725070210.488309-2-anatolii.gerasymenko@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220725070210.488309-2-anatolii.gerasymenko@intel.com>
X-ClientProxiedBy: BYAPR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::42) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 796ecf17-5e5e-47a9-45ac-08da6f4f7352
X-MS-TrafficTypeDiagnostic: MN2PR11MB4536:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +wnYczrvYSZcN780vrNeh4+zVf+AosRSKBWTuU0AjARRDKJckHUUsLbK6Ll1dIebctsZzxYZ5yF6ZRpi6LJh1HwdL0RXYy/BhsE+8cLKQvOTRG9N7n4xUAcVjzG4Eq9EfA3tcj1pHonYWM+Vhh4hqH2RB4QLer9N4B9U1xpzAfVdZnP2Rr0ED4LXm8dvrML1KxGQOV7pVrpvLvnlfpdY+sxkjXxFNUFSPcGn/xGWAheMMEt+PA/zq7ZcbZKClebRXRioHhTMA6jWkd8JSa4Vcam97FRChao9d17SsyR3a6kUuS0cMZ4AIY/SQdhpVE/IRMnAGIiElldK1eVcZI3Rb3fWdk6zQ71hUapwIQIK/OSLJDBO6Z2ZH5KyPLFNErtuT4mew07Q0HqHba0TPUV2DcaNW0Hqxs3y//wluIHusiWRjD5S8OGi9xLL5aGGbOcquV2ur7469DdpnyNHWMLjq/mP9qtDXrOnSav0KnDyVvw9UHpyd7GG1/HKL0FN/Z1JYBvMTZZZySA9BtO8Bo0cf4zWwEDQR9FdUreYwhvub5XTa9QlC5zYsspOBjMaCa1UJfryF8UmzRshUullg0o3Yfc11iEphL5RQi7zaIN5Ebh9hnWrAYtsWaqu3YFlWbbrhuff93JAuhFZpZdTNMqw5Xg+eYeSknuf8JCRO53NiSP8O8VUVE3r5F7gJ266LYBYJFTY9rlqKeKXPCQWtDKxU3OXfETgoB4DOh9dAaWpoHFNrPZXFGpURs372/hgsvcg/MUY/AFoj5k2Xue57+s0kip4qdpW8PfHCdjrm6igSdcvBrk9li5u++0waDsnwQa2t2O6DLqgHOHxMEvz2f7CFH5zCxlB7KigALJokxAk58M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(396003)(366004)(38100700002)(36756003)(82960400001)(6506007)(54906003)(186003)(107886003)(2616005)(31686004)(316002)(478600001)(8936002)(6486002)(83380400001)(86362001)(66946007)(6666004)(41300700001)(66476007)(8676002)(4326008)(66556008)(2906002)(26005)(6512007)(53546011)(31696002)(5660300002)(168613001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3J0NUNlTDFBMjhNMktFdDRuVUVRSWtma2VHMDJHUFlxVU94QmRCdmVidzln?=
 =?utf-8?B?dFdaNmhlZDM3V1lPVlJteW9iMjloR3FFclYxblFIUkdYeGNjeVJlWnVUbGpV?=
 =?utf-8?B?Ri9rMmtNZ0xkRzFqTTdqUHFablZoM3IvMDkydlhTSmVBMkt1RzdWYm1DRERO?=
 =?utf-8?B?WFlncjlFa0hIaXZ0NCtseWZFVS96N2QwWDJqbHM4dlhJaDhxV0VycHhtWE9V?=
 =?utf-8?B?L0FNSTJYWEkxTTJ1S3lqSDk4VVlvL3hPcUJBNkRvUGpZbkxodmFDdS92RXJp?=
 =?utf-8?B?V0tISHY3SGZKd2hsNG9nYUtlZ2xDclJ6UW9RelgrdU8rRCtWMnpHN0JZY3ZN?=
 =?utf-8?B?c0QyRUU0cXVSTHZsZTJHOFJlY1ZMWUFUQVZhUTZjT1lNaWxKeXdwN1RiMFFH?=
 =?utf-8?B?Y1p4aTNzSFEvaHByc0p0Sm52RGtzVlBXL1JMWENTV0ZBeU5hTEhBVnlIb096?=
 =?utf-8?B?WHd6ZzZFd1JXSXhEWE5MelJKZVplSkl5ajBGaFF2TktacHpmdmZOWnVHcEs3?=
 =?utf-8?B?WjRjQkFWcWNlWENHN3Nwb2IrN1JGZHJYUWkrdUhnRHRCN0RHY29uVE5KNnlD?=
 =?utf-8?B?RkxPdG04UFdvREpZcWMxYng0V0IxdndRemtUVHo0TzRXSDR6RkN3Z2xhcW50?=
 =?utf-8?B?eFVjb3NjWCtqbmd1aGRpV1NVVVcvZmtqUEkrbFJlclFhS010aDlQeTV5aGZh?=
 =?utf-8?B?V0U2SW45NTJlSEFxWTlWZERrVkJ0RmxKbVovRmZxU2dIUWhEVlNpTlliVlhE?=
 =?utf-8?B?VitMNzlYZXBhZGFKalZnOTgrWXplL01nTVYzdU1JTUFzekhxQ2o0d1dYUksw?=
 =?utf-8?B?dEF5TkxGdGpncUhVSHVxcU5FTkRWRWJzNnFSQ1MwV0VFcjlPNUtpOERBS3hR?=
 =?utf-8?B?MmExN3d6NWlxSXM1aEtUcDNtT0lOVXVKUDFxL3VVTzVuekQvR0RuTHg4VTJl?=
 =?utf-8?B?RUV1LzlDKzJ1bGdNTm5pREF0WEk1a0lBb3Q2bTZNSzZvbTMxQnIvTTdIK2Nl?=
 =?utf-8?B?UTFBbzdyanZ0b2d6cTRLcGJXNzM4UjJndWI1T2pTSVVEcHhBUXpac3EwYms5?=
 =?utf-8?B?cGRvTHJIdTJ4VjRMN1lQdDU2OGF4T0ZDamRWVTlUNitualpFRFJQa0tQRmps?=
 =?utf-8?B?Zlg1MGIwTCtvOWIvRHp4cFlhQWhDUEVRVjArbGg3a3B4VmNqNHdZM0Y5ejd1?=
 =?utf-8?B?RzdrVWhHK2pESjZ0aVNoQlc5azBhd3R1Qmg3NmpWeUc2ZDlRdldYa0ZzaXR3?=
 =?utf-8?B?YkZUcU05Ry94U3N5Ukwxb2lCdzNZQzNWSDlwV3V6ZmlUbFJ1dUw3a0xtd2NZ?=
 =?utf-8?B?Q1lsaDNnajM0YUNoYVNIWjlEQ2M5c2M4cEpqb0FsR2VzNi82QTI2YzJvK2hP?=
 =?utf-8?B?WmFoMExENlJlb1VWNFdjWDgwT3dsSkFwRWVrSTN0RUFXcU9wT3hlaFZVTEcz?=
 =?utf-8?B?a2szMEJpb2ZwNzh2c01ScFlsUG02Vnp5aTExLzJrenMvbDE4dE5mWlVPVWd0?=
 =?utf-8?B?WGN5N0g5N1lkZG9qdzdJSlZwM3NoNlFvVCszbzVwL1JzN1pTL1huQ01uTEpI?=
 =?utf-8?B?WVZldVRXbDM3NVNSNFpreGZZR0xDRjA2b0VZQlJhWlJNU1FJWDRHRndBTVVl?=
 =?utf-8?B?UXlOMUNJaCtYYjc4ZEg2MXFsVXBlMkFmWldXV0piWXo4Q2ZPU2N3VUxGRjNx?=
 =?utf-8?B?Y29NckdwWW1BSjltZlBWenhYbkZibWwxSjhRdnhRdDFpanAxVHBka1JCNkJr?=
 =?utf-8?B?ajFzZWFjcWNTd0twRVRRcUh2SHc5Q2JOOVdRUFh4Zk1MYVhxaWNiN0FFOUE0?=
 =?utf-8?B?Nyt5ZTJCd0o1UCtraWxBSDBGNEpmS2w1azVJbTFmclR2L2pvYmRnODhRSTQ3?=
 =?utf-8?B?bkdRcUJjWm42VnhsSUdrczRNSXhWQ1BldTR5V2RYKzNNZFVQT0srK25QVlJX?=
 =?utf-8?B?eUlmaCtzRjlJWlNzRkJsWmFjU3pCTWZGZ1kvbjg4V0V5UUJvdWtCb1dRWmZw?=
 =?utf-8?B?aEJOY08yRkRMVmdsVms1VCtzTEFScFpLR1dBZ01PbjBqZ1V0QzBySC9JcmFN?=
 =?utf-8?B?ODE3TU5VMk9SYzVKdXJJVWU3TmNTdUl2aHY2b1I4eHF1MlNVb21hSzhRc3RG?=
 =?utf-8?B?OG9UbTgvS1p5SmI4SFhsWGtyNnN3MmVxdFhxenUyVnNzN2NxRXZFcUliRkNZ?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 796ecf17-5e5e-47a9-45ac-08da6f4f7352
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 21:40:25.6092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: brEWgeFVjJj4DpY0v8SSj9vh4F09/qLi7bR7YPlBY7VcHiCRLBv03rXY5bAsFFvLmkFVQon3wS3cxFNXVUiip4hevscmXYZO6Y4iYgmcBh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658871744; x=1690407744;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VIE/Rl/1lp+4jtRPlqya6sMpK21lmTffUNHoPZKvzlY=;
 b=GmSZ7LJjap+NwNn3yGe0qX2lTa4FE9EdRTgf9TAYvU07v7+9JwANLBpD
 m9H19BDFDOu2b7ANdU08vwW4GRiZVVUI+p8E/pJ4XcCEp2KiyqGuuNIga
 ai9lHDYPYz1UsuUAOiIHGBbHrIdkk1PlqGgGndvZwBMiyg+5+yEEWXY21
 yTiAexEJH2ws3bTleSr8p7kdRjYMNEvxV3mCuoOa8TywZVAf81u9vlb+3
 GER4VGuLfpF5tsGCHn3/ZibPPNC5g2a/lau4/DfFiFXy/Rx77Jxe9kbz4
 gKSxLv4yzMMt4DmpXujudCV+QuX40M3zo6qsHDzDA03+LsbLzd7Tte6oM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GmSZ7LJj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ice: Implement
 control of FCS/CRC stripping
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/25/2022 12:02 AM, Anatolii Gerasymenko wrote:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver can allow the user to configure whether the CRC aka the FCS
> (Frame Check Sequence) is DMA'd to the host as part of the receive
> buffer.  The driver usually wants this feature disabled so that the
> hardware checks the FCS and strips it in order to save PCI bandwidth.
> 
> Control the reception of FCS to the host using the command:
> ethtool -K eth0 rx-fcs <on|off>
> 
> The default shown in ethtool -k eth0 | grep fcs; should be "off", as the
> hardware will drop any frame with a bad checksum, and DMA of the
> checksum is useless overhead especially for small packets.
> 
> Testing Hints:
> test the FCS/CRC arrives with received packets using
> tcpdump -nnpi eth0 -xxxx
> and it should show crc data as the last 4 bytes of the packet. Can also
> use wireshark to turn on CRC checking and check the data is correct.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-Developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Co-Developed-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Co-Developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>

WARNING: 'Co-developed-by:' is the preferred signature form
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
