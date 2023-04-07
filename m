Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C346DB25C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 20:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B59C440A8F;
	Fri,  7 Apr 2023 18:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B59C440A8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680890523;
	bh=rc48txw1ZjrS3Yzrp81fPftDPzU0WUBRdrZm+963rCY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Lk6OTahqSdmG4jD47B/YUK2j1W5d+8KUQeUqB+d/Y5P1eY/mjBYPM04pn1SuuU/D
	 DOO0rOP2HTmS89Yu1FXFDOqEeVCEIoFMjv+txf58OAY1NnkIrThozzBhGG/W0H9kTA
	 P8FFeCUqPUgcDmLOy865e4GwUwE5WjrwqRGObmnTjFRITwL2a5sskszHyEaoAQ7nO3
	 /N+USnG2yzlWXbU0icjh1Bi1WGOZjGhKLQU1oWwt59I7ZL+7soC5ebYyrfr2IXPUEu
	 FqfAyOjfeSu0DoQ4OOxG3ShNPe2RLXDCWqU/o/2kJ93zG//ZgKC5Rp7bzWMZC0SeqU
	 53Z1PGZHVc5TA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-kI0LZBKUkj; Fri,  7 Apr 2023 18:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E0AE408E1;
	Fri,  7 Apr 2023 18:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E0AE408E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66A331BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 18:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 016B6405A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 18:01:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 016B6405A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ekmj0eGyDWxA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 18:01:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDF7C4049C
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2058.outbound.protection.outlook.com [40.107.93.58])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDF7C4049C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 18:01:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzswbxGyJ6s1J4ri5JSDIsyV+htS0AvON2S81/3PP3koZzTw3ld4uFxN5NkhqkgPEBF5bPbLfRNDGCeypmnl+3+LdnwoKNJEQXTeIQVoigTHjhT82Qux3P/bwdtcfE+o8sx3GqAxV0PYULEfYvRFrRSIRpsNxt7U0/Jfm5eb25VZtGWDEqWtR8dOBcMRBr66pkOwXSWjv79IQ3m5vdugYNLeM2Skv9QTPd/T/h72HCRR3X9NnHgruqVV+o6HFfMwmU0khqNInF2nVN6/fMTJIZGbyJXMGWJuCZntEHQGSGPrqb78vBMGWG2d2CFaJ0bN4x3qpAOTYDVCD+h/EUwiJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e5BlWWFSMfQ9iNjPIwUc0k4pZtySi+Uz5dAuEbK9VEE=;
 b=iAqcUSlmzFkvT92xqB0bzm4wSHtTL/xQQqrcWItju0HCO8+4FfnM19/7CuzQ4arMrhly+LbWB7Nqx4JFikUWaqkFA66DmlARr7RYK4WXMhP1dYBd7VoAQq+XhfJYUMIpyL5zwCk+0bgT1G9s0Iwr4VqNRSlvDDcqycQss4tQhE0KXsdTFrYt2GKvziYarzvknGfi9vrpVKrZCcjPeKxmf6mfA2PbWX0QOhKdxD/BW4Hk3H8vfcXBJAkNSHD4aMN2p2INlE1E7cWuxaY0xCo2DH3Fgw0r9jqtBt9qn02t5AyWMXLPWi4xYIYeb+hV0N+wHPYjC0EjTJC9R4lqwU5ZGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 SA1PR12MB8698.namprd12.prod.outlook.com (2603:10b6:806:38b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.26; Fri, 7 Apr
 2023 18:01:51 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86%6]) with mapi id 15.20.6277.034; Fri, 7 Apr 2023
 18:01:51 +0000
Message-ID: <703e473e-87f2-72af-1110-79f23f290a54@amd.com>
Date: Fri, 7 Apr 2023 11:01:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <ZCV6fZfuX5O8sRtA@nvidia.com> <20230330102505.6d3b88da@kernel.org>
 <ZCXVE9CuaMbY+Cdl@nvidia.com>
 <5d0439a6-8339-5bbd-c782-123a1aad71ed@intel.com>
 <20230407043953.GA5852@lst.de>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <20230407043953.GA5852@lst.de>
X-ClientProxiedBy: SJ0PR03CA0082.namprd03.prod.outlook.com
 (2603:10b6:a03:331::27) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|SA1PR12MB8698:EE_
