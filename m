Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C28BA854AE3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 14:59:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8244D82389;
	Wed, 14 Feb 2024 13:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id akWVy1ZNbxMM; Wed, 14 Feb 2024 13:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9E0D82369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707919148;
	bh=WkC6OOl92EUyo/xN02Vgb+u0QvISAwkds2uhvcdMWKU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7OgrVCdwpbrQTLb8JpW5aYUKDjTSeDcDEnjt+VBdy+XJQZ942M4moNDTq0jiuT6ff
	 3DCDO+MVktQ47PzVXVhT+2LUBVC/CWTWgrzyf6SHbCP5B/SCDTImJGk5DIW3hOw+Jn
	 KwFGUZwrdcjfzbP7JihIQPSAMcWNHPC7n9xMAZZ/dtsVl4kK5C7CJEWXXI/BR6FnaN
	 N9j15PBsXYV6SDK+8F7huJ12WFpoedUaJM0n3EQw8GSHsH0CO1IP71A69Ffkry41+i
	 epyBjGpWjmo3YDfjbA2gIUBMj3yw79mcZk7V9GWMjL9Ygyl+c0DPVKRcK33uB7JtEN
	 osQOD5r95xrRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9E0D82369;
	Wed, 14 Feb 2024 13:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7D31BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 13:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25DC0404E2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 13:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXSi606-G3HY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 13:59:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 915E040396
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 915E040396
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 915E040396
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 13:59:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="4927428"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="4927428"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 05:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3185632"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 05:59:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 05:59:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 05:59:01 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 05:59:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OsvCoX6QXgNipqvmdZWnOu5MoJuUFSh0d94uTktjNO3nXULx2YAlriF5GlPWKDhpEo4OSNzf9tEVMizVdjC0S2nlpsDL23+aWrMSZh+0X24mFLM9HzbaJKXD9fIWQVbBo9VPt6IZ6yNKQc/62ycd7N7tVda++U89YNzWpcIo7EUP5AA8i9hOVz2RNhOdm6PZ/XgbuP+T0n1inCuJHxJhQ8gYBdPSLyKhPXtA6+lmGTi2szUmF6Wztdd8HnNBi7HRbF2mDQsKuAlreHFfNDIQ7vdrOtPx7kKdhUcZxDp/CZsDVp3uvUdx2dCL8/KXAEN6PjJ0GnclJwzsgfIIi6ZCEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WkC6OOl92EUyo/xN02Vgb+u0QvISAwkds2uhvcdMWKU=;
 b=F6zbL28Obo64yw5s3YcK5zXZY1dT119LPzbAAGilpVUF5nOzJxikeXZa0zBP5eFdXqc/TbmYkWfEcOFLr7G7/AZMw6scaGOIgmAtIgZLtKmBaX8QOwxxVvMF47ZZMAOIgnHdZYLBvhH8kgA9sduI63pQBWvyipDLni01bD7v8QQMR00XyEGVjgDKOYLLIAON1kIBvBmJDlPgZBX3F2qS59v8F9Pv9gh/AqdN7GkSt0weN045s3PVWXtB7ZZnqIO0o7hEEaKmM653pnpRYp3AIvzye5ZkXHBIUcd7Zk7bgESudBnYY0GmEeFwSY3JBlxqqrETDgl3QEalu+0kYoN42g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH8PR11MB8015.namprd11.prod.outlook.com (2603:10b6:510:23b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Wed, 14 Feb
 2024 13:58:56 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 13:58:56 +0000
Message-ID: <93ed20ec-848e-4c72-8c01-e47acd4e1d8f@intel.com>
Date: Wed, 14 Feb 2024 14:58:48 +0100
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <db31a0b0-4d9f-4e6b-aed8-88266eb5665c@moroto.mountain>
 <b5b28ce2-4322-4d39-93ac-46d32bb336fe@amd.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <b5b28ce2-4322-4d39-93ac-46d32bb336fe@amd.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0443.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c6::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH8PR11MB8015:EE_
X-MS-Office365-Filtering-Correlation-Id: 201d886b-de30-44c8-c618-08dc2d6515d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6rSJX2VUC1HUMYX1FNT6qV486bpF5sXuYVtid9NeSFpbqO0AeLm0b8XO1NjrDwhIm2HvAPyKTTAqfmWU2JxEWhGV2SpvWGZUmGPaaE6MzEO5bsrC007UFPmDC7nl2eljleNidvaD1FGqLNdQU9qA1gmRd9nBWU8JgZ2HXMeYlGPoXQ3Fb78epKtw5Su6h9TZHZJxTr9M3Qt7YhF2iAjk6hZj1YE6rSrzs62dml1nrBcSMOMPJKX/22o6ZgElTQivYouktRJrC0Q9ffoK9QNgDCuRwNhVoj1c3YTcE3VeZrmdJLs3QCZh7n4JJw9mzGWOTxbW0E4EX/8NAIo2a1micDXBeg7wybdotjtPOVUPsfVpKh6Cp2VmmnUNvV475b6lm92aVFk1J4hrZh5vYmfmzW24wLoDQKG/7mP9NDFqB3knqltqnmHBL0UetZIbA7oH/H8/ZBHGOfy99RBEUweojFjpExJMOVB9vTBJmXdkwanfIkEMYkUWO8ceXEibyAJk3a65Hnh49ffd0YH1UjAlK8MuAyoqG5DJzMvfRn7w/oAf6MErtCYhQXvjZap28RDP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(376002)(366004)(230273577357003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(6512007)(6486002)(478600001)(41300700001)(31686004)(8936002)(8676002)(5660300002)(2906002)(4326008)(110136005)(66946007)(6506007)(6666004)(6636002)(53546011)(316002)(54906003)(66476007)(66556008)(2616005)(31696002)(82960400001)(86362001)(83380400001)(26005)(36756003)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnRXQ1RtUVRWOFA0TXVBNStYdHhzb09STGl1T3dQMmFaZEpCajQwS1dRZ3RX?=
 =?utf-8?B?eFhKVXhrT25rb094eWFEL3ByMzdZaStHRDcrME90eFhIVEZnVEVUZ0dqdmhi?=
 =?utf-8?B?bHdvUHRaZ1g5M2VZTlVacTcrUmtFNGtlOG8xU3JvdDlLdWxvbzFFZ3JJZFkw?=
 =?utf-8?B?d29QV0NxRk5maTMwRXpITnpGR2gwdFdpT0dPVEVqWlY2emNYTnEwRmhCNks5?=
 =?utf-8?B?eUlsWERFalZOcXM4UlQ1dlRReWg1VlVtN3B2aVhrM2U5c1dqWktEZ0pqV0Uw?=
 =?utf-8?B?UGJIbGlZM05CQ0Q4Yk5WVmNHY0RZTUh4c1dqQ28wSTh3NGZJTnZXU3VxemtU?=
 =?utf-8?B?T1E0TzR5THJNdmJvRW8yV3gyWC9ONlVpNUZRYkhYMlk4bWdCOTJNTXk5azI0?=
 =?utf-8?B?ZVF1MVZxRWJRZ2wxNHpJZk8yWUxFblF3RWJ5VWZEVnFEdHFPbWxzNXp3S0ZJ?=
 =?utf-8?B?VFNMWmRvSVovUTkybkpNa3UweDJ1eitlZDdEQVNubUh0UDZCOEtuUEhHUk11?=
 =?utf-8?B?ejhiVlBlVHllN3RPa0hUUVVPYU1rOGhYTVQvcDh6S2UxNjJKOFZVWXZRZE5j?=
 =?utf-8?B?RGEveklHZWhrRisvWkNkcE5ZSjVtMU5kWk96ZlVJTHpyMXJTVzIyYnI2TFBE?=
 =?utf-8?B?R21WOERxbnZ4N2lld2MvNTd3N2xVdXltZWdMVEVSdG5OaS8xYUZCRERqeUwy?=
 =?utf-8?B?WHUxRFhTZlFkc1NqYkw0WWhPNHRJYkJLZGN2eDFnd0RpdEZCQjc2RnBZdTJp?=
 =?utf-8?B?d2FmMVlyeWtBN1Q3OHQ1R1dJdnFXY2JLSGt1SzFYeWl6WGp1cDJhRTg4M1p4?=
 =?utf-8?B?RHBYa2MrQjRubWUxMlNKZzB3Ynk0QmhxR0lGMjhyKzI3ZnMrNk1nVE5LZkcw?=
 =?utf-8?B?a2xCSU1MM1VSRkJCcGd3dmdYUVRNdGFwUWFURW16bU5YU3pXbzBoV0FYNXp5?=
 =?utf-8?B?dXg2ZTAybHlXN1V3NithcmpPdW0xVFNFVzJhaWlEaTM4S3pnb0xINmpxMEhq?=
 =?utf-8?B?MkFwUFc3U1VnckErcnBoOHdkTmdvc1k4MDBKTVZzcEpHeUU1ZUR5V2JYcnNj?=
 =?utf-8?B?THZNb3pQNUZlbUNORi9nZzUrVDBHanBEN2JzQ1I2WVAxK1EwWWZ1V0l6Q3VY?=
 =?utf-8?B?aUhXRS8yZy83elRZTWJNRlJMNGVjRkRpV3FnMlpzVTV3c3VNUjRnZklKOHZj?=
 =?utf-8?B?QjAvcXhOYUJmV3hxK3NwaS9vUVN4dnNnV1NyQW5wRzVaWE0xR1ZJblNmaDgv?=
 =?utf-8?B?d0FSZFRSQTVDLzBBNFlmRlpOaUcxNFFvL1F1cHpHMXA1R0xZczlleHF6K3BN?=
 =?utf-8?B?U0U3THhNRzluR3FIU0tuZk02VkFialYvT3dZRXAwdDMwWGZHNmV1WmFTRTVH?=
 =?utf-8?B?VUw1WWhsVXVmcFp6L1lnK2ZoZGZrYmd6d1p6Snl6L2Z0Z2RMNXo1cVIrSjh6?=
 =?utf-8?B?V2oyZmREL1B4NDhRR01DNm1hQ3paZ0dLaElUZUJjSmhUc2pacUFid014MEhS?=
 =?utf-8?B?VnVCWHlGaTVlR284TGxhcVdKcVhuajJXNUMybmpnS21EL05kVlhwWkhGTmNN?=
 =?utf-8?B?c01ZdDMvVlBGd0owQk1oUnJuYjBiVXZZZlQwZUdCT2kvNXREVzh6RTZ3RE82?=
 =?utf-8?B?aDFldHJ1bE5jRFlvYlRIVXhlNzYwSVc1ZHR5THcyalpNNUl3UHRxT0ZmeGJv?=
 =?utf-8?B?cGNLUHh6emlJc3lnMUdIaW9FSkd4Vmo3cDBXd1NtZWJBTXh1MDM0S1VtQWs2?=
 =?utf-8?B?djZ6MHFTUkNwRFVXUzRXV1lRMzBUQ1BtdngxcDFnckx4N3Mrc2ZPcUx2RjJD?=
 =?utf-8?B?d29TN0oyQ0s5QmZKVjRONW1JaFUxdkJrUk9aN3Yxd0orNEdPajd2WGlrei9n?=
 =?utf-8?B?dnY3eG5IRitud3cyd3hpc20vZE5DaVhCUWRwZFBjVHJWNEVTc1l6bXJ1Z1hR?=
 =?utf-8?B?aFE1eVRmRU1BNHE1QkI5SmhZS24xakphS05sYWFac2xHU3pLdnczNDRSdHEv?=
 =?utf-8?B?NFJuSjk2TmNBUG1CZG5ENndBbEhFMG5WRUk3M2toNWJabk14b2R3dFg5YmFE?=
 =?utf-8?B?Mys4YkY3WE5RMEphZ0NKbjBuYVNWNFlXby9hcHE5eHhnN0J2aG5Sb3FVNi9n?=
 =?utf-8?B?MHR3L2U0ajFZSWU2MzBUR3phblhjdVBpMWNzMVdnTk5aU2cyVk1ORFhpSXcz?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 201d886b-de30-44c8-c618-08dc2d6515d9
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 13:58:56.3286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +7HTKHdX+TETv8Z8FKuKknt/NWcDh5p3fLlOrEbvkQTzK8MZmPOuE1JFgqr7iuRA1zUWJgWwLhesYkRZlhAyqQ62r21ARIEkdfkCY6yT5qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8015
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707919145; x=1739455145;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ksFK4sI8SGpUd4tDVq/AGXGsWhJpbRecjt7QdCJzJY=;
 b=R8Ot/kOQw6d/nkbdr212sotm/afuzCtJPq1yVeRs16Kj1rQoZ+UwzbN0
 0OZ8BcP58PJPoR1iGtg1QsIHZbxkqFpeStHHKihhn6Fhd/h3u0qtuHoRb
 GUq2sl5buxzzPqkR68n+bT3x5O5oHkxy1W/XWwvCiVS+bvdNA46JMiBA7
 fkvSJMfcIP+mDDSN77m37omYNayX1ri21zWz032wiZdTka8LsR2/DGPaW
 vGyHoyNNp2UqH1T988optOlWwz+5pVR1idqu5Qe1UQwrgUGZ0bOGoh2Oc
 LqQc509sB3eqnk4CRuXbe9iqxnJi9aMqZtQtioAkw7wu5RE0SLz2sYxOT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R8Ot/kOQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] ixgbe: add VF IPsec management
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
Cc: intel-wired-lan@lists.osuosl.org, Dan Carpenter <dan.carpenter@linaro.org>,
 "Nelson, Shannon" <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/9/24 18:57, Nelson, Shannon wrote:
> On 2/9/2024 4:59 AM, Dan Carpenter wrote:
>>
>> Hello Shannon Nelson,
>>
>> The patch eda0333ac293: "ixgbe: add VF IPsec management" from Aug 13,
>> 2018 (linux-next), leads to the following Smatch static checker
>> warning:
>>
>>          drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:917 
>> ixgbe_ipsec_vf_add_sa()
>>          warn: sleeping in IRQ context
>>
>> drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
>>      890 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 
>> *msgbuf, u32 vf)
>>      891 {
>>      892         struct ixgbe_ipsec *ipsec = adapter->ipsec;
>>      893         struct xfrm_algo_desc *algo;
>>      894         struct sa_mbx_msg *sam;
>>      895         struct xfrm_state *xs;
>>      896         size_t aead_len;
>>      897         u16 sa_idx;
>>      898         u32 pfsa;
>>      899         int err;
>>      900
>>      901         sam = (struct sa_mbx_msg *)(&msgbuf[1]);
>>      902         if (!adapter->vfinfo[vf].trusted ||
>>      903             !(adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
>>      904                 e_warn(drv, "VF %d attempted to add an IPsec 
>> SA\n", vf);
>>      905                 err = -EACCES;
>>      906                 goto err_out;
>>      907         }
>>      908
>>      909         /* Tx IPsec offload doesn't seem to work on this
>>      910          * device, so block these requests for now.
>>      911          */
>>      912         if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
>>      913                 err = -EOPNOTSUPP;
>>      914                 goto err_out;
>>      915         }
>>      916
>> --> 917         xs = kzalloc(sizeof(*xs), GFP_KERNEL);
>>                                            ^^^^^^^^^^
>> Sleeping allocation.

what about using GFP_ATOMIC instead of the "default" GFP_KERNEL?
that would be quickest fix possible, not sure how often such
alloc would fail

>>
>> The call tree that Smatch is worried about is:
>>
>> ixgbe_msix_other() <- IRQ handler
>> -> ixgbe_msg_task()
>>     -> ixgbe_rcv_msg_from_vf()
>>        -> ixgbe_ipsec_vf_add_sa()
>>
>> This is a fairly new warning and those have a higher risk of false
>> positives.  Plus the longer the call tree the higher the chance of
>> false positives.  However, I did review it and the warning looks
>> reasonable.
>>
>> regards,
>> dan carpenter
> 
> Hmmm... yes, this does look to be a valid issue.  Nothing like getting 
> haunted by code from the past.  Thanks (?) for digging this up :-) .

:)

