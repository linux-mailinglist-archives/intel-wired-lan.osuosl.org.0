Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5C55F6D75
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 20:25:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C10E940146;
	Thu,  6 Oct 2022 18:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C10E940146
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665080746;
	bh=E2CYVtH5Mqjhz+xL1CCUk3JWZQTw5PKDR8E6BPRC5u8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YH5+kjun7GYSXx3ThH4LsKaxLbBQHpEbO6h3De6DJkdpeJKxa5bTk145j83ZDHqhy
	 AXIjzZAd+Nge3iecthEHRcDxPhfVTlOH6SdFK7BCf4u2tv6Uaph+MAEIOwL7PsxoqP
	 BB2n0BrzKD7aRwgQKQfj7navGfCAr4rb+keoeEzS6kr2Vd+MCCk7ihx7k/HP3e5dbV
	 fKkINr4vzNnYVNwrSjnGj5LTLZQMNQPAmaRpj1ssKOO2FL6XGdvB79im05XqixNxfQ
	 lL/XpEcfhlO8jpQQc5maL7Bwk/+3ynG0WRbOroIpOXFSXmXIceKW3rJEr6o67z3evx
	 pZfpoH6yuxDzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rg4r94A2D6cM; Thu,  6 Oct 2022 18:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18DFA40514;
	Thu,  6 Oct 2022 18:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18DFA40514
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A19A01BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 18:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A5D583F4A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 18:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A5D583F4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fl9O4-hgS891 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 18:25:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BA7783F38
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BA7783F38
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 18:25:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="365471781"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="365471781"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 11:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="713950950"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="713950950"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Oct 2022 11:24:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 11:24:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 11:24:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 6 Oct 2022 11:24:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 6 Oct 2022 11:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9qxjleOyTWPiHpQPQ33fz4wVj0QHQsG4QkaMfaMpRmPNBMNWkQdGG9EiRJGXD2pGiHLXeEVZq/16mZ0MWHnvkQZN2YdBrwfOJzY5iAXt7g9STa2cdViJGOuzwOyIx6dGkvJgYTij0a6TRr1OyubasYeAl+rxyCnx7SkpNhNsh4wVJRtVUgb7Y3ZlVuUM6T0Uhc8cS86n0PSVcj+/x/YZ+JMV4p/FFvRG+/vyEBa76sjj+MTsxg5KbT1Fc9W+Zx78PqjxOHmoxWpIPArToPYBC7mHKCpNIpHhl8hIorgKhkw1wu9U25vjALGEPoAQN4nIa7sEZUOjwGp7eCWxpS0jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ly7st/kJGBe//lMLWYS+Ijc41i+g6WvI6QVltrEkmWA=;
 b=EQi2Kiqj0OxqPpLZXgIF4mnANJtOllMGDhsvURiWU6ZNkDrDFRiX8fCuA0kAEIOy/fF3lmpRdX0whLgxsrtW3ZaZqhI/YIdKn8dOsP35F+GZAgfkLuRsDcmDEnNPrKnpgpQuYuCjStsCrq40qAKJWlx5UzIlul+UOODt6MCZ3QKxdyT1Ti3IEDHaqR32qerIzEN//Eak9FARJtdnWLAhRhaVRARtFPOtZTn9tw8uW64M0LaFhjUWJm2WQ2WN2NynADeJxDHKevYtG9l7ePY4QwvezncoobxllAMxwbyCDZ8/FA2gwqcHWWnjGz6loiBJywsx1GHyUofSavOC0XLauA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by PH7PR11MB5819.namprd11.prod.outlook.com (2603:10b6:510:13b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Thu, 6 Oct
 2022 18:24:54 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::3c2c:3cf4:c1c3:24e4]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::3c2c:3cf4:c1c3:24e4%4]) with mapi id 15.20.5676.032; Thu, 6 Oct 2022
 18:24:54 +0000