X-MS-Office365-Filtering-Correlation-Id: d8f7bf9a-4307-412b-2c4d-08db379229ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wy5gw0gmiPymN9zseXtUY+NX4GdSmrotmOyGZFxtA+adsaiipl3qdOF+xqF1361gAEMXpgrU7K+XITMqXAIqKjl1iJZj+e7czcUXcNdMtXwpV/Jmn+pk53v87p6cFBnNLhXHmBqXz6wnE6PwVsOWxA0XPv696uA+VAkCTyRUqn5XDep3iB410mekxaWk8vpx386Cfqmsa5fabXoZ1wmp+69EQ0cvKYN6FGlMkRCvSwatsocVZ9uq8X+gSIOP+45jAHeQXADEAezec7pRMktZr1remm1BKJ4EzV2C5kiR/ijbpmpfMVCn/8p7KehSrY64R4kbXe5yp/Tsipcd5z5gxBGJyxysY0kVIi5VFJeGYJWgF/MV3PAlx/FyELuUcBtXb0baFPwqQz4TEuxcmHU/NviojHmIa9E1Ojp8ghjjddaxqi+TQP044WPVxss1+vTyZjZjTIcZTHUT/y+Rh0G+kIp87qF2QZ7Suk6CgLCAdJQgBhqKqRfpZrd5yVX2RryhY8KdKfv8cY41eO1+eLPPjBdTtQW49Srqliu1Oi82Gveh9QFCUR6ByNrwZy8xX99bu4hPrR0w/c2CkgoNYQ6fROFvizNX9Id/hIe+1uwepaWddhL0d0C7TDELYuR0RYKI+CZdWVCBdk8kI8GBhnyNeA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199021)(31686004)(7416002)(38100700002)(2616005)(5660300002)(8936002)(478600001)(6666004)(31696002)(41300700001)(44832011)(4744005)(2906002)(186003)(36756003)(6512007)(66556008)(26005)(66476007)(86362001)(53546011)(4326008)(66946007)(8676002)(6506007)(54906003)(110136005)(316002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WURsWm92K2ZwcSs5T0FjMFo2TUR2b3lrclZ5SEQwOHJseVJEMHFZRktUOEQ3?=
 =?utf-8?B?ZllHcWpyYnZjQkFmL25aWGQzN0pPR0FzMlNnZDFqWEdmdlZNMXEwQ3pERWJT?=
 =?utf-8?B?UW0xd1lTNmU5bE80VlZBeUsyRW1LakovZkdURTZzRkxnY0ltWnVpRHVYTkd0?=
 =?utf-8?B?UDJJV3ZtdkNKMVlrZVhtNmhDb3I5TG5SbVduK2YwdHlJUnkzZVE3T2JwOXhJ?=
 =?utf-8?B?b28zYjNwQ2hLNU9TTTNERkxuK1NOVG91dDlHV2ZFL1dEWWUzSEFsZTZmK3ZC?=
 =?utf-8?B?U1pUaitTMXczOTV3NVhCbnlBU0trei9nT0JiMTZqVEQ4UElZd1hiZCtlRHZC?=
 =?utf-8?B?UUtaa3NSWmxYcElLT2VDTzRFWm9XUHBkV2ZLdnpya2szcytzM1FXV0Q0bEF3?=
 =?utf-8?B?a0w1ZHlJeFRNc3BYY3BFcDZCOHNjTStnWG9TemNCRGFITS9xd3IxUzhPQmtw?=
 =?utf-8?B?UVh3QkFJSGpZWGEzZ0JUN1UvYk5oekM4NXpwU3Zhdm0rdTRXVi8zbGlWZ1do?=
 =?utf-8?B?M0hDcUJ3MjAxSWk0SVhTek9IbmhPSW5ZbTJLYmw5UHE1YURYbWtScGUyOURP?=
 =?utf-8?B?TDlvR1JSMGRraWN0SGNNTVhlODJVcVZxVHpIZjRacC9wWjlTTjJJQ1diY3Jx?=
 =?utf-8?B?ZnI3YUs2UFV1ZHoxbVJaVWdpY0NvZHQ5Sjk0V01oTzFpQnIyMUY1Z3c1ZXpC?=
 =?utf-8?B?S2Q4Mm5iaXcwV09DUUk3SUdqVEExQTM4Z0F0YVVXalczQnU2VVV2TXVrWlgz?=
 =?utf-8?B?S1l6aWxBd0lNeWY2eWtyOUNpdnNXSVNxZ2xWT3Y1N0hqZWYxNWplOFZYSzdv?=
 =?utf-8?B?TFFzU1A2YlN3U3NWODg5dy85MjRqQ1ZHUGVvMXgrcGtZYmt2T2lJejF4RDd0?=
 =?utf-8?B?b1hvMytndUg3WXIwbTJDRkJFR0QvVUFYM3JIVXlhSUJFMVpkbTdOOEZqZGlz?=
 =?utf-8?B?OEljcWtmNDArdUVkQ2tsYlZxUklIYmpTN1ZHRUJremlCazIrRzlOUnZpeGFx?=
 =?utf-8?B?WUswN0FZODdqWFdOSFhuSnU1SENQbmd1RExFVTVpd1JwdjBzUzJhMFd5TVZW?=
 =?utf-8?B?UXhDZ0VzSXV2anVtUWNTZ3hvS0tXakhtTzRRZ1VWSHVOWnFleHRsQUJZS1Nk?=
 =?utf-8?B?SWt6TVZvVzl4amdjUjc2cW5MeUx3UHVBOXY5SEd4VnFPWHdwSE5vOFZwZ0tE?=
 =?utf-8?B?R2RTdk4vZzhPWkQxdWcxR3ljb3pNdXVZbXhlMloyTzRtd3Zia0NkVnlDR0Mw?=
 =?utf-8?B?UHdRalFSNW1Zd3FQdDRJTDQ5a1ZBblZra3FubUlZZTVkMnlQeGt6SDdmcko0?=
 =?utf-8?B?d09hSE54LzdqRG5mMDJkbWdJd0JMUmh3SnVmUWpTUGZFY2pJcm5ld1RRWmhU?=
 =?utf-8?B?d1lMNVhVdkhsZ1JCNnhTMVVSc2doaWo2bk5jWnVTcFFXb3prVXF3REhySjk4?=
 =?utf-8?B?UzhwQVhzL3c5di8rS1ZvZEVGKzA4am9FVWh0bThPRXZSTmhkZGhzaVF3VXd0?=
 =?utf-8?B?TTltbUR1UnMyV0k0YTN5K2lGc3B6azhxeTA1QWh4SmFlSHVGazE2ZG8wbWpR?=
 =?utf-8?B?VG8rOEpVQkZqZmpLNmFMNWNxYnM1czB6aExsTnZJTUpiMzJTQTVlWnh0N0Za?=
 =?utf-8?B?RTV5bjBYRDkwWUxCUnJNeFJTcW5ZMmhuU3ZKUW83clFiZThlbGlzMCtreDRr?=
 =?utf-8?B?YVpQaDMxRFVMaGg2SlR6OGlQV2VKa2JVKythOFpLbzhPekpQR1ZudGIxTmFq?=
 =?utf-8?B?WHZ5MFEwOThxenFtZzd1aXdBZDFkUjFJTitjV1RPdWQvTXcxZmhjcmQ3VjRy?=
 =?utf-8?B?RklkWEltZFlweUkvZkhwOEJTZ0hjUitvaW9TSmE3OFFMeEVvS3dNNkJLbXd5?=
 =?utf-8?B?QVoweUF3d2Z4eFRRbjJGU3E2Z0Nic1RBTjJyUWxMeDFEdnZMWnpSOXpOYWFy?=
 =?utf-8?B?czdscHVVNFJnendWNFo0WlJDTk4xMHJpaU9HUys2YmgybXVWZ1VWb29CYngw?=
 =?utf-8?B?UDBiWlpTN1dISjZhQUc1S0syVW5EQmVsYUdoaGJUOWxPYXVHeUVmM1Y0YjRH?=
 =?utf-8?B?SjhLQW9oSUN5YnJVS2dUdE0wMWpJaEdTa1RYVHVMM1drMW50N0ZVbndZMlNp?=
 =?utf-8?Q?TJSjPM/DSIMSjXAoocAAwd3qQ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8f7bf9a-4307-412b-2c4d-08db379229ea
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2023 18:01:51.2940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pUUJY1aFWJt0rMiJB4jXr0Wj/OLBYTWWVU/e5ox+91GrKP85lDq5TodOX6eqWqjWIAhUjavNPzeDn83LkI8gww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8698
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5BlWWFSMfQ9iNjPIwUc0k4pZtySi+Uz5dAuEbK9VEE=;
 b=S8jLNA8loG4HnP76RVT5AwO23NRDxQpRebmqb4MH+tLbdMQkgL03F1XiDSnCrjAaQpyzlT6lHGVsaz/yr8+5ml0gN8ev3AKAljaI/9FpPkI/AXmLzTLhmzLeUICiA/f3d4zIlrDFTS3Ch6U+LdaFEiroGv66SFH0Jp5uarKKDGE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=S8jLNA8l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org, michael.orr@intel.com,
 intel-wired-lan@lists.osuosl.org, Jason Gunthorpe <jgg@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, decot@google.com, shiraz.saleem@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/6/23 9:39 PM, Christoph Hellwig wrote:
> 
> FYI, thanks to Michael for the feedback.
> 
>> As explained in the Charter, Intel & Google are donating the current
>> Vendor driver & its spec to the IDPF TC to serve as a starting point for
>> an eventual vendor-agnostic Spec & Driver that will be the OASIS IDPF
>> standard set.
> 
> Having both under the same name seems like a massive confusion.

I was thinking something similar.  If "idpf" is likely to be the final 
generic driver name (which makes sense), and Intel's driver is an 
Intel-device specific driver, can Intel use a more Intel-device specific 
name for their driver?  This would help both in reminding us that this 
isn't intended as the vendor-agnostic driver, and would prevent 
potential future name confusion.

sln
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
