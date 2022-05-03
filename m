Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA69517C2B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 05:14:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D92140484;
	Tue,  3 May 2022 03:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y_RwHh2Tu-Yh; Tue,  3 May 2022 03:14:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49E154049B;
	Tue,  3 May 2022 03:14:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C894F1BF405
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 03:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B705382978
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 03:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T9zuZpWLfcLC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 May 2022 03:14:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A80F382919
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 03:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651547677; x=1683083677;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gaTA9XbsvzjADYoh4X9ZVb/EtOlT9ACD57m57VzuAlE=;
 b=lHQyqIiBHsph/ge23LxcjjXf5ygq+GPKIuwwLxfrTgU27EhrgFsBZQBl
 nfEF0y6Pre3zXoHqiNyROvCBLu8T+yBvszo6PSK3XKpOEiObn18Ec0Eyy
 6Zgrk+5vT0xOlWfYafarqkuSNCLQYWwSg7wjI6gdYNPSwhFlM08WA5zT8
 GsbTC6P2qc4KxsCD0WPt/1peJzKvnE244YChKhUrZx8toeukRLUPPF3Vg
 IQw7sJ/hZyk0N27wlmSTanKu7v/bhGIh8yZ/v+1GsFClccGJq6i9OECKX
 iz3uL0uX2giq20UGRwEt/oISnokkgoKrNcYGeHQRM0JWLmNR6NphiVrvR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="327929574"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="327929574"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 20:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="562033205"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 02 May 2022 20:14:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 20:14:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 20:14:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 20:14:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m00zBaHE8GoxBcT9bxlYeIIhwnhSKfkqN3P191FydGuGVEDGOGwjyMjNsvhXncNFNCIfQVVHBM9eN63KsT4bW7NKkCnhj5uLiGsiQ95KPF2u+KG4wbVXmZgsUkt4EaifoKoQiGngEFVaAqCk8v2CRQmJYRPHddh54fRlY43yWJ+Bf9geB3gWFpRIX/SZEk0STkjHlD1HYMwxOJ59qeshAaJzLyYjdM3XiD+7IoNH3dj6ztPBqmP4UAZJBkxpfy0+kYYSG6wpxgxvA4E0jhtPugFDG0281T7o2eLo5yTjGq1cGMVeXueVSu2TvJ5lUC0hGTEt1Qsh36zRdM12PpuHXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qib/PTPoRAzifp+cCnfwgwLhYWKwaBQqrIMN+n1wzfA=;
 b=ZXilXOfwhzmOwJie04Mq+xXwXGPkRUeausUu3figsTvI2lprrN2hz7121+d4hjZN0amk6GzzcGXJENtsTbKVvkIc9XnQ8ZDp4ex1Z1LVIjsI+THp+cE4WR8kz/Yt7VFBgS5dVtYBv1/DPbOYoTXRkd3dmjKBms7Iu/Lmhd+l+UIOpCPwq5/0X67Ja0ImCvkiuTYISE/0iBGwQNt4FkMg9yaaC02OTUr/kULWBDtJj+/bVzhQqVQa+rOlIe/serI2SjQy4oLvVV5qlz67dXft48fituFcPcBaZnW8nLrUegfHQifqPCclwu5Rav3tZ7t2tm5lSqPiW4QHT2wCUgxBeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by SN6PR11MB3519.namprd11.prod.outlook.com (2603:10b6:805:d0::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Tue, 3 May
 2022 03:14:34 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::6ca1:a566:2503:3c62]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::6ca1:a566:2503:3c62%7]) with mapi id 15.20.5206.024; Tue, 3 May 2022
 03:14:34 +0000
Message-ID: <e0c98a14-db37-25bf-0993-efa3893cd4d3@intel.com>
Date: Tue, 3 May 2022 06:14:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220502131556.349753-1-sasha.neftin@intel.com>
 <1dc52831-b539-1add-c966-53e415ad7f04@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <1dc52831-b539-1add-c966-53e415ad7f04@molgen.mpg.de>