Message-ID: <8c601e95-27b4-cfd9-ef8b-40cbfeaf913d@intel.com>
Date: Thu, 6 Oct 2022 11:24:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
References: <20221006130948.16053-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221006130948.16053-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: BY3PR05CA0052.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::27) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:EE_|PH7PR11MB5819:EE_
X-MS-Office365-Filtering-Correlation-Id: 46aca655-2d4a-4c50-d12d-08daa7c81089
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dt2mbSmnHTqw/agOMxLp3flxBt8RP7zWvbPm6fIuARTMU/5qSeAigLypeJCIyZdBj6JEhtLhqJPvnrnRPT9hPy+cVI8OsYBjdsb3w6g/SWPZgRF+JmA36JXGFaKSfY+qIee+tjzUh7MgAWuDy5TIqw+3aaF4Lbar+nDN2F9zNJxVARVOSkOiQZTZftWW2Psf195ecUyRmvLKWKCOyEQT3Wgbm2JAGlXuW9qmX/OMG/JlUK9pvEip1/2vAflzLW+s7uPOx4dIFpDZG9yqzv5DptMOoc/Ehv3CGktyZtu9OmSYk/5vgC1OZWjUSdt82+9dRi2lM5zvR7cPfkNoMgOtLfAlRUhNchzCUe8rdddX0hN2LSZsBmJ5/tYXhDDiittkPiK/GRqjwCGG3cqMHAI+cXFC+UcQ1g0qWhVqTdzrjKS7jYqJl7CFxNlxenNCzyKrQHjZKodDVa/De606+0gVR6aDTMG6kO4jWv0omeqRKEf3GFj6unWQxMpgqOmkwKVTPq5ML+Qa2P1Cc004a9J+E4O8FiNfg6HIfLg+tIvQg0+tDsQIsi9HMrZ0VgEx529LbvskWvDxra+slUlYZfW1/yvvVSqsmTE4Od3LeURNZMTa38m/9DtpkLluszYlQniUUuzc4lOhnF/n/EOPptOlfquy6tMwJBJIO8CKd3Swzt3LBeZCXJvN3mdCsRVOiiE2n+QzaGs7RXpHtQLkIUM+ciRfo7w7oO/CFZeroepstCoWspREo91GZHZKe6bp5onYYjmqwUb8wNltg2G8fVWEyGhgUNzoGyXdKJ1fAKbKyuGP3e0pcffdz4gszkfjWYoE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199015)(83380400001)(5660300002)(31686004)(86362001)(6512007)(2616005)(26005)(6636002)(6486002)(966005)(36756003)(82960400001)(53546011)(66476007)(6506007)(316002)(66946007)(66556008)(31696002)(8676002)(186003)(2906002)(8936002)(41300700001)(38100700002)(478600001)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEw5REZFeXNreW0ydEtNVlU0NnRITkc3TGwxVXZOK2dvNVBLa3VxTXQySG15?=
 =?utf-8?B?bmxaRGJ3NnVjYk5YLzNjRmhzQXJVZVFHQm1RSUFTdG5NeVZmTGlsOVd4d1FG?=
 =?utf-8?B?bDJjd3RsQzdXMnhrQlZqeUo5SHlRRzBleVNGQ0FteEV0TENwRTVyVkwrVzlE?=
 =?utf-8?B?WEdjUmlTRFo3QkJZU3psakUzSnE0WmlrRXNaOXFyNnZhOHByb3VSN0trMzhH?=
 =?utf-8?B?WnpYUEpacFNhWHBQZ0M5d0JlY2JkRERkbnk0bkMwVENaQ0lUNnY3L081WDBl?=
 =?utf-8?B?OGE1aEVoMkRHa1BURW5EdzQyOEpvRE56MkZMQ0tGNDZLOVlMWDNNc0ZRVndo?=
 =?utf-8?B?aG1LOWFnNEF5M0Vmd0lpdWhGbHhBUzRsWWt2UEN6OGZUVFBwNDZ2VGdrRWs4?=
 =?utf-8?B?L3ljOGpaVHNmekVQaWtTY2lHZVBOMW9NMXFWbVVEY0dhNnBPWU5WeXNRM3M5?=
 =?utf-8?B?KzlOR0h6aXpxdmJJM0VnOVBGUTJZUWs4SmcvRENzSTh5RW1jTHQvbkFDbWZB?=
 =?utf-8?B?RVpOVGFKRlJXdWJma0VWa3R5OWpiZXVQY2JNNEk2Y0F5WWJqQVFLYitNYk9H?=
 =?utf-8?B?WkJGSjlTS20xa01sb2p3eHlQUjBYMHdaZS9nQ1NtOEpzNjl1UnFtbEZaSERR?=
 =?utf-8?B?QlArU0tuTUJoSWlkS1I0TFFheFpUc3dmK1dWWmFJT04wVDMrOC9ESU5LQU5h?=
 =?utf-8?B?dnFBcFRURXRGTUUxalY0WWVLU3NlZG8vUGovMlBxbHFTWDBlK2VJbDQ1dE1u?=
 =?utf-8?B?SUIzN0NJeVZib09OY0NmekxibU0vY1YzK1hkT0lkRkhZSDRFcmp0d0pPU2xv?=
 =?utf-8?B?ajZuaVltUDFZYU43eU00YkJ2Yy9YbUJWK0dsNEtKSEtiTXNrSmxhZHVrOWlm?=
 =?utf-8?B?NVBtUXdVSHZUTVBTeVlFelFSdEhITW9hR3IzTE0wOFNVek0yTWNHT3J1MTY3?=
 =?utf-8?B?ejY0dTNWdXlNTkROdUFBNytlVVNINTZwY3lHbjRqbzFTeHBCRUJrZ0FBc0Iy?=
 =?utf-8?B?aUVOVzZqYXZOR0k5VmxkSDF4NTFxemdoUkNFV0oxb3V1MzlyMTRtMXpCY2ZI?=
 =?utf-8?B?Z0JaMW9ITUxCdHd2dEJpdS9tY3h3Q0hIVUNGYm1kd1hNOTU2ZjNoTWxTRkVN?=
 =?utf-8?B?OTNYZFNuZEdQV29Gd2JvMEtDWitqSXBRNS9HS2lRSTFZM0dBMDZNdkNsY3k0?=
 =?utf-8?B?Y2g4VGVnV24xNElyZ0JFaTFkVHRjT0dEdWRLWmdUbGc5eUd5dDFNeVlqQWo5?=
 =?utf-8?B?K0RBMVFDRVA4dVJCV1czTDhrU3h3ekN1am1WdFJFWUFPbWd3M2ZyZDRJOEN6?=
 =?utf-8?B?dUF3SzJMUFFBTzhuc2MrcW1wdjZNSDBsSjlKM25LdnFHb3V6RVdaSHkvdm5V?=
 =?utf-8?B?ZFlmL2lxZjdrRGJ5RVZ6UG1mWkJvZXQyV0pQV2pVajhCc0srVzdTUkVXQTlv?=
 =?utf-8?B?ajd5SGZCRHdnYStoa3gwZHpSYXBLZ3FaVUt1Qm5qL0k3RWpkU2pWdXIxTGxE?=
 =?utf-8?B?a2NxVFBrcjh5by9qNkFpV3pwSUM4U1ZlUjhLcTU2VkdhVVVLa1hqenNYbFJm?=
 =?utf-8?B?cEdiTVJldElSYSs0QXRzSUdwSmpPenJSdlZxVzFFdG1QUWFMblhWM0t3a3hN?=
 =?utf-8?B?SnRPZ1lFcXl2dHg5RVFDYmlzQTRCTzJWM2RFUnFNWmZkbkQ3T01YUmZmU1Nr?=
 =?utf-8?B?dlg0dzZVbS9DUWhCUkFqdVlMZldHWjc1c3NSeE9xbEltL240TmZEajZsdzFt?=
 =?utf-8?B?QVlxYzdIU0ZFSE4yVGVKWStRekoxTUhBQWpHQ1JRTmsrejRUelFBWSs0eDBy?=
 =?utf-8?B?OEtzRVVjUDUrRWVGVmRuQWRac1FuMEVQcU9lY0tkcG83K0pjejVBdmNwUExG?=
 =?utf-8?B?cURxcDVPY0RKWjY2bXl1WXZjRTZINW83SjRIeHd2MzV3M1pmRkliK1ppeDhj?=
 =?utf-8?B?R2pXcmtaWXBqTmV5cUZWSDBmQVJob0kyTW1kckp0Z2UyYVhpWjBETVV6clF6?=
 =?utf-8?B?K2JQaXRBOGhpNVNwdXh0VjhzL3BWcTIzUkpjUTY1UzFlVG5GUkdpOURhS25I?=
 =?utf-8?B?UlYyR1o3YzF4S2lhSmFiVmNDWnVJUis2QVppd3NlQjhmdlRWSllQSUxFR3hz?=
 =?utf-8?B?UUtuTmhuaXlZajY5R1gvRk1MK29pYnl1M29oQzl4MTVtdGNMVmJVYzh6dUFm?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46aca655-2d4a-4c50-d12d-08daa7c81089
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 18:24:54.0674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNg8y6r14p6ODZwdJyWo9+Vhuizp/F6BD7vsuXiYvRMAFo8CSrNloRNEiFelZxloN2l/9FNvjQ8Jd+PMPcSaj2dS2v7xGE6WGaJfIeZ654Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5819
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665080739; x=1696616739;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=48fwH5nirlB+4S/dzonqrI2/arfYSLzrK3TmM/hmiSQ=;
 b=gefCNR6/SBtIdkd24smS3bfhix2TZLUB0G7DeAS4rSxCR+EiXx0W3Ht6
 dUomZM7mJ37sbHQp1YokYkX/shpgF8d+/L7UDTgsYhv9XOJ0nyO+C7T00
 asSGwaaXLTEGTTkPVF+jIDoiJqnlRNRGgdzroRvYo6tLFj0HqhVmCo5m2
 wAqz7TKqhbHuZGBK333R3bksuZM4pGdEAMc25/DhoLzoD4kDevAGkK9Dn
 WXgdB41RxxMbMq6WKtPbte0/OnsZXn2KvqWLedne7XWpanwQAqwHyJl9B
 sX/uju4n42fr1Xypr+hmtbuguQLYHOB2DSXN/aSe6iF6d2iaABglA9BHJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gefCNR6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5] i40e: Fix DMA mappings leak
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add Maciej...

