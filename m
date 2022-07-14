Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D24E575662
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 22:34:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E1FC42453;
	Thu, 14 Jul 2022 20:34:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E1FC42453
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657830842;
	bh=9O7i3RAAdUWUE6i0k2cLsGcVdk5rHqSkRaBbLTX7QRk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjQVkmF9j0Ijyx+Z4wzAX7ROIsG1o2FA+KydY02wR85+24+7yS7bgSD8In0DMIG3v
	 XSPY7LbyJvHG4X8dxxaQeZEXl0DIBHJOzQb+fbbrDTlw05TKOvNcXVjU0Stg3icK8X
	 5FO5psa8pIXBFaiBVRb2n+KL3U5tMvqxxplntI/kZcNeB5qbvOKWnywKIBpSYJ8oBv
	 QxlBNWlWY8BmnOGz9qqi4C8L3uL9SeEq+Sglqgb3yz/7J8F5xUNN6Uru7gaSUbodOa
	 2tyRIrvke4t3yr/8dpk6fvdty3v6PD+aq402BslBCvYpbdgGoUmP2DUpLgxnpYfvgF
	 D7nS+fUIDYJtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id waV5SAU_umYb; Thu, 14 Jul 2022 20:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6C84423C4;
	Thu, 14 Jul 2022 20:34:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6C84423C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67C091BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EADE4063C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EADE4063C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhHjBcxG4_lk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 20:33:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93E7A405DD
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93E7A405DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:33:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="283181474"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="283181474"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 13:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="571245076"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 14 Jul 2022 13:33:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 13:33:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 13:33:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 13:33:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtIsLFQBclYch5h6jVE/fS688Zl+fNZrcwNn4js9GjGx5AR+4WAl6zOA+zBpYbjVccPi7sF90nXFfhsBJJCnMwybtdEWY16ahUkRrMEyZaVov9+mvEHUzoI8tgAMuUHZwpz9+5yMBRU8g8HfEsRP4TfVQT68jAWXjyYgjpLUw1Jx1HozBFS3tZN8d0dhzwhoUraNncp0s/6ZFAbSBwrJ0AGJ2NvDQnUd0n/c4lxrTdRdIJsQmS4KAlba6y8kc8RiIJ4eq+pFmBqf0M1G9Jn1xftz2XLpeVGkyD6wg5BdbQ2sbLBDr/0j0g/mQHs6/giFT9Z+TTlCN50vcujHdTmYNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9XMSFCX2zsjtaS7HMsQrryHL+OvSk9kmzSIulRtzgNg=;
 b=SJcZuiVprqwC98+fmSTW9FN7rbR4sH2G/yf7+MiozMme6rCLw57npkR5ca3wcWgiHRYPsP1P3YWzwKlEXUz6os8955GMlP35ckhAdvMgPDAn3E8kH2L648ZVXi6RiYC3Dg7N53BqQLQRFQKsw2jeb1tttobpf20KiUgVpkzesNvC+asYWjy501Dv3RViv8wv5TtsLzFMHj31yuj51HVrKk6IaQmFACu8FR9gs4q7+sgtMeh7DSk4+5zfp+1hmZDeXogGP2+PlzliiTT4hMjSYupjxwOIjyn+rhmxuElLN0QBvjD8AHHFOKnDaGO1fX+twskB4O9oV35dMp6ycUT2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB2539.namprd11.prod.outlook.com (2603:10b6:5:bf::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Thu, 14 Jul
 2022 20:33:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 20:33:51 +0000
Message-ID: <bbcc1814-38e3-eba2-b65c-dab4ac7cecda@intel.com>
Date: Thu, 14 Jul 2022 13:33:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220714135107.46473-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220714135107.46473-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0179.namprd05.prod.outlook.com
 (2603:10b6:a03:339::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 879bc00c-dcc2-48d6-f0df-08da65d8293f
X-MS-TrafficTypeDiagnostic: DM6PR11MB2539:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wYRjKM8jLG45vMb0f7VaqBA8ovYFljTegWLB+adiDmOFVjQHAtqdBfGN3QojyDE4ZjjM6K3Hwv3S6bI/nB5FiaGysujajdsiJCCzv6Ddb7VTZm5eNOwL3+CA6d5SZErs0xiNBP9Xo3AcZ0F94wnpftswhmRtu9eXXC8wu+R93km6b0dc7RQS7Dibu1fxkHxdKel8Lqpr2tSsCYp6HgWRdeU7CWX/TIw80cdeUkERajPnUtxuhQnjXYisN3K7Qof7f2MlszECuBWXvCmhYDeZjv6ZpJORXafh7i29rPYWKjO3pYkmxC5ZbQ65OA4bC5ukdM8xnKX1dBswfV0pT2eKgAOPUtz+XJ2rAy+yJlbG6Wf+OTRGo4KWa1I2C5l+woR02xkjLHpqQkQQ+FAr+iPR7b/Uo2smHTCkfR9Wi65KUpoyHGYtUS0bAAY/V6UW1Gfg9vwz5/Yt5gP+T/yQOnL2qvC4GV4IyIqYS1bu757VSbYGnjQ2no+J0c0XA5ZuUx6vrXodn2UXqVGtyS33xTdr44skreJEblq77yW2tas+ahyhDd5Y7hwqboDzca31OzmlFjGIq4SoWMpNMeK4x927rhvFb7qR/VnikV0I81IVVHvkLke4iAdxmCTkBtl0eN0I8706M/vZUC97y4Q37xvikD3Ig/g8U7/swki50w2T+pbGeUt6l6y4nZUQzk+i3lGN0Cs2b8UBQWZuWjFx9xzudtCn1S8m7ZNDgzl80ofEphz+GefrttwszQ8dSQKWqaC3PzoU57GjtypSf/l/e/VloNoOXn8+a67lA1IROD6XeTJCl0Iz4FXsxNAQ0MQCvQ2kMHC+Adlt0Vp1u50jrABBpqxRwAXuCpFG9SAYSC7zq34=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(136003)(376002)(346002)(366004)(38100700002)(82960400001)(478600001)(6486002)(36756003)(53546011)(6666004)(6506007)(41300700001)(26005)(186003)(6512007)(31686004)(66556008)(316002)(66946007)(66476007)(107886003)(2616005)(8676002)(8936002)(4326008)(2906002)(4744005)(5660300002)(83380400001)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTZhY0Z3ekgvcEdrWUZyRWRpMDBhdHZGS0JlWDIxczNqZzhYRW84WXVQb2J5?=
 =?utf-8?B?L0h2SG45Q3hUekV4cFYrMkNtd0hrN0NOWXZ1WEdWSDZ2S0pweUZzTmVVbGJj?=
 =?utf-8?B?eXJLSEtodFdpV2wxTWlMajNQUDJnY0R5cmFZajhMazM1UUl5N0VLaTNvbWFU?=
 =?utf-8?B?Z2hub2dGOENoNDJPM3JCQytCOXMvb1pka003cEVPbEJtSGRmTG1pSVZkS3Ay?=
 =?utf-8?B?L0NNOUZNWlZ4S0NkbFQxaW1tMEl4eDZSRWhia2w5YTJKem9OWGpqOWRtOHVq?=
 =?utf-8?B?NFREaE1qOW1xakU0bnFHbXdNU1RLWEJSNjVpWWl6MGVQMkVtUDROSytNT0h3?=
 =?utf-8?B?NVBlQTRCNUhoMExhclFLVHVvOUpqOUZIY1paVjE5YjJKSlhTWXBwdlFHYkJo?=
 =?utf-8?B?UEZFNno1R3krdEdoWjUwUWliUUFCVEgvc3VVSVNNV2M4R3lZQVM5QUpEb05D?=
 =?utf-8?B?elJaWkYzTHVnT2pCSTJib0RJamlyaTVwMXNVcGkvSnRUU2NySlBEQTlYSlY0?=
 =?utf-8?B?UER3U1J3NWozT1loYUozL0d0LzZUQmNMdWRwQlNza0JWaUdRdExQaHc1bFQr?=
 =?utf-8?B?bkxGRVZuREE0VGdiYWRMWXRKSGtHbS9VOW1KRUkxaTZmNS80cExnVXRtV3NZ?=
 =?utf-8?B?N0VNRFZIdndIdTE5OVY4RTc3YnpWVTViVHhzbkFUTEpkVThRTXpxRTBkNktK?=
 =?utf-8?B?QVNUbnY5UzA2elE4dTJHZER5ZHBlSkd0UlZoLzhYd0JFN0ZYbDVWL1hoVHN4?=
 =?utf-8?B?Vi85VFV3dUtvck13Qm45NWZNdHpUcHprMFpoaXlpbWVrWGFkYmNXWU9yQllt?=
 =?utf-8?B?UlF0ME9YSzNGSU1Ta3JSVmlEZGZCbkw2TkZNTFY3U0FqTHBhL0Nhd0k1c0FQ?=
 =?utf-8?B?YUF3UTc4RkJjbVVrVTVtQXFaRFpmMDlyS1RmZWVIRkhnclBkK0lZYXU3RzhM?=
 =?utf-8?B?cDZoVEo2ZUZNUmhjRVhxZ2psdldZUmNEL0ZxZWFVbWhyZEExbEx6RFdid2RE?=
 =?utf-8?B?T1VlTkY5d1JuWXFoR0ZNR0FRRGRFUU5qRDNTRzQxNXBkV2JNQWlSeElHUmpH?=
 =?utf-8?B?c1ZxUTFoZk1qaHlOUTNjSFNSSVpaVHBGRHVvSU9oYjNmaWtYMVZmN2VXWmlI?=
 =?utf-8?B?YzJ4dklYdzdQYzh0M2ZJc0FtcmJEbXZpOStQM3AyY0wwY0loRzdLMXhtMnl6?=
 =?utf-8?B?aDRhR2FRUVgwcmpHMDR6UlpZWXdKTVJmQzd6M1dsNHIrdmMwQ21aZmtWODR3?=
 =?utf-8?B?TUk2RUp0Y3JjWFBXcFBaK05udERobUNmLzR0a0dvLy9LOTcyS29TMFI3dmMy?=
 =?utf-8?B?RDNyeWdnT0ErVzRveElQVDBYVlVwZEhQak5LV09ZUjFTZFQ0NkxQSm1NNHlD?=
 =?utf-8?B?RVVDWEtlVXVUcWF3ajRKSE9yaFBvMUZGMjE3WmxBbTZlZERHdFFFMVhWUmZR?=
 =?utf-8?B?V3V2V2pGQ0dUb09uZ2haYVRITmxmRW1KRDFESUpCczVKaGNCb2xDU2x5ZTdx?=
 =?utf-8?B?Y2tRaGRBVnpTSTFrdktob3pVRllCUFd4b3VGYUtXYTN1UW5UYUp3MlMycDdl?=
 =?utf-8?B?a1BpZDV0SUk0OENBeHRpa2NYc0VMcldBSkc0dk5TQmNRN3F3NzV6MlRPMmpu?=
 =?utf-8?B?YnRsdWkrUFFkR1RJQVFqVnNHMzdsNE9LaWJRV2NmeFF4WjN2bmd1dTgyVWtw?=
 =?utf-8?B?QVg5RDRBNktGeFhLcXo4NFNMVmlBdXpiQWhJS2xqaGEwMHpCRXZvK2JaNkVj?=
 =?utf-8?B?VEhHMHlEN1QyY05UU1lqYWFnekxhaUI0akZpNTgwMnYxKzFsYTlRQnJ2VFhO?=
 =?utf-8?B?L2IrZE5FRHdwMm1EWjRobHAzVW10U0h5RndacmptRGdWb1BLRWFRV3BCVzhY?=
 =?utf-8?B?dERBa0RqWjF5dFlkT2hoNkdJa3EyN3NZMm1TYzYzM05JSzNnWWw2SjJtMkRU?=
 =?utf-8?B?b2xJcEtNWTRmcjdMbm43aEsyVWV2c3RoVDhTU081RytRdTFJMFNGYWluYnJ5?=
 =?utf-8?B?RlNNWUNsNmlhTUp3MzYyVWxKMWtVN2pwKzlJd1laUG1hRy9YejlVTEhIUytO?=
 =?utf-8?B?NEtiK25UaHZ1NWNhN0JjQURQcDdTdm4yQlNLOEIzQkpaZitkaEhaSjl1Yk4x?=
 =?utf-8?B?c3JTNnBjWmF5d25jdFE2NXQxalMvSFJwVFlTRG1TbWdEMjc0QmVzMHRkR3BR?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 879bc00c-dcc2-48d6-f0df-08da65d8293f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 20:33:51.1368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fJrx1kAjQssYIsdQBfwBr0GoLVYVz/KskrfPm+URCV/BASPYTp9TE5PFlXnl5jfPaEzKl5hvVpNkJyS7cpXLxbrVsSk7dBgXfmp6SBYD7+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657830834; x=1689366834;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t2T2apRRjl4RwdZQqab+jHz3+a/9H88K2Gvmo6Z00qg=;
 b=CF7dozwSSHAF4h6UQHW+oHeLB81Iid9Ofhsdl+ALRuXyXhajSu2CHIn9
 jGwPHsYuFh8Cke4fPWjvjM6CBQwJnYMk3I7vYgn6tFA1/F53QkIDfZ7jO
 w0sufdR7uvEr+tmIjP93ofU7aP4Yb3RwzdH50CiLxy8sZJWAZXLRYSEYI
 zELdYp00j9NT+oTrknuiC5hrE81ysQoYYfO53p4lA8DtB8Rb4zS2EHys2
 vPD2hNBcW7uunz36wplwiTijjL0ws+FGzYYilzglI5nU7q+TjQvyizWGa
 zW8bzdbVAw3ZhrSYVbO1+eTiP/5PGaIngYzVkmBWdXguyNQLm2cpGD0dI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CF7dozwS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2022 6:51 AM, Jedrzej Jagielski wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index f2a518a1fd94..bef7c3ba1a20 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -889,7 +889,8 @@ struct ice_hw {
>   	/* INTRL granularity in 1 us */
>   	u8 intrl_gran;
>   
> -	u8 ucast_shared;	/* true if VSIs can share unicast addr */
> +	/* true if VSIs can share unicast MAC addr */
> +	u8 umac_shared;

Same comment as v1. This doesn't look needed at all as it never changes; 
it could be removed and conditions updated.

>   #define ICE_PHY_PER_NAC		1
>   #define ICE_MAX_QUAD		2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
