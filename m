Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 330426189CD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:45:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0D1741763;
	Thu,  3 Nov 2022 20:45:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D1741763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508349;
	bh=AfiajpH7Y3zfAp8ULbhoBMGrNAyZiCCLNdkYJGfMvHI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=41wsnWrr2Jn3xa0yodh25z6zYxcI+zOGZbnUGv+rm0Iio6FXW+eP6QJIRazT30vZm
	 7Zlwi3hYbo13YkLYWnLOjJFlGSLtwYnZiAIUrMmuuWl+tjHUHOu8H7/gfLs6Jiu8Wb
	 rN/QphkKEc1XMK2a1KLtdqdKd+CEHGRvVKW+sJmP8m7EER9nZBVU2B77qnhoh6a5ka
	 ejUOk/uSWoalZHoV+8l0QVzqHXbzjEt8JsOdZY+dcU7kOLg6KkuZfZR8beW7f9BE65
	 etLl+UWFd0hRjPFJ1rzmofWBF9788ssmA3baVttBWKy1B0hUvqtUWA9LdL9rsTyHbq
	 6lBoz931uL2ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Po1k_eVZbzq; Thu,  3 Nov 2022 20:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 513C241767;
	Thu,  3 Nov 2022 20:45:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 513C241767
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6B311BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 918E261040
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 918E261040
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ottOyljMyMu9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB2F46103C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB2F46103C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="289518498"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="289518498"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="964082583"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="964082583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 03 Nov 2022 13:45:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:45:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:45:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:44:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVxjA7qs868+ScahV5zDVqLqGtpVmLvMy7oLSPxkukUQCnrzhB9NfKlXVeak58AqZL7KkxegacyZ+7TxyLAjJEvfklE0cyaa2OsUnyuEHnNOw1LcpNMiFWR4fdJOsjV1wLWk5FdFCMAQqMAaHnP4C1OU6SahITTNJQNSpj1Dx/alwGh6k1ENrt2D8EzHHEudjQJoJ+BJnXfkIxVHt1wgL2EZCc4FB0uHI/jCque+sSKfTvy66DajQliRYVBmY/e1gVslKKiZWbGKw9xAWvQRRo2uB5wPpJPFdQ+L/kBHYCfDhHX6mw5Zvg88e6UTfPMJcThwxep+3ZJYlKJ1NVLizw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gnPRTi8oH8erEi5juUCo5JHFXiZ0bjMA5xwxrIXBc2k=;
 b=B/9w+nRqzO+ZdTZGz31503FNZ7G7sfZoHSlC/6FvOz8heIj7yw4CBXgyc4BZuW6pz5idX5IJFyE5hCek/0ZwDhvfwUu7EPZNdwOgJDs2Le5MH5IemIyWf0pC7sFBaBsTD4ijzzYFcUGo3OEG/9jNs31mUE3RiLwASSWx79aF/4FLlXXE4Pf3xR4LP5JvIYFXDL41q419mG9Y6BE30Z9kKsD65tWi4gB85/InDvAIBdQjCUAKC23Twx94ExRmt6b+lLdJFNa4KX3rtIW/8er294GKoh6KS58ek0KMAANHn0i2OefM+n/GxvLZ9uY4Dcidn3Ejps1YqUCCrXo8UGv/IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 20:44:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:44:43 +0000