However, you should first give responses to the previous patch [1] 
instead of sending a new version without acknowledging any feedback on 
the other patch (and not including the person(s) asking questions on the 
updated version)

[1] https://lore.kernel.org/netdev/YzV9gXMMPMjmQWDE@boxer/

On 10/6/2022 6:09 AM, Jan Sokolowski wrote:
> During reallocation of RX buffers, new DMA mappings are created for
> those buffers. New buffers with different RX ring count should
> substitute older ones, but those buffers were freed in
> i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
> thus kfree on rx_bi caused leak of already mapped DMA.
> 
> Reallocate ZC with rx_bi_zc struct, when BPF program loads. Reallocate
> back to rx_bi, when BPF program unloads.
> 
> If BPF program is loaded/unloaded and XSK pools are created, reallocate
> RX queues accordingly in XSP_SETUP_XSK_POOL handler.
> 
> steps for reproduction:
> while :
> do
> for ((i=0; i<=8160; i=i+32))
> do
> ethtool -G enp130s0f0 rx $i tx $i
> sleep 0.5
> ethtool -g enp130s0f0
> done
> done
> 
> Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP rings")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: Fixed improper kerneldoc that resulted in a warning
> v3: Applied commit msg fixes reported during a review
> v4: Applied i40e_xsk.c fixes reported during a review
> v5: applied commit message and general fixes reported by
> Maciej Fijalkowski's review.
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 13 ++--
>   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 67 ++++++++++++++++---
>   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
>   6 files changed, 73 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index ae51901e671d..4a6a6e48c615 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device *netdev,
>   			 */
>   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
>   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> -			if (err)
> -				goto rx_unwind;
> -			err = i40e_alloc_rx_bi(&rx_rings[i]);
>   			if (err)
>   				goto rx_unwind;
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6ecb6013d97d..cbe2e0592519 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3566,12 +3566,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   	if (ring->vsi->type == I40E_VSI_MAIN)
>   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
>   
> -	kfree(ring->rx_bi);
>   	ring->xsk_pool = i40e_xsk_pool(ring);
>   	if (ring->xsk_pool) {
> -		ret = i40e_alloc_rx_bi_zc(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len =
>   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
>   		/* For AF_XDP ZC, we disallow packets to span on
> @@ -3589,9 +3585,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
>   			 ring->queue_index);
>   
>   	} else {
> -		ret = i40e_alloc_rx_bi(ring);
> -		if (ret)
> -			return ret;
>   		ring->rx_buf_len = vsi->rx_buf_len;
>   		if (ring->vsi->type == I40E_VSI_MAIN) {
>   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -13405,6 +13398,13 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>   		i40e_reset_and_rebuild(pf, true, true);
>   	}
>   
> +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> +		if (i40e_realloc_rx_bi_zc(vsi, true))
> +			return -ENOMEM;
> +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> +		if (i40e_realloc_rx_bi_zc(vsi, false))
> +			return -ENOMEM;
> +
>   	for (i = 0; i < vsi->num_queue_pairs; i++)
>   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
>   
> @@ -13637,6 +13637,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int queue_pair)
>   
>   	i40e_queue_pair_disable_irq(vsi, queue_pair);
>   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
> +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
>   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
>   	i40e_queue_pair_clean_rings(vsi, queue_pair);
>   	i40e_queue_pair_reset_stats(vsi, queue_pair);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index 69e67eb6aea7..b97c95f89fa0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
>   	return -ENOMEM;
>   }
>   
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> -
> -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> -}
> -
>   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
> @@ -1593,6 +1585,11 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
>   
>   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
>   
> +	rx_ring->rx_bi =
> +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);
> +	if (!rx_ring->rx_bi)
> +		return -ENOMEM;
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> index 41f86e9535a0..768290dc6f48 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size);
>   bool __i40e_chk_linearize(struct sk_buff *skb);
>   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>   		  u32 flags);
> -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
>   
>   /**
>    * i40e_get_head - Retrieve head from head writeback
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 6d4009e0cbd6..cd7b52fb6b46 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -10,14 +10,6 @@
>   #include "i40e_txrx_common.h"
>   #include "i40e_xsk.h"
>   
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
> -{
> -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> -
> -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> -}
> -
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
>   {
>   	memset(rx_ring->rx_bi_zc, 0,
> @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring *rx_ring, u32 idx)
>   	return &rx_ring->rx_bi_zc[idx];
>   }
>   
> +/**
> + * i40e_realloc_rx_xdp_bi - reallocate SW ring for either XSK or normal buffer
> + * @rx_ring: Current rx ring
> + * @pool_present: is pool for XSK present
> + *
> + * Try allocating memory and return ENOMEM, if failed to allocate.
> + * If allocation was successful, substitute buffer with allocated one.
> + * Returns 0 on success, negative on failure
> + */
> +static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
> +{
> +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> +					  sizeof(*rx_ring->rx_bi);
> +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
> +
> +	if (!sw_ring)
> +		return -ENOMEM;
> +
> +	if (pool_present) {
> +		kfree(rx_ring->rx_bi);
> +		rx_ring->rx_bi = NULL;
> +		rx_ring->rx_bi_zc = sw_ring;
> +	} else {
> +		kfree(rx_ring->rx_bi_zc);
> +		rx_ring->rx_bi_zc = NULL;
> +		rx_ring->rx_bi = sw_ring;
> +	}
> +	return 0;
> +}
> +
> +/**
> + * i40e_realloc_rx_bi_zc - reallocate rx SW rings
> + * @vsi: Current VSI
> + * @zc: is zero copy set
> + *
> + * Reallocate buffer for rx_rings that might be used by XSK.
> + * XDP requires more memory, than rx_buf provides.
> + * Returns 0 on success, negative on failure
> + */
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
> +{
> +	struct i40e_ring *rx_ring;
> +	unsigned long q;
> +
> +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> +		rx_ring = vsi->rx_rings[q];
> +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> +			return -ENOMEM;
> +	}
> +	return 0;
> +}
> +
>   /**
>    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
>    * certain ring/qid
> @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>   		if (err)
>   			return err;
>   
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> +		if (err)
> +			return err;
> +
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> @@ -113,6 +161,9 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
>   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
>   
>   	if (if_running) {
> +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> +		if (err)
> +			return err;
>   		err = i40e_queue_pair_enable(vsi, qid);
>   		if (err)
>   			return err;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index bb962987f300..821df248f8be 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>   
>   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
>   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
>   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
>   
>   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
