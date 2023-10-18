Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D5B7CE9FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 23:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A79B83264;
	Wed, 18 Oct 2023 21:30:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A79B83264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697664631;
	bh=hDW3fBri3LMHQwGVg0NDdYJGz7JeE0ohwvzyNe+msYo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RXdlTqqW0skTPDHbJlX1rKoLjQSaC+LGuRT9YvR9Uq6KAu0xx84VEgIUr4Dbs5gUD
	 9+umDcf6WCsZinEhY+u/IqKloCAE1Y1WDTqKx7PjX2V/MDJ6hj9Q+FDtLcLqHeVLnZ
	 uPzWfU7cYN1xOk5rcW//RxOZ+ZkiMX4YrknsKGOV96z78qx9khqvsSrIJ6BUA5sPUB
	 wF8EmMzsQTXsIs40rpGCrKiG7rLERK6EbuuAXjAN2alGuMODeDhoKpzBc2XC+O9TZI
	 3qIy6Blaivdvr1px0tjp0GyswrEQtMuXXM/MGK+NsN6Pfj4m5YynXuy6kt26Uk4s+v
	 akbzwp7+/nMxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nb9Pub3CUphA; Wed, 18 Oct 2023 21:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1230831F1;
	Wed, 18 Oct 2023 21:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1230831F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 531EF1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 277D241981
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 277D241981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CBs2zcRIsG71 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 21:30:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CAA9640137
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 21:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAA9640137
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="4708121"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="4708121"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 14:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1003958561"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="1003958561"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 14:30:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 14:30:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 14:30:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 14:30:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbEohWacdWBkkzOMoExXRmSzKo/30e+lW1Fmxm3SaSgJzY8QM6sXTyNvrWAHzyucbu3O8XLzjK2MZTb5ItBAWhkOcde3nioYjLik9G6k5CvQhU53ix5mcjJHr2eL9Qo7kp8WiRTTAEi5QmRdczTePIjCKd7MFRBZZej5Vl9lrv8PNcuqT3hCDioFimsZxO8CPXOY4bIoDBWL+OiFkpEUKC3+6i+wUTbXBC8avyU01uUjL9IPieBY7NrlNsdPConwH9t4Lw8RAh4qEq73UPIGoPU4lJx+oziWi0UGBJ55PlFSmcmUDdT6RRuCBfKTVmORMfXzAxpXu2hWRpTjYWvD2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ptoi/t4CpySYGWq/pDPfMn8tuWavKagB/2CFYUK8lmk=;
 b=ZX3mJhsIE+szP2GrBDWilERPZ/4edTwvuWtyA4P15EAFMQWK2ofBLNwgGlgHHS+R7p9hLsUtXrYCJP48GcXzpjMJXP0G2BvY4WRNjXaZgz0dML/RLBBBUzcKLa+QskN+bftkAgmJYSjSI1M3oH2JYo7gQqm0/fKvMV54ReNhg5Z2YwiNjpa9OapZtoKfQl94dy+gIfuPALX5Ab0RyThOKbhoMuF6h63IDUpzdDzU9mV3M2/ws65869/PZLV+s+YZYCoroG5RPNh1dt09r1eJQc9ir5QvXsBw8Aq5SdvHtLJtSMpiCwUtAomZxPisYWTFGa4a7xPZ+NWzYtE7T2JrbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 21:30:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 21:30:14 +0000