> 
> I'm not sure offhand what the right answer might be.  I suppose choices 
> include
>    (a) pre-allocating some number of these xfrm_state structs
>    (b) shoving the sa creation into a workthread
>    (c) remove the VF xfrm offload feature
> Neither of these options seem very appetizing.
> 
> I would guess that (b) is the "correct" answer, but I don't know how 
> well the PF<->VF mailbox protocol can tolerate the need for a delayed 
> response - it looks like the PF's handler wants to send an immediate 
> ACK/NACK.
> 
> The pre-allocations for choice (a) would allow for not messing with the 
> timing of the result message, but would require guessing at how many 744 
> byte xfrm_state structs should be lying around for potential use.  The 
> device has 1k slots available, but I don't think we want to store up 
> that many nearly 1k structs that likely won't be used.  Maybe add a 
> switch in the PF for enabling this, which defaults to off?
> 
> Meanwhile, (c) is the quick and dirty answer for a feature that likely 
> doesn't see much use (I have no data for this assertion, just a guess), 
> and shouldn't be relied upon anyway.
> 
> I'm not in a position at the moment to be able to address this issue, 
> but I'm happy to try to answer questions for anyone who can get to it. 
> I'm hoping that Jesse, Jake, or Tony might have a better idea what to do 
> with this.
> 
> Thanks,
> sln
> 

