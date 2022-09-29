Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 099235EF993
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 17:55:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1262041B7A;
	Thu, 29 Sep 2022 15:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1262041B7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664466917;
	bh=WVGIzP3F0w0V34cGLfs8HTOiAYiYu5X9kihXnGtkp30=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7TanSZfkwH9siWxoowjl1Csh3QSwSFEk/tj5bSGKcpM60WnMAysaTHFVNzlGn4Yk7
	 t+V4g3cuENlERJzw0viYpAEfuf/3sL9wi6Hn5Ofc9Cmtyn1Yq3SYEp0kdd3xetnw43
	 kexDUtbbB8vw8IFb5nhBCMstK41W/Dpm8ZGBIZmOy6zUT3iwoOpjKhRu5kZbH5Uz6m
	 BIJxfsmK3V38L+gd2aivV/KdKMfITbFL9UOLbLDXeE+jyakx6SvsB5mxkRE8GHYyY+
	 CcYfC6Fn+R1lYH58+dhsCUlXmlVk5zGZBa4Gxl1e1KAWuupbp/SQyYOUCVScTzmKk3
	 Sfp3VT2FT4UhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Efi_5d52_PJ8; Thu, 29 Sep 2022 15:55:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8368241B3B;
	Thu, 29 Sep 2022 15:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8368241B3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB2041BF385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C49394016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:55:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C49394016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_Ws8sJMx1Lt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 15:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1FF84012E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1FF84012E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 15:55:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="388215943"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="388215943"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 08:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="684890809"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="684890809"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2022 08:55:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 29 Sep 2022 08:55:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 29 Sep 2022 08:55:04 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 29 Sep 2022 08:55:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TopmohPMSwXNA24ZNCT3mylZ/TBlXTXYnJNom8ZaVLt3vB+E1x3KLfOBxwsvYIrV5wwc8aTY6M7spZak+yoQPWjzldfflfG5gPcsdNHnLTj01P26lKK0dqMQTmxYXn44MTIr5eAQOyXRp0i/OldPUnFUDKFwYluPOZYBcAokKkvicU7g3cUpEjp2q7SyzhAT2q0YKD4XhFAVlhX4W1v21x+ouJ3CBUH/WcvQNbujykY7KCzSiFeF3DbIVkEkqBoMwkGWWfyAbhQGwSxQeE65HsIzRcq8uZ+WCbt6hV41WlUpY8WtgfdflLlN2NSfFm+jE+elmwuanP/mglO+erktkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFlvh7AYWGc39t9/B/cTGHL/i7B/dNwhOfJMU6ELpNk=;
 b=m7xgMyqH6rTw0pqZlisGwJXXXAKH0xn5lf0NAsJm2yu73ZJ9erSM7P9mnMpK1p0ysVoKL0X8OmwMtI/jT1T4yA6C37ra5RcIJwD9PSeQ0pOXA0/lHr0l+B3TY9ZhBQjGeWOQqguYnmrc48HagaUjBSX8zbZsCNpcd+EHHzxVBi98L59kv/pkKdX8EJc70EiGWBtVtYd601t2V6Z/FpmHH5gDhtlXmb3tv2H8FUlZ6J5IxxieQZqj4Z+3HS4RpMcWT1w+C2D6fzW5DfN1pxSXNfQNtDqhqtTJyWd7ey/i1LOoK74V/41Ek2ZK3RiK1Wkrxw84cfLen5YrdjQr2jjTFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Thu, 29 Sep
 2022 15:54:42 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::e1bf:5cad:6e0e:cd0c%7]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 15:54:42 +0000
Message-ID: <79bbcecd-0d6e-f8e1-3895-2dbf2f3903d9@intel.com>
Date: Thu, 29 Sep 2022 08:54:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
 <20220929095307.2c60d651@p1.luc.cera.cz>
 <86313d0b-9d2c-289f-e13e-742cdeb45aa7@intel.com>
