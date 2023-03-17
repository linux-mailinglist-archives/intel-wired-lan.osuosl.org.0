Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B4D6BEF65
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 18:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF46761AFF;
	Fri, 17 Mar 2023 17:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF46761AFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679073492;
	bh=3om556/9ju/GcPFQGHPOYC998/dwkF97yB3e3nQTQHg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOqdq9ItQI5FsY6SZlcUPm/Orct774+JtiI+YViEdl3lb+jnj9aGy2Un+aK6lQg/o
	 cZ4SZBM34EDzCdFD0zJcbFGbPInX+g1jsf24xuGHoNI5xU4mfFpc0bMzrDGIOwacJB
	 S2MIUgQnexUnEwPGiniE+vbisHr44MMh66aTc5cpByQ2OgES2IxFM7xosI4A4216/X
	 wQpYoclcSH4+S0+fgLdS09Mb81LZYpFy0dArcdHp6usbEt7pUU0xNt+R55EFXivWs8
	 5uyANHUvHv4cZSQI3QLlghIWZ2ZkjweSKVBjgAOYHv/OrM+Wq0geAANrCfNAnyIjq7
	 4mmdPdxNDkfVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3OilR7oOXkq6; Fri, 17 Mar 2023 17:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E4061AF8;
	Fri, 17 Mar 2023 17:18:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90E4061AF8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EB361BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71BC341B9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71BC341B9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uXBDVIQefPIH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 17:18:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C0DA41607
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C0DA41607
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="338339279"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="338339279"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="926221611"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="926221611"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2023 10:18:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 10:18:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 10:18:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 10:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOr4xeJBOZkL7Egd3gqO+AxgmD4NfYSWsklIuxczrNotrpiZG/57NaTsijcnRZaLKYHG1jpQbWXV2aAa/O252kkM8CJfJjEMZErFuyjoaYnXGdjDdfsLfiWAgo8IT6lZi1EJ/Gc9K6pY33nM93pnyCCuY0RXbqtuG76Y5hq/2B1CVhZuIZHtPYNOXpe0N9SP4xkwEwvzAbsWIvMWK65SfgsddNXaYsuaaAkTdWeaOHa2C22QbUSi7bLq6uij5FBplgHXZdusxUWYoklxK0ePAkOPwQgAC1pF9F+5nHsEePR65TnEI26ewfWyLtCYYkg4fjtwLQ0VgtZ0ebVd9mrtAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BvNW1RM4sui1kdD1FSNPaSeTdgkCCgZewW5wWQOWAs4=;
 b=dTUjIBSLqDhe0380XsDqgiYUrLNhXnt2JSLJedkcrbfVL5Rg7HjR8dDfLrybrH3VHzhHy2h6ZbqhfwPR8YA2dc3KtZJbVmIvMNHDNB/x2lGnxWhDRA4+IBPfeYZNDO/0Oj6/UjuWtF3onjRJQbYkVGN5ogJGEJ3HNHd11usgk13igX6j0vkHVYa2FId3r8w1KONiRSNvUmPhG2EBZFKbt32N0izGjXCpkv6/OlGzQzixG4U8Ymrepfak1v1brJiF87G5Ko1WV4ZomzJqyYKbbbdtSYcWxugHGRxfAIKNYErz5GFNC7inLA5pZqkGE4FE8aDTJl9Au95gYCq1fCFW+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7025.namprd11.prod.outlook.com (2603:10b6:510:208::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Fri, 17 Mar
 2023 17:18:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 17:18:01 +0000
Message-ID: <668a66af-f77e-49d6-8c20-a19e4bccec34@intel.com>
Date: Fri, 17 Mar 2023 10:17:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-5-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230314102514.46636-5-michal.wilczynski@intel.com>
X-ClientProxiedBy: BY5PR13CA0036.namprd13.prod.outlook.com
 (2603:10b6:a03:180::49) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7025:EE_
X-MS-Office365-Filtering-Correlation-Id: 80060ef0-0f21-4701-1fcb-08db270b8fb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rknmn8yu0TmM4+45lCzePKQq/8TBmgyFtgkXQ7vIH1tbIDQtNL239JDYsxH25/mgVtxFNJcS44+lTAwFoJnxZp55d3W1NT/lootTb8KMR2RMYq4j9HP7HH4w/KxjaHr+lDyEYxEjKI9CjlkE0f65+anOzasxyzGycLZzYvcktbtCk9ejHJ8jbNqjBOVkmm0h0P6FtShIPfNW7gWIVIE2vAnLORJEp/87wx0HZ4KWIcd/CK/LNgNWRYWjRbwBLUoWJaXOAsS3+3w3gY4CH9n8MwCANQQz+IFIpP3VvVg7VDHj+FDbhSHvQJT2rqhluw5EQMZUXaw808oBXUijmmGki0koFm522+PjuZMemjMV2AmuTPPMnbyrMVFbiyz2l0h15mUMyPqjPNPK/BLn6f0sOv5bBIS2tkKGNUmTYVBUQkwlIH0ECaCT1ke8AILFOcxEXAA/ZzzHxopsQdBZeale+3extLb454e5Rgp7lBn1TQjX2H2uhcWb1Y3qlV+K/PQZZIWDlZllOd/ez7LQyZ7ibN/pMvLUa4hINnC5rREkB79QLctYwCVRSi5HA7qiDcu6TS622q8XFJqiEkcyf5kFF4rG/dgZinPu5yY1zI61WOLxGapH22plzRqtssS0bXHkmxhbc2ZJaxW9vDQd56YcOQ+yJ6A5DTgOS4LlhR8ItTcLGxdMKTtkEpKW7zPSRQojJ0yx6R2zQpJu9SzBm/rqiG+7pNPfjMOmF5W1RlJ+E3U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199018)(31686004)(82960400001)(2906002)(36756003)(8936002)(41300700001)(5660300002)(31696002)(86362001)(38100700002)(66476007)(66946007)(66556008)(478600001)(6486002)(8676002)(26005)(83380400001)(316002)(2616005)(6512007)(6506007)(53546011)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1h6Zm1IUWc3YXZUNkdoSmVMSHRGUjVpcmZOSm9ZSWc1SklyU1ZueXFsSlBa?=
 =?utf-8?B?RzZaTG5hV1huMWJiNXQ5TExuMjZIZlZacjJGNEcvVnloRVNTdUZzOE51T3Ry?=
 =?utf-8?B?dGhFaVRsVSs5TzRLcVZOSEExaWg0MDYxREFyc3BBaUhCN0FVQm10TFFNb0hV?=
 =?utf-8?B?Y0Z4aWVsU05zdFhrMGVNaXorb2RSVmwwT3VjUi9GeVZzTXFzZUt4QlZrek9l?=
 =?utf-8?B?bTBZSmdrWllwTFk2L05EYlpRV3hDbVNKUjcvcWhmVTFIWXN6RERxUzJQN294?=
 =?utf-8?B?Q3d3b2tiNkxWRG80UjRxL3FsTXBsM1RGTm1uZnQ3eWRIQXl0cklLbnBHWjR2?=
 =?utf-8?B?Y09DMUFueXdTSDNTNmFlVW9hRFpUVmplRXJSbmtUZUczYTdzQXVGZ0xYR0dY?=
 =?utf-8?B?T2k4REtRM3I4amYzS2Q3cmlraklVRFc1SFhJZFdwNU1lN1o0WVVZdnh4SU9S?=
 =?utf-8?B?K1daSVBJVElmQk5hc3hDdjREYVI2V0xQZEVCUjYzM0JZVTBNTEhiTEZMb1Nr?=
 =?utf-8?B?S3E1c3ZjaWpqOXNLOWpGMnROT1VTZUhVQTV3R09vQXB0M0VESnN3YnVYSm9O?=
 =?utf-8?B?VTRaLzBpSXJIQndQcXk2MVlSZkVHMDNwTHkzNEVOSlkreUVGUnlPdVBKNG4y?=
 =?utf-8?B?QktXRjlqQU1qeXUzTDIrdWttZXpVWk1KTkNIa282YVZKUkxSSC94VGtQR1Fr?=
 =?utf-8?B?ZUI5RU8wQWFzMURSbWVESTFaRThyZXpVbnloV240THpQV3BvL01QSEVIYi9s?=
 =?utf-8?B?L1dwRUh6M2E0OVhVOTR1MGF6cHJDSHF1bXViR08vbWdpZzgyWlRzNmJHQzBX?=
 =?utf-8?B?YzZhS1UrR2huSy9OdGtVb2N3R25ITDNEZ2Rra3VDU3pXdTlOd1ZoRnVQdWNS?=
 =?utf-8?B?dzJtNUJJS2tINnh6VzcvdlR5VE5jeWNRTzJJSU1MRU1iMERKUEp3MnpmcjZI?=
 =?utf-8?B?M0FCRDdKek1jOHNpYzM5dTk3QmFnazAwVGZoZ0F6bzYzWDBFWGRqYVl5Ukpo?=
 =?utf-8?B?YmlXOGZIbnExbjJNZ2hkV3BUWjByZWl2V0QyVnlSc1JJMmt3Mk1iN3hTbUZZ?=
 =?utf-8?B?blVmL0drVU96SFgyRUhjeks0dHB5STRIM0lnS0hMUkg2T05YRi96Ym1MNDA4?=
 =?utf-8?B?VS84SFUrUG0yYlgzYWhjTk5WcVJVMUUwU290ckV2c3Ura3BacUtlUzdvNFdj?=
 =?utf-8?B?ZXBmSkk4akRpVmJIMFJBdDZyNW5pSnBRYnRpUmlKSFhQaUZ4UFY4RWRob1M2?=
 =?utf-8?B?Ui80amxCejhhbW9FckJMbit2VjVSbGJmZ0FOMjdUSnJ2dS9ZbHdQYjNwYjJo?=
 =?utf-8?B?eDJzazJUUDRPR3ZLM2tHYy9UUDhjYTFBWEJvb1RNNk9nUFpLLyt3TU82Smtk?=
 =?utf-8?B?VGdLelZZQlFYV3NyOFg0NHM5aE9saU5DZXVVR0xMMTBROG5vTktlNzJBa2la?=
 =?utf-8?B?QVcxMVVpdzF3SkdFNXZZc2loZXZjU3hzcEJFL2JHRWZncERuY25DbTJYY2FB?=
 =?utf-8?B?RmQzajJCbXJkdVlESWlQcnFYRWI2MThMUWl2OXVoU2VhdFpkTi9rT3ZGNnQ0?=
 =?utf-8?B?NDdscFFadUJmeHpEVEtNTXFvTis2cTZ4cVBuNW8xVFZsTkNESXRWS2N3VmJ6?=
 =?utf-8?B?RHVhYXd6SDFYelp5NTVhZGllK3pPQURCTm1ka3FkUEk4RmF0NDRxeStrcjVD?=
 =?utf-8?B?Wi8xVGg2OWlKVmhreTZEQzN5SWZGRWhDUnZZZVhRL0FRTUtHenh3QkJBUTY2?=
 =?utf-8?B?eVdUbWY1elVUZ1FwOGVVMjlWUDhrYmFRanV5TFBwc1NRKytLYVpGTEVXZHNo?=
 =?utf-8?B?VlI1WlAyVWppSU1lTzZRQTBuMTI1QUp0NTJ5NmFWbjAxWlJ6ZWY4blpFb2Ew?=
 =?utf-8?B?bFVEZzlTNTdGTGNDMDVYbVIwV1FaWXprcGprWFRTVFB4R3lVOHR2Q3R2Z1NR?=
 =?utf-8?B?TjRkMWtCY3cxZ2xqdEE5bCtGT1M2eC9yTWptN0ZXNW9jVERQMzRMVXhkdUNX?=
 =?utf-8?B?TmNFL2M0dUdXYm93L1dyWWkvQ0R3VmJhNzYwdnI2MWFBRW9MdkgwRGxHK1hM?=
 =?utf-8?B?TWlqQ3VYQ3VUK2RIaUQxT1RjUkYvNlVFS1ZGeGhGT1lhMXRGcW1TYmQreGNL?=
 =?utf-8?B?UU5GazVIRm1IN053bWxXRVg2dUMrdTBnU1lKcnpReU9qc25aZVByelJTWVBC?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80060ef0-0f21-4701-1fcb-08db270b8fb7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 17:18:01.4042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: buKdWi2+CGY+OLHLqNHF1SXot1+1taN7PBLYHSh7Z8dCKxmEoILVL16esZxqRQO6QkwLI86TQZlNvqvsc9tu2fFZxz18onzSZHlffVkR2TM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679073485; x=1710609485;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=O2ZyPEl1/hfDy9hsNlUCff1M8jF9GhH8Enw06LgNNhM=;
 b=JrAyGUyKoUQGY/ARhIyETlalXYQDpGcKxScaESRVLxtVgn/A4aV5w8eX
 rXXOLnjBb65H2ISaK34v+nsyu/vonPYS9vvelHmL/g7xYQddz97LPjtRb
 nId1KoMirdcJ82xjzh7U/cVzK3nN7Wc2+8n6PZ5J6ZkLM5bFv+cvVVh0V
 0s9OAWZJ+Dg/k/MXBqKif54DXw6hV4xfQ+D1IT+es9ewm/TmvLteOKQFl
 Rx+i7DastUbanFrhTu2oYTlaoHEO+JI9nZCkiDgAo+tCJYYRr4N+xoBM7
 p9sjG3nqgtsMrN2T3ptIa6rRLm+Md1yx0oV+CjrQwnpHvuO+5In4xqmSm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JrAyGUyK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 4/5] ice: Add txbalancing
 devlink param
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

