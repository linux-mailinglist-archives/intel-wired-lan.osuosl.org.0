Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6F761A228
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 21:29:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52785821CE;
	Fri,  4 Nov 2022 20:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52785821CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667593740;
	bh=Tslq139btKbN4GYqIeLZEtW/WPRhlMTRLrXrFaYanto=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PT5PbcDhii1O1/CqyYzfX6OQNDWvwbgZVUdKMMQHeBZCoDf58aaXQtaOsFvkKlo0O
	 1GDCqFeSXGjnRgHp+VE4T6R2Nu1PzIgqGmflUt2VuNrcqMUqoyPi5x/+v732T6/j7f
	 wiWHOjEQGWIoo7F1/Qq52m5XzUChvIH1hgoe4Y4GDZ0nzJoITuLSK9YSTVILvkO+e1
	 axV1Gvhr/OeCPsDnIX0gU9ku4KiUjSpduSM7elL9whp7QL+rw5R4FKbN8VUlrSv7d9
	 1Tm0nE2OJ1ZG1ZY795zWCtqh+tD4l+ttvHR7r/yaLJk4Y5aCYQobwJ8nhVq9lCYcho
	 UUzn2NV6Eqk+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5DywseiIEf0S; Fri,  4 Nov 2022 20:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41624821C4;
	Fri,  4 Nov 2022 20:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41624821C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B08791BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9564A418DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9564A418DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XiRf5Ca20E7X for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 20:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DCA1418B9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DCA1418B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 20:28:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="308774909"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="308774909"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 13:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="666493466"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="666493466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2022 13:28:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 13:28:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 13:28:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 13:28:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 13:28:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjzDZCG75K66+mhTQ5ENd5R/VzQJEG6hiSCltN9AkNGBh6CdgxEKRpPX5tDcRlmD6jjG+UmF/yVrwdXAXdZiCkNj//exjoimlmxkS3n/KN6098oT45Byukm/j/ZtazmZSbSkKlbhh3q5Oa/CMVIOmr3kC5ujF0bWTpqzmut48zbfPiRdMYKkYrTj+eE2zYfULOSH02lvzLO7L8JRwMWvqdd8kBjSLt62b6U5HqOjByK3z9yQ4iaSo7LWe7AKkCL/UVoAHZ+L9/HAYDDupM8+/l6Pm7wj/yQEUsEFzNUU7XVWjxRIWK9StaZ/IfVig5Jba3WyKMZlrRsCdc6q6Ou8xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4eKOYhCQG48ntS2JYPLvtFv06Awkf78kiyY6f9ejKPs=;
 b=cjxd+kQFUZ6qZDzWm2w+DpbV1LhyuCXgQA0bcuCtg6SO55nSSCXFY90W6UmA6hLB/Mh052denrBhhDDuhQbmEpd+aEoEfEf3KXy67JiGpJ4qptKgsu6Z6J+4laWpg0iBZxWw2qlE5fffGdj4XbjIT3Wkd9aB2teCp9+EPFpnNP4VPzzB15ANWYG2gXzz1wfGEHgCoBypMOTOPz0oag36E4fvynEy5orfJRwa+QmtTaI9MTcuwp5vbBlMLTTC9xjrD4OJixlN/M+8qGrnbtwfSQgwly3ewgJ2sRDNB9b3MMxgU1YD/NZLMCnU2YlutoRxRUrDdm2yGD2nqIW26bkdZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 20:28:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 20:28:47 +0000
Message-ID: <eb9c26db-d265-33c1-5c25-daf9f06f91d4@intel.com>
Date: Fri, 4 Nov 2022 13:28:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20221031114456.10482-1-jirislaby@kernel.org>
 <20221102204110.26a6f021@kernel.org>
 <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
 <003bc385-dc14-12ba-d3d6-53de3712a5dc@intel.com>
 <20221104114730.42294e1c@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221104114730.42294e1c@kernel.org>
