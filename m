Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF28823F42
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 11:09:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 197A24180B;
	Thu,  4 Jan 2024 10:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 197A24180B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704362958;
	bh=MCLlL3XEY8J+MicjaHYMQNwxntu7/7uJY0RTREwm3u4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0X+yaiuxvZGcAI39DKqKvNEAeKn2jnh5luvZuW08g5th3hjasK98aI/IXipEehiW6
	 hZgvBEM3dmAdEA8qbYDrLWs9JYQCo1iuuLSIZ+YN/6qMhCxRzPg25cYZAiG/hi6ZX3
	 SY6uOcncjyeJRhDAQlFLLHQvV83f+C2q+pWX/RQd0H4ceTeV4JSxg8z4RWFYckL5OZ
	 sWeFkqH+NBP7jLiMQ4q/uD6WZoDu2Bbt4I51MD9e8wPD/VnevLFfy9b1kLkBvyXwZ8
	 Hekjvj62g/K8HgTRve1fjuOw1cbjCWX142oVYVfu/N5dlaPIgaO1SLEXmUj28tYDSX
	 U6fmmwRWUyRlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hOepYE9QdDT; Thu,  4 Jan 2024 10:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 075DE41AEF;
	Thu,  4 Jan 2024 10:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 075DE41AEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 97D951BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 10:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D48F4180B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 10:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D48F4180B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A8eHmMP9Viut for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 10:09:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 255B9417F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 10:09:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 255B9417F9
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396922427"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396922427"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:09:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923856687"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923856687"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 02:09:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 02:09:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 02:09:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 02:09:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 02:09:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d7p3l/fEIhvz0tTETn+kvY0JqI4728TX1VhHRM9izU48QM5pbbvgdakpr1nDmlBMlnCBiwOsZfjdGJvsw1DrZ62ZRhdS5eKrax2CRK6qfm2sLWCswmEKMZ68ufc8WDo4sz/lr+0RqUY2Gh/GloHKOFzcKal7yFzo4uXNqhZKPee17iVCKJ3hL0wcwZJLbcUr5csj/etC/F2lgjOFRwrjYVxUFD2NYwEzm/ImJbgcdqOvp4NDSraR4ObD6NV5ulRdPY61g+shhL0CdftJqwasuuGV4SdnKA05KOEwXX28rdoLMco3thoVpfJ9VLY81EKp5/RM3qJrsUJ/pL3yg2Rn1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MCLlL3XEY8J+MicjaHYMQNwxntu7/7uJY0RTREwm3u4=;
 b=NrY6JBZ9BMpX6du9xBE0wKkKya0tM8udXlxc4yKe79uxtvTChJlO3z/u3hIsCtWd2oSY8+eMn3ZarQxelRuM32/HjHwZParAgMvBS4+tnwRBZg8A7PTogzrZgYc8x4FUeCm4IztdW3vEquUUipCFFIQOAEAgNudgY9HaEPTzpjwTa27EHg3ENfwM+jfHM+6/gALmghvISRd9wTJ6reyuEvNI5CAZrxn1/2pGspgscxkeSDR+iAHIDLlH3rLvavsXDqDe6YaxLw3aL3eBbE5DnM0hyFe19BhVWCyd0cL7uwHtZ6CHL7yjm3TV1wOXkkxH6ij4Hmy1jKZVTxvzXOrB5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CH0PR11MB5691.namprd11.prod.outlook.com (2603:10b6:610:110::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.15; Thu, 4 Jan
 2024 10:09:00 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4ecc:bb1b:9233:a6a7]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::4ecc:bb1b:9233:a6a7%5]) with mapi id 15.20.7159.015; Thu, 4 Jan 2024
 10:09:00 +0000
