Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 427FB6B507E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 20:04:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 268F241BFF;
	Fri, 10 Mar 2023 19:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 268F241BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678475046;
	bh=Okx7QcdjwYt0Od3HX7uklBhc+T21fAgswzWNX/PXo4c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B6ngwLyJlUztzH+cvF/mqtURK7sPDcxVvZ2GFFn4UIPSCNx3hAmid2CBXJ7DC0mwH
	 4dBaAkrm2R6junKeWn/DBZ//JHzRK0p7gFbvJROpStIbuTIN36FJlEShHsV/Vzo2yE
	 X4gJprdCJ92afyvJ80Xa9QyirmuBM07FPGaLbDxqy5CfjZfd+mTWzOJq6TFfGetotm
	 1ug6fJ88d19r7Oom14/h7w0A/ejMnDSZB8YayXTPpK+ZMNMHRvyXPuA4dqpRES0ejQ
	 NpNsORC0K3rx9Gn8NDeM/TXfAjdfBfzJRccWZPFR/9S/2ZTwow++7GOhEVd2eZkSo2
	 zEZd5AQw6YPpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IM-v4E-xW_jQ; Fri, 10 Mar 2023 19:04:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EF8B41678;
	Fri, 10 Mar 2023 19:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EF8B41678
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8B21BF280
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 19:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1645982160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 19:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1645982160
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X7YFE7L0dnew for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 19:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BF8C8215D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BF8C8215D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 19:03:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="364460492"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="364460492"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 11:03:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="627911861"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="627911861"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 10 Mar 2023 11:03:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 11:03:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 11:03:53 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 11:03:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0cXk1HG98QSlbQ8l5rysLrSEKi37jam18fLVzkmCRvEj/imGKctauOcmkxQROza4vxhQBheBFr9NaI5Q9x9KV6pSqsnob2L5mw7fqtJGP8zvf8gzjG6KZMsOOmVvrIicDy1qF6QvCR3eGoS0oc8hpurA6wNtJTjPeH2+o9++3Q3ON9Lm50EnlIDUEWb8GT5Y4p8dI0KZvIGYz/xEpa2KXG9auM3kH3NemIvtVbNPwsDpdW7WKr0ehKxQZWBePtLaldYkg4Lpewy5uuvcrQTXJ5Mum9/MV+SRwFxbzpxpvIChPX1W+lfREWjwigBrr7S0umrRYoYYxIvcC+JRj6niA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcvoqlTFipXsrLps5SDfW9YhRgGH55gonVVgZ+GSMkM=;
 b=VA8tYpOcwJhmZqjhaPU0a3Q3Ljn6Hww5PWgsqkuoBpR2PUTJJhNlZjcrOiomZCFUG1vM5xaGUoMUU1nukzpuvTEzhT35X9tI1xeCik3swkmROOL/Id+y8q8eEwgMjMIaRmTlOglDe+4WIKFJYnQe/1ZnAk2mWi3tLz0a676dP4uFxATKtN0+QaynboXjMVMwKC2BM5XaEJ0tYH3+YzCIAcSP+wdqStMGzlFRIO+iMSMw9qnOgtfXea2txEjQze6kwWxSgrqW8qS4Spik3G/XfWwnICTtpCrMT0gvnL9FAt30DPOcFL/ZMEH9NZaI83WL3oIR+0XARsuYaKd9KSzfdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB8162.namprd11.prod.outlook.com (2603:10b6:8:166::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Fri, 10 Mar
 2023 19:03:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6156.023; Fri, 10 Mar 2023
 19:03:51 +0000
Message-ID: <d5edc914-f99e-1acb-897d-da96cc5fbcfd@intel.com>
Date: Fri, 10 Mar 2023 11:03:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Linus Heckemann <git@sphalerite.org>, "Ertman, David M"
 <david.m.ertman@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
 <ygay1oxikvo.fsf@localhost>
 <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
 <ygattz3tjk9.fsf@localhost>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ygattz3tjk9.fsf@localhost>
X-ClientProxiedBy: SJ0PR03CA0355.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB8162:EE_
X-MS-Office365-Filtering-Correlation-Id: 11954fa9-d4ac-4f93-bd90-08db219a2f66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ksNQhGu0JdaH24C2JvLIC5dW1mJoPpqmzNPM6jgK/tUn4PUx88TXWcYKUMkqkjYvp7N3a5V0i1im3HZQzOfEynj/WgnTRrtfSWgX6x1j8vAxuj5mYcA0yBTkuFYbNabx3W7Fwi+8/qmytPXYCobgzwnWsEsYhUcTqudjKPCH1gvOX+LHDMwHHuFjyQmbE8c7U/CHOfZZu7eofAe8ZxhOxqgYxIH7/Hzm18ypGOllGei8j/AK+AzZE+/juJDw8jyc44y20j4fovBd1/oDX1r9PPA8K1Za04FlABqOZm1SDJuZEDO57ncKPEtgFGrWJ4sXkGqOI791wuLoY5gQNguwnpx3oOa9RZhGkTxoeIsJ1r3c659k25HiwVF6eQSLON8XsrRtynCKc1UpdGKKu9LfEgazJsqW4UNeVlTqVkxEhkPCgC9tlT1+77YlhZu/c4I5mGIwt9QY7DQhd26r5CB4GCFY1RlxiR0nSh8s/OrHSsrKvNpHibXFbKUxmCC172Iwk38wCY2TKOA4DgfY6sOW4ZN2ag4gt+Z2GbyeqQnYY9W7JzgG3rElfEtkkO50gyZJ4vZvTTthHcZrhMYSJMWRn5Ao062ytW3hYDEEG13bAFZykgMQgBPSLaez8EMWl+PTPHOthXDIecX72DSxTUf6hVVaHlTVdHHPjoklS3CoZ1iJvR/RDOkQQ3h49YT90IU86FlnrJhnE/CllTvr0lwc4Q5cEdZemQNDi9+lmSJV59Zx5J1x8rek9qh4g3PtKRkm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199018)(31686004)(8936002)(5660300002)(66556008)(66946007)(2906002)(66476007)(4326008)(8676002)(110136005)(478600001)(316002)(19627235002)(36756003)(6666004)(6486002)(966005)(53546011)(6506007)(86362001)(26005)(83380400001)(2616005)(41300700001)(82960400001)(31696002)(6512007)(38100700002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUJEeUhEcC9SZmlyNmxEVGlnbjlKTmREMXRpMTRvUEw1SmoxempTWTNBaHdY?=
 =?utf-8?B?SXJNbWlNeGs3ZDYzWFl0K3lUMHVXcjA3OXdIOFlVOHpTd0tYREVwdjhxRUtm?=
 =?utf-8?B?NjRJTldVT2lpTFAzQ29wK0lzODJRUmphb2M0MGRUdCtwMmZuSkNmbzY0OGho?=
 =?utf-8?B?NnV0cEVSU3dGMjhYL1cxN08xbkJ4d0VlYmoyUGtBZVFlUlp3WHdzdC84cVBD?=
 =?utf-8?B?V3loRURIZFJidVFpUTB2d3pWcUdGcWRZbXhmcHdtaGhDODNVSldOYkhGNERk?=
 =?utf-8?B?cTAvMkZINTB0VEdINWpCZUhySXVFeFBWdWczTEd3QjdOd1FvSHU5Y1VrMHhY?=
 =?utf-8?B?ZGNVSWsycnNMUncrZXdGYXFNeWtZa2x3eDZzSHFtUFJTYXhRRzVLdm1CT0NE?=
 =?utf-8?B?dUpsVVg0Ny9ZSzNudysydjZyNXZwdTJvNVBtYnV6UnByQm5iVDVQbnE4ZmQ0?=
 =?utf-8?B?MWIrbU55dEhEMCt6RHpOOElkUWV3cDZ0bHlwcGlhbWtVTCtUd3QrWWtrcm54?=
 =?utf-8?B?aVMzT0JvNmVQdWh5RHI3RUJQeUowZ3dxTGVDc0g1azg5Mzgybzh4SWp6Y2li?=
 =?utf-8?B?WUl5TGVPNEhpTkZFVjFBYk5rTFJZalE1U3NJbHJ3Rmpnc2twbFBqV0VQSmFC?=
 =?utf-8?B?eittUldDWkdPVG5xaktzcXd3QTFVUERUTTJqQ3FVOUFXejYwTEdnUWdhVUND?=
 =?utf-8?B?ck11OVNmYnlMREhsT1N0bGlzbDgrTDJaZnVHMG1xYTdha1lWamlzQjFDL2lR?=
 =?utf-8?B?R1dxY2kvT3E1bUpzZjc1NStoWnhjRFViZWtEeVcxNW05SnJtRVJOcTdKeTYv?=
 =?utf-8?B?V1RSWE9McXdhR1ZIM0xVdk55dGRya0E5RGR0cXVCMEFrYmJhcVQ5VHdWMGRa?=
 =?utf-8?B?ZXd2NjYzK04zVkFXbkhLR1BYSkliQWJ5TEdtdkx6c0FjVlBXLzZUamx0Vmtw?=
 =?utf-8?B?bC9nalFkYTJWOEcrdFVNUDlEdHJRRG9iUWxNZ1EzV1BwRXU5Y2ZjTmNsRmpD?=
 =?utf-8?B?RWpJak5ISFhld2RQdHYyUnpPcTNxRlFCWkpzb1dscThVWHpqWkoveHhhMXNp?=
 =?utf-8?B?T1U5MFNOUnlpWnBrZlVVTjR4THNTZjlISVJGb3RQZ1RKbTRxSE5sY2lhWDUy?=
 =?utf-8?B?Y0Eyb2UwTW53TzJLejE4OVVkMy9WTG8vd0pGVTJGR044TGw5bm9tQlVUdVVF?=
 =?utf-8?B?QWZrajBleWtqR3BaZFhkaXd2YUVTNnJJZGxoMFJtbUYrZkVTLzZUVmJsbmNN?=
 =?utf-8?B?bEIxc1BjUGZSaFUzcS9zeUo1ZzF2WWY5SXBoSGNEZEZZVTVPdWNrTGpuVk8z?=
 =?utf-8?B?V2tyVGJwMHdXVy9qN1BrWVpPRXpsZDhhcUpOQlIwb3RUaGE2Y3J0elFySmN2?=
 =?utf-8?B?L3duZ1pHc2RydTZRUVFwU0pGbW9aK21Udml6TVpMQ3R1QzhUSVVYVXVyckRP?=
 =?utf-8?B?c1VRZk5Xa2EyU2kzY3oxZnBlWlVLaFpGVHZ3V3JXdlJkS2V6andNSnRuTVZY?=
 =?utf-8?B?UUlWc0xiVmtIRmZ4YnNsUzJqVjRJcHVXQWJRUk90QlplYkQwMzljQThhUUR2?=
 =?utf-8?B?YlJ1dHJBMS84YlBSaTdWOUM5OG9sTkF4bnd0WXkvZDNwQU5DblQwOENPQ3B2?=
 =?utf-8?B?d1l6blR2dDAvTmtaSGU5VkRpVkpOY2pBeDQrVFJwczlobXNJek1uRmM1TmtN?=
 =?utf-8?B?QUwycU01aDhhTzJmOVFCOGFVdk8rR05tOVJnT1dyMVg4QzZmd0Joa1N2cVZZ?=
 =?utf-8?B?cHFJcXRKOVIwWE5LQmsyZ2JnU1dmSndlL1lBdC9QTzFOQ2xCck1BYnpNaXQx?=
 =?utf-8?B?bUcva09nUHNodzU3dTBVRmYvay9QMTBjaGZjeWFyYjV3Yi9oMjBsdStQdWp1?=
 =?utf-8?B?N1dCRUFBeHpBaG9ubW5kZ0t6RVZwRXpjU3lkZTdkaFV6WDRxMjNNLzg2RnB5?=
 =?utf-8?B?V2tpSDd3NWZyWkYyQU5McjJUdytWa1AreHpoRE4ra0FHZWw0OXFUVXVDQW9Q?=
 =?utf-8?B?YTViY2FoVVEydXhPWFg2SWJaNHJ5ems1N0lhSjZkM1JHRVdrL0k4RFF1bXBx?=
 =?utf-8?B?YzZNRkFUa1JtMzVWN3d0NXZ5eGNHQlJIeWgrSEpMRWJJZnlKY29YM2owYmZs?=
 =?utf-8?B?VUtYbm1uR216bEhTZWJndkYxY0VYWTBRVyt6c2FtbDZPM0tmZFZyWFpzUVRt?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11954fa9-d4ac-4f93-bd90-08db219a2f66
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 19:03:50.9187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2kpuDQH4ccg121MjTIM3fK3bN71NMaIynOsVcMsqD+JkMaEDj3NCNmPNcJ6AXO5TdIoTSEmT/cn+sVZAL/k2O9rEw2boTZNrqs51XCcdNsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678475035; x=1710011035;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oDBsGsKZFXO/VvwyPffg17Xdtd+3JpwUCgl8bSfJiEw=;
 b=BVpUsHiZI+Cfzqbh6DbV5GkJuxHJLr2NYG09mM31H0he8mv3gw5VlEnL
 1xPrY1lN+xYKyFBct2pwUIKE8lJVemHv4/KVR5PWq4mVAOenOOIZaHnIx
 ty7K2GktqKigOj+WxzeyV4tIf6BFEXzDyddMFUl1rslT7Dm0CUQ2vvOXB
 5XIEcJR0eXIksEbpF1uGQLa/5IVc+Fl62JMXNPVs3hiXcRm5ZwGSc3F17
 W1fcfFQe3PIUO3f7RazSnO9FDZzGO4hWLbZsXMy8Ej9aUOgvPcxgrRCs+
 l3vS6W8nD12vMW8ZN3ETD0ER1Yvz0DEN5K2HjuK+oE9q57MuQa+GSTihV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BVpUsHiZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/2/2023 4:38 AM, Linus Heckemann wrote:
> "Ertman, David M" <david.m.ertman@intel.com> writes:
> 
>>> -----Original Message-----
>>> From: Linus Heckemann <git@sphalerite.org>
>>> Sent: Thursday, February 16, 2023 9:24 AM
>>> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
>>> lan@lists.osuosl.org
>>> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>>> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
>>> auxiliary plug/unplug under RTNL lock
>>>
>>> Dave Ertman <david.m.ertman@intel.com> writes:
>>>> RDMA is not supported in ice on a PF that has been added to a bonded
>>>> interface. To enforce this, when an interface enters a bond, we unplug
>>>> the auxiliary device that supports RDMA functionality.  This unplug
>>>> currently happens in the context of handling the netdev bonding event.
>>>> This event is sent to the ice driver under RTNL context.  This is causing
>>>> a deadlock where the RDMA driver is waiting for the RTNL lock to complete
>>>> the removal.
>>>>
>>>> Defer the unplugging/re-plugging of the auxiliary device to the service
>>>> task so that it is not performed under the RTNL lock context.
>>>>
>>>> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>>>> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-
>>> 0487c95e395d@leemhuis.info/
>>>> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
>>>> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
>>>> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>>>> ---
>>>> Changes since v1:
>>>> Reversed order of bit processing in ice_service_task for PLUG/UNPLUG
>>>
>>> Hi Dave,
>>>
>>> Thanks for your continued work on this! We've tested this on a system
>>> affected by the original issue (with 8086:1593 cards) and, unlike v1 of
>>> the patch, it appears not to resolve it:
>>
>> Hi Linus,
>>
>> This error confuses me.  The only difference between v1 and v2 of this patch
>> is the order in which we process state bits in the service task thread.  They are
>> still being processed outside of RTNL context.
>>
>> Can you provide the steps you used to reproduce this issue?
>>
>> Thanks,
>> DaveE
> 
> Hi Dave,
> 
> It confuses me as well!
> 
> Like before, this was reproduced by booting a system configured to bond
> the interfaces provided by two of the cards (using systemd-networkd,
> relevant config below). The failure occurred less frequently than prior
> to applying the patch, but still enough to be quite an annoyance!
> 
> According to the provider, the machine's card was on an older firmware
> (3.00 0x8000893f 20.5.13), and upgrading to the latest available version
> resolved this issue for our purposes. Nevertheless, I think the kernel
> shouldn't be deadlock on the RTNL lock regardless of which firmware
> version is running. If there's any more information that would be
> helpful for debugging, let us know -- though we can't get at machines
> running the old firmware trivially, so it's hard for us to reproduce at
> this point.
> 
> As mentioned, upgrading the firmware has resolved the problem for us,
> though it certainly feels unsatisfying to leave the bug there. I have no
> strong opinion on whether the patch should be included as is
> anyway. Maybe the firmware version info is enough to help you reproduce
> the problem?

Thanks for the additional information Linus. Unfortunately, our 
validation was unable to reproduce the issue with the specified firmware 
and setup. We were able to see failure without patch, but not with the 
patch applied. If you are able to run across the issue again or have any 
other setup info that may help with a reproduction, please let us know.

Thanks,
Tony

> Linus
> 
> 
> ________
> /etc/systemd/network/10-bond0.netdev:
> [NetDev]
> Kind=bond
> Name=bond0
> 
> [Bond]
> DownDelaySec=0.200000
> LACPTransmitRate=fast
> MIIMonitorSec=0.100000
> Mode=802.3ad
> TransmitHashPolicy=layer3+4
> UpDelaySec=0.200000
> 
> ________
> /etc/systemd/network/40-bond0.network:
> [Match]
> Name=bond0
> 
> [Link]
> #MACAddress=<omitted>
> RequiredForOnline=carrier
> 
> [Network]
> LinkLocalAddressing=no
> 
> # some Address and Route sections omitted
> ________
> /etc/systemd/network/30-eno12419.network:
> [Match]
> Name=eno12419
> 
> [Network]
> Bond=bond0
> 
> ________
> /etc/systemd/network/30-eno12399.network:
> [Match]
> Name=eno12399
> 
> [Network]
> Bond=bond0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
