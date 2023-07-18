Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 125E27584C5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 20:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C2A1415D1;
	Tue, 18 Jul 2023 18:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C2A1415D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689704924;
	bh=XkzxfSfGbuJmLs9gARU9Th1TyIvmcIzMO6cuvzptPnk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k9pvjxCPYGKaggayvDLV/L1EjIEtc280DkTGAnkqlOfQ53P944WRF07MQ44cNrP6g
	 gf/0oNKrIKdxRi3urSZrpebg5MXIAf1BRLHNZ/9YcxuDCaKDHBJqEWuYw3NPGhPc7H
	 kN8zClPDAXtEkjXEn0uG8/SQTPbKn+6Jg/jBsr4oU9GGWoebpVjR/BETT4HCBDuAn4
	 2Hm6kwmPK6BgKD4LAfJariilwoTMHCbsAofdD7d08pR9SorafBHT1NQQJv+cbPKxzS
	 5NzjriCZ6EC+V9Ejl0psX8pyDOY/Tg+HJ2dltBvigbwl/KcR4FMyb3qEEGjdAKT895
	 eQZbKlqrMPtXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tjpweb60ndKf; Tue, 18 Jul 2023 18:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFE8941686;
	Tue, 18 Jul 2023 18:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFE8941686
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BF6A1BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 18:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1369E812BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 18:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1369E812BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHA2_5PaJt7Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 18:28:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA4D480BC0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA4D480BC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 18:28:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="369839639"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="369839639"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 11:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="837357986"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="837357986"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2023 11:28:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 11:28:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 11:28:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 11:28:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 11:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=maEn2rvZJyV7GPOnPBjs/5frhd0LynTrY5lD4T7Y7KOPu1mvCkikKFamZNeUzeF7QlxVaMVP/CXqo+9jRsvNgLkxBlhxDY3Xht5xg0fPCfFAPn61aoxKfYBz5laUc0ZheeiQ7f1f5E5aIoH8PHW6q3s404ftI5ydcVpkrCaWnjBAV1DcG/n9FWC0c/AD/mzTZaVEazK56kWRxkxA9/x3GHjdgqNoywwWH1BenWIVNZPW/7+ECt445Vp9uMFNgYkx7ziJHnUUAgREtafcqLhHDnqB8zPiyPNkr7khvGknzvzxhQwA9RC2KZ8FyIN223vrSq3p2EfFt55qPoXBV3Ck/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T43knPlb810lIjQsKYWF4wmUW/IFVtwTIhEmyBR/1DE=;
 b=KNkQKUWYl+4tYpeTjc0HdabWGASpEiMdhmVvjwN1++/K/JEZUiWOz5Xz9whO/dpxrnWJQm83yE4TIWML8Bew8z+Kjlr7OSuaS/OrYJDg30h61BVPWPoQPLmZNYXKKpPEA9dBHTE5TmK14Oaaj+mtJWNZmccKjtMHvTRpa2GtgLhCzNKWnOI4YqMBL9UwssUCkF1frbcmZfCIvNQmTXnpC2p+chQNJ9jo1WS0uggxviRozEmShWUeMJB8+eoZVyNhY72bcyjq1eStAIh7T7Qe+6U9s6RUm52WWt7U9F8B/pj8n67wMfgMM79ztDksUijbvTEJBIRSMkDbdfAxASfkOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 18:28:31 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 18:28:31 +0000
