Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FCA54A0CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 23:06:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29CF560AC2;
	Mon, 13 Jun 2022 21:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRryaa5j4hnm; Mon, 13 Jun 2022 21:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7BCA60B0E;
	Mon, 13 Jun 2022 21:06:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE05D1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 21:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B882A401B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7O62Dl3Y7Vhi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jun 2022 21:06:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C20AD40002
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jun 2022 21:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655154407; x=1686690407;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ssmapAAhYkfRfqrorxxVi0ZAWQcIVzj+vd3yHrvfImA=;
 b=Rcne2v04z6QHQNzcsXDI1/E3sjUbbm7+Pun4nrTvLgTq9HeHoinwd+c+
 1JNumrFE+r/VL6ewE46KiNCzgtt8GPduaPY+ZsrwT+qnNxSgr1fkwQaO1
 hkqEZjX3KYFajxYmXJgh6WSX83N+CIneK+yzJxp9GZEVzU6RLabaPAa5Z
 4xwlAX8jOqd5eGkLfJsDTHpSlZxoB9xRv7pU5GEXsI2b42ijgI1CcaLIB
 yXIwOv0x/4/liwFf50bdlqOhCpZ8mNN5mGVelV06+GzeAS1z8veUg+tkZ
 RCegbI+cGdTTuP3QlOvrfIzc7mEdA2laPbUeP2hsMisd/DoIF0VVtqI+t g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="261448841"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="261448841"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 14:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="569371772"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 13 Jun 2022 14:06:46 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 14:06:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 14:06:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 14:06:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dLL19ooKl2lh4YcsRFcaSzR6QgQN7MFTAFjQtMfbkg+Z6D0dCRygt0l2rBotPXxU5DMctfQWb/jvcSEm3qRe5nKQ/HlRm7UfSlCwcGIC4G7dY3EvIykL5hqN1kn67y0AxD3ImDOJoRxtIexXEp474RyBCzoJxmX7j2gJtGjVrRucO8sYSLZL27zTm5bn+uv1qh0I0wgKOFuiMEwP1Lsu+ZKBgph+8y8suPcqoK1/Ed1IfN90swthedJMuBN1JxQL1eWx4SxWctI+DK6nu9j4dsYKsIWE0cco48GN66mMqpzvGjDrBf4v0uZ+NykAa6IDC5Pwu06dBzZ5C5Q1KR8BiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=li1YEvRAvkpuDN+VfxiOdE8wijZu2fHANDB+NK16480=;
 b=hOqJEEQJjRNBMlB5dpb1WcDjpUvHzcv3f93aITvlPM6ecBJqxqaZJEPwDwLFIBpA8BVpV2CXdpiArPErkX++UMFaMtcYBYm9HaYHZ+au4CFno3rqZ2xPX43avnSO119YNUg/wK1R4X3Xb7ZU8YEOS+sCwRmcnRnt8Mm/5xB4FLjGM5dOamlO7XJvKw3uMvwUBwsdc6Ev8D3W117Skwdf8IS47fERY7jTrA+uoCpJRMWj0PQ1ebmho1vFVenLuq5GjdPoeeR40p+rHSj5Vy5bfJLkrHK3dbAJIWk7gI5GHC8rck5oHm7wSveNRrVoHEwmnlvrsR84HqvjcMWwVOykIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV2PR11MB6070.namprd11.prod.outlook.com (2603:10b6:408:179::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.16; Mon, 13 Jun
 2022 21:06:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5332.021; Mon, 13 Jun 2022
 21:06:43 +0000
Message-ID: <71520200-9399-89db-9a37-00c57ef0ff8f@intel.com>
Date: Mon, 13 Jun 2022 14:06:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220610122338.3047497-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220610122338.3047497-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4P222CA0024.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61a780cc-90e2-418f-edba-08da4d809e51
X-MS-TrafficTypeDiagnostic: LV2PR11MB6070:EE_
X-Microsoft-Antispam-PRVS: <LV2PR11MB607060F00DA0A288F97BCDE0C6AB9@LV2PR11MB6070.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Btl84zKHYmTWDT9i83MrLGSb/0/e2nQjzRlWFczBx7pOwi+s/XfsotoUAcl99Y6f9Iqds5NDcVeO/+2+weIKrv0MrV/WHcuUW0cJAr2QWAhsTDatqMSVshvWUdPQRvKtmkrXSQHIOPC7q+Nk8D9/RKkyE5OFNbTuc3e5aiMNM7x4eYgdOJDZvr2a1QLtlQOPu4g/XnqZXcE8Y1ujLJC60QfswwsaZUfzFwFKw9YwAkf98Tf1cEYwOB8o401bipWsG2oTgmug5BwsR+VHSbuQLXINKjQV9ZhUFmA6vI/+IBuMl4V74ECytwMp+AaoQDXH9HW5u3g/Rodgc7MCPwOToqCDNefGdLALgW0MdslkxQ6QyUQ4QE7Ig4kt9RI+Ma+tTuOraYeJse1AqpvdgUv1gPirCo0KjaksB78Itq6DCLVD3Rtff88W++BFp7X2TfDLcTVvRMUIlxUV1SxGMXomTkl5y3ERtjUgghJRAwfcwG+Lu6kQlkXkBtT5HJfJD0cc9/mc0ie83Lx+lZq8h/D28kqja4nPp4E0Ot37zaBoBH+zjJ28ZBuhZi5hO9v7mr/v1JlVWtXP+jpmyo9EIow9PgJ/Q5gvI2Ckmm970vMJYON1CXVef/PkMmiqiPv02WNJ/y8dPmIV/8MHW8vrxqOlkjIvP1Uka3HlF4e6cTbf7SwDlgTF5C2dZPTP28XnaNYKowd5n0jCIaIEJvvrirXe5tlWrT4Wsxf2F28RpAb0Iew=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(31686004)(86362001)(8676002)(36756003)(5660300002)(8936002)(66946007)(316002)(66476007)(66556008)(2906002)(6486002)(508600001)(38100700002)(186003)(82960400001)(6506007)(31696002)(53546011)(26005)(2616005)(83380400001)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0V1YWo5alJYNS9NUnpUZy9haG01VkpnSGFHS0JzemFVOFdxaERIQXo3a3k1?=
 =?utf-8?B?d1dnMWpEMUtBMXdTUXI2ZzJ3RGZab0NhVGNCN29lV3l4d09lSEV1Lyt5MTc0?=
 =?utf-8?B?UHJwMUdNR3gvaEZGbjVyMzZ0RFR2R1hZVFl4VlVzVnNNV2tZelhuWVpMejJJ?=
 =?utf-8?B?dmxKSGwrVXVpMHZGY1JCRm5uSklGSVJJNlk5cmZIcVRudXU5N09EWG9tY0E1?=
 =?utf-8?B?Q2F3cllIbk53OUpUVW8xZFpHOENsUXRsVTBTRS9CRUhHL1hyTTZUNERwUFBP?=
 =?utf-8?B?VXpIMWdNU052K0dESFF1WWNoN1U5dHhhcjZEU25qQjV3NVRwZXZKbjhUZkNQ?=
 =?utf-8?B?T3JKMEZnSVlDUzVRYWFlRlY1VmlhT0hUeXdRblQ5T2kvVjQwVm02cHFCdGhp?=
 =?utf-8?B?Q2x2RHlrbE54aVVGS2oza0JGbHBjUE42eUhEVlNQWHhLWG13V25Td3N1WXFs?=
 =?utf-8?B?SE5DYWJMWEhnMzhHdVpGaVpxeFJmaEpVYktpV0d0NXRzSGt0WWw3a29TRVY2?=
 =?utf-8?B?bnhXWjJxS0dXL0YwOENSR1poS3RZMjlHL2Y4NVVXTHdCRmprL0wwY2tubjRO?=
 =?utf-8?B?ak9QeHM3Yk9aZzc2ZTdyTURxbkhZRFJDdERJTHJ3OWx1RTRFb3BSQ3JkaUNv?=
 =?utf-8?B?ZUorWklmNXo3Q2Uvc3Y4OEFYczhmSDBDei9oeTNRSVJaYWxOdmFnQzNEWUZ3?=
 =?utf-8?B?Y3Z2S1hVVHd3ZVpMVWt1QVRSRDZmYUNQRWN0dUVhSGRVa3dxMVBIb3dWTS9E?=
 =?utf-8?B?cmhYWFhZNWZLTFU5NEozcWwvTDlBUkZZTVk5K09iWThnRkU2Z1dYY3hRMDZM?=
 =?utf-8?B?eGZGQWlMU2R5U21nMjEvRTUwTGtiOEdQWm5UMlltWUo1VEQ1UVFpTG9BWUhD?=
 =?utf-8?B?czlMYU9HRmRnSFhhQUgwZjVWM0YzeUhtVUFUelUwSG1PNDlsU2NYTHpiTkti?=
 =?utf-8?B?ZStrSHNtTmFIeE1qbkxkVXp5UUkxdnJwMi9nalpWd2hqR0JIcVY5ZDRXY1pr?=
 =?utf-8?B?UjNmb2RUR2FhcENIWi9YOWRRUmxuejQ4UE5ZUzBib0hucFdrbGRGUGR6VEhL?=
 =?utf-8?B?a2V5YmZBSEh5alZqb0w4RmFSQ1ZCdUhxeDhxc0dSQk1HRmxoMGFlL3hPOU81?=
 =?utf-8?B?dHRzaFJsWWtiaHppNlVTMEtOS3ZIMndvOFZvVTFmaEFha0Mxc3dnV3lGODhm?=
 =?utf-8?B?b1MyYUdkWjMwNHVJaG4yNjFzZnFmNUJjQVJtOXpDNjUyRnlDQlU3cDNNbjNo?=
 =?utf-8?B?Ti8wR05CUHVzWEZhdUN3TGkwSWlnL1NLSnhNMDVLR1lkRDB4S3MrMDVSdSsx?=
 =?utf-8?B?eWNRODVJYUIwelJ6cU5uOXlyM2JUMmhrdk55djZlSzlrbCtXTmxaMWZGRVQ3?=
 =?utf-8?B?Nzc0TkJTWU5kQWNWSmhqQXdqVmZJbEdFbjBabmdoczU4SklWdVJ0STl4VGEv?=
 =?utf-8?B?eHJuUmpvOWszcGVrQUxzZE9JZW1VcDkxblM0RDlQZ09JRUcwMzk2ZllrUUw0?=
 =?utf-8?B?TnVXSlVmY1FnNnNjNUtKQ0F0QlF5Z1h1cVM5dEtHQmVNSk41bHM1NzZCYXky?=
 =?utf-8?B?TWttRVhYNzhhc0Q4cDZnVWFETjBoVUlzVk8zVjZrclFCOEo0WUwyc3J6aThq?=
 =?utf-8?B?ck93NmVaejMxTWoxdnZidmd2ODBkcERmN1pUc2xzK2lkdW9HRS8yaTR5WTdh?=
 =?utf-8?B?eVY1ZnRsTjQydXpLOVVLYWJzNlFlU0FxbG0vR2Z0THRXcm5JbVZNU2JTZTl6?=
 =?utf-8?B?bDk5bHpJbjhMczRsZWdubkl0WG5LMUt2Y2NGRTNIbG9WU2tzV1AyY0c5c0N0?=
 =?utf-8?B?ZGgwckdUNjlVT0VEakt0TWVab3c1TGwyamRYRk9GU0hJSWd6dTR1emtUeG9N?=
 =?utf-8?B?emtqZE80SkRJMnZRMHZ3ZHBMOHQ1NDhJM1JTb2twcnBlZ1ltaFB3NldCQTlY?=
 =?utf-8?B?WUR4dG1ldTY5dTJYamtaU1hvOGJWQlo3VlEzV3RKb2E3MWVYTGNKeDB2aXRw?=
 =?utf-8?B?cG5CYjBlTDNLNGNxS1hmTm82VDlVc3YyaUd1VStBK0ljR2NTdkhZV1hBYjZs?=
 =?utf-8?B?ZUZSaHQ2K05lK1pRbmdOaDd3NSt1dzFVQVd5dFFiR0FvRzVqaDZ0ZVpQdXJq?=
 =?utf-8?B?bytkdVpETTVLQ0NxemEyeDhVS00zNmJhVnp5a0pnNUxyazhxTldvYU1rTjhX?=
 =?utf-8?B?akVhTzNveDJmaDlzaEZTWUZ4Nnk4ZkFrSVBETWZjNWJEa2F0VGVwWWNzNUth?=
 =?utf-8?B?M1Irc2M0TTZEeitKYjBjcTlNVDZya2FiYXZYcWRQeEZEcnl5Q3hoMDMrTGhY?=
 =?utf-8?B?RVRGeEZER1BtTXpmbXk5MEZrMkd3ZDlnVzczeWRBQ21zaFo3OVdJd2IrOGdX?=
 =?utf-8?Q?nezZ49uwQ4YzPnFA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a780cc-90e2-418f-edba-08da4d809e51
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 21:06:43.7887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JlU8vze9HD3Nd91OrJJvGlgdxCT5kd7d26bNJJQh8Dv1Fg6zXm7eaTfMD71Iab5ih6bF6pGfrH2JS8HlCxEZ7lVBG9aGq9b3OKFaBilqVwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix ethtool rx-flow-hash
 setting for X722
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



On 6/10/2022 5:23 AM, Loktionov, Aleksandr wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> When enabling flow type for RSS hash via ethtool:
> 
>    ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d
> 
> the driver would fail to setup this setting on X722
> device since it was using the mask on the register
> dedicated for X710 devices.
> 
> Implement a bitmap to collect the flow pc types that
> shall be applied on the inset and hena registers.
> Apply a different mask on the register when setting the
> RSS hash for the X722 device.
> 
> When displaying the flow types enabled via ethtool:
> 
>    ethtool -n $pf rx-flow-hash tcp4|tcp6|udp4|udp6
> 
> the driver would print wrong values for X722 device.
> 
> Fix this issue by testing masks for X722 device in
> i40e_get_rss_hash_opts function.
> 
> Fixes: eb0dd6e4a3b3 (i40e: Allow RSS Hash set with less than four parameters)
> Signed-off-by: Slawomir Laba slawomirx.laba@intel.com

The signoff is missing the '<' '>' around the email.

Also, who's the author of this? If it's you, your sign off should be 
first. If it's Slawomir, you should fix the patch author to reflect that.

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    | 103 +++++++++++-------
>   drivers/net/ethernet/intel/i40e/i40e_type.h   |   4 +
>   2 files changed, 67 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 5584181..08587a1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -3190,10 +3190,17 @@ static int i40e_get_rss_hash_opts(struct i40e_pf *pf, struct ethtool_rxnfc *cmd)
>   
>   		if (cmd->flow_type == TCP_V4_FLOW ||
>   		    cmd->flow_type == UDP_V4_FLOW) {
> -			if (i_set & I40E_L3_SRC_MASK)
> -				cmd->data |= RXH_IP_SRC;
> -			if (i_set & I40E_L3_DST_MASK)
> -				cmd->data |= RXH_IP_DST;
> +			if (hw->mac.type == I40E_MAC_X722) {
> +				if (i_set & I40E_X722_L3_SRC_MASK)
> +					cmd->data |= RXH_IP_SRC;
> +				if (i_set & I40E_X722_L3_DST_MASK)
> +					cmd->data |= RXH_IP_DST;
> +			} else {
> +				if (i_set & I40E_L3_SRC_MASK)
> +					cmd->data |= RXH_IP_SRC;
> +				if (i_set & I40E_L3_DST_MASK)
> +					cmd->data |= RXH_IP_DST;
> +			}
>   		} else if (cmd->flow_type == TCP_V6_FLOW ||
>   			  cmd->flow_type == UDP_V6_FLOW) {
>   			if (i_set & I40E_L3_V6_SRC_MASK)
> @@ -3556,7 +3563,9 @@ static int i40e_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
>    *
>    * Returns value of bits to be set per user request
>    **/
> -static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
> +static u64 i40e_get_rss_hash_bits(struct i40e_hw *hw,
> +				  struct ethtool_rxnfc *nfc,
> +				  u64 i_setc)

kdoc needs to be updated for hw

>   {
>   	u64 i_set = i_setc;
>   	u64 src_l3 = 0, dst_l3 = 0;
> @@ -3575,8 +3584,13 @@ static u64 i40e_get_rss_hash_bits(struct ethtool_rxnfc *nfc, u64 i_setc)
>   		dst_l3 = I40E_L3_V6_DST_MASK;
>   	} else if (nfc->flow_type == TCP_V4_FLOW ||
>   		  nfc->flow_type == UDP_V4_FLOW) {
> -		src_l3 = I40E_L3_SRC_MASK;
> -		dst_l3 = I40E_L3_DST_MASK;
> +		if (hw->mac.type == I40E_MAC_X722) {
> +			src_l3 = I40E_X722_L3_SRC_MASK;
> +			dst_l3 = I40E_X722_L3_DST_MASK;
> +		} else {
> +			src_l3 = I40E_L3_SRC_MASK;
> +			dst_l3 = I40E_L3_DST_MASK;
> +		}
>   	} else {
>   		/* Any other flow type are not supported here */
>   		return i_set;
> @@ -3606,9 +3620,12 @@ static int i40e_set_rss_hash_opt(struct i40e_pf *pf, struct ethtool_rxnfc *nfc)
>   	struct i40e_hw *hw = &pf->hw;
>   	u64 hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
>   		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
> -	u8 flow_pctype = 0;
> +#define FLOW_PCTYPES_SIZE 64

defines should not be in the function either before the function, at the 
top of the file, header file, etc.

> +	DECLARE_BITMAP(flow_pctypes, FLOW_PCTYPES_SIZE);
>   	u64 i_set, i_setc;
>   
> +	bitmap_zero(flow_pctypes, FLOW_PCTYPES_SIZE);
> +
>   	if (pf->flags & I40E_FLAG_MFP_ENABLED) {
>   		dev_err(&pf->pdev->dev,
>   			"Change of RSS hash input set is not supported when MFP mode is enabled\n");
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