X-ClientProxiedBy: AM6P191CA0051.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:7f::28) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e8f9bce8-2869-4f67-2f22-08da2cb30c27
X-MS-TrafficTypeDiagnostic: SN6PR11MB3519:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB3519CA9E5223AFFEDCF6467C97C09@SN6PR11MB3519.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e3UddG4tH9SrboLOQT9P6Ax37HYNRWPI2Xzv8dI2UHgxuxhv3Ze2x01CPrQoNJYQq45wH3UxWqMzCO5HJ/ICM+LAFiKp2cnnGZDrNg7DQbuiLVTL7F3IUzPdSl9KreRj8v3o8uK42xF/+ERjZqC4rRSr7/ezEQbtvK6v6sb2fhNWMIRJtzFujGpd02vGBEqdCTlAaOJD/gtZp1HcGRl6bK013jo6MEvm3gpMrKCe65kfHKvAzcKsKUKnMCxJffFOUjLB/Isi199KBw54lSC/DGh3pNB34oVFpQgB0ZdzBM8eycue9T0QTzppgEPOimT6ZAhc0i96MC92qO9lOVX05jL/baaCdBgJlY2BQK2Hm2ucG7jBeLywZIWlQYRXDCU8uZl1irFxF0OnEhTLxo/mmAicFgDypkBY/VghErHTh5ttrEZZZnNtnbDcDO3QQHBedqPry7BUrEQyN4H9gwDxkdox0AZTbMlSSODfCe5vex1HVopo0qIgT0ieADFIym+rVUBTNsceTRSsCcirOLMvPLbChiRFf93malxfPuPML+d3unB/zf9SvCiayzBxpxdh99GOYmQuApb0rLEhniKYuR7RoY5hZzLemOkcUIqj1a9lteIODtv3quqo+tWJ9gy8p/JXwAtg0Ga+agHnRotKY9xAWSHHo/JSpw+ulCjaBJeOTjQ/tvcXeg+EMa1RQ3ENgDE9itQxHLT+r7JrpzwntW4b3IbbloheB/NYf0ntGa/Um+CvLVtOLm1psKSBaMPdG07XRrGoWdlNtnGOqK8rt39NhTlUGt0BlpMnRRJ+22xSrn4uJOSksQnIEGCR8KcX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(316002)(2906002)(26005)(6512007)(6666004)(6506007)(15650500001)(82960400001)(31696002)(53546011)(2616005)(83380400001)(38100700002)(5660300002)(508600001)(8936002)(966005)(6486002)(186003)(6916009)(31686004)(66476007)(4326008)(36756003)(66556008)(8676002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3hVKzZGbVF2a1JzcWtsWWswaEUveUc0dzdiOXN2czBEYXVBSWdoK1ZJQ2U2?=
 =?utf-8?B?Y1A3Wml6RTljZEc3SGNPckhLanpLeWFCZDVsOWV4amVVZXU0eDA2U252WjFI?=
 =?utf-8?B?dkk4V1BGd0IvbkdCVnNuSWo4ZFZsU2UwcmNwTVhUME9hdS90MDVDMHJ1Q0pJ?=
 =?utf-8?B?ek9KNFNweFpjQ1pxVmpBL2c4N1dvd2NFamMrbjhMWThLRllxY1ZVd1lzZTFG?=
 =?utf-8?B?ODNHRVdzK0Q0VG1xUHMwbzQ5aWJTTVc1MENob2xDWDNqWGd3WDk3VGtPcU1v?=
 =?utf-8?B?WkcrVVhrUTRmazNpOS9pWkZ4WEdwWUpmRHdDd0V6WFNhRFhBSy9rbmhwSEdp?=
 =?utf-8?B?RVRiODZNd1dRd2FHcEZKN1hYQjBxSWhvK1VFUGNNYTRDMFB1Z3IzdXIzak5p?=
 =?utf-8?B?NDRqVWJ1SmxUQWpwREVFNHk5UzdFZVZKblhYMGRTRFdmYWkvK05qNC9CRWM3?=
 =?utf-8?B?bHJPZ01jRGlQS0ZxaU9wd0dlY0lPb2QwaXUrNnJidzl0WGZFaE1zNVJuL3Ft?=
 =?utf-8?B?SGk1NDR1SnR5UlhGc3V2WnJVM2xFWVVkMHNtejBPUzFIMDl1a0RZNzNmaHht?=
 =?utf-8?B?T1V2bThEV2J2VkVMTGhIUi9pREFQMUNIR3VCa1A4Vm5uQ290WkY4cFVuanNU?=
 =?utf-8?B?Yi9SZWNYOWxabzQxeEp1ZCtwaURaUzRocU5aWXcyZVc1UHVQQndTbHdTN3p0?=
 =?utf-8?B?NjllSkVGQm5Id2IzbnlBMEhHMTRXQndPaWMwLzZvNkJ4aTFzaGhUd3dzV0tm?=
 =?utf-8?B?bHU1aXpmZ3NJbHdMMzlSMVYyMDRxWHdhYjBkclpGYUhmV242RDBWM1RmeFEv?=
 =?utf-8?B?VW5qa3R3MVlFL05EZWNIK3pqajd0TkdCMnB0cURORno0ZGU3aDFpdjZVU055?=
 =?utf-8?B?ZkxHNFU5MFpZUGxkQktHT1owRHdveFNXOFRvTTlwdUVjaFhjbUlpN1NES0Jw?=
 =?utf-8?B?SHZ6TXByYjI1NlpWZE9rTVQvSkpnRW9uYWw0UFZtRFBDNEZ5d3hWeTZRQlpt?=
 =?utf-8?B?TXNGTUlJem1Xd25IQkgzWlhUa0M3QUNZQm5TM0pOeGdKeVpWNDBZdW1lM0E0?=
 =?utf-8?B?RFgzNm9aSlVZOTMyenl3M1pFRVVLNkIxczlCOGlhQ2dPZlJDM3hVdXAvS3FX?=
 =?utf-8?B?eWRLU3JJbUZPT1VLZE52dUNBRjJMNVgxNDZIUnJiVEo0MUQ2NnZpNDhaYjJo?=
 =?utf-8?B?NCsxVitTcjQzeXAxWEdJZ3pURGVOcVFQV1daeGJiRzhlTnVYaHBpdjJETWY4?=
 =?utf-8?B?RDJjbThXL080K3A2Zk02TTJ5Um4wOTE1QVRLU3IwVnJLTHY4VXh3NTJDYzg4?=
 =?utf-8?B?aVhUUEZyd0NRR2toUWEvT3c4U1A1RmtORnFJYmVoOGV3cGdHWmtNZTYzdStI?=
 =?utf-8?B?WHdsT0toc0t6TURQZkJuV2hyOVNoM2lZdUQzczJuSW1meDU3eDBPK1QzT2I1?=
 =?utf-8?B?RWcyWDFxbEdaNmN2SkYvZVJRUGpGc3JpRkZGQUdJdnlkT3NEZlU5Mit0MS9W?=
 =?utf-8?B?d3d4Y1Rab05oZmpOU1ZPU0c0UjI5ZlR0VnFvZ2YrMjJ0MlVibE1mTmIrTVln?=
 =?utf-8?B?M0NXZXlVYjlqRE1MMGoyanM1a05KeEpDRVdZeTdlRjl4TzZGL0lCTkdIZkNy?=
 =?utf-8?B?MWcwc3J4bHllaWhHNjMrazcyMkd0ZVFIWURrSTViWkZuRUJsemIwQ1V4YVRP?=
 =?utf-8?B?SDZyK3lBUkVUVGQ4ZGRGUFNjN3NBekN3MmdSZldxTUVYYkNuTHFOVmxCbDFD?=
 =?utf-8?B?STZmaFRkdjBIbVRkRDJqVTRxcEwyelM0SzROUGNKY1RDQ2RxNmlBaVdEaVd1?=
 =?utf-8?B?UmwycTdHQmR2OGZoK1dPK3dxMytRZzBZOUgzeFRuaTRrMjRuUEYwWk5qODMv?=
 =?utf-8?B?UFpLR0pKN1NzekxCbVNuS1dJT0hYeGlRRzgyeW5VcDg2b0ROTk9IWnhBbTY5?=
 =?utf-8?B?QnJEcm8rOThFaldmQkYvZThybU1tMGVlNW9odVA1WjVLaDFlM0NkZ3FQSjI1?=
 =?utf-8?B?NkdSamxJTm9kOGxwZ1pUd29wc281OWRsbkwreDllNkQvRUQyZlJXclNtOURu?=
 =?utf-8?B?UWloUTVQSko0QzN0OEtQcmFFVldWYmd6VHFmMnlCY3FIVDZTUXN3bjhzWWJs?=
 =?utf-8?B?alphS0Noc0xnVmRvajZQSHFYZXhCaUFsNTRvc2wyMzBoeEVnQlc5Z040V3hK?=
 =?utf-8?B?ZkhGTGlNOTF5UHdHMkR0UjBvRmVBYk9tVVVIbnlQSHBEa3Y4K0pXbDVwcVQx?=
 =?utf-8?B?V0ZQWE9CT28rZlVDY1RmT0x5Q1VPeWxhbzNLNlpITk93Z0VCZjN3cno1ckxo?=
 =?utf-8?B?a3lDT0tPRnNDU3NrUi9hTG14ZEZSM3U4R2FsQlJxY0w2VXEwcmVaLzI2OVJM?=
 =?utf-8?Q?7gYGeF6l4D+q9STI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8f9bce8-2869-4f67-2f22-08da2cb30c27
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2022 03:14:34.3677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P2ozaOV8Aly92uksoKjOcEjP1tvOOIUzwRLhN+8tBu+Po1eD/nnNqNrIFE5v3NZ1JVcZoQaIDKaT38TgVKRbMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Enable the GPT clock
 before sending message to the CSME
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNS8yLzIwMjIgMTg6NTEsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgU2FzaGEsCj4gCj4g
Cj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IEFtIDAyLjA1LjIyIHVtIDE1OjE1IHNj
aHJpZWIgU2FzaGEgTmVmdGluOgo+IAo+IFlvdSBjb3VsZCByZW1vdmUgdGhlIGFydGljbGVzICp0
aGUqIGZyb20gdGhlIHN1bW1hcnkgdG8gbWFrZSBpdCBzaG9ydGVyLgo+IAo+PiBFbmFibGUgdGhl
IGR5bmFtaWMgR1BUIGNsb2NrLiBUaGUgY2xvY2sgaXMgYWx3YXlzIHRpY2tpbmcgaXMgdGhlIAo+
PiBndWFyYW50ZWUKPj4gQ1NNRSByZWNlaXZlIHRoZSBIMk1FIG1lc3NhZ2UgYW5kIGV4aXQgZnJv
bSB0aGUgRE1vZmYgc3RhdGUuCj4+IFRoaXMgY2xvY2sgY2xlYXJlZCB1cG9uIEhXIGluaXRpYWxp
emF0aW9uIChEMyAtPiBEMCB0cmFuc2l0aW9uKS4KPiAKPiBQbGVhc2UgZG8gbm90IGJyZWFrIHRo
ZSBsaW5lLCBqdXN0IGJlY2F1c2UgYSBzZW50ZW5jZSBlbmRzLgo+IAo+ICppcyogY2xlYXJlZD8K
b2suCj4gCj4gUGxlYXNlIHN0YXJ0IHRoZSBjb21taXQgbWVzc2FnZSBieSBkZXNjcmliaW5nIHRo
ZSBwcm9ibGVtLCBhbmQgYWxzbyBnaXZlIAo+IGluc3RydWN0aW9ucyBob3cgdG8gcmVwcm9kdWNl
IGl0LgpwbGVhc2UsIHJlZmVyIHRvIHRoZSBsaW5rIGJlbG93IChidWd6aWxsYSkKPiAKPj4gRml4
ZXM6IDNlNTVkMjMxNzE2ZSAoImUxMDAwZTogQWRkIGhhbmRzaGFrZSB3aXRoIHRoZSBDU01FIHRv
IHN1cHBvcnQgCj4+IHMwaXgiKQo+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwu
b3JnL3Nob3dfYnVnLmNnaT9pZD0yMTQ4MjEKPj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGlu
IDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgNCArKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9uZXRkZXYuYyAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbmV0ZGV2LmMKPj4gaW5kZXggZmEwNmY2OGM4YzgwLi5lMjlhNzE4NDY5ZWUgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+PiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gQEAgLTY0OTQs
NiArNjQ5NCwxMCBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfczBpeF9leGl0X2Zsb3coc3RydWN0IAo+
PiBlMTAwMF9hZGFwdGVyICphZGFwdGVyKQo+PiDCoMKgwqDCoMKgIGlmIChlcjMyKEZXU00pICYg
RTEwMDBfSUNIX0ZXU01fRldfVkFMSUQgJiYKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGh3LT5tYWMu
dHlwZSA+PSBlMTAwMF9wY2hfYWRwKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBLZWVwIHRoZSBn
cHRfY2xrX2VuYWJsZV9kIGNsb2NrIGZvciBDU01FKi8KPiAKPiBNaXNzaW5nIHNwYWNlIGJlZm9y
ZSB0aGUgY2xvc2luZyAqLy4KVGhhbmtzIC0gd2lsbCBmaXggaW4gdjIKPiAKPiBXaHkgaXMgYGdw
dF9jbGtfZW5hYmxlX2RgIHNwZWxsZWQgdGhhdCB3YXk/CkkgdG9vayBpdCBmcm9tIEhXIGRlc2ln
bi4gSSB3aWxsIHNwZWxsIGl0IGFzICdHUFQgY2xvY2snIChtb3JlIGNsZWFybHkpLgo+IAo+PiAr
wqDCoMKgwqDCoMKgwqAgbWFjX2RhdGEgPSBlcjMyKEZFWFROVk0pOwo+PiArwqDCoMKgwqDCoMKg
wqAgbWFjX2RhdGEgfD0gQklUKDMpOwo+PiArwqDCoMKgwqDCoMKgwqAgZXczMihGRVhUTlZNLCBt
YWNfZGF0YSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBSZXF1ZXN0IE1FIHVuY29uZmlndXJl
IHRoZSBkZXZpY2UgZnJvbSBTMGl4ICovCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtYWNfZGF0YSA9
IGVyMzIoSDJNRSk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtYWNfZGF0YSAmPSB+RTEwMDBfSDJN
RV9TVEFSVF9EUEc7Cj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKU2FzaGEKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