X-ClientProxiedBy: SJ0PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:a03:331::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 092a1525-72a1-4526-d5ea-08dabea32d29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jRi76BRnNC6iQhgFjhZJXU4pmiKAaV9visiwuwvyhnT7lKDNzq33+m0lrMqM3AdToHZk0VdpLykDgcop1Ax5eQAZ081QqpAgZA4bU7hMJXzuwVaRaGU7wTCCIGw8A21aMm5nIZtN0RKfXCbfvBUIzQipsAVaxBZhSsBopzn4BbuTHnDBOOO06MdP2FX8x8uz9EVaAiPgMFCzm+xBv7j0orJ4SXTUJXrLivmcN5ZYjthvSAwgGw3SlhkocTzuhj3+MY+b9G7WNf0RTBjBNCO+JZT8rRgptKzfknmkJVmhCC4FFSF4wTt+nFkGAt7X3xxE88LwyxGXg/RsDkesgy4Yu7z+K/ncn8KCevyhC30VVAYoZwl4is5LujNo7TJn56IAZYF4nivpsVtc7aFkV64iY1QIVQd038kTUKx5clQYkKwNaseIRTwURi1wlC1Way1h8MY43wilznyHTrOMd4ud45dW6yyexCHkX2vNsN9kbAfH44NPK4wnBzWjunDGz9BICkRXe8C0VwthHNMEFecp9spPtfjqWNXNtpoodUx166xPQ/0y6SRzvR5xxvbtw7cOb+xCYR3fgHqiYwTPzOhwb3oBaF10OS5oqOLFuEVWtKV8RbYrqxc/11wevhBYl77I6Mxn0m4w2nvYUJWsltVntwGl203AGgfZ3A+MZJDcOHuhw0duaXq8D+S0qIJ1RMhDtpdWsTbKdoHUXOqWN6XuVXOfmPnsGcX5wGmM6SCPJy3/PNzwt63FyVxCgZADGJR/VV3VbdRJT2lhk2wUTDA3blIa2HYByHWEw3OTnvUtspQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(4744005)(186003)(2616005)(6666004)(478600001)(83380400001)(2906002)(66946007)(66556008)(8676002)(66476007)(4326008)(54906003)(6486002)(316002)(6506007)(53546011)(41300700001)(26005)(6512007)(8936002)(5660300002)(6916009)(31696002)(86362001)(31686004)(36756003)(38100700002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N050R0lFR3ljVUdWNGgyaDFRdWowQUVsTmNUWkd0WTVJSFQwVmwxUk1Rendr?=
 =?utf-8?B?NHAzaCtvT3VXRllnSVZycnhUNEU3clFxQzZjSUpxdit0SDJDK0VOQXg4cWhW?=
 =?utf-8?B?SHcyQVBUREgrRjl1NUlnV0MySHdDWnh1UFpHQi9uWXFUOFZneTFmODh1S25L?=
 =?utf-8?B?QnUyOTRrV2ZLMkpWMWlmajNQMVVZMUJqUTBnTFFUdUhwRy92dGN6dGQ1YS93?=
 =?utf-8?B?SVhQR0IrWVpEQlJuZDNZOC80SDdEYWFvMWdzYmlLSVpKOU9aVHU3RUp1QjNs?=
 =?utf-8?B?VlFhTi9ZYkN5V1hLS1hNVHpubGZDcWdwcnIvaEhpczUwOUxWVDJJRzVGaTNI?=
 =?utf-8?B?VFpiMGhWTDlyV1h6RC9HbkZxV01BN0czZVBaRjF3VXQxK2lIUWdKV2lTdXBm?=
 =?utf-8?B?UnhneWZybHhZWXZCcWtDWUJjc1JxZ0ZYUXJ5c0JXcDRWVTRZUlkxVGVRVk5l?=
 =?utf-8?B?TVJNU3FrdTB6T2xJYW9MV0t5VWNjdGNYWlJVWk53all1bThxVHcvRXNudVdT?=
 =?utf-8?B?Nk1acUJBMFN3ajY3Zlpwc3ZiS2s1T0ZpcmZWUVIxK0pvdjdTZkpFekJFdDVl?=
 =?utf-8?B?TUhuQ08vTml5MVltK3hURmdwWHRzSkN1YnRQRUZ5U0ZYR3A0ZWJmUVB1VTl5?=
 =?utf-8?B?ellwbE5zYWl3TXd1aVNndGFzdXVUMnRESFpjMU1kcmhsUGFtSEhvQ3ZqM0dC?=
 =?utf-8?B?aWpzdVVpckRDRGNlYjBYeGtMU255eCt3ZEJGSCt3eFoxWW13SjRqeWZuZEdo?=
 =?utf-8?B?bVJqVVorcmkrOFFiUms0bEFwZE9ydWJjcUlxZnZMeWs0bTBsbHE3dTMwbTJr?=
 =?utf-8?B?QWxkT3NEeHFJL3RweEU1cVlET3d1VlM3Z1hzN3RiVVZRTE5ZU1hUUkhRQjMw?=
 =?utf-8?B?Unh0TVVxKzNsa3F4eVpyQVpkM0FPVjJQTXdFZERlMU1Ec2srRjlmTGE0c3Bt?=
 =?utf-8?B?VCswVFRrdS9QMmU4Q0ZvcWRpK094cW01ZFY2NExiQmQ4NlZldXZiZVVOYmlo?=
 =?utf-8?B?eXh4MTJvQ2FhVzFoaFRDMEswV1RJOU1EUEFOZkJHcW81Q3MxSEpzbCtxa0lY?=
 =?utf-8?B?cTJsRWlxY3hqdGZkaEhNQjJpZzhTMGFnRE1LTjdxK3VFdE9TbVZla3FNbGIw?=
 =?utf-8?B?NitaMWw2NklMbk9pbXk4TWxyeUJ0b2h3N1RJQWxRWFhlMUV1a1FJejB5S0p5?=
 =?utf-8?B?YnlYemZDOTY4bCsyYitxVXEwbDNITm1JS2FrZHhvMlZURStEeVlEYWdGak1C?=
 =?utf-8?B?MTF5R0VaYTFscVpNUXZoQmc2aDZ1WW9DQW9LcDUrTFRmaW9FMkI5SVhyTk1o?=
 =?utf-8?B?K0owSUFZNFZ3WlM5WWYydlFFNUJSZ012Ym55ZUttVXYzTU9Hb3BMYWRXc215?=
 =?utf-8?B?UmZ0Q3ozMnUxemNoSENUWUpmZlNSclNjNEEyTW9UR2FYSGpGbGtOK3R5ZVdG?=
 =?utf-8?B?MUJjWFRwV1Y5Y1ZBVUt2djI2TlA4UTJIblM0TVdjclNTeE4vVCtFbk03NlJk?=
 =?utf-8?B?Tm00SkRpZWZoL2FMUDNZdTNJTTV0bDBBT2xqZmR5eDh4N0N4MURSVzdpNjVv?=
 =?utf-8?B?K2RPNy9LWkhtTHlFaDB5U283TGdrQzc1YlliVU85RnRBWDlpRWZ5azBoaUpF?=
 =?utf-8?B?M0NPYTQxK1FYUUF6UEF0aU43VnEvTHBpN1UvcitTVG9kVFB0MDdEbUdmNnJ1?=
 =?utf-8?B?VEZDbU5YVlpYeDN1cWRQTVZuZGtmTEs5blE5aWdBMzlQRW1Sd1FieDcyWDQ4?=
 =?utf-8?B?OFpOSWtSbEE1cFN0ZVBMRlpvTnlGVXI5UkhoU2ppZ2hRVVpDY3BlajhzQ2tt?=
 =?utf-8?B?cnBiQm8zWndKbTJNdS9QL2ZSdG91Y0lmZHNaZ1NvUTJyZXJPTlRlelE5R1dY?=
 =?utf-8?B?NHI2aU5OS2doL0hENUVVMTc0UWF4UmpCOVBKNHZJMXRBTGxXNmI0RVU4czlk?=
 =?utf-8?B?OHRqVW1xMzRodW1BYVc4dk1WUHpZdjh3dnZRS1krYWQ3M1pkcldHd05hUDRE?=
 =?utf-8?B?c0dhRngrQlNxR2VCbVpQUHpBNU5wN1VnN0crS0sxd3RsRzdNNlJWczY0L0l2?=
 =?utf-8?B?RnpRT1JkNDQyczl0cElQWktkMGFJYUV5N0hUZ1Q2Sm8wK0JXbjJUN1dtS1Ur?=
 =?utf-8?B?WGk4ZFVuMWZjZ2laeFE1dVhTcFZPdm4zT0plUTdEaGlJekVreS8yZFRHT0d6?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 092a1525-72a1-4526-d5ea-08dabea32d29
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 20:28:47.4884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yMdceaw8YumO4yvhqee9pdIZFi4Swbk0e62t0tbEKSca8ADEjCZ3CiNKi0/h1LM2CcJB+DsjFKmJUssGIrXvMCB1wDWfg1QC4m3wkO3JuG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667593731; x=1699129731;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BtUzuBw1WNzqk+4Ykexq9RRJt/GiR/SYYeX2bvPGOL0=;
 b=bKugID0Fxsq7uzYmZs5WUCBui9JslT0QxwNi6alzJVwjMDq0Te2YVXW7
 KyeSu14JK+IXeKO94KbFHhOCDLGU6R1gou7TLysnAChvEiRT3ynis8CY0
 F1qLwpsdU+uG4qI0xv/IXLiIACrUkTtRSp8FjDCiZelG7RYneww/SJfdK
 h30Xp381dSEygLIl+F3Ggwt7PqLwp9/eBlcLgErDg1IOBab8gWeozP1Gt
 Sjw70LAUmYeU0z9VreIA/ib4jp+FHcW0PX347Lu/vKG8wctamTeGlDvnS
 TyrwC24mPL/39pUNHdzT2bKKhASf1fB9FSXv+Qr36uLsuv051HVJQCuRU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bKugID0F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e (gcc13): synchronize
 allocate/free functions return type & values
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
Cc: Jiri Slaby <jirislaby@kernel.org>, linux-kernel@vger.kernel.org, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/4/2022 11:47 AM, Jakub Kicinski wrote:
> On Fri, 4 Nov 2022 11:33:07 -0700 Tony Nguyen wrote:
>> As Jiri mentioned, this is propagated up throughout the driver. We could
>> change this function to return int but all the callers would then need
>> to convert these errors to i40e_status to propagate. This doesn't really
>> gain much other than having this function return int. To adjust the
>> entire call chain is going to take more work. As this is resolving a
>> valid warning and returning what is currently expected, what are your
>> thoughts on taking this now to resolve the issue and our i40e team will
>> take the work on to convert the functions to use the standard errnos?
> 
> My thoughts on your OS abstraction layers should be pretty evident.
> If anything I'd like to be more vigilant about less flagrant cases.
> 
> I don't think this is particularly difficult, let's patch it up
> best we can without letting the "status" usage grow.

Ok thanks will do.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