Message-ID: <f2b59632-8c75-38a7-2093-7c167c9a2a19@intel.com>
Date: Tue, 18 Jul 2023 11:28:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230717221713.2249044-1-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230717221713.2249044-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: MW4P220CA0030.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW3PR11MB4729:EE_
X-MS-Office365-Filtering-Correlation-Id: 235caece-11af-4c44-c2dc-08db87bcc9a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t6vAN+p9hNp3fvp9nMtYPpcGCaanWj42kyeNBD0sjqBk2ISefizRyxxXbuEIlrDQweqSB62WIMalE//OiRpeqESIsNla82+apJVTs7aJYiCpaGlU7s+8Qk7Y0DOC3fC7wJ2QOQVl2a9kn+89hlDdUFJhXxbMSLtX/0tJCs+Fhvto0DwmyV+4f5zrk9wxIAJyv1S9zs3tk1BF8my8fSeugQoRz5Ov6qBSqi8/tROwm8iPZ5kUrUKZbUrkb/2CWfOLODzzUnuEg4sF/Oa/CvbRGeNLd14oUCBkkvoqrJSbQbGl8l73T4Dh3k3IqCJGERghpEvPOtLRfcE6/hplcegCIKBh/SB/lVfs/Ffo9NzqpzJQg6wB74585Vfz8mi6X43vXJ5IwsJSPRZ2ZQVNTmu5T+j78N60DAuxqm3qepuBFPOUcQsTi2vAzpgiNOXFjlNwGYPifxabH0WFtwPUWgiqZ2XOZpTbT6SBm8sWJkpo5nSHLIkrbF6Zs7yWDQBziJ2/nN1DayCOu6t0OpCn8VNEo+ofPMsM2xw7UtvtmvawpHbxGaks/IKXmZ1c1Ovy+VxXl17OpqQn+dvXWsFNnlLEM32BTj999Qud4USxpkT66TC5+E8W2Vw4lpsFK4YLo9zXdMCKvH9i5LfcxfKFymhTHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199021)(66556008)(478600001)(110136005)(6486002)(6666004)(6506007)(36756003)(186003)(2616005)(316002)(6512007)(53546011)(2906002)(66476007)(66946007)(41300700001)(5660300002)(8936002)(8676002)(82960400001)(38100700002)(26005)(86362001)(31696002)(83380400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3N0T2ppVmE2ajhqMlZhcEpaWlo4RVRIY0NMUHRqVDQ3c0Z0RERTRFN6NFJo?=
 =?utf-8?B?aDJKR0tRUmdkNlpUckgvdEhLVTdXWHE3MGtkMllkak1IejNxa0EyL2wvdmNG?=
 =?utf-8?B?b1o2U0JsdU50UjZZVkdRV2k3NWluSXZxWVlUVlZaeUZmbERXRnBUOFBRUTFn?=
 =?utf-8?B?THQxVTB2YWNKcExpYjhVYytJOFY1b09YaktQempaak5aa3FCbUZGeGVHUlZv?=
 =?utf-8?B?NFBIM3pOVGl2d0wrVzYxWEZrdjFoU3p0NHNVeHFkNzc1T01qZFZ1T3ZUSlNJ?=
 =?utf-8?B?RENxaklqYU9Hdkp1aWdtTW1DcURtS0EzSlZoSVpidjdKcUtmUFJ4eVh1NXIy?=
 =?utf-8?B?ZHNBMlFQSUozbjN0cFdMNjVBMXUrSzJ1d1ZkcXdDckVOR0trZFpGZGJjbXJW?=
 =?utf-8?B?cGdPL2s3b0l5K2Q4L3U0U0IxcFU5QVp2OStFaGJ2UlN4ZTMzKzRjTW42OStQ?=
 =?utf-8?B?OXUzNlMyTTJkaWZSczNrei9ibHVKM2FsNWRIK0RNN3FocHZVbmNMZHB4UHZM?=
 =?utf-8?B?N2l4eStIMUlxbUlMb0l0MVY1VDQ2dGtLdVIxWVRoS29heTBETjJHcEFLU3Bt?=
 =?utf-8?B?SFlZemJ2dEtNTFZhUGNpMHVFN3p5SUxTeGR6cVlTdmhaTERVVDIvVjIyTEhk?=
 =?utf-8?B?Zys1emNZdGdEcWZ2RTZ5QXRUL3pCMEV1TjFOcEp3VitKcGRaM2Q2aUhVVmNk?=
 =?utf-8?B?cW4xQm9sY1hnQk5qVDZDRFF0SnpoZGhwU25xMjZGRGpKZjVtckx0anhUTGhL?=
 =?utf-8?B?emZ5a2JCLzF6V1A1WGo0QkVYRWpCcDlwM0FjMzlCRm40aU5tY3ZPcVpkZVNx?=
 =?utf-8?B?SnArak84UmkxVThRYmNOYlFPMVBmaFU4VUMyZ0E3VVVyMVhTdkFrSGN2aUM0?=
 =?utf-8?B?cFZyUmhvZHJRdERwYmxmeUltTkRQZDJEMXl5WGhTYnc1T2dtcjJnRU1TMk55?=
 =?utf-8?B?ODFlR2FQWDY4QXJqajVEVlJnRWpidXBxMnRlV05WVHFJWXZURHZ1QVNsUWhF?=
 =?utf-8?B?UzFQbHorZkdnbTEzUUU5M2NOdVBpbmdIeWhwai9sbXYyYnl2NSs4bGEra09w?=
 =?utf-8?B?cXQ4L0RZSGpGQy9hakhUQnJ3ZDNJSWU3bGd1KzBWOU0vcjZFVldOUWY3a2w3?=
 =?utf-8?B?dE5FcStWekVqbGdSZm03eHZQNFRmM1FuNDNtZnNibnNuWDRYMm16cG5jb0pQ?=
 =?utf-8?B?QnBLWWpqRDN2dlNTcDJFT0IwcWRpSlUwdGM2TEtKeTZ5ZGNrR1hXam51ZzFB?=
 =?utf-8?B?L0JJYWhmRWJWWG9SUUN2VW1GNzR3cnlvQ1hvd1FabGxjV3Njc3ExTjJmSjBl?=
 =?utf-8?B?WlFQYUI1ZFR2QWtjR2xTYlV4eDNkUFExbVZUWGZiTlJRdDlNNVIzU3ZBaTJu?=
 =?utf-8?B?aWZtMGE0VzU3Mjh1aWF3U3pHeHRSazZSMUpBN3BGL3pvVDBsSW1paStqVmlP?=
 =?utf-8?B?d2FKUUZocGRTMkFrWGZndFNZL0t1Z3N2V1V4QmR0Sm5PcFVlL2lML2RQVklw?=
 =?utf-8?B?L09KcHlKa0JwZ003bEZhd3BsRXo5WFhaS20rVHE2MDhTTlFGaWVwdHlPK1Rv?=
 =?utf-8?B?UG9hM1ZEcFVOTU16MDZGc2laTjEzdzNmL09UY3h1dlpRTituMUhrOXkvQlFV?=
 =?utf-8?B?UDgrS0JmdkZxYklYZHpEQmliWVRuUnhGdHNSTmVEWG9kSkY1NFZsZGJUV3BR?=
 =?utf-8?B?WlI2ZjcyRHl5aWxVcXZENHlzeVlJaXpnSDlEZGh6RlMzT21sbTluWWdoM3c2?=
 =?utf-8?B?MjAwTzQxU1kyL1NjZTU4dWlBR2pyZHVxb1V2TXFwVWxPM0pEaU5vRE5CY0VJ?=
 =?utf-8?B?a3JhalU0Rk0yQXRwMHdydzJjaXUvaGVuZ25VYWcxNThuUVNob3gvdHN4UFlz?=
 =?utf-8?B?NGwwMVhqN1JkTnBDY2NSbUc4am4vQ2RvMno3dHRaQ0RBNlN5UW1ZaFNpTEc4?=
 =?utf-8?B?cjNWSC9KbXBvU1h2ZythaWVkSnFlbml0OXRFMnozcHJnWTBON0NhdEVxa0Vj?=
 =?utf-8?B?SitjS1Bla1VscEhSNGtabFJyQmNrR2pnWHI3WTVxM0orYlVXZXZoTzlGLzVz?=
 =?utf-8?B?UHNSWVZVMldoak9uS2NmRlorZ0VQb2dOMXhRa2JFczRzb0NwT0o5a0Z0Rm5T?=
 =?utf-8?B?VFdtZTdKQ3pEVTBKVlZZZmpZNmNVaGlNankwNVpRb0hwNXJocVAzSWRyL3Jz?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 235caece-11af-4c44-c2dc-08db87bcc9a2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 18:28:31.1136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4gwdeHl9Q8tpoh5/J2GG0ipoakhL5ZkNwFHBp2N84LmAvibb8k8Ayw3KjKmMVbbxjptWQxLknzjRDbEZe9TgbE8gbMkvbAVABZOUmnCvKQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689704915; x=1721240915;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9SR3GwjPYte7q/ba+V/Itm37z733u605BQHTBjMjZE0=;
 b=kFZE1nfDOlV06Or0BkGAOSDzrjGGESd+Z6z4j+N+G+OuwhjiY3kp49lV
 yJ9MoQVejpPG3IOIKFBVRYcZQyatztqxaCP5/Vgl+vApRHvI8O2qvrey6
 Se2HcSvH6lsxqrf5ThFIDQWL7bBBTy0hsosHOakNhkdxVXv0J7MuX8DTY
 hTbnv6He5WQIuqc4gMl4UHRjXG5ZMqK/rWje/3Nx0Nibfz8sDwezbt4i4
 9rHtR74vQZAvr6V/K2R5sWoiZwYZYOBfg3qKW8Vh08UVNbhKa8Eu3Ipei
 XlYYZ0CDYKc/EyJT3xkNINFzgCSZPinh3g/HJtA9hHon6yZR6swDTUCKw
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kFZE1nfD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: introduce hw->phy_model
 for handling PTP PHY differences
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