On 3/14/2023 3:25 AM, Michal Wilczynski wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>

[...]

> +/**
> + * ice_devlink_txbalance_get - Get txbalance parameter
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to set
> + * @ctx: context to store the parameter value
> + *
> + * Returns zero on success and negative value on failure.
> + */
> +static int ice_devlink_txbalance_get(struct devlink *devlink, u32 id,
> +				     struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);

The casting is unneeded... same for others below this.

> +	struct device *dev = ice_pf_to_dev(pf);
> +	int status;
> +
> +	status = ice_get_tx_topo_user_sel(pf, &ctx->val.vbool);
> +	if (status) {
> +		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_txbalance_set - Set txbalance parameter
> + * @devlink: pointer to the devlink instance
> + * @id: the parameter ID to set
> + * @ctx: context to get the parameter value
> + *
> + * Returns zero on success and negative value on failure.
> + */
> +static int ice_devlink_txbalance_set(struct devlink *devlink, u32 id,
> +				     struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	int status;
> +
> +	status = ice_update_tx_topo_user_sel(pf, ctx->val.vbool);
> +	if (status)
> +		return -EIO;
> +
> +	dev_warn(dev, "Transmit balancing setting has been changed on this device. You must reboot the system for the change to take effect");

Does this need a newline?

> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_txbalance_validate - Validate passed txbalance parameter value
> + * @devlink: unused pointer to devlink instance
> + * @id: the parameter ID to validate
> + * @val: value to validate
> + * @extack: netlink extended ACK structure
> + *
> + * Supported values are:
> + * true - five layer, false - nine layer Tx Scheduler Topology Tree
> + *
> + * Returns zero when passed parameter value is supported. Negative value on
> + * error.
> + */
> +static int ice_devlink_txbalance_validate(struct devlink *devlink, u32 id,
> +					  union devlink_param_value val,
> +					  struct netlink_ext_ack *extack)
> +{
> +	struct ice_pf *pf = (struct ice_pf *)devlink_priv(devlink);
> +	struct ice_hw *hw = &pf->hw;
> +
> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>    * @pf: pf struct
> @@ -1391,7 +1545,13 @@ static const struct devlink_param ice_devlink_params[] = {
>   			      ice_devlink_enable_iw_get,
>   			      ice_devlink_enable_iw_set,
>   			      ice_devlink_enable_iw_validate),
> -
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
> +			     "txbalancing",
> +			     DEVLINK_PARAM_TYPE_BOOL,
> +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
> +			     ice_devlink_txbalance_get,
> +			     ice_devlink_txbalance_set,
> +			     ice_devlink_txbalance_validate),
>   };
>   
>   static void ice_devlink_free(void *devlink_ptr)
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index 3dc5662d62a6..dc5b49104674 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -286,7 +286,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>    *
>    * Returns: zero on success, or a negative error code on failure.
>    */
> -static int
> +int
>   ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>   			u16 block_size, u8 *block, bool last_cmd,
>   			u8 *reset_level, struct netlink_ext_ack *extack)
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
> index 750574885716..04b200462757 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
> @@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
>   			     struct netlink_ext_ack *extack);
>   int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
>   			    struct netlink_ext_ack *extack);
> +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
> +			    u16 block_size, u8 *block, bool last_cmd,
> +			    u8 *reset_level, struct netlink_ext_ack *extack);
>   
>   #endif
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index f6f52a248066..745f2459943f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -18,7 +18,7 @@
>    *
>    * Read the NVM using the admin queue commands (0x0701)
>    */
> -static int
> +int
>   ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>   		void *data, bool last_command, bool read_shadow_ram,
>   		struct ice_sq_cd *cd)
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
> index 774c2317967d..88978b9a95b1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
> @@ -14,6 +14,9 @@ struct ice_orom_civd_info {
>   
>   int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>   void ice_release_nvm(struct ice_hw *hw);
> +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
> +		    void *data, bool last_command, bool read_shadow_ram,
> +		    struct ice_sq_cd *cd);
>   int
>   ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>   		  bool read_shadow_ram);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