Message-ID: <7b88f460-9637-7174-40f4-b5a23591df52@intel.com>
Date: Thu, 3 Nov 2022 13:44:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-6-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221101225240.421525-6-jacob.e.keller@intel.com>
X-ClientProxiedBy: SJ0PR03CA0114.namprd03.prod.outlook.com
 (2603:10b6:a03:333::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ1PR11MB6276:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f929d4c-37ce-4ce6-11bd-08dabddc3c6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j+uznjWmn3Wp5e/x56IYQAkP46QcJu6OyO7mvWLDVtP5NrjWCT+/AaEpEqTPedBzOmlwC1Km62mBhTrPLRsRI0UzCFMQ1IzR+QGJDN0tSeUJfubCkcjFkA1yimyyBxZ0gFEZFsVKOD6L6vUETnrazqrE0sQWpF7EUJzRPCtZ9mbTntXRQpZVz++2o36c8oWdEbO+KhFgFn+G0WuN4uzra5aKNdFK201KpUmjnNlvzUdPIS4hJza3kvZ3ilwT6hT4FzPG48MyuvuhfTWzP17k2bcaj/5RrhqR6Zd8Cjh18aWqtO03PxXcohxwPAlR9QJvzziODrZhzqQXttO4C8mxu/7PJCa3+0kAVXo9C514fFIg7KolPwG0qLP3No/a47Zj0K5DgM82ZaumFrL88T134TcvRnFv0tnC1EymR/p8M8SbfjYHJU15NKDjD7y9QE5JcOK6I7TcRy95w92l/AY4gdmf01yejtFFUE7w7TuBeHoY6JM5Tf/99nB42H6kbVmPRdvtkWcgd9CGBGB/aBgtGEaGn+OOW1jYpsQVuZhrPIkFK5EqitFbOiBEDFKhhFb8YgJ50v9lLagkWlEgpbiw7wxnCjHWvZnVuf+YTY6wK4rtgFE554u5fqHajvFShB11ieKqt4RGoNqN6QvvnAM+TOYk+/8KQQQyYsnHwUjIfB7eQZRUBAqP6StD5F9RNEt+vnV9Y0kBros/OvqLq9PikelfTWh3FvJtWszAvN5QP6Y7qRn1JoXjm02/mkH9KRfh12UtB3b+HBKfU85Nf2W0vbqvQ/p/n32vjsi2+KpGgxI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(396003)(366004)(346002)(451199015)(83380400001)(31686004)(86362001)(6506007)(478600001)(2906002)(6486002)(38100700002)(82960400001)(36756003)(66556008)(6512007)(316002)(31696002)(186003)(2616005)(26005)(66476007)(66946007)(53546011)(5660300002)(8936002)(41300700001)(110136005)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjUyaXp4Mnh3bkUwU2FRSW1ySGd4NUh5N25UNkdnMUlMcnV5bWNYNExoOEdu?=
 =?utf-8?B?QVdtdmljdFd4YTh0REJ0V1RGMlVNWVliaHZvVkNDQXZEajh3aXZiYzhLdFJW?=
 =?utf-8?B?SVNPa1NTQUU4NDA3RXNuY3ZZcXlwaktHUzlrRjBZVS9OdVFjQjAxcXBDcmti?=
 =?utf-8?B?cU5jTCthazh4Wlh1M1ZiVmZhekQ2RkVBK2dwMGV1dkdPc3U1SHpYYlRjYy9i?=
 =?utf-8?B?UlJ6eFJZWkVRTDJJZXUvZ2Z0aGN1WVNueUt5eVMrc24yaUJUcDBBVTc0L01Q?=
 =?utf-8?B?UXBIU1psY2NJTlVqVEE4VVQxVzBEVGRDbVNZeHo0b1oxZGNxK1hiTkwzZVB4?=
 =?utf-8?B?N0Z4TXB2R29ldmRQUS9oME9mYUtoaUw5aU1wWWZpU3ZyY085Z3ZUem1KNlM2?=
 =?utf-8?B?QlZGM1pNdDcrWnRsRHhGTTE3TGtUUGxwN0Z0c1hXT1RMbUlqR0QzaFJaQ2J4?=
 =?utf-8?B?ZWRxdnRpcURzN0JiNUNmK0c2aTJ6NFpGNUlUS0pHNTNkSXAwOXZEMytTek1B?=
 =?utf-8?B?b1IzMG1sMjgrSzkwY3kraVI3WUJvRW12aGNuNlFnbnNKU2lvVUxmd2JsZ1Vq?=
 =?utf-8?B?ZzJvay9PalJqdDFZWjJMWlhKVk5KWjZSa2R4cGlwcldwWWQ0OXVvZ1ZGRS9T?=
 =?utf-8?B?QjVTSGNwTDJOeTdNenVFU2hLWXVINWREbTFxYWpzQWVPbEV3d1U3ZnpWS0xO?=
 =?utf-8?B?RXd6SXl0UkI1MGJOMkplNmxuQ2c1YkdNc0VLMlNtZTl4OGlIM2NsWGczZHdj?=
 =?utf-8?B?VlN3bnh2RjVjVFc5b2Y2eVA1VFVqdEZLaGJCWmRkY2NNVW1ST0ZCTm1uS3k2?=
 =?utf-8?B?dG9SQkJpdVBBRlVPQ0UvMlBDVVRqM1ZlTnNxK0RoRnBtYTBsak5zalBIZy9o?=
 =?utf-8?B?b1YxQmtNQWg4T0toZzdqZHd3WUp5OVVOdUdJMGhvYndOREhxL1pxV3RSdVR0?=
 =?utf-8?B?djVXbnRVdXhtQTd0elF0TDlubk52MXRIL3lrdDZleEFmdE5JK2cwU1lBRGxv?=
 =?utf-8?B?dGp5WlRiUnQraHBneGszMHhtUGwrOFNUeGN5NHh0TFZIa0VEbThIUytBVmlE?=
 =?utf-8?B?K3Z5Mk0vNFpNUktZRkFIaDlMSldGWERaZkROY0lNZytyRUJ1YmRqdEFhdjJi?=
 =?utf-8?B?SWl0Q1AxMk5hTmk5aFhOblNKZDEvczl1U05VTncxUkk5MU1RS3lSYWxGNVpl?=
 =?utf-8?B?bmhLUytwN2ppTWJKK2ErcHBJWVNZdzZVa2tGUEFNREhaVDczaFNzWllyaHBS?=
 =?utf-8?B?ZkNaN2U4Y2hELzhoQjczZjUvMCtnTCs2RjFyQ0t3UngzdENqdHFaaTN6eC9W?=
 =?utf-8?B?K0dKTDVQT0pPWWx5NllMKyszSFVrbGxqS2hJRElJRjVVcmFUWFpBUXdRcDI4?=
 =?utf-8?B?UFB5UHBZMzc2RXdmUzQ4ZnY5VXF2SHJiSS95b2RjRWFoWDlmZUNBVXlCRk5t?=
 =?utf-8?B?ektMblpVbjAxVVZnZGVqSE4rTkFGSTUxakFHMDFmTkRUTzVBN3RuVWFIcnMz?=
 =?utf-8?B?Tks5U21PV3pRNVdXemNsWUZjdkdRY2J4amN3eWE2L2xHcUNYMjNEWkpFbmI0?=
 =?utf-8?B?c283NUpyNjZQTUkreFlVejBsNVRiK1l5WW5xQ3FMTGVucGwzdnpnRFIzUkJD?=
 =?utf-8?B?bzIybnR4d0hLSEdxOE9jKzlpcmRUdm9lS2lBbkdjY0s1U2N4MWRIR1lMZjRR?=
 =?utf-8?B?ZlVRWG0rei9ITmt1L01mdHFIRFZvaFVNWVJnMlFCZGdwTlJHamtzeElJSTc1?=
 =?utf-8?B?MVFpTXlUY3g0UEd1Z24rc2t5VTM5UjFvRXhOaTBDRzZ2OFg0NFVZWFFFVm50?=
 =?utf-8?B?NmFRQXVVSkZWMlR6TDhSVCtMSjlWSWpIZVp2M1FPVEFSZlkwOC9yYnRYdy95?=
 =?utf-8?B?WUlBY2xqOEQ1Q3RuNlJUYlVsMU85TnV2L0duMkVkdHpvZk9TcEhjT1BUeHdM?=
 =?utf-8?B?UG9JSStYNnhPclBTMXdhT3lsUjVWeGV5ZmR2d1c3NHQrRlprb1plZzBUbklB?=
 =?utf-8?B?TGVxcjcrN2h1QmVYL29kZXhYejcxMlBXbWp1Z0tnczhzdkxtdERrQ1BZOGd1?=
 =?utf-8?B?R1BCUHk2MWF3Y2ZFZnVPVENvTEdkcnR6cmZyR0tyZno2bmRCbUE4Z1oyQkxT?=
 =?utf-8?B?Z25kQWZQRE5YWmpLd1AxNmFsaDR6LzRmeE14SVJWYjZORWJxeVlwVmFGNzND?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f929d4c-37ce-4ce6-11bd-08dabddc3c6a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:44:43.1791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JlcBGk+aYDOE99Bn5WwLEZuV6yv5aJ1J/wI01AsMOW6PSeetHkKcUl1H8qQCv3ZupCl7IbxnB8r4+sbCtDQKcWymwz/VuFoJETQmji1n/yY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508333; x=1699044333;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c6qt1hD3h6Y8WrbMa0gssy/91FkRZCgxaiQv6merKIs=;
 b=GpGr9kiu4FDoMxYqCN5fHMfoDLRhdbr+1HEKjH/xd6E4eVeRIGe5PvTa
 57EEqJJeS6JFyFxUD4kbXUB8QQ52XM3Qp1ibeg1XapMqypRKtpjpMJkhD
 ifW7k9gQtoCag+lxK/iOkOZmzCVgz3zKfk791sYzScWZZodMJDyF7ktiz
 enyL10Vvy37XolKQsXCqdi+HsECPVUA3UZTf0t40PtwSlJrj0a6zWdssk
 YxwMiulwir+baPmjoSAb1ef9HsdT+GnYzAJwPqm2otq102R3CIxyEbogF
 lNzHxGbi3Hj8eD2288/g64eZm+jUKsMtK1MG8v52zI0eBvmQkZMz9pn/Z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GpGr9kiu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/15] ice: always call
 ice_ptp_link_change and make it void
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

