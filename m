Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014061A001
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 19:33:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0C54199C;
	Fri,  4 Nov 2022 18:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0C54199C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667586803;
	bh=d8cCSDrinp9c59pepQsxg8TAQl0gNwp4B7SrH2uVWpA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FGXSU4t17V6OYBbQ6WplWMzDl04lWD/CAp6vV2apBGX+eQ/xMedAdoOoAX4OzFSpb
	 LQC85pe9bvpllh4g3Bq6YwwHO8i7rbhBnXhePGEaeObAppuZb7ZDjq4Hn2YC1sxec3
	 WjNVlCGxbbp2vPq+thYI7a7WEuPmMENp0UZ31wzuR87m1JFqjpDIxdgietgKb49Piy
	 0lqYaV/qvZjpxeDrTHzGyuKW7nZHrGLwFe6wpEgrev0B7hzFug4b3B3rzVdhrdBtSG
	 14xuToKCjHfvUh+6wVW44FB6g+X+jNo/dlFaeWMq1bZnks5tuVCso9/a4dDKbdxVyy
	 s0XQfAPXofrIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2aDhjTi-t2G; Fri,  4 Nov 2022 18:33:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10F3C41992;
	Fri,  4 Nov 2022 18:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10F3C41992
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B707C1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A5D5821C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A5D5821C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clk37FeKvQu2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 18:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3849E82176
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3849E82176
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 18:33:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="374278827"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="374278827"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 11:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="629814636"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="629814636"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 04 Nov 2022 11:33:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 11:33:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 11:33:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 11:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J016ZiIeEFJlv0rogEZAjaHWjxzS4BcGHQjsFMAf7m+UpBMQYFHXxljpU0Q/GaaKVPeB2biCmfJFVNw1q1HjFwy5IaYQdwxc8aBpMymF3dYjRLPLbKYhpaNteGUgRtiYSDoaspUkhsCZRXdwOchw7e7Xbrz7EOyq4Vimdcy4bxMlWvqqhFVbZNdZ6ZPirVo1/tpJyX66gYExclsG/mQ0YnslRa1pFNfUHrjNdcDe5aLfRnkiuW8fK/8+eezqShsFAyhd/10+I+S6Q0Ws1p/7RRnDp4BVMwKc+lESp9IIITD87dh0Czmz8Y3pd9Q+KBpfpvSw6++lvcN5Byjp695LIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5guHUM7xXUbiHkzjqGv5Sl9+zWLmor+CIIhfc58EJ4c=;
 b=CbDFXcUn8JpRJq1Q4eBy/z+81hBarVTbR1C+63/3aLy3hnrr5xnKuMTzIRdIcZWWL5JDbf2bV8ajGs9/M3wyjJpLUFQ5xvoNRumKArOSoRQJUn4rRYwQSmkMLlf7fs5ARkwAtn2VRHwiAuS9lSj7JpHv5EbsEi7MjbyfioAWgBqOPcrP6TV87r+JZDMghgGlOEesckDIvDm1qHFcUCvdnO9s4YF3H8QCz8DJSbrK5gWKicqhcl/yph1dJ5w+cgW3UOKubJYvgCB5Nn5ox37ETo5DZhzit2Bjlk0C4M63gwE8GDLijHbg80nLmmZTHrseuR+CdxMTPDdPyxobEEGfnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Fri, 4 Nov
 2022 18:33:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 18:33:10 +0000
Message-ID: <003bc385-dc14-12ba-d3d6-53de3712a5dc@intel.com>
Date: Fri, 4 Nov 2022 11:33:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jiri Slaby <jirislaby@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Jan Sokolowski
 <jan.sokolowski@intel.com>
References: <20221031114456.10482-1-jirislaby@kernel.org>
 <20221102204110.26a6f021@kernel.org>
 <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <bf584d22-8aca-3867-5e3a-489d62a61929@kernel.org>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB4773:EE_
