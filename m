Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6D84FC4E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 19:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B69684FF3;
	Fri,  9 Feb 2024 18:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxomUDIGVtWx; Fri,  9 Feb 2024 18:52:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B20288506E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707504720;
	bh=2ODRn7+a/PXn++FJ8iF4qWJnUx8jlOXvDGj76gsvvBE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bR4F2RHWrciTKZPJvab5mERL24xjHXRdaJJU/8QqlhHnfxzP68Y2C0e6NLx/S78GC
	 Rpwk7wVbF0s5uMOpJLtD/p9wr9PhD1/46s0aFqHRpxhQjW3rznXfwfrc7a7ikpC3ES
	 T4dl+fFifmYnSXLZPnriNNn1lhHBi6ZCVWdopX6FJpcx3erJ58a01v27mp7+tpKjBs
	 J31rEXFo7wiPbe1K/Jy/f/SUU4KPlL5zSXTXmJwlZkzrT7oP4l3uagnd3/yLjY2IuP
	 A3FPnojgUZYcebuG1XR7EslrrwU5RLgYYGlqjnrSsq+O5TpNHYND8ec9kgjdZO4o0c
	 mkDGDxzSakhOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B20288506E;
	Fri,  9 Feb 2024 18:52:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E459E1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 18:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC8F641ED1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 18:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0j3x-Fyglhu6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 18:51:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 600E741B86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 600E741B86
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 600E741B86
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 18:51:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="1636350"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="1636350"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 10:51:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825208669"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825208669"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 10:51:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 10:51:43 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 10:51:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 10:51:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 10:51:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hj+m03amEc199/33V+CwmitAsc/IuXd+EkIpa+U586v/KX0Ze0TxDTT/5h7ddB3eeDIhDLUzoBMT21PvmGuZPGIQXFj0eXc+iQrjI9/Il1Oy0KuTjGla3xEPmFz/XoBnDt3tnuxNVyPd+4ZzNkIy8E6AekLc3EP8qzMGKxHUCbxgWIgOHaUCwWmaUGsVUwq7lInBHi6+nN7hpTKJmPxJ2caDMueU4fxzd44yYcAcgZoljy3aDRVfztts/hY1j269wPBF8NUmyab9PCp+ycBtzvKeTqzuC9uDn17UPH1HGlh4kXCCczElKYGvbmGMI8xVuekLHXwgUEHrQJE589XFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ODRn7+a/PXn++FJ8iF4qWJnUx8jlOXvDGj76gsvvBE=;
 b=StGkTEWw4Ns26WRbhIq84XjEk4ZXliCIRA/iDGoYwza5lgYh0GHZubYLQPzJ+RFYvO/9T1lg5UD2hYyRhNw+n3CqVqFtX8hffKnTpfmyPNlDI2dtGCKJSbYB/Ds+v7cvMGl2y/e6CnxEeLJFIVXVSOi4mDk1QPIrk+HAsa0uqxMYpHNf3iuPVYbgzyGAllFSO4TIz37pqGXyQH0yJEY5xn66fniTajXpg2EXJY6Nf3nEsenWk2MrVPnR5K6g9firJA+7QGUi5rQYCt7VVTGbU+smalIECAMn8G+EPZ+ApikxEHn4dCKSqo/zhOEbfLWcYKnUnPqFzkuGkkGVAFFojw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BL3PR11MB5698.namprd11.prod.outlook.com (2603:10b6:208:33d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Fri, 9 Feb
 2024 18:51:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 18:51:41 +0000
Message-ID: <f9137535-4210-2476-9d86-5425b5ec4f3e@intel.com>
Date: Fri, 9 Feb 2024 10:51:37 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
 <20240207161923.710014-2-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240207161923.710014-2-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0305.namprd03.prod.outlook.com
 (2603:10b6:303:dd::10) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BL3PR11MB5698:EE_
X-MS-Office365-Filtering-Correlation-Id: 15361203-3000-43d1-73a4-08dc29a02711
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IYI+PzSn47vzaXEpF9dyD+jdSWrI6wbdhkQllPe20Amh405DvPPemyBQpUuqArNIzWhnoHgCgNUUZ/NZmhijtEyWnkTE25QBWmGorWgRK6Rd/fO+HJk/AD0wW2prrKIAM6Lx0BNf+Hd0j/+pv3p5aQ5gG/WVz0sy3f57SZ5WBbQ2lAtiqed5Q5CwTdIVRYhMFpFrLRhF/ASUxtvXOq5RS3hPO3BZW8XJKKLBWScJP+7PVYQVOh0zQF+xUyv3DARH/jAA+DxYuM0kfdxkfngJbIkzojW0x+0SB+drA63VJz8E3IJLA2bglRzP9nsGPRaC9cx+ldNeyPy6m4AKWGdrDGMh3Yko3U9MdvzFqQ13S4GFJFMq5tHLZhS5y0q8SnpnJHKHavzXIJv8wlu4Ee+hnGDhigOXwMf+k8Bme3AVEElGYr3S+LYTeIl7UqobrN+Zm/y+K2DoMrTtPZ1efbpicJoSb8Lx3yvTtucFdLz0V4YjECoYFgOF2DHx082Io/zasJfzPVg1eDNuO+EaSH9OU0z9Qfr8p7nGiJNt/ozHf7xBTClSYyOLyBXqIJjOdxaT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39860400002)(136003)(230922051799003)(230273577357003)(64100799003)(186009)(1800799012)(451199024)(6666004)(31686004)(2906002)(54906003)(4744005)(5660300002)(316002)(41300700001)(66946007)(66556008)(66476007)(6486002)(478600001)(6512007)(6506007)(8676002)(53546011)(4326008)(8936002)(107886003)(2616005)(31696002)(38100700002)(82960400001)(86362001)(36756003)(83380400001)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OExIakc1ZHpoVFYvb1FscHNaSjFORVpZUEM4b3VlTmtTYVdEWTc2NldXTHVJ?=
 =?utf-8?B?Uzd6a2RSME14Vkd0SzlEUkc3dU9mMEZoWWNTQjlrV3ZYT2pHMjFQWkxaQ1kx?=
 =?utf-8?B?Q3puajlRSXNQOEFNbUtudk1yb0ltR2RLeU1vY0xjaFZpMHJWTHpKNnYxQjRL?=
 =?utf-8?B?NFhQYVh5cm1QMHFWWmdMVVVJMkxrVTRPRXlFa0ZHY1BsMlc1WVNNRTc0TTBU?=
 =?utf-8?B?L1VaSkFjWitIZ0RpeWZNOFpWU21ibEtod1ZROWxvbmpRckg4ZDFFaDBucWdQ?=
 =?utf-8?B?ekxyQitBVm1Kei9rVkJDZ003djZCRXpvUG9VN0d5eGIweVUzVWN2UUtiVXJ4?=
 =?utf-8?B?RjU2RmZTdTQ4NjEzODV4amRBeDhRVG9pSXdEOUZtcDhSTWJLeDJId2QySkd1?=
 =?utf-8?B?STdrNm84d0tLQW5ZTWp5d2JqL0d2RlBzMlhGSEJVd0pMZ2ZMR0ZaU3pZYzQy?=
 =?utf-8?B?WFp0TzBPRWZpYm9OWGRQMUQ5R1ZLR0F6Z0FFcVloVG82dXpRMDFXY1dDV1JT?=
 =?utf-8?B?YlF1RTRCZ0EwV21EQXJvNWUzbWJ1UVBLTXhxcVR2eVhlVUZNUEhRSjZmY3BU?=
 =?utf-8?B?TTBmaHRJc0tmcllZKytBM3JDZ1pCZzVuR3drODR1NlgzOE9HYlJBWjk2eFQ2?=
 =?utf-8?B?MlMzbVJsVE5qN3JLQUFxNUh5eDFyVElZRVNwNTZJa2ZtRitUMmR5MUhYLzRu?=
 =?utf-8?B?VFNhdDJDa0hESjBIcWllZk03TGJreFpUcTBFeFhRdDVmeE5SQUt0eEl6bUQ4?=
 =?utf-8?B?YjFocWpZL0pOZ216TzcwUm9MQjM1RmR4cTVVTVlZYktxZFFEREpIMmdRNE5u?=
 =?utf-8?B?YzEzMlduVDY3Z1NVUjloZG1KdFgvaVZ4QldyRml4eTgwTTN3NHJQVTVJRWtI?=
 =?utf-8?B?Y0NPdEJ6dTl3d3FyZURTeGNiRVFjZy9Dc1kvd0JkMjV0UU5xVmt6ajhTQzBU?=
 =?utf-8?B?d2pMVTNuek1JU1ZucU9sd29uRWpOMDU3Z251ei8yNG9wWDU0dEs4ZnRoRFhq?=
 =?utf-8?B?MUo5N2plUGNLdi92Z3E4QVRsSHlIM3pBZ0NQYkRSS2c3Z3A5Y21GU0c0UUtI?=
 =?utf-8?B?czFRS05BVm9HdXN1SUM4REY3OHFFcnNSbkJ1M2k2T1BINzFxMmJ3cHR6L2Ny?=
 =?utf-8?B?L0JralYvaHBvVFNWK2NCa0xjaS84UXptMW5pQzNWTjZzMUZkOGt5MzVOTHkw?=
 =?utf-8?B?RkNtcDhrNkdEUWloc2k1cytzMlhoZzVibGx5cGdkQUwxQjlRZzJUWDcyYmJX?=
 =?utf-8?B?Z3ArYzFtY1VOcHYyazZRdHBjWnhFYkV5SElSaVVLQWlRa2pkb05ROXJRU2VR?=
 =?utf-8?B?TVR0dGNYV1BNa1RwRmVrOEtvVEYzc1pHeGYraHpiMGdBMnFnL3M0ZXlXY0dE?=
 =?utf-8?B?NmY2NExLK05hQWxYR3pMVEt6dmVnbm92VnFjeC9kaVVDOXdabFZ6dDArZy8x?=
 =?utf-8?B?RmZxZUJmSW51aUhzNDlEeDlRcnpMTll4WjBNaEQ0NDJCb1NFSDA4QkZUNlFw?=
 =?utf-8?B?dVlPczNvSHJYNENxZUdYeHkxb3FtRUY0bDZQSmIrRWFxcUNlbzg2VkhyNkww?=
 =?utf-8?B?TmFhYWxpaThRS2ppeWFLWms2MEZUZk1LMVM3azZEUDA5NmdFUktZL09IaERB?=
 =?utf-8?B?WG51OHd1VEd4R2ZJU29aYXpsQ1ZxTEhPRzlRN28rMlZwQWpvT1djR3g5WDBQ?=
 =?utf-8?B?VERQckwzSjREeXB1Z0M1aDdJV2ZEMGZmSXlxN09ObkVOcnZDUTVPaHc2SHho?=
 =?utf-8?B?NG02QldFV3FHVXprTHNqVm9sWjNBS3NiVHBxWGoyaC90VmtDZnkwbjFOZE1O?=
 =?utf-8?B?WkdrS2pJcTVZcDY4WGtxUUUyZ0JoZzViRzlBbjVmV1Z2NXhoSEpuaGUyS3pj?=
 =?utf-8?B?NkNWTFEvNWcxc1pEM1ZGYUNidWpodVBzaCszNW5udDRmeFVTOFBGQ0o4UFU1?=
 =?utf-8?B?THc5WUpLSkw4QnVuZSs5MXZsRW5sQlRTRjM2OUgvRUNKUnhZdXNNOUYrZTF0?=
 =?utf-8?B?RXl4Z09TTmFiWS9CeWNsbW1PeDFmdXJ6eDV4NW02aTVBN241YXdMMExNWnZ4?=
 =?utf-8?B?ZUsxMmF3N0FVdWpTSG5FclF2aTBhckRCRS9hdDRubVdzYkZPaU9uUVFnWEhv?=
 =?utf-8?B?MHlvWFhtUGN5ZUdUQ3JyQjhyeGw3M2N5a2E1VXRGb1JTajVMMUx0b05YSzNr?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15361203-3000-43d1-73a4-08dc29a02711
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 18:51:40.9572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2YAqzo0EPSIJ1f7GHNmzheW4BVN6+pouiuCbbjgcptOrIxuVkP8WDN1Yf0jHQ8lliGj9F2rDzpRg7txZfSFtikkt6PZy8qFje3ciTFXpOY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707504713; x=1739040713;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PQhFONmUkFbd4esElhXei3Z5i2+OgbJk2xCwFWQnyFA=;
 b=fKo7CzvBFFMAuOxN8WqXa81O5eb/wfQa1IAdHtLebOO5vgTBaHWtWMLJ
 3OvrrShzyuvmVY3LBD1SgJkqzrCxK5DWzD6HNDRXQ54Xx+klwmUf8UdXA
 ntRRKrKx7xOMPeMvNm/E+hrNAUkAwJKDuL2jG73z2TvsP82T/GbvhFEsj
 DMs5IGxDy1yRgmGB3GWmUUVqHMDdBcF3RfIJo18XoQIzzZgLbzFxQN8U9
 cEhGhpgHncKnC8Juczfeom49VPecZQLIORNUC91Cg3kH525RPuWg+hw6+
 90W0NI++PLK2TO1B6UiUhPTqx/ghaRR0zhy9khlU6CGmQEWSkP0+xM0Jl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fKo7CzvB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix dpll and
 dpll_pin data access on PF reset
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/7/2024 8:19 AM, Arkadiusz Kubalewski wrote:

...

> +static bool ice_dpll_is_reset(struct ice_pf *pf, struct netlink_ext_ack *extack)
> +{
> +	if (ice_is_reset_in_progress(pf->state)) {
> +		NL_SET_ERR_MSG(extack, "pf reset in progress\n");

As pointed out by cocci:
drivers/net/ethernet/intel/ice/ice_dpll.c:47:25-49: WARNING avoid 
newline at end of message in NL_SET_ERR_MSG

Since this needs to be updated: s/pf/PF

> +		return true;
> +	}
> +	return false;
> +}

Thanks,
Tony