Message-ID: <c03e5429-aece-4b16-99f8-4ade9cb6e341@intel.com>
Date: Thu, 4 Jan 2024 12:08:53 +0200
User-Agent: Mozilla Thunderbird
To: Prasad Koya <prasad@arista.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240104010144.2137857-1-prasad@arista.com>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240104010144.2137857-1-prasad@arista.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::11) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CH0PR11MB5691:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a7b08b3-56dc-4093-ec34-08dc0d0d2bd3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kvZR96S8G7fIXdopVPnZ9EmsFUzFa3WHewdZFYZhpDC2cxz1w9RmF21u/zgtps0/a515heajjug7GpUq+h4VSLUiZHanoujEqStE9Na6SXmTSioEeojxrp0MHzKSdUULHd7sLDrZ3hug6B85YqZyu5Ib8rPzcloQE6NfBHry4ZivLGPevQMlSL1AI25Yvb0i9Hp/LvuVPIdpEyzV3kqVY3LNeqAvjIrd6pIj0At82RCvaz1Wi+qm+q/ywhHPVZoV9oA0ZAFjZSKcCNhknq2t8ZNzDoncvoRLxXgui1X46YJKIgf3y7WtCUzu1KPg7vNrNyncKhR7LwMTY1s1JcfP2RKlBH+fJb8CQYxCDaZ1SorJ034q30bgGy1ndXItaY62WMR65pmjBfBjNhXo3fX+eBu8MHEjBtK6MwMsplGHUd/WG50lC8NeQ5lYlU1JuakUbQH5DoJXQPKYo+qqMeZSMsEtQ7rI9cNmvkJ7EFNj17oU3au8JosWa71tdWuiOm9GEUxpB3eVFgO01uyxMAmK7Rrj9aaO/uo/Vqx/UfNSXkJ9ghC6UpJszUC3YIN03YxdeRfz+zwOskW2o0nwFLANsIrh3VPibmcGHbXKapwFIhvE+zexELzlkb5t7d5A7or2yRiSh2xTilDupHeLKi77Ew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(39860400002)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(5660300002)(2906002)(41300700001)(83380400001)(26005)(2616005)(478600001)(6666004)(6486002)(53546011)(6512007)(6506007)(31696002)(38100700002)(82960400001)(86362001)(31686004)(36756003)(66476007)(54906003)(66946007)(4326008)(66556008)(316002)(8936002)(8676002)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFg3dTVsUGw1Q3JHbVlOQjdPeXgwWkJkdmlzc0ZnQmV5TGZ1LzNyanMvcUp1?=
 =?utf-8?B?V1ZvMHZtT1NnNllndGpBeTNXWjZWaTByVzNBUHVmYWhYRnVRdlFYdEdNUWp0?=
 =?utf-8?B?STlINjhiZFNLOTZxZjRuSTFTL3RXUGpVbm5nY1dlZXZUeE0rTFY4dHRFbW5l?=
 =?utf-8?B?UEFWTy9aaHhqbXhkUVh6U0x3cTBCelluOGZOMk45Q0NqQ3J3YWFiOXhNRnMx?=
 =?utf-8?B?cVRVMTNxd1FUYnV4a1h6RzhXOFcyQ2c0Mi9FS0dtbDdOMTRqT01Da2FyYkRX?=
 =?utf-8?B?RUN1ZGthUWVKR21LZS9jbmZOWXBEYWsyK1g5bFo4bndxQjQ5Mklxc0llQ1Rl?=
 =?utf-8?B?VGNqREFtRlJvTmNJK2VRem92UnV4UUZ0M0pkS2Vpc2tMWVdXVk00cEdXUGh0?=
 =?utf-8?B?NTBrVFhLTWZwdk1WOXlJRlVxQkp3bm5keVYyVzIwQmlnRER5N3ZkcklJUnVw?=
 =?utf-8?B?cFpQLzkra3BlVFZjQzBGK1pvaTA3L3RlSU0yb1BpaHB6YTY0RGxxWkRMemJ6?=
 =?utf-8?B?MEVDck5iUHB6MVFLR3R6eXErZGFvakRmZUF5NXkwbk1EamlBOUxyeGVTc3E5?=
 =?utf-8?B?c1VKek1QbWhKUXd3alVyYzQ3Tys2b2FrNHI5OGE1UncydnJDSDd4ZUtKM0lR?=
 =?utf-8?B?VlJ1elgzSE9CV2tCLy9kTTlNYzdOcUVUNjc1V0hWVmYrdmhQWlM2WkJGVFlp?=
 =?utf-8?B?a2Q3V3d5V3Y3aUpmSE9zMG9XR3RIRVoxR0VXb0UxblpyMUtFR015SlRSeEpa?=
 =?utf-8?B?ODhxcFlQaDM2cjdYb1N2ZWp3Qk5SK3o2TmhNTmFlY29EbFBiMWRRdnhNWWJr?=
 =?utf-8?B?bDdqa05MYjVWaEVHVVJUZm5WRUZ1RDFTTC80N1dtQ1BmVFIrVGREVnQ5ZU1o?=
 =?utf-8?B?bUJ4RHJxbWh4a2s0RVp3S1lWVjZSZ0pYMG53SEpsTjlOOTY2ekFaNHR2endn?=
 =?utf-8?B?eTVyWi9Cck0vUCt6ZSsxSXh4dVdjQjIzMVQzK2tMM1MrM2pjQy8zVVhsNFBM?=
 =?utf-8?B?dmNCczV4M0Q3bWVYNG1lZ0R3bUh3M0FrNTlxWndUbVNMbDlJOHJYUUpMNk1D?=
 =?utf-8?B?TmRrc1ZNdnVkRmZrMzdJMkZzSkkzdTVVSURPVU1BblI1QlpQNkgvMXgyN2d1?=
 =?utf-8?B?OS9SMFNyS3d3YmFDNWt0bTFLemdvMHNaaEVRYjg5VzlKUzdFMnVxZVpkT3Zn?=
 =?utf-8?B?cWhsaEpEMHhhOGUybUVtRWhnRnZTWWpPVFhVU3FvUFNSVDB5VEZ3d1FGQWdu?=
 =?utf-8?B?WEtCT3gxcjludFNyNGc2QzBXdEJJNzJSeWFTbjE5cndwNnFNd1Fsdk5hdnJp?=
 =?utf-8?B?aG1icU5ZSldpY3JPdTByMzN3ZDBpRi96d1I4eDFuQ2p1SlhpMDBPL2dMeUV4?=
 =?utf-8?B?V2Q4WGZUNWRIVmJQZlpCWTByWXBOQktHQ2FHdFFBQVh3RHFYK09LcHZuN2M0?=
 =?utf-8?B?M3NnR2dXZnphMVhqSHJLbVBwZDJSZXFsb3VOTUtiTkFFL2t3MVA2d3hFUGQ0?=
 =?utf-8?B?dWlQdnBPUVhuclEzSE1naW9LVTh2eDVIOGYzVGRBTlZXNEVOU1JUUTZNalFS?=
 =?utf-8?B?NjVaaHcxdVAzR2F5Y1l2NVRyRVNUQ0s3Qm9HM3pwRGxGUWZOcnRINFcxMit0?=
 =?utf-8?B?Ym02NHJXOFNaQlB2WXZMaU5PblRTbTY3VHE5Y21DVzZFd0JZbHdsaVdrUEJj?=
 =?utf-8?B?d0pveGVWb0plckdKb3NVdzJ0Y0ZFV3JHcGNOeC9uSFJoNG10dWlrSjhYRFcw?=
 =?utf-8?B?eXBhemZGYWY3N2dPaThsa2xzUjlpbGdTdHc1cy9VTU5UTXNGYU1Ob0tCL1ps?=
 =?utf-8?B?VzRQbis2M29mKy9MMS91NWxyUk9jYUQzdGNzRk0yYUJwRjVIZGNCRVl5UUxX?=
 =?utf-8?B?VGZVK0dzcURjMGFGNTVTRjEyWHJHKzl4eks5K0pYbXdkVTBvNXdqTHJqZndD?=
 =?utf-8?B?YjNnTmlobllIbW9NN1VhK2xVdjMvWTZ6OTk2bnlUcjVsclZXSG5ZYUtLYmpS?=
 =?utf-8?B?OEt0NG5vaUxRZXp6TTFENmRXdFhmN0NxYkQwS1FKbzFxNVZTREUvNkZLV0Z6?=
 =?utf-8?B?clpoK2JMaG5SOHFSOEU5d3czb01sb3o5ZzlPMlVCajFSRzNDeG9XUHd2M0Vv?=
 =?utf-8?B?U1duWG9tQ3pja1VKN0VyVXdpcjFrazd4R096dURNdVB0NFJoQjVHSEUySk1B?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7b08b3-56dc-4093-ec34-08dc0d0d2bd3
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 10:09:00.3507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NKGjhEUHt3/QoVtYzfE0zgtPiKlcfQ4Z6n4IWAhtoDzIOpNvdgyfFmCEYMKIXlYQwMZ1MGY/uiLeuTzlIfmYQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704362951; x=1735898951;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+3NNod4SWf6TefI0Tfi/t8uhfHGdq/KpjaVAB5L2NrY=;
 b=gxzOeilJ6G5l06p1W8z8PinD405I01cAPbprEo1hx/7BA7lzMXnHcJ6N
 4LQsbeZgY7HTIW3Kov1v2A/7BfwWd19VMzzHtxelgLgRUcFSs1J52fRNd
 LhDLOPNQc6We5tNR7SMTtc3vHZNvt3A0Ok/qRqtLc70vMETm7cgOYSQvF
 fF6Si5+CvO5jFTV7DUcTpwK2ImUZbncUESkZkpXJoBPqCzcxgbnIjgx3K
 4ezR+fPtPwgLMchoUr17QU3MUtoIzVODnT1k47WdFbtAdNfoen7O8t5It
 LzK9LW/dct9os3VE2o3jLlHlq6hQRoxRLAfhQFsEwpci5i3YIYAx4ViAD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gxzOeilJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] igc: write to phy power
 management and management control registers to power up/power down the phy
 during interface up/down
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
Cc: Salam <noureddine@arista.com>, Naama Meir <naamax.meir@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, "Neftin,
 Sasha" <sasha.neftin@intel.com>, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, gilligan@arista.com, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 04/01/2024 3:01, Prasad Koya wrote:
>   For I225/226 parts, when the interface is set down with "ip
>   link set <dev> down", interface is down but the PHY (led) continues
>   to be up. This patch makes the phy to be actually off/on during
>   interface down/up events.
> 
> Signed-off-by: Prasad Koya <prasad@arista.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  3 ++
>   drivers/net/ethernet/intel/igc/igc_phy.c     | 42 +++++++++++++-------
>   2 files changed, 31 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index b3037016f31d..6f60f5bd9cc7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -684,4 +684,7 @@
>   #define IGC_LTRMAXV_LSNP_REQ		0x00008000 /* LTR Snoop Requirement */
>   #define IGC_LTRMAXV_SCALE_SHIFT		10
>   
> +/* PHY Power management register */
> +#define IGC_GO_LINK_DISCONNECT		0x0020	   /* Go Link Disconnect */
> +
>   #endif /* _IGC_DEFINES_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
> index 53b77c969c85..319cdf876f4e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_phy.c
> +++ b/drivers/net/ethernet/intel/igc/igc_phy.c
> @@ -107,12 +107,22 @@ s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
>    */
>   void igc_power_up_phy_copper(struct igc_hw *hw)
>   {
> -	u16 mii_reg = 0;
> +	struct igc_phy_info *phy = &hw->phy;
> +	u32 phpm, manc;
> +
> +	if (phy->ops.acquire(hw))
> +		return;
> +
> +	manc = rd32(IGC_MANC);
> +	manc &= ~IGC_MANC_BLK_PHY_RST_ON_IDE;
> +	wr32(IGC_MANC, manc);

This register can't written by SW.

>   
> -	/* The PHY will retain its settings across a power down/up cycle */
> -	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
> -	mii_reg &= ~MII_CR_POWER_DOWN;
> -	hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);