Message-ID: <a686004d-8a5e-409c-9071-237ded8df68e@intel.com>
Date: Wed, 18 Oct 2023 14:30:13 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231018111527.78194-1-mschmidt@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231018111527.78194-1-mschmidt@redhat.com>
X-ClientProxiedBy: MW2PR16CA0061.namprd16.prod.outlook.com
 (2603:10b6:907:1::38) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: 017eb54d-175b-43fc-07d2-08dbd0216ad0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZxaRDoKOiV2WiYJqi4b8CMj67NxqcvFYanafKIx4t1WGMQD62SMPT6vK52ZJOzRT/HbSHkrva3KVQdmwyJIOeEkzKxOtGsWIB7JBbn6rwCkVLqOMGUnSsJlsvwrynKjuusrwX9Wop8ot/tZJ80CVEK3D6iiGtK45rZBBQ3qa5/9YiUVKLBQEhqvsLwm/JljNaYFviQAZv2c1SyFiyYulI1F4zux2dsefUl7mEn+d6mUbAmZYjpTtiy3nIw03z2CIZ1uzDkP1Ga/lIWKL6jfmntTM18plZkXU9mRYUD1DZ6ZnuNcDHk2j2O/9WCpi9L582uTiPzZg7Q1dRXNV6kw7z1twW7RrvagzT4CMjFRL5fD5lhbOv/AC4Gl02jBnC1koR/9EXPOTyDz+g/decDJLVNRgAbDJopCetwnp++fdIoYN0q6mmTe3H0QSwGIPIz9aJIJWURbNNbyyVGZYtEkUu4ogm2YjQVOs0hxRDqJA5AMpn50g8M/RfPfmR7KSxeEIYbO5CbBDYd2eUd5U50kPAYMss5vFIKtwT1wvox9ohXuZOpAuCZQj3+NM1KwXXwdn5osWK6UK2vM2Q96X4d4NZbbYOmXhKlgJnG19d0GMh0pi25aswFr9ToPa9YsXBe0NecO3VE6AK1cCVqVR51kHcQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39860400002)(346002)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(31686004)(54906003)(316002)(66946007)(478600001)(6486002)(66556008)(66476007)(82960400001)(83380400001)(5660300002)(38100700002)(6512007)(53546011)(6506007)(31696002)(36756003)(86362001)(2616005)(26005)(4326008)(8936002)(41300700001)(8676002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWwvckloUzc0dzhiam9Gd09uWVREL0E0N2RQdXRpUjVrd1BKcEN6dC9zSW9K?=
 =?utf-8?B?aUJBZnhhWC9oVXh1WEFQV3ZxWCtZKytQSlFTRStCZDB4YUFYZ2ZvNFl3cS9R?=
 =?utf-8?B?SW5yVVluVTBLalZpbXNDLytQZm94UWlOV1RBRytHNWkzcFhYVTIyTzZxUG5G?=
 =?utf-8?B?QmdRS25ocWFiUFNYaVpJa0lOL1ZVQ2JIbjE3TzFYcUZYcmJzUWU5UWY3Q3Rx?=
 =?utf-8?B?bE53ck44VlIvTUtlWGpOemJsSlpoSy8ydkJ6RS8wZGczVjk1TkJCaytoSDJ5?=
 =?utf-8?B?c1J1MHlWWnF2NVBxSklpQ1dML0VMdkQxdEV5UVFNYjBGaUtMRmRwMi9rLy92?=
 =?utf-8?B?QUdtejVvWHV1Tm83SkVSaVd1cE5rd0FqYm9VUkRDRmxtaUVmRUZjVm40RlNN?=
 =?utf-8?B?K0krTGRwQmhnWkk5Mk5IamZrem5TRjdDdGZreFBQZ1FWdWN2OThwRHVtY2ZH?=
 =?utf-8?B?cEx0SVJrR0tWbkJrRzVmd0hHNjlKbmRGT0Njdk91cGd3VzVQc0lScUxPbW8x?=
 =?utf-8?B?RmxpTVVHQkdJN2V6RlozRTJUb3lzVjVMa3Fnc1lqdlhPTzI4elBrR2NLN0pt?=
 =?utf-8?B?R1NUV29hb3AvME1DSzQ2c0EySFJhamtxdG1hY0dBaEVTUS85VFZEY3ZEMEJC?=
 =?utf-8?B?TmlWWDdVUFFwaXFvZVIrVjVQS25Ec0w3LzBpNDIwOFBTcU4xVkp1Z1d0YWkz?=
 =?utf-8?B?eDJ4L2grYm5neDRVTEI5MytOMW5ySitoTUh3YklJTEhMZDhNaVNwNDRVS1Mv?=
 =?utf-8?B?WDR0QXN1YjlrMDhqZnBZWnRVK3ppeTVhZllqUG1rdk4xR2NIUlVZck9Cd0Y4?=
 =?utf-8?B?YUdVZExEdVNsSkVLbGJES2pzdnBLTXErem9lYi9UTHMyV2dlcmo5TWRiVGta?=
 =?utf-8?B?dldYU3NvdjNwWUpjZUdqek1vQ2VyaWdja05vaWxEZCtHK01zbnprZVZQYWdP?=
 =?utf-8?B?RXE5S1VneUs3bkk0UHZuVVlqM1BBeDk0NGM2cFdMYjVZcVdQMFJvYURTeTJt?=
 =?utf-8?B?cS9OVjZoOWlOL29QQy83S1J4RWY5cUp1WklsdUpJeHg1VHcvZjJLZjdrV2dK?=
 =?utf-8?B?enZKVW9JaGl5YnFZT3FFZEM0a2tpY2pnaTd5eGloMjNwNy9LR1dnbExxSHU5?=
 =?utf-8?B?aHJXNG1BSWJYMUlhY21XQ2llV2FDUGJzUzYwZEVZZjltT0gySVhNaUp2N1pM?=
 =?utf-8?B?dFJZN0FzckZ2U1lsZ0V1N0piMFlzaWFxV25pNjFuMHhJV2djampjT05nSWhw?=
 =?utf-8?B?SlZXTHFjNk5LTzg3MmlpQkdVbCszdm9pWjd1UzFScFUrWU45SDNWSTdWMlpt?=
 =?utf-8?B?NkhMNENDaEpmNXNWeXZraEN2bjUxUnZoZmdnWWtWYnpjUk5aM2wvZStzZUo2?=
 =?utf-8?B?b0NIdlFWditTbVdlSTQxUjR6ckVTS2Y4djkrQjYrMnl5QzBLZThXQmJqejlV?=
 =?utf-8?B?L0svNEtXQ1BhN1U2cGZmcHFZaEFMM29VRTJBRmljOGx4TGo1b1pOZ1BSZlY1?=
 =?utf-8?B?TEJLVk5ySVJYMVpnL3JSVHJkbHlPN2IrRDVDYzVVTzZNR1lST1VYZ3hKNzZI?=
 =?utf-8?B?WCtIZUV1MjdjUGkwcGFTQll4RWprUGFiMElWZVVSemZlYnpDY2NvTnJtRVpQ?=
 =?utf-8?B?eE1BeTcva2Y5dW93bkN6eWZjRHE0M1c2d0lzWmFoZW9kdnVndDdDZkQ2WDEw?=
 =?utf-8?B?OWxpc3M0OGcvUGw4K1ZETERlTkpzZElkby9OMmlrWncvek9tc0h4Z0J0STR1?=
 =?utf-8?B?WnZ0bXFYeTJ2NUQyZmFkdG1HaHNkUEtvUXFLVmJHNmNkSE95MWlYYkJESVls?=
 =?utf-8?B?d1NTNDlSYkRVekpaMjJETk5sTW9sSHo1MFdVN3BzcFIzcVFUWmpXWUZLOGYx?=
 =?utf-8?B?YWdmeU44alkrTzVnTUY2SzcwZlVtUU8wZDFFN05JazhpVFE4Vmk1amZzK1lO?=
 =?utf-8?B?RFhGb0p1aWhiTVdHd1QyRnFlWkY4REt4cVQrUkVVd0dXdTdFTzNMRDFwQURV?=
 =?utf-8?B?QkhOOHZBU2pCaVpGVmJGRWtUVUZvUG8wOHdhYmZONVd6dlM4NUFTdTNwNHIy?=
 =?utf-8?B?cGR0K2RJMVhzWm1MWFlZTFdFeHgzZkdva0ZhRFJYS0FtQ3ZqZ0JTUGZjNWdw?=
 =?utf-8?B?SDRhQUxZcFBaVUtHdG0wK0ovWm82dXdEa1AzL2pXNjFNYjJINGhyNmdOWEF3?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 017eb54d-175b-43fc-07d2-08dbd0216ad0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 21:30:14.8356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eiYmvOC+Wuyq1z5hFevXY+at1D2cDZfhzsQDssdWRIVebEYukjkS/T5+aybxC+86y4Ckeqqy2GtCYk2qkVMrvOyXN1JTTzSq1bxbb9Yftkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697664623; x=1729200623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bcqaBECpD0JMWieUPkXs1PLTQaFttMxQaT8hz2/16xY=;
 b=M42v99m8BeKoXWTQN0fB/0LYT03+e7kkmHkT78qRPNcuYKtM1HO4Z/8M
 Xrkntqyt+q3WD+ivPCvEZwKzGibYlNKCIL0ZC3bWYJqZwtOCyOlUQ6B1p
 NyVZU2dBX+mz2PqghG93vVpCR/G/AhDh64orS1RKXTQf2/AUzsV/O6h2W
 wioIBSwBIZvKgu3ezSZXXRiS3fEhZbO5E7ZcAkyECLGU/Ou+sHJ0pQnD4
 +cgrFqfz+9KyKJo1X9zsGPncxpWTsrjCvkWFV89+AE94/EHUDNGWIpX9J
 pY1vWAAy7+NxwwbWqHk+zNLThVylfzNRkS+W5fZa8uJiLDm9usxCDd55r
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M42v99m8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: delete unused
 iavf_mac_info fields
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/18/2023 4:15 AM, Michal Schmidt wrote:
> 'san_addr' and 'mac_fcoeq' members of struct iavf_mac_info are unused.
> 'type' is write-only. Delete all three.
> 
> The function iavf_set_mac_type that sets 'type' also checks if the PCI
> vendor ID is Intel. This is unnecessary. Delete the whole function.
> 
> If in the future there's a need for the MAC type (or other PCI
> ID-dependent data), I would prefer to use .driver_data in iavf_pci_tbl[]
> for this purpose.
> 