In-Reply-To: <86313d0b-9d2c-289f-e13e-742cdeb45aa7@intel.com>
X-ClientProxiedBy: BYAPR06CA0050.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::27) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY8PR11MB6939:EE_
X-MS-Office365-Filtering-Correlation-Id: 29763e95-3ce4-49d7-7423-08daa232ec0b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JLPWIGoXEPG/kNXvWj7pyc+T2C5JLfj5O7/XMfAVv6ZhSdSnXY62nyuN/VMGnN60OdvxsTL70O6cB5ni9MgK4g6W+w1ZwhWoe1pPUrk5NvdffGvN8DXnFriXd3qMKz1jLuTpM1MsyTB5ELRxub53ABLDqXVhyYrco6QiWHOO7+VGOsG4NcyL7gZPEVyadITHP5lugJeOa0RqBOQ+My57kk4d9KfYLgLt0FmpH0cI5md01miGbGJvuHd1/jbr3zSKBG/2iUpT6SYO4cbzqXviXldwfBJbog/QqloVIbAuxtr4oJb0TPkKU47126xL+ojMR5jhuUedbqqAjv7VbQwK7+sitXlcrWNDEIODrwWYFn9aKJevRendrOsXAfIlYpAXX7lGrObe1P4uxJzm7SBufHSqmhkZ8v+wJK79pUUDoN3zZShS+Xd2PJWMRrNqm5fuebgcTx6O2vUIz7xQPp6XwaQbe8HvWspFTY9fXwTsEVmX2Rf+bhOBjsiqsI6+fSXPLBl9LXXLpthczt7gGHhPJehdnSFyOTlg1bb7O7fqslvNo8uAhNfVPJDjhB9fmY8RC8QRUgVlXsaXB85V4iPxeD3ur3mFk+5I7YBQMeox+At86Vr5893CS9ix1koburE5SCFeDi8NPL5WPTryAok/6PToglKCijYE/1ECROVx4SuL6/ew7LpBPAtH9uMyz8c/Eld++Lo+Au7+Ek2imxzw/bmWc0fqVRKAKcbHJVrbb862XKxG02O2JKem3xtuzbnKOwB/tDY3TSa85Ik+Cqt7XyYiWr6/d37Ly6GwfhTo1y57sh/ulxx9fvh2kdrjg8KtaKEPd1CSdi0AYoBtfk4cDaBdL1/FZmf8A4+VfsiFsUxo116J+TEfMz1zSiY691Xl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(39860400002)(366004)(396003)(451199015)(36756003)(41300700001)(86362001)(8936002)(2616005)(31696002)(31686004)(6916009)(107886003)(6666004)(316002)(4326008)(2906002)(53546011)(5660300002)(8676002)(66946007)(66476007)(66556008)(966005)(26005)(6506007)(6512007)(478600001)(38100700002)(186003)(4744005)(54906003)(6486002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTlzU09BVzBQeFZhRkVGa3RHTHlZR29VNnhEbUdOMTdhdFRUQ3gyY2JLVU1B?=
 =?utf-8?B?Q1UrTTJzOG01eGoramZtMm4zZnRHU2Uva2pEaEorcWI0YUhBN0Y4bWdwZkdC?=
 =?utf-8?B?YnZPaXJ5UTVwQkVlUExiazFlc2lHVE1vNmtKM01oMUlUb2JQQXM3OC9LSVBC?=
 =?utf-8?B?cEh2dTYzUjB2TU5WM0pBZXNpMm42V05TMjlEMkdqaXdST0F5TFFGaGZVNHhs?=
 =?utf-8?B?ZGgvcm9oS3V0NW50aVg4SWxKNGZPTC9mNmhMQkcxWGRtYk1LMVVRbDFnSHN1?=
 =?utf-8?B?NlZsa0psRUhtSjR6cXM2U2dEVDNlcDMxL2lkVkFpb2VxbnpBdE9uYmxUVi9M?=
 =?utf-8?B?Znc0TXpBZ0tZUktPMDF2MDAxNWcwSjczb2dsYjlHa3BvN0cxNHBxTEpqUFZa?=
 =?utf-8?B?Zll3R08wWmtuYk1IREdqYkxTc0FjcEo1WldBU0I1NUpmKzZqd2t1YndYcXlB?=
 =?utf-8?B?YW9wYkVSenFWTmFnMTZwVktCRENGRHgwamlpQ0NhdEZJVmU4M2NxNkxSTVVN?=
 =?utf-8?B?NFNKZ2JJdkQ1VWxYMVJOdk1xZTFKTVRva2xHU3NTTVI5ejlQSmk4d2piRFlv?=
 =?utf-8?B?NVY2SHJNeEFVekR6MVJYQUJqV1hnOXp2REJ3em0xWXg0cDhhOE1FL3hBZXVz?=
 =?utf-8?B?Qlp5b1l5eWpYblZZWGhiN1JZRW9nZDJjVzVIOWpnamNDMVBJVDk2TklZTndF?=
 =?utf-8?B?Zk9xWUNzbWp0d2NTblphdDRaMEFIV3JuTU1XVDdtcTJFTE45Y3Noc3FEVFhr?=
 =?utf-8?B?dDhSckp2S0xQZlJaWjZnWE5vM3FvZHJJbk9vR2MrdWR0aWxhTDJpaXN4ME8z?=
 =?utf-8?B?ZnpWSkthaWQ0M1FjZXorTzdYNEtQejZJZ0l0Z1ZCRlV2eUtwYTltNEdmSXg1?=
 =?utf-8?B?UjlLRVFEM2ZNekVlSkk2dlpYSU9SbklZSzVJNlluY0hXZUFwaXFUUENOdUJX?=
 =?utf-8?B?SDJBMHVZRHlja0oveDhJZzIzKzBNbXA0ZU9iejJER2R6dzdpTElxQ0hGM1I2?=
 =?utf-8?B?MVVEaFBERDZsT2RXTmMzNDdrWDV1ak1PMnRUSnNNY0JXbHlhVUJMc3lPZnZR?=
 =?utf-8?B?K1VLTmxLeW5Na3Rpemt1QjZhUlJ0U1F6SHJOMU1jYU5RNkhwdnA4YURZVzBt?=
 =?utf-8?B?QXYvbUtWY203aCtqaitmZEVFZCtVN2pTeDA4S2VXSzNjSlNRdmFuUlFlcUFk?=
 =?utf-8?B?Vnp3OWlMbTJJTWQ2dnRnTmpKZHozVTlvN2podHc0cHFSR0drak9xWUFDaks0?=
 =?utf-8?B?TE1ZSjNkMjdreHF6TXBYbFZlRS9yRldFZ3FCZ1dUYjUrTWJjZ1pPY1I2UFYy?=
 =?utf-8?B?VUw1U042OEpzd2tpTW10Tmt3cUk1KysyclM2ZUkrU0JhU2lsb2hXY1ZjRWt2?=
 =?utf-8?B?bFJxVXV3MTBCVS9tNnMxbFg0YTgvZ0hEWDlBS1prZytxTG54YWttOUtpZnlM?=
 =?utf-8?B?U1BXS2prMnJDOTVOUHo4THNDd09WL3MrdTNaWXdRWER5NE5xUjR6ajhSUXcy?=
 =?utf-8?B?Z3NmVG9DRFVuN3pZWkZkV0lLZXJuQkFBdWFWNlZQL0lUdkdhR0ZmekR2NW5r?=
 =?utf-8?B?WGpjZXNNV1V3T3ZqVVNiL0JkdGZhNFV6N0RmbDhJZmc1VS9qS0J3eVRpWFYw?=
 =?utf-8?B?R0cxaG51MzJCVC8rWUlBRkd2MFZqbU96TmRTTm1PMnhmRDQ0ZXU2ZEZ5WU1C?=
 =?utf-8?B?dExFNUZQbHdZQnU3WlpOQTkvMTU2V0FDYk51dUYrdUIvbVdJWTUwVGxZanZh?=
 =?utf-8?B?VXMwTDk2b21IQ1F3MUpkc2hSOFZMQ1pqcUVYU3JXMWVoZmlrMDMxejVoVTk4?=
 =?utf-8?B?OWx5akZkVVZHc2hac2t5Zkp4bXJPVWF0MzVTSm42NTRQVlhLUHRUS1Z0RkNB?=
 =?utf-8?B?c1hOSFFVa0ZZN2ZMZXNwU1hvWTN1bXZTbXJZYjdCOEpLWnFraWVMNWdDUW12?=
 =?utf-8?B?Y3VYQkg3cW9yQnU5R2NyWUpaSzRzSFUzTUdxZnh5cVlhZElPOVhmbURLY2xM?=
 =?utf-8?B?cUpFclI4NXBRL293aHRQZ1NHUHRyb2NkVTNVei8rZ3V1bmRycW1yTnd2clVY?=
 =?utf-8?B?MVhuSEYxWWJpY0QxQ1VZbytkV3MrVUdoZTEzUFRJQWNDckplVytWTktnakgv?=
 =?utf-8?B?aFZIZ1BEb3dmNDUxVmJkYk5QRHlvUUZTVGFaNlZULzJPZ1RrK1VMaXFZbTJ3?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29763e95-3ce4-49d7-7423-08daa232ec0b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 15:54:42.0615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1k493x92mfi30V8XcSixh/7uGQURW8U8jTVlyQxVEnYPEfjC6cmydFye+iBfcGVSF/dg5I4dKEdKHYzCLufzaUu5wMQsHJT2X7eRdVIz1nk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664466909; x=1696002909;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ic61xjp2qmkpgGXYgoRwr+qT93NR+OBVpI/hNkZkW9c=;
 b=BCt2pFYU2+whgifdY9r/uEgArDY+xDLOtHAv3OKUdlckgkAYTligLYCq
 a0DnMqg9TWVPIT2NSbSyV9dcoWxgB1+fboD3uQC2H4aq+uKlz+8Q5yw/N
 x2fxhP/DtkZP91TEBg6N9vTArQKl5AhjkCiLnYLd+Ofs23h8tr9l58x+V
 JVtH7cSbmK0FaOSj3lE6KsV0TNmD2v5Bz1IVRPvJCTs1Lx/B8YbGjIm1i
 PBofYfJH0TxABVW8j1ggmrhP/6wMaOuMTZmAZXdNnG21e/t+dhG5EEtYZ
 lF8iyD/9fTpsFHrMPgHmyLWYDKuhnbbNVGzCo4CkQqKM26rd7Ekz4g+WD
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BCt2pFYU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/29/2022 8:47 AM, Tony Nguyen wrote:
> I'm not sure exactly where you are referring to when you say upstream, 
> but it is still currently on the IWL trees [1].

...

> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=e312239075d77f11b45c3997a4e89153393c259d

Sorry, gave the wrong link/commit. Should be:
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=aea4f7bb6c656b852771747538ca264b72967055

> [2] https://lore.kernel.org/netdev/20220927182933.30d691d2@kernel.org/#t
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
