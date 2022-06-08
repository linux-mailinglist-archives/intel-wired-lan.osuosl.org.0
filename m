Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BC4543FC0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 01:07:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D934760FBF;
	Wed,  8 Jun 2022 23:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQN6yoNqHB2Y; Wed,  8 Jun 2022 23:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC77360FDB;
	Wed,  8 Jun 2022 23:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FF621BF318
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4600141625
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgzKdWY7FsJE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 23:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E380415FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654729664; x=1686265664;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z0CDzXED5VMwu7RqRYlvjuIN+wCkLMoB/vjb2B9N4CU=;
 b=nYtIz7M2FmuvBAp2Wq4D3AMl6N2z3H9Wjj2Vb5dn4aY1BlSkHG9XODZg
 tNe8+OHVQ9iRkzFJppctG98g2mN2V7ORkwv8MM1sKEuPhdx0A5CZl0+3r
 Y8XQGiWMVCvzDcKfgpU82E0yD8BbpdHlIXYi6PDGRnJNeQTIHLUAnYgVD
 1V10JsRD0GdfzVHxFQAD606WiGK22+Qm8kWE11+NXUasVU8j3IxFFyfin
 mqBF0r9jcYRzkvGWqIkXZB/QTTJxl3mnROfJy1e/HgYAFtMcoKtMt0BD4
 h5cBOf8VkfWv8gEADOXzobYfxUfaDbp9Nr1oz4O8Ht5GDsFbUsCxb6GQI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="338854879"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="338854879"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 16:07:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="907947138"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2022 16:07:43 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 16:07:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 16:07:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 16:07:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhs3UlPy5McdbPSm+/ECChOkPwBfTDJucJ8tX/nHEZYzwqZzBWK1YRonb1bcjxhhPm12C3ri8DHOoCkmJsjsBz4te+h3n7l79Xgr8FVjE20CEOvZ+rB6HaK0qXDkPHBftWlV4c/CszVTj3kMNveKaR8v68tLJ2BYYPUuAN7BjIA/eH063EKAyovkRUJvDvP2bgr5tSGx4uF2PYH0DVexCwjuC2mcmbQscvJELdHak4ODlsMTD+02e7t2Pnr8kxnV8LL5OhnFN4X54jXWV14zH+JmT0nhoiVWwH7x9LImrZrHdTAn5CZJ2++eWoWupdaAMWFiMAKCQ9AwrwR/ED2NUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fHhDNZtJhGmdazgFeVBswhPqXTNw0WV9ECDcm+/hOXs=;
 b=P1yTDedrAKTHp3HlVkCYqzFmGqiw6tJpz+qHqjhNRvJ+FlbDJEi98s0Wi7fxQFxRq67qQK27ODcRpjcMSuZBmUbXqv9iW8ymReHq9xF+xT24eqr/ssLWs0pzU4CGHoFuWBpPzzbIKTxbJqNgyWbjMwmxyKIRQeqE92XwV2oiQ2CrxVe3Zyr0ORR2EqZWOVsktnoNaNpmsaprzcKEyRAbQOZ5kd9k4AlR6jIf3N73pMwGI5IfMwjq9gwzPjgioKWOKzo3I3t1jDleqMHeTXiI2m6ga4IXqeIr0yUd1M+y9FqR8fkbakv1nRF0v3qJg/JGP3C23sce1ESFcjXTaIf3gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BY5PR11MB4244.namprd11.prod.outlook.com (2603:10b6:a03:1bb::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 8 Jun
 2022 23:07:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 23:07:40 +0000
Message-ID: <f55fecae-fae5-f706-1a5f-9900a35442cd@intel.com>
Date: Wed, 8 Jun 2022 16:07:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220608091321.394492-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220608091321.394492-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: MWHPR2001CA0023.namprd20.prod.outlook.com
 (2603:10b6:301:15::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae3add1e-4b20-4499-5587-08da49a3af87
X-MS-TrafficTypeDiagnostic: BY5PR11MB4244:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB42445913CBDB811EEB25CC33C6A49@BY5PR11MB4244.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3D5lCA+VCqpRc1TVQw/QOeQ5JWjUo9j1I3UPW22vdpmkLhRq3iViKU1B6rZY68nSUcegodhlQberR/QCzeNKnlEDOuRwlKa5JXIz1QHBJwi7KRR8AH/OqkuzQqnSl0ogqVZb6Vbm/w+AtzOhjDJuwEhDKit7jTNcfT4P3s/+nJ+NzXtbWK405zvg3NFGmO0L+8ZXLjTitQ2R+WVHEtpgJq9e/3o8ZCkmab68cBr0pA+ICqCNh+9IiwYo+Pl3CQ6bAcrPEeZ3jGABkGlCnWKUc37cKkDIMEPAkb7TUPynL6r1iOP1bFeXT8znHyS4Emi9IkZpnHXtEhnSO/Z2hxi6egEVmft9jKww3RusT9RhKHT36BbhK7rvNAIhWTAD0S2TEkokodBEXqPmotBks3IyPipc3cmbeWktFWyG3/zoAU+CCqJ50WIFAW34yfpZmOs2gqqNBlQ0zhCUiW140O4oVIF5WzwDv7a6yIOAxJYEOVBpm8rMzMjJBsKI7mMawR8bopCnwgyowWaOnKxyZ8R7q5z2g4hNRJomUgQD0A1C0IgfmF9mObTAwahjetRa2U0bLvUgJlp/7CuOh2u4fubCvE2OdEoghL+h7oE/PxIv++BJbNescws8+AEakh1W3iRrNKv3koRr97IG01zQ/Te5lI2y6Kt+4lyGFBT7mhDn6/kgpgvDy7xxmLyEsUqWcO8rKyr+y/2ElfjzDzLvSQa6vIlN/oDXQxsdcGd/efaF/nWT9+Znyd/bVNsr/SksP6wvw3IM/iJQv17dapHnrsyYbA/J6ssaiUw2/Pa1nDgPNmMRAdiVBDfgv+p3e2LlIrlpQE5wTO9743peyM9Nj8Mf5hadC20VOqsIhyToO1zo59o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(966005)(6486002)(508600001)(86362001)(53546011)(6512007)(5660300002)(4326008)(31686004)(26005)(31696002)(36756003)(8936002)(2616005)(2906002)(66946007)(66556008)(8676002)(66476007)(6666004)(83380400001)(186003)(107886003)(38100700002)(6506007)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzRiemxHcWNZNjJhVU5GZ1doY2liMXFEZkROUjE5OWM0aXMwTm9POTNrcXdu?=
 =?utf-8?B?Tk1adUhQVngrajFnRDlxS1JzbnpYcXBYb1RaUDRDa1FlMzNQTmxmS1FkQ3ZY?=
 =?utf-8?B?djlmalU0bHNPRXdHSkNuaWtSTXN0d0ZYdWdwaGhGVllUaHB5V2RhUEovTmhJ?=
 =?utf-8?B?QllpVVMyNldsRWZadEZqWlpuek9XNjZlQWpSS1p0Q1BVd0ppRTZGcENGQ2Ro?=
 =?utf-8?B?eXFSVG9WT3RhaXpMZSt1clZmcVBPTGs0Z1VMNG5ZaGwwb3U3KzZkS0dmS0kz?=
 =?utf-8?B?bVBwTXVwZUNVMXZtaE83d0pqbjFSNmZXbG5ZYlNHN1o5bTgyR294bmNTMHRq?=
 =?utf-8?B?cCt2QTBJRG9FaUs1WXV5Tk9oMTUvaHgxbGx0czZiMG5yQjdyYTdmamNDdEtW?=
 =?utf-8?B?NFNHWm42U2RqdFBEeXBYUStuNGc5aDg5dnZlZG5ZMDVGenZPY0czY2tlQkQ1?=
 =?utf-8?B?RzFwQjFmOWVmSVNXQSsvaVJyNitEcU9jRUhnZG5sc21meHJlbHBiL0NjRlIr?=
 =?utf-8?B?bU1PV25qdFpIRHA4VUtibTdFcWprTXhQWjdnUUd4dEZ5WmhCYTJzVi9YN1Qr?=
 =?utf-8?B?VDE4NE9DS3RlMEJFNG1wQldQMTVSUit3ZEs4QlBSUENuZzk4ZHRHM3JiTXN3?=
 =?utf-8?B?c3ZTWHlYVEJldlZnaE53SFI5UllVRms4UWlNQm11UndyYU56eWJXdy9yYWQ4?=
 =?utf-8?B?aVkyOWdDVDFlaERNN1J5ZWtSallTbE1IQTVxWkRYRnBpamZ2ZlBPaXEzTjh6?=
 =?utf-8?B?a1VJY1FUN0U4WStCUS9RTVVIQkpjNm45eU52WElWQ2F3N1pmZGdRdG44Rjls?=
 =?utf-8?B?UDRqV0lxNHZDWDdaNkZ3TEdwUEc2WXZNdkljWXFjT040M1NyYUdtcGhaL3pO?=
 =?utf-8?B?VlhoMURnVTA2U3NMVzRyM2xUSStiZVo4YzVsQjIydmEwN00zZGprNDRTK01q?=
 =?utf-8?B?bXg4Z3ZKSWNvYWs5c3BKMDdVa21LNDEydzJPelc3OTBVa3ZpNjNDMm5PVVNr?=
 =?utf-8?B?QmpQMDRVdk12QUpEWDZIY1pwWWdMUUtobDRuL2N4WWdLWlp4UjBvTlJtVVpO?=
 =?utf-8?B?ejlWbGwya0xZN0JSR3lEY2EvTGsvSEhtUkhheVJ0Rytia1ljSFdtTDRvTmRO?=
 =?utf-8?B?YkFGYlhDS2V0djlyaGsrb2l2clJkOGR6SzJjUk9FR1BrVzNCMFZqeTE3dTZX?=
 =?utf-8?B?d3Ixcjh6a3ArN0xvcXNENlJFODNYeE9UMjh0Z1JWR01uN3AzRnBnUFdJbWdl?=
 =?utf-8?B?RUxVQkZUR0I4bG5GTUErSVBSb3lScURLVXE5RXRxUmdjYXM3bWhiTXVLdUwx?=
 =?utf-8?B?dEFJT09hUlBBWm8ySUZ2ak10MzlkWkFkUXEyQjRYamozNWR5eXJ6Vlo5b3lT?=
 =?utf-8?B?SGdIcEVyTit6NEFoTXUxc3JXVWJYeTBlWGhMTWtocHZMbk16ZU9oUTY4Uzd1?=
 =?utf-8?B?d0dKWkV5VEZIdFFRQTJZdGtwUjM4ZTZJbis2Ym5lbFhyY1VHSEU0QTNMb2Zu?=
 =?utf-8?B?aWEvblo4OGdRZFY1VlFTWVAvT3BaYWQxWDBLRnEwVHFNNW1zbUttOHNHSUs5?=
 =?utf-8?B?MkxLUGJBQnA2ZmNHa05TZnRXczVONUdVdnNEem8yV2EvVm14Qzh1Y0FhenFx?=
 =?utf-8?B?WGtaREtwejNJVGJVdmJRaU05V0M4ZXczNUErRjNuei9ranNzaFdGZ1ZURlIz?=
 =?utf-8?B?cmVjUW5CVDJiaEVSajdCUmY4dmxQMkNnQ2lqTCtsUzlRUm9Ca3JFWGlUMEtH?=
 =?utf-8?B?dFFBczhRSDZlOXh1dk1pZTFSM3hPL1U4LzdmSCtNOWsrM280aTFoUXQvbUhG?=
 =?utf-8?B?Ky9VWXFjV1dJejRidDIzMmFaZFVSejA2WncrMW9Xc2pTQmtiQTlPczhtVkFD?=
 =?utf-8?B?UGpEbEcwL1A4RDFyVVJoNXFVK1hpazhCU0hrcWNsRzFFbXZoZHhpbEhBanN6?=
 =?utf-8?B?WVluejFEV3Ara0IvTFFpSW5rZjdOQVdwZU1WSGFjSndFcW1qMldlektpVlNZ?=
 =?utf-8?B?WE5yc2dISzNab2ROS0F3ZjBwU1U4MWVUZUFLMW9YalEzTzVueW1oMVd1c2hF?=
 =?utf-8?B?MGppbmg1UlJzRTlIK1o1Zk16dUQ0d3E2ZUNWVmZxWUc3S2pxcEhzY2gzWGtr?=
 =?utf-8?B?M0U3aW5kalhTME5XWGVkYUZuTzZuQmJoMzJxbnluaGNETEY3NEtuWlY3WlhF?=
 =?utf-8?B?Q01RNk1CRFNtd2ttQXIzR0tNN0dJdDY3OTUrVlBvZDNhRjZoSmFMSDZjS1Fw?=
 =?utf-8?B?cWdRV3RLaTdkbWdEc0VjejFqQ1hjRlg5NXZFYXBicTFxT2ZpZmxJKytaRW9s?=
 =?utf-8?B?L1U2SnJvcWpYRmsxWFM5Wnp0UmR4Q3U0dGNQcnVmVkRBd1N2TlFnNjZYUXMy?=
 =?utf-8?Q?aIg9s2HYdn4ZqHAg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae3add1e-4b20-4499-5587-08da49a3af87
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 23:07:40.1287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t8R5Rk+fJJXeLGTe4aQ9MRyrRmErw3vMFnWBs1zt9SEWTKjsq+d0b1wanzB31RejoQrkWaugwNQYHgfzyNxHhTgF3yyyivY5kY9oxwHwA+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix erroneous adapter
 reinitialization during recovery process
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
Cc: Dawid Lukwinski <dawid.lukwinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/8/2022 2:13 AM, Jan Sokolowski wrote:
> From: Alice Michael <alice.michael@intel.com>
> 
> Fix an issue, when driver incorrectly detects state
> of recovery process and erroneously reinitializes interrupts,
> which results in a kernel error and call trace message.
> 
> The issue was caused by a combination of two factors:
> 1. Assuming the EMP reset issued after completing
> firmware recovery means the whole recovery process is complete.
> 2. Erroneous reinitialization of interrupt vector after detecting
> the abovementioned EMP reset.
> 
> Fixes (1) by changing how recovery state change is detected
> and (2) by adjusting the conditional expression to ensure using proper
> interrupt reinitialization method, depending on the situation.
> 
> Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>

Could you clarify how Dawid was involved in this patch? If he helped 
develop it, please add the Co-developed-by [1]. If he did something 
else, please use the appropriate tag/contribution [2].

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>

[1] 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
[2] 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