X-MS-Office365-Filtering-Correlation-Id: 711fac10-ce39-4f4b-7bc0-08dabe93069c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xmXTy29pP+LY784d9ISfm8pANAxG8eXjmcVHdgXKu/vkqE3bWZcxtGSem1FjPgjMjb9qQthDEm/AkHd6oZ+R5q6O/xjfdNeMt0nY3S4xYFuxUcN/+7wHq7APGL2SygPahiZAn9tZ7GcZCoHqBsfD11zW1LhrRCPpMhlFXXXMPsWYeKA9IV+HmqzrHm17YnQg6lM9JSwxJKrSySEr1qQQ9legE/Cro077QR+k7hwBBJh+P8gDRGBmkhBfGguWp98zs7AgRfwwRSjqYvjAB0VX2xsUykfIWCkBeZdIf+RdWSpA3O+ndJ/GpbNhZBSDKQ7N13IuOZNRbBKZq7pUJ/8pKTw4IT90pkqrBCm4W2PgDmnhUTvl0haRCtPULfbzdMCecZCwsiAN8AqfazqLUMfzuW8n0cNGviwZlrKrCBVkpKgTN4EpyvpTqDILOl1WrOT+TNIFwWOBQYmFzAZtxkMEnv5gk2OZAakEhX9ugATFay8VRR8cUSOAe0rNVqRuG0p6hOgI9+EPmoXYWajqqhoy3j5Ji3NJubZGVjgi6IUrrtKIqwP3a3NlXaQrYD1G614uJANWOQK0scwJ4k2a3gcvajU/msSXb6Nm+R46D8Gvp0BntgYdjMBLgP2ryhWVkSqQM25FZd3qNXcNuZpslRziCIwMpdETS0xXdTBgwUctZTF9GPRdWhivkybMgtEUSnZ2C9fIBHzCcoxZQoaOgf14sYWERJU7eh1SoS8O07usUuNwD/NoUgMOyQie4hEcvBxmG5pyfrNthnfFubvtBw/Vjlf1GuJ8YBAqn4RfnKgjG6Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199015)(38100700002)(82960400001)(36756003)(6506007)(478600001)(6486002)(6666004)(2906002)(8936002)(66476007)(5660300002)(8676002)(66946007)(6636002)(41300700001)(31696002)(54906003)(110136005)(186003)(26005)(6512007)(2616005)(66556008)(86362001)(316002)(4326008)(53546011)(31686004)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnBvcGhXSG5hZFlvMEdtcFBUWTRMN2xPMXJVK2RublRMekhlWGYrV0dmOWRO?=
 =?utf-8?B?S3BMMXNyVGtqSjJuRUdzWS9RUVhqaVFMSkZwZVEyY01EUHZlN1N1SGJMbElq?=
 =?utf-8?B?bTFTdUtCMXh1S05zbXJUNWFjYytuRnB2SzN4TUJ6Z05HRUE2YkZ5NXBuR2t5?=
 =?utf-8?B?RjVsQ0Y2em1HMmNzbE53SzkvNGpaZlBIWU5lNjFxWUFvVXAybHZyWkcxWThR?=
 =?utf-8?B?ckxEbDVSTG11ZHhjUFFSb25WOC9kOEdFcGdHS3A3UEU0bGpzakRpZzV1NHlp?=
 =?utf-8?B?ZjhRT1pkNnVqWU9RVVN3VWM5aDZydlJpdVdYbWQ1TzU4UGdyZ0xYQzNkZzZB?=
 =?utf-8?B?REFMQlJ2MHBpRElHckNFT1dMa2M4azNWMXRSM1lrNGJGd29ETFNTM0hQaHND?=
 =?utf-8?B?VnhKYnZwOXBwL0ZoMDVhcEVIaUtjbXdJc3MyRXdOSDRKMmpXL3pzS1g3TFBl?=
 =?utf-8?B?YzRxMTQyeXlkdzBCUmxxcDY4dFlBQUJTMk84OWlOTU5IczhseUU4Vm5RanlF?=
 =?utf-8?B?bkZFN2piWHV6eVVUUGE0b3NzU1N3Uk12bW52OGdVZCtJQmpIcnRHNkc1ZGVj?=
 =?utf-8?B?NDR3RkRaenE4Z2YyOElZblk0a2EzWXhqZjJpUFYwRVBjYTNINndnV29MVlVi?=
 =?utf-8?B?Y21pTGllL3ltU3prZ0dEZGZKYWFSbEVhdStNR1pWUStGc01Gd2hMVlJNTXhK?=
 =?utf-8?B?ZUIrYm1aaEtseXpib1BqNXBRYU95K2tCVlVZOWZVbGZ3cWpYZHhaRG5lTGZV?=
 =?utf-8?B?M0ZEb3V5RGNMT0lmMXd3a203NHkrYmtSRGpTMkJLb3Nab2dQbklXeVBQajF5?=
 =?utf-8?B?Q3huSGxyQi94bXRzQlFWWlVleUIvbFhiS2MwSlNLZkd5T25QeCsybDNhRzY5?=
 =?utf-8?B?bkE1T29INXpsamxJaDNUVy9STjJQanJaMEhEa0EzZkpmL01hc0x5QWNKMm16?=
 =?utf-8?B?ODhoZzRON0FUMDFiZmhGdzBJS3JsdHNReXNJSlVkVG15RVpwMkJ6MEFna09T?=
 =?utf-8?B?Q2ViMHhLc3BUSUNrbkZuWFpmb3J1OUUvSDJmVlBMeW9vSElJNlRta1NJeENG?=
 =?utf-8?B?dStUK2k3MzhBN0hzbWxFRXE1REpYYVc3Y3d1MEFTUVZKZXVYbWNKaXNscjBY?=
 =?utf-8?B?REp6STc5V3ZIMkdLN3QvK0tacXJiQzgvSWtrTm5kZjRQV09ybVRCc1FOSFpU?=
 =?utf-8?B?M3llb2czNDFjc2F3dGdieWVyRDRvcTlnMi9tL1AvZTUrUWJyUWRrVndoOHFu?=
 =?utf-8?B?Z3ZxTFB3anVaT3dMNE9HZlVxSkJQdEYxMFFkOXRvak92ZnIzdnpjbUpoM0NZ?=
 =?utf-8?B?Y1dkWUE4Z2lvNlVqLythbHR5Nm9FdHFCaXIyeUphd1dhb3lqc2pRUVVtSUFr?=
 =?utf-8?B?REF1eXVlcDBKZElkcStWaDlqZ0NYRUFVaktZRmlybzMrNFFYNklMbTEwVW1R?=
 =?utf-8?B?SDV4VW5TdUN3dWdiN2NuNG9ocmFEYUNHcVNMRG5TcTJ2K2NDT0NrY3JnUkZ1?=
 =?utf-8?B?QTAydjVLeEZSS05LYXFEdVR6Nmk3NGFaTzF3RnRiQm1NZFhRY3l5SGNiY013?=
 =?utf-8?B?eDBNanZDTnBIZ3dIMWlsNXhZWngvdUd4YkVhZWk0TW44UVZLS09KbGltQlFC?=
 =?utf-8?B?eGp6aXBHbFhVN2g1NTF2dVJHdmdydndGSDVJUFJmdUhNR2djQXl0azY3L3RE?=
 =?utf-8?B?VWZtSXl2bytQRFpkVkRnK2VQaG9YVXFHVlZ2OUVrSmdER3cvUmM1TWJsZ3Bv?=
 =?utf-8?B?K3dmZHJZK0JkamQvOERIQlFLTzVoNm9SY082QmU2ZTR5d1BmQ2ROaGw5ZUZi?=
 =?utf-8?B?UUNIQXh3TFd6NzFWWDhJQmsrcHk3NnBSN0tRc09nckZ0REhTTTYyTlFReHhJ?=
 =?utf-8?B?SW5CaWJueEcwL1NlL01DNTY5R0c4TExPTmJ3Z0RCWmNRUXBNS0pyRnlzZ29a?=
 =?utf-8?B?ckVrcG5FdTAvSDNuQWFJeWNhMVA0ZVltdzk1Zi9tbTRQdGZMaUd6WWtwaCtN?=
 =?utf-8?B?VVRWeVd0bkc2a1IwZVhRdEFSTmw1QXZ1Z2FOdHNGczFqWTJnZndSZ3R6ZWxv?=
 =?utf-8?B?bm9ZajFOVU1zdHd3SWw5Q05HcGVSZk8xK1VMRHJTSXMxNml6empEWTNSUzQy?=
 =?utf-8?B?YXBkSHpUVDZ6Zzk3NWxSNk9BTk5RV3dUM1QrS29TSlhnZExpR3ZVSzJVVVVn?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 711fac10-ce39-4f4b-7bc0-08dabe93069c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 18:33:10.8141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: phNBexaTu+LwAI0jYQDQNVDyMHhfwWgjGXinIr5mfn1phvOB1aVlqv0F+pVhk3BYCl730YIE5U2kyA66YtIicOVPfCToVPCthi337+Chu94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667586795; x=1699122795;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TH9u3htUNLyZ01B+wcKzUg+QOkb8XD6Hgtx2fm+IUPM=;
 b=YPIp911q7KlMM/BsvzKYUaCgSC5EP0yaJREPzebKZlqwtam2ZUINyWEQ
 Ci97+OhSyEj9Unm9SMs8OAdEIRIuspIzMc6nh4w6o9Q/VGKL6fnOsYT+L
 vPsb7R8POR1eabwPmCFY0KplBpESNvaPhYMV2UiS27u3ObP0q5vhzuY7j
 TN5tqacbx6877Kn+6gZv8cvEa1Fz/cS1FboTO57nZvOBY7TxH8XL+F28I
 B+Lo0wrF/eyAiAxySJww9ZvOEI699DuQgpxYtSNZdXm58DFcbhAYHqzvG
 q67KfjCmHR9C7u2U5Seyr3Pje0hsI4O61yd8Ii7zyq/j0GM47d+gaYdTP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YPIp911q
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/3/2022 5:03 AM, Jiri Slaby wrote:
> On 03. 11. 22, 4:41, Jakub Kicinski wrote:
>> On Mon, 31 Oct 2022 12:44:56 +0100 Jiri Slaby (SUSE) wrote:
>>> I.e. the type of their return value in the definition is int, while the
>>> declaration spell enum i40e_status. Synchronize the definitions to the
>>> latter.
>>>
>>> And make sure proper values are returned. I.e. I40E_SUCCESS and not 0,
>>> I40E_ERR_NO_MEMORY and not -ENOMEM.
>>
>> Let's go the opposite way, towards using standard errno.
> 
> This is propagated several layers up throughout the whole i40e driver. 
> It would be a mass change which I'd rather leave up to the driver 
> maintainers -- I don't even have the HW to test.

Hi Jakub,

As Jiri mentioned, this is propagated up throughout the driver. We could 
change this function to return int but all the callers would then need 
to convert these errors to i40e_status to propagate. This doesn't really 
gain much other than having this function return int. To adjust the 
entire call chain is going to take more work. As this is resolving a 
valid warning and returning what is currently expected, what are your 
thoughts on taking this now to resolve the issue and our i40e team will 
take the work on to convert the functions to use the standard errnos?

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