On 11/1/2022 3:52 PM, Jacob Keller wrote:
> The ice_ptp_link_change function is currently only called for E822 based
> hardware. Future changes are going to extend this function to perform
> additional tasks on link change.
> 
> Always call this function, moving the e810 check from the callers down to
> just before we call the E822-specific function required to restart the PHY.
> 
> This function also returns an error value, but none of the callers actually
> check it. In general, the errors it produces are more likely systemic
> problems such as invalid or corrupt port numbers. No caller checks these,
> and so no warning is logged.
> 
> Re-order the flag checks so that ICE_FLAG_PTP is checked first. Drop the
> unnecessary check for ICE_FLAG_PTP_SUPPORTED, as ICE_FLAG_PTP will not be
> set except when ICE_FLAG_PTP_SUPPORTED is set.
> 
> Convert the port checks to WARN_ON_ONCE, in order to generate a kernel
> stack trace when they are hit.
> 
> Convert the function to void since no caller actually checks these return
> values.
> 
> Co-authored-by: Dave Ertman <david.m.ertman@intel.com>

Checkpatch is reporting this:
WARNING: Non-standard signature: Co-authored-by:

I see this used in the git log, however, seems like a Co-developed-by & 
Signed-off-by would communicate the same and make checkpatch happy.

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