I prefer to keep aligned with the IEEE PHY access. Using PHPM signals 
could cause uncertain behavior.

> +	phpm = rd32(IGC_I225_PHPM);
> +	phpm &= ~IGC_GO_LINK_DISCONNECT;
> +	wr32(IGC_I225_PHPM, phpm);
> +	usleep_range(100, 200);
> +
> +	hw->phy.ops.release(hw);
>   }
>   
>   /**
> @@ -124,17 +134,21 @@ void igc_power_up_phy_copper(struct igc_hw *hw)
>    */
>   void igc_power_down_phy_copper(struct igc_hw *hw)
>   {
> -	u16 mii_reg = 0;
> -
> -	/* The PHY will retain its settings across a power down/up cycle */
> -	hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
> -	mii_reg |= MII_CR_POWER_DOWN;
> +	struct igc_phy_info *phy = &hw->phy;
> +	u32 phpm, manc;
>   
> -	/* Temporary workaround - should be removed when PHY will implement
> -	 * IEEE registers as properly
> -	 */
> -	/* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/

I believe IEEE std. PHY control access (unmask commented line) should 
work here. (ip link set down <dev>) Have you tried?

> +	if (phy->ops.acquire(hw))
> +		return;
> +	/* Set "Go Link Disconnect" bit in the PHPM register to turn off the PHY */
> +	phpm = rd32(IGC_I225_PHPM);
> +	phpm |= IGC_GO_LINK_DISCONNECT;
> +	wr32(IGC_I225_PHPM, phpm);
>   	usleep_range(1000, 2000);
> +
> +	manc = rd32(IGC_MANC);
> +	wr32(IGC_MANC, manc | IGC_MANC_BLK_PHY_RST_ON_IDE);

The MANC register can be written by the manageability FW and is not 
accessible to the host/SW for writing.

> +
> +	phy->ops.release(hw);
>   }
>   
>   /**

