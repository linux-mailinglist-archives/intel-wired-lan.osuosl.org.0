Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811150BD76
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 18:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CAD840528;
	Fri, 22 Apr 2022 16:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKtXjOcD7Rka; Fri, 22 Apr 2022 16:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5762F40126;
	Fri, 22 Apr 2022 16:47:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2A0B1BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD0B160D4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6gZMShijme4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 16:47:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BE84607A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 16:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650646044; x=1682182044;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PrhA74jnw1fZLEdrgQALUKkAeK7KFWpAHdG6+p5Ch7k=;
 b=f8ap5hnQBkdcEgy0cYkZGWGGjYCKjBV4GjCw7dPZFVj9d22dl1RVtrF4
 5KjJr7t9Wa+A3f/eB+95G2FNCiJiNoBjtOGRDJyIbTm8NknH7Hf2XGEN3
 ikqGARbtWOSbXpsxuaS8jTWcDe/mi50VJpko6ZQprXI8wMZ0v9KEvyo3Q
 wqY3I82d3DPH2eXcsYZaxIdYldqNLOQ0FYhNSZfeFGq7Y8Iw//h5L0FkK
 Li34BgvhfpHplb9hLD5NqY7R1wxACE5ghTYCj+9FErEj/Gy1VqFcBSoz0
 m/QpacIm4VQIdmk3fUl6mZgVx+ygK7oHibd5SnlvM7LtEN1AKiHP9fUIP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264500514"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="264500514"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 09:47:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="511657141"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 22 Apr 2022 09:47:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 09:47:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 09:47:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 22 Apr 2022 09:47:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Apr 2022 09:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dARTU1MvwA5ge3b2mso/xgEWNAJ7gSSPVDT1w/mXPj+IBSD/dBYmUp9L89uzT6rHG2TrVcyB7AJh/hiHTv5ND2K10GRr+6G4hJNLIO7SsTn+ZVs1i5619bSb/NpUNaCTpTTWGgguwKhgS6DTmqAsrSTY9yE5a1uc5CZNiJHnuGVfPHDXKBL5rLA+OO1YdlrcfmXh3TlSYhcBariU9VqMqfjx0wFzZ4EQkJM8ZNRzm+1DA+O8EC4f9eShv2DdI3mgl4dQy7qTkU5TIkZJzkYNwZHIPnZ/jXoTPggrzrtux76xyS6EMJu5w9osT9P9m0U2G+2l7A0jSylWvGeNs+SDkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7G04lqAHq8R2Ng35bKSN03gJf616GC6tDJFoE4kwnjo=;
 b=SfKpBEPJTDqI5Rq1WBBc8Wk6JY/1E91V1fTVExEhmE3mFz+Cq8omsnrbmpmFHbnIFV7YDn+4eAE/cSmJAkjtK5R6hLnITPePYxTr1k37cmSvy6/S1fdxFcsyi3p5klaoMXOp4Q+ukIxcNdXEhDPfGuAsrbN8XlRWlM5+hMVOXxpNDTY75VEd/S+a3z5dX+/m5S6Q7/FSO66BoXNwmAncZYfYTUpUvfbPyh3+v1Z4uZ1T4Y6GeqjjqbX/TATVIJwyQeCWXKyk6wcyiWFGERQY5Jhmg3XXu5sQr2MDulXHM1C8dqBXg+Jv+yBoch45HXuucWGMHPYkhbQTidk3TMdqmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3168.namprd11.prod.outlook.com (2603:10b6:805:c4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Fri, 22 Apr
 2022 16:46:56 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.015; Fri, 22 Apr 2022
 16:46:56 +0000
Message-ID: <2226bdc9-e33a-f797-1bef-3752e01d1401@intel.com>
Date: Fri, 22 Apr 2022 09:46:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220422114257.2238368-1-karol.kolacinski@intel.com>
 <20220422114257.2238368-3-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220422114257.2238368-3-karol.kolacinski@intel.com>
X-ClientProxiedBy: BYAPR01CA0052.prod.exchangelabs.com (2603:10b6:a03:94::29)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69230b93-3894-4b44-a0be-08da247fb61e
X-MS-TrafficTypeDiagnostic: SN6PR11MB3168:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB3168514F8ECFF39A649B59F0C6F79@SN6PR11MB3168.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +J31oDwT4BnJuomPNydHwX0lmlQBfJXVE5Bdh39p+lc0cHkiagvARs8d4wACe7hUx6lUUdcSmzM8NSu+H9CAdxFCDSWVmj9ja07/UO1aMxfayO6IcDViQz2kp6/tSMDDVwc00T5SYSILXQR7Q5k3bbAGsZTduHnMsz7QsC/y37mdiLv5MtXmR+XFwf01xulTGSR1BpYO+mb6mC5+J99aqrsVZJn9aa80Zh8cJaSwI5WW3arxepLwetJ9fhopwrD16daWVJzVvtq492Fxo/csKrh9WCk3wijeEp4vzZUMn/oDtWyrnY/7NOXbqoU3dlGX4m6MShwnmG37/sI+99YEBzRHO5WSIMukAEljIA5F9HxSszxDNVU60jy/L8meckpJBdk2bUjdIo9FZPkh38aTuznGMd6dxaFeyXEXRvWNYW2WI23jqxmJYetdBz4YBmmmmAZRmWBS0EFUb8cP5o7t+/SwuSzhKoMZNgEVPno5m0o+1oGpfjHy5UoMndJmfH3t+LdeYZ80qoFNY29LUpPYVDK7wr508mbAa37qwcvLlUOSg2YdnGROJ1K+gwcLbgwWvS+pnI1gFIFb62pE3lCS8heehcTD06tkdceSnNhgv33ma4Q6H3/waJTYROGiPz0ed8LhiZVfzGySoDwbgtp7/M+acpOuBJIiPvjYoYY7ItXlDMMAWYlBcXh+0m5NeUZYjFeA6DTYBfDVXObpmB/iHKpAm7Ovj1baBAop5JgQZ58LKQnRvgsZ1+6rspf8uOxz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(38100700002)(36756003)(4744005)(2906002)(316002)(31696002)(6486002)(53546011)(83380400001)(26005)(2616005)(82960400001)(186003)(86362001)(6666004)(6512007)(6506007)(31686004)(508600001)(5660300002)(66946007)(66476007)(66556008)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVRNUjhDOU9XbGp4cUNFcm4wRForWThIL2hKVmFjSnlESXVxbWVKaXIxdzIw?=
 =?utf-8?B?VEtBalFzQmtieFBzTi9GTWRaUWVtSWRnQkpyU2VEaW9DQ2NCZk80enU1ZURp?=
 =?utf-8?B?ZkpqdWZkME1aNlVDRHpOZ3l2MUs4akhKSW1IUW5XaUFkY0o3U1lMOEZJL1Fs?=
 =?utf-8?B?VmZncWc3ckp3YnVHcm9IMkptcXdnS2tBOUZlaDVybkVNNEc0ZmZDeld2aG4x?=
 =?utf-8?B?TUdpR0cyQjRsNGF0TGcrTlRkMjloRUwrRS9WYjJXcSt2TDYyYWFpZG0rVFhG?=
 =?utf-8?B?Q2ZYaWtFVGFOWkVRamNVZEdKNUZxRUpDaUdRZk54dk8wcFB5TjNGeE1oek1T?=
 =?utf-8?B?V0gwK2thZHlNVUFMTTN1UlFlSDdxKzBxNEZITXgwalRndFVFcXgwYnFnWXZE?=
 =?utf-8?B?VVFlZ1RpTFpHdU1KNWltcUpNZHRZNXE2ZlhVZE9uM09LY2RVdFZBcm9vdElY?=
 =?utf-8?B?T2Z1MlY4dDd4R1JjVzZaMkc3WGJVMDQ2Tlp0dDNMR3RweFB5YURNY2ZodHUr?=
 =?utf-8?B?TXRKakpwZTVKR040K2l6SVdqZWR2dGg0Um4yRmdGNXVCbGVJNVl6cWR2c1ZG?=
 =?utf-8?B?MmhocmdUVFBoZUc2WWRpTmhkNzZGNHVXRGJZODU5blRsNGdXbGZFa0NmZFlO?=
 =?utf-8?B?QXUrWnBBWHlhbGZ0eWppVGM2aUFGeStBOFVLRWY3c0tuY3N1UkFDbnNnS0tB?=
 =?utf-8?B?SUo3aVp3QzNXdHZPcDR5ZlpBOGVOYmlsS3ZNOTN3dDFabFdQNjZ2RWk3c25M?=
 =?utf-8?B?NGhpVStCRlgvbXd1c3drc1Q1Y3I4bENRZ3lRc0hyU1NHWHg3cVlCN29JbStr?=
 =?utf-8?B?dFhmc1ZlWnhyTHJ4YlNpSFg5dExZTWFiY0QvNjBmWEFLa29RYVR4VXB2czgz?=
 =?utf-8?B?Z0RTZ1VPbGpYTTJnN25WMHFHemR5RXF5dXlHNE5jS3RTMU9HQncwQVMvWUJH?=
 =?utf-8?B?TStHVVMxVERzZi9CVVFPaWN1bWxoV1IyeDNJOE5kb0hnbWFQejRwdTl2VTFw?=
 =?utf-8?B?cVV4YnUrRUhyVTl5bHhkc1pyd3JLTUNtbHc1QXVhRHNsWGpCMHBKMlRlZTY3?=
 =?utf-8?B?Y2VZR05yRi9JdEVQdy94WFQycWpnSzRsWkFzaTJPQTBaV0FQeEk2alRrTDlZ?=
 =?utf-8?B?bWZDK2d6cGp1UzdHZnpHL1ZrVGVHUGxXT2NGRm5SYUZCOVN1cXZHTlZHSWRF?=
 =?utf-8?B?Q1VGaUtPOWZBUlhuTGpmYUp6SUdFK1NkM2ZNM3ZqVjBYUTAyZ0lqK2F3c2xN?=
 =?utf-8?B?TWpyQnk4YU13VzhzS01QVHBpVjZQaDlPS3ZoOVl6WjBuWi9oaTZIb3I5bGVo?=
 =?utf-8?B?Z2FQcEJXaThuWHVBQ3VBTWZZNkdycUU2OCsrNFVCbmVLTURaSlZhUjhiYmlC?=
 =?utf-8?B?RytqQ2JXam0xMDBCdU04N0VqbENIcERFZGVDUWE2MDF2Q3ZJQ3lTcnh4VlR6?=
 =?utf-8?B?WnljaFREa1E3Zkp6Q2gwdVF2L2JDVUphVUtPL0EyODNvNWJGdXVxUVB5TEQ3?=
 =?utf-8?B?MXNNTUdBdEhmTlhCanJOVW9zVnBtUHlPWXA5L0F3SE5KcU5WaXBDM1BxZ1FE?=
 =?utf-8?B?cEZtSm03aURxZVJmYVBhYWxKdjNjQUN0UGxrRWdockgxR1c2TndYdFY0K3Ev?=
 =?utf-8?B?bUg5N0Z6bTJEbG56SnFaTGVqQjFBNFFudExkeUpYQUFvRUdGTU0wOUVmV0tN?=
 =?utf-8?B?QTJTMnNPU3JPNzJJeG1XM0hvVmFzR2EwOUhtdDAwN3BWd2JWNDJOY3lneERY?=
 =?utf-8?B?MHp6Ukl3bld0Ny9RT1FFb0YrVGhHZFRBLytzZlpZbE4vSmZDN2VrOW5IZTVr?=
 =?utf-8?B?N2ZNaXdpdnNCbWpqclJ5SGtUVkpSZVBJMlJwdHNjZUl4M01WRkJwNzRTZytM?=
 =?utf-8?B?Rk5pdGFIZFhZOFNUUFkrWHpBL2hJaXNyYXRlWWlXN1hSWVlPVmh0NmdZVmFU?=
 =?utf-8?B?a1EvR2h3QTAyUHBDWjJ2ci94bEViOS9WaFJydXJNNVU3dnorZUtCNVRaMnlU?=
 =?utf-8?B?OVVFTlZRRlZtT25rMzFsYUJjbEQzL3E0cHE0bG1nLzlSV2FkbDZoVS9lUnJu?=
 =?utf-8?B?RW1jdjhIbUVjeXJkcjZseG02ai9YNnJCamUwaGloOU5nWUF3Qkpya0Zqa25O?=
 =?utf-8?B?ZGMrY3F0WU1qYms0Q2VYOTROZ2c0dzNpcitXbXFqSTc0VUs1WVBvZjNJczFs?=
 =?utf-8?B?SEd2cEg0MVlWd0tCOThXKzlZaDRXSDJTTkFIT3kxYll2QmNOcHgreHRQVXdV?=
 =?utf-8?B?ck9jak1OSVlZbDNuNUZMRU1sTUxPbGdycFk5SUJMQjFHSlJUYUl3MXR4WUlL?=
 =?utf-8?B?c0RjVXZLQmpiekcrYzFZOXpPdmF5YnNmL3gwVzhielJjWUhGQzNwV3VsQlM5?=
 =?utf-8?Q?Sj48Q4dtpPLXEWaI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69230b93-3894-4b44-a0be-08da247fb61e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2022 16:46:56.2972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YhvlUZXhzbc0INLijGuuIn240n6RFHPQYfnlLMr1PLDxpgn/TWkNpxai0WAOOa2kWfKzEXVavY7RvpKpJFs8PWvVWKfaGYXYC81lzV7xY48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3168
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 3/3] ice: add write
 functionality for GNSS TTY
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


On 4/22/2022 4:42 AM, Karol Kolacinski wrote:

<snip>
>   
>   /**
>    * struct gnss_serial - data used to initialize GNSS TTY port
> @@ -33,6 +50,8 @@ struct gnss_serial {
>   	struct mutex gnss_mutex; /* protects GNSS serial structure */
>   	struct kthread_worker *kworker;
>   	struct kthread_delayed_work read_work;
> +	struct kthread_work write_work;
> +	struct list_head queue;
>   };

 > drivers/net/ethernet/intel/ice/ice_gnss.h:56: warning: Function 
parameter or member 'write_work' not described in 'gnss_serial'
 > drivers/net/ethernet/intel/ice/ice_gnss.h:56: warning: Function 
parameter or member 'queue' not described in 'gnss_serial'

>   
>   #if IS_ENABLED(CONFIG_TTY)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