On 7/17/2023 3:17 PM, Jacob Keller wrote:
> The ice driver has PTP support which works across a couple of different
> device families. The device families each have different PHY hardware which
> have unique requirements for programming.
> 
> Today, there is E810-based hardware, and E822-based hardware. To handle
> this, the driver checks the ice_is_e810() function to separate between the
> two existing families of hardware.
> 
> Future development is going to add new hardware designs which have further
> unique requirements. To make this easier, introduce a phy_model field to
> the HW structure. This field represents what PHY model the current device
> has, and is used to allow distinguishing which logic a particular device
> needs.
> 
> This will make supporting future upcoming hardware easier, by providing an
> obvious place to initialize the PHY model, and by already using switch/case
> statements instead of the previous if statements.
> 
> Astute reviewers may notice that there are a handful of remaining checks
> for ice_is_e810() left in ice_ptp.c  These conflict with some other
> cleanup patches in development, and will be fixed in the near future.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    |  32 ++++--
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 104 ++++++++++++++++----
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
>   drivers/net/ethernet/intel/ice/ice_type.h   |   8 ++
>   4 files changed, 120 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index db78bf156df4..8ac5afbbf9c2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1366,6 +1366,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
>   void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>   {
>   	struct ice_ptp_port *ptp_port;
> +	struct ice_hw *hw = &pf->hw;
>   
>   	if (!test_bit(ICE_FLAG_PTP, pf->flags))
>   		return;
> @@ -1380,11 +1381,18 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>   	/* Update cached link status for this port immediately */
>   	ptp_port->link_up = linkup;
>   
> -	/* E810 devices do not need to reconfigure the PHY */
> -	if (ice_is_e810(&pf->hw))
> +	switch (hw->phy_model) {
> +	case ICE_PHY_E810:
> +		/* Do not reconfigure E810 PHY */
>   		return;
> +	case ICE_PHY_E822:
>   
> -	ice_ptp_port_phy_restart(ptp_port);
> +		ice_ptp_port_phy_restart(ptp_port);
> +
> +		return;

nit (if you end up respinning and agree) but not sure the newlines here 
are helpful/making more readable

> +	default:
> +		dev_warn(ice_pf_to_dev(pf), "%s: Unknown PHY type\n", __func__);
> +	}
>   }

...

>   /**
> @@ -2730,6 +2746,8 @@ void ice_ptp_init(struct ice_pf *pf)
>   	struct ice_hw *hw = &pf->hw;
>   	int err;
>   
> +	ice_ptp_init_phy_model(hw);
> +
>   	/* If this function owns the clock hardware, it must allocate and
>   	 * configure the PTP clock device to represent it.
>   	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index f174bac58aba..8afedd28ff94 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3138,6 +3138,23 @@ void ice_ptp_unlock(struct ice_hw *hw)
>   	wr32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), 0);
>   }
>   
> +/**
> + * ice_ptp_init_phy_model - Initialize hw->phy_model based on device type
> + * @hw: pointer to the HW structure
> + *
> + * Determine the PHY model for the device, and initialize hw->phy_model
> + * for use by other functions.
> + */
> +int ice_ptp_init_phy_model(struct ice_hw *hw)

Seems like this can be void? Doesn't seem like caller checks return either.

> +{
> +	if (ice_is_e810(hw))
> +		hw->phy_model = ICE_PHY_E810;
> +	else
> +		hw->phy_model = ICE_PHY_E822;
> +
> +	return 0;
> +}
> +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