I suspect a handful of information across the Intel drivers could belong
in .driver_data instead of the current method we've used.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 32 -------------------
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  5 ---
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |  2 --
>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 12 -------
>  4 files changed, 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
> index 1afd761d8052..8091e6feca01 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_common.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
> @@ -6,38 +6,6 @@
>  #include "iavf_prototype.h"
>  #include <linux/avf/virtchnl.h>
>  
> -/**
> - * iavf_set_mac_type - Sets MAC type
> - * @hw: pointer to the HW structure
> - *
> - * This function sets the mac type of the adapter based on the
> - * vendor ID and device ID stored in the hw structure.
> - **/
> -enum iavf_status iavf_set_mac_type(struct iavf_hw *hw)
> -{
> -	enum iavf_status status = 0;
> -
> -	if (hw->vendor_id == PCI_VENDOR_ID_INTEL) {
> -		switch (hw->device_id) {
> -		case IAVF_DEV_ID_X722_VF:
> -			hw->mac.type = IAVF_MAC_X722_VF;
> -			break;
> -		case IAVF_DEV_ID_VF:
> -		case IAVF_DEV_ID_VF_HV:
> -		case IAVF_DEV_ID_ADAPTIVE_VF:
> -			hw->mac.type = IAVF_MAC_VF;
> -			break;
> -		default:
> -			hw->mac.type = IAVF_MAC_GENERIC;
> -			break;
> -		}
> -	} else {
> -		status = IAVF_ERR_DEVICE_NOT_SUPPORTED;
> -	}
> -
> -	return status;
> -}
> -
>  /**
>   * iavf_aq_str - convert AQ err code to a string
>   * @hw: pointer to the HW structure
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 768bec67825a..c862ebcd2e39 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2363,11 +2363,6 @@ static void iavf_startup(struct iavf_adapter *adapter)
>  	/* driver loaded, probe complete */
>  	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
> -	status = iavf_set_mac_type(hw);
> -	if (status) {
> -		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", status);
> -		goto err;
> -	}
>  
>  	ret = iavf_check_reset_complete(hw);
>  	if (ret) {
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> index 940cb4203fbe..4a48e6171405 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
> @@ -45,8 +45,6 @@ enum iavf_status iavf_aq_set_rss_lut(struct iavf_hw *hw, u16 seid,
>  enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 seid,
>  				     struct iavf_aqc_get_set_rss_key_data *key);
>  
> -enum iavf_status iavf_set_mac_type(struct iavf_hw *hw);
> -
>  extern struct iavf_rx_ptype_decoded iavf_ptype_lookup[];
>  
>  static inline struct iavf_rx_ptype_decoded decode_rx_desc_ptype(u8 ptype)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index 9f1f523807c4..2b6a207fa441 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -69,15 +69,6 @@ enum iavf_debug_mask {
>   * the Firmware and AdminQ are intended to insulate the driver from most of the
>   * future changes, but these structures will also do part of the job.
>   */
> -enum iavf_mac_type {
> -	IAVF_MAC_UNKNOWN = 0,
> -	IAVF_MAC_XL710,
> -	IAVF_MAC_VF,
> -	IAVF_MAC_X722,
> -	IAVF_MAC_X722_VF,
> -	IAVF_MAC_GENERIC,
> -};
> -
>  enum iavf_vsi_type {
>  	IAVF_VSI_MAIN	= 0,
>  	IAVF_VSI_VMDQ1	= 1,
> @@ -110,11 +101,8 @@ struct iavf_hw_capabilities {
>  };
>  
>  struct iavf_mac_info {
> -	enum iavf_mac_type type;
>  	u8 addr[ETH_ALEN];
>  	u8 perm_addr[ETH_ALEN];
> -	u8 san_addr[ETH_ALEN];
> -	u16 max_fcoeq;
>  };
>  
>  /* PCI bus types */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
